Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/cookie-84685c1c06e17ab0.cookie.812c9487578305d5-cgu.0?download=true
inline.NumInlined: 677
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4time10formatting31fmt_unix_timestamp_microseconds17hec4c27e1cd4941ffE:bb.a
bb.g:                                             ; preds = %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.w, i64 noundef %i.y)
  %.pre.i.i.i.i.i15 = load i64, ptr %i.z, align 8, !alias.scope !1570, !noalias !1524
  br label %_ZN4time10formatting22format_number_pad_none17h8c255e8eebde2764E.exit

_ZN4time10formatting22format_number_pad_none17h8c255e8eebde2764E.exit: ; preds = %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit, %bb.g
  %i.ad = phi i64 [ %i.w, %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit ], [ %.pre.i.i.i.i.i15, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.af = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1570, !noalias !1524, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %i.ae, i64 %i.y, i1 false), !noalias !1570
  %i.aj = add nuw i64 %i.ad, %i.y
  store i64 %i.aj, ptr %i.z, align 8, !alias.scope !1570, !noalias !1524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1565
  %i.ak = add nuw nsw i64 %i.y, %.sroa.6.0.i
  %i.al = inttoptr i64 %i.ak to ptr
  ret ptr %i.al
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_ZN4time10formatting31fmt_unix_timestamp_milliseconds17h1174f9b5c958f046E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 -66245516442547000, 66121195469367295) %1, i1 noundef zeroext %2) unnamed_addr #9 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %i.b = icmp slt i64 %1, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %._ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit_crit_edge

._ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1574, !noalias !1587
  br label %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1602, !noalias !1605, !noundef !3 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !106, !alias.scope !1602, !noalias !1605, !noundef !3
  %i.f = icmp eq i64 %i.e, %i.d
  br i1 %i.f, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i", !prof !155

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef 1)
  %.pre.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1608, !noalias !1605
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i": ; preds = %bb.d, %bb.c
  %i.g = phi i64 [ %i.d, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1608, !noalias !1605, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 45, ptr %i.k, align 1, !noalias !1608
  %i.l = add nuw i64 %i.g, 1                      ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !1608, !noalias !1605
  br label %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1621, !noalias !1624, !noundef !3 ; 3 uses
  %i.o = load i64, ptr %0, align 8, !range !106, !alias.scope !1621, !noalias !1624, !noundef !3
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.f, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit6.i", !prof !155

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef 1)
  %.pre.i.i.i.i5.i = load i64, ptr %i.m, align 8, !alias.scope !1627, !noalias !1624
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit6.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit6.i": ; preds = %bb.f, %bb.e
  %i.q = phi i64 [ %i.n, %bb.e ], [ %.pre.i.i.i.i5.i, %bb.f ] ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1627, !noalias !1624, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  store i8 43, ptr %i.u, align 1, !noalias !1627
  %i.v = add nuw i64 %i.q, 1                      ; 2 uses
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !1627, !noalias !1624
  br label %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit

_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit: ; preds = %._ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit_crit_edge, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit6.i"
  %i.w = phi i64 [ %i.v, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit6.i" ], [ %i.l, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i" ], [ %.pre, %._ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit_crit_edge ] ; 3 uses
  %.sroa.6.0.i = phi i64 [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit6.i" ], [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i" ], [ 0, %._ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit_crit_edge ]
  %.sroa.013.0 = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1628
  %i.x = call noundef i64 @"_ZN38_$LT$u64$u20$as$u20$itoa..Unsigned$GT$3fmt17hfb85cac2bda75e64E"(i64 noundef range(i64 0, 66245516442547001) %.sroa.013.0, ptr noalias noundef nonnull align 1 dereferenceable(20) %i.a), !noalias !1628 ; 2 uses
  %i.y = sub nuw i64 20, %i.x                     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i64, ptr %0, align 8, !range !106, !alias.scope !1574, !noalias !1587, !noundef !3
  %i.ab = sub i64 %i.aa, %i.w
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZN4time10formatting22format_number_pad_none17hba65796a87b46389E.exit, !prof !155

bb.g:                                             ; preds = %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.w, i64 noundef %i.y)
  %.pre.i.i.i.i.i15 = load i64, ptr %i.z, align 8, !alias.scope !1633, !noalias !1587
  br label %_ZN4time10formatting22format_number_pad_none17hba65796a87b46389E.exit

_ZN4time10formatting22format_number_pad_none17hba65796a87b46389E.exit: ; preds = %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit, %bb.g
  %i.ad = phi i64 [ %i.w, %_ZN4time10formatting15fmt_offset_sign17h34e6a3b984ee2749E.exit ], [ %.pre.i.i.i.i.i15, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.af = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1633, !noalias !1587, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %i.ae, i64 %i.y, i1 false), !noalias !1633
  %i.aj = add nuw i64 %i.ad, %i.y
  store i64 %i.aj, ptr %i.z, align 8, !alias.scope !1633, !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1628
  %i.ak = add nuw nsw i64 %i.y, %.sroa.6.0.i
  %i.al = inttoptr i64 %i.ak to ptr
  ret ptr %i.al
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) initializes((0, 6), (8, 16)) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1, i24 %2) unnamed_addr #10 {
bb.a:
  %.sroa.01.0.extract.trunc = trunc i24 %2 to i8  ; 3 uses
  %.sroa.01.1.extract.shift = lshr i24 %2, 8
  %.sroa.01.1.extract.trunc = trunc i24 %.sroa.01.1.extract.shift to i8 ; 3 uses
  %.sroa.01.2.extract.shift = lshr i24 %2, 16
  %.sroa.01.2.extract.trunc = trunc nuw i24 %.sroa.01.2.extract.shift to i8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !noundef !3  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.d = load i16, ptr %i.c, align 1              ; 4 uses
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = trunc i16 %i.d to i8                     ; 2 uses
  %i.h = lshr i16 %i.d, 8
  %i.i = trunc nuw i16 %i.h to i8                 ; 3 uses
  %i.j = icmp sgt i8 %i.b, -60
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp slt i8 %i.b, 60
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp sgt i8 %i.g, -60
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp slt i8 %i.g, 60
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sgt i8 %i.i, -26
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp slt i8 %i.i, 26
  tail call void @llvm.assume(i1 %i.o)
  %.sroa.016.0.insert.ext = zext i8 %i.b to i32
  %.sroa.016.0.insert.insert = or disjoint i32 %i.f, %.sroa.016.0.insert.ext
  %i.p = icmp sgt i8 %.sroa.01.0.extract.trunc, -60
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp slt i8 %.sroa.01.0.extract.trunc, 60
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp sgt i8 %.sroa.01.1.extract.trunc, -60
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp slt i8 %.sroa.01.1.extract.trunc, 60
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc, 26
  tail call void @llvm.assume(i1 %i.u)
  %.sroa.021.0.insert.insert = zext i24 %2 to i32
  %i.v = icmp eq i32 %.sroa.016.0.insert.insert, %.sroa.021.0.insert.insert
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !noundef !3  ; 2 uses
  %i.y = icmp ult i8 %i.x, 60
  tail call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i8 %i.x to i16
  %i.aa = sext i8 %i.b to i16
  %i.ab = sub nsw i16 %i.z, %i.aa
  %i.ac = sext i8 %.sroa.01.0.extract.trunc to i16
  %i.ad = add nsw i16 %i.ab, %i.ac                ; 9 uses
  %i.ae = icmp sgt i16 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %bb.d, !prof !1634

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !range !235, !noundef !3 ; 2 uses
  %i.ah = ashr i32 %i.ag, 10
  %i.ai = trunc i32 %i.ag to i16
  %i.aj = and i16 %i.ai, 511
  %.sroa.046.0.copyload = load i64, ptr %1, align 4
  br label %bb.aj

bb.d:                                             ; preds = %bb.b
  %i.ak = icmp samesign ugt i16 %i.ad, -61
  br i1 %i.ak, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.al = icmp samesign ult i16 %i.ad, 60
  br i1 %i.al, label %bb.h, label %bb.i, !prof !1634

bb.f:                                             ; preds = %bb.d
  %i.am = add nsw i16 %i.ad, 120
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.an = add nsw i16 %i.ad, 60
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.j, %bb.k, %bb.f, %bb.g
  %.sroa.040.0.a = phi i16 [ %i.am, %bb.f ], [ %i.az, %bb.k ], [ %i.ay, %bb.j ], [ %i.an, %bb.g ], [ %i.ad, %bb.e ]
  %.sroa.041.0.a = phi i16 [ -2, %bb.f ], [ 1, %bb.k ], [ 2, %bb.j ], [ -1, %bb.g ], [ 0, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !3 ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 60
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = zext nneg i8 %i.ap to i16
  %.neg70 = mul i16 %i.d, -256
  %.neg = ashr exact i16 %.neg70, 8
  %i.as = sext i8 %.sroa.01.1.extract.trunc to i16
  %i.at = add nsw i16 %.neg, %i.as
  %i.au = add nsw i16 %i.at, %.sroa.041.0.a
  %i.av = add nsw i16 %i.au, %i.ar                ; 9 uses
  %i.aw = icmp sgt i16 %i.av, -1
  br i1 %i.aw, label %bb.m, label %bb.l, !prof !1634

bb.i:                                             ; preds = %bb.e
  %i.ax = icmp samesign ult i16 %i.ad, 120
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add nsw i16 %i.ad, -120
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.az = add nsw i16 %i.ad, -60
  br label %bb.h

bb.l:                                             ; preds = %bb.h
  %i.ba = icmp samesign ugt i16 %i.av, -61
  br i1 %i.ba, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.bb = icmp samesign ult i16 %i.av, 60
  br i1 %i.bb, label %bb.p, label %bb.q, !prof !1634

bb.n:                                             ; preds = %bb.l
  %i.bc = add nsw i16 %i.av, 120
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bd = add nsw i16 %i.av, 60
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.r, %bb.s, %bb.n, %bb.o
  %.sroa.042.0.a = phi i16 [ %i.bc, %bb.n ], [ %i.bn, %bb.s ], [ %i.bm, %bb.r ], [ %i.bd, %bb.o ], [ %i.av, %bb.m ]
  %.sroa.043.0.a = phi i8 [ -2, %bb.n ], [ 1, %bb.s ], [ 2, %bb.r ], [ -1, %bb.o ], [ 0, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bf = load i8, ptr %i.be, align 2, !noundef !3 ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 24
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = sub nsw i8 %.sroa.01.2.extract.trunc, %i.i
  %i.bi = add nsw i8 %i.bh, %.sroa.043.0.a
  %i.bj = add nsw i8 %i.bi, %i.bf                 ; 13 uses
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %bb.u, label %bb.t, !prof !1634

bb.q:                                             ; preds = %bb.m
  %i.bl = icmp samesign ult i16 %i.av, 120
  br i1 %i.bl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = add nsw i16 %i.av, -120
  br label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.bn = add nsw i16 %i.av, -60
  br label %bb.p

bb.t:                                             ; preds = %bb.p
  %i.bo = icmp samesign ugt i8 %i.bj, -25
  br i1 %i.bo, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.bp = icmp samesign ult i8 %i.bj, 24
  br i1 %i.bp, label %bb.z, label %bb.aa, !prof !1634

bb.v:                                             ; preds = %bb.t
  %i.bq = icmp samesign ugt i8 %i.bj, -49
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.br = add nsw i8 %i.bj, 24
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bs = add nsw i8 %i.bj, 72
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.bt = add nsw i8 %i.bj, 48
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.ac, %bb.ae, %bb.ad, %bb.w, %bb.y, %bb.x
  %.sroa.044.0 = phi i8 [ %i.bs, %bb.x ], [ %i.cg, %bb.ac ], [ %i.ci, %bb.ae ], [ %i.ch, %bb.ad ], [ %i.br, %bb.w ], [ %i.bt, %bb.y ], [ %i.bj, %bb.u ]
  %.sroa.045.0 = phi i16 [ -3, %bb.x ], [ 1, %bb.ac ], [ 2, %bb.ae ], [ 3, %bb.ad ], [ -1, %bb.w ], [ -2, %bb.y ], [ 0, %bb.u ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !range !235, !noundef !3 ; 2 uses
  %i.bw = ashr i32 %i.bv, 10                      ; 6 uses
  %i.bx = trunc i32 %i.bv to i16
  %i.by = and i16 %i.bx, 511
  %i.bz = add nsw i16 %i.by, %.sroa.045.0         ; 5 uses
  %.sroa.037.0 = tail call i32 @llvm.abs.i32(i32 %i.bw, i1 true)
  %i.ca = mul i32 %.sroa.037.0, 33555415
  %i.cb = and i32 %i.ca, 100695055
  %i.cc = icmp samesign ult i32 %i.cb, 31745
  %.sroa.012.0 = select i1 %i.cc, i16 366, i16 365 ; 2 uses
  %i.cd = icmp sgt i16 %i.bz, %.sroa.012.0
  br i1 %i.cd, label %bb.af, label %bb.ag, !prof !155

bb.aa:                                            ; preds = %bb.u
  %i.ce = icmp samesign ult i8 %i.bj, 48
  br i1 %i.ce, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = icmp samesign ult i8 %i.bj, 72
  br i1 %i.cf, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cg = add nsw i8 %i.bj, -24
  br label %bb.z

bb.ad:                                            ; preds = %bb.ab
  %i.ch = add nsw i8 %i.bj, -72
  br label %bb.z

bb.ae:                                            ; preds = %bb.ab
  %i.ci = add nsw i8 %i.bj, -48
  br label %bb.z

bb.af:                                            ; preds = %bb.z
  %i.cj = sub nuw nsw i16 %i.bz, %.sroa.012.0
  %i.ck = add nsw i32 %i.bw, 1
  br label %bb.ai

bb.ag:                                            ; preds = %bb.z
  %i.cl = icmp slt i16 %i.bz, 1
  br i1 %i.cl, label %bb.ah, label %bb.ai, !prof !155

bb.ah:                                            ; preds = %bb.ag
  %i.cm = add nsw i32 %i.bw, -1                   ; 2 uses
  %i.cn = icmp slt i32 %i.bw, 1
  %i.co = sub nsw i32 1, %i.bw
  %.sroa.038.0 = select i1 %i.cn, i32 %i.co, i32 %i.cm
  %i.cp = mul i32 %.sroa.038.0, 33555415
  %i.cq = and i32 %i.cp, 100695055
  %i.cr = icmp samesign ult i32 %i.cq, 31745
  %.sroa.013.0 = select i1 %i.cr, i16 366, i16 365
  %i.cs = add nsw i16 %.sroa.013.0, %i.bz
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.sroa.07.0 = phi i16 [ %i.cj, %bb.af ], [ %i.cs, %bb.ah ], [ %i.bz, %bb.ag ]
  %.sroa.02.0 = phi i32 [ %i.ck, %bb.af ], [ %i.cm, %bb.ah ], [ %i.bw, %bb.ag ]
  %.sroa.3.0.insert.ext.i = zext nneg i16 %.sroa.042.0.a to i64
  %.sroa.2.0.insert.ext.i = zext nneg i16 %.sroa.040.0.a to i64
  %i.ct = load i32, ptr %1, align 4, !noundef !3  ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 1000000000
  tail call void @llvm.assume(i1 %i.cu)
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.sroa.044.0 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 48
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 40
  %.sroa.3.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.2.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.insert.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.ct to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.c
  %.sroa.02.0.sink = phi i32 [ %.sroa.02.0, %bb.ai ], [ %i.ah, %bb.c ]
  %.sroa.07.0.sink = phi i16 [ %.sroa.07.0, %bb.ai ], [ %i.aj, %bb.c ]
  %.sroa.0.0.insert.insert.i.sink = phi i64 [ %.sroa.0.0.insert.insert.i, %bb.ai ], [ %.sroa.046.0.copyload, %bb.c ]
  store i32 %.sroa.02.0.sink, ptr %0, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.sroa.07.0.sink, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.insert.insert.i.sink, ptr %4, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E() ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !range !1635, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !1636, !noundef !3 ; 3 uses
  %i.m = urem i64 %i.j, 60                        ; 3 uses
  %i.n = udiv i64 %i.j, 60
  br i1 %i.h, label %bb.b, label %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.o = trunc nuw nsw i64 %i.m to i8             ; 2 uses
  %i.p = udiv i64 %i.j, 60
  %i.q = urem i64 %i.p, 60                        ; 2 uses
  %i.r = trunc nuw nsw i64 %i.q to i8             ; 2 uses
  %i.s = sub nsw i8 0, %i.r
  %i.t = udiv i64 %i.j, 3600
  %i.u = urem i64 %i.t, 24                        ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread.i.i, label %.thread.i.i.thread, !prof !1634

.thread.i.i.thread:                               ; preds = %bb.b
  %i.w = sub nuw nsw i32 1000000000, %i.l
  %i.x = xor i8 %i.o, -1
  br label %.thread43.i.i.thread

.thread.i.i:                                      ; preds = %bb.b
  %i.y = sub nsw i8 0, %i.o
  %.not83 = icmp eq i64 %i.m, 0
  br i1 %.not83, label %.thread43.i.i, label %.thread43.i.i.thread, !prof !1637

.thread43.i.i.thread:                             ; preds = %.thread.i.i, %.thread.i.i.thread
  %.sroa.04.040.i.i41 = phi i32 [ %i.w, %.thread.i.i.thread ], [ 0, %.thread.i.i ]
  %.sroa.09.041.i.i39 = phi i8 [ %i.x, %.thread.i.i.thread ], [ %i.y, %.thread.i.i ]
  %i.z = add nsw i8 %.sroa.09.041.i.i39, 60
  %i.aa = xor i8 %i.r, -1
  br label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread

.thread43.i.i:                                    ; preds = %.thread.i.i
  %.not84 = icmp eq i64 %i.q, 0
  br i1 %.not84, label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i, label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread, !prof !1637

_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread: ; preds = %.thread43.i.i, %.thread43.i.i.thread
  %.sroa.09.150.i.i49 = phi i8 [ %i.z, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %.sroa.016.051.i.i47 = phi i8 [ %i.aa, %.thread43.i.i.thread ], [ %i.s, %.thread43.i.i ]
  %.sroa.04.040.i.i4046 = phi i32 [ %.sroa.04.040.i.i41, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %i.ab = add nsw i8 %.sroa.016.051.i.i47, 60
  %i.ac = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.ac, label %bb.k, label %bb.e

_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i: ; preds = %.thread43.i.i
  %.not85 = icmp eq i64 %i.u, 0
  br i1 %.not85, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i
  %or.cond = icmp ugt i64 %i.j, 377705203199
  br i1 %or.cond, label %bb.f, label %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i, !prof !1638

_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i: ; preds = %bb.c
  %i.ad = udiv i64 %i.j, 86400
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = sub nuw nsw i32 869850581, %i.ae        ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 3853261555       ; 2 uses
  %i.ai = lshr i64 %i.ah, 15
  %i.aj = lshr i64 %i.ah, 47
  %i.ak = trunc nuw nsw i64 %i.aj to i32          ; 3 uses
  %i.al = trunc i64 %i.ai to i32
  %i.am = icmp ugt i32 %i.al, 42920275
  %i.an = and i32 %i.ak, 3
  %i.ao = icmp eq i32 %i.an, 0
  %.sroa.0.0.i.i.i.i = or i1 %i.am, %i.ao         ; 2 uses
  %i.ap = lshr i32 %i.ak, 2
  %i.aq = add nuw nsw i32 %i.af, %i.ak
  %i.ar = sub nuw nsw i32 %i.aq, %i.ap
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, 3010298776       ; 2 uses
  %i.au = lshr i64 %i.at, 8
  %i.av = lshr i64 %i.at, 40
  %i.aw = trunc nuw nsw i64 %i.av to i32          ; 2 uses
  %i.ax = and i64 %i.au, 4294967295
  %i.ay = mul nuw nsw i64 %i.ax, 1461
  %i.az = lshr i64 %i.ay, 34
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = zext i1 %.sroa.0.0.i.i.i.i to i32
  %i.bc = add nuw nsw i32 %i.ba, %i.bb
  %i.bd = and i32 %i.aw, 3
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = and i1 %.sroa.0.0.i.i.i.i, %i.be
  %i.bg = shl nuw i32 %i.aw, 10
  %i.bh = add nsw i32 %i.bg, 1858256896
  %i.bi = select i1 %i.bf, i32 512, i32 0
  %i.bj = or disjoint i32 %i.bi, %i.bh
  %i.bk = or i32 %i.bj, %i.bc                     ; 2 uses
  %i.bl = icmp ne i32 %i.bk, 0
  call void @llvm.assume(i1 %i.bl)
  br label %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"

bb.d:                                             ; preds = %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i
  %i.bm = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.bm, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread
  %.sroa.09.150.i.i485666 = phi i8 [ %.sroa.09.150.i.i49, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.sroa.04.040.i.i40455865 = phi i32 [ %.sroa.04.040.i.i4046, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.sroa.016.1.i.i6064 = phi i8 [ %i.ab, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.pn = phi i8 [ 23, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 24, %bb.d ] ; 2 uses
  %i.bn = udiv i64 %i.j, 86400
  %i.bo = trunc nuw nsw i64 %i.bn to i32          ; 2 uses
  %i.bp = add i32 %i.bo, -4371588
  %or.cond.i.i16.i = icmp ult i32 %i.bp, -7304484
  br i1 %or.cond.i.i16.i, label %bb.k, label %bb.g, !prof !1639

bb.f:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #31, !noalias !1640
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bq = sub i32 869850581, %i.bo                ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = mul nuw nsw i64 %i.br, 3853261555       ; 2 uses
  %i.bt = lshr i64 %i.bs, 15
  %i.bu = lshr i64 %i.bs, 47
  %i.bv = trunc nuw nsw i64 %i.bu to i32          ; 3 uses
  %i.bw = trunc i64 %i.bt to i32
  %i.bx = icmp ugt i32 %i.bw, 42920275
  %i.by = and i32 %i.bv, 3
  %i.bz = icmp eq i32 %i.by, 0
  %.sroa.0.0.i.i.i17.i = or i1 %i.bx, %i.bz       ; 2 uses
  %i.ca = lshr i32 %i.bv, 2
  %i.cb = add nuw nsw i32 %i.bq, %i.bv
  %i.cc = sub nuw nsw i32 %i.cb, %i.ca
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = mul nuw nsw i64 %i.cd, 3010298776       ; 2 uses
  %i.cf = lshr i64 %i.ce, 8
  %i.cg = lshr i64 %i.ce, 40
  %i.ch = trunc nuw nsw i64 %i.cg to i32          ; 2 uses
  %i.ci = and i64 %i.cf, 4294967295
  %i.cj = mul nuw nsw i64 %i.ci, 1461
  %i.ck = lshr i64 %i.cj, 34
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = zext i1 %.sroa.0.0.i.i.i17.i to i32
  %i.cn = add nuw nsw i32 %i.cl, %i.cm            ; 2 uses
  %i.co = and i32 %i.ch, 3
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = and i1 %.sroa.0.0.i.i.i17.i, %i.cp
  %i.cr = shl nuw i32 %i.ch, 10
  %i.cs = add nsw i32 %i.cr, 1858256896           ; 2 uses
  %i.ct = select i1 %i.cq, i32 512, i32 0
  %i.cu = or disjoint i32 %i.ct, %i.cs
  %i.cv = or i32 %i.cu, %i.cn                     ; 3 uses
  %i.cw = icmp ne i32 %i.cv, 0
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i32 %i.cn, 1
  br i1 %i.cx, label %bb.h, label %bb.i, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.cy = icmp eq i32 %i.cv, -10238975
  br i1 %i.cy, label %_ZN4time4date4Date12previous_day17hc52982cc18842e31E.exit.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cz = add i32 %i.cv, -1                       ; 2 uses
  %i.da = icmp ne i32 %i.cz, 0
  call void @llvm.assume(i1 %i.da)
  br label %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"

bb.j:                                             ; preds = %bb.h
  %i.db = ashr exact i32 %i.cs, 10                ; 3 uses
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  %i.dd = icmp slt i32 %i.db, 1
  %i.de = sub nsw i32 1, %i.db
  %.sroa.04.0.i.i = select i1 %i.dd, i32 %i.de, i32 %i.dc
  %i.df = mul i32 %.sroa.04.0.i.i, 33555415
  %i.dg = and i32 %i.df, 100695055
  %i.dh = icmp samesign ult i32 %i.dg, 31745      ; 2 uses
  %i.di = select i1 %i.dh, i32 512, i32 0
  %.sroa.01.0.i.i = select i1 %i.dh, i32 366, i32 365
  %i.dj = shl nsw i32 %i.dc, 10
  %i.dk = or disjoint i32 %i.di, %i.dj
  %i.dl = or disjoint i32 %i.dk, %.sroa.01.0.i.i
  br label %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"

end_hunk_0
begin_hunk_1_@_ZN5alloc7raw_vec11finish_grow17hd973175c7504148fE:bb.a
bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #30
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #30
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !106, !alias.scope !1773, !noundef !3 ; 3 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %.sroa.0.0.i32.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 8) ; 3 uses
  %i.g = icmp slt i64 %.sroa.0.0.i32.i, 0
  br i1 %i.g, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !1776

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1773
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1340deec55b60825E.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.h, align 8, !alias.scope !1773, !nonnull !3, !noundef !3
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !1777, !noalias !1773
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1777, !noalias !1773
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1340deec55b60825E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1340deec55b60825E.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 1, %bb.c ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !1777, !noalias !1773
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd973175c7504148fE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %.sroa.0.0.i32.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1773
  %i.k = load i64, ptr %i.b, align 8, !range !1635, !noalias !1773, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1340deec55b60825E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !1772, !noalias !1773, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1773
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %i.p, %bb.d ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.n, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #31
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1340deec55b60825E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !1773, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1773
  store ptr %i.q, ptr %i.h, align 8, !alias.scope !1773
  store i64 %.sroa.0.0.i32.i, ptr %0, align 8, !alias.scope !1773
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN61_$LT$cookie..Cookie$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hce91ac3d05d4e18fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.10.i = alloca [136 x i8], align 8        ; 2 uses
  %i.a = alloca [160 x i8], align 8               ; 8 uses
  %i.b = alloca [160 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1780
  call void @_ZN6cookie5parse11parse_inner17he18e37d26665742fE(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false), !noalias !1784
  %i.c = load i64, ptr %i.a, align 8, !range !98, !noalias !1780, !noundef !3 ; 3 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775806
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.050.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !1780 ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.610.0..sroa_idx.i, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1780
  switch i64 %i.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i" [
    i64 -9223372036854775807, label %bb.d
    i64 -9223372036854775808, label %bb.d
    i64 0, label %bb.d
  ]

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i": ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.050.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.050.0.copyload.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1784
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.551.0.copyload.i = load i64, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !1780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1780
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.050.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.551.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i", %bb.b, %bb.b, %bb.b
  store i64 -9223372036854775808, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx4, align 8
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.10.i, i64 136, i1 false)
  call void @_ZN6cookie6Cookie10into_owned17h891310bdf2d377d7E(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN62_$LT$cookie..draft..SameSite$u20$as$u20$core..fmt..Display$GT$3fmt17h18f8b4ac0f90541bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !1771, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.b, align 8
  %.val4 = load ptr, ptr %1, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !3, !noalias !3, !nonnull !3 ; 3 uses
  switch i8 %i.a, label %default.unreachable28 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable28:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 6), !noalias !1785, !inline_history !1788
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @41, i64 noundef 3), !noalias !1789, !inline_history !1788
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @42, i64 noundef 4), !noalias !1792, !inline_history !1788
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN64_$LT$cookie..parse..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h909256488c4dd306E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !1795, !noundef !3 ; 2 uses
  %i.f = add nsw i8 %i.e, -2
  %.inv = icmp samesign ult i8 %i.e, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.f        ; 2 uses
  %i.g = zext nneg i8 %narrow to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN64_$LT$cookie..parse..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h909256488c4dd306E", i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = zext nneg i8 %narrow to i64
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN64_$LT$cookie..parse..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h909256488c4dd306E.136", i64 %i.h
  %switch.load6 = load i8, ptr %switch.gep5, align 1
  %switch.ext = zext i8 %switch.load6 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8
  store i64 %switch.ext, ptr %i.i, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e192596122bb916E", ptr %.sroa.42.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1796
  store ptr @46, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !1796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$cookie..delta..DeltaCookie$u20$as$u20$core..cmp..PartialEq$GT$2eq17h66588a10a871ffcaE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %0, align 8, !range !97, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %i.c = load i64, ptr %i.a, align 8, !range !97, !alias.scope !1799, !noalias !1802, !noundef !3
  %cond.i = icmp eq i64 %i.c, -9223372036854775807
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1799, !noalias !1802, !noundef !3 ; 8 uses
  br i1 %cond.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, -9223372036854775807
  %i.g = load i64, ptr %i.d, align 8, !alias.scope !1799, !noalias !1802, !noundef !3 ; 8 uses
  br i1 %.not, label %bb.c, label %bb.d, !prof !155

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !1804
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.05.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.0.in.i, align 8, !alias.scope !1802, !noalias !1799, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.56.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.56.0.i = load i64, ptr %.sroa.56.0.in.i, align 8, !alias.scope !1802, !noalias !1799, !noundef !3 ; 5 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not5.i.i = icmp ult i64 %i.g, %.sroa.56.0.i
  br i1 %.not5.i.i, label %bb.h, label %.split.i.i

bb.g:                                             ; preds = %bb.h, %.split.i.i, %bb.e
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.i

.split.i.i:                                       ; preds = %bb.f
  %i.j = icmp eq i64 %i.g, %.sroa.56.0.i
  br i1 %i.j, label %bb.g, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.g
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1805, !noalias !1804, !noundef !3
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %bb.g, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not6.i.i = icmp ult i64 %i.f, %.sroa.56.0.i
  br i1 %.not6.i.i, label %bb.j, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.i
  %i.n = icmp eq i64 %i.f, %.sroa.56.0.i
  br i1 %i.n, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.f
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !1805, !noalias !1804, !noundef !3
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.k

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i": ; preds = %bb.j, %.split7.i.i, %bb.g
  %i.r = sub nuw i64 %i.f, %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.g
  br label %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit

bb.k:                                             ; preds = %bb.j, %.split7.i.i, %bb.h, %.split.i.i, %bb.d
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.05.0.i, i64 noundef %.sroa.56.0.i, i64 noundef %i.g, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31, !noalias !1804
  unreachable

bb.l:                                             ; preds = %bb.a
  %.sroa.03.0.i = load ptr, ptr %i.d, align 8, !alias.scope !1799, !noalias !1802, !nonnull !3, !noundef !3
  br label %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit

_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit: ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", %bb.l
  %.sroa.03.0.pn.i = phi ptr [ %.sroa.03.0.i, %bb.l ], [ %i.s, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i" ]
  %.sroa.54.0.pn.i = phi i64 [ %i.f, %bb.l ], [ %i.r, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i" ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %1, align 8, !range !97, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  %i.v = load i64, ptr %i.t, align 8, !range !97, !alias.scope !1808, !noalias !1811, !noundef !3
  %cond.i7 = icmp eq i64 %i.v, -9223372036854775807
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1808, !noalias !1811, !noundef !3 ; 8 uses
  br i1 %cond.i7, label %bb.m, label %bb.w

bb.m:                                             ; preds = %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit
  %.not5 = icmp eq i64 %i.u, -9223372036854775807
  %i.z = load i64, ptr %i.w, align 8, !alias.scope !1808, !noalias !1811, !noundef !3 ; 8 uses
  br i1 %.not5, label %bb.n, label %bb.o, !prof !155

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !1813
  unreachable

bb.o:                                             ; preds = %bb.m
  %.sroa.05.0.in.i13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.05.0.i14 = load ptr, ptr %.sroa.05.0.in.i13, align 8, !alias.scope !1811, !noalias !1808, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.56.0.in.i15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.56.0.i16 = load i64, ptr %.sroa.56.0.in.i15, align 8, !alias.scope !1811, !noalias !1808, !noundef !3 ; 5 uses
  %.not.i.i17 = icmp ugt i64 %i.z, %i.y
  br i1 %.not.i.i17, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not5.i.i18 = icmp ult i64 %i.z, %.sroa.56.0.i16
  br i1 %.not5.i.i18, label %bb.s, label %.split.i.i19

bb.r:                                             ; preds = %bb.s, %.split.i.i19, %bb.p
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i22", label %bb.t

.split.i.i19:                                     ; preds = %bb.q
  %i.ac = icmp eq i64 %i.z, %.sroa.56.0.i16
  br i1 %i.ac, label %bb.r, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i14, i64 %i.z
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !1814, !noalias !1813, !noundef !3
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.r, label %bb.v

bb.t:                                             ; preds = %bb.r
  %.not6.i.i20 = icmp ult i64 %i.y, %.sroa.56.0.i16
  br i1 %.not6.i.i20, label %bb.u, label %.split7.i.i21

.split7.i.i21:                                    ; preds = %bb.t
  %i.ag = icmp eq i64 %i.y, %.sroa.56.0.i16
  br i1 %i.ag, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i22", label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i14, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !1814, !noalias !1813, !noundef !3
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i22", label %bb.v

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i22": ; preds = %bb.u, %.split7.i.i21, %bb.r
  %i.ak = sub nuw i64 %i.y, %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i14, i64 %i.z
  br label %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit23
end_hunk_1
begin_hunk_2_@_ZN6cookie5parse11parse_inner17he18e37d26665742fE:.lr.ph.split.i.i

bb.db:                                            ; preds = %bb.cv
  %i.tw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #33, !noalias !2166
  unreachable

bb.dc:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  br label %"_ZN6cookie5parse11parse_inner28_$u7b$$u7b$closure$u7d$$u7d$17h4920496ff205b1cfE.exit"

"_ZN6cookie5parse11parse_inner28_$u7b$$u7b$closure$u7d$$u7d$17h4920496ff205b1cfE.exit": ; preds = %bb.cx, %bb.cw, %bb.cy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i", %bb.cz, %bb.da, %bb.dc
  %i.tx = load i64, ptr %i.i, align 8, !range !2156, !noundef !3
  %.not220.a = icmp eq i64 %i.tx, 16
  br i1 %.not220.a, label %.thread585, label %bb.dd

bb.dd:                                            ; preds = %"_ZN6cookie5parse11parse_inner28_$u7b$$u7b$closure$u7d$$u7d$17h4920496ff205b1cfE.exit"
  %.sroa.01141.0.copyload = load i64, ptr %i.i, align 8 ; 4 uses
  %.sroa.41142.0.copyload = load i64, ptr %.sroa.41142.0..sroa_idx, align 8
  %.sroa.51143.0.copyload = load i64, ptr %.sroa.51143.0..sroa_idx, align 8 ; 4 uses
  %.sroa.81144.0.copyload = load ptr, ptr %.sroa.81144.0..sroa_idx, align 8 ; 2 uses
  invoke fastcc void @_ZN6cookie5parse10parse_date17h42554519547fd46fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0183.0, i64 noundef %.sroa.5184.0, ptr nonnull @66, i64 13)
          to label %bb.df unwind label %bb.de, !noalias !2167

bb.de:                                            ; preds = %bb.dd
  %i.ty = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$time..error..Error$GT$17h40561b753aada673E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.i) #32
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i338" unwind label %bb.dk

bb.df:                                            ; preds = %bb.dd
  %i.tz = icmp ne i64 %.sroa.01141.0.copyload, 13
  call void @llvm.assume(i1 %i.tz)
  %i.ua = add nsw i64 %.sroa.01141.0.copyload, -7
  %i.ub = icmp samesign ugt i64 %.sroa.01141.0.copyload, 6
  %i.uc = select i1 %i.ub, i64 %i.ua, i64 6
  switch i64 %i.uc, label %bb.dl [
    i64 2, label %bb.dg
    i64 6, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.ud = inttoptr i64 %.sroa.51143.0.copyload to ptr
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h9e3ed27b33238eedE"(i64 %.sroa.41142.0.copyload, ptr %i.ud)
          to label %bb.dl unwind label %.loopexit617

bb.dh:                                            ; preds = %bb.df
  switch i64 %.sroa.01141.0.copyload, label %bb.dl [
    i64 1, label %bb.di
    i64 2, label %bb.dj
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i398": ; preds = %bb.dj, %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81144.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81144.0.copyload, i64 noundef %.sroa.51143.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2170
  br label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.ue = icmp eq i64 %.sroa.51143.0.copyload, 0
  br i1 %i.ue, label %bb.dl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i398"

bb.dj:                                            ; preds = %bb.dh
  %i.uf = icmp eq i64 %.sroa.51143.0.copyload, 0
  br i1 %i.uf, label %bb.dl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i398"

bb.dk:                                            ; preds = %bb.de
  %i.ug = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #33, !noalias !2176
  unreachable

.thread585:                                       ; preds = %"_ZN6cookie5parse11parse_inner28_$u7b$$u7b$closure$u7d$$u7d$17h4920496ff205b1cfE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.thread588

bb.dl:                                            ; preds = %bb.dg, %bb.df, %bb.dh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i398", %bb.di, %bb.dj
  %.pr = load i64, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not221.a = icmp eq i64 %.pr, 16
  br i1 %.not221.a, label %.thread588, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.sroa.01146.0.copyload = load i64, ptr %i.j, align 8 ; 4 uses
  %.sroa.41147.0.copyload = load i64, ptr %.sroa.41147.0..sroa_idx, align 8
  %.sroa.51148.0.copyload = load i64, ptr %.sroa.51148.0..sroa_idx, align 8 ; 4 uses
  %.sroa.81149.0.copyload = load ptr, ptr %.sroa.81149.0..sroa_idx, align 8 ; 2 uses
  invoke fastcc void @_ZN6cookie5parse10parse_date17h42554519547fd46fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0183.0, i64 noundef %.sroa.5184.0, ptr nonnull @67, i64 14)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.uh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$time..error..Error$GT$17h40561b753aada673E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.j) #32
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i338" unwind label %bb.dt

bb.do:                                            ; preds = %bb.dm
  %i.ui = icmp ne i64 %.sroa.01146.0.copyload, 13
  call void @llvm.assume(i1 %i.ui)
  %i.uj = add nsw i64 %.sroa.01146.0.copyload, -7
  %i.uk = icmp samesign ugt i64 %.sroa.01146.0.copyload, 6
  %i.ul = select i1 %i.uk, i64 %i.uj, i64 6
  switch i64 %i.ul, label %bb.du [
    i64 2, label %bb.dp
    i64 6, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.um = inttoptr i64 %.sroa.51148.0.copyload to ptr
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h9e3ed27b33238eedE"(i64 %.sroa.41147.0.copyload, ptr %i.um)
          to label %bb.du unwind label %.loopexit617

bb.dq:                                            ; preds = %bb.do
  switch i64 %.sroa.01146.0.copyload, label %bb.du [
    i64 1, label %bb.dr
    i64 2, label %bb.ds
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i408": ; preds = %bb.ds, %bb.dr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81149.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81149.0.copyload, i64 noundef %.sroa.51148.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2177
  br label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.un = icmp eq i64 %.sroa.51148.0.copyload, 0
  br i1 %i.un, label %bb.du, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i408"

bb.ds:                                            ; preds = %bb.dq
  %i.uo = icmp eq i64 %.sroa.51148.0.copyload, 0
  br i1 %i.uo, label %bb.du, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i408"

bb.dt:                                            ; preds = %bb.dn
  %i.up = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #33, !noalias !2185
  unreachable

.thread588:                                       ; preds = %bb.dl, %.thread585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false)
  store i64 16, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ea

bb.du:                                            ; preds = %bb.dp, %bb.do, %bb.dq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i408", %bb.dr, %bb.ds
  %.pr587 = load i64, ptr %i.g, align 8           ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not222 = icmp eq i64 %.pr587, 16
  br i1 %.not222, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.uq = icmp ne i64 %.pr587, 13
  call void @llvm.assume(i1 %i.uq)
  %i.ur = add nsw i64 %.pr587, -7
  %i.us = icmp samesign ugt i64 %.pr587, 6
  %i.ut = select i1 %i.us, i64 %i.ur, i64 6
  switch i64 %i.ut, label %.backedge.sink.split [
    i64 2, label %bb.dw
    i64 6, label %bb.dx
  ]

bb.dw:                                            ; preds = %bb.dv
  %.val.i.i422 = load i64, ptr %i.gf, align 8, !range !100, !noundef !3
  %.val1.i.i423 = load ptr, ptr %i.gd, align 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h9e3ed27b33238eedE"(i64 %.val.i.i422, ptr %.val1.i.i423)
          to label %.backedge.sink.split unwind label %.loopexit617

bb.dx:                                            ; preds = %bb.dv
  switch i64 %.pr587, label %.backedge.sink.split [
    i64 1, label %bb.dy
    i64 2, label %bb.dz
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i418": ; preds = %bb.dz, %bb.dy
  %.val.sink.i.i.i419 = phi i64 [ %.val2.i.i.i421, %bb.dy ], [ %.val.i.i.i417, %bb.dz ]
  %.val1.i.i.i420 = load ptr, ptr %i.ge, align 8, !nonnull !3, !noundef !3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i420, i64 noundef %.val.sink.i.i.i419, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2186
  br label %.backedge.sink.split

bb.dy:                                            ; preds = %bb.dx
  %.val2.i.i.i421 = load i64, ptr %i.gd, align 8  ; 2 uses
  %i.uu = icmp eq i64 %.val2.i.i.i421, 0
  br i1 %i.uu, label %.backedge.sink.split, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i418"

bb.dz:                                            ; preds = %bb.dx
  %.val.i.i.i417 = load i64, ptr %i.gd, align 8   ; 2 uses
  %i.uv = icmp eq i64 %.val.i.i.i417, 0
  br i1 %i.uv, label %.backedge.sink.split, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i418"

bb.ea:                                            ; preds = %bb.du, %.thread588
  %.sroa.2480.0.copyload = load i8, ptr %.sroa.2480.0..sroa_idx, align 1
  %.sroa.3481.0.copyload = load i64, ptr %i.gd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0129)
  %i.uw = trunc nuw i8 %.sroa.2480.0.copyload to i1
  br i1 %i.uw, label %.thread592, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.0129, ptr noundef nonnull align 8 dereferenceable(7) %i.gf, i64 7, i1 false)
  br label %.thread592

.thread592:                                       ; preds = %bb.eb, %bb.ea
  %.sroa.4130.0 = phi i8 [ 0, %bb.eb ], [ 1, %bb.ea ]
  %.sroa.5133.0 = phi i64 [ %.sroa.3481.0.copyload, %bb.eb ], [ undef, %bb.ea ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fl, ptr noundef nonnull align 4 dereferenceable(7) %.sroa.0129, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0129)
  store i8 %.sroa.4130.0, ptr %.sroa.331.0..sroa_idx, align 1
  store i64 %.sroa.5133.0, ptr %.sroa.432.0..sroa_idx, align 8
  br label %.backedge.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6cookie6Cookie10into_owned17h891310bdf2d377d7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 7 uses
  %cond198.a = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %cond198.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.i
  %.sroa.6.0159 = phi ptr [ %.sroa.5.sroa.0.0.copyload, %bb.a ], [ %i.m, %bb.i ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.a ], [ %.sroa.5.sroa.4.0.copyload, %bb.i ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0105.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6106.0.copyload = load ptr, ptr %.sroa.6106.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9107.0.copyload = load i64, ptr %.sroa.9107.0..sroa_idx, align 8 ; 7 uses
  %cond = icmp eq i64 %.sroa.0105.0.copyload, -9223372036854775808
  br i1 %cond, label %bb.c, label %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6106.0.copyload) ]
  %i.b = icmp slt i64 %.sroa.9107.0.copyload, 0
  br i1 %i.b, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !1776

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.c
  %i.c = icmp eq i64 %.sroa.9107.0.copyload, 0
  br i1 %i.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2193
  %i.d = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.9107.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2193 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.f = ptrtoint ptr %i.d to i64
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i"

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.c
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.c ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.9107.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #31
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi i64 [ %i.f, %bb.d ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ]
  %i.g = inttoptr i64 %.sroa.10.0.i.i.i to ptr    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull readonly align 1 %.sroa.6106.0.copyload, i64 %.sroa.9107.0.copyload, i1 false), !noalias !2202
  br label %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.h = icmp slt i64 %.sroa.5.sroa.4.0.copyload, 0
  br i1 %i.h, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !1776

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.f
  %i.i = icmp eq i64 %.sroa.5.sroa.4.0.copyload, 0
  br i1 %i.i, label %bb.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2203
  %i.j = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.5.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2203 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %i.l = ptrtoint ptr %i.j to i64
  br label %bb.i

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.f
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.5.sroa.4.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #31
          to label %.noexc56 unwind label %bb.y

.noexc56:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.l, %bb.g ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.m = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull readonly align 1 %.sroa.5.sroa.0.0.copyload, i64 %.sroa.5.sroa.4.0.copyload, i1 false), !noalias !2209
  br label %bb.b

"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit": ; preds = %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i66", %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77", %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.n, %bb.j ], [ %.pn.pn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i66" ], [ %.pn.pn, %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77" ], [ %.pn.pn, %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77" ] ; 4 uses
  %.sroa.017.1 = phi i1 [ true, %bb.j ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i66" ], [ false, %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77" ], [ false, %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77" ] ; 2 uses
  %.sroa.016.1 = phi i1 [ true, %bb.j ], [ %.sroa.016.2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i66" ], [ %.sroa.016.2, %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77" ], [ %.sroa.016.2, %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77" ] ; 3 uses
  %.sroa.015.1 = phi i1 [ true, %bb.j ], [ %.sroa.015.2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i66" ], [ %.sroa.015.2, %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77" ], [ %.sroa.015.2, %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77" ] ; 4 uses
  switch i64 %.sroa.0.0, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i" [
    i64 -9223372036854775807, label %bb.x
    i64 -9223372036854775808, label %bb.x
    i64 0, label %bb.x
  ]

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i": ; preds = %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0159) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0159, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br i1 %.sroa.017.1, label %.thread173, label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"

_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit: ; preds = %bb.b, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i"
  %.sroa.7.0 = phi ptr [ %.sroa.6106.0.copyload, %bb.b ], [ %i.g, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i" ] ; 3 uses
  %.sroa.094.0 = phi i64 [ %.sroa.0105.0.copyload, %bb.b ], [ %.sroa.9107.0.copyload, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i" ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0123.0.copyload = load i64, ptr %i.o, align 8 ; 2 uses
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6124.0.copyload = load ptr, ptr %.sroa.6124.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.9125.0.copyload = load i64, ptr %.sroa.9125.0..sroa_idx, align 8 ; 7 uses
  %cond188 = icmp eq i64 %.sroa.0123.0.copyload, -9223372036854775808
  br i1 %cond188, label %bb.k, label %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit65

bb.k:                                             ; preds = %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6124.0.copyload) ]
  %i.p = icmp slt i64 %.sroa.9125.0.copyload, 0
  br i1 %i.p, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i57, !prof !1776

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i57: ; preds = %bb.k
  %i.q = icmp eq i64 %.sroa.9125.0.copyload, 0
  br i1 %i.q, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i59", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i58"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i58": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i57
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2210
  %i.r = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.9125.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2210 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.m, label %bb.l

bb.l:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i58"
  %i.t = ptrtoint ptr %i.r to i64
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i59"

bb.m:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i58", %bb.k
  %.sroa.4.0.ph.i.i.i63 = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i58" ], [ 0, %bb.k ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i63, i64 %.sroa.9125.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #31
          to label %.noexc64 unwind label %bb.n

.noexc64:                                         ; preds = %bb.m
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i59": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i57
  %.sroa.10.0.i.i.i60 = phi i64 [ %i.t, %bb.l ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i57 ]
  %i.u = inttoptr i64 %.sroa.10.0.i.i.i60 to ptr  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull readonly align 1 %.sroa.6124.0.copyload, i64 %.sroa.9125.0.copyload, i1 false), !noalias !2219
  br label %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit65

"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77": ; preds = %bb.r, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i76", %bb.r, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.n ], [ %.pn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i76" ], [ %.pn, %bb.r ], [ %.pn, %bb.r ] ; 3 uses
  %.sroa.016.2 = phi i1 [ true, %bb.n ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i76" ], [ false, %bb.r ], [ false, %bb.r ] ; 3 uses
  %.sroa.015.2 = phi i1 [ true, %bb.n ], [ %.sroa.015.3, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i76" ], [ %.sroa.015.3, %bb.r ], [ %.sroa.015.3, %bb.r ] ; 3 uses
  switch i64 %.sroa.094.0, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i66" [
    i64 -9223372036854775807, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"
    i64 0, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"
  ]

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i66": ; preds = %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0, i64 noundef %.sroa.094.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit77"

_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit65: ; preds = %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i59"
  %.sroa.7113.0 = phi ptr [ %.sroa.6124.0.copyload, %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit ], [ %i.u, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i59" ] ; 3 uses
  %.sroa.0110.0 = phi i64 [ %.sroa.0123.0.copyload, %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit ], [ %.sroa.9125.0.copyload, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i59" ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.03.0.copyload = load i64, ptr %i.w, align 8 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.55.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8 ; 3 uses
  %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.55.sroa.4.0.copyload = load i64, ptr %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx.sroa_idx, align 8 ; 7 uses
  %cond199.a = icmp eq i64 %.sroa.03.0.copyload, -9223372036854775808
  br i1 %cond199.a, label %bb.o, label %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit75

bb.o:                                             ; preds = %_ZN6cookie9CookieStr10into_owned17h568c0d979cf21922E.exit65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.sroa.0.0.copyload) ]
  %i.x = icmp slt i64 %.sroa.55.sroa.4.0.copyload, 0
  br i1 %i.x, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i67, !prof !1776

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i67: ; preds = %bb.o
  %i.y = icmp eq i64 %.sroa.55.sroa.4.0.copyload, 0
  br i1 %i.y, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fd2ff34bf2d894bE.exit.i69", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i68"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i68": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i67
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2220
end_hunk_2
