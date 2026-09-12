Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtBV_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtBX_8functionINtB2l_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2e_s1_0NCB2e_s2_0NCB2e_s3_0E0ECs607s0NAIaWN_7segment:bb.a
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1198, !noalias !1199, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i64, ptr %2, align 8, !noalias !1200 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1201, !noalias !1200, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1201, !noalias !1200, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !1202, !noundef !14 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %.pre.i)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader26.i
  %i.n = phi i64 [ %i.y, %bb.f ], [ %.pre.i, %.preheader26.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.f ], [ 0, %.preheader26.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %exitcond.not = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1202, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !noalias !1202, !noundef !14 ; 2 uses
  %i.r = lshr i64 %i.q, 6                         ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.k
  br i1 %i.s, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32, !noalias !1202
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1202
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.r
  %i.u = load i64, ptr %i.t, align 8, !noalias !1202, !noundef !14
  %i.v = and i64 %i.q, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.u, %i.w
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.y, ptr %2, align 8, !noalias !1200
  %i.z = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.aa = icmp samesign ult i64 %i.z, %i.b
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1198, !noalias !1199, !nonnull !14, !noundef !14 ; 3 uses
  br label %bb.g

bb.f:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ad = icmp eq i64 %i.z, %i.b
  br i1 %i.ad, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.k ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1198, !noalias !1199
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ae = phi i64 [ %i.y, %.lr.ph.i ], [ %i.av, %bb.k ] ; 4 uses
  %.sroa.7.078.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.7.0.i, %bb.k ] ; 3 uses
  %.sroa.13.077.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.13.1.i, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.7.078.i ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8, !noalias !1203, !noundef !14 ; 2 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.l, align 8, !noalias !1203, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1203, !noundef !14 ; 2 uses
  %i.al = lshr i64 %i.ak, 6                       ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.k
  br i1 %i.am, label %bb.i, label %.invoke

.invoke:                                          ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.ae, %bb.g ], [ %i.al, %bb.h ]
  %i.ao = phi i64 [ %i.ag, %bb.g ], [ %i.k, %bb.h ]
  %i.ap = phi ptr [ @7, %bb.g ], [ @9, %bb.h ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #32
          to label %.cont unwind label %bb.l, !noalias !1200

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.al
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !1203, !noundef !14
  %i.as = and i64 %i.ak, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i.i.i12.i = icmp eq i64 %i.au, 0
  %i.av = add nuw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.av, ptr %2, align 8, !noalias !1200
  br i1 %.not.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !noalias !1200
  %i.ax = add i64 %.sroa.13.077.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.13.1.i = phi i64 [ %i.ax, %bb.j ], [ %.sroa.13.077.i, %bb.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.078.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g

bb.l:                                             ; preds = %.invoke
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = sub nuw nsw i64 %i.b, %.sroa.7.078.i    ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  %i.bb = shl nuw nsw i64 %i.az, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.af, i64 %i.bb, i1 false), !noalias !1204
  %i.bc = add i64 %i.az, %.sroa.13.077.i
  store i64 %i.bc, ptr %i.a, align 8, !alias.scope !1198, !noalias !1205
  resume { ptr, i32 } %i.ay

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.f, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBY_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1233, !noalias !1234, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1233, !noalias !1234, !nonnull !14, !noundef !14 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1235, !noalias !1233, !noundef !14 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1235, !noalias !1233, !nonnull !14, !align !23, !noundef !14 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !1236, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1235, !noalias !1233, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !1236, !noundef !14
  %i.o = zext i32 %i.k to i64
  %i.p = zext i64 %i.n to i128
  %i.q = load ptr, ptr %1, align 8, !alias.scope !1234, !noalias !1233, !nonnull !14, !align !22 ; 2 uses
  %invariant.op = xor i64 %i.o, -6884282663029611473
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader33.i
  %.sroa.0.0.i = phi i64 [ %i.an, %bb.d ], [ 0, %.preheader33.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load ptr, ptr %i.r, align 8, !alias.scope !1237, !noalias !1238, !nonnull !14, !align !1239, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %.val.i.i.i.i.i.i = load i128, ptr %.val11.i, align 16, !noalias !1241, !noundef !14 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.a = trunc i128 %.val.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i = lshr i128 %.val.i.i.i.i.i.i, 96
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i128 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i to i64
  %2 = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.a, i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.a, i64 32)
  %.reass.i.reass.reass = xor i64 %2, %invariant.op
  %sh.diff.i.i.i.i.i.i.i.i = lshr i128 %.val.i.i.i.i.i.i, 32
  %tr.sh.diff.i.i.i.i.i.i.i.i = trunc i128 %sh.diff.i.i.i.i.i.i.i.i to i64
  %i.s = and i64 %tr.sh.diff.i.i.i.i.i.i.i.i, -4294967296
  %i.t = or disjoint i64 %i.s, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.u = xor i64 %i.t, -8161530843051276573
  %i.v = zext i64 %.reass.i.reass.reass to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.w, %i.v                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %.masked.i.i.i.i = and i128 %i.x, 18446744073709551615
  %i.z = xor i128 %i.y, %.masked.i.i.i.i
  %i.aa = mul nuw i128 %i.z, 16952864883938283893 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %.masked.i.i.i = and i128 %i.aa, 18446744073709551615
  %i.ac = xor i128 %i.ab, %.masked.i.i.i
  %i.ad = mul nuw i128 %i.ac, %i.p
  %i.ae = lshr i128 %i.ad, 64
  %i.af = trunc nuw i128 %i.ae to i64             ; 2 uses
  %i.ag = lshr i64 %i.af, 6                       ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.h
  br i1 %i.ah, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1236
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ag
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !1236, !noundef !14
  %i.ak = and i64 %i.af, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i = icmp eq i64 %i.am, 0
  %i.an = add nuw nsw i64 %.sroa.0.0.i, 1         ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ao = icmp samesign ult i64 %i.an, %i.b
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ap = icmp eq i64 %i.an, %i.b
  br i1 %i.ap, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.h, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.h ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1233, !noalias !1234
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.sroa.7.058.i = phi i64 [ %.sroa.7.0.i, %bb.h ], [ %i.an, %.preheader.i ] ; 4 uses
  %.sroa.13.057.i = phi i64 [ %.sroa.13.1.i, %bb.h ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.058.i
  %.val9.i = load ptr, ptr %i.aq, align 8, !alias.scope !1237, !noalias !1238, !nonnull !14, !align !1239, !noundef !14 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !noalias !1242, !noundef !14
  %i.as = load i64, ptr %i.m, align 8, !noalias !1242, !noundef !14
  %i.at = zext i32 %i.ar to i64
  %.val.i.i.i.i.i12.i = load i128, ptr %.val9.i, align 16, !noalias !1243, !noundef !14 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i13.i.a = trunc i128 %.val.i.i.i.i.i12.i to i64 ; 2 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i14.i = lshr i128 %.val.i.i.i.i.i12.i, 96
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i15.i = trunc nuw nsw i128 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i14.i to i64
  %3 = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i13.i.a, i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i13.i.a, i64 32)
  %4 = xor i64 %3, %i.at
  %5 = xor i64 %4, -6884282663029611473
  %sh.diff.i.i.i.i.i.i.i16.i = lshr i128 %.val.i.i.i.i.i12.i, 32
  %tr.sh.diff.i.i.i.i.i.i.i17.i = trunc i128 %sh.diff.i.i.i.i.i.i.i16.i to i64
  %i.au = and i64 %tr.sh.diff.i.i.i.i.i.i.i17.i, -4294967296
  %i.av = or disjoint i64 %i.au, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i15.i
  %i.aw = xor i64 %i.av, -8161530843051276573
  %i.ax = zext i64 %5 to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = lshr i128 %i.az, 64
  %.masked.i.i.i18.i = and i128 %i.az, 18446744073709551615
  %i.bb = xor i128 %i.ba, %.masked.i.i.i18.i
  %i.bc = mul nuw i128 %i.bb, 16952864883938283893 ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %.masked.i.i19.i = and i128 %i.bc, 18446744073709551615
  %i.be = xor i128 %i.bd, %.masked.i.i19.i
  %i.bf = zext i64 %i.as to i128
  %i.bg = mul nuw i128 %i.be, %i.bf
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = trunc nuw i128 %i.bh to i64             ; 2 uses
  %i.bj = lshr i64 %i.bi, 6                       ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.h
  %i.bl = ptrtoint ptr %.val9.i to i64
  br i1 %i.bk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32
          to label %.noexc.i unwind label %bb.i, !noalias !1244

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bj
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !1242, !noundef !14
  %i.bo = and i64 %i.bi, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i20.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i20.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.057.i
  store i64 %i.bl, ptr %i.br, align 8, !noalias !1244
  %i.bs = add i64 %.sroa.13.057.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.13.1.i = phi i64 [ %i.bs, %bb.g ], [ %.sroa.13.057.i, %bb.f ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.058.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.058.i
  %i.bv = sub nuw nsw i64 %i.b, %.sroa.7.058.i    ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.057.i
  %i.bx = shl nuw nsw i64 %i.bv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.bu, i64 %i.bx, i1 false), !noalias !1245
  %i.by = add i64 %i.bv, %.sroa.13.057.i
  store i64 %i.by, ptr %i.a, align 8, !alias.scope !1233, !noalias !1246
  resume { ptr, i32 } %i.bt

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.d, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtBV_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtBX_8functionINtB2l_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2e_s1_0NCB2e_s2_0NCB2e_s3_0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1258, !noalias !1259, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i64, ptr %2, align 8, !noalias !1260 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1261, !noalias !1260, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1261, !noalias !1260, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !1262, !noundef !14 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %.pre.i)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader26.i
  %i.n = phi i64 [ %i.y, %bb.f ], [ %.pre.i, %.preheader26.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.f ], [ 0, %.preheader26.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %exitcond.not = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1262, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !noalias !1262, !noundef !14 ; 2 uses
  %i.r = lshr i64 %i.q, 6                         ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.k
  br i1 %i.s, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32, !noalias !1262
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1262
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.r
  %i.u = load i64, ptr %i.t, align 8, !noalias !1262, !noundef !14
  %i.v = and i64 %i.q, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.u, %i.w
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.y, ptr %2, align 8, !noalias !1260
  %i.z = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.aa = icmp samesign ult i64 %i.z, %i.b
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1258, !noalias !1259, !nonnull !14, !noundef !14 ; 3 uses
  br label %bb.g

bb.f:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ad = icmp eq i64 %i.z, %i.b
  br i1 %i.ad, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.k ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1258, !noalias !1259
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ae = phi i64 [ %i.y, %.lr.ph.i ], [ %i.av, %bb.k ] ; 4 uses
  %.sroa.7.078.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.7.0.i, %bb.k ] ; 3 uses
  %.sroa.13.077.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.13.1.i, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.7.078.i ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8, !noalias !1263, !noundef !14 ; 2 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.l, align 8, !noalias !1263, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1263, !noundef !14 ; 2 uses
  %i.al = lshr i64 %i.ak, 6                       ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.k
  br i1 %i.am, label %bb.i, label %.invoke

.invoke:                                          ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.ae, %bb.g ], [ %i.al, %bb.h ]
  %i.ao = phi i64 [ %i.ag, %bb.g ], [ %i.k, %bb.h ]
  %i.ap = phi ptr [ @7, %bb.g ], [ @9, %bb.h ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #32
          to label %.cont unwind label %bb.l, !noalias !1260

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.al
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !1263, !noundef !14
  %i.as = and i64 %i.ak, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i.i.i12.i = icmp eq i64 %i.au, 0
  %i.av = add nuw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.av, ptr %2, align 8, !noalias !1260
  br i1 %.not.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  %i.ax = load i64, ptr %i.af, align 8, !noalias !1260
  store i64 %i.ax, ptr %i.aw, align 8, !noalias !1260
  %i.ay = add i64 %.sroa.13.077.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.13.1.i = phi i64 [ %i.ay, %bb.j ], [ %.sroa.13.077.i, %bb.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.078.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g

bb.l:                                             ; preds = %.invoke
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = sub nuw nsw i64 %i.b, %.sroa.7.078.i    ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  %i.bc = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.af, i64 %i.bc, i1 false), !noalias !1264
  %i.bd = add i64 %i.ba, %.sroa.13.077.i
  store i64 %i.bd, ptr %i.a, align 8, !alias.scope !1258, !noalias !1265
  resume { ptr, i32 } %i.az

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.f, %bb.a, %._crit_edge.i
end_hunk_0
