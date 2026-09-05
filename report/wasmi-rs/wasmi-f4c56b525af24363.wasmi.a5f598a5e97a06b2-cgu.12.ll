Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.12?download=true
inline.NumInlined: 803
inline.NumDeleted: 402
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsq_NtCs6kx5fqqPdgs_8wasmi_ir6decodexNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %1, align 8, !alias.scope !1401, !noalias !1402
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i64 512, -4294966272) i64 @_RINvXst_NtCs6kx5fqqPdgs_8wasmi_ir6decodefNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
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
define noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.i = load atomic i64, ptr %i.h monotonic, align 8, !noalias !1441 ; 5 uses
  %i.j = add i64 %i.i, %1                         ; 5 uses
  %i.k = icmp uge i64 %i.j, %i.i
  %i.l = icmp ult i64 %i.j, 100000001
  %narrow.i = and i1 %i.k, %i.l
  br i1 %narrow.i, label %2, label %4, !prof !16

2:                                                ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit
  %3 = icmp eq i64 %i.i, 0
  br i1 %3, label %bb.b, label %5

4:                                                ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #38
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %4
  unreachable

5:                                                ; preds = %2
  %6 = add i64 %i.i, 31
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 false)
  %8 = sub nsw i64 59, %7
  br label %bb.b

bb.b:                                             ; preds = %5, %2
  %.sroa.06.0.i = phi i64 [ %8, %5 ], [ 0, %2 ]   ; 2 uses
  %i.m = add nuw nsw i64 %i.j, 31
  %i.n = tail call range(i64 36, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = sub nuw nsw i64 59, %i.n                 ; 2 uses
  %i.p = icmp ult i64 %.sroa.06.0.i, %i.o
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc7, %bb.b
  store atomic i64 %i.j, ptr %i.h release, align 8, !noalias !1441
  %i.q = trunc i64 %i.i to i32                    ; 2 uses
  %i.r = trunc nuw nsw i64 %i.j to i32            ; 2 uses
  %.not.i.i = icmp ugt i32 %i.q, %i.r
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #38
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %bb.c
  unreachable

.lr.ph.i:                                         ; preds = %bb.b, %.noexc7
  %.sroa.06.112.i = phi i64 [ %i.w, %.noexc7 ], [ %.sroa.06.0.i, %bb.b ] ; 3 uses
  %i.s = add i64 %.sroa.06.112.i, 5
  %i.t = and i64 %i.s, 63
  %i.u = shl nuw i64 1, %i.t
  %i.v = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map9FuncEntryEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1O_8adapters4take4TakeINtNtNtB1O_7sources11repeat_with10RepeatWithNvMsc_BS_BQ_6uninitEEEBW_(i64 noundef %i.u)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.lr.ph.i
  %i.w = add i64 %.sroa.06.112.i, 1               ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.06.112.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  store ptr %i.x, ptr %i.y, align 8, !noalias !1441
  %exitcond.not.i = icmp eq i64 %i.w, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  store atomic i8 0, ptr %i.a release, align 8, !noalias !1442
  %i.z = insertvalue { i32, i32 } poison, i32 %i.q, 0
  %i.aa = insertvalue { i32, i32 } %i.z, i32 %i.r, 1
  ret { i32, i32 } %i.aa

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.c, %4
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %.sroa.5.0.copyload, i64 noundef 1) #34, !noalias !1455
  br label %.body

_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtNtCsefoF4u9kbII_5wasmi6engine8code_map4spanNtB5_10EngineFuncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #42
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread
  unreachable

bb.j:                                             ; preds = %bb.e
  store ptr %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x i64> %i.o, ptr %.sroa.5.0..sroa.0.0.i.sroa_idx, align 8
  store atomic i8 4, ptr %i.p release, align 8, !noalias !1456
  ret void

.body:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.h
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.r, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %i.r, %bb.h ], [ %i.t, %bb.k ], [ %i.t, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body15

bb.k:                                             ; preds = %bb.d, %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load i64, ptr %i.u, align 8, !alias.scope !1457, !noundef !7 ; 2 uses
  %i.v = icmp eq i64 %.val8, 0
  br i1 %i.v, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.k
  %.val = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val8, i64 noundef 1) #34, !noalias !1458
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap23init_func_as_uncompiled(ptr nofree noundef nonnull align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load atomic i64, ptr %i.k acquire, align 8
  %i.m = load i32, ptr %i.j, align 4, !noundef !7
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %i.n
  br i1 %.not.i, label %bb.b, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.o = add nuw nsw i64 %i.n, 32                 ; 2 uses
  %i.p = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true) ; 2 uses
  %i.q = sub nuw nsw i64 58, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !noundef !7 ; 2 uses
  %.not4.i = icmp eq ptr %i.s, null
  br i1 %.not4.i, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.t = lshr exact i64 -9223372036854775808, %i.p ; 2 uses
  %i.u = sub nsw i64 %i.o, %i.t                   ; 2 uses
  %.not = icmp ult i64 %i.u, %i.t
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.u ; 2 uses
  br i1 %.not, label %bb.e, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread, !prof !28

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #38
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.w = load ptr, ptr %5, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.u, label %bb.g

_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs5_NtNtNtCsefoF4u9kbII_5wasmi6engine8code_map4spanNtB5_10EngineFuncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #42
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.w, ptr %i.g, align 8, !noalias !1504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1504
  %.not.i8 = icmp eq ptr %.sroa.0.0.copyload, null ; 2 uses
  br i1 %.not.i8, label %bb.o, label %bb.i

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.ao, %bb.r ], [ %i.af, %bb.l ], [ %i.ao, %bb.s ], [ %i.ao, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.z = load ptr, ptr %i.g, align 8, !alias.scope !1508, !noalias !1504, !nonnull !7, !noundef !7
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !1509
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %.body.thread

bb.h:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #41
          to label %.body.thread unwind label %bb.t, !noalias !1510

bb.i:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1504
end_hunk_0
