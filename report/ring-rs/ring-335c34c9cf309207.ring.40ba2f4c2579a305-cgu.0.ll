Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_:bb.a
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
  %i.m = sub nuw i64 %i.j, %i.l                   ; 3 uses
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
  %i.p = load ptr, ptr %1, align 8, !alias.scope !142, !nonnull !15, !align !17, !noundef !15
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l ; 4 uses
  store ptr %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %i.m, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  store i64 0, ptr %i.q, align 8, !alias.scope !144, !noalias !145
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.d, ptr %i.t, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %i.s, align 8, !alias.scope !143
  %i.u = load ptr, ptr %0, align 8, !noalias !143, !nonnull !15, !noundef !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !143, !noundef !15
  %i.x = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.d)
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i, label %bb.f

._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre5.i = load i64, ptr %i.r, align 8
  br label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i

bb.f:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.aa = load i64, ptr %i.s, align 8, !alias.scope !149, !noundef !15 ; 8 uses
  %.val3.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !149, !noundef !15 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.aa, %.val3.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #41, !noalias !149
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i: ; preds = %bb.f
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !149, !nonnull !15, !align !17, !noundef !15 ; 14 uses
  switch i64 %i.aa, label %bb.j [
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !18

bb.h:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #41, !noalias !143
  unreachable

bb.i:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #41, !noalias !143
  unreachable

bb.j:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 13 uses
  %i.ac = add i64 %i.aa, -2                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i, !prof !16

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !151, !noalias !143, !noundef !15 ; 2 uses
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
  store i64 %i.as, ptr %.val.i.i.i, align 8, !alias.scope !150, !noalias !143
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val34.i.i = load i64, ptr %i.at, align 8, !noalias !143 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.aa ; 15 uses
  %i.av = sub nuw i64 %.val3.i.i.i, %i.aa
  %.not.i.i.i.i43.i.i = icmp ugt i64 %i.d, %i.av
  br i1 %.not.i.i.i.i43.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, label %bb.k, !prof !16

bb.k:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !155, !noalias !156, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
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
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !159, !noalias !160
  %wide.load2 = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !159, !noalias !160
  %i.bm = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bn = xor <2 x i64> %wide.load2, splat (i64 -1)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x i64> %i.bm, ptr %i.bo, align 8, !alias.scope !161, !noalias !162
  store <2 x i64> %i.bn, ptr %i.bp, align 8, !alias.scope !161, !noalias !162
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !133

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
  %.sroa.0.0.val.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, align 8, !alias.scope !159, !noalias !160, !noundef !15
  %i.bs = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.9.0.i.i.i.i.i.i.i
  store i64 %i.bs, ptr %i.bu, align 8, !alias.scope !161, !noalias !162
  %i.bv = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.bw = icmp eq ptr %i.bt, %i.ba
  br i1 %i.bw, label %bb.r, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !134

bb.q:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !163
  unreachable

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.au, align 8, !alias.scope !164, !noalias !156, !noundef !15
  %i.by = or i64 %i.bx, 1
  store i64 %i.by, ptr %i.au, align 8, !alias.scope !164, !noalias !156
  %i.bz = shl nuw nsw i64 %i.d, 6                 ; 3 uses
  %i.ca = sub nuw nsw i64 %i.bz, %.val34.i.i      ; 3 uses
  %i.cb = icmp ult i64 %i.bz, %.val34.i.i
  br i1 %i.cb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp eq i64 %i.bz, %.val34.i.i
  br i1 %i.cc, label %.preheader1.i.i.i.i.i, label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41, !noalias !165
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp samesign ult i64 %i.ca, 64
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41, !noalias !165
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u
  %i.ce = lshr i64 -1, %i.ca
  %i.cf = getelementptr [8 x i8], ptr %i.au, i64 %i.bv
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8     ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !166, !noalias !156, !noundef !15
  %i.ci = and i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.cg, align 8, !alias.scope !166, !noalias !156
  %.not.i.not.i.not.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.d
  br i1 %.not.i.not.i.not.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i, !prof !19

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i = phi i64 [ %i.cj, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.cj = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i, 1 ; 2 uses
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !167
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cj, %i.ca
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader1.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

.preheader1.i.i.i.i.i:                            ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i, %bb.s
  %.not.i.not.i.not.i.i9.i.i.i.i = icmp eq i64 %i.bv, %i.d
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i, !prof !19

.preheader.i.i.i.i.i:                             ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.ck = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, !prof !16

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i
  %.sroa.05.02.i.i.i.i.i = phi i64 [ %i.cm, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i ] ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i, 1
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !169
  %exitcond.not.i12.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i, label %.preheader.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

bb.w:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !23, !noalias !168, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.co) #39
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cp = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cr = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.ct = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cv = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cx = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.w, label %bb.x, !prof !16

bb.x:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  %i.cz = add nuw i64 %i.aa, %i.d
  store i64 %i.cz, ptr %i.s, align 8, !alias.scope !156
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
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !196, !noalias !197, !noundef !15
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !198
  store ptr %0, ptr %i.a, align 8, !noalias !198
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.m, align 8, !noalias !198
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.n, align 8, !noalias !198
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.o, align 8, !noalias !198
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.d, 15
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.d, 6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.m, label %.thread3.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  br label %.thread3.i.i

.thread3.i.i:                                     ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.h, %i.e
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %.thread3.i.i
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !3215
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3211
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.ck

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i: ; preds = %bb.j
  %.sroa.9.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.633.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx17, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3211
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store ptr %i.bg, ptr %i.ac, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.bj, ptr %.sroa.532.0..sroa_idx, align 8
  br i1 %.not.i.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i
  %i.bl = icmp ugt i64 %i.aj, 576460752303423487
  br i1 %i.bl, label %bb.o, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #41
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val8 = load ptr, ptr %i.bm, align 8
  %i.bn = call noundef zeroext i1 %.val8(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull %7, i64 noundef range(i64 0, -9223372036854775808) %8, i64 noundef 0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4) #40, !inline_history !2879
  br i1 %i.bn, label %bb.ck, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread: ; preds = %bb.n
  %i.bo = getelementptr [8 x i8], ptr %i.af, i64 %i.ak
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !15
  %i.br = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 false)
  %i.bs = shl nuw i64 %i.ak, 6
  %i.bt = sub nuw i64 %i.bs, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val8105 = load ptr, ptr %i.bu, align 8
  %i.bv = call noundef zeroext i1 %.val8105(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull %7, i64 noundef range(i64 0, -9223372036854775808) %8, i64 noundef %i.bt, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4) #40, !inline_history !2879
  br i1 %i.bv, label %bb.ck, label %bb.p

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !3217)
  call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3219
  store i64 %8, ptr %i.w, align 8, !noalias !3219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3219
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit.i

bb.p:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3220
  store i64 %8, ptr %i.w, align 8, !noalias !3220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3220
  %i.bw = getelementptr [8 x i8], ptr %i.af, i64 %i.ak
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !3221, !noundef !15
  %i.bz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 false)
  %i.ca = shl nuw i64 %i.ak, 6
  %i.cb = sub nuw i64 %i.ca, %i.bz
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit.i

_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit.i: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i, %bb.p
  %i.cc = phi i64 [ %i.cb, %bb.p ], [ 0, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i ] ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cc, 7
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = zext i1 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.cd, %i.cg            ; 2 uses
  store i64 %i.ch, ptr %i.v, align 8, !noalias !3219
  %i.ci = icmp eq i64 %8, %i.ch
  br i1 %i.ci, label %bb.r, label %bb.q, !prof !19

bb.q:                                             ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit.i
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #41, !noalias !3222
  unreachable

bb.r:                                             ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3219
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ck = add nuw i64 %i.ak, 2                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !3223, !noalias !3222, !noundef !15
  %.not.i.i.i12 = icmp eq i64 %i.cm, %i.ak
  br i1 %.not.i.i.i12, label %bb.s, label %bb.u, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.cn = icmp ult i64 %i.aj, 8
  br i1 %i.cn, label %bb.u, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  %i.co = icmp ugt i64 %i.aj, 257
  br i1 %i.co, label %bb.u, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit.i, !prof !16

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.42.0.ph.i.i = phi i64 [ 0, %bb.r ], [ 1, %bb.s ], [ 2, %bb.t ]
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtB6_3rsa1NEEB6_(i64 noundef %.sroa.42.0.ph.i.i) #39
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit.i: ; preds = %bb.t
  %.val64.i = load ptr, ptr %0, align 8, !alias.scope !3217, !nonnull !15, !noundef !15 ; 17 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val65.i = load i64, ptr %i.cp, align 8, !alias.scope !3217, !noundef !15 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val66.i = load ptr, ptr %i.cq, align 8, !alias.scope !3217, !nonnull !15, !noundef !15 ; 16 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val67.i = load i64, ptr %i.cr, align 8, !alias.scope !3217, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3219
  %i.cs = call fastcc { ptr, i64 } @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE20from_be_bytes_paddedBb_(ptr noalias nofree noundef align 8 dereferenceable(1024) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef range(i64 0, -9223372036854775808) %8, ptr nonnull %i.af, i64 %i.ck), !noalias !3217 ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0      ; 5 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread, label %bb.v

bb.v:                                             ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit.i
  %i.cv = extractvalue { ptr, i64 } %i.cs, 1      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3219
  call void @llvm.experimental.noalias.scope.decl(metadata !3224)
  call void @llvm.experimental.noalias.scope.decl(metadata !3225)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !3226 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.cx, align 8, !alias.scope !3226 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3227)
  %i.cy = icmp ult i64 %.val65.i, 2
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !3228
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cz = add i64 %.val65.i, -2                   ; 9 uses
  %i.da = lshr i64 %i.cz, 1                       ; 39 uses
  %i.db = add nuw i64 %i.da, 2                    ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val64.i, i64 %i.db
  %i.dd = sub nuw nsw i64 %.val65.i, %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %.val64.i, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !3229, !noalias !3230, !noundef !15
  %.not.i.i.i.i.i = icmp eq i64 %i.df, %i.da
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.aa, !prof !19

bb.y:                                             ; preds = %bb.x
  %i.dg = icmp ult i64 %i.cz, 8
  br i1 %i.dg, label %bb.aa, label %bb.z, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.dh = icmp ugt i64 %i.cz, 257
  br i1 %i.dh, label %bb.aa, label %bb.ab, !prof !16

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.sroa.42.0.ph.i.i.i.i = phi i64 [ 0, %bb.x ], [ 1, %bb.y ], [ 2, %bb.z ]
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i.i.i.i) #39
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.di = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3231, !noundef !15 ; 3 uses
  %i.dj = icmp ne i32 %i.di, 0
  call void @llvm.assume(i1 %i.dj)
  %i.dk = and i32 %i.di, 1536
  %not.brmerge.i78.i.i.i.i = icmp eq i32 %i.dk, 1536 ; 4 uses
  %i.dl = and i32 %i.di, 1664
  %.sroa.0.0.i76.i.i.i.i = icmp eq i32 %i.dl, 1664 ; 3 uses
  %.not.i91.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i91.i.i.i.i, label %bb.ac, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i.i.i, !prof !16

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41, !noalias !3232
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i.i.i: ; preds = %bb.ab
  %i.dm = and i64 %i.cz, 510
  %.not70.i.i.i.i = icmp eq i64 %i.cv, %i.dm
  br i1 %.not70.i.i.i.i, label %bb.ad, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

bb.ad:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.val64.i, i64 16 ; 9 uses
  %i.do = lshr i64 %i.cz, 4                       ; 5 uses
  %i.dp = and i64 %i.cz, 14
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3231
  %9 = icmp samesign ugt i64 %i.cz, 79
  br i1 %9, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i.i
  %i.dr = shl nuw nsw i64 %i.do, 5                ; 5 uses
  %i.ds = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.dr ; 22 uses
  %i.dt = mul nuw nsw i64 %i.do, 24               ; 2 uses
  %.not.i93.i.i.i.i = icmp samesign ugt i64 %i.da, %i.dt
  br i1 %.not.i93.i.i.i.i, label %bb.ae, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i, !prof !16

bb.ae:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #41, !noalias !3233
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.da ; 2 uses
  %i.dv = sub nuw nsw i64 %i.dt, %i.da            ; 2 uses
  %.not.i94.i.i.i.i = icmp samesign ugt i64 %i.da, %i.dv
  br i1 %.not.i94.i.i.i.i, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #41, !noalias !3234
  unreachable

bb.ag:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.da ; 11 uses
  %i.dx = sub nuw nsw i64 %i.dv, %i.da
  %.not.i99.i.i.i.i = icmp eq i64 %i.dx, %i.da
  br i1 %.not.i99.i.i.i.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, !prof !19

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i.i: ; preds = %bb.ag
  %i.dy = shl nuw nsw i64 %i.da, 3                ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.dw, ptr nonnull readonly align 8 %i.dn, i64 %i.dy, i1 false), !alias.scope !3235, !noalias !3236
  %i.dz = call fastcc { ptr, i64 } @_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1PEBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull %.val64.i, i64 %i.db, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.ab) #40, !noalias !3237 ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3231
  store ptr %i.du, ptr %i.n, align 8, !noalias !3231
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.da, ptr %i.ec, align 8, !noalias !3231
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ea, ptr %i.ed, align 8, !noalias !3231
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.eb, ptr %i.ee, align 8, !noalias !3231
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.dc, ptr %i.ef, align 8, !noalias !3231
  %i.eg = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %i.dd, ptr %i.eg, align 8, !noalias !3231
  %i.eh = lshr i64 %i.cz, 3                       ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dw, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i1 noundef zeroext %not.brmerge.i78.i.i.i.i) #40, !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3231
  %i.ei = load i64, ptr %i.p, align 8, !range !22, !noalias !3231, !noundef !15
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !noalias !3231, !noundef !15
  br i1 %i.ej, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3231
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

bb.ai:                                            ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !3231, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3231
  call void @llvm.experimental.noalias.scope.decl(metadata !3238)
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dy
  %i.ep = add nsw i64 %i.dy, -8
  %i.eq = lshr exact i64 %i.ep, 3
  %i.er = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.eq) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.er, 4
  br i1 %min.iters.check, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ai
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %i.et = and i64 %i.es, 3                        ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = select i1 %i.eu, i64 4, i64 %i.et
  %n.vec = sub nsw i64 %i.es, %i.ev               ; 3 uses
  %i.ew = shl i64 %n.vec, 3
  %i.ex = getelementptr i8, ptr %i.dn, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ey = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dn, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !3240, !noalias !3241
  %wide.load139 = load <2 x i64>, ptr %i.ez, align 8, !alias.scope !3240, !noalias !3241
  %i.fa = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.fb = xor <2 x i64> %wide.load139, splat (i64 -1)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x i64> %i.fa, ptr %i.fc, align 32, !alias.scope !3242, !noalias !3243
  store <2 x i64> %i.fb, ptr %i.fd, align 16, !alias.scope !3242, !noalias !3243
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !2931

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.body, %bb.ai
  %.sroa.9.0.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.ai ], [ %n.vec, %vector.body ]
  %.sroa.0.02.i.i.i.i.i.i.i.ph = phi ptr [ %i.dn, %bb.ai ], [ %i.ex, %vector.body ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.02.i.i.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ff = icmp eq i64 %i.da, %.sroa.9.0.i.i.i.i.i.i
  br i1 %i.ff, label %bb.aj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i, align 8, !alias.scope !3240, !noalias !3241, !noundef !15
  %i.fg = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.9.0.i.i.i.i.i.i
  store i64 %i.fg, ptr %i.fi, align 8, !alias.scope !3242, !noalias !3243
  %i.fj = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i, 1 ; 2 uses
  %i.fk = icmp eq ptr %i.fh, %i.eo
  br i1 %i.fk, label %bb.ak, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !2932

bb.aj:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !3244
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fl = load i64, ptr %i.ds, align 64, !alias.scope !3245, !noalias !3231, !noundef !15
  %i.fm = or i64 %i.fl, 1
  store i64 %i.fm, ptr %i.ds, align 64, !alias.scope !3245, !noalias !3231
  %i.fn = call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ds, i64 noundef %i.fj, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.dr, i64 noundef 0), !noalias !3232
  %i.fo = extractvalue { i64, i64 } %i.fn, 0
  %.not71.i.i.i.i = icmp eq i64 %i.fo, -1
  %.not.i101.i.i.i.i = icmp eq i64 %i.da, %i.el
  %or.cond.i.i = and i1 %.not.i101.i.i.i.i, %.not71.i.i.i.i
  br i1 %or.cond.i.i, label %bb.al, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, !prof !3246

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.ds, ptr nonnull readonly align 8 %i.en, i64 %i.dy, i1 false), !alias.scope !3247, !noalias !3232
  %i.fp = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.dr, ptr noalias nofree noundef nonnull align 8 %i.ds, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dw, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef 1, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not72.i.i.i.i = icmp eq i64 %i.fp, -1
  br i1 %.not72.i.i.i.i, label %.split.split.split.us.i.preheader.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

.split.split.split.us.i.preheader.i.i.i:          ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3231
  store i64 1, ptr %i.o, align 8, !noalias !3231
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 31, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 5 uses
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  br i1 %.sroa.0.0.i76.i.i.i.i, label %.split.split.split.us.i.us.i.i.i, label %.split.split.split.us.i.i.i.i

.split.split.split.us.i.us.i.i.i:                 ; preds = %.split.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i
  %i.fq = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !range !34, !noalias !3231, !noundef !15
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = load i64, ptr %i.o, align 8, !noalias !3231
  %.sroa.066.0.us91.i.us.i.i.i = select i1 %i.fr, i64 0, i64 %i.fs
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %i.ft = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 noundef %.sroa.066.0.us91.i.us.i.i.i) #40, !noalias !3232 ; 2 uses
  %i.fu = extractvalue { i64, i64 } %i.ft, 0
  %i.fv = extractvalue { i64, i64 } %i.ft, 1      ; 3 uses
  %i.fw = trunc nuw i64 %i.fu to i1
  br i1 %i.fw, label %bb.am, label %.split86.us.i.i.i.i

bb.am:                                            ; preds = %.split.split.split.us.i.us.i.i.i
  %i.fx = icmp eq i64 %i.fv, 0
  br i1 %i.fx, label %.split88.us.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i: ; preds = %bb.am
  %i.fy = add i64 %i.fv, -1
  call void @ring_core_0_17_16000__bn_mulx4x_mont_gather5(ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull readonly align 8 %i.en, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.da, i64 noundef range(i64 0, -1) %i.fy) #36, !noalias !3232
  %i.fz = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.dr, ptr noalias nofree noundef nonnull align 8 %i.ds, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dw, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.fv, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not74.us.i.us.i.i.i = icmp eq i64 %i.fz, -1
  br i1 %.not74.us.i.us.i.i.i, label %.split.split.split.us.i.us.i.i.i, label %.split93.us.i.i.i.i

.split.split.split.us.i.i.i.i:                    ; preds = %.split.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i
  %i.ga = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !range !34, !noalias !3231, !noundef !15
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = load i64, ptr %i.o, align 8, !noalias !3231
  %.sroa.066.0.us91.i.i.i.i = select i1 %i.gb, i64 0, i64 %i.gc
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %i.gd = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 noundef %.sroa.066.0.us91.i.i.i.i) #40, !noalias !3232 ; 2 uses
  %i.ge = extractvalue { i64, i64 } %i.gd, 0
  %i.gf = extractvalue { i64, i64 } %i.gd, 1      ; 3 uses
  %i.gg = trunc nuw i64 %i.ge to i1
  br i1 %i.gg, label %bb.an, label %.split86.us.i.i.i.i

bb.an:                                            ; preds = %.split.split.split.us.i.i.i.i
  %i.gh = icmp eq i64 %i.gf, 0
  br i1 %i.gh, label %.split88.us.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i: ; preds = %bb.an
  %i.gi = add i64 %i.gf, -1
  call void @ring_core_0_17_16000__bn_mul4x_mont_gather5(ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull readonly align 8 %i.en, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.da, i64 noundef range(i64 0, -1) %i.gi) #36, !noalias !3232
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %.not.i12.i.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i12.i.i.i, label %bb.aq, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i, !prof !16

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !3249
  unreachable

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i: ; preds = %bb.ap
  %i.gl = shl nuw i64 %.val1.i.i, 6
  %i.gm = urem i64 %i.gl, 5                       ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  %i.go = sub nuw nsw i64 64, %i.gm
  %i.gp = select i1 %i.gn, i64 59, i64 %i.go      ; 2 uses
  %i.gq = load i64, ptr %.val.i.i, align 8, !alias.scope !3248, !noalias !3250, !noundef !15
  %i.gr = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %i.gq, i64 noundef 0, i64 noundef %i.gp) #36, !noalias !3249
  %i.gs = add nsw i64 %i.gp, -5
  call void @ring_core_0_17_16000__bn_gather5(ptr noundef nonnull align 8 %i.ds, i64 noundef %i.da, ptr noundef nonnull %i.q, i64 noundef %i.gr) #36, !noalias !3251
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i: ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i
  %.sroa.011.0.us.us.us.i.i.i.i = phi i64 [ %.val.i.us.us.us.i.i.i.i, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ]
  %.sroa.0.0.us.us.us.i.i.i.i = phi i64 [ %i.he, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ %i.gs, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.us.us.us.i.i.i.i = phi i64 [ %i.hf, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.sroa.05.0.i.us.us.us.i.i.i.i
  %.val.i.us.us.us.i.i.i.i = load i64, ptr %i.gt, align 8, !alias.scope !3248, !noalias !3252, !noundef !15 ; 4 uses
  %i.gu = icmp ugt i64 %.sroa.0.0.us.us.us.i.i.i.i, 59
  br i1 %i.gu, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %i.gv = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.011.0.us.us.us.i.i.i.i, i64 noundef %.sroa.0.0.us.us.us.i.i.i.i) #36, !noalias !3253 ; 2 uses
  %i.gw = add i64 %.sroa.0.0.us.us.us.i.i.i.i, -5 ; 3 uses
  br i1 %.sroa.0.0.i76.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gv) #36, !noalias !3254
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

bb.as:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gv) #36, !noalias !3254
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i: ; preds = %bb.as, %bb.ar
  %i.gx = icmp ult i64 %i.gw, 64
  br i1 %i.gx, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %.sroa.0.1.us.us.us.i.i.i.i = phi i64 [ %i.gw, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %.sroa.0.0.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i ] ; 2 uses
  br i1 %.sroa.0.0.i76.i.i.i.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i
  %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i = phi i64 [ %i.gz, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i ], [ %.sroa.0.1.us.us.us.i.i.i.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i ] ; 2 uses
  %i.gy = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i) #36, !noalias !3255
  %i.gz = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gy) #36, !noalias !3256
  %i.ha = icmp ult i64 %i.gz, 64
  br i1 %i.ha, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i
  %.sroa.0.2.us.us.us.us.us.us.i.i.i.i = phi i64 [ %i.hc, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i ], [ %.sroa.0.1.us.us.us.i.i.i.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i ] ; 2 uses
  %i.hb = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.i.i.i) #36, !noalias !3255
  %i.hc = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.i.i.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.hb) #36, !noalias !3256
  %i.hd = icmp ult i64 %i.hc, 64
  br i1 %i.hd, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i
  %.lcssa.i.i.us.us.us.i.i.i.i = phi i64 [ %i.gw, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %i.gz, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i ], [ %i.hc, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i ]
  %i.he = add i64 %.lcssa.i.i.us.us.us.i.i.i.i, 64
  %i.hf = add nuw nsw i64 %.sroa.05.0.i.us.us.us.i.i.i.i, 1 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, %.val1.i.i
  br i1 %i.hg, label %.lr.ph.i.i.preheader.i.i.i.i, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull readonly align 64 %i.ds, i64 %i.dy, i1 false), !alias.scope !3257, !noalias !3258
  call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  store i64 1, ptr %i.ab, align 8, !alias.scope !3260, !noalias !3261
  %.idx.i.i.i.i.i = add nsw i64 %i.dy, -8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hh, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !3262, !noalias !3263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3264
  store ptr %i.t, ptr %i.l, align 8, !noalias !3264
  %i.hi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.da, ptr %i.hi, align 8, !noalias !3264
  %i.hj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ab, ptr %i.hj, align 8, !noalias !3264
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.da, ptr %i.hk, align 8, !noalias !3264
  %i.hl = icmp ugt i64 %i.cz, 15
  br i1 %i.hl, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.preheader.i.i.i.i
  call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da) #36, !noalias !3265, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3264
  br label %bb.au

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i
  %i.hm = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3266, !noundef !15 ; 2 uses
  %i.hn = icmp ne i32 %i.hm, 0
  call void @llvm.assume(i1 %i.hn), !noalias !3267
  %i.ho = and i32 %i.hm, 1536
  %brmerge.i.not.i.i.i.i = icmp eq i32 %i.ho, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dn, i64 noundef %i.eh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i1 noundef zeroext %brmerge.i.not.i.i.i.i) #40, !noalias !3268
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8, !range !22, !noalias !3264
  %i.hp = trunc nuw i64 %.pre.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3264
  br i1 %i.hp, label %bb.at, label %bb.au, !prof !16

bb.at:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !range !23, !noalias !3264, !noundef !15
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.hr) #39
  unreachable

.split88.us.i.i.i.i:                              ; preds = %bb.an, %bb.am
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41, !noalias !3232
  unreachable

.split93.us.i.i.i.i:                              ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3231
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i: ; preds = %.split93.us.i.i.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ag, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3231
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38

bb.au:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3231
  call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i92.i = load ptr, ptr %i.hs, align 8, !alias.scope !3272 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i93.i = load i64, ptr %i.ht, align 8, !alias.scope !3272 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  call void @llvm.experimental.noalias.scope.decl(metadata !3274)
  %i.hu = icmp ult i64 %.val67.i, 2
  br i1 %i.hu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !3275
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hv = add i64 %.val67.i, -2                   ; 9 uses
  %i.hw = lshr i64 %i.hv, 1                       ; 32 uses
  %i.hx = add nuw i64 %i.hw, 2                    ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.val66.i, i64 %i.hx
  %i.hz = sub nuw nsw i64 %.val67.i, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %.val66.i, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !3276, !noalias !3277, !noundef !15
  %.not.i.i.i.i94.i = icmp eq i64 %i.ib, %i.hw
  br i1 %.not.i.i.i.i94.i, label %bb.ax, label %bb.az, !prof !19

bb.ax:                                            ; preds = %bb.aw
  %i.ic = icmp ult i64 %i.hv, 8
  br i1 %i.ic, label %bb.az, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %bb.ax
  %i.id = icmp ugt i64 %i.hv, 257
  br i1 %i.id, label %bb.az, label %bb.ba, !prof !16

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.42.0.ph.i.i.i95.i = phi i64 [ 0, %bb.aw ], [ 1, %bb.ax ], [ 2, %bb.ay ]
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1QEEB6_(i64 noundef %.sroa.42.0.ph.i.i.i95.i) #39
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  call void @llvm.experimental.noalias.scope.decl(metadata !3279)
  %i.ie = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3280, !noundef !15 ; 3 uses
  %i.if = icmp ne i32 %i.ie, 0
  call void @llvm.assume(i1 %i.if)
  %i.ig = and i32 %i.ie, 1536
  %not.brmerge.i78.i.i.i98.i = icmp eq i32 %i.ig, 1536 ; 4 uses
  %i.ih = and i32 %i.ie, 1664
  %.sroa.0.0.i76.i.i.i99.i = icmp eq i32 %i.ih, 1664 ; 3 uses
  %.not.i91.i.i.i100.i = icmp eq i64 %i.hw, 0
  br i1 %.not.i91.i.i.i100.i, label %bb.bb, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i, !prof !16

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41, !noalias !3281
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i: ; preds = %bb.ba
  %i.ii = and i64 %i.hv, 510
  %.not70.i.i.i101.i = icmp eq i64 %i.cv, %i.ii
  br i1 %.not70.i.i.i101.i, label %bb.bc, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

bb.bc:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.val66.i, i64 16 ; 9 uses
  %i.ik = lshr i64 %i.hv, 4                       ; 5 uses
  %i.il = and i64 %i.hv, 14
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i: ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3280
  %10 = icmp samesign ugt i64 %i.hv, 79
  br i1 %10, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i
  %i.in = shl nuw nsw i64 %i.ik, 5                ; 5 uses
  %i.io = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.in ; 22 uses
  %i.ip = mul nuw nsw i64 %i.ik, 24               ; 2 uses
  %.not.i93.i.i.i107.i = icmp samesign ugt i64 %i.hw, %i.ip
  br i1 %.not.i93.i.i.i107.i, label %bb.bd, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i, !prof !16

bb.bd:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #41, !noalias !3282
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.hw ; 2 uses
  %i.ir = sub nuw nsw i64 %i.ip, %i.hw            ; 2 uses
  %.not.i94.i.i.i109.i = icmp samesign ugt i64 %i.hw, %i.ir
  br i1 %.not.i94.i.i.i109.i, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #41, !noalias !3283
  unreachable

bb.bf:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.hw ; 11 uses
  %i.it = sub nuw nsw i64 %i.ir, %i.hw
  %.not.i99.i.i.i110.i = icmp eq i64 %i.it, %i.hw
  br i1 %.not.i99.i.i.i110.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, !prof !19

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i: ; preds = %bb.bf
  %i.iu = shl nuw nsw i64 %i.hw, 3                ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.is, ptr nonnull readonly align 8 %i.ij, i64 %i.iu, i1 false), !alias.scope !3284, !noalias !3285
  call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.iv = icmp samesign ugt i64 %i.cv, 128
  br i1 %i.iv, label %bb.bg, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i

bb.bg:                                            ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41, !noalias !3288
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i: ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i
  %i.iw = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.ct, i64 %i.iw, i1 false), !alias.scope !3289, !noalias !3222
  %i.ix = call noundef i32 @ring_core_0_17_16000__bn_from_montgomery_in_place(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, i64 noundef %i.hw, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.cv, ptr noundef nonnull readonly align 8 %i.ij, i64 noundef range(i64 0, 1152921504606846976) %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i) #36, !noalias !3290
  %i.iy = icmp eq i32 %i.ix, 1
  br i1 %i.iy, label %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i, label %bb.bh, !prof !19

bb.bh:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !noalias !3291
  unreachable

_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3280
  store ptr %i.iq, ptr %i.h, align 8, !noalias !3280
  %i.iz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.hw, ptr %i.iz, align 8, !noalias !3280
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %i.ja, align 8, !noalias !3280
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.hw, ptr %i.jb, align 8, !noalias !3280
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.hy, ptr %i.jc, align 8, !noalias !3280
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.hz, ptr %i.jd, align 8, !noalias !3280
  %i.je = lshr i64 %i.hv, 3                       ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.is, i64 noundef %i.je, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i) #40, !noalias !3281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3280
  %i.jf = load i64, ptr %i.j, align 8, !range !22, !noalias !3280, !noundef !15
  %i.jg = trunc nuw i64 %i.jf to i1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !noalias !3280, !noundef !15
  br i1 %i.jg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3280
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

bb.bj:                                            ; preds = %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !3280, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3280
  call void @llvm.experimental.noalias.scope.decl(metadata !3292)
  call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.iu
  %i.jm = add nsw i64 %i.iu, -8
  %i.jn = lshr exact i64 %i.jm, 3
  %i.jo = call i64 @llvm.umin.i64(i64 %i.hw, i64 %i.jn) ; 2 uses
  %min.iters.check142 = icmp samesign ult i64 %i.jo, 4
  br i1 %min.iters.check142, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %bb.bj
  %i.jp = add nuw nsw i64 %i.jo, 1                ; 2 uses
  %i.jq = and i64 %i.jp, 3                        ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  %i.js = select i1 %i.jr, i64 4, i64 %i.jq
  %n.vec144 = sub nsw i64 %i.jp, %i.js            ; 3 uses
  %i.jt = shl i64 %n.vec144, 3
  %i.ju = getelementptr i8, ptr %i.ij, i64 %i.jt
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next150, %vector.body145 ] ; 3 uses
  %i.jv = shl i64 %index146, 3
  %next.gep147 = getelementptr i8, ptr %i.ij, i64 %i.jv ; 2 uses
  %i.jw = getelementptr i8, ptr %next.gep147, i64 16
  %wide.load148 = load <2 x i64>, ptr %next.gep147, align 8, !alias.scope !3294, !noalias !3295
  %wide.load149 = load <2 x i64>, ptr %i.jw, align 8, !alias.scope !3294, !noalias !3295
  %i.jx = xor <2 x i64> %wide.load148, splat (i64 -1)
  %i.jy = xor <2 x i64> %wide.load149, splat (i64 -1)
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %index146 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <2 x i64> %i.jx, ptr %i.jz, align 32, !alias.scope !3296, !noalias !3297
  store <2 x i64> %i.jy, ptr %i.ka, align 16, !alias.scope !3296, !noalias !3297
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.kb, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, label %vector.body145, !llvm.loop !3045

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader: ; preds = %vector.body145, %bb.bj
  %.sroa.9.0.i.i.i.i.i113.i.ph = phi i64 [ 0, %bb.bj ], [ %n.vec144, %vector.body145 ]
  %.sroa.0.02.i.i.i.i.i.i114.i.ph = phi ptr [ %i.ij, %bb.bj ], [ %i.ju, %vector.body145 ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i115.i
  %.sroa.9.0.i.i.i.i.i113.i = phi i64 [ %i.kg, %.lr.ph.i.i.i.i.i.i.i.i.i115.i ], [ %.sroa.9.0.i.i.i.i.i113.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader ] ; 3 uses
  %.sroa.0.02.i.i.i.i.i.i114.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i.i.i.i.i115.i ], [ %.sroa.0.02.i.i.i.i.i.i114.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader ] ; 2 uses
  %i.kc = icmp eq i64 %i.hw, %.sroa.9.0.i.i.i.i.i113.i
  br i1 %i.kc, label %bb.bk, label %.lr.ph.i.i.i.i.i.i.i.i.i115.i

.lr.ph.i.i.i.i.i.i.i.i.i115.i:                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i
  %.sroa.0.0.val.i.i.i.i.i.i116.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i114.i, align 8, !alias.scope !3294, !noalias !3295, !noundef !15
  %i.kd = xor i64 %.sroa.0.0.val.i.i.i.i.i.i116.i, -1
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i114.i, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.sroa.9.0.i.i.i.i.i113.i
  store i64 %i.kd, ptr %i.kf, align 8, !alias.scope !3296, !noalias !3297
  %i.kg = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i113.i, 1 ; 2 uses
  %i.kh = icmp eq ptr %i.ke, %i.jl
  br i1 %i.kh, label %bb.bl, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i, !llvm.loop !3046

bb.bk:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !3298
  unreachable

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.i
  %i.ki = load i64, ptr %i.io, align 64, !alias.scope !3299, !noalias !3280, !noundef !15
  %i.kj = or i64 %i.ki, 1
  store i64 %i.kj, ptr %i.io, align 64, !alias.scope !3299, !noalias !3280
  %i.kk = call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.io, i64 noundef %i.kg, ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.in, i64 noundef 0), !noalias !3281
  %i.kl = extractvalue { i64, i64 } %i.kk, 0
  %.not71.i.i.i117.i = icmp eq i64 %i.kl, -1
  %.not.i102.i.i.i.i = icmp eq i64 %i.hw, %i.ji
  %or.cond.i118.i = and i1 %.not.i102.i.i.i.i, %.not71.i.i.i117.i
  br i1 %or.cond.i118.i, label %bb.bm, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, !prof !3246

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.io, ptr nonnull readonly align 8 %i.jk, i64 %i.iu, i1 false), !alias.scope !3300, !noalias !3281
  %i.km = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.in, ptr noalias nofree noundef nonnull align 8 %i.io, i64 noundef %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.is, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef 1, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not72.i.i.i119.i = icmp eq i64 %i.km, -1
  br i1 %.not72.i.i.i119.i, label %.split.split.us.i.preheader.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

.split.split.us.i.preheader.i.i.i:                ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3280
  store i64 1, ptr %i.i, align 8, !noalias !3280
  %.sroa.2.0..sroa_idx.i.i.i120.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i120.i, align 8, !noalias !3280
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i121.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i121.i, align 8, !noalias !3280
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i122.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 31, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i122.i, align 8, !noalias !3280
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i123.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i123.i, align 8, !noalias !3280
  %.sroa.3.0..sroa_idx.i.i.i124.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 5 uses
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3280
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %.split.split.us.i.us.i.i.i, label %.split.split.us.i.i.i.i

.split.split.us.i.us.i.i.i:                       ; preds = %.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i
  %i.kn = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !range !34, !noalias !3280, !noundef !15
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = load i64, ptr %i.i, align 8, !noalias !3280
  %.sroa.066.0.us.i.us.i.i.i = select i1 %i.ko, i64 0, i64 %i.kp
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3280
  %i.kq = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i120.i, i64 noundef %.sroa.066.0.us.i.us.i.i.i) #40, !noalias !3281 ; 2 uses
  %i.kr = extractvalue { i64, i64 } %i.kq, 0
  %i.ks = extractvalue { i64, i64 } %i.kq, 1      ; 3 uses
  %i.kt = trunc nuw i64 %i.kr to i1
  br i1 %i.kt, label %bb.bn, label %.split86.us.i.i.i125.i

bb.bn:                                            ; preds = %.split.split.us.i.us.i.i.i
  %i.ku = icmp eq i64 %i.ks, 0
  br i1 %i.ku, label %.split88.us.i.i.i147.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i: ; preds = %bb.bn
  %i.kv = add i64 %i.ks, -1
  call void @ring_core_0_17_16000__bn_mulx4x_mont_gather5(ptr noundef nonnull align 8 %i.io, ptr noundef nonnull readonly align 8 %i.jk, ptr noundef nonnull %i.k, ptr noundef nonnull %i.is, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.hw, i64 noundef range(i64 0, -1) %i.kv) #36, !noalias !3281
  %i.kw = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.in, ptr noalias nofree noundef nonnull align 8 %i.io, i64 noundef %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.is, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.ks, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not74.us.i.us.i.i149.i = icmp eq i64 %i.kw, -1
  br i1 %.not74.us.i.us.i.i149.i, label %.split.split.us.i.us.i.i.i, label %.split90.us.i.i.i.i

.split.split.us.i.i.i.i:                          ; preds = %.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i
end_hunk_2
