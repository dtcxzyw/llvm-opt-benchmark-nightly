Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.10?download=true
inline.NumInlined: 168
inline.NumDeleted: 110
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_:bb.a
  br i1 %i.a, label %_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i
  %i.b = icmp eq i64 %i.d, %.16.val
  br i1 %i.b, label %_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i unwind label %bb.b, !noalias !21

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i unwind label %bb.c, !noalias !21

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i unwind label %bb.e, !noalias !21

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !21
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.i = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.j = icmp eq i64 %i.i, %.16.val
  br i1 %i.j, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.e, %bb.b ]
  %i.l = icmp eq i64 %i.d, %.16.val
  br i1 %i.l, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.i, %bb.d ], [ %i.d, %.body.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.m) #14
          to label %bb.d unwind label %bb.f, !noalias !21

._crit_edge:                                      ; preds = %bb.d, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.f:                                             ; preds = %.lr.ph15
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !21
  unreachable

_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtB1d_6common15DebugInfoOffsetEEECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtB1d_6common15DebugInfoOffsetEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslKoDbeUmNq5_14dwarf_validate(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslKoDbeUmNq5_14dwarf_validate.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslKoDbeUmNq5_14dwarf_validate.exit
    i64 1, label %bb.c
  ], !prof !24

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslKoDbeUmNq5_14dwarf_validate.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !25
  store i8 3, ptr %i.a, align 8, !alias.scope !25
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslKoDbeUmNq5_14dwarf_validate.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs9Jn0q30Ea0B_6object4read15gnu_compression21compressed_file_rangeRShECslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8), (24, 25)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %3, ptr %i.a, align 8
  %i.b = call { ptr, i64 } @_RNvYRShNtNtNtCs9Jn0q30Ea0B_6object4read8read_ref7ReadRef10read_bytesCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.b, 1
  %i.f = icmp eq i64 %i.e, 8
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 1, !noundef !5
  %.not = icmp eq i64 %i.g, 1112099930
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef ptr @_RINvYRShNtNtNtCs9Jn0q30Ea0B_6object4read8read_ref7ReadRef4readINtNtBc_6endian3U32NtB11_9BigEndianEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.k = sub i64 %i.j, %3                         ; 2 uses
  %i.l = icmp ult i64 %4, %i.k
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.copyload = load i32, ptr %i.h, align 1
  %i.m = call i32 @llvm.bswap.i32(i32 %.sroa.028.0.copyload)
  %i.n = zext i32 %i.m to i64
  %i.o = sub nuw i64 %4, %i.k
  store i64 %i.j, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sink38 = phi i64 [ 8, %bb.h ], [ 16, %bb.f ]
  %.sink.sink = phi i64 [ %.sink, %bb.h ], [ %i.n, %bb.f ]
  %.sink35 = phi i8 [ -1, %bb.h ], [ 2, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sink38
  store i64 %.sink.sink, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink35, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink34 = phi ptr [ @5, %bb.c ], [ @4, %bb.d ], [ @4, %bb.a ], [ @5, %bb.b ], [ @4, %bb.e ]
  %.sink = phi i64 [ 37, %bb.c ], [ 35, %bb.d ], [ 35, %bb.a ], [ 37, %bb.b ], [ 35, %bb.e ]
  store ptr %.sink34, ptr %0, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCs3uS0LcqId4h_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_3map3MapINtNtBa_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3g_12endian_slice11EndianSliceNtNtB3i_9endianity13RunTimeEndianEjEENCINvB1f_13validate_infoQINtNtNtNtBL_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3Y_E0EEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca i64, align 8                  ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !28
  %i.h = invoke { i64, i64 } @_RNvXs0_NtNtCs3uS0LcqId4h_5rayon4iter3mapINtB5_3MapINtNtB9_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1c_12endian_slice11EndianSliceNtNtB1e_9endianity13RunTimeEndianEjEENCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB1U_E0ENtB7_16ParallelIterator7opt_lenB3a_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %bb.b unwind label %bb.r       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvNtNtCs3uS0LcqId4h_5rayon4iter7collect21collect_with_consumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryNCINvB2_14special_extendINtNtB4_3map3MapINtNtB6_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2N_12endian_slice11EndianSliceNtNtB2P_9endianity13RunTimeEndianEjEENCINvB12_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3v_E0EB10_E0EB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvXs0_NtNtCs3uS0LcqId4h_5rayon4iter3mapINtB6_3MapINtNtBa_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEENCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB1V_E0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB3b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.l = load ptr, ptr %i.f, align 8, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 4 uses
  %2 = ptrtoint ptr %i.l to i64
  store i64 %2, ptr %.sroa.0, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.n, 4
  br i1 %i.p, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, -4
  br label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.thread: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ]
  %.in.i = phi ptr [ %.sroa.0, %.lr.ph.i.preheader.new ], [ %i.ah, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.r = load ptr, ptr %.in.i, align 1            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %.val.i = load i64, ptr %i.t, align 8, !noalias !32, !noundef !5 ; 2 uses
  %i.u = icmp ult i64 %.val.i, 144115188075855872
  call void @llvm.assume(i1 %i.u)
  %i.v = add i64 %.val.i, %.sroa.0.08.i
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val.i.1 = load i64, ptr %i.y, align 8, !noalias !32, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %.val.i.1, 144115188075855872
  call void @llvm.assume(i1 %i.z)
  %i.aa = add i64 %.val.i.1, %i.v
  %i.ab = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val.i.2 = load i64, ptr %i.ad, align 8, !noalias !32, !noundef !5 ; 2 uses
  %i.ae = icmp ult i64 %.val.i.2, 144115188075855872
  call void @llvm.assume(i1 %i.ae)
  %i.af = add i64 %.val.i.2, %i.aa
  %i.ag = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val.i.3 = load i64, ptr %i.ai, align 8, !noalias !32, !noundef !5 ; 2 uses
  %i.aj = icmp ult i64 %.val.i.3, 144115188075855872
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add i64 %.val.i.3, %i.af                ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.unr-lcssa, label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ak, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.unr-lcssa ]
  %.in.i.epil.init = phi ptr [ %.sroa.0, %.lr.ph.i.preheader ], [ %i.ah, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.08.i.epil = phi i64 [ %i.ap, %.lr.ph.i.epil ], [ %.sroa.0.08.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.in.i.epil = phi ptr [ %i.am, %.lr.ph.i.epil ], [ %.in.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.al = load ptr, ptr %.in.i.epil, align 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = getelementptr i8, ptr %i.al, i64 16
  %.val.i.epil = load i64, ptr %i.an, align 8, !noalias !32, !noundef !5 ; 2 uses
  %i.ao = icmp ult i64 %.val.i.epil, 144115188075855872
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add i64 %.val.i.epil, %.sroa.0.08.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit, label %.lr.ph.i.epil, !llvm.loop !35

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit: ; preds = %.lr.ph.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.ak, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.unr-lcssa ], [ %i.ap, %.lr.ph.i.epil ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !37, !noundef !5 ; 2 uses
  %i.as = load i64, ptr %0, align 8, !range !40, !alias.scope !37, !noundef !5
  %i.at = sub i64 %i.as, %i.ar
  %i.au = icmp ugt i64 %.lcssa, %i.at
  br i1 %i.au, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit, !prof !41

bb.e:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ar, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 64)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit unwind label %bb.q

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.thread, %bb.e
  %i.av = phi ptr [ %i.q, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit.thread ], [ %i.aq, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1h_.exit ], [ %i.aq, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.o, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEE9pop_frontB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.az, %bb.h ], [ %i.bo, %bb.m ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3uS0LcqId4h_5rayon4iter3map3MapINtNtBI_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1F_12endian_slice11EndianSliceNtNtB1H_9endianity13RunTimeEndianEjEENCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2n_E0EEB3D_.exit unwind label %bb.p

bb.h:                                             ; preds = %bb.n, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.ba = load i64, ptr %i.c, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.ba, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1T_.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bb = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.bc = load i64, ptr %i.ax, align 8, !noundef !5 ; 5 uses
  %i.bd = load i64, ptr %i.av, align 8, !alias.scope !42, !noundef !5 ; 5 uses
  %i.be = load i64, ptr %0, align 8, !range !40, !alias.scope !42, !noundef !5
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = icmp ugt i64 %i.bc, %i.bf
  br i1 %i.bg, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.i, !prof !47

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.thread.i: ; preds = %bb.j
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bd, i64 noundef %i.bc, i64 noundef 8, i64 noundef 64)
          to label %.noexc10 unwind label %bb.m

.noexc10:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.thread.i
  %i.bh = load i64, ptr %i.av, align 8, !alias.scope !48, !noundef !5 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 144115188075855872
  call void @llvm.assume(i1 %i.bi)
  br label %bb.k

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.i: ; preds = %bb.j
  %i.bj = icmp ult i64 %i.bd, 144115188075855872
  call void @llvm.assume(i1 %i.bj)
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.i, %.noexc10
  %i.bk = phi i64 [ %i.bh, %.noexc10 ], [ %i.bd, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.i ]
  %i.bl = load ptr, ptr %i.ay, align 8, !alias.scope !48, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = shl nuw nsw i64 %i.bc, 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull readonly align 8 %i.bb, i64 %i.bn, i1 false)
  %.pre.i = load i64, ptr %i.av, align 8, !alias.scope !48
  br label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1T_.exit12: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1T_.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.m:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.thread.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.g unwind label %bb.p

bb.n:                                             ; preds = %bb.k, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.i
  %i.bp = phi i64 [ %.pre.i, %bb.k ], [ %i.bd, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryE7reserveBG_.exit.i ]
  %i.bq = add i64 %i.bp, %i.bc
  store i64 %i.bq, ptr %i.av, align 8, !alias.scope !48
  store i64 0, ptr %i.ax, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.p:                                             ; preds = %bb.r, %bb.q, %bb.g, %bb.m
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.q:                                             ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3uS0LcqId4h_5rayon4iter3map3MapINtNtBI_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1F_12endian_slice11EndianSliceNtNtB1H_9endianity13RunTimeEndianEjEENCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2n_E0EEB3D_.exit unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3uS0LcqId4h_5rayon4iter3map3MapINtNtBI_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1F_12endian_slice11EndianSliceNtNtB1H_9endianity13RunTimeEndianEjEENCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2n_E0EEB3D_.exit: ; preds = %bb.q, %bb.g, %bb.r
  %.pn717 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.r ], [ %i.bs, %bb.q ], [ %.pn, %bb.g ]
end_hunk_0
