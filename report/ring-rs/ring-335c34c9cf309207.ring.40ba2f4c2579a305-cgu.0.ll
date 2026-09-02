Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RINvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB3_7KeyPair15from_componentsRShB16_EB7_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %.val4, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.val5, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %.val2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %.val3, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %.val, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %.val1, ptr %i.ab, align 8
  %i.ac = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() unnamed_addr #2 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 0, i32 0) #36, !noalias !91, !srcloc !92 ; 4 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 1 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 1, i32 0) #36, !noalias !91, !srcloc !92
  %i.d = extractvalue { i32, i32, i32, i32 } %i.c, 2 ; 3 uses
  %i.e = icmp ugt i32 %i.b, 6
  br i1 %i.e, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 7, i32 0) #36, !noalias !91, !srcloc !92 ; 2 uses
  %i.g = extractvalue { i32, i32, i32, i32 } %i.f, 0
  %i.h = extractvalue { i32, i32, i32, i32 } %i.f, 2
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.015.0.i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.i = and i32 %i.d, 134217728
  %.not19.i.i = icmp eq i32 %i.i, 0
  br i1 %.not19.i.i, label %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i, label %bb.d

bb.d:                                             ; preds = %.thread.i.i
  %i.j = tail call fastcc noundef i64 @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x865xsave7__xgetbv() #40
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i

_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i: ; preds = %bb.d, %.thread.i.i, %bb.a
  %.sroa.015.026.i.i = phi i32 [ %.sroa.015.0.i.i, %bb.d ], [ %.sroa.015.0.i.i, %.thread.i.i ], [ 0, %bb.a ]
  %.sroa.014.025.i.i = phi i32 [ %.sroa.014.0.i.i, %bb.d ], [ %.sroa.014.0.i.i, %.thread.i.i ], [ 0, %bb.a ] ; 5 uses
  %.sroa.010.01824.i.i = phi i32 [ %i.d, %bb.d ], [ %i.d, %.thread.i.i ], [ 0, %bb.a ] ; 8 uses
  %.sroa.02.0.i.i = phi i64 [ %i.j, %bb.d ], [ 0, %.thread.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.a, 0
  %i.l = icmp ne i32 %i.k, 1970169159
  %i.m = extractvalue { i32, i32, i32, i32 } %i.a, 3
  %i.n = icmp ne i32 %i.m, 1231384169
  %or.cond.i.not8.i = select i1 %i.l, i1 true, i1 %i.n
  %i.o = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.p = icmp ne i32 %i.o, 1818588270
  %narrow.i.not.i = select i1 %or.cond.i.not8.i, i1 true, i1 %i.p ; 2 uses
  %i.q = and i32 %.sroa.010.01824.i.i, 512
  %.not.i2.i = icmp eq i32 %i.q, 0
  %i.r = and i32 %.sroa.010.01824.i.i, 524288
  %.not50.i.i = icmp eq i32 %i.r, 0
  %spec.select.i.i = select i1 %.not50.i.i, i32 4, i32 12
  %.sroa.0.0.i3.i = select i1 %.not.i2.i, i32 0, i32 %spec.select.i.i ; 4 uses
  %i.s = and i64 %.sroa.02.0.i.i, 4
  %.not51.i.i = icmp eq i64 %i.s, 0
  br i1 %.not51.i.i, label %.thread.i5.i, label %bb.e

.thread.i5.i:                                     ; preds = %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i
  %i.t = and i32 %.sroa.010.01824.i.i, 268435456
  %i.u = icmp ne i32 %i.t, 0
  br label %.thread45.i.i

bb.e:                                             ; preds = %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i
  %i.v = and i64 %.sroa.02.0.i.i, 2
  %i.w = icmp ne i64 %i.v, 0
  %i.x = and i32 %.sroa.010.01824.i.i, 268435456
  %i.y = icmp ne i32 %i.x, 0                      ; 2 uses
  %spec.select40.i.i = and i1 %i.y, %i.w
  br i1 %spec.select40.i.i, label %bb.f, label %.thread45.i.i

.thread45.i.i:                                    ; preds = %bb.g, %bb.f, %bb.e, %.thread.i5.i
  %.sroa.025.04349.i.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %.thread.i5.i ], [ false, %bb.e ]
  %.sroa.021.14448.i.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ %i.u, %.thread.i5.i ], [ %i.y, %bb.e ]
  %.sroa.0.2.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.aa, %bb.f ], [ %.sroa.0.0.i3.i, %.thread.i5.i ], [ %.sroa.0.0.i3.i, %bb.e ] ; 4 uses
  %i.z = and i32 %.sroa.010.01824.i.i, 2
  %.not53.i.i = icmp eq i32 %i.z, 0
  br i1 %.not53.i.i, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = or disjoint i32 %.sroa.0.0.i3.i, 64
  %i.ab = and i32 %.sroa.014.025.i.i, 32
  %.not52.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not52.i.i, label %.thread45.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = or disjoint i32 %.sroa.0.0.i3.i, 320
  store atomic i32 1, ptr @ring_core_0_17_16000__avx2_available monotonic, align 4, !noalias !93
  br label %.thread45.i.i

bb.h:                                             ; preds = %.thread45.i.i
  %i.ad = lshr i32 %.sroa.010.01824.i.i, 20
  %i.ae = and i32 %i.ad, 32
  %spec.select34.i.i = or i32 %.sroa.0.2.i.i, %i.ae
  br label %bb.m

bb.i:                                             ; preds = %.thread45.i.i
  %i.af = and i32 %.sroa.010.01824.i.i, 33554432
  %.not55.i.i = icmp eq i32 %i.af, 0
  br i1 %.not55.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = or i32 %.sroa.0.2.i.i, 2
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ah = or i32 %.sroa.0.2.i.i, 34               ; 2 uses
  br i1 %.sroa.025.04349.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = and i32 %.sroa.015.026.i.i, 1536
  %or.cond.i4.i = icmp eq i32 %i.ai, 1536
  %i.aj = or i32 %.sroa.0.2.i.i, 35
  %spec.select35.i.i = select i1 %or.cond.i4.i, i32 %i.aj, i32 %i.ah
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.sroa.0.5.i.i = phi i32 [ %spec.select35.i.i, %bb.l ], [ %spec.select34.i.i, %bb.h ], [ %i.ah, %bb.k ], [ %i.ag, %bb.j ]
  %i.ak = lshr i32 %.sroa.014.025.i.i, 18
  %i.al = and i32 %i.ak, 2048
  %spec.select36.i.i = or i32 %.sroa.0.5.i.i, %i.al ; 2 uses
  %i.am = or i32 %spec.select36.i.i, 4096
  %.sroa.0.7.i.i = select i1 %narrow.i.not.i, i32 %spec.select36.i.i, i32 %i.am
  %i.an = lshr i32 %.sroa.010.01824.i.i, 18
  %i.ao = and i32 %i.an, 16
  %i.ap = and i32 %.sroa.014.025.i.i, 524288      ; 2 uses
  %i.aq = icmp ne i32 %i.ap, 0                    ; 2 uses
  %i.ar = lshr exact i32 %i.ap, 9
  %.sroa.0.8.i.i = or disjoint i32 %i.ao, %i.ar
  %.sroa.0.9.i.i = or i32 %.sroa.0.8.i.i, %.sroa.0.7.i.i ; 3 uses
  %i.as = or i1 %narrow.i.not.i, %.sroa.021.14448.i.i
  %.sroa.021.2.i.i = or i1 %i.aq, %i.as           ; 2 uses
  %i.at = and i32 %.sroa.014.025.i.i, 8
  %i.au = icmp ne i32 %i.at, 0
  %or.cond3.i.i = and i1 %i.au, %.sroa.021.2.i.i
  %i.av = or i32 %.sroa.0.9.i.i, 128
  %spec.select38.i.i = select i1 %or.cond3.i.i, i32 %i.av, i32 %.sroa.0.9.i.i ; 2 uses
  %i.aw = and i32 %.sroa.014.025.i.i, 256
  %.not58.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not58.i.i, label %_RNCNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init0B9_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = or i32 %spec.select38.i.i, 512          ; 2 uses
  %spec.select39.i.i = select i1 %.sroa.021.2.i.i, i32 %i.ax, i32 %.sroa.0.9.i.i
  br i1 %i.aq, label %bb.o, label %_RNCNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init0B9_.exit

bb.o:                                             ; preds = %bb.n
  store atomic i32 1, ptr @ring_core_0_17_16000__adx_bmi2_available monotonic, align 4, !noalias !93
  br label %_RNCNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init0B9_.exit

_RNCNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init0B9_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.0.11.i.i = phi i32 [ %i.ax, %bb.o ], [ %spec.select39.i.i, %bb.n ], [ %spec.select38.i.i, %bb.m ]
  %i.ay = or i32 %.sroa.0.11.i.i, 8192
  %i.az = cmpxchg ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, i32 0, i32 %i.ay release acquire, align 4 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_RINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtB8_5value14ValidatedInput18write_into_mont_RRNtNtBe_3rsa1NEBe_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 25 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 27 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.ac, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw i64 %i.d, 1
  %i.g = add i64 %i.f, 2                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.ac, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !15 ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = icmp ult i64 %i.j, %i.l
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.m, %i.g
  br i1 %i.o, label %bb.ab, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i, !prof !16

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #41
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = load ptr, ptr %1, align 8, !alias.scope !143, !nonnull !15, !align !17, !noundef !15
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l ; 4 uses
  store ptr %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %i.m, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  store i64 0, ptr %i.q, align 8, !alias.scope !145, !noalias !146
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.d, ptr %i.t, align 8, !alias.scope !147, !noalias !148
  store i64 2, ptr %i.s, align 8, !alias.scope !144
  %i.u = load ptr, ptr %0, align 8, !noalias !144, !nonnull !15, !noundef !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !144, !noundef !15
  %i.x = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.d)
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i, label %bb.f

._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre5.i = load i64, ptr %i.r, align 8
  br label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i

bb.f:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.aa = load i64, ptr %i.s, align 8, !alias.scope !150, !noundef !15 ; 8 uses
  %.val3.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !150, !noundef !15 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.aa, %.val3.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #41, !noalias !150
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i: ; preds = %bb.f
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !150, !nonnull !15, !align !17, !noundef !15 ; 14 uses
  switch i64 %i.aa, label %bb.j [
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !18

bb.h:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #41, !noalias !144
  unreachable

bb.i:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #41, !noalias !144
  unreachable

bb.j:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 13 uses
  %i.ac = add i64 %i.aa, -2                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i, !prof !16

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !152, !noalias !153, !noundef !15 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 6 uses
  %.neg.i.i.i = mul i32 %i.ae, %i.ae
  %.neg32.i.i.i = add i32 %.neg.i.i.i, -2
  %i.af = mul i32 %.neg32.i.i.i, %i.ae            ; 2 uses
  %i.ag = mul i32 %i.af, %i.ae
  %i.ah = add i32 %i.ag, 2
  %i.ai = mul i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = mul i32 %i.ai, %i.ae
  %i.ak = add i32 %i.aj, 2
  %i.al = mul i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = mul i32 %i.al, %i.ae
  %i.an = add i32 %i.am, 2
  %i.ao = mul i32 %i.an, %i.al
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = mul i64 %i.ad, %i.ap
  %i.ar = add i64 %i.aq, 2
  %i.as = mul i64 %i.ar, %i.ap
  store i64 %i.as, ptr %.val.i.i.i, align 8, !alias.scope !151, !noalias !154
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val34.i.i = load i64, ptr %i.at, align 8, !noalias !144 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.aa ; 15 uses
  %i.av = sub nuw i64 %.val3.i.i.i, %i.aa
  %.not.i.i.i.i43.i.i = icmp ugt i64 %i.d, %i.av  ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i43.i.i, ptr null, ptr %i.au
  br i1 %.not.i.i.i.i43.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, label %bb.k, !prof !16

bb.k:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !158, !noalias !159, !noundef !15
  %.not.i.i14.i.i.i = icmp eq i64 %i.ax, %i.ac
  br i1 %.not.i.i14.i.i.i, label %bb.l, label %bb.n, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.ay = icmp samesign ult i64 %i.aa, 6
  br i1 %i.ay, label %bb.n, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.az = icmp samesign ugt i64 %i.aa, 130
  br i1 %i.az, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 0, %bb.k ], [ 1, %bb.l ], [ 2, %bb.m ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtB6_3rsa1NEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i) #39
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, !prof !19

bb.p:                                             ; preds = %bb.o
  %.idx.i.i.i.i.i.i.i = shl i64 %i.d, 3           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i
  %i.bb = add i64 %.idx.i.i.i.i.i.i.i, -8
  %i.bc = lshr exact i64 %i.bb, 3
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.bc) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bd, 4
  br i1 %min.iters.check, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.p
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.bf = and i64 %i.be, 3                        ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = select i1 %i.bg, i64 4, i64 %i.bf
  %n.vec = sub nsw i64 %i.be, %i.bh               ; 3 uses
  %i.bi = shl i64 %n.vec, 3
  %i.bj = getelementptr i8, ptr %i.ab, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !162, !noalias !163
  %wide.load2 = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !162, !noalias !163
  %i.bm = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bn = xor <2 x i64> %wide.load2, splat (i64 -1)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x i64> %i.bm, ptr %i.bo, align 8, !alias.scope !164, !noalias !165
  store <2 x i64> %i.bn, ptr %i.bp, align 8, !alias.scope !164, !noalias !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !136

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.body, %bb.p
  %.sroa.9.0.i.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.p ], [ %n.vec, %vector.body ]
  %.sroa.0.02.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %bb.p ], [ %i.bj, %vector.body ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.br = icmp eq i64 %i.d, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %i.br, label %bb.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.val.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, align 8, !alias.scope !162, !noalias !163, !noundef !15
  %i.bs = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.9.0.i.i.i.i.i.i.i
  store i64 %i.bs, ptr %i.bu, align 8, !alias.scope !164, !noalias !165
  %i.bv = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.bw = icmp eq ptr %i.bt, %i.ba
  br i1 %i.bw, label %bb.r, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !137

bb.q:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !166
  unreachable

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.au, align 8, !alias.scope !167, !noalias !168, !noundef !15
  %i.by = or i64 %i.bx, 1
  store i64 %i.by, ptr %i.au, align 8, !alias.scope !167, !noalias !168
  %i.bz = shl nuw nsw i64 %i.d, 6                 ; 3 uses
  %i.ca = sub i64 %i.bz, %.val34.i.i              ; 3 uses
  %i.cb = icmp ult i64 %i.bz, %.val34.i.i
  br i1 %i.cb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp eq i64 %i.bz, %.val34.i.i
  br i1 %i.cc, label %.preheader1.i.i.i.i.i, label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41, !noalias !169
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i64 %i.ca, 64
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41, !noalias !169
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u
  %i.ce = lshr i64 -1, %i.ca
  %i.cf = getelementptr [8 x i8], ptr %.sroa.0.0.i.i.i.i, i64 %i.bv
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8     ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !170, !noalias !171, !noundef !15
  %i.ci = and i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.cg, align 8, !alias.scope !170, !noalias !171
  %.not.i.not.i.not.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.d
  br i1 %.not.i.not.i.not.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i, !prof !19

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i = phi i64 [ %i.cj, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.cj = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i, 1 ; 2 uses
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !172
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cj, %i.ca
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader1.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

.preheader1.i.i.i.i.i:                            ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i, %bb.s
  %.not.i.not.i.not.i.i9.i.i.i.i = icmp eq i64 %i.bv, %i.d
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i, !prof !19

.preheader.i.i.i.i.i:                             ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !174
  %i.ck = load i64, ptr %i.a, align 8, !range !22, !noalias !173, !noundef !15
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, !prof !16

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i
  %.sroa.05.02.i.i.i.i.i = phi i64 [ %i.cm, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i ] ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i, 1
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !174
  %exitcond.not.i12.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i, label %.preheader.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

bb.w:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !23, !noalias !173, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.co) #39
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !174
  %i.cp = load i64, ptr %i.a, align 8, !range !22, !noalias !173, !noundef !15
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !174
  %i.cr = load i64, ptr %i.a, align 8, !range !22, !noalias !173, !noundef !15
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !174
  %i.ct = load i64, ptr %i.a, align 8, !range !22, !noalias !173, !noundef !15
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !174
  %i.cv = load i64, ptr %i.a, align 8, !range !22, !noalias !173, !noundef !15
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !174
  %i.cx = load i64, ptr %i.a, align 8, !range !22, !noalias !173, !noundef !15
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.w, label %bb.x, !prof !16

bb.x:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  %i.cz = add nuw i64 %i.aa, %i.d
  store i64 %i.cz, ptr %i.s, align 8, !alias.scope !175
  br label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i: ; preds = %bb.x, %bb.o, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i, %bb.j, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i
  %i.da = phi i64 [ %.val3.i.i.i, %bb.j ], [ %.val3.i.i.i, %bb.o ], [ %.val3.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ %.pre5.i, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ %.val3.i.i.i, %bb.x ]
  %i.db = phi ptr [ %.val.i.i.i, %bb.j ], [ %.val.i.i.i, %bb.o ], [ %.val.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ %.pre.i, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ %.val.i.i.i, %bb.x ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.j ], [ 1, %bb.o ], [ 1, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ 1, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ 0, %bb.x ]
  %i.dc = icmp eq ptr %i.db, %i.q
  %i.dd = icmp eq i64 %i.da, %i.m
  %i.de = and i1 %i.dd, %i.dc
  br i1 %i.de, label %bb.y, label %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit, !prof !19

bb.y:                                             ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i
  %i.df = load i64, ptr %i.s, align 8, !noundef !15
  %i.dg = add i64 %i.df, %i.l                     ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.l
  br i1 %i.dh, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.dg, ptr %i.k, align 8
  br label %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #41
  unreachable

_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit: ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, %bb.z
  %.pn.i = phi i64 [ %.sroa.0.0.i.i, %bb.z ], [ 1, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit
  %.pn = phi i64 [ %.pn.i, %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit ], [ 1, %bb.d ]
  ret i64 %.pn

bb.ac:                                            ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs6_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_5BoxedNtNtNtBc_3rsa7keypair1PE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp ult i64 %.8.val, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = lshr i64 %i.d, 1                         ; 4 uses
  %i.f = add nuw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.f ; 2 uses
  %i.h = sub nuw nsw i64 %.8.val, %i.f            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !205, !noalias !206, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.j, %i.e
  br i1 %.not.i.i.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 8
  br i1 %i.k, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.d, 257
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i.i) #39
          to label %.noexc4 unwind label %bb.o

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !207
  store ptr %0, ptr %i.a, align 8, !noalias !207
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.m, align 8, !noalias !207
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.n, align 8, !noalias !207
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.o, align 8, !noalias !207
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.d, 15
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.d, 6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.m, label %.thread3.i.i

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_:bb.a

bb.bj:                                            ; preds = %bb.bh
  %i.ff = icmp slt i64 %.sroa.514.0.copyload.i, 0
  br i1 %i.ff, label %bb.ce, label %bb.bk, !prof !16

bb.bk:                                            ; preds = %bb.bj
  %i.fg = shl nuw i64 %.sroa.514.0.copyload.i, 1
  %i.fh = add i64 %i.fg, 2                        ; 9 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.ce, label %bb.bl, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.fj = shl i64 %i.fh, 3                        ; 6 uses
  %i.fk = icmp ugt i64 %i.fh, 2305843009213693951
  %.not.i.i.i.i266 = icmp ugt i64 %i.fj, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.fk, %.not.i.i.i.i266
  br i1 %or.cond.i.i.i.i, label %bb.bm, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267, !prof !28

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267: ; preds = %bb.bl
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1416
  %i.fl = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fj, i64 noundef range(i64 1, 9) 8) #36, !noalias !1416 ; 15 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.bm, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i

bb.bm:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267, %bb.bl
  %.sroa.4.0.ph.i.i.i270 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267 ], [ 0, %bb.bl ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i270, i64 %i.fj) #42
          to label %.noexc271 unwind label %bb.be

.noexc271:                                        ; preds = %bb.bm
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1417
  store ptr %i.fl, ptr %i.f, align 8, !noalias !1417
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 %i.fh, ptr %i.fn, align 8, !noalias !1417
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  store i64 0, ptr %i.fl, align 8, !alias.scope !1419, !noalias !1420
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store i64 %.sroa.514.0.copyload.i, ptr %i.fp, align 8, !alias.scope !1421, !noalias !1422
  store i64 2, ptr %i.fo, align 8, !alias.scope !1418, !noalias !1417
  %i.fq = invoke fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.br, i64 noundef %.sroa.514.0.copyload.i)
          to label %.noexc5.i.i unwind label %bb.cd, !noalias !1423

.noexc5.i.i:                                      ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i
  %i.fr = extractvalue { i64, i64 } %i.fq, 0
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc5.i.i
  %i.ft = load i64, ptr %i.fo, align 8, !alias.scope !1424, !noalias !1417, !noundef !15 ; 8 uses
  %.val3.i.i.i.i.i.i = load i64, ptr %i.fn, align 8, !alias.scope !1424, !noalias !1417, !noundef !15 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ft, %.val3.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.invoke45.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i, !prof !16

.invoke45.i.i:                                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bo, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i, %bb.bn
  %i.fu = phi ptr [ @46, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i ], [ @166, %bb.bn ], [ @47, %bb.bo ], [ @64, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #41
          to label %.cont46.i.i unwind label %bb.cd, !noalias !1423

.cont46.i.i:                                      ; preds = %.invoke45.i.i
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i: ; preds = %bb.bn
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1424, !noalias !1417, !nonnull !15, !align !17, !noundef !15 ; 11 uses
  switch i64 %i.ft, label %bb.bp [
    i64 0, label %.invoke45.i.i
    i64 1, label %bb.bo
  ], !prof !18

bb.bo:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i
  br label %.invoke45.i.i

bb.bp:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16 ; 13 uses
  %i.fw = add i64 %i.ft, -2                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %.not.i.i.i.i.i.i268 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i268, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i, !prof !16

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i: ; preds = %bb.bp
  %i.fx = load i64, ptr %i.fv, align 8, !alias.scope !1426, !noalias !1427, !noundef !15 ; 2 uses
  %i.fy = trunc i64 %i.fx to i32                  ; 6 uses
  %.neg.i.i.i.i.i.i = mul i32 %i.fy, %i.fy
  %.neg32.i.i.i.i.i.i = add i32 %.neg.i.i.i.i.i.i, -2
  %i.fz = mul i32 %.neg32.i.i.i.i.i.i, %i.fy      ; 2 uses
  %i.ga = mul i32 %i.fz, %i.fy
  %i.gb = add i32 %i.ga, 2
  %i.gc = mul i32 %i.gb, %i.fz                    ; 2 uses
  %i.gd = mul i32 %i.gc, %i.fy
  %i.ge = add i32 %i.gd, 2
  %i.gf = mul i32 %i.ge, %i.gc                    ; 2 uses
  %i.gg = mul i32 %i.gf, %i.fy
  %i.gh = add i32 %i.gg, 2
  %i.gi = mul i32 %i.gh, %i.gf
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = mul i64 %i.fx, %i.gj
  %i.gl = add i64 %i.gk, 2
  %i.gm = mul i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %.val.i.i.i.i.i.i, align 8, !alias.scope !1425, !noalias !1428
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.ft ; 14 uses
  %i.go = sub nuw i64 %.val3.i.i.i.i.i.i, %i.ft
  %.not.i.i.i.i43.i.i.i.i.i = icmp ugt i64 %.sroa.514.0.copyload.i, %i.go
  br i1 %.not.i.i.i.i43.i.i.i.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %bb.bq, !prof !16

bb.bq:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !1431, !noalias !1432, !noundef !15
  %.not.i.i14.i.i.i.i.i.i = icmp eq i64 %i.gq, %i.fw
  br i1 %.not.i.i14.i.i.i.i.i.i, label %bb.br, label %bb.bt, !prof !19

bb.br:                                            ; preds = %bb.bq
  %i.gr = icmp samesign ult i64 %i.ft, 6
  br i1 %i.gr, label %bb.bt, label %bb.bs, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.gs = icmp samesign ugt i64 %i.ft, 130
  br i1 %i.gs, label %bb.bt, label %bb.bu, !prof !16

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bq ], [ 1, %bb.br ], [ 2, %bb.bs ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i) #39
          to label %.noexc9.i.i unwind label %bb.cd

.noexc9.i.i:                                      ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fw, %.sroa.514.0.copyload.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, !prof !19

bb.bv:                                            ; preds = %bb.bu
  %.idx.i.i.i.i.i.i.i.i.i.i = shl i64 %.sroa.514.0.copyload.i, 3 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.gu = add i64 %.idx.i.i.i.i.i.i.i.i.i.i, -8
  %i.gv = lshr exact i64 %i.gu, 3
  %i.gw = call i64 @llvm.umin.i64(i64 %.sroa.514.0.copyload.i, i64 %i.gv) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.gw, 4
  br i1 %min.iters.check, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bv
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %i.gy = and i64 %i.gx, 3                        ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = select i1 %i.gz, i64 4, i64 %i.gy
  %n.vec = sub nsw i64 %i.gx, %i.ha               ; 3 uses
  %i.hb = shl i64 %n.vec, 3
  %i.hc = getelementptr i8, ptr %i.fv, i64 %i.hb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.fv, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !1435, !noalias !1436
  %wide.load517 = load <2 x i64>, ptr %i.he, align 8, !alias.scope !1435, !noalias !1436
  %i.hf = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.hg = xor <2 x i64> %wide.load517, splat (i64 -1)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <2 x i64> %i.hf, ptr %i.hh, align 8, !alias.scope !1437, !noalias !1438
  store <2 x i64> %i.hg, ptr %i.hi, align 8, !alias.scope !1437, !noalias !1438
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !1289

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.body, %bb.bv
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.bv ], [ %n.vec, %vector.body ]
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fv, %bb.bv ], [ %i.hc, %vector.body ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ho, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.hk = icmp eq i64 %.sroa.514.0.copyload.i, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hk, label %.invoke45.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1435, !noalias !1436, !noundef !15
  %i.hl = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  store i64 %i.hl, ptr %i.hn, align 8, !alias.scope !1437, !noalias !1438
  %i.ho = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.hp = icmp eq ptr %i.hm, %i.gt
  br i1 %i.hp, label %bb.bw, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1290

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = load i64, ptr %i.gn, align 8, !alias.scope !1439, !noalias !1440, !noundef !15
  %i.hr = or i64 %i.hq, 1
  store i64 %i.hr, ptr %i.gn, align 8, !alias.scope !1439, !noalias !1440
  %i.hs = shl nuw nsw i64 %.sroa.514.0.copyload.i, 6 ; 3 uses
  %i.ht = sub i64 %i.hs, %.sroa.615.0.copyload.i  ; 2 uses
  %i.hu = icmp ult i64 %i.hs, %.sroa.615.0.copyload.i
  br i1 %i.hu, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hv = icmp eq i64 %i.hs, %.sroa.615.0.copyload.i
  br i1 %i.hv, label %.preheader1.i.i.i.i.i.i.i.i, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41
          to label %.noexc11.i.i unwind label %bb.cd, !noalias !1423

.noexc11.i.i:                                     ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.hw = icmp ult i64 %i.ht, 64
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41
          to label %.noexc12.i.i unwind label %bb.cd, !noalias !1423

.noexc12.i.i:                                     ; preds = %bb.ca
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  %.not.i.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.514.0.copyload.i
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, !prof !19

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.hx = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull readonly align 8 %i.fv, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i) #36, !noalias !1441
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hx, %i.ht
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.preheader1.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
          to label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i unwind label %bb.cd

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i
  unreachable

.preheader1.i.i.i.i.i.i.i.i:                      ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, %bb.bx
  %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.514.0.copyload.i
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, !prof !19

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.hy = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, !prof !16

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  %.sroa.05.02.i.i.i.i.i.i.i.i = phi i64 [ %i.ia, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ia = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i.i.i.i, 1
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull readonly align 8 %i.fv, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i) #36, !noalias !1443
  %exitcond.not.i12.i.i.i.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !range !23, !noalias !1442, !noundef !15
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.ic) #39
          to label %.noexc15.i.i unwind label %bb.cd

.noexc15.i.i:                                     ; preds = %bb.cb
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.id = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.ie = trunc nuw i64 %i.id to i1
  br i1 %i.ie, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.if = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.ih = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.ij = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.ik = trunc nuw i64 %i.ij to i1
  br i1 %i.ik, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.il = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.im = trunc nuw i64 %i.il to i1
  br i1 %i.im, label %bb.cb, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i, !prof !16

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i: ; preds = %bb.bu, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i, %bb.bp, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1417
  br label %.invoke.i.i

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  %i.in = icmp ne ptr %.val.i.i.i.i.i.i, %i.fl
  %i.io = icmp ne i64 %.val3.i.i.i.i.i.i, %i.fh
  %.not27.i.i = or i1 %i.io, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1417
  br i1 %.not27.i.i, label %.invoke.i.i, label %bb.cc, !prof !35

.invoke.i.i:                                      ; preds = %bb.cc, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i
  %i.ip = phi ptr [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i ], [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i ], [ @10, %bb.cc ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ip) #42
          to label %.cont.i.i unwind label %bb.cd, !noalias !1423

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cc:                                            ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i
  %i.iq = add nuw i64 %i.ft, %.sroa.514.0.copyload.i
  %.not.i.i269 = icmp eq i64 %i.iq, %i.fh
  br i1 %.not.i.i269, label %bb.ch, label %.invoke.i.i, !prof !19

bb.cd:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, %bb.cb, %bb.bt, %.invoke.i.i, %bb.ca, %bb.by, %.invoke45.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %i.fj, i64 noundef 8) #36, !noalias !1423
  br label %.body

bb.ce:                                            ; preds = %bb.bk, %bb.bj
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #41
          to label %.noexc272 unwind label %bb.be

.noexc272:                                        ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.dh
  br i1 %.sroa.0151.4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358, label %.body

bb.cg:                                            ; preds = %bb.ck, %bb.dg, %bb.co
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358

bb.ch:                                            ; preds = %bb.cc
  %i.it = add nuw i64 %.sroa.514.0.copyload.i, 2  ; 3 uses
  %i.iu = load i64, ptr %i.fp, align 8, !alias.scope !1444, !noalias !1445, !noundef !15
  %.not.i.i273 = icmp eq i64 %i.iu, %.sroa.514.0.copyload.i
  br i1 %.not.i.i273, label %bb.ci, label %bb.ck, !prof !19

bb.ci:                                            ; preds = %bb.ch
  %i.iv = icmp ult i64 %.sroa.514.0.copyload.i, 4
  br i1 %i.iv, label %bb.ck, label %bb.cj, !prof !16

bb.cj:                                            ; preds = %bb.ci
  %i.iw = icmp ugt i64 %.sroa.514.0.copyload.i, 128
  br i1 %i.iw, label %bb.ck, label %bb.cl, !prof !16

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %.sroa.42.0.ph.i274 = phi i64 [ 0, %bb.ch ], [ 1, %bb.ci ], [ 2, %bb.cj ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i274) #39
          to label %.noexc278 unwind label %bb.cg

.noexc278:                                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.ix = icmp slt i64 %.sroa.514.0.copyload.i256, 0
  br i1 %i.ix, label %bb.dg, label %bb.cm, !prof !16

bb.cm:                                            ; preds = %bb.cl
  %i.iy = shl nuw i64 %.sroa.514.0.copyload.i256, 1
  %i.iz = add i64 %i.iy, 2                        ; 7 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.dg, label %bb.cn, !prof !16

bb.cn:                                            ; preds = %bb.cm
  %i.jb = shl i64 %i.iz, 3                        ; 8 uses
  %i.jc = icmp ugt i64 %i.iz, 2305843009213693951
  %.not.i.i.i.i279 = icmp ugt i64 %i.jb, 9223372036854775800
  %or.cond.i.i.i.i280 = or i1 %i.jc, %.not.i.i.i.i279
  br i1 %or.cond.i.i.i.i280, label %bb.co, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281, !prof !28

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281: ; preds = %bb.cn
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1446
  %i.jd = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jb, i64 noundef range(i64 1, 9) 8) #36, !noalias !1446 ; 12 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.co, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282

bb.co:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281, %bb.cn
  %.sroa.4.0.ph.i.i.i327 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281 ], [ 0, %bb.cn ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i327, i64 %i.jb) #42
          to label %.noexc328 unwind label %bb.cg

.noexc328:                                        ; preds = %bb.co
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1447
  store ptr %i.jd, ptr %i.d, align 8, !noalias !1447
  %i.jf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.iz, ptr %i.jf, align 8, !noalias !1447
  %i.jg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  store i64 0, ptr %i.jd, align 8, !alias.scope !1449, !noalias !1450
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 %.sroa.514.0.copyload.i256, ptr %i.jh, align 8, !alias.scope !1451, !noalias !1452
  store i64 2, ptr %i.jg, align 8, !alias.scope !1448, !noalias !1447
  %i.ji = invoke fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bw, i64 noundef %.sroa.514.0.copyload.i256)
          to label %.noexc5.i.i283 unwind label %bb.df, !noalias !1453

.noexc5.i.i283:                                   ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282
  %i.jj = extractvalue { i64, i64 } %i.ji, 0
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %bb.cp

bb.cp:                                            ; preds = %.noexc5.i.i283
  %i.jl = load i64, ptr %i.jg, align 8, !alias.scope !1454, !noalias !1447, !noundef !15 ; 8 uses
  %.val3.i.i.i.i.i.i284 = load i64, ptr %i.jf, align 8, !alias.scope !1454, !noalias !1447, !noundef !15 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i285 = icmp ugt i64 %i.jl, %.val3.i.i.i.i.i.i284
  br i1 %.not.i.i.i.i.i.i.i.i.i285, label %.invoke45.i.i288, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286, !prof !16

.invoke45.i.i288:                                 ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306, %bb.cq, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286, %bb.cp
  %i.jm = phi ptr [ @46, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286 ], [ @166, %bb.cp ], [ @47, %bb.cq ], [ @64, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jm) #41
          to label %.cont46.i.i289 unwind label %bb.df, !noalias !1453

.cont46.i.i289:                                   ; preds = %.invoke45.i.i288
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286: ; preds = %bb.cp
  %.val.i.i.i.i.i.i287 = load ptr, ptr %i.d, align 8, !alias.scope !1454, !noalias !1447, !nonnull !15, !align !17, !noundef !15 ; 11 uses
  switch i64 %i.jl, label %bb.cr [
    i64 0, label %.invoke45.i.i288
    i64 1, label %bb.cq
  ], !prof !18

bb.cq:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286
  br label %.invoke45.i.i288

bb.cr:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286
  %i.jn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i287, i64 16 ; 13 uses
  %i.jo = add i64 %i.jl, -2                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %.not.i.i.i.i.i.i290 = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i.i.i290, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291, !prof !16

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291: ; preds = %bb.cr
  %i.jp = load i64, ptr %i.jn, align 8, !alias.scope !1456, !noalias !1457, !noundef !15 ; 2 uses
  %i.jq = trunc i64 %i.jp to i32                  ; 6 uses
  %.neg.i.i.i.i.i.i292 = mul i32 %i.jq, %i.jq
  %.neg32.i.i.i.i.i.i293 = add i32 %.neg.i.i.i.i.i.i292, -2
  %i.jr = mul i32 %.neg32.i.i.i.i.i.i293, %i.jq   ; 2 uses
  %i.js = mul i32 %i.jr, %i.jq
  %i.jt = add i32 %i.js, 2
  %i.ju = mul i32 %i.jt, %i.jr                    ; 2 uses
  %i.jv = mul i32 %i.ju, %i.jq
  %i.jw = add i32 %i.jv, 2
  %i.jx = mul i32 %i.jw, %i.ju                    ; 2 uses
  %i.jy = mul i32 %i.jx, %i.jq
  %i.jz = add i32 %i.jy, 2
  %i.ka = mul i32 %i.jz, %i.jx
  %i.kb = zext i32 %i.ka to i64                   ; 2 uses
  %i.kc = mul i64 %i.jp, %i.kb
  %i.kd = add i64 %i.kc, 2
  %i.ke = mul i64 %i.kd, %i.kb
  store i64 %i.ke, ptr %.val.i.i.i.i.i.i287, align 8, !alias.scope !1455, !noalias !1458
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i287, i64 %i.jl ; 14 uses
  %i.kg = sub nuw i64 %.val3.i.i.i.i.i.i284, %i.jl
  %.not.i.i.i.i43.i.i.i.i.i295 = icmp ugt i64 %.sroa.514.0.copyload.i256, %i.kg
  br i1 %.not.i.i.i.i43.i.i.i.i.i295, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %bb.cs, !prof !16

bb.cs:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i287, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !alias.scope !1461, !noalias !1462, !noundef !15
  %.not.i.i14.i.i.i.i.i.i297 = icmp eq i64 %i.ki, %i.jo
  br i1 %.not.i.i14.i.i.i.i.i.i297, label %bb.ct, label %bb.cv, !prof !19

bb.ct:                                            ; preds = %bb.cs
  %i.kj = icmp samesign ult i64 %i.jl, 6
  br i1 %i.kj, label %bb.cv, label %bb.cu, !prof !16

bb.cu:                                            ; preds = %bb.ct
  %i.kk = icmp samesign ugt i64 %i.jl, 130
  br i1 %i.kk, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %.sroa.4.0.ph.i.i.i.i.i.i.i298 = phi i64 [ 0, %bb.cs ], [ 1, %bb.ct ], [ 2, %bb.cu ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1QEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i298) #39
          to label %.noexc9.i.i301 unwind label %bb.df

.noexc9.i.i301:                                   ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %.not.i.i.i.i.i.i.i.i.i.i302 = icmp eq i64 %i.jo, %.sroa.514.0.copyload.i256
  br i1 %.not.i.i.i.i.i.i.i.i.i.i302, label %bb.cx, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, !prof !19

bb.cx:                                            ; preds = %bb.cw
  %.idx.i.i.i.i.i.i.i.i.i.i305 = shl i64 %.sroa.514.0.copyload.i256, 3 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.idx.i.i.i.i.i.i.i.i.i.i305
  %i.km = add i64 %.idx.i.i.i.i.i.i.i.i.i.i305, -8
  %i.kn = lshr exact i64 %i.km, 3
  %i.ko = call i64 @llvm.umin.i64(i64 %.sroa.514.0.copyload.i256, i64 %i.kn) ; 2 uses
  %min.iters.check520 = icmp samesign ult i64 %i.ko, 4
  br i1 %min.iters.check520, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, label %vector.ph521

vector.ph521:                                     ; preds = %bb.cx
  %i.kp = add nuw nsw i64 %i.ko, 1                ; 2 uses
  %i.kq = and i64 %i.kp, 3                        ; 2 uses
  %i.kr = icmp eq i64 %i.kq, 0
  %i.ks = select i1 %i.kr, i64 4, i64 %i.kq
  %n.vec522 = sub nsw i64 %i.kp, %i.ks            ; 3 uses
  %i.kt = shl i64 %n.vec522, 3
  %i.ku = getelementptr i8, ptr %i.jn, i64 %i.kt
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next528, %vector.body523 ] ; 3 uses
  %i.kv = shl i64 %index524, 3
  %next.gep525 = getelementptr i8, ptr %i.jn, i64 %i.kv ; 2 uses
  %i.kw = getelementptr i8, ptr %next.gep525, i64 16
  %wide.load526 = load <2 x i64>, ptr %next.gep525, align 8, !alias.scope !1465, !noalias !1466
  %wide.load527 = load <2 x i64>, ptr %i.kw, align 8, !alias.scope !1465, !noalias !1466
  %i.kx = xor <2 x i64> %wide.load526, splat (i64 -1)
  %i.ky = xor <2 x i64> %wide.load527, splat (i64 -1)
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %index524 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store <2 x i64> %i.kx, ptr %i.kz, align 8, !alias.scope !1467, !noalias !1468
  store <2 x i64> %i.ky, ptr %i.la, align 8, !alias.scope !1467, !noalias !1468
  %index.next528 = add nuw i64 %index524, 4       ; 2 uses
  %i.lb = icmp eq i64 %index.next528, %n.vec522
  br i1 %i.lb, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, label %vector.body523, !llvm.loop !1348

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader: ; preds = %vector.body523, %bb.cx
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307.ph = phi i64 [ 0, %bb.cx ], [ %n.vec522, %vector.body523 ]
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308.ph = phi ptr [ %i.jn, %bb.cx ], [ %i.ku, %vector.body523 ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307 = phi i64 [ %i.lg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309 ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader ] ; 4 uses
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308 = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309 ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader ] ; 2 uses
  %i.lc = icmp eq i64 %.sroa.514.0.copyload.i256, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  br i1 %i.lc, label %.invoke45.i.i288, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309:            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i310 = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308, align 8, !alias.scope !1465, !noalias !1466, !noundef !15
  %i.ld = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i310, -1
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308, i64 8 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  store i64 %i.ld, ptr %i.lf, align 8, !alias.scope !1467, !noalias !1468
  %i.lg = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307, 1 ; 3 uses
  %i.lh = icmp eq ptr %i.le, %i.kl
  br i1 %i.lh, label %bb.cy, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306, !llvm.loop !1349

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309
  %i.li = load i64, ptr %i.kf, align 8, !alias.scope !1469, !noalias !1470, !noundef !15
  %i.lj = or i64 %i.li, 1
  store i64 %i.lj, ptr %i.kf, align 8, !alias.scope !1469, !noalias !1470
  %i.lk = shl nuw nsw i64 %.sroa.514.0.copyload.i256, 6 ; 3 uses
  %i.ll = sub nsw i64 %i.lk, %.sroa.615.0.copyload.i ; 2 uses
  %i.lm = icmp ult i64 %i.lk, %.sroa.615.0.copyload.i
  br i1 %i.lm, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ln = icmp eq i64 %i.lk, %.sroa.615.0.copyload.i
  br i1 %i.ln, label %.preheader1.i.i.i.i.i.i.i.i318, label %bb.db

bb.da:                                            ; preds = %bb.cy
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41
          to label %.noexc11.i.i326 unwind label %bb.df, !noalias !1453

.noexc11.i.i326:                                  ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.lo = icmp ult i64 %i.ll, 64
  br i1 %i.lo, label %.lr.ph.i.i.i.i.i.i.i.i312, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41
          to label %.noexc12.i.i311 unwind label %bb.df, !noalias !1453

.noexc12.i.i311:                                  ; preds = %bb.dc
  unreachable

.lr.ph.i.i.i.i.i.i.i.i312:                        ; preds = %bb.db
  %.not.i.not.i.not.i.i.i.i.i.i.i.i.i313 = icmp eq i64 %i.lg, %.sroa.514.0.copyload.i256
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i.i313, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, !prof !19

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i312, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i.i.i.i316 = phi i64 [ %i.lp, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i312 ]
  %i.lp = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i.i.i.i316, 1 ; 2 uses
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.kf, ptr noundef nonnull align 8 %i.kf, ptr noundef nonnull readonly align 8 %i.jn, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i256) #36, !noalias !1471
  %exitcond.not.i.i.i.i.i.i.i.i317 = icmp eq i64 %i.lp, %i.ll
  br i1 %exitcond.not.i.i.i.i.i.i.i.i317, label %.preheader1.i.i.i.i.i.i.i.i318, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314: ; preds = %.preheader1.i.i.i.i.i.i.i.i318, %.lr.ph.i.i.i.i.i.i.i.i312
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
          to label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i315 unwind label %bb.df

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i315: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314
  unreachable

.preheader1.i.i.i.i.i.i.i.i318:                   ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, %bb.cz
  %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i319 = icmp eq i64 %i.lg, %.sroa.514.0.copyload.i256
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i319, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, !prof !19

.preheader.i.i.i.i.i.i.i.i322:                    ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lq = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.lr = trunc nuw i64 %i.lq to i1
  br i1 %i.lr, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, !prof !16

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i318, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  %.sroa.05.02.i.i.i.i.i.i.i.i320 = phi i64 [ %i.ls, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i318 ] ; 2 uses
  %i.ls = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i.i.i.i320, 1
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.kf, ptr noundef nonnull align 8 %i.kf, ptr noundef nonnull readonly align 8 %i.jn, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i256) #36, !noalias !1473
  %exitcond.not.i12.i.i.i.i.i.i.i321 = icmp eq i64 %.sroa.05.02.i.i.i.i.i.i.i.i320, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  br i1 %exitcond.not.i12.i.i.i.i.i.i.i321, label %.preheader.i.i.i.i.i.i.i.i322, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i

bb.dd:                                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i322
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !range !23, !noalias !1472, !noundef !15
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.lu) #39
          to label %.noexc15.i.i325 unwind label %bb.df

.noexc15.i.i325:                                  ; preds = %bb.dd
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lv = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.lw = trunc nuw i64 %i.lv to i1
  br i1 %i.lw, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lx = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.ly = trunc nuw i64 %i.lx to i1
  br i1 %i.ly, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lz = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.ma = trunc nuw i64 %i.lz to i1
  br i1 %i.ma, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.mb = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.mc = trunc nuw i64 %i.mb to i1
  br i1 %i.mc, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.md = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.me = trunc nuw i64 %i.md to i1
  br i1 %i.me, label %bb.dd, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i, !prof !16

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i: ; preds = %bb.cw, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291, %bb.cr, %.noexc5.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1447
  br label %.invoke.i.i303

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  %i.mf = icmp ne ptr %.val.i.i.i.i.i.i287, %i.jd
  %i.mg = icmp ne i64 %.val3.i.i.i.i.i.i284, %i.iz
  %.not27.i.i323 = or i1 %i.mg, %i.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1447
  br i1 %.not27.i.i323, label %.invoke.i.i303, label %bb.de, !prof !35

.invoke.i.i303:                                   ; preds = %bb.de, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i
  %i.mh = phi ptr [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i ], [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i ], [ @10, %bb.de ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mh) #42
          to label %.cont.i.i304 unwind label %bb.df, !noalias !1453

.cont.i.i304:                                     ; preds = %.invoke.i.i303
  unreachable

bb.de:                                            ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i
  %i.mi = add nuw i64 %i.jl, %.sroa.514.0.copyload.i256
  %.not.i.i324 = icmp eq i64 %i.mi, %i.iz
  br i1 %.not.i.i324, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i, label %.invoke.i.i303, !prof !19

bb.df:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, %bb.dd, %bb.cv, %.invoke.i.i303, %bb.dc, %bb.da, %.invoke45.i.i288, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jd, i64 noundef %i.jb, i64 noundef 8) #36, !noalias !1453
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358

bb.dg:                                            ; preds = %bb.cm, %bb.cl
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #41
          to label %.noexc331 unwind label %bb.cg

.noexc331:                                        ; preds = %bb.dg
  unreachable

bb.dh:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.ds
  br i1 %.sroa.0150.2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356, label %bb.cf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356.thread: ; preds = %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dk
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jd, i64 noundef %i.jb, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.ml = icmp samesign ult i64 %i.be, %.sroa.514.0.copyload.i256
  br i1 %i.ml, label %select.unfold455, label %bb.di, !prof !16

bb.di:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.w, ptr nonnull readonly align 8 %i.mm, i64 %.idx.i.i.i.i.i.i.i.i.i.i305, i1 false), !alias.scope !1476, !noalias !1477
  %i.mn = icmp eq i64 %i.be, %.sroa.514.0.copyload.i256
  br i1 %i.mn, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.di
  %i.mo = sub nuw nsw i64 %i.be, %.sroa.514.0.copyload.i256
  %.idx.i.i.i = shl nuw nsw i64 %i.mo, 3
  %i.mp = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.514.0.copyload.i256
  call void @llvm.memset.p0.i64(ptr align 8 %i.mp, i8 0, i64 %.idx.i.i.i, i1 false), !alias.scope !1478, !noalias !1479
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.di
  %i.mq = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.mr = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.w, ptr noundef nonnull readonly align 8 %i.mq, i64 noundef range(i64 0, 1152921504606846976) %i.be) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1480
  store i64 %i.mr, ptr %i.b, align 8, !noalias !1480
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.b) #36, !srcloc !37
  %i.ms = load i64, ptr %i.b, align 8, !noalias !1480, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.ms, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1480
  br i1 %.not.i.i.i, label %select.unfold455, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.mt = icmp samesign ult i64 %i.be, %.sroa.514.0.copyload.i
  br i1 %i.mt, label %select.unfold455, label %bb.dj, !prof !16

bb.dj:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.v, ptr nonnull readonly align 8 %i.mu, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !alias.scope !1483, !noalias !1484
  %i.mv = icmp eq i64 %i.be, %.sroa.514.0.copyload.i
  br i1 %i.mv, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i340, label %.lr.ph.i.i.preheader.i.i338

.lr.ph.i.i.preheader.i.i338:                      ; preds = %bb.dj
  %i.mw = sub nuw nsw i64 %i.be, %.sroa.514.0.copyload.i
  %.idx.i.i.i339 = shl nuw nsw i64 %i.mw, 3
  %i.mx = getelementptr [8 x i8], ptr %i.v, i64 %.sroa.514.0.copyload.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.mx, i8 0, i64 %.idx.i.i.i339, i1 false), !alias.scope !1485, !noalias !1486
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i340

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i340: ; preds = %.lr.ph.i.i.preheader.i.i338, %bb.dj
  %i.my = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.v, ptr noundef nonnull readonly align 8 %i.mq, i64 noundef range(i64 0, 1152921504606846976) %i.be) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1487
  store i64 %i.my, ptr %i.a, align 8, !noalias !1487
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !srcloc !37
  %i.mz = load i64, ptr %i.a, align 8, !noalias !1487, !noundef !15
  %.not.i.i.i341 = icmp eq i64 %i.mz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1487
  br i1 %.not.i.i.i341, label %select.unfold455, label %bb.dk

end_hunk_1
begin_hunk_2_@_RNvXs0_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3KeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt:bb.a
  %i.f = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !15  ; 3 uses
  %i.b = icmp ult i64 %i.a, 98
  br i1 %i.b, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.a, i64 noundef 97, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.a, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2io6writerNtB5_17LengthMeasurementNtB5_11Accumulator10write_byte(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !15  ; 2 uses
  %i.b = icmp eq i64 %i.a, -1                     ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %i.a, 1
  store i64 %i.c, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2io6writerNtB5_17LengthMeasurementNtB5_11Accumulator11write_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !15  ; 2 uses
  %i.b = add i64 %i.a, %2                         ; 2 uses
  %i.c = icmp ult i64 %i.b, %i.a                  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring4aead11unbound_keyNtB5_10UnboundKeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB9_4hkdf3OkmRNtNtB7_9algorithm9AlgorithmEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([456 x i8]) align 8 captures(none) dereferenceable(456) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [448 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !15 ; 4 uses
  %i.h = icmp ult i64 %i.g, 33
  br i1 %i.h, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6456)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !6456, !noalias !6457, !nonnull !15, !align !17, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !6456, !noalias !6457, !nonnull !15, !align !17, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !6456, !noalias !6457, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !6456, !noalias !6457, !noundef !15
  %i.p = call noundef zeroext i1 @_RNvNtCs5yxAJGbRKSL_4ring4hkdf8fill_okm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 0, 33) %i.g, i64 noundef %i.o), !noalias !6456
  br i1 %i.p, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @272) #41
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit: ; preds = %bb.c
  %i.q = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6459
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !6458, !noalias !6460, !nonnull !15, !noundef !15
  call void %.val.i(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.g), !noalias !6461, !inline_history !6452
  %i.r = load i64, ptr %i.b, align 8, !range !40, !noalias !6459, !noundef !15 ; 2 uses
  %i.s = icmp eq i64 %i.r, -2
  br i1 %i.s, label %bb.f, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCs5yxAJGbRKSL_4ring4aead13less_safe_key11LessSafeKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapBN_.exit

bb.f:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6459
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #41, !noalias !6462
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCs5yxAJGbRKSL_4ring4aead13less_safe_key11LessSafeKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapBN_.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.6.0..sroa_idx2, i64 440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6459
  store i64 %i.r, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring5error12key_rejectedNtB5_11KeyRejectedNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring5error16into_unspecifiedNtNtB7_11unspecified11UnspecifiedINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB7_12key_rejected11KeyRejectedE4from(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #20 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring8testutil4randNtB5_24FixedSliceSequenceRandomNtNtNtB9_4rand6sealed12SecureRandom9fill_impl(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !15, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6468)
  %.not.i = icmp eq i64 %2, %i.j
  br i1 %.not.i, label %bb.e, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #41, !noalias !6469
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #41
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.h, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !6469, !noalias !6470
  %i.k = add nuw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB5_3PSSNtB7_12Verification6verify(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [1024 x i8], align 1              ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 89
  %.val = load i8, ptr %i.d, align 1              ; 2 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %3, -1                           ; 5 uses
  %i.g = and i64 %i.f, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i64
  %i.j = lshr i64 %i.f, 3
  %i.k = add nuw nsw i64 %i.j, %i.i               ; 4 uses
  %i.l = icmp samesign ugt i64 %i.k, 2305843009213693951
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = shl nuw i64 %i.k, 3                      ; 3 uses
  %i.n = sub i64 %i.m, %i.f                       ; 2 uses
  %i.o = icmp ult i64 %i.m, %i.f
  br i1 %i.o, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #41, !noalias !6496
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.n, 8
  br i1 %i.p, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #41, !noalias !6496
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = trunc nuw nsw i64 %i.n to i8
  %i.r = lshr i8 -1, %i.q                         ; 2 uses
  %i.s = zext nneg i8 %.val to i64                ; 8 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.k, %i.s
  br i1 %.not.i, label %bb.i, label %bb.w

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #41, !noalias !6496
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = sub nuw nsw i64 %i.k, %i.t               ; 12 uses
  %.not22.i = icmp samesign ugt i64 %i.u, %i.s
  br i1 %.not22.i, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.v = sub nuw nsw i64 %i.u, %i.t
  %i.w = icmp eq i64 %i.m, %i.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 4 uses
  br i1 %i.w, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.l, label %bb.w

._crit_edge:                                      ; preds = %bb.j, %bb.l
  %i.ac = phi i64 [ %i.ag, %bb.l ], [ %i.y, %bb.j ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ae = add i64 %i.ac, %i.u                     ; 7 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %.not.i45 = icmp ugt i64 %i.ae, %i.aa
  %or.cond.i = select i1 %i.af, i1 true, i1 %.not.i45, !prof !28
  br i1 %or.cond.i, label %bb.w, label %bb.m, !prof !28

bb.l:                                             ; preds = %bb.k
  %i.ag = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i64 %i.ag, ptr %i.x, align 8
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !15
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %bb.w

bb.m:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr %2, align 8, !alias.scope !6497, !nonnull !15, !noundef !15 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ac  ; 2 uses
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !6497
  %i.an = add i64 %i.ae, %i.s                     ; 6 uses
  %i.ao = icmp ult i64 %i.an, %i.ae
  %.not.i46 = icmp ugt i64 %i.an, %i.aa
  %or.cond.i47 = select i1 %i.ao, i1 true, i1 %.not.i46, !prof !28
  br i1 %or.cond.i47, label %bb.w, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae ; 2 uses
  store i64 %i.an, ptr %i.ad, align 8, !alias.scope !6498
  %i.aq = icmp ult i64 %i.an, %i.aa
  br i1 %i.aq, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %i.an, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  store i64 %i.ar, ptr %i.ad, align 8
  %i.at = load i8, ptr %i.as, align 1, !noundef !15
  %i.au = icmp eq i8 %i.at, -68
  br i1 %i.au, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.av = icmp samesign ult i64 %i.u, 1025
  br i1 %i.av, label %bb.r, label %bb.q, !prof !36

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #41
  unreachable

bb.r:                                             ; preds = %bb.p
  call fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring3rsa7padding4mgf1(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.s, ptr noalias nofree noundef nonnull %i.b, i64 noundef %i.u)
  %i.aw = load i8, ptr %i.am, align 1, !noalias !6499, !noundef !15 ; 2 uses
  %.not = icmp ugt i8 %i.aw, %i.r
  br i1 %.not, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i8, ptr %i.b, align 1, !noalias !6499, !noundef !15
  %i.ay = xor i8 %i.ax, %i.aw
  %i.az = add nsw i64 %i.u, -1                    ; 7 uses
  %i.ba = getelementptr i8, ptr %i.am, i64 1      ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.not.i10.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i10.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.s
  %min.iters.check = icmp samesign ult i64 %i.u, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep90 = getelementptr i8, ptr %i.al, i64 %i.ae
  %bound0 = icmp ult ptr %i.bb, %scevgep90
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check91 = icmp samesign ult i64 %i.u, 33
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.az, 28
  %n.vec = and i64 %i.az, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !alias.scope !6500, !noalias !6501
  %wide.load92 = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !6500, !noalias !6501
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load93 = load <16 x i8>, ptr %i.bd, align 1, !alias.scope !6502, !noalias !6503
  %wide.load94 = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !6502, !noalias !6503
  %i.bh = xor <16 x i8> %wide.load93, %wide.load
  %i.bi = xor <16 x i8> %wide.load94, %wide.load92
  store <16 x i8> %i.bh, ptr %i.bd, align 1, !alias.scope !6502, !noalias !6503
  store <16 x i8> %i.bi, ptr %i.bg, align 1, !alias.scope !6502, !noalias !6503
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !6491

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %i.az, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index96 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index96
  %wide.load97 = load <4 x i8>, ptr %i.bl, align 1, !alias.scope !6500, !noalias !6501
  %wide.load98 = load <4 x i8>, ptr %i.bk, align 1, !alias.scope !6502, !noalias !6503
  %i.bm = xor <4 x i8> %wide.load98, %wide.load97
  store <4 x i8> %i.bm, ptr %i.bk, align 1, !alias.scope !6502, !noalias !6503
  %index.next99 = add nuw i64 %index96, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next99, %n.vec95
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6492

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n100 = icmp eq i64 %i.az, %n.vec95
  br i1 %cmp.n100, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bo = add nuw i64 %.sroa.0.08.i.i.i, 1        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.08.i.i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.0.08.i.i.i
  %.val7.i.i.i = load i8, ptr %i.bq, align 1, !noalias !6501, !noundef !15
  %i.br = load i8, ptr %i.bp, align 1, !alias.scope !6504, !noalias !6501, !noundef !15
  %i.bs = xor i8 %i.br, %.val7.i.i.i
  store i8 %i.bs, ptr %i.bp, align 1, !alias.scope !6504, !noalias !6501
  %exitcond.not.i.i.i = icmp eq i64 %i.bo, %i.az
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !6493

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.s
  %i.bt = and i8 %i.ay, %i.r
  store i8 %i.bt, ptr %i.b, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_:bb.a
  br label %.preheader.i.i.i.i.i.i.preheader69

.preheader.i.i.i.i.i.i.preheader69:               ; preds = %.preheader.i.i.i.i.i.i.preheader, %middle.block66
  %.ph = phi i64 [ %i.e, %.preheader.i.i.i.i.i.i.preheader ], [ %i.n, %middle.block66 ]
  %.sroa.01.0.i.i.i.i.i.i.ph = phi i64 [ %1, %.preheader.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block66 ]
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.preheader69, %bb.e
  %i.u = phi i64 [ %i.v, %bb.e ], [ %.ph, %.preheader.i.i.i.i.i.i.preheader69 ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ %.sroa.01.0.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader69 ]
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.u, %i.f
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.v = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.v, ptr %i.b, align 8, !alias.scope !7029
  %i.w = add i64 %.sroa.01.0.i.i.i.i.i.i, -1      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !6991

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i: ; preds = %.preheader.i.i.i.i.i.i
  store i8 1, ptr %.phi.trans.insert.i, align 8, !alias.scope !7029
  br label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i: ; preds = %bb.b
  br i1 %i.c, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i_crit_edge

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i_crit_edge: ; preds = %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i
  %.pre36 = load i64, ptr %i.b, align 8, !alias.scope !7030, !noalias !7031
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre37 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7032, !noalias !7033
  br label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i: ; preds = %bb.e, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i_crit_edge
  %i.y = phi i64 [ %.pre37, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i_crit_edge ], [ %i.f, %bb.e ]
  %i.z = phi i64 [ %.pre36, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i_crit_edge ], [ %i.v, %bb.e ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7031)
  %.not.i.i2.i = icmp ugt i64 %i.z, %i.y
  br i1 %.not.i.i2.i, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i
  %i.aa = add i64 %i.z, 1
  %i.ab = icmp eq i64 %i.z, -1
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %.phi.trans.insert.i, align 8, !alias.scope !7034
  store i64 %i.aa, ptr %i.b, align 8, !alias.scope !7034
  br label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit

bb.g:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ad = add i64 %i.a, %1                        ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.ae, label %bb.h, label %.thread, !prof !16

.thread:                                          ; preds = %bb.g
  %.phi.trans.insert.i1328 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre.i1429 = load i8, ptr %.phi.trans.insert.i1328, align 8, !range !34, !alias.scope !7035
  %i.ag = trunc nuw i8 %.pre.i1429 to i1
  br i1 %i.ag, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ah = add i64 %i.a, -1
  %i.ai = tail call fastcc i64 @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af, i64 noundef %i.ah) #40
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i12 = icmp eq i64 %1, 0
  %.phi.trans.insert.i13 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.pre.i14 = load i8, ptr %.phi.trans.insert.i13, align 8, !range !34, !alias.scope !7036
  %i.ak = trunc nuw i8 %.pre.i14 to i1            ; 2 uses
  br i1 %.not.i.i.i12, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ak, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.0.03035 = phi i64 [ %i.ad, %.thread ], [ %1, %bb.j ] ; 3 uses
  %.phi.trans.insert.i133134 = phi ptr [ %.phi.trans.insert.i1328, %.thread ], [ %.phi.trans.insert.i13, %bb.j ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7038)
  %i.am = load i64, ptr %i.af, align 8, !alias.scope !7039, !noalias !7038, !noundef !15 ; 5 uses
  %i.an = load i64, ptr %i.al, align 8, !alias.scope !7040, !noalias !7037, !noundef !15 ; 3 uses
  %.not.i.i.i.i.i.i15 = icmp ugt i64 %i.am, %i.an
  br i1 %.not.i.i.i.i.i.i15, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit, label %.preheader.i.i.i.i.i.i16.preheader

.preheader.i.i.i.i.i.i16.preheader:               ; preds = %bb.k
  %i.ao = sub nuw i64 %i.an, %i.am
  %i.ap = add i64 %.sroa.0.03035, -1
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ap)
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 5
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i16.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i16.preheader
  %i.as = and i64 %i.ar, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec = sub i64 %i.ar, %i.au                   ; 3 uses
  %i.av = add i64 %i.am, %n.vec
  %i.aw = sub i64 %.sroa.0.03035, %n.vec
  %i.ax = add i64 %i.am, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.ay = phi i64 [ %i.ax, %vector.ph ], [ %i.az, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = add i64 %i.ay, 4
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !7015

middle.block:                                     ; preds = %vector.body
  %i.bb = add i64 %i.ay, 3
  store i64 %i.bb, ptr %i.af, align 8, !alias.scope !7041
  br label %.preheader.i.i.i.i.i.i16.preheader71

.preheader.i.i.i.i.i.i16.preheader71:             ; preds = %.preheader.i.i.i.i.i.i16.preheader, %middle.block
  %.ph72 = phi i64 [ %i.am, %.preheader.i.i.i.i.i.i16.preheader ], [ %i.av, %middle.block ]
  %.sroa.01.0.i.i.i.i.i.i17.ph = phi i64 [ %.sroa.0.03035, %.preheader.i.i.i.i.i.i16.preheader ], [ %i.aw, %middle.block ]
  br label %.preheader.i.i.i.i.i.i16

.preheader.i.i.i.i.i.i16:                         ; preds = %.preheader.i.i.i.i.i.i16.preheader71, %bb.l
  %i.bc = phi i64 [ %i.bd, %bb.l ], [ %.ph72, %.preheader.i.i.i.i.i.i16.preheader71 ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i17 = phi i64 [ %i.be, %bb.l ], [ %.sroa.01.0.i.i.i.i.i.i17.ph, %.preheader.i.i.i.i.i.i16.preheader71 ]
  %exitcond.not.i.i.i.i.i.i18 = icmp eq i64 %i.bc, %i.an
  br i1 %exitcond.not.i.i.i.i.i.i18, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i23, label %bb.l

bb.l:                                             ; preds = %.preheader.i.i.i.i.i.i16
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  store i64 %i.bd, ptr %i.af, align 8, !alias.scope !7041
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i.i17, -1   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19, label %.preheader.i.i.i.i.i.i16, !llvm.loop !7016

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i23: ; preds = %.preheader.i.i.i.i.i.i16
  store i8 1, ptr %.phi.trans.insert.i133134, align 8, !alias.scope !7041
  br label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24: ; preds = %bb.i
  br i1 %i.ak, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19_crit_edge

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19_crit_edge: ; preds = %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24
  %.pre = load i64, ptr %i.af, align 8, !alias.scope !7042, !noalias !7043
  br label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19: ; preds = %bb.l, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19_crit_edge
  %i.bg = phi i64 [ %.pre, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19_crit_edge ], [ %i.bd, %bb.l ] ; 4 uses
  %.phi.trans.insert.i1332 = phi ptr [ %.phi.trans.insert.i13, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24._RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19_crit_edge ], [ %.phi.trans.insert.i133134, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7043)
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !7045, !noalias !7044, !noundef !15
  %.not.i.i2.i20 = icmp ugt i64 %i.bg, %i.bi
  br i1 %.not.i.i2.i20, label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit, label %bb.m

bb.m:                                             ; preds = %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19
  %i.bj = add i64 %i.bg, 1
  %i.bk = icmp eq i64 %i.bg, -1
  %i.bl = zext i1 %i.bk to i8
  store i8 %i.bl, ptr %.phi.trans.insert.i1332, align 8, !alias.scope !7046
  store i64 %i.bj, ptr %i.af, align 8, !alias.scope !7046
  br label %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit

_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.exit: ; preds = %bb.m, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i23, %bb.k, %bb.j, %.thread, %bb.f, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i, %bb.d, %bb.c, %bb.h
  %.sroa.4.0 = phi i64 [ undef, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i ], [ undef, %bb.h ], [ undef, %bb.d ], [ undef, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i ], [ undef, %bb.c ], [ %i.z, %bb.f ], [ undef, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i ], [ undef, %bb.k ], [ undef, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i23 ], [ undef, %bb.j ], [ %i.bg, %bb.m ], [ undef, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24 ], [ undef, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19 ], [ undef, %.thread ]
  %.sroa.04.0 = phi i64 [ 0, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i ], [ 0, %bb.c ], [ 1, %bb.f ], [ 0, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i ], [ 0, %bb.k ], [ 0, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.i23 ], [ 0, %bb.j ], [ 1, %bb.m ], [ 0, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.i24 ], [ 0, %_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBb_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit.thread.thread16.i19 ], [ 0, %.thread ]
  %i.bm = insertvalue { i64, i64 } poison, i64 %.sroa.04.0, 0
  %i.bn = insertvalue { i64, i64 } %i.bm, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.bn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB4_3PSSNtB6_11RsaEncoding7encode_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 89
  %.val = load i8, ptr %i.e, align 1              ; 2 uses
  %i.f = icmp eq i64 %4, 0
  br i1 %i.f, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %4, -1                           ; 5 uses
  %i.h = and i64 %i.g, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = lshr i64 %i.g, 3
  %i.l = add nuw nsw i64 %i.k, %i.j               ; 6 uses
  %i.m = icmp samesign ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = shl nuw i64 %i.l, 3                      ; 3 uses
  %i.o = sub i64 %i.n, %i.g                       ; 2 uses
  %i.p = icmp ult i64 %i.n, %i.g
  br i1 %i.p, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #41, !noalias !7053
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.o, 8
  br i1 %i.q, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #41, !noalias !7053
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = trunc nuw nsw i64 %i.o to i8
  %i.s = lshr i8 -1, %i.r                         ; 2 uses
  %i.t = zext nneg i8 %.val to i64                ; 12 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.l, %i.t
  br i1 %.not.i, label %bb.i, label %bb.s

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #41, !noalias !7053
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = sub nuw nsw i64 %i.l, %i.u               ; 7 uses
  %.not22.i = icmp samesign ugt i64 %i.v, %i.t
  br i1 %.not22.i, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.w = sub nuw nsw i64 %i.v, %i.u
  store i64 %i.l, ptr %i.c, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.w, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.t, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.t, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 %i.s, ptr %.sroa.6.0..sroa_idx, align 8
  %i.x = icmp eq i64 %i.n, %i.g
  br i1 %i.x, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %2, align 1
  %i.y = add nsw i64 %3, -1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337) #41
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.l
  %.sroa.7.0 = phi i64 [ %i.y, %bb.l ], [ %3, %bb.j ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.z, %bb.l ], [ %2, %bb.j ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.7.0, ptr %i.b, align 8
  %i.aa = icmp eq i64 %.sroa.7.0, %i.l
  br i1 %i.aa, label %bb.p, label %bb.o, !prof !19

bb.o:                                             ; preds = %bb.n
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #41
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.v ; 2 uses
  %i.ac = sub nsw i64 %i.v, %i.t
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !15, !nonnull !15
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull %5, ptr noalias nofree noundef nonnull %i.ad, i64 noundef %i.t) #40
  br i1 %i.ag, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = xor i64 %i.t, -1
  %i.ai = add nsw i64 %i.v, %i.ah                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pss10pss_digest(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.t)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.0.0, i8 0, i64 %i.ai, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.ai
  store i8 1, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !nonnull !15, !align !17, !noundef !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 89
  %i.an = load i8, ptr %i.am, align 1, !range !44, !noundef !15 ; 2 uses
  %i.ao = zext nneg i8 %i.an to i64               ; 2 uses
  call fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring3rsa7padding4mgf1(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.ao, ptr noalias nofree noundef nonnull %.sroa.0.0, i64 noundef %i.v)
  %i.ap = load i8, ptr %.sroa.0.0, align 1, !noundef !15
  %i.aq = and i8 %i.ap, %i.s
  store i8 %i.aq, ptr %.sroa.0.0, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !7054)
  call void @llvm.experimental.noalias.scope.decl(metadata !7055)
  %.not.i34 = icmp eq i8 %.val, %i.an
  br i1 %.not.i34, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit, label %bb.r, !prof !19

bb.r:                                             ; preds = %bb.q
  call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @339) #41, !noalias !7056
  unreachable

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 8 %i.ak, i64 range(i64 0, -9223372036854775808) %i.t, i1 false), !alias.scope !7056, !noalias !7057
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store i8 -68, ptr %i.ar, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.g, %bb.a, %bb.i, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit
  %.sroa.011.0 = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit ], [ true, %bb.i ], [ true, %bb.a ], [ true, %bb.g ], [ true, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.011.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs1NtB4_5PKCS1NtB6_11RsaEncoding7encode_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr nofree noundef nonnull readnone captures(none) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %6) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs112pkcs1_encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3)
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2vpNtB4_3KeyNtB6_12EncryptBlock13encrypt_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7070
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false), !noalias !7071
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !7072, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !7073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7070
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2vpNtB4_3KeyNtB6_12EncryptBlock20encrypt_iv_xor_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2vpNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within.exit:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !7081, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm10vclmulavx2NtB4_3KeyNtB6_11UpdateBlock12update_block(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias nofree noundef dereferenceable(16) %1, ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(16) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noundef nonnull readonly %2, i64 noundef range(i64 1, 9223372036854775793) 16) #36
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm12clmul_x86_64NtB4_3KeyNtB6_11UpdateBlock12update_block(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef dereferenceable(16) %1, ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(16) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly %2, i64 noundef range(i64 1, 9223372036854775793) 16) #36
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm13clmulavxmovbeNtB4_3KeyNtB6_11UpdateBlock12update_block(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias nofree noundef dereferenceable(16) %1, ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(16) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noundef nonnull readonly %2, i64 noundef range(i64 1, 9223372036854775793) 16) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallbackNtB4_3KeyNtB6_11UpdateBlock12update_block(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.0.copyload = load i128, ptr %1, align 1
  %i.a = load i128, ptr %2, align 1, !noundef !15
  %i.b = xor i128 %i.a, %.sroa.01.0.copyload      ; 2 uses
  %i.c = load i64, ptr %0, align 8, !noundef !15  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %i.f = trunc i128 %i.b to i64
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = lshr i128 %i.b, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %i.f) ; 2 uses
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.h) ; 2 uses
  %i.k = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.j, i64 noundef %i.e) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 8 uses
end_hunk_3
