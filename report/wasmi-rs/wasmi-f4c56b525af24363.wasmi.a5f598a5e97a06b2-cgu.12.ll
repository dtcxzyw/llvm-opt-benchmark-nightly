Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.12?download=true
inline.NumInlined: 803
inline.NumDeleted: 402
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXso_NtCs6kx5fqqPdgs_8wasmi_ir6decodesNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_:bb.a
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 1, !noalias !1391
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.b, ptr %0, align 8, !alias.scope !1391, !noalias !1392
  %.sroa.4.0.insert.ext = zext i16 %.sroa.0.0.copyload to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, 512
  ret i32 %.sroa.3.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i64 512, -4294966783) i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1396, !noalias !1397, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1, !noalias !1396
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.b, ptr %0, align 8, !alias.scope !1396, !noalias !1397
  %.sroa.41.0.insert.ext = zext i32 %.sroa.0.0.copyload to i64
  %.sroa.41.0.insert.shift = shl nuw i64 %.sroa.41.0.insert.ext, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0.insert.shift, 512
  ret i64 %.sroa.3.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294966782) i64 @_RINvXsp_NtCs6kx5fqqPdgs_8wasmi_ir6decodelNtB6_6Decode6decodeRShECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = call noundef i8 @_RNvXs0_NtCs6kx5fqqPdgs_8wasmi_ir6decodeRShNtB5_7Decoder10read_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = zext i32 %.sroa.05.0.copyload to i64
  %i.d = shl nuw i64 %i.c, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.41.0 = phi i64 [ 0, %bb.b ], [ %i.d, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %.sroa.3.0.insert.ext = zext nneg i8 %i.b to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0, %.sroa.3.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXsq_NtCs6kx5fqqPdgs_8wasmi_ir6decodexNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1401, !noalias !1402, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 1, !noalias !1401
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %1, align 8, !alias.scope !1401, !noalias !1402
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i64 512, -4294966783) i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1406, !noalias !1407, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1, !noalias !1406
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.b, ptr %0, align 8, !alias.scope !1406, !noalias !1407
  %.sroa.41.0.insert.ext = zext i32 %.sroa.0.0.copyload to i64
  %.sroa.41.0.insert.shift = shl nuw i64 %.sroa.41.0.insert.ext, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0.insert.shift, 512
  ret i64 %.sroa.3.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXsu_NtCs6kx5fqqPdgs_8wasmi_ir6decodedNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1411, !noalias !1412, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload4 = load double, ptr %i.a, align 1, !noalias !1411
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %1, align 8, !alias.scope !1411, !noalias !1412
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.0.0.copyload4, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB7_12OperandStack3pop0Bh_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #42
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.b, align 8, !alias.scope !1417, !nonnull !7, !noundef !7 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.val)
          to label %bb.d unwind label %.body, !noalias !1418, !inline_history !0

.body:                                            ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 112, i64 noundef 8) #34, !noalias !1418, !inline_history !1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 112, i64 noundef 8) #34, !noalias !1418, !inline_history !1
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef range(i8 0, 13) i8 @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error12as_trap_code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !alias.scope !1421, !noundef !7 ; 3 uses
  %i.c = icmp ne i8 %i.b, 15
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i8 %i.b, -6
  %i.e = icmp samesign ugt i8 %i.b, 5
  %narrow.i = select i1 %i.e, i8 %i.d, i8 9
  switch i8 %narrow.i, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit [
    i8 0, label %bb.b
    i8 5, label %bb.f
    i8 7, label %bb.c
    i8 8, label %bb.d
    i8 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !27, !alias.scope !1421, !noundef !7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !1422, !alias.scope !1421, !noundef !7
  switch i64 %i.i, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit [
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 8, label %bb.f
  ]

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1423, !alias.scope !1421, !noundef !7
  %switch.tableidx = add nsw i64 %i.k, -4         ; 3 uses
  %i.l = icmp ult i64 %switch.tableidx, 7
  %switch.maskindex = trunc i64 %switch.tableidx to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !17, !alias.scope !1421, !noundef !7
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

switch.lookup:                                    ; preds = %bb.d
  %switch.cast = trunc nuw i64 %switch.tableidx to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 2824645422285571, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a
  %.sroa.01.0.i = phi i8 [ %i.g, %bb.b ], [ 10, %bb.c ], [ 2, %bb.g ], [ 10, %bb.a ], [ 10, %bb.e ], [ %switch.masked, %switch.lookup ]
  br label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

bb.g:                                             ; preds = %bb.c, %bb.c
  br label %bb.f

_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit: ; preds = %bb.d, %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %.sroa.01.0.i, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1426
  %i.a = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #34, !noalias !1426 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindE3newBI_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) #39
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindE3newBI_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap11alloc_funcs(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit, label %.preheader

.loopexit10:                                      ; preds = %.lr.ph, %.preheader
  %i.d = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.loopexit10
  %i.f = load atomic i8, ptr %i.a monotonic, align 8
  %.not.i11 = icmp eq i8 %i.f, 0
  br i1 %.not.i11, label %.loopexit10, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  tail call void @llvm.x86.sse2.pause()
  %i.g = load atomic i8, ptr %i.a monotonic, align 8
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.loopexit10, label %.lr.ph

_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit: ; preds = %.loopexit10, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load atomic i64, ptr %i.h monotonic, align 8, !noalias !1441 ; 4 uses
  %i.j = add i64 %i.i, %1                         ; 5 uses
  %i.k = icmp uge i64 %i.j, %i.i
  %i.l = icmp ult i64 %i.j, 100000001
  %narrow.i = and i1 %i.k, %i.l
  br i1 %narrow.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit
  %i.m = add nuw nsw i64 %i.i, 31
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true) ; 2 uses
  %i.o = add nuw nsw i64 %i.j, 31
  %i.p = tail call range(i64 36, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true) ; 2 uses
  %i.q = sub nuw nsw i64 59, %i.p
  %i.r = icmp samesign ult i64 %i.p, %i.n
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.s = sub nuw nsw i64 59, %i.n
  br label %.lr.ph.i

bb.c:                                             ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #38
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

._crit_edge.i:                                    ; preds = %.noexc7, %bb.b
  store atomic i64 %i.j, ptr %i.h release, align 8, !noalias !1441
  %i.t = trunc i64 %i.i to i32                    ; 2 uses
  %i.u = trunc nuw nsw i64 %i.j to i32            ; 2 uses
  %.not.i.i = icmp ugt i32 %i.t, %i.u
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #38
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %bb.d
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc7
  %.sroa.06.112.i = phi i64 [ %i.z, %.noexc7 ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.v = add nuw i64 %.sroa.06.112.i, 5
  %i.w = and i64 %i.v, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map9FuncEntryEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1O_8adapters4take4TakeINtNtNtB1O_7sources11repeat_with10RepeatWithNvMsc_BS_BQ_6uninitEEEBW_(i64 noundef %i.x)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.lr.ph.i
  %i.z = add nuw i64 %.sroa.06.112.i, 1           ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 0       ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.06.112.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !1441
  %exitcond.not.i = icmp eq i64 %i.z, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  store atomic i8 0, ptr %i.a release, align 8, !noalias !1442
  %i.ac = insertvalue { i32, i32 } poison, i32 %i.t, 0
  %i.ad = insertvalue { i32, i32 } %i.ac, i32 %i.u, 1
  ret { i32, i32 } %i.ad

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store atomic i8 0, ptr %i.a release, align 8, !noalias !1443
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap21init_func_as_compiled(ptr nofree noundef nonnull align 8 captures(none) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = load i32, ptr %i.b, align 4, !noundef !7
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i64 %i.f, 32                 ; 2 uses
  %i.h = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i64 58, %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !noundef !7 ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.l = lshr exact i64 -9223372036854775808, %i.h ; 2 uses
  %i.m = sub nsw i64 %i.g, %i.l                   ; 2 uses
  %.not = icmp ult i64 %i.m, %i.l
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.m ; 3 uses
  br i1 %.not, label %bb.e, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread, !prof !28

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #38
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.q = load atomic i8, ptr %i.p monotonic, align 1, !noalias !1454
  %.not.i9 = icmp eq i8 %i.q, 0
  br i1 %.not.i9, label %bb.j, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #42
          to label %bb.g unwind label %bb.h, !noalias !1454

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.s, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind9into_host:bb.a

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(112) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine8code_map4spanNtB5_14EngineFuncSpan12get_or_panic(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = load i32, ptr %0, align 4, !noundef !7   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !7
  %i.f = sub i32 %i.e, %i.c
  %.not = icmp ult i32 %1, %i.f
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.c, %1
  ret i32 %i.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #38
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !13    ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1616
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !1616
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1616
  %i.l = load i64, ptr %i.a, align 8, !range !17, !noalias !1616, !noundef !7
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !18, !noalias !1616, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1616
  br label %bb.f

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !1616, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1616
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !1616
  %i.s = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1616
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit ], [ -1, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !1621 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1623
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1623
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1623
  %i.i = load i64, ptr %i.a, align 8, !range !17, !noalias !1623, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noalias !1623, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1623
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !1623, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1623
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !1623
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !1623
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #42
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #4 {
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
  br i1 %i.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #34 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RNvMs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6layoutNtB5_11StackLayout15register_locals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i8 noundef range(i8 0, 7) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i8 %2, 4
  %. = select i1 %i.a, i16 2, i16 1               ; 2 uses
  %i.b = zext nneg i16 %. to i64
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %.loopexit.sink.split, label %.split, !prof !9

.split:                                           ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = add i64 %i.e, %i.h                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.h
  %i.k = icmp ult i64 %i.i, 65536
  %narrow = and i1 %i.j, %i.k
  br i1 %narrow, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %.split
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !1626
  %.pre22 = load i64, ptr %0, align 8, !range !13, !alias.scope !1626
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit
  %i.n = phi i64 [ %.pre22, %.lr.ph ], [ %i.t, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 2 uses
  %i.o = phi i64 [ %.pre, %.lr.ph ], [ %i.w, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 3 uses
  %i.p = phi i16 [ %i.g, %.lr.ph ], [ %i.x, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 2 uses
  %.sroa.016.020 = phi i64 [ 0, %.lr.ph ], [ %i.q, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ]
  %i.q = add nuw i64 %.sroa.016.020, 1            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  %i.r = icmp eq i64 %i.o, %i.n
  br i1 %i.r, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #41
  %.pre21 = load i64, ptr %0, align 8, !range !13, !alias.scope !1626
  %.pre23 = load i16, ptr %i.f, align 8
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %bb.c
  %i.s = phi i16 [ %i.p, %bb.b ], [ %.pre23, %bb.c ]
  %i.t = phi i64 [ %i.n, %bb.b ], [ %.pre21, %bb.c ]
  %i.u = load ptr, ptr %i.m, align 8, !alias.scope !1626, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.o
  store i16 %i.p, ptr %i.v, align 2, !noalias !1626
  %i.w = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !1626
  %i.x = add i16 %i.s, %.                         ; 2 uses
  store i16 %i.x, ptr %i.f, align 8
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %.split, %bb.a
  %i.y = tail call fastcc noalias noundef nonnull align 8 ptr @_RNvXsc_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtB7_6engine10translator5error16TranslationErrorE4from(i64 9) #37
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit, %.loopexit.sink.split, %.preheader
  %.sroa.0.1 = phi ptr [ null, %.preheader ], [ %i.y, %.loopexit.sink.split ], [ null, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEE8grow_oneB1a_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1629
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1629
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !1629
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1629, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1629, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1629
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1629, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1629
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1629
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1629
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5zeGauAcNNa_10wasmi_core5typed11TypedRawValE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1632
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1632
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !1632
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1632, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1632, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1632
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1632, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1632
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1632
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1632
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5zeGauAcNNa_10wasmi_core6global10GlobalTypeE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1635
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1635
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 1, i64 noundef 2), !noalias !1635
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1635, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1635, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1635
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1635, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1635
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1635
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1635
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi4func4FuncE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1638
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1638
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !noalias !1638
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1638, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1638, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1638
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1638, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1638
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1638
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1638
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi5table5TableE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1641
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1641
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !noalias !1641
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1641, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1641, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1641
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1641, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1641
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1641
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1641
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi6global6GlobalE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1644
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1644
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !noalias !1644
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1644, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCsefoF4u9kbII_5wasmi6engine6limits6engineNtB4_19EnforcedLimitsErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt:bb.a
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRmNtB6_7Display3fmtCsefoF4u9kbII_5wasmi, ptr %.sroa.43.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bk, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRmNtB6_7Display3fmtCsefoF4u9kbII_5wasmi, ptr %.sroa.4134.0..sroa_idx, align 8
  %i.bl = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !7, !align !12, !noundef !7
  %i.bo = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noundef nonnull @176, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.y, %bb.b ], [ %i.ad, %bb.c ], [ %i.ai, %bb.d ], [ %i.an, %bb.e ], [ %i.as, %bb.f ], [ %i.ax, %bb.g ], [ %i.bc, %bb.h ], [ %i.bh, %bb.i ], [ %i.bo, %bb.j ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeEENtNtNtB8_6traits8iterator8Iterator4nextCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2454, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2454, !nonnull !7, !noundef !7
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsefoF4u9kbII_5wasmi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.e, ptr %0, align 8, !alias.scope !2454
  %.sroa.03.0.copyload = load i32, ptr %i.a, align 1
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsefoF4u9kbII_5wasmi.exit.thread

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsefoF4u9kbII_5wasmi.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert = phi i32 [ %.sroa.03.0.copyload, %bb.b ], [ 255, %bb.a ]
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB4_5StackNtNtB6_5utils19ReusableAllocations16into_allocations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) initializes((0, 208)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2464, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2464
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntryNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load atomic i8, ptr %i.a acquire, align 8
  switch i8 %i.b, label %bb.b [
    i8 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEECsefoF4u9kbII_5wasmi.exit
    i8 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEECsefoF4u9kbII_5wasmi.exit
    i8 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEECsefoF4u9kbII_5wasmi.exit
    i8 1, label %bb.c
    i8 4, label %bb.d
  ], !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #38
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEECsefoF4u9kbII_5wasmi.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.c, %bb.a, %bb.a, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map19UncompiledFuncEntryEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEECsefoF4u9kbII_5wasmi.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !2467, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEECsefoF4u9kbII_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !2467, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #34, !noalias !2467
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEECsefoF4u9kbII_5wasmi.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCsefoF4u9kbII_5wasmi6moduleNtB5_12ModuleHeaderNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntryNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load atomic i8, ptr %i.f acquire, align 8
  switch i8 %i.g, label %bb.b [
    i8 0, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 1, label %bb.g
  ], !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 17)
  %i.h = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 20)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 26)
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 19)
  %i.k = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  %i.l = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 21)
  %i.m = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188)
  %i.n = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCskKLDkoKarTP_4core3mem13manually_dropINtB5_12ManuallyDropNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map17CompiledFuncEntryENtNtB9_3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCskKLDkoKarTP_4core3mem13manually_dropINtB5_12ManuallyDropNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map19UncompiledFuncEntryENtNtB9_3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvXsc_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtB7_6engine10translator5error16TranslationErrorE4from(i64 range(i64 9, 19) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 %0, ptr %i.b, align 4
  store i8 21, ptr %i.a, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !2472
  %i.c = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #34, !noalias !2472 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #42
          to label %.noexc.i unwind label %bb.c, !noalias !2473

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a) #39
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvXsd_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorE4from(ptr noalias noundef nonnull align 8 %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  store i8 20, ptr %i.a, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !2478
  %i.c = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #34, !noalias !2478 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #42
          to label %.noexc.i unwind label %bb.c, !noalias !2479

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a) #39
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvXsd_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_14SpinMutexGuardNtNtCsefoF4u9kbII_5wasmi6engine12EngineStacksENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  store atomic i8 0, ptr %i.a release, align 1
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvXsd_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_14SpinMutexGuardNtNtCsefoF4u9kbII_5wasmi6engine23ReusableAllocationStackENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  store atomic i8 0, ptr %i.a release, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvXsj_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB7_6engine9resumable22ResumableHostTrapErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i8 10, ptr %i.a, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !2484
  %i.c = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #34, !noalias !2484 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #42
          to label %.noexc.i unwind label %bb.c, !noalias !2485

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a) #39
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvXsk_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB7_6engine9resumable23ResumableOutOfFuelErrorE4from(i64 noundef %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.b, align 8
  store i8 11, ptr %i.a, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !2490
  %i.c = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #34, !noalias !2490 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #42
          to label %.noexc.i unwind label %bb.c, !noalias !2491

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a) #39
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsk_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_19UncompiledFuncEntryNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 19)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @200)
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @202)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 6, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @203) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noundef !7
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.a, align 1
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @204) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB5_10MemoryAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsl_NtCskKLDkoKarTP_4core3fmtPNtNtCs5zeGauAcNNa_10wasmi_core5table5TableNtB5_7Pointer3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !7
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsl_NtCskKLDkoKarTP_4core3fmtPNtNtNtCsefoF4u9kbII_5wasmi8instance5cache9AnyEntityNtB5_7Pointer3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !7
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSjNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtStNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRtINtNtNtBa_5slice4iter4ItertEECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !range !25, !noundef !7
  store i32 %i.b, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !2495, !noalias !2496, !noundef !7 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 67108864
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_14FuncsBucketRefNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @215)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10DoneReasonNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !15, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.e, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
end_hunk_2
