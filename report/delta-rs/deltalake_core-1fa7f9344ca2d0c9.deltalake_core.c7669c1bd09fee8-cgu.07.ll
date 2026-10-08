Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.07?download=true
inline.NumInlined: 9996
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast7DeclareINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2C_s_0ECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %exitcond.not.i.i46, label %._crit_edge49, label %.lr.ph48

bb.b:                                             ; preds = %.lr.ph48
  %i.m = add nuw nsw i64 %.sroa.01.0.i.i47, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge49, label %.lr.ph48

._crit_edge49:                                    ; preds = %bb.b, %.lr.ph
  %i.n = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.h, i64 range(i64 0, 144115188075855872) %i.l)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph48:                                         ; preds = %.lr.ph, %bb.b
  %.sroa.01.0.i.i47 = phi i64 [ %i.m, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %.sroa.01.0.i.i47
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %.sroa.01.0.i.i47
  %i.q = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p), !inline_history !6082 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph48, %._crit_edge49
  %.sroa.0.0.i.i = phi i8 [ %i.n, %._crit_edge49 ], [ %i.q, %.lr.ph48 ] ; 2 uses
  %i.s = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.s, label %bb.c, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.c:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !91, !alias.scope !6086, !noalias !6087, !noundef !34
  %.not.i = icmp eq i8 %i.u, 116
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !91, !alias.scope !6087, !noalias !6086, !noundef !34
  %.not20.i = icmp eq i8 %i.w, 116                ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not20.i, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  br i1 %.not20.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.x = load i64, ptr %i.c, align 8, !range !92, !alias.scope !6086, !noalias !6087, !noundef !34 ; 3 uses
  %.not22.i = icmp eq i64 %i.x, 5
  %i.y = load i64, ptr %i.d, align 8, !range !92, !alias.scope !6087, !noalias !6086, !noundef !34 ; 3 uses
  %.not23.i = icmp eq i64 %i.y, 5                 ; 2 uses
  br i1 %.not22.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.z = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v) #56, !inline_history !6082 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.f
  br i1 %.not23.i, label %.thread, label %bb.k

bb.i:                                             ; preds = %bb.f
  br i1 %.not23.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %_RNvXsaG_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.ac = load i8, ptr %i.ab, align 4, !range !40, !alias.scope !6086, !noalias !6087, !noundef !34 ; 3 uses
  %.not25.i = icmp eq i8 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.ae = load i8, ptr %i.ad, align 4, !range !40, !alias.scope !6087, !noalias !6086, !noundef !34 ; 3 uses
  %.not26.i = icmp eq i8 %i.ae, 3                 ; 2 uses
  br i1 %.not25.i, label %bb.o, label %bb.n

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6089)
  %.not.i.i = icmp eq i64 %i.x, %i.y
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !6090, !noalias !6091, !nonnull !34, !noundef !34
  %i.ai = load ptr, ptr %i.af, align 8, !alias.scope !6091, !noalias !6090, !nonnull !34, !noundef !34
  %i.aj = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ai) #56, !noalias !6092
  br label %_RNvXsaG_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %i.x, i64 %i.y)
  br label %_RNvXsaG_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

_RNvXsaG_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i44.i = phi i8 [ %i.ak, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.al = icmp eq i8 %.sroa.0.0.i44.i, 0
  br i1 %i.al, label %bb.j, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.j
  br i1 %.not26.i, label %.thread, label %bb.q

bb.o:                                             ; preds = %bb.j
  br i1 %.not26.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.an = load i8, ptr %i.am, align 8, !range !43, !alias.scope !6086, !noalias !6087, !noundef !34 ; 2 uses
  %.not28.i = icmp eq i8 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ap = load i8, ptr %i.ao, align 8, !range !43, !alias.scope !6087, !noalias !6086, !noundef !34 ; 2 uses
  %.not29.i = icmp eq i8 %i.ap, 2                 ; 2 uses
  br i1 %.not28.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.aq = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.ac, i8 %i.ae)
  %i.ar = icmp eq i8 %i.ac, %i.ae
  br i1 %i.ar, label %bb.p, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.r:                                             ; preds = %bb.p
  br i1 %.not29.i, label %.thread, label %bb.u

bb.s:                                             ; preds = %bb.p
  br i1 %.not29.i, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  %i.at = load i8, ptr %i.as, align 1, !range !43, !alias.scope !6086, !noalias !6087, !noundef !34 ; 2 uses
  %.not31.i = icmp eq i8 %i.at, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 105
  %i.av = load i8, ptr %i.au, align 1, !range !43, !alias.scope !6087, !noalias !6086, !noundef !34 ; 2 uses
  %.not32.i = icmp eq i8 %i.av, 2                 ; 2 uses
  br i1 %.not31.i, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.aw = sub nsw i8 %i.an, %i.ap                 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.v:                                             ; preds = %bb.t
  br i1 %.not32.i, label %.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %.not32.i, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 106
  %i.az = load i8, ptr %i.ay, align 2, !range !43, !alias.scope !6086, !noalias !6087, !noundef !34 ; 2 uses
  %.not34.i = icmp eq i8 %i.az, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 106
  %i.bb = load i8, ptr %i.ba, align 2, !range !43, !alias.scope !6087, !noalias !6086, !noundef !34 ; 2 uses
  %.not35.i = icmp eq i8 %i.bb, 2                 ; 2 uses
  br i1 %.not34.i, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.bc = sub nsw i8 %i.at, %i.av                 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.x, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.z:                                             ; preds = %bb.x
  br i1 %.not35.i, label %.thread, label %bb.ac

bb.aa:                                            ; preds = %bb.x
  br i1 %.not35.i, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 107
  %i.bf = load i8, ptr %i.be, align 1, !range !43, !alias.scope !6086, !noalias !6087, !noundef !34 ; 2 uses
  %.not37.i = icmp eq i8 %i.bf, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 107
  %i.bh = load i8, ptr %i.bg, align 1, !range !43, !alias.scope !6087, !noalias !6086, !noundef !34 ; 2 uses
  %.not38.i = icmp eq i8 %i.bh, 2                 ; 2 uses
  br i1 %.not37.i, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.bi = sub nsw i8 %i.az, %i.bb                 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.ab, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not38.i, label %.thread, label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  br i1 %.not38.i, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !6086, !noalias !6087, !align !41, !noundef !34 ; 2 uses
  %.not40.i = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !6087, !noalias !6086, !align !41, !noundef !34 ; 2 uses
  %.not41.i = icmp eq ptr %i.bn, null             ; 2 uses
  br i1 %.not40.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.bo = sub nsw i8 %i.bf, %i.bh                 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.af, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.ah:                                            ; preds = %bb.af
  br i1 %.not41.i, label %.thread, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  br i1 %.not41.i, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread21, label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.bq = tail call fastcc noundef i8 @_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.bn) #56, !inline_history !6082
  br label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.g, %_RNvXsaG_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %bb.q, %bb.u, %bb.y, %bb.ac, %bb.ag, %bb.aj
  %.sroa.0.0.i16 = phi i8 [ %i.aq, %bb.q ], [ %i.bc, %bb.y ], [ %i.z, %bb.g ], [ %i.aw, %bb.u ], [ %i.bq, %bb.aj ], [ %.sroa.0.0.i.i, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.bi, %bb.ac ], [ %i.bo, %bb.ag ], [ %.sroa.0.0.i44.i, %_RNvXsaG_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i ] ; 2 uses
  %i.br = icmp eq i8 %.sroa.0.0.i16, 0
  br i1 %i.br, label %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread21, label %.thread

_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread21: ; preds = %bb.ai, %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.ah, %bb.e, %bb.d, %bb.i, %bb.h, %bb.o, %bb.n, %bb.s, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.ad, %bb.z, %bb.v, %bb.r, %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ 1, %bb.r ], [ 1, %bb.v ], [ 1, %bb.z ], [ 1, %bb.ad ], [ -1, %bb.ai ], [ -1, %bb.ae ], [ -1, %bb.aa ], [ -1, %bb.w ], [ -1, %bb.s ], [ 1, %bb.n ], [ -1, %bb.o ], [ 1, %bb.h ], [ -1, %bb.i ], [ 1, %bb.d ], [ -1, %bb.e ], [ 1, %bb.ah ], [ %.sroa.0.0.i16, %_RNvXsb0_NtCs4lawaffTVVK_9sqlparser3astNtB6_7DeclareNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2C_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 67818912035696881) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not20 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not20, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge, label %.lr.ph

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge, label %.lr.ph

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

.lr.ph:                                           ; preds = %bb.a, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.01.021 = phi i64 [ %i.b, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.021, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.01.021 ; 6 uses
  %i.d = getelementptr inbounds nuw [136 x i8], ptr %2, i64 %.sroa.01.021 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6105)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.val.i.i = load i8, ptr %i.e, align 8, !range !75, !alias.scope !6106, !noalias !6107, !noundef !34 ; 2 uses
  %.val6.i.i = load i8, ptr %i.f, align 8, !range !75, !alias.scope !6107, !noalias !6106, !noundef !34 ; 2 uses
  %i.g = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val.i.i, i8 %.val6.i.i)
  %i.h = icmp eq i8 %.val.i.i, %.val6.i.i
  br i1 %i.h, label %bb.b, label %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %i.c, align 8, !range !39, !alias.scope !6106, !noalias !6107, !noundef !34 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, -9223372036854775807
  %i.j = load i64, ptr %i.d, align 8, !range !39, !alias.scope !6107, !noalias !6106, !noundef !34 ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not5.i.i = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not5.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not4.i.i = icmp ne i64 %i.j, -9223372036854775807
  %..i.i = sext i1 %.not4.i.i to i8
  br label %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6109)
  %i.k = icmp ne i64 %i.i, -9223372036854775808   ; 2 uses
  %i.l = zext i1 %i.k to i8
  %i.m = icmp ne i64 %i.j, -9223372036854775808   ; 3 uses
  %.neg.i.i.i = sext i1 %i.m to i8
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = add nsw i8 %.neg.i.i.i, %i.l
  br label %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !6110, !noalias !6111, !nonnull !34, !noundef !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val4.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !6110, !noalias !6111, !noundef !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val5.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !6111, !noalias !6110, !nonnull !34, !noundef !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val6.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !6111, !noalias !6110, !noundef !34
  %i.s = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val4.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val5.i.i.i, i64 noundef %.val6.i.i.i), !noalias !6112
  br label %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.j:                                             ; preds = %bb.f
  %i.t = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.d) ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.k, label %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.x = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v)
  br label %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.d, %.lr.ph
  %.sroa.0.0.i.i = phi i8 [ %i.s, %bb.i ], [ %i.g, %.lr.ph ], [ %..i.i, %bb.d ], [ %i.x, %bb.k ], [ %i.t, %bb.j ], [ %i.n, %bb.h ] ; 2 uses
  %i.y = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.y, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %bb.c, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ 1, %bb.c ], [ %.sroa.0.0.i.i, %_RNvXsgk_NtCs4lawaffTVVK_9sqlparser3astNtB6_7GranteeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast8MacroArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2D_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 23529010298098918) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 23529010298098918) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not21 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not21, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.022 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.022, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [392 x i8], ptr %0, i64 %.sroa.01.022 ; 3 uses
  %i.d = getelementptr inbounds nuw [392 x i8], ptr %2, i64 %.sroa.01.022 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6118)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.g = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f), !inline_history !6116 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.c:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %i.c, align 8, !range !89, !alias.scope !6117, !noalias !6118, !noundef !34
  %.not.i = icmp eq i64 %i.i, 69
  %i.j = load i64, ptr %i.d, align 8, !range !89, !alias.scope !6118, !noalias !6117, !noundef !34
  %.not4.i = icmp eq i64 %i.j, 69                 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not4.i, label %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %.not4.i, label %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.k = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.d) #56, !inline_history !6116
  br label %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.e, %.lr.ph, %bb.f
  %.sroa.0.0.i16 = phi i8 [ %i.k, %bb.f ], [ %i.g, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.l = icmp eq i8 %.sroa.0.0.i16, 0
  br i1 %i.l, label %bb.b, label %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread: ; preds = %bb.d, %bb.e, %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ -1, %bb.e ], [ 1, %bb.d ], [ %.sroa.0.0.i16, %_RNvXsux_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MacroArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9LockTableINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 67818912035696881) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not19 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not19, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXsvb_NtCs4lawaffTVVK_9sqlparser3astNtB6_9LockTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9LockTableNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.020 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.020, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.01.020 ; 4 uses
  %i.d = getelementptr inbounds nuw [136 x i8], ptr %2, i64 %.sroa.01.020 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6128)
  %i.e = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.d) ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXsvb_NtCs4lawaffTVVK_9sqlparser3astNtB6_9LockTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !37, !alias.scope !6129, !noalias !6130, !noundef !34
  %.not.i.i = icmp eq i64 %i.h, -9223372036854775808
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !37, !alias.scope !6130, !noalias !6129, !noundef !34
  %.not8.i.i = icmp eq i64 %i.j, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not8.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9LockTableNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.e:                                             ; preds = %bb.c
  br i1 %.not8.i.i, label %bb.f, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9LockTableNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

end_hunk_0
begin_hunk_1_@_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14XmlTableColumnINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %i.q = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #56, !inline_history !6521 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %_RNvXsgU_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14XmlTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i64 %i.i, 69
  %.not14.i.i = icmp eq i64 %i.k, 69              ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not14.i.i, label %.thread, label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %.not14.i.i, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !89, !alias.scope !6526, !noalias !6527, !noundef !34
  %.not16.i.i = icmp eq i64 %i.t, 69
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 328 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !89, !alias.scope !6527, !noalias !6526, !noundef !34
  %.not17.i.i = icmp eq i64 %i.v, 69              ; 2 uses
  br i1 %.not16.i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.w = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.d) #56, !inline_history !6521 ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.i, label %_RNvXsgU_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14XmlTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.i
  br i1 %.not17.i.i, label %.thread, label %bb.n

bb.l:                                             ; preds = %bb.i
  br i1 %.not17.i.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.z = load i8, ptr %i.y, align 8, !range !55, !alias.scope !6526, !noalias !6527, !noundef !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.ab = load i8, ptr %i.aa, align 8, !range !55, !alias.scope !6527, !noalias !6526, !noundef !34
  %i.ac = sub nsw i8 %i.z, %i.ab
  br label %_RNvXsgU_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14XmlTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.k
  %i.ad = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.u) #56, !inline_history !6521 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %_RNvXsgU_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14XmlTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsgU_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14XmlTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.d, %bb.e, %bb.j, %bb.m, %bb.n, %.lr.ph
  %.sroa.0.0.i16 = phi i8 [ %i.g, %.lr.ph ], [ %i.n, %bb.d ], [ %i.ac, %bb.m ], [ %i.ad, %bb.n ], [ %i.w, %bb.j ], [ %i.q, %bb.e ]
  %.sroa.0.0.i16.fr = freeze i8 %.sroa.0.0.i16    ; 2 uses
  %i.af = icmp eq i8 %.sroa.0.0.i16.fr, 0
  br i1 %i.af, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.k, %bb.h, %bb.g, %bb.l, %_RNvXsgU_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14XmlTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ -1, %bb.l ], [ 1, %bb.g ], [ -1, %bb.h ], [ 1, %bb.k ], [ %.sroa.0.0.i16.fr, %_RNvXsgU_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14XmlTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15JsonTableColumnINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2T_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 33909456017848441) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 33909456017848441) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread20, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.thread

.lr.ph:                                           ; preds = %bb.a, %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread20
  %.sroa.01.024 = phi i64 [ %i.b, %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread20 ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.024, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [272 x i8], ptr %0, i64 %.sroa.01.024 ; 11 uses
  %i.d = getelementptr inbounds nuw [272 x i8], ptr %2, i64 %.sroa.01.024 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6541)
  %i.e = load i64, ptr %i.c, align 8, !range !39, !alias.scope !6540, !noalias !6541, !noundef !34 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  %i.g = add i64 %i.e, -9223372036854775807
  %i.h = select i1 %i.f, i64 %i.g, i64 0          ; 3 uses
  %i.i = load i64, ptr %i.d, align 8, !range !39, !alias.scope !6541, !noalias !6540, !noundef !34 ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  %i.k = add i64 %i.i, -9223372036854775807
  %i.l = select i1 %i.j, i64 %i.k, i64 0          ; 2 uses
  %.not.i = icmp eq i64 %i.h, %i.l
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  switch i64 %i.h, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.m = tail call i8 @llvm.scmp.i8.i64(i64 %i.h, i64 %i.l)
  br label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6543)
  %i.n = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.d), !inline_history !6534 ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.r = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.q) #56, !inline_history !6534 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.g, label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.v = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u) #56, !inline_history !6534 ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.y = load i8, ptr %i.x, align 8, !range !55, !alias.scope !6544, !noalias !6545, !noundef !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.aa = load i8, ptr %i.z, align 8, !range !55, !alias.scope !6545, !noalias !6544, !noundef !34
  %i.ab = sub nsw i8 %i.y, %i.aa                  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !74, !alias.scope !6544, !noalias !6545, !noundef !34
  %.not.i.i = icmp eq i64 %i.ae, -9223372036854775784
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !74, !alias.scope !6545, !noalias !6544, !noundef !34
  %.not18.i.i = icmp eq i64 %i.ag, -9223372036854775784 ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not18.i.i, label %.thread, label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %.not18.i.i, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !74, !alias.scope !6544, !noalias !6545, !noundef !34
  %.not20.i.i = icmp eq i64 %i.ai, -9223372036854775784
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !74, !alias.scope !6545, !noalias !6544, !noundef !34
  %.not21.i.i = icmp eq i64 %i.ak, -9223372036854775784 ; 2 uses
  br i1 %.not20.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.al = tail call fastcc noundef i8 @_RNvXsg4_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_28JsonTableColumnErrorHandlingNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af) #56, !inline_history !6534 ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.l, label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.l
  br i1 %.not21.i.i, label %.thread, label %bb.p

bb.o:                                             ; preds = %bb.l
  br i1 %.not21.i.i, label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread20, label %.thread

bb.p:                                             ; preds = %bb.n
  %i.an = tail call fastcc noundef i8 @_RNvXsg4_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_28JsonTableColumnErrorHandlingNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj) #56, !inline_history !6534
  br label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.q:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ap), !inline_history !6535
  br label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6547)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as) #56, !inline_history !6539 ; 2 uses
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.s, label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !6548, !noalias !6549, !nonnull !34, !noundef !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !6548, !noalias !6549, !noundef !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !6549, !noalias !6548, !nonnull !34, !noundef !34
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !6549, !noalias !6548, !noundef !34
  %i.bd = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15JsonTableColumnINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2T_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aw, i64 noundef %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ba, i64 noundef %i.bc) #56, !noalias !6550, !inline_history !6539
  br label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.r, %bb.s, %bb.e, %bb.f, %bb.g, %bb.h, %bb.m, %bb.p, %bb.c, %bb.q
  %.sroa.0.0.i16 = phi i8 [ %i.m, %bb.c ], [ %i.v, %bb.g ], [ %i.aq, %bb.q ], [ %i.n, %bb.e ], [ %i.an, %bb.p ], [ %i.r, %bb.f ], [ %i.bd, %bb.s ], [ %i.at, %bb.r ], [ %i.al, %bb.m ], [ %i.ab, %bb.h ] ; 2 uses
  %i.be = icmp eq i8 %.sroa.0.0.i16, 0
  br i1 %i.be, label %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread20, label %.thread

_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread20: ; preds = %bb.o, %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.k, %bb.j, %bb.o, %bb.n, %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ 1, %bb.n ], [ -1, %bb.o ], [ 1, %bb.j ], [ -1, %bb.k ], [ %.sroa.0.0.i16, %_RNvXsfA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15JsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2T_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 288230376151711744) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not23 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not23, label %._crit_edge27, label %.lr.ph26

bb.b:                                             ; preds = %_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge27, label %.lr.ph26

._crit_edge27:                                    ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

.lr.ph26:                                         ; preds = %bb.a, %bb.b
  %.sroa.01.024 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.024, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.024 ; 5 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.sroa.01.024 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6560)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %i.f = load i8, ptr %i.e, align 1, !range !43, !alias.scope !6561, !noalias !6562, !noundef !34 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  %i.h = load i8, ptr %i.g, align 1, !range !43, !alias.scope !6562, !noalias !6561, !noundef !34 ; 2 uses
  %i.i = tail call i8 @llvm.ucmp.i8.i8(i8 %i.f, i8 %i.h)
  %i.j = icmp eq i8 %i.f, %i.h
  br i1 %i.j, label %bb.c, label %_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.c:                                             ; preds = %.lr.ph26
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i8, ptr %i.k, align 8, !range !55, !alias.scope !6561, !noalias !6562, !noundef !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !55, !alias.scope !6562, !noalias !6561, !noundef !34
  %i.o = sub nsw i8 %i.l, %i.n                    ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !40, !alias.scope !6561, !noalias !6562, !noundef !34 ; 3 uses
  %.not.i.i = icmp eq i8 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %i.t = load i8, ptr %i.s, align 2, !range !40, !alias.scope !6562, !noalias !6561, !noundef !34 ; 3 uses
  %.not4.i.i = icmp eq i8 %i.t, 3                 ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not4.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not4.i.i, label %bb.g, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !6561, !noalias !6562, !nonnull !34, !noundef !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !6561, !noalias !6562, !noundef !34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6562, !noalias !6561, !nonnull !34, !noundef !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6562, !noalias !6561, !noundef !34 ; 2 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.ab, i64 range(i64 0, 144115188075855872) %i.x) ; 2 uses
  %exitcond.not.i.i.i21 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i21, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.ac = add nuw nsw i64 %.sroa.01.0.i.i.i22, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.ad = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.x, i64 range(i64 0, 144115188075855872) %i.ab)
  br label %_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i.i.i22 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %.sroa.01.0.i.i.i22
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %.sroa.01.0.i.i.i22
  %i.ag = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.af), !noalias !6563 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ai = tail call i8 @llvm.ucmp.i8.i8(i8 %i.r, i8 %i.t)
  %i.aj = icmp eq i8 %i.r, %i.t
  br i1 %i.aj, label %bb.g, label %_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i: ; preds = %.lr.ph, %bb.i, %._crit_edge, %bb.c, %.lr.ph26
  %.sroa.0.0.i.i = phi i8 [ %i.ad, %._crit_edge ], [ %i.ai, %bb.i ], [ %i.o, %bb.c ], [ %i.i, %.lr.ph26 ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.not14 = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %.not14, label %bb.b, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.f, %_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %bb.e, %._crit_edge27
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge27 ], [ 1, %bb.e ], [ %.sroa.0.0.i.i, %_RNvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableIndexHintsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i ], [ -1, %bb.f ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2U_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 23529010298098918) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 23529010298098918) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not18 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not18, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.019 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.019, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [392 x i8], ptr %0, i64 %.sroa.01.019 ; 2 uses
  %i.d = getelementptr inbounds nuw [392 x i8], ptr %2, i64 %.sroa.01.019 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.g = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f), !inline_history !6564 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.d) #56, !inline_history !6564
  br label %_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i16 = phi i8 [ %i.i, %bb.c ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.j = icmp eq i8 %.sroa.0.0.i16, 0
  br i1 %i.j, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ %.sroa.0.0.i16, %_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2X_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 28120036697727976) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 28120036697727976) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not18 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not18, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXses_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.019 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.019, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [328 x i8], ptr %0, i64 %.sroa.01.019 ; 2 uses
  %i.d = getelementptr inbounds nuw [328 x i8], ptr %2, i64 %.sroa.01.019 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6570)
  %i.e = load i64, ptr %i.c, align 8, !range !88, !alias.scope !6569, !noalias !6570, !noundef !34 ; 2 uses
  %i.f = add nsw i64 %i.e, -69
  %i.g = icmp samesign ugt i64 %i.e, 68
  %i.h = select i1 %i.g, i64 %i.f, i64 3          ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !range !88, !alias.scope !6570, !noalias !6569, !noundef !34 ; 2 uses
  %i.j = add nsw i64 %i.i, -69
  %i.k = icmp samesign ugt i64 %i.i, 68
  %i.l = select i1 %i.k, i64 %i.j, i64 3          ; 2 uses
  %i.m = icmp eq i64 %i.h, 3
  %i.n = icmp eq i64 %i.l, 3
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = tail call i8 @llvm.scmp.i8.i64(i64 %i.h, i64 %i.l)
  br label %_RNvXses_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.d) #56, !inline_history !6568
  br label %_RNvXses_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXses_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i16 = phi i8 [ %i.p, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.q = icmp eq i8 %.sroa.0.0.i16, 0
  br i1 %i.q, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_RNvXses_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ %.sroa.0.0.i16, %_RNvXses_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19OpenJsonTableColumnINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2X_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 60680079189834052) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 60680079189834052) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not22 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not22, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXsge_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19OpenJsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.023 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.023, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %.sroa.01.023 ; 6 uses
  %i.d = getelementptr inbounds nuw [152 x i8], ptr %2, i64 %.sroa.01.023 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6576)
  %i.e = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.d), !inline_history !6574 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXsge_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19OpenJsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.i = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h) #56, !inline_history !6574 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RNvXsge_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19OpenJsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = load i64, ptr %i.k, align 8, !range !37, !alias.scope !6575, !noalias !6576, !noundef !34
  %.not.i = icmp eq i64 %i.l, -9223372036854775808
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.n = load i64, ptr %i.m, align 8, !range !37, !alias.scope !6576, !noalias !6575, !noundef !34
  %.not18.i = icmp eq i64 %i.n, -9223372036854775808 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not18.i, label %.thread, label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not18.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.p = load i8, ptr %i.o, align 8, !range !55, !alias.scope !6575, !noalias !6576, !noundef !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.r = load i8, ptr %i.q, align 8, !range !55, !alias.scope !6576, !noalias !6575, !noundef !34
  %i.s = sub nsw i8 %i.p, %i.r
  br label %_RNvXsge_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19OpenJsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !6575, !noalias !6576, !nonnull !34, !noundef !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6575, !noalias !6576, !noundef !34 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !6576, !noalias !6575, !nonnull !34, !noundef !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6576, !noalias !6575, !noundef !34 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr nonnull %i.u, ptr nonnull %i.y, i64 %spec.store.select.i), !inline_history !6574 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.w, %i.aa
  %spec.select.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac ; 2 uses
  %i.af = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  %i.ag = icmp eq i64 %spec.select.i, 0
  br i1 %i.ag, label %bb.g, label %_RNvXsge_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19OpenJsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsge_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19OpenJsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %.lr.ph, %bb.c, %bb.g, %bb.h
  %.sroa.0.0.i16 = phi i8 [ %i.s, %bb.g ], [ %i.af, %bb.h ], [ %i.i, %bb.c ], [ %i.e, %.lr.ph ]
  %.sroa.0.0.i16.fr = freeze i8 %.sroa.0.0.i16    ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i16.fr, 0
  br i1 %i.ah, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %_RNvXsge_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19OpenJsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ -1, %bb.f ], [ 1, %bb.e ], [ %.sroa.0.0.i16.fr, %_RNvXsge_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19OpenJsonTableColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Z_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 42700796466920259) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond57.not81 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond57.not81, label %._crit_edge, label %.lr.ph83

bb.b:                                             ; preds = %_RNvXs3c_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread
  %exitcond57.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond57.not, label %._crit_edge, label %.lr.ph83

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.thread

.lr.ph83:                                         ; preds = %bb.a, %bb.b
  %.sroa.01.082 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.082, 1         ; 2 uses
end_hunk_1
