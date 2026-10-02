Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.01?download=true
inline.NumInlined: 1777
inline.NumDeleted: 615
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel:bb.a
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5357)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !5358, !noalias !5351, !nonnull !12, !noundef !12
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !5359
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2bNgeUs5Jlc_6diesel.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs2bNgeUs5Jlc_6diesel.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcShE9drop_slowCs3MibkwviICO_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !5351
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2bNgeUs5Jlc_6diesel.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs2bNgeUs5Jlc_6diesel.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2bNgeUs5Jlc_6diesel.exit.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2bNgeUs5Jlc_6diesel.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2bNgeUs5Jlc_6diesel.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !5349, !nonnull !12, !noundef !12
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #35, !noalias !5349
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs3MibkwviICO_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2bNgeUs5Jlc_6diesel.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTReINtNtCs40k4W9msRzi_5alloc3vec3VecBP_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5378)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5378, !noundef !12 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1d_EENtNtB1k_5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5379)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5380, !noundef !12 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1a_EEECs2bNgeUs5Jlc_6diesel.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !5380, !nonnull !12, !noundef !12 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !5381
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i ] ; 2 uses
  %.sroa.86.016.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.016.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs40k4W9msRzi_5alloc3vec3VecBV_EEE9next_implKb0_ECs2bNgeUs5Jlc_6diesel.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %.val810.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !5382
  %i.m = icmp sgt <16 x i8> %.val810.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs40k4W9msRzi_5alloc3vec3VecBV_EEE9next_implKb0_ECs2bNgeUs5Jlc_6diesel.exit.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs40k4W9msRzi_5alloc3vec3VecBV_EEE9next_implKb0_ECs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.016.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 3 uses
  %i.v = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecReENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.g unwind label %bb.e, !noalias !5380

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs40k4W9msRzi_5alloc3vec3VecBV_EEE9next_implKb0_ECs2bNgeUs5Jlc_6diesel.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !5383, !noalias !5380 ; 2 uses
  %i.y = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecReEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val3.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !5384, !noalias !5380, !nonnull !12, !noundef !12
  %i.aa = shl nuw i64 %.val2.i.i.i.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !5385
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecReEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCs40k4W9msRzi_5alloc3vec3VecBV_EEE9next_implKb0_ECs2bNgeUs5Jlc_6diesel.exit.i.i
  %.val.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !5383, !noalias !5380 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val1.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !5384, !noalias !5380, !nonnull !12, !noundef !12
  %i.ad = shl nuw i64 %.val.i.i.i.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !5386
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecReEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.x

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ae = icmp eq i64 %i.v, 0
  br i1 %i.ae, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1a_EEECs2bNgeUs5Jlc_6diesel.exit.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1a_EEECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTReINtNtCs40k4W9msRzi_5alloc3vec3VecBC_EEECs2bNgeUs5Jlc_6diesel.exit.i.i, %bb.b
  %i.af = mul i64 %i.b, 40
  %i.ag = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = and i64 %i.af, -16                      ; 2 uses
  %i.ai = add i64 %i.ah, 48                       ; 2 uses
  %i.aj = add nsw i64 %i.b, 17
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %i.al = icmp uge i64 %i.ak, %i.ai
  %i.am = icmp ult i64 %i.ak, 9223372036854775793
  tail call void @llvm.assume(i1 %i.al)
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1d_EENtNtB1k_5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1a_EEECs2bNgeUs5Jlc_6diesel.exit.i
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !5378, !nonnull !12, !noundef !12
  %i.ap = sub i64 -48, %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #35, !noalias !5378
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1d_EENtNtB1k_5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1d_EENtNtB1k_5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCs40k4W9msRzi_5alloc3vec3VecB1a_EEECs2bNgeUs5Jlc_6diesel.exit.i, %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #35
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !5389
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !12
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEE15into_allocationCs2bNgeUs5Jlc_6diesel.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 192                        ; 2 uses
  %2 = add i64 %i.g, 192                          ; 2 uses
  %3 = add i64 %i.c, 17
  %i.h = add i64 %3, %2                           ; 3 uses
  %4 = icmp uge i64 %i.h, %2
  tail call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %5)
  %6 = sub i64 -192, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %6
  br label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEE15into_allocationCs2bNgeUs5Jlc_6diesel.exit

_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEE15into_allocationCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.l = getelementptr i8, ptr %i.a, i64 %i.c
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.k, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtCs4ASu1QJhChp_25diesel_table_macro_syntax9TableDeclEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !5392
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !12
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtCs4ASu1QJhChp_25diesel_table_macro_syntax9TableDeclEE15into_allocationCs2bNgeUs5Jlc_6diesel.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 248                        ; 2 uses
  %2 = add i64 %i.g, 248
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %4 = add i64 %i.h, 256                          ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %5 = icmp uge i64 %i.j, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.k = sub i64 -256, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtCs4ASu1QJhChp_25diesel_table_macro_syntax9TableDeclEE15into_allocationCs2bNgeUs5Jlc_6diesel.exit

_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtCs4ASu1QJhChp_25diesel_table_macro_syntax9TableDeclEE15into_allocationCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB1s_INtNtBT_3vec3VecBP_EB2H_EEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !5395
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !12
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB1s_INtNtBT_3vec3VecBP_EB2H_EEE15into_allocationB1y_.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 216                        ; 2 uses
  %2 = add i64 %i.g, 216
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %4 = add i64 %i.h, 224                          ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %5 = icmp uge i64 %i.j, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.k = sub i64 -224, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB1s_INtNtBT_3vec3VecBP_EB2H_EEE15into_allocationB1y_.exit

_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB1s_INtNtBT_3vec3VecBP_EB2H_EEE15into_allocationB1y_.exit: ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !5398
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !12
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EEE15into_allocationB2E_.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 40                         ; 2 uses
  %2 = add i64 %i.g, 40
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %4 = add i64 %i.h, 48                           ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %5 = icmp uge i64 %i.j, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.k = sub i64 -48, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EEE15into_allocationB2E_.exit

_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EEE15into_allocationB2E_.exit: ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsn_NtCs91tTATF2stA_3syn10punctuatedINtB5_8IntoIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5403)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5403, !noalias !5402, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !5403, !noalias !5402, !nonnull !12, !noundef !12 ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !5403, !noalias !5402
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.d, i64 168, i1 false), !noalias !5403
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !5402, !noalias !5403
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsn_NtCs91tTATF2stA_3syn10punctuatedINtB5_8IntoIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 168                 ; 2 uses
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXst_NtCs91tTATF2stA_3syn10punctuatedINtB5_4IterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !15, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !12, !nonnull !12
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs91tTATF2stA_3syn10punctuatedINtB5_4IterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !15, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !12, !nonnull !12 ; 2 uses
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull %i.a)
  %i.g = tail call noundef i64 %i.e(ptr noundef nonnull %i.a)
  store i64 %i.f, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXst_NtCs91tTATF2stA_3syn10punctuatedINtB5_4IterNtCsiD8eKn5yFCp_11proc_macro25IdentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !15, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !12, !nonnull !12
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs91tTATF2stA_3syn10punctuatedINtB5_4IterNtCsiD8eKn5yFCp_11proc_macro25IdentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !15, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !12, !nonnull !12 ; 2 uses
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull %i.a)
  %i.g = tail call noundef i64 %i.e(ptr noundef nonnull %i.a)
  store i64 %i.f, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXst_NtCs91tTATF2stA_3syn10punctuatedINtB5_4IterNtNtB7_2ty4TypeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !15, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !12, !nonnull !12
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs91tTATF2stA_3syn10punctuatedINtB5_4IterNtNtB7_2ty4TypeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !15, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !12, !nonnull !12 ; 2 uses
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull %i.a)
  %i.g = tail call noundef i64 %i.e(ptr noundef nonnull %i.a)
  store i64 %i.f, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.e, ptr %0, align 8
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefE7or_elseNCNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB1R_11PrivateIterBJ_NtNtB1T_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2bNgeUs5Jlc_6diesel.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5409, !noalias !5410, !align !15, !noundef !12
  store ptr null, ptr %i.f, align 8, !alias.scope !5409, !noalias !5410
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefE7or_elseNCNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB1R_11PrivateIterBJ_NtNtB1T_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2bNgeUs5Jlc_6diesel.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefE7or_elseNCNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB1R_11PrivateIterBJ_NtNtB1T_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columnsNtB5_12table_schemaINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2f_5mysql7backend5MysqlE8walk_astBf_
; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_5mysql7backend5MysqlE8walk_astCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsl_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg18information_schema7columns7columnsNtB5_10table_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1X_2pg7backend2PgE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg18information_schema7columns7columnsNtB5_12table_schemaINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1Z_2pg7backend2PgE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columnsNtB5_12table_schemaINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2d_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsC_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columnsNtB5_15constraint_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2g_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsl_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema16key_column_usage7columnsNtB5_15constraint_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2f_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsT_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columnsNtB5_15constraint_typeINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2g_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsl_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columnsNtB5_17constraint_schemaINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2i_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema16key_column_usage7columnsNtB5_17constraint_schemaINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2h_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsl_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema6tables7columnsNtB5_10table_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1Z_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema6tables7columnsNtB5_12table_schemaINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB21_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsl_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema7columns7columnsNtB5_10table_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB20_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema7columns7columnsNtB5_12table_schemaINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB22_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations7columnsNtB5_7versionINtNtNtCsjRvGck33osM_6diesel18expression_methods6eq_all5EqAllNtNtB1W_9migration16MigrationVersionE6eq_allCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators3AndIBO_INtB14_2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEEEIBO_INtB14_7NotLikeNtB1D_10table_nameIB3E_B3X_ReEEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1N_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators4LikeNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columns10table_typeINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1A_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators3AndIBO_INtB14_2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEEEIBO_INtB14_7NotLikeNtB1D_10table_nameIB3E_B3X_ReEEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1N_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators4LikeNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columns10table_typeINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1A_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators3AndIBO_INtB14_2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columns15constraint_typeINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEIBO_IB1s_NtB1D_12table_schemaB3E_EEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1N_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators9IsNotNullNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema16key_column_usage7columns22referenced_column_nameEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1F_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators3AndIBO_INtB14_6EscapeINtB14_7NotLikeNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite13sqlite_master7columns4nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEIB3n_B3G_NtNtCs40k4W9msRzi_5alloc6string6StringEEEIBO_B1F_EEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_6sqlite7backend6SqliteE8walk_astB24_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression11sql_literalINtB5_10SqlLiteralNtNtB9_9sql_types4BoolEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_6sqlite7backend6SqliteE8walk_astCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators3AndIBO_INtNtB6_16array_comparison2InNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema16key_column_usage7columns15constraint_nameINtNtB6_9subselect9SubselectINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB4H_11from_clause10FromClauseNtNtB20_17table_constraints5tableEINtNtB4H_13select_clause12SelectClauseNtNtB6a_7columns15constraint_nameENtNtB4H_15distinct_clause16NoDistinctClauseINtNtB4H_12where_clause11WhereClauseIBO_INtB14_2EqNtB7k_15constraint_typeINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEEEBa2_EEEIBO_IB9c_NtB1W_10table_nameIB9J_Ba2_RNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB4H_13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB26_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema16key_column_usage7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtB4k_6string6StringEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators3AndIBO_INtNtB6_16array_comparison2InNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema16key_column_usage7columns15constraint_nameINtNtB6_9subselect9SubselectINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB4H_11from_clause10FromClauseNtNtB20_17table_constraints5tableEINtNtB4H_13select_clause12SelectClauseNtNtB6a_7columns15constraint_nameENtNtB4H_15distinct_clause16NoDistinctClauseINtNtB4H_12where_clause11WhereClauseIBO_INtB14_2EqNtB7k_15constraint_typeINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEEEBa2_EEEIBO_IB9c_NtB1W_10table_nameIB9J_Ba2_RNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB4H_13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB26_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema16key_column_usage7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtB4k_6string6StringEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtCs2bNgeUs5Jlc_6diesel8database11pg_database7columns7datnameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1u_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtCs2bNgeUs5Jlc_6diesel8database11pg_database7columns13datistemplateINtNtB6_5bound5BoundNtNtB8_9sql_types4BoolbEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1u_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtB8_2pg15metadata_lookup7pg_type7columns7typnameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtB1u_7backend2PgE8walk_astCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtB8_2pg15metadata_lookup12pg_namespace7columns7nspnameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtB1u_7backend2PgE8walk_astCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators7NotLikeNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columns10table_nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1D_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators7NotLikeNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columns10table_nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1D_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg18information_schema7columns7columns10table_nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg18information_schema7columns7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtB3T_6string6StringEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columns15constraint_typeINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columns17constraint_schemaNtNtNtB1s_16key_column_usage7columns17constraint_schemaEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema17table_constraints7columns15constraint_nameNtNtNtB1s_16key_column_usage7columns15constraint_nameEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema6tables7columns10table_nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema6tables7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtB3V_6string6StringEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema7columns7columns10table_nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema7columns7columns12table_schemaINtNtB6_5bound5BoundNtNtB8_9sql_types4TextINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtB3W_6string6StringEEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators6EscapeINtB14_7NotLikeNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite13sqlite_master7columns4nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEIB38_B3r_NtNtCs40k4W9msRzi_5alloc6string6StringEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_6sqlite7backend6SqliteE8walk_astB1P_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators7NotLikeNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite13sqlite_master7columns4nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_6sqlite7backend6SqliteE8walk_astB1B_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_16array_comparison2InNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema16key_column_usage7columns15constraint_nameINtNtB6_9subselect9SubselectINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB4h_11from_clause10FromClauseNtNtB1A_17table_constraints5tableEINtNtB4h_13select_clause12SelectClauseNtNtB5K_7columns15constraint_nameENtNtB4h_15distinct_clause16NoDistinctClauseINtNtB4h_12where_clause11WhereClauseIBO_INtNtB6_9operators2EqNtB6U_15constraint_typeINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEEEB9N_EEEINtB4h_13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1G_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema16key_column_usage7columns10table_nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_16array_comparison2InNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema16key_column_usage7columns15constraint_nameINtNtB6_9subselect9SubselectINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB4h_11from_clause10FromClauseNtNtB1A_17table_constraints5tableEINtNtB4h_13select_clause12SelectClauseNtNtB5K_7columns15constraint_nameENtNtB4h_15distinct_clause16NoDistinctClauseINtNtB4h_12where_clause11WhereClauseIBO_INtNtB6_9operators2EqNtB6U_15constraint_typeINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEEEB9N_EEEINtB4h_13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1G_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema16key_column_usage7columns10table_nameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs91tTATF2stA_3syn6bufferNtB2_11TokenBuffer4new2(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCs91tTATF2stA_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i8 } @_RNvNtCs91tTATF2stA_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs91tTATF2stA_3syn5parse20err_unexpected_token(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsiD8eKn5yFCp_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCs91tTATF2stA_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_6sqlite7backend6SqliteE8walk_astCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #31

; Function Attrs: nonlazybind uwtable
declare void @_RNvXCs4ASu1QJhChp_25diesel_table_macro_syntaxNtB2_9TableDeclNtNtCs91tTATF2stA_3syn5parse5Parse5parse(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schemaNtB4_8JoinableNtNtCs91tTATF2stA_3syn5parse5Parse5parse(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { cold }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { nounwind }
attributes #36 = { noreturn }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn3mac5MacroECs2bNgeUs5Jlc_6diesel, null, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs2bNgeUs5Jlc_6diesel}
!2 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn3mac5MacroECs2bNgeUs5Jlc_6diesel, null}
!3 = distinct !{null}
!4 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path5QSelfEECs2bNgeUs5Jlc_6diesel, null, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs2bNgeUs5Jlc_6diesel, null}
!5 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs2bNgeUs5Jlc_6diesel, null, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECs2bNgeUs5Jlc_6diesel}
!6 = distinct !{null}
!7 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn4expr4ExprEEECs2bNgeUs5Jlc_6diesel, null, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn4expr4ExprEECs2bNgeUs5Jlc_6diesel}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 2, !"RtLibUseGOT", i32 1}
!11 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!12 = !{}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{i64 8}
!16 = !{!"branch_weights", i32 1, i32 1999}
!17 = !{!"branch_weights", i32 0, i32 1}
!18 = !{i32 1, i32 0}
!19 = !{i64 -1, i64 -9223372036854775808}
!20 = !{i32 0, i32 6}
!21 = !{i8 -1, i8 3}
!22 = !{i8 0, i8 3}
!23 = !{!"branch_weights", i32 2002, i32 2000}
!24 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs2bNgeUs5Jlc_6diesel}
!25 = !{i64 0, i64 -9223372036854775806}
!26 = !{i32 -1, i32 2}
!27 = !{i64 0, i64 -9223372036854775808}
!28 = !{i64 1, i64 536870913}
!29 = !{i64 0, i64 23}
!30 = !{i64 0, i64 19}
!31 = !{i64 0, i64 -9223372036854775805}
!32 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn2ty8TypePathECs2bNgeUs5Jlc_6diesel, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs2bNgeUs5Jlc_6diesel}
!33 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn2ty8TypePathECs2bNgeUs5Jlc_6diesel}
!34 = !{i64 0, i64 2}
!35 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs2bNgeUs5Jlc_6diesel}
!36 = !{i64 -1, i64 -9223372036854775798}
!37 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!38 = !{i64 0, i64 -9223372036854775807}
!39 = !{i8 0, i8 2}
!40 = !{i64 0, i64 3}
!41 = !{i64 0, i64 4}
!42 = !{i64 0, i64 5}
!43 = !{!"llvm.loop.peeled.count", i32 1}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs2bNgeUs5Jlc_6diesel"}
!47 = distinct !{!47, !46, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs2bNgeUs5Jlc_6diesel: argument 0"}
!48 = distinct !{!48, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!49 = distinct !{!49, !48, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!50 = distinct !{!50, !46, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs2bNgeUs5Jlc_6diesel: argument 1"}
!51 = distinct !{!51, !48, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!52 = distinct !{!52, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!53 = distinct !{!53, !52, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!54 = distinct !{!54, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1B_5field9SpanMatchEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1w_E0E0Cs2bNgeUs5Jlc_6diesel"}
!55 = distinct !{!55, !54, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1B_5field9SpanMatchEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1w_E0E0Cs2bNgeUs5Jlc_6diesel: argument 0"}
!56 = distinct !{!56, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE6removeCs2bNgeUs5Jlc_6diesel"}
!57 = distinct !{!57, !56, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE6removeCs2bNgeUs5Jlc_6diesel: argument 1"}
!58 = distinct !{!58, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE13erase_no_dropCs2bNgeUs5Jlc_6diesel"}
!59 = distinct !{!59, !58, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE13erase_no_dropCs2bNgeUs5Jlc_6diesel: argument 0"}
!60 = distinct !{!60, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner5erase"}
!61 = distinct !{!61, !60, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!62 = distinct !{!62, !56, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs3bbNWNt4QPc_12tracing_core4span2IdINtNtNtNtCseEiWxPEiqDv_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE6removeCs2bNgeUs5Jlc_6diesel: argument 0"}
!63 = distinct !{!63, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!64 = distinct !{!64, !63, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!65 = distinct !{!65, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!66 = distinct !{!66, !65, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!67 = !{!47}
!68 = !{!49}
!69 = !{!49, !47}
!70 = !{!51, !50}
!71 = !{!53, !49, !51, !47}
!72 = !{!55, !49, !51, !47}
!73 = !{!57}
!74 = !{!59}
!75 = !{!61}
!76 = !{!64, !61, !59, !62, !57}
!77 = !{!66, !61, !59, !62, !57}
!78 = !{!61, !59, !57}
!79 = !{!62}
!80 = !{!61, !59, !62, !57}
!81 = distinct !{!81, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBU_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1O_"}
!82 = distinct !{!82, !81, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBU_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1O_: argument 0"}
!83 = distinct !{!83, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!84 = distinct !{!84, !83, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!85 = distinct !{!85, !81, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBU_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1O_: argument 1"}
!86 = distinct !{!86, !83, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!87 = distinct !{!87, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!88 = distinct !{!88, !87, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!89 = distinct !{!89, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1Q_"}
!90 = distinct !{!90, !89, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1Q_: argument 0"}
!91 = distinct !{!91, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE6removeB1N_"}
!92 = distinct !{!92, !91, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE6removeB1N_: argument 1"}
!93 = distinct !{!93, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE13erase_no_dropB1N_"}
!94 = distinct !{!94, !93, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE13erase_no_dropB1N_: argument 0"}
!95 = distinct !{!95, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner5erase"}
!96 = distinct !{!96, !95, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!97 = distinct !{!97, !91, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE6removeB1N_: argument 0"}
!98 = distinct !{!98, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!99 = distinct !{!99, !98, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!100 = distinct !{!100, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!101 = distinct !{!101, !100, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!102 = !{!82}
!103 = !{!84}
!104 = !{!84, !82}
!105 = !{!86, !85}
!106 = !{!88, !84, !86, !82}
!107 = !{!90, !84, !86, !82}
!108 = !{!92}
!109 = !{!94}
!110 = !{!96}
!111 = !{!99, !96, !94, !97, !92}
!112 = !{!101, !96, !94, !97, !92}
!113 = !{!96, !94, !92}
!114 = !{!97}
!115 = !{!96, !94, !97, !92}
!116 = distinct !{!116, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel"}
!117 = distinct !{!117, !116, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 0"}
!118 = distinct !{!118, !116, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 2"}
!119 = distinct !{!119, !116, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 1"}
!120 = distinct !{!120, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel"}
!121 = distinct !{!121, !120, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 0"}
!122 = distinct !{!122, !120, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 2"}
!123 = distinct !{!123, !120, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 1"}
!124 = distinct !{!124, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0EECs2bNgeUs5Jlc_6diesel"}
!125 = distinct !{!125, !124, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0EECs2bNgeUs5Jlc_6diesel: argument 0"}
!126 = distinct !{!126, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel"}
!127 = distinct !{!127, !126, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel: argument 0"}
!128 = distinct !{!128, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1Q_"}
!129 = distinct !{!129, !128, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1Q_: argument 1"}
!130 = distinct !{!130, !128, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema8JoinableEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1Q_: argument 0"}
!131 = distinct !{!131, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!132 = distinct !{!132, !131, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!133 = !{!117}
!134 = !{!119, !118}
!135 = !{!117, !119, !118}
!136 = !{!121}
!137 = !{!121, !123, !122, !117, !119, !118}
!138 = !{!122, !118}
!139 = !{!121, !117}
!140 = !{!123, !122, !119, !118}
!141 = !{!125}
!142 = !{!127}
!143 = !{!127, !125}
!144 = !{!127, !125, !122, !118}
!145 = !{!129}
!146 = !{!130, !122, !118}
!147 = !{!130, !129, !122, !118}
!148 = !{!132}
!149 = distinct !{!149, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel"}
!150 = distinct !{!150, !149, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 0"}
!151 = distinct !{!151, !149, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 2"}
!152 = distinct !{!152, !149, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 1"}
!153 = distinct !{!153, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel"}
!154 = distinct !{!154, !153, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 0"}
!155 = distinct !{!155, !153, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 2"}
!156 = distinct !{!156, !153, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs2bNgeUs5Jlc_6diesel: argument 1"}
!157 = distinct !{!157, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0EECs2bNgeUs5Jlc_6diesel"}
!158 = distinct !{!158, !157, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0EECs2bNgeUs5Jlc_6diesel: argument 0"}
!159 = distinct !{!159, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel"}
!160 = distinct !{!160, !159, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel: argument 0"}
!161 = distinct !{!161, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1Q_"}
!162 = distinct !{!162, !161, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1Q_: argument 1"}
!163 = distinct !{!163, !161, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0B1Q_: argument 0"}
!164 = distinct !{!164, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!165 = distinct !{!165, !164, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!166 = !{!150}
!167 = !{!152, !151}
!168 = !{!150, !152, !151}
!169 = !{!154}
!170 = !{!154, !156, !155, !150, !152, !151}
end_hunk_1
