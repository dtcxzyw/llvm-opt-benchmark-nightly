Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtB8_5value14ValidatedInput18write_into_mont_RRNtNtBe_3rsa1NEBe_:bb.a
  br i1 %i.h, label %bb.ac, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !18 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !18 ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = icmp ult i64 %i.j, %i.l
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.m, %i.g
  br i1 %i.o, label %bb.ab, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i, !prof !35

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #41
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = load ptr, ptr %1, align 8, !alias.scope !43, !nonnull !18, !align !46, !noundef !18
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l ; 4 uses
  store ptr %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %i.m, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  store i64 0, ptr %i.q, align 8, !alias.scope !50, !noalias !53
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.d, ptr %i.t, align 8, !alias.scope !56, !noalias !59
  store i64 2, ptr %i.s, align 8, !alias.scope !47
  %i.u = load ptr, ptr %0, align 8, !noalias !47, !nonnull !18, !noundef !18
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !47, !noundef !18
  %i.x = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.d)
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i, label %bb.f

._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre5.i = load i64, ptr %i.r, align 8
  br label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i

bb.f:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.aa = load i64, ptr %i.s, align 8, !alias.scope !65, !noundef !18 ; 8 uses
  %.val3.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !65, !noundef !18 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.aa, %.val3.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i, !prof !35

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #41, !noalias !65
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i: ; preds = %bb.f
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !65, !nonnull !18, !align !46, !noundef !18 ; 14 uses
  switch i64 %i.aa, label %bb.j [
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !66

bb.h:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #41, !noalias !47
  unreachable

bb.i:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #41, !noalias !47
  unreachable

bb.j:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 13 uses
  %i.ac = add i64 %i.aa, -2                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i, !prof !35

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !70, !noalias !72, !noundef !18 ; 2 uses
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
  store i64 %i.as, ptr %.val.i.i.i, align 8, !alias.scope !67, !noalias !73
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val34.i.i = load i64, ptr %i.at, align 8, !noalias !47 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.aa ; 15 uses
  %i.av = sub nuw i64 %.val3.i.i.i, %i.aa
  %.not.i.i.i.i43.i.i = icmp ugt i64 %i.d, %i.av  ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i43.i.i, ptr null, ptr %i.au
  br i1 %.not.i.i.i.i43.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, label %bb.k, !prof !35

bb.k:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !82, !noalias !85, !noundef !18
  %.not.i.i14.i.i.i = icmp eq i64 %i.ax, %i.ac
  br i1 %.not.i.i14.i.i.i, label %bb.l, label %bb.n, !prof !88

bb.l:                                             ; preds = %bb.k
  %i.ay = icmp samesign ult i64 %i.aa, 6
  br i1 %i.ay, label %bb.n, label %bb.m, !prof !35

bb.m:                                             ; preds = %bb.l
  %i.az = icmp samesign ugt i64 %i.aa, 130
  br i1 %i.az, label %bb.n, label %bb.o, !prof !35

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 0, %bb.k ], [ 1, %bb.l ], [ 2, %bb.m ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtB6_3rsa1NEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i) #39
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, !prof !88

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
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !94, !noalias !95
  %wide.load2 = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !94, !noalias !95
  %i.bm = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bn = xor <2 x i64> %wide.load2, splat (i64 -1)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x i64> %i.bm, ptr %i.bo, align 8, !alias.scope !105, !noalias !108
  store <2 x i64> %i.bn, ptr %i.bp, align 8, !alias.scope !105, !noalias !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !111

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
  %.sroa.0.0.val.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, align 8, !alias.scope !94, !noalias !95, !noundef !18
  %i.bs = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.9.0.i.i.i.i.i.i.i
  store i64 %i.bs, ptr %i.bu, align 8, !alias.scope !105, !noalias !108
  %i.bv = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.bw = icmp eq ptr %i.bt, %i.ba
  br i1 %i.bw, label %bb.r, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !114

bb.q:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !115
  unreachable

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.au, align 8, !alias.scope !116, !noalias !117, !noundef !18
  %i.by = or i64 %i.bx, 1
  store i64 %i.by, ptr %i.au, align 8, !alias.scope !116, !noalias !117
  %i.bz = shl nuw nsw i64 %i.d, 6                 ; 3 uses
  %i.ca = sub i64 %i.bz, %.val34.i.i              ; 3 uses
  %i.cb = icmp ult i64 %i.bz, %.val34.i.i
  br i1 %i.cb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp eq i64 %i.bz, %.val34.i.i
  br i1 %i.cc, label %.preheader1.i.i.i.i.i, label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41, !noalias !118
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i64 %i.ca, 64
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41, !noalias !118
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u
  %i.ce = lshr i64 -1, %i.ca
  %i.cf = getelementptr [8 x i8], ptr %.sroa.0.0.i.i.i.i, i64 %i.bv
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8     ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !119, !noalias !120, !noundef !18
  %i.ci = and i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.cg, align 8, !alias.scope !119, !noalias !120
  %.not.i.not.i.not.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.d
  br i1 %.not.i.not.i.not.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i, !prof !88

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i = phi i64 [ %i.cj, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.cj = add nuw i64 %.sroa.08.05.i.i.i.i.i, 1   ; 2 uses
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !121
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cj, %i.ca
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader1.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

.preheader1.i.i.i.i.i:                            ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i, %bb.s
  %.not.i.not.i.not.i.i9.i.i.i.i = icmp eq i64 %i.bv, %i.d
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i, !prof !88

.preheader.i.i.i.i.i:                             ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !128
  %i.ck = load i64, ptr %i.a, align 8, !range !129, !noalias !122, !noundef !18
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, !prof !35

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i
  %.sroa.05.02.i.i.i.i.i = phi i64 [ %i.cm, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i ] ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i, 1
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !128
  %exitcond.not.i12.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i, label %.preheader.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

bb.w:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !130, !noalias !122, !noundef !18
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.co) #39
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !128
  %i.cp = load i64, ptr %i.a, align 8, !range !129, !noalias !122, !noundef !18
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !128
  %i.cr = load i64, ptr %i.a, align 8, !range !129, !noalias !122, !noundef !18
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !128
  %i.ct = load i64, ptr %i.a, align 8, !range !129, !noalias !122, !noundef !18
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !128
  %i.cv = load i64, ptr %i.a, align 8, !range !129, !noalias !122, !noundef !18
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !128
  %i.cx = load i64, ptr %i.a, align 8, !range !129, !noalias !122, !noundef !18
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.w, label %bb.x, !prof !35

bb.x:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  %i.cz = add nuw i64 %i.aa, %i.d
  store i64 %i.cz, ptr %i.s, align 8, !alias.scope !131
  br label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i: ; preds = %bb.x, %bb.o, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i, %bb.j, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i
  %i.da = phi i64 [ %.val3.i.i.i, %bb.j ], [ %.val3.i.i.i, %bb.o ], [ %.val3.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ %.pre5.i, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ %.val3.i.i.i, %bb.x ]
  %i.db = phi ptr [ %.val.i.i.i, %bb.j ], [ %.val.i.i.i, %bb.o ], [ %.val.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ %.pre.i, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ %.val.i.i.i, %bb.x ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.j ], [ 1, %bb.o ], [ 1, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ 1, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ 0, %bb.x ]
  %i.dc = icmp eq ptr %i.db, %i.q
  %i.dd = icmp eq i64 %i.da, %i.m
  %i.de = and i1 %i.dd, %i.dc
  br i1 %i.de, label %bb.y, label %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit, !prof !88

bb.y:                                             ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i
  %i.df = load i64, ptr %i.s, align 8, !noundef !18
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
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !132, !noalias !135, !noundef !18
  %.not.i.i.i = icmp eq i64 %i.j, %i.e
  br i1 %.not.i.i.i, label %bb.d, label %bb.f, !prof !88

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 8
  br i1 %i.k, label %bb.f, label %bb.e, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.d, 257
  br i1 %i.l, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i.i) #39
          to label %.noexc4 unwind label %bb.o

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !139
  store ptr %0, ptr %i.a, align 8, !noalias !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKey3news0_0B8_:bb.a
  unreachable

_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit: ; preds = %bb.j, %bb.k
  %i.r = tail call noundef zeroext i1 %.val5(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6, i64 noundef %.val7) #40, !inline_history !1054
  br i1 %i.r, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.m

bb.m:                                             ; preds = %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !18, !align !46, !noundef !18 ; 2 uses
  %.val2 = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val3 = load i64, ptr %i.u, align 8, !noundef !18 ; 4 uses
  %.not.i8 = icmp eq i64 %.val3, 0
  br i1 %.not.i8, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load i8, ptr %.val2, align 1, !noundef !18
  %i.w = icmp sgt i8 %i.v, -1                     ; 2 uses
  br i1 %i.w, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9: ; preds = %bb.n
  %i.x = add i64 %.val3, 1                        ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10, !prof !1051

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10: ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9, %bb.n
  %.sroa.0.2.ph.i.i11 = phi i64 [ %i.x, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9 ], [ %.val3, %bb.n ] ; 5 uses
  %i.z = icmp ugt i64 %.sroa.0.2.ph.i.i11, 65535
  br i1 %i.z, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.o

bb.o:                                             ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10
  %i.aa = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef 2) #40, !inline_history !1052
  br i1 %i.aa, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.07.0.extract.trunc.i.i12 = trunc i64 %.sroa.0.2.ph.i.i11 to i8
  %.sroa.48.0.extract.shift10.i.i13 = lshr i64 %.sroa.0.2.ph.i.i11, 8
  %.sroa.48.0.extract.trunc.i.i14 = trunc nuw i64 %.sroa.48.0.extract.shift10.i.i13 to i8
  %i.ab = icmp samesign ugt i64 %.sroa.0.2.ph.i.i11, 255
  br i1 %i.ab, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = icmp samesign ugt i64 %.sroa.0.2.ph.i.i11, 127
  br i1 %i.ac, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ad = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef -126) #40, !inline_history !1052
  br i1 %i.ad, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ae = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef -127) #40, !inline_history !1052
  br i1 %i.ae, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.q
  %i.af = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef %.sroa.07.0.extract.trunc.i.i12) #40, !inline_history !1052
  br i1 %i.af, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ag = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef %.sroa.48.0.extract.trunc.i.i14) #40, !inline_history !1052
  br i1 %i.ag, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.t

bb.v:                                             ; preds = %bb.t
  br i1 %i.w, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef 0) #40, !inline_history !1053
  br i1 %i.ah, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ai = tail call noundef zeroext i1 %.val5(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3) #40, !inline_history !1054
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16

bb.y:                                             ; preds = %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #41
  unreachable

_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16: ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i, %bb.h, %bb.i, %bb.f, %bb.g, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i, %bb.c, %bb.k, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9, %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit
  %.sroa.0.0 = phi i1 [ true, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9 ], [ true, %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit ], [ true, %bb.w ], [ true, %bb.o ], [ true, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10 ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.t ], [ %i.ai, %bb.x ], [ true, %bb.k ], [ true, %bb.c ], [ true, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.i ], [ true, %bb.h ], [ true, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef nonnull captures(address, read_provenance) dereferenceable(128) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 127 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !noundef !18 ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !noundef !18 ; 3 uses
  %i.h = add i64 %i.g, %i.e                       ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.k, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.j, label %bb.k, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.k = shl nuw i64 %i.h, 3
  %i.l = load ptr, ptr %1, align 8, !noundef !18  ; 3 uses
  %i.m = icmp eq ptr %i.l, null                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !18, !align !46
  %i.o = select i1 %i.m, ptr %.val, ptr %i.l      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 90
  %i.q = load i8, ptr %i.p, align 2, !range !1055, !noundef !18 ; 3 uses
  %i.r = zext i8 %i.q to i64                      ; 4 uses
  %i.s = icmp ult i8 %i.d, %i.q
  br i1 %i.s, label %bb.e, label %bb.d, !prof !88

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring6digest12finish_errorNtB2_11FinishError27pending_not_a_partial_block(i64 noundef %i.e) #39
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.v, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.e ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.y = xor i64 %i.e, -1
  %i.z = add nsw i64 %i.r, %i.y                   ; 4 uses
  store i8 -128, ptr %i.w, align 1, !alias.scope !1056, !noalias !1059
  %i.aa = icmp eq i8 %i.q, 64
  %..i = select i1 %i.aa, i64 8, i64 16
  %i.ab = icmp ult i64 %i.z, %..i
  br i1 %i.ab, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.z, i1 false), !alias.scope !1056, !noalias !1059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %.sroa.0.0.idx.i.i = select i1 %i.m, i64 8, i64 0
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i.i
  %i.ac = load ptr, ptr %.sroa.0.0.i.i, align 8, !alias.scope !1062, !noalias !1065, !nonnull !18, !align !46, !noundef !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !1068, !nonnull !18, !noundef !18
  call void %i.ae(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(128) %2, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !1059, !inline_history !1069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1061
  %.pre = load ptr, ptr %1, align 8, !alias.scope !1070, !noalias !1073
  br label %_RNCNvMNtCs5yxAJGbRKSL_4ring6digestNtB4_12BlockContext10try_finishs_0B6_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ult i64 %i.z, 8
  br i1 %i.af, label %bb.g, label %_RNCNvMNtCs5yxAJGbRKSL_4ring6digestNtB4_12BlockContext10try_finishs_0B6_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #41, !noalias !1059
  unreachable

_RNCNvMNtCs5yxAJGbRKSL_4ring6digestNtB4_12BlockContext10try_finishs_0B6_.exit: ; preds = %.thread, %bb.f
  %i.ag = phi ptr [ %.pre, %.thread ], [ %i.l, %bb.f ]
  %.sroa.07.0.i33 = phi ptr [ %2, %.thread ], [ %i.x, %bb.f ] ; 2 uses
  %.sroa.6.0.i32 = phi i64 [ %i.r, %.thread ], [ %i.z, %bb.f ]
  %i.ah = add nsw i64 %.sroa.6.0.i32, -8          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i33, i64 %i.ah
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.07.0.i33, i8 0, i64 %i.ah, i1 false), !alias.scope !1056, !noalias !1059
  %i.aj = call i64 @llvm.bswap.i64(i64 %i.k)
  store i64 %i.aj, ptr %i.ai, align 1, !alias.scope !1076, !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1061
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.ak = icmp eq ptr %i.ag, null
  %.sroa.0.0.idx.i18.i = select i1 %i.ak, i64 8, i64 0
  %.sroa.0.0.i19.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i18.i
  %i.al = load ptr, ptr %.sroa.0.0.i19.i, align 8, !alias.scope !1070, !noalias !1073, !nonnull !18, !align !46, !noundef !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1082, !nonnull !18, !noundef !18
  call void %i.an(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(128) %2, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !1059, !inline_history !1069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1061
  store i8 0, ptr %i.c, align 1
  %.sroa.020.0.copyload = load ptr, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8 ; 3 uses
  %i.ao = icmp eq ptr %.sroa.020.0.copyload, null
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCNvMNtCs5yxAJGbRKSL_4ring6digestNtB4_12BlockContext10try_finishs_0B6_.exit
  %.sroa.14.sroa.0.0.extract.trunc = trunc i64 %.sroa.14.0.copyload to i32
  %.sroa.14.sroa.5.0.extract.shift = lshr i64 %.sroa.14.0.copyload, 32
  %.sroa.14.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.14.sroa.5.0.extract.shift to i32
  %.sroa.11.sroa.0.0.extract.trunc = trunc i64 %.sroa.11.0.copyload to i32
  %.sroa.11.sroa.5.0.extract.shift = lshr i64 %.sroa.11.0.copyload, 32
  %.sroa.11.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.11.sroa.5.0.extract.shift to i32
  %.sroa.8.sroa.0.0.extract.trunc = trunc i64 %.sroa.8.0.copyload to i32
  %.sroa.8.sroa.5.0.extract.shift = lshr i64 %.sroa.8.0.copyload, 32
  %.sroa.8.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.8.sroa.5.0.extract.shift to i32
  %.sroa.5.sroa.0.0.extract.trunc = trunc i64 %.sroa.5.0.copyload to i32
  %.sroa.5.sroa.5.0.extract.shift = lshr i64 %.sroa.5.0.copyload, 32
  %.sroa.5.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.sroa.5.0.extract.shift to i32
  %i.ap = call noundef i32 @llvm.bswap.i32(i32 %.sroa.5.sroa.0.0.extract.trunc)
  %i.aq = call noundef i32 @llvm.bswap.i32(i32 %.sroa.5.sroa.5.0.extract.trunc)
  %i.ar = call noundef i32 @llvm.bswap.i32(i32 %.sroa.8.sroa.0.0.extract.trunc)
  %i.as = call noundef i32 @llvm.bswap.i32(i32 %.sroa.8.sroa.5.0.extract.trunc)
  %i.at = call noundef i32 @llvm.bswap.i32(i32 %.sroa.11.sroa.0.0.extract.trunc)
  %i.au = call noundef i32 @llvm.bswap.i32(i32 %.sroa.11.sroa.5.0.extract.trunc)
  %i.av = call noundef i32 @llvm.bswap.i32(i32 %.sroa.14.sroa.0.0.extract.trunc)
  %i.aw = call noundef i32 @llvm.bswap.i32(i32 %.sroa.14.sroa.5.0.extract.trunc)
  %i.ax = zext i32 %i.aq to i64
  %i.ay = zext i32 %i.as to i64
  %i.az = zext i32 %i.au to i64
  %i.ba = zext i32 %i.aw to i64
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring6digest8dynstateNtB4_8DynState13format_output.exit

bb.i:                                             ; preds = %_RNCNvMNtCs5yxAJGbRKSL_4ring6digestNtB4_12BlockContext10try_finishs_0B6_.exit
  %.sroa.1924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.1924.0.copyload = load i64, ptr %.sroa.1924.0..sroa_idx, align 8
  %.sroa.1823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.1823.0.copyload = load i64, ptr %.sroa.1823.0..sroa_idx, align 8
  %.sroa.1722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.1722.0.copyload = load i64, ptr %.sroa.1722.0..sroa_idx, align 8
  %.sroa.421.0.copyload = load i64, ptr %i.n, align 8
  %i.bb = call noundef i64 @llvm.bswap.i64(i64 %.sroa.421.0.copyload) ; 2 uses
  %i.bc = call noundef i64 @llvm.bswap.i64(i64 %.sroa.5.0.copyload) ; 2 uses
  %i.bd = call noundef i64 @llvm.bswap.i64(i64 %.sroa.8.0.copyload) ; 2 uses
  %i.be = call noundef i64 @llvm.bswap.i64(i64 %.sroa.11.0.copyload) ; 2 uses
  %i.bf = call noundef i64 @llvm.bswap.i64(i64 %.sroa.14.0.copyload)
  %i.bg = call noundef i64 @llvm.bswap.i64(i64 %.sroa.1722.0.copyload)
  %i.bh = call noundef i64 @llvm.bswap.i64(i64 %.sroa.1823.0.copyload)
  %i.bi = call noundef i64 @llvm.bswap.i64(i64 %.sroa.1924.0.copyload)
  %.sroa.016.sroa.0.0.extract.trunc = trunc i64 %i.bb to i32
  %.sroa.016.sroa.5.0.extract.shift = lshr i64 %i.bb, 32
  %.sroa.617.sroa.0.0.extract.trunc = trunc i64 %i.bc to i32
  %.sroa.617.sroa.5.0.extract.shift = lshr i64 %i.bc, 32
  %.sroa.918.sroa.0.0.extract.trunc = trunc i64 %i.bd to i32
  %.sroa.918.sroa.5.0.extract.shift = lshr i64 %i.bd, 32
  %.sroa.1219.sroa.0.0.extract.trunc = trunc i64 %i.be to i32
  %.sroa.1219.sroa.5.0.extract.shift = lshr i64 %i.be, 32
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring6digest8dynstateNtB4_8DynState13format_output.exit

_RNvMs_NtNtCs5yxAJGbRKSL_4ring6digest8dynstateNtB4_8DynState13format_output.exit: ; preds = %bb.h, %bb.i
  %.sroa.016.sroa.5.0 = phi i64 [ %i.ax, %bb.h ], [ %.sroa.016.sroa.5.0.extract.shift, %bb.i ]
  %.sroa.016.sroa.0.0 = phi i32 [ %i.ap, %bb.h ], [ %.sroa.016.sroa.0.0.extract.trunc, %bb.i ]
  %.sroa.617.sroa.5.0 = phi i64 [ %i.ay, %bb.h ], [ %.sroa.617.sroa.5.0.extract.shift, %bb.i ]
  %.sroa.617.sroa.0.0 = phi i32 [ %i.ar, %bb.h ], [ %.sroa.617.sroa.0.0.extract.trunc, %bb.i ]
  %.sroa.918.sroa.5.0 = phi i64 [ %i.az, %bb.h ], [ %.sroa.918.sroa.5.0.extract.shift, %bb.i ]
  %.sroa.918.sroa.0.0 = phi i32 [ %i.at, %bb.h ], [ %.sroa.918.sroa.0.0.extract.trunc, %bb.i ]
  %.sroa.1219.sroa.5.0 = phi i64 [ %i.ba, %bb.h ], [ %.sroa.1219.sroa.5.0.extract.shift, %bb.i ]
  %.sroa.1219.sroa.0.0 = phi i32 [ %i.av, %bb.h ], [ %.sroa.1219.sroa.0.0.extract.trunc, %bb.i ]
  %.sroa.15.0 = phi i64 [ 0, %bb.h ], [ %i.bf, %bb.i ]
  %.sroa.17.0 = phi i64 [ 0, %bb.h ], [ %i.bg, %bb.i ]
  %.sroa.18.0 = phi i64 [ 0, %bb.h ], [ %i.bh, %bb.i ]
  %.sroa.19.0 = phi i64 [ 0, %bb.h ], [ %i.bi, %bb.i ]
  %.sroa.016.sroa.5.0.insert.shift = shl nuw i64 %.sroa.016.sroa.5.0, 32
  %.sroa.016.sroa.0.0.insert.ext = zext i32 %.sroa.016.sroa.0.0 to i64
  %.sroa.016.sroa.0.0.insert.insert = or disjoint i64 %.sroa.016.sroa.5.0.insert.shift, %.sroa.016.sroa.0.0.insert.ext
  %.sroa.617.sroa.5.0.insert.shift = shl nuw i64 %.sroa.617.sroa.5.0, 32
  %.sroa.617.sroa.0.0.insert.ext = zext i32 %.sroa.617.sroa.0.0 to i64
  %.sroa.617.sroa.0.0.insert.insert = or disjoint i64 %.sroa.617.sroa.5.0.insert.shift, %.sroa.617.sroa.0.0.insert.ext
  %.sroa.918.sroa.5.0.insert.shift = shl nuw i64 %.sroa.918.sroa.5.0, 32
  %.sroa.918.sroa.0.0.insert.ext = zext i32 %.sroa.918.sroa.0.0 to i64
  %.sroa.918.sroa.0.0.insert.insert = or disjoint i64 %.sroa.918.sroa.5.0.insert.shift, %.sroa.918.sroa.0.0.insert.ext
  %.sroa.1219.sroa.5.0.insert.shift = shl nuw i64 %.sroa.1219.sroa.5.0, 32
  %.sroa.1219.sroa.0.0.insert.ext = zext i32 %.sroa.1219.sroa.0.0 to i64
  %.sroa.1219.sroa.0.0.insert.insert = or disjoint i64 %.sroa.1219.sroa.5.0.insert.shift, %.sroa.1219.sroa.0.0.insert.ext
  store ptr %i.o, ptr %0, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.016.sroa.0.0.insert.insert, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.617.sroa.0.0.insert.insert, ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx, align 8
  %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.918.sroa.0.0.insert.insert, ptr %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx, align 8
  %.sroa.412.sroa.6.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.1219.sroa.0.0.insert.insert, ptr %.sroa.412.sroa.6.0..sroa.412.0..sroa_idx.sroa_idx, align 8
  %.sroa.412.sroa.7.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.15.0, ptr %.sroa.412.sroa.7.0..sroa.412.0..sroa_idx.sroa_idx, align 8
  %.sroa.412.sroa.8.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.17.0, ptr %.sroa.412.sroa.8.0..sroa.412.0..sroa_idx.sroa_idx, align 8
  %.sroa.412.sroa.9.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.18.0, ptr %.sroa.412.sroa.9.0..sroa.412.0..sroa_idx.sroa_idx, align 8
  %.sroa.412.sroa.10.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.19.0, ptr %.sroa.412.sroa.10.0..sroa.412.0..sroa_idx.sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.k, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring6digest8dynstateNtB4_8DynState13format_output.exit
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a
  %.sroa.66.0 = phi i64 [ %i.g, %bb.a ], [ %i.h, %bb.b ]
  %i.bj = tail call fastcc i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring6digest12finish_errorNtB2_11FinishError14input_too_long(i64 noundef %.sroa.66.0) #39
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bj, ptr %i.bl, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs5yxAJGbRKSL_4ring8testutilNtB2_8TestCase12consume_bool(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCs5yxAJGbRKSL_4ring8testutilNtB2_8TestCase14consume_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !18 ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 4, label %bb.b
    i64 5, label %bb.c
  ], !prof !1083

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.e, align 1
  %i.i = icmp ne i32 %i.h, 1702195828
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.e, align 1
  %i.m = xor i32 %i.l, 1936482662
  %i.n = getelementptr i8, ptr %i.e, i64 4
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, 101
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.d, !prof !88

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8, !captures !1084
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5yxAJGbRKSL_4ring, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @79, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #42
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.val8 = load i64, ptr %i.c, align 8            ; 2 uses
  %i.x = icmp eq i64 %.val8, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %.val8, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit

bb.g:                                             ; preds = %bb.d
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.y = icmp eq i64 %.val, 0
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit10, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit10: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yxAJGbRKSL_4ring8testutilNtB2_8TestCase13consume_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs5yxAJGbRKSL_4ring8testutilNtB2_8TestCase22consume_optional_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.e = load i64, ptr %i.b, align 8, !range !325, !noundef !18
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5yxAJGbRKSL_4ring, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @82, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtCs5yxAJGbRKSL_4ring8testutilNtB2_8TestCase13consume_usize(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs5yxAJGbRKSL_4ring8testutilNtB2_8TestCase14consume_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !18, !noundef !18 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !18 ; 2 uses
  switch i64 %i.f, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.d, align 1, !alias.scope !1085, !noalias !1088, !noundef !18 ; 2 uses
  switch i8 %i.g, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %i.d, align 1, !alias.scope !1085, !noalias !1088
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.h = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.g, %bb.b ]
  %cond.i = icmp eq i8 %i.h, 43                   ; 2 uses
  %i.i = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.f, %i.i          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.j, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %.loopexit10, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.f
  %.not52.i = icmp eq i64 %i.l, 0
  br i1 %.not52.i, label %.loopexit10, label %.preheader56.i.preheader
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_:bb.a
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ff = icmp slt i64 %.sroa.514.0.copyload.i, 0
  br i1 %i.ff, label %bb.ce, label %bb.bk, !prof !35

bb.bk:                                            ; preds = %bb.bj
  %i.fg = shl nuw i64 %.sroa.514.0.copyload.i, 1
  %i.fh = add i64 %i.fg, 2                        ; 9 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.ce, label %bb.bl, !prof !35

bb.bl:                                            ; preds = %bb.bk
  %i.fj = shl i64 %i.fh, 3                        ; 6 uses
  %i.fk = icmp ugt i64 %i.fh, 2305843009213693951
  %.not.i.i.i.i266 = icmp ugt i64 %i.fj, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.fk, %.not.i.i.i.i266
  br i1 %or.cond.i.i.i.i, label %bb.bm, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267, !prof !407

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267: ; preds = %bb.bl
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1242
  %i.fl = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fj, i64 noundef range(i64 1, 9) 8) #36, !noalias !1242 ; 15 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.bm, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i

bb.bm:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267, %bb.bl
  %.sroa.4.0.ph.i.i.i270 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267 ], [ 0, %bb.bl ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i270, i64 %i.fj) #42
          to label %.noexc271 unwind label %bb.be

.noexc271:                                        ; preds = %bb.bm
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1249
  store ptr %i.fl, ptr %i.f, align 8, !noalias !1249
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 %i.fh, ptr %i.fn, align 8, !noalias !1249
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  store i64 0, ptr %i.fl, align 8, !alias.scope !1256, !noalias !1259
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store i64 %.sroa.514.0.copyload.i, ptr %i.fp, align 8, !alias.scope !1262, !noalias !1265
  store i64 2, ptr %i.fo, align 8, !alias.scope !1253, !noalias !1249
  %i.fq = invoke fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.br, i64 noundef %.sroa.514.0.copyload.i)
          to label %.noexc5.i.i unwind label %bb.cd, !noalias !1268

.noexc5.i.i:                                      ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i
  %i.fr = extractvalue { i64, i64 } %i.fq, 0
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc5.i.i
  %i.ft = load i64, ptr %i.fo, align 8, !alias.scope !1269, !noalias !1249, !noundef !18 ; 8 uses
  %.val3.i.i.i.i.i.i = load i64, ptr %i.fn, align 8, !alias.scope !1269, !noalias !1249, !noundef !18 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ft, %.val3.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.invoke45.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i, !prof !35

.invoke45.i.i:                                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bo, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i, %bb.bn
  %i.fu = phi ptr [ @46, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i ], [ @166, %bb.bn ], [ @47, %bb.bo ], [ @64, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #41
          to label %.cont46.i.i unwind label %bb.cd, !noalias !1268

.cont46.i.i:                                      ; preds = %.invoke45.i.i
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i: ; preds = %bb.bn
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1269, !noalias !1249, !nonnull !18, !align !46, !noundef !18 ; 11 uses
  switch i64 %i.ft, label %bb.bp [
    i64 0, label %.invoke45.i.i
    i64 1, label %bb.bo
  ], !prof !66

bb.bo:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i
  br label %.invoke45.i.i

bb.bp:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16 ; 13 uses
  %i.fw = add i64 %i.ft, -2                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %.not.i.i.i.i.i.i268 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i268, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i, !prof !35

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i: ; preds = %bb.bp
  %i.fx = load i64, ptr %i.fv, align 8, !alias.scope !1275, !noalias !1277, !noundef !18 ; 2 uses
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
  store i64 %i.gm, ptr %.val.i.i.i.i.i.i, align 8, !alias.scope !1272, !noalias !1278
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.ft ; 14 uses
  %i.go = sub nuw i64 %.val3.i.i.i.i.i.i, %i.ft
  %.not.i.i.i.i43.i.i.i.i.i = icmp ugt i64 %.sroa.514.0.copyload.i, %i.go
  br i1 %.not.i.i.i.i43.i.i.i.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %bb.bq, !prof !35

bb.bq:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !1284, !noalias !1287, !noundef !18
  %.not.i.i14.i.i.i.i.i.i = icmp eq i64 %i.gq, %i.fw
  br i1 %.not.i.i14.i.i.i.i.i.i, label %bb.br, label %bb.bt, !prof !88

bb.br:                                            ; preds = %bb.bq
  %i.gr = icmp samesign ult i64 %i.ft, 6
  br i1 %i.gr, label %bb.bt, label %bb.bs, !prof !35

bb.bs:                                            ; preds = %bb.br
  %i.gs = icmp samesign ugt i64 %i.ft, 130
  br i1 %i.gs, label %bb.bt, label %bb.bu, !prof !35

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bq ], [ 1, %bb.br ], [ 2, %bb.bs ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i) #39
          to label %.noexc9.i.i unwind label %bb.cd

.noexc9.i.i:                                      ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fw, %.sroa.514.0.copyload.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, !prof !88

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
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !1297, !noalias !1298
  %wide.load517 = load <2 x i64>, ptr %i.he, align 8, !alias.scope !1297, !noalias !1298
  %i.hf = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.hg = xor <2 x i64> %wide.load517, splat (i64 -1)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <2 x i64> %i.hf, ptr %i.hh, align 8, !alias.scope !1308, !noalias !1311
  store <2 x i64> %i.hg, ptr %i.hi, align 8, !alias.scope !1308, !noalias !1311
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !1314

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
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1297, !noalias !1298, !noundef !18
  %i.hl = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  store i64 %i.hl, ptr %i.hn, align 8, !alias.scope !1308, !noalias !1311
  %i.ho = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.hp = icmp eq ptr %i.hm, %i.gt
  br i1 %i.hp, label %bb.bw, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1315

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = load i64, ptr %i.gn, align 8, !alias.scope !1316, !noalias !1317, !noundef !18
  %i.hr = or i64 %i.hq, 1
  store i64 %i.hr, ptr %i.gn, align 8, !alias.scope !1316, !noalias !1317
  %i.hs = shl nuw nsw i64 %.sroa.514.0.copyload.i, 6 ; 3 uses
  %i.ht = sub i64 %i.hs, %.sroa.615.0.copyload.i  ; 2 uses
  %i.hu = icmp ult i64 %i.hs, %.sroa.615.0.copyload.i
  br i1 %i.hu, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hv = icmp eq i64 %i.hs, %.sroa.615.0.copyload.i
  br i1 %i.hv, label %.preheader1.i.i.i.i.i.i.i.i, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41
          to label %.noexc11.i.i unwind label %bb.cd, !noalias !1268

.noexc11.i.i:                                     ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.hw = icmp ult i64 %i.ht, 64
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41
          to label %.noexc12.i.i unwind label %bb.cd, !noalias !1268

.noexc12.i.i:                                     ; preds = %bb.ca
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  %.not.i.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.514.0.copyload.i
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, !prof !88

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.hx = add nuw i64 %.sroa.08.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull readonly align 8 %i.fv, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i) #36, !noalias !1318
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hx, %i.ht
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.preheader1.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
          to label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i unwind label %bb.cd

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i
  unreachable

.preheader1.i.i.i.i.i.i.i.i:                      ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, %bb.bx
  %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.514.0.copyload.i
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, !prof !88

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.hy = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, !prof !35

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  %.sroa.05.02.i.i.i.i.i.i.i.i = phi i64 [ %i.ia, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ia = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i.i.i.i, 1
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull readonly align 8 %i.fv, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i) #36, !noalias !1325
  %exitcond.not.i12.i.i.i.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !range !130, !noalias !1319, !noundef !18
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.ic) #39
          to label %.noexc15.i.i unwind label %bb.cd

.noexc15.i.i:                                     ; preds = %bb.cb
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.id = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.ie = trunc nuw i64 %i.id to i1
  br i1 %i.ie, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.if = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.ih = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.ij = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.ik = trunc nuw i64 %i.ij to i1
  br i1 %i.ik, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.il = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.im = trunc nuw i64 %i.il to i1
  br i1 %i.im, label %bb.cb, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i, !prof !35

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i: ; preds = %bb.bu, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i, %bb.bp, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1249
  br label %.invoke.i.i

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  %i.in = icmp ne ptr %.val.i.i.i.i.i.i, %i.fl
  %i.io = icmp ne i64 %.val3.i.i.i.i.i.i, %i.fh
  %.not27.i.i = or i1 %i.io, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1249
  br i1 %.not27.i.i, label %.invoke.i.i, label %bb.cc, !prof !1103

.invoke.i.i:                                      ; preds = %bb.cc, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i
  %i.ip = phi ptr [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i ], [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i ], [ @10, %bb.cc ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ip) #42
          to label %.cont.i.i unwind label %bb.cd, !noalias !1268

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cc:                                            ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i
  %i.iq = add nuw i64 %i.ft, %.sroa.514.0.copyload.i
  %.not.i.i269 = icmp eq i64 %i.iq, %i.fh
  br i1 %.not.i.i269, label %bb.ch, label %.invoke.i.i, !prof !88

bb.cd:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, %bb.cb, %bb.bt, %.invoke.i.i, %bb.ca, %bb.by, %.invoke45.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %i.fj, i64 noundef 8) #36, !noalias !1268
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
  %i.iu = load i64, ptr %i.fp, align 8, !alias.scope !1326, !noalias !1329, !noundef !18
  %.not.i.i273 = icmp eq i64 %i.iu, %.sroa.514.0.copyload.i
  br i1 %.not.i.i273, label %bb.ci, label %bb.ck, !prof !88

bb.ci:                                            ; preds = %bb.ch
  %i.iv = icmp ult i64 %.sroa.514.0.copyload.i, 4
  br i1 %i.iv, label %bb.ck, label %bb.cj, !prof !35

bb.cj:                                            ; preds = %bb.ci
  %i.iw = icmp ugt i64 %.sroa.514.0.copyload.i, 128
  br i1 %i.iw, label %bb.ck, label %bb.cl, !prof !35

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %.sroa.42.0.ph.i274 = phi i64 [ 0, %bb.ch ], [ 1, %bb.ci ], [ 2, %bb.cj ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i274) #39
          to label %.noexc278 unwind label %bb.cg

.noexc278:                                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.ix = icmp slt i64 %.sroa.514.0.copyload.i256, 0
  br i1 %i.ix, label %bb.dg, label %bb.cm, !prof !35

bb.cm:                                            ; preds = %bb.cl
  %i.iy = shl nuw i64 %.sroa.514.0.copyload.i256, 1
  %i.iz = add i64 %i.iy, 2                        ; 7 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.dg, label %bb.cn, !prof !35

bb.cn:                                            ; preds = %bb.cm
  %i.jb = shl i64 %i.iz, 3                        ; 8 uses
  %i.jc = icmp ugt i64 %i.iz, 2305843009213693951
  %.not.i.i.i.i279 = icmp ugt i64 %i.jb, 9223372036854775800
  %or.cond.i.i.i.i280 = or i1 %i.jc, %.not.i.i.i.i279
  br i1 %or.cond.i.i.i.i280, label %bb.co, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281, !prof !407

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281: ; preds = %bb.cn
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1331
  %i.jd = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jb, i64 noundef range(i64 1, 9) 8) #36, !noalias !1331 ; 12 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.co, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282

bb.co:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281, %bb.cn
  %.sroa.4.0.ph.i.i.i327 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281 ], [ 0, %bb.cn ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i327, i64 %i.jb) #42
          to label %.noexc328 unwind label %bb.cg

.noexc328:                                        ; preds = %bb.co
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1338
  store ptr %i.jd, ptr %i.d, align 8, !noalias !1338
  %i.jf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.iz, ptr %i.jf, align 8, !noalias !1338
  %i.jg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  store i64 0, ptr %i.jd, align 8, !alias.scope !1345, !noalias !1348
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 %.sroa.514.0.copyload.i256, ptr %i.jh, align 8, !alias.scope !1351, !noalias !1354
  store i64 2, ptr %i.jg, align 8, !alias.scope !1342, !noalias !1338
  %i.ji = invoke fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bw, i64 noundef %.sroa.514.0.copyload.i256)
          to label %.noexc5.i.i283 unwind label %bb.df, !noalias !1357

.noexc5.i.i283:                                   ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282
  %i.jj = extractvalue { i64, i64 } %i.ji, 0
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %bb.cp

bb.cp:                                            ; preds = %.noexc5.i.i283
  %i.jl = load i64, ptr %i.jg, align 8, !alias.scope !1358, !noalias !1338, !noundef !18 ; 8 uses
  %.val3.i.i.i.i.i.i284 = load i64, ptr %i.jf, align 8, !alias.scope !1358, !noalias !1338, !noundef !18 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i285 = icmp ugt i64 %i.jl, %.val3.i.i.i.i.i.i284
  br i1 %.not.i.i.i.i.i.i.i.i.i285, label %.invoke45.i.i288, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286, !prof !35

.invoke45.i.i288:                                 ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306, %bb.cq, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286, %bb.cp
  %i.jm = phi ptr [ @46, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286 ], [ @166, %bb.cp ], [ @47, %bb.cq ], [ @64, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jm) #41
          to label %.cont46.i.i289 unwind label %bb.df, !noalias !1357

.cont46.i.i289:                                   ; preds = %.invoke45.i.i288
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286: ; preds = %bb.cp
  %.val.i.i.i.i.i.i287 = load ptr, ptr %i.d, align 8, !alias.scope !1358, !noalias !1338, !nonnull !18, !align !46, !noundef !18 ; 11 uses
  switch i64 %i.jl, label %bb.cr [
    i64 0, label %.invoke45.i.i288
    i64 1, label %bb.cq
  ], !prof !66

bb.cq:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286
  br label %.invoke45.i.i288

bb.cr:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286
  %i.jn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i287, i64 16 ; 13 uses
  %i.jo = add i64 %i.jl, -2                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %.not.i.i.i.i.i.i290 = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i.i.i290, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291, !prof !35

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291: ; preds = %bb.cr
  %i.jp = load i64, ptr %i.jn, align 8, !alias.scope !1364, !noalias !1366, !noundef !18 ; 2 uses
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
  store i64 %i.ke, ptr %.val.i.i.i.i.i.i287, align 8, !alias.scope !1361, !noalias !1367
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i287, i64 %i.jl ; 14 uses
  %i.kg = sub nuw i64 %.val3.i.i.i.i.i.i284, %i.jl
  %.not.i.i.i.i43.i.i.i.i.i295 = icmp ugt i64 %.sroa.514.0.copyload.i256, %i.kg
  br i1 %.not.i.i.i.i43.i.i.i.i.i295, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %bb.cs, !prof !35

bb.cs:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i287, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !alias.scope !1373, !noalias !1376, !noundef !18
  %.not.i.i14.i.i.i.i.i.i297 = icmp eq i64 %i.ki, %i.jo
  br i1 %.not.i.i14.i.i.i.i.i.i297, label %bb.ct, label %bb.cv, !prof !88

bb.ct:                                            ; preds = %bb.cs
  %i.kj = icmp samesign ult i64 %i.jl, 6
  br i1 %i.kj, label %bb.cv, label %bb.cu, !prof !35

bb.cu:                                            ; preds = %bb.ct
  %i.kk = icmp samesign ugt i64 %i.jl, 130
  br i1 %i.kk, label %bb.cv, label %bb.cw, !prof !35

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %.sroa.4.0.ph.i.i.i.i.i.i.i298 = phi i64 [ 0, %bb.cs ], [ 1, %bb.ct ], [ 2, %bb.cu ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1QEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i298) #39
          to label %.noexc9.i.i301 unwind label %bb.df

.noexc9.i.i301:                                   ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %.not.i.i.i.i.i.i.i.i.i.i302 = icmp eq i64 %i.jo, %.sroa.514.0.copyload.i256
  br i1 %.not.i.i.i.i.i.i.i.i.i.i302, label %bb.cx, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, !prof !88

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
  %wide.load526 = load <2 x i64>, ptr %next.gep525, align 8, !alias.scope !1386, !noalias !1387
  %wide.load527 = load <2 x i64>, ptr %i.kw, align 8, !alias.scope !1386, !noalias !1387
  %i.kx = xor <2 x i64> %wide.load526, splat (i64 -1)
  %i.ky = xor <2 x i64> %wide.load527, splat (i64 -1)
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %index524 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store <2 x i64> %i.kx, ptr %i.kz, align 8, !alias.scope !1397, !noalias !1400
  store <2 x i64> %i.ky, ptr %i.la, align 8, !alias.scope !1397, !noalias !1400
  %index.next528 = add nuw i64 %index524, 4       ; 2 uses
  %i.lb = icmp eq i64 %index.next528, %n.vec522
  br i1 %i.lb, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, label %vector.body523, !llvm.loop !1403

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
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i310 = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308, align 8, !alias.scope !1386, !noalias !1387, !noundef !18
  %i.ld = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i310, -1
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308, i64 8 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  store i64 %i.ld, ptr %i.lf, align 8, !alias.scope !1397, !noalias !1400
  %i.lg = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307, 1 ; 3 uses
  %i.lh = icmp eq ptr %i.le, %i.kl
  br i1 %i.lh, label %bb.cy, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306, !llvm.loop !1404

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309
  %i.li = load i64, ptr %i.kf, align 8, !alias.scope !1405, !noalias !1406, !noundef !18
  %i.lj = or i64 %i.li, 1
  store i64 %i.lj, ptr %i.kf, align 8, !alias.scope !1405, !noalias !1406
  %i.lk = shl nuw nsw i64 %.sroa.514.0.copyload.i256, 6 ; 3 uses
  %i.ll = sub nsw i64 %i.lk, %.sroa.615.0.copyload.i ; 2 uses
  %i.lm = icmp ult i64 %i.lk, %.sroa.615.0.copyload.i
  br i1 %i.lm, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ln = icmp eq i64 %i.lk, %.sroa.615.0.copyload.i
  br i1 %i.ln, label %.preheader1.i.i.i.i.i.i.i.i318, label %bb.db

bb.da:                                            ; preds = %bb.cy
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41
          to label %.noexc11.i.i326 unwind label %bb.df, !noalias !1357

.noexc11.i.i326:                                  ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.lo = icmp ult i64 %i.ll, 64
  br i1 %i.lo, label %.lr.ph.i.i.i.i.i.i.i.i312, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41
          to label %.noexc12.i.i311 unwind label %bb.df, !noalias !1357

.noexc12.i.i311:                                  ; preds = %bb.dc
  unreachable

.lr.ph.i.i.i.i.i.i.i.i312:                        ; preds = %bb.db
  %.not.i.not.i.not.i.i.i.i.i.i.i.i.i313 = icmp eq i64 %i.lg, %.sroa.514.0.copyload.i256
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i.i313, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, !prof !88

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i312, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i.i.i.i316 = phi i64 [ %i.lp, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i312 ]
  %i.lp = add nuw i64 %.sroa.08.05.i.i.i.i.i.i.i.i316, 1 ; 2 uses
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.kf, ptr noundef nonnull align 8 %i.kf, ptr noundef nonnull readonly align 8 %i.jn, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i256) #36, !noalias !1407
  %exitcond.not.i.i.i.i.i.i.i.i317 = icmp eq i64 %i.lp, %i.ll
  br i1 %exitcond.not.i.i.i.i.i.i.i.i317, label %.preheader1.i.i.i.i.i.i.i.i318, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314: ; preds = %.preheader1.i.i.i.i.i.i.i.i318, %.lr.ph.i.i.i.i.i.i.i.i312
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
          to label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i315 unwind label %bb.df

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i315: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314
  unreachable

.preheader1.i.i.i.i.i.i.i.i318:                   ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, %bb.cz
  %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i319 = icmp eq i64 %i.lg, %.sroa.514.0.copyload.i256
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i319, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, !prof !88

.preheader.i.i.i.i.i.i.i.i322:                    ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1408
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1414
  %i.lq = load i64, ptr %i.c, align 8, !range !129, !noalias !1408, !noundef !18
  %i.lr = trunc nuw i64 %i.lq to i1
  br i1 %i.lr, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, !prof !35

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i318, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  %.sroa.05.02.i.i.i.i.i.i.i.i320 = phi i64 [ %i.ls, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i318 ] ; 2 uses
  %i.ls = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i.i.i.i320, 1
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.kf, ptr noundef nonnull align 8 %i.kf, ptr noundef nonnull readonly align 8 %i.jn, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i256) #36, !noalias !1414
  %exitcond.not.i12.i.i.i.i.i.i.i321 = icmp eq i64 %.sroa.05.02.i.i.i.i.i.i.i.i320, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  br i1 %exitcond.not.i12.i.i.i.i.i.i.i321, label %.preheader.i.i.i.i.i.i.i.i322, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i

bb.dd:                                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i322
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !range !130, !noalias !1408, !noundef !18
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.lu) #39
          to label %.noexc15.i.i325 unwind label %bb.df

.noexc15.i.i325:                                  ; preds = %bb.dd
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1408
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1414
  %i.lv = load i64, ptr %i.c, align 8, !range !129, !noalias !1408, !noundef !18
  %i.lw = trunc nuw i64 %i.lv to i1
  br i1 %i.lw, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1408
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1414
  %i.lx = load i64, ptr %i.c, align 8, !range !129, !noalias !1408, !noundef !18
  %i.ly = trunc nuw i64 %i.lx to i1
  br i1 %i.ly, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1408
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1414
  %i.lz = load i64, ptr %i.c, align 8, !range !129, !noalias !1408, !noundef !18
  %i.ma = trunc nuw i64 %i.lz to i1
  br i1 %i.ma, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1408
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1414
  %i.mb = load i64, ptr %i.c, align 8, !range !129, !noalias !1408, !noundef !18
  %i.mc = trunc nuw i64 %i.mb to i1
  br i1 %i.mc, label %bb.dd, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1408
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kf, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jn, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1414
  %i.md = load i64, ptr %i.c, align 8, !range !129, !noalias !1408, !noundef !18
  %i.me = trunc nuw i64 %i.md to i1
  br i1 %i.me, label %bb.dd, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i, !prof !35

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i: ; preds = %bb.cw, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291, %bb.cr, %.noexc5.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1338
  br label %.invoke.i.i303

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1408
  %i.mf = icmp ne ptr %.val.i.i.i.i.i.i287, %i.jd
  %i.mg = icmp ne i64 %.val3.i.i.i.i.i.i284, %i.iz
  %.not27.i.i323 = or i1 %i.mg, %i.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1338
  br i1 %.not27.i.i323, label %.invoke.i.i303, label %bb.de, !prof !1103

.invoke.i.i303:                                   ; preds = %bb.de, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i
  %i.mh = phi ptr [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i ], [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i ], [ @10, %bb.de ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mh) #42
          to label %.cont.i.i304 unwind label %bb.df, !noalias !1357

.cont.i.i304:                                     ; preds = %.invoke.i.i303
  unreachable

bb.de:                                            ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i
  %i.mi = add nuw i64 %i.jl, %.sroa.514.0.copyload.i256
  %.not.i.i324 = icmp eq i64 %i.mi, %i.iz
  br i1 %.not.i.i324, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i, label %.invoke.i.i303, !prof !88

bb.df:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, %bb.dd, %bb.cv, %.invoke.i.i303, %bb.dc, %bb.da, %.invoke45.i.i288, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jd, i64 noundef %i.jb, i64 noundef 8) #36, !noalias !1357
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.ml = icmp samesign ult i64 %i.be, %.sroa.514.0.copyload.i256
  br i1 %i.ml, label %select.unfold455, label %bb.di, !prof !35

bb.di:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.w, ptr nonnull readonly align 8 %i.mm, i64 %.idx.i.i.i.i.i.i.i.i.i.i305, i1 false), !alias.scope !1421, !noalias !1423
  %i.mn = icmp eq i64 %i.be, %.sroa.514.0.copyload.i256
  br i1 %i.mn, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.di
  %i.mo = sub nuw nsw i64 %i.be, %.sroa.514.0.copyload.i256
  %.idx.i.i.i = shl nuw nsw i64 %i.mo, 3
  %i.mp = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.514.0.copyload.i256
  call void @llvm.memset.p0.i64(ptr align 8 %i.mp, i8 0, i64 %.idx.i.i.i, i1 false), !alias.scope !1425, !noalias !1428
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.di
  %i.mq = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.mr = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.w, ptr noundef nonnull readonly align 8 %i.mq, i64 noundef range(i64 0, 1152921504606846976) %i.be) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1431
  store i64 %i.mr, ptr %i.b, align 8, !noalias !1431
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.b) #36, !srcloc !1151
  %i.ms = load i64, ptr %i.b, align 8, !noalias !1431, !noundef !18
  %.not.i.i.i = icmp eq i64 %i.ms, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1431
  br i1 %.not.i.i.i, label %select.unfold455, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.mt = icmp samesign ult i64 %i.be, %.sroa.514.0.copyload.i
  br i1 %i.mt, label %select.unfold455, label %bb.dj, !prof !35

bb.dj:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.v, ptr nonnull readonly align 8 %i.mu, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !alias.scope !1443, !noalias !1445
  %i.mv = icmp eq i64 %i.be, %.sroa.514.0.copyload.i
  br i1 %i.mv, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i340, label %.lr.ph.i.i.preheader.i.i338

.lr.ph.i.i.preheader.i.i338:                      ; preds = %bb.dj
end_hunk_2
