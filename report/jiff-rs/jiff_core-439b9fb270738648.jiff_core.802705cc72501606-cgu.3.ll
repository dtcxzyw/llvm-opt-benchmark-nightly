Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-439b9fb270738648.jiff_core.802705cc72501606-cgu.3?download=true
inline.NumInlined: 75
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone22to_ambiguous_timestamp:bb.a
bb.u:                                             ; preds = %bb.s
  %i.bi = icmp eq i64 %.sroa.015.0, 0
  br i1 %i.bi, label %bb.x, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr i8, ptr %i.ah, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !94, !noundef !4
  %i.bl = zext i8 %i.bk to i64                    ; 3 uses
  %i.bm = icmp ugt i64 %.sroa.6.0.i, %i.bl
  br i1 %i.bm, label %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit59, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %.sroa.6.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !94
  unreachable

_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit59: ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  store i32 2, ptr %0, align 4
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bo, ptr %.sroa.432.0..sroa_idx, align 4
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ao, ptr %.sroa.533.0..sroa_idx, align 4
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #17
  unreachable

bb.y:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !range !8, !noundef !4
  %.not = icmp eq i8 %i.br, -1
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bs, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  store i32 0, ptr %0, align 4
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ao, ptr %.sroa.436.0..sroa_idx, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone22to_ambiguous_timestamp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bq, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %2)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit59, %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit50, %bb.z
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone18to_local_time_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, i64 noundef %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, i64 noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4, !noundef !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_8TimeZone5parse(ptr dead_on_unwind noalias nofree noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone5parse(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(address) dereferenceable(232) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #18
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #18 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 4294967296, 0) i64 @_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp11to_datetime(i64 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 377705023201
  %or.cond.i = icmp ult i64 %i.a, 631107230402
  br i1 %or.cond.i, label %_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 33 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #17
  unreachable

_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit: ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = add nsw i64 %0, 378683424000
  %i.d = add nsw i64 %i.c, %i.b                   ; 2 uses
  %i.e = urem i64 %i.d, 86400                     ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.g = udiv i64 %i.d, 86400
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -11323
  %or.cond.i1 = icmp ult i32 %i.i, 7304484
  br i1 %or.cond.i1, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17, !noalias !97
  unreachable

bb.d:                                             ; preds = %_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit
  %i.j = icmp eq i64 %i.e, 0
  br i1 %i.j, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = udiv i32 %i.f, 3600                      ; 2 uses
  %i.l = urem i32 %i.f, 3600                      ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc.i = trunc nuw nsw i32 %i.l to i16   ; 2 uses
  %i.n = udiv i16 %.lhs.trunc.i, 60
  %i.o = zext nneg i16 %i.n to i64
  %i.p = urem i16 %.lhs.trunc.i, 60
  %i.q = zext nneg i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 48
  %i.s = shl nuw nsw i64 %i.o, 40
  %i.t = or disjoint i64 %i.r, %i.s
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit

_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.041.0.i.shrunk = phi i32 [ 0, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  %.sroa.043.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.t, %bb.f ] ; 3 uses
  %.sroa.041.0.i = zext nneg i32 %.sroa.041.0.i.shrunk to i64
  %i.u = shl nuw nsw i32 %i.h, 2
  %i.v = add nuw nsw i32 %i.u, 33266051           ; 2 uses
  %i.w = urem i32 %i.v, 146097
  %i.x = or i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = mul nuw nsw i64 %i.y, 2939745            ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = udiv i32 %i.aa, 11758980
  %i.ac = mul nuw nsw i32 %i.ab, 2141
  %i.ad = add nuw nsw i32 %i.ac, 197913           ; 3 uses
  %.lhs.trunc.i.i = trunc i32 %i.ad to i16
  %i.ae = udiv i16 %.lhs.trunc.i.i, 2141
  %i.af = icmp ugt i32 %i.aa, -696719417          ; 2 uses
  %i.ag = and i32 %i.ad, 4128768
  %i.ah = add nuw nsw i32 %i.ag, 15990784
  %.sroa.2.0.insert.ext.i.i = select i1 %i.af, i32 %i.ah, i32 %i.ad
  %i.ai = udiv i32 %i.v, 146097
  %2 = lshr i64 %i.z, 32
  %3 = zext i1 %i.af to i64
  %narrow = mul nuw nsw i32 %i.ai, 100
  %i.aj = add nuw nsw i32 %narrow, 32736
  %4 = zext nneg i32 %i.aj to i64
  %5 = add nuw nsw i64 %2, %4
  %.sroa.6.8.extract.trunc = add nuw nsw i64 %5, %3
  %.sroa.6.10.extract.shift = lshr i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.6.10.extract.trunc = zext nneg i32 %.sroa.6.10.extract.shift to i64
  %narrow.a = add nuw nsw i16 %i.ae, 1
  %.sroa.6.11.extract.trunc = zext nneg i16 %narrow.a to i64
  %i.ak = lshr i64 %.sroa.043.0.i, 32
  %.sroa.0.4.extract.trunc = or i64 %i.ak, %.sroa.041.0.i
  %sext = shl i64 %.sroa.6.8.extract.trunc, 48
  %sext2 = shl i64 %.sroa.6.10.extract.trunc, 56
  %i.al = ashr exact i64 %sext2, 16
  %i.am = or i64 %sext, %i.al
  %i.an = shl nuw nsw i64 %.sroa.6.11.extract.trunc, 32
  %i.ao = or disjoint i64 %i.am, %i.an
  %sext3 = shl i64 %.sroa.0.4.extract.trunc, 56
  %i.ap = ashr exact i64 %sext3, 32
  %i.aq = shl i64 %.sroa.043.0.i, 16
  %i.ar = ashr i64 %i.aq, 40
  %i.as = and i64 %i.ar, -65536
  %i.at = lshr i64 %.sroa.043.0.i, 40
  %i.au = and i64 %i.at, 16776960
  %i.av = or disjoint i64 %i.au, %i.ao
  %i.aw = or i64 %i.av, %i.as
  %i.ax = or i64 %i.aw, %i.ap
  ret i64 %i.ax
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 377705023201
  %or.cond = icmp ult i64 %i.a, 631107230402
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 33 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = insertvalue { i64, i32 } poison, i64 %0, 0
  %i.c = insertvalue { i64, i32 } %i.b, i32 0, 1
  ret { i64, i32 } %i.c
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 8, i64 noundef 24) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif13LocalTimeTypeE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 4, i64 noundef 8) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif14TransitionInfoE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 1, i64 noundef 2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8DateTimeE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 8, i64 noundef 8) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9TimestampE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 8, i64 noundef 8) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsb09rMIQFAXO_9jiff_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 2, 25) %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !12
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #18
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #18
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 2, 25) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
end_hunk_0
