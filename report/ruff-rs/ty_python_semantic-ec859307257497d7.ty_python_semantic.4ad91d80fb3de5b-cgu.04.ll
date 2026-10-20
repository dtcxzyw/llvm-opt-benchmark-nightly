Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26854)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !26855, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !26856, !noundef !12 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread, label %.split.i.i

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.i, label %bb.e, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

.split.i.i:                                       ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %.val10.i.i = load i32, ptr %i.j, align 4, !alias.scope !26855, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %.val12.i.i = load i32, ptr %i.k, align 4, !alias.scope !26856, !noundef !12
  %i.l = icmp eq i32 %.val10.i.i, %.val12.i.i
  %i.m = icmp eq i32 %i.f, %i.h
  %.sroa.0.0.i.i.i = and i1 %i.m, %i.l
  br i1 %.sroa.0.0.i.i.i, label %bb.e, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.e:                                             ; preds = %.split.i.i, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = load i32, ptr %i.n, align 8, !alias.scope !26855, !noundef !12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %.not6.i.i = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !26856, !noundef !12 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0                      ; 2 uses
  br i1 %.not6.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.s, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.u = load i32, ptr %i.p, align 4, !alias.scope !26855, !noundef !12
  %i.v = load i32, ptr %i.t, align 4, !alias.scope !26856, !noundef !12
  %i.w = icmp eq i32 %i.u, %i.v
  %i.x = icmp eq i32 %i.o, %i.r
  %or.cond.i.i = and i1 %i.x, %i.w
  br i1 %or.cond.i.i, label %bb.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !26855, !noundef !12 ; 2 uses
  %.not8.i.i = icmp eq i32 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !26856, !noundef !12 ; 2 uses
  br i1 %.not8.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.l, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %bb.l, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = load i64, ptr %i.c, align 8, !range !22, !alias.scope !26855, !noundef !12
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = load i64, ptr %i.d, align 8, !range !22, !alias.scope !26856, !noundef !12
  %i.ah = trunc nuw i64 %i.ag to i1               ; 2 uses
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.ah, label %.split17.i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.n:                                             ; preds = %bb.l
  br i1 %i.ah, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread, label %bb.o

.split17.i.i:                                     ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = tail call fastcc noundef zeroext i1 @_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_18OwnedConstraintSetNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
  br i1 %i.ak, label %bb.o, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.o:                                             ; preds = %.split17.i.i, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val13.i.i = load ptr, ptr %i.al, align 8, !alias.scope !26855, !nonnull !12, !noundef !12 ; 8 uses
  %.val14.i.i = load ptr, ptr %i.am, align 8, !alias.scope !26856, !nonnull !12, !noundef !12 ; 8 uses
  %i.an = icmp eq ptr %.val13.i.i, %.val14.i.i
  br i1 %i.an, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26857), !noalias !26858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26859), !noalias !26858
  %i.ao = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !26857, !noalias !26858, !noundef !12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !26859, !noalias !26858, !noundef !12
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.q, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !26859, !noalias !26858, !nonnull !12, !noundef !12
  %i.aw = load ptr, ptr %i.at, align 8, !alias.scope !26857, !noalias !26858, !nonnull !12, !noundef !12
  %i.ax = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, i64 noundef %i.ap), !noalias !26860
  br i1 %i.ax, label %bb.r, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26861), !noalias !26858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26862), !noalias !26858
  %i.ba = load i32, ptr %i.ay, align 8, !range !34, !alias.scope !26863, !noalias !26858, !noundef !12 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 8, !range !34, !alias.scope !26864, !noalias !26858, !noundef !12
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.s, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.s:                                             ; preds = %bb.r
  switch i32 %i.ba, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit [
    i32 3, label %bb.t
    i32 4, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !26863, !noalias !26858, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !alias.scope !26864, !noalias !26858, !noundef !12
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !26863, !noalias !26858, !noundef !12 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 40
  %i.bl = icmp ne i32 %i.bj, 0                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !26864, !noalias !26858, !noundef !12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 40
  %i.bp = icmp ne i32 %i.bn, 0                    ; 2 uses
  %i.bq = xor i1 %i.bl, %i.bp
  br i1 %i.bq, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %or.cond.i.i.i.i = and i1 %i.bl, %i.bp
  br i1 %or.cond.i.i.i.i, label %.split, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit

.split:                                           ; preds = %bb.v
  %i.br = load i32, ptr %i.bk, align 8, !alias.scope !26863, !noalias !26858, !noundef !12
  %i.bs = load i32, ptr %i.bo, align 8, !alias.scope !26864, !noalias !26858, !noundef !12
  %i.bt = icmp eq i32 %i.br, %i.bs
  %i.bu = icmp eq i32 %i.bj, %i.bn
  %spec.select.i.i.i.i = and i1 %i.bu, %i.bt
  br i1 %spec.select.i.i.i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 36
  %i.bw = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !range !20, !alias.scope !26863, !noalias !26858, !noundef !12
  %i.by = load i32, ptr %i.bv, align 4, !range !20, !alias.scope !26864, !noalias !26858, !noundef !12
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit: ; preds = %bb.v, %bb.s, %bb.o, %_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %.split
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cc = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ca, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cb)
  br i1 %i.cc, label %bb.b, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit, %_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.m, %bb.j, %bb.h, %bb.f, %bb.c, %bb.n, %bb.k, %bb.g, %bb.d, %.split.i.i, %.split17.i.i, %.split, %bb.q, %bb.p, %bb.r, %bb.u, %bb.t, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.q ], [ false, %.split ], [ false, %.split17.i.i ], [ false, %.split.i.i ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.m ], [ false, %_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB8_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10max_by_key7compareTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1Z_10definition10DefinitionEB1T_EINtB7_6FnOnceTRTB1T_B1S_EB3Y_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #12 {
bb.a:
  %.val = load i32, ptr %1, align 4, !range !20, !noundef !12
  %.val1 = load i32, ptr %2, align 4, !range !20, !noundef !12
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val, i32 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10max_by_key7compareTjRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20CallSignatureDetailsEjEINtB7_6FnOnceTRTjB1S_EB3u_EE9call_onceB21_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #12 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !12
  %.val1 = load i64, ptr %2, align 8, !noundef !12
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareTjllETllEEINtB7_6FnOnceTRTB1X_B1S_EB2g_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #12 {
bb.a:
  %.val = load i32, ptr %1, align 8, !noundef !12 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1 = load i32, ptr %3, align 4
  %.val2 = load i32, ptr %2, align 8, !noundef !12 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val3 = load i32, ptr %4, align 4
  %5 = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %.val, i32 %.val2)
  %6 = icmp eq i32 %.val, %.val2
  %7 = tail call range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %.val1, i32 %.val3)
  %.sroa.0.0.i.i.i = select i1 %6, i8 %7, i8 %5
  ret i8 %.sroa.0.0.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtBW_10Parameters15from_parameterss0_0INtB7_6FnOnceTRRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEE9call_onceB10_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !align !13, !noundef !12
  %i.a = tail call noundef zeroext i1 @_RNvMs1Y_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ParameterWithDefault39uses_pep_484_positional_only_convention(ptr noundef nonnull align 8 %.val)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs3V_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7FStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !noundef !12
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load i32, ptr %i.h, align 4, !noundef !12
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.k, ptr noundef nonnull align 4 %i.l)
  br i1 %i.m, label %bb.d, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26882)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !26881, !noundef !12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !26882, !noundef !12
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !26882, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !26881, !nonnull !12, !noundef !12
  %.not4.not = icmp eq i64 %i.o, 0
  br i1 %.not4.not, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.y, %bb.x, %.split, %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.w = add nuw i64 %.sroa.01.0.i.i5, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.o
  br i1 %exitcond.not, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %.sroa.01.0.i.i5 = phi i64 [ %i.w, %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ 0, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %.sroa.01.0.i.i5 ; 15 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %.sroa.01.0.i.i5 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !range !79, !noalias !26883, !noundef !12
  %i.ab = icmp eq i8 %i.aa, 0                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 60 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !range !79, !noalias !26883, !noundef !12
  %i.ae = icmp eq i8 %i.ad, 0                     ; 3 uses
  %i.af = xor i1 %i.ab, %i.ae
  br i1 %i.af, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.ab, label %bb.g, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.ae), !noalias !26883
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !26883, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !26883, !noundef !12
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.am = load i32, ptr %i.al, align 4, !noalias !26883, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !noalias !26883, !noundef !12
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.as = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.aq, ptr noundef nonnull align 4 %i.ar), !noalias !26883, !inline_history !26868
  br i1 %i.as, label %bb.j, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !26883, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !26883, !noundef !12
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.split, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

.split:                                           ; preds = %bb.j
  %i.ay = load ptr, ptr %i.y, align 8, !noalias !26883, !nonnull !12, !noundef !12
  %i.az = load ptr, ptr %i.x, align 8, !noalias !26883, !nonnull !12, !noundef !12
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.az, ptr nonnull %i.ay, i64 %i.au), !noalias !26883, !inline_history !26868
  %i.ba = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ba, label %_RNvXs2C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_28InterpolatedStringFormatSpecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  %i.bb = xor i1 %i.ae, true
  tail call void @llvm.assume(i1 %i.bb), !noalias !26883
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bd = load i32, ptr %i.bc, align 8, !noalias !26883, !noundef !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !noalias !26883, !noundef !12
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.k, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.k:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !26883, !noundef !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !noalias !26883, !noundef !12
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.l, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.bo = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.bm, ptr noundef nonnull align 4 %i.bn), !noalias !26883, !inline_history !26869
  br i1 %i.bo, label %bb.m, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !26883, !nonnull !12, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !26883, !nonnull !12, !noundef !12
  %i.bt = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.bq, ptr noundef nonnull align 8 %i.bs), !noalias !26883, !inline_history !26869
  br i1 %i.bt, label %bb.n, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  %i.bv = load i8, ptr %i.bu, align 1, !range !81, !noalias !26883, !noundef !12
  %.not.i = icmp eq i8 %i.bv, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 23
  %i.bx = load i8, ptr %i.bw, align 1, !range !81, !noalias !26883, !noundef !12
  %i.by = icmp eq i8 %i.bx, -1                    ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.by, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %i.by, label %bb.s, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26884), !noalias !26883
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26885), !noalias !26883
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !alias.scope !26884, !noalias !26883, !noundef !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !26885, !noalias !26883, !noundef !12
  %i.cd = icmp eq i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.r, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !alias.scope !26884, !noalias !26883, !noundef !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !alias.scope !26885, !noalias !26883, !noundef !12
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.r
  %i.cj = tail call noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y), !noalias !26883, !inline_history !26869
  br i1 %i.cj, label %bb.s, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.s:                                             ; preds = %_RNvXs30_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9DebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.p
  %.val.i = load i8, ptr %i.z, align 4, !range !82, !noalias !26883, !noundef !12
  %.val5.i = load i8, ptr %i.ac, align 4, !range !82, !noalias !26883, !noundef !12
  %i.ck = icmp eq i8 %.val.i, %.val5.i
  br i1 %i.ck, label %bb.t, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !26883, !align !13, !noundef !12 ; 6 uses
  %.not3.i = icmp eq ptr %i.cm, null              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !26883, !align !13, !noundef !12 ; 6 uses
  %i.cp = icmp eq ptr %i.co, null                 ; 2 uses
  %brmerge.i = or i1 %.not3.i, %i.cp
  br i1 %brmerge.i, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.split9

.split9:                                          ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !noalias !26883, !noundef !12
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition10file_scope
declare noundef range(i32 1, 0) i32 @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition10file_scope(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNvMsl_NtNtB1Z_5types8relationNtB2R_4Type17is_redundant_with22is_redundant_with_impl0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetDNtNtB20_2db2DbEL_NCNvNvMsl_NtB1Y_8relationNtB1Y_4Type39when_constraint_set_assignable_to_owned44when_constraint_set_assignable_to_owned_impl0E0B1T_EB20_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CscxDUFidjJwY_9inventoryNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNtB4_10ErasedNode6submitCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__NtB8_8TypePair7programDNtNtBa_2db2DbEL_EBa_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__NtB8_8TypePair5firstDNtNtBa_2db2DbEL_EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__NtB8_8TypePair6secondDNtNtBa_2db2DbEL_EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type15has_relation_to(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull align 8, i32 noundef, i32, i8 noundef range(i8 0, 6)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_20ConstraintSetBuilder10into_ownedNCNvNvXs0_NvNvMsl_NtB8_8relationNtB8_4Type39when_constraint_set_assignable_to_owned1__NtB1N_59when_constraint_set_assignable_to_owned_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(696), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5array8equalityNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtB5_11SpecArrayEqBH_Kj2_E7spec_eqBL_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor20walk_non_atomic_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel15expr_ref_in_ast(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef range(i64 0, 33), ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvMse_Cs2O29vuvTAEJ_14ty_python_coreNtB6_19ExpressionsScopeMap7try_getNtNtCskLngH8kgpZI_15ruff_python_ast9generated7ExprRefECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_14ScopeInference19try_expression_typeNtNtCskLngH8kgpZI_15ruff_python_ast9generated7ExprRefEBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef range(i64 0, 33), ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtNtNtB2N_5infer7builder9enum_call40apply_generated_type_mixin_member_values0EINtNtB7_6option6OptionNtNtB7_7convert10InfallibleEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB21_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB21_E0INtNtB7_6result6ResultB6p_zEEB2P_(ptr noalias noundef align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENvMs0_B1N_B1K_3keyENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2h_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2h_E0INtNtBc_6result6ResultB43_zEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore11SuppressFixENCNvMNtB1Q_5fixesNtB35_7FixMode5fixess_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB35_13ApplicableFixENCINvNtB12_16in_place_collect24write_in_place_with_dropB4X_E0INtNtBc_6result6ResultB4m_zEEB1Q_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1R_10definition10DefinitionEENCNvMsp_NtNtB3L_5class14static_literalNtB5m_18StaticClassLiteral24own_annotated_qualifierss_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropTB30_B3J_B4G_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB82_E0INtNtBc_6result6ResultB7r_zEEB3N_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB7_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtBV_8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterB1D_EEENtNtNtBV_6traits8iterator8Iterator4nextB1H_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizebE0jE0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetE0jE0jEB45_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecjENtB6_5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBN_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB4_4NameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtB5_18FunctionIngredient4memoB1a_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtB5_18FunctionIngredient18provisional_statusB1a_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtB5_18FunctionIngredient4memoB1a_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtB5_18FunctionIngredient18provisional_statusB1a_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs7_NtNtCscdodAO9FK5_5alloc5boxed7convertINtB7_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtCs4NRVxsYgnAr_4core7convert4FromABR_j2_E4fromBX_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsC_NtCscdodAO9FK5_5alloc3vecINtNtB7_5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_3VecBN_EE4fromBT_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMNtNtNtB25_5infer7builder9subscriptNtB2Y_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls8_0ENvYB23_INtNtBb_7convert4IntoB23_E4intoENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB27_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB2c_20BoundTypeVarInstanceEENCNvMs16_NtNtB1G_3map4iterINtB40_10IntoValuesB2a_B3n_E3new0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB2g_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENvYB1D_INtNtBb_7convert4IntoB1D_E4intoENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1H_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 4) i8 @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8varianceNtB5_15TypeVarVarianceINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBV_E9from_iterINtNtNtB1o_8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB7_10signatures9SignatureENCNvXs1_B3q_RNtB3q_17CallableSignatureNtB5_17VarianceInferable11variance_of0EEB9_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEj1_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(72), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEj2_NtB4_11PartialDrop12partial_dropB1E_(ptr noalias noundef align 8 dereferenceable(864), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs7_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__NtB7_8TypePairNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs45bxiIjzMqg_5salsa8functionINtB4_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB17_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_E3newB19_(ptr dead_on_unwind noalias noundef writable sret([584 x i8]) align 8 captures(none) dereferenceable(584), i32 noundef, i32 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs3_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1a_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient19maybe_changed_afterB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull, i32 noundef range(i32 1, 0), i32 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient32collect_minimum_serialized_edgesB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient21mark_validated_outputB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient22reset_for_new_revisionB1a_(ptr noalias noundef align 8 dereferenceable(584), ptr noalias noundef align 8 dereferenceable(520)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient16memo_table_typesB1a_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient20memo_table_types_mutB1a_(ptr noalias noundef align 8 dereferenceable(584)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB12_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient9fmt_indexB14_(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient31flatten_cycle_head_dependenciesB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtNtB7_10ingredient10Ingredient16should_serializeB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs45bxiIjzMqg_5salsa8functionINtB4_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB17_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_E3newB19_(ptr dead_on_unwind noalias noundef writable sret([584 x i8]) align 8 captures(none) dereferenceable(584), i32 noundef, i32 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs3_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1a_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient19maybe_changed_afterB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull, i32 noundef range(i32 1, 0), i32 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient32collect_minimum_serialized_edgesB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient21mark_validated_outputB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient22reset_for_new_revisionB1a_(ptr noalias noundef align 8 dereferenceable(584), ptr noalias noundef align 8 dereferenceable(520)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient16memo_table_typesB1a_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient20memo_table_types_mutB1a_(ptr noalias noundef align 8 dereferenceable(584)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB12_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient9fmt_indexB14_(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient31flatten_cycle_head_dependenciesB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB18_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtNtB7_10ingredient10Ingredient16should_serializeB1a_(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #50

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataENtB6_5Debug3fmtB19_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16ParameterContextENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4, ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsoTR8nlGN3X_18ty_python_semantic5types11DynamicTypeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsoTR8nlGN3X_18ty_python_semantic5types13DivergentTypeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method20KnownBoundMethodTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method21WrapperDescriptorKindNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function26DataclassTransformerParamsNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsoTR8nlGN3X_18ty_python_semantic5types17ModuleLiteralTypeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_of14SubclassOfTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance19NominalInstanceTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance20ProtocolInstanceTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_form15SpecialFormTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance17KnownInstanceTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic9UnionTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic16IntersectionTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18EnumComplementTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal16LiteralValueTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsoTR8nlGN3X_18ty_python_semantic5types10TypeIsTypeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsoTR8nlGN3X_18ty_python_semantic5types13TypeGuardTypeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9type_form12TypeFormTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict13TypedDictTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias13TypeAliasTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype7NewTypeNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types12binding_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E5sp_eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs9_Csg7m2K3K1Fzf_11compact_strNtB5_13CompactStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa26next_memo_ingredient_index(ptr noalias noundef align 8 dereferenceable(1368), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa21lookup_ingredient_mut(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(1368), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB5_14MemoTableTypes3set(ptr noalias noundef align 8 dereferenceable(24), i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26ExceptHandlerExceptHandlerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1f_(ptr noalias noundef nonnull align 4, i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__NtB8_15TypeVarIdentity4nameDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 4) i8 @_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8varianceINtB5_12WithPolarityNtB7_4TypeENtB5_17VarianceInferable11variance_ofB9_(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(20), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(28)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(28)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs6Wt4yPw39th_9itertools4free5chainINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1d_3map3MapINtNtNtB1h_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvXs5_B2K_RNtB2K_9SignatureNtNtB2M_8variance17VarianceInferable11variance_of0EINtNtNtB1f_7sources4once4OnceNtB4j_15TypeVarVarianceEEB20_EINtNtB1h_6option6OptionB5z_EEB2O_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56), i8 noundef range(i8 -1, 4)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 4) i8 @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8varianceNtB5_15TypeVarVarianceINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBV_E9from_iterINtNtNtB1o_8adapters5chain5ChainINtCsddXFpJ32JCa_6either6EitherIB2w_INtNtB2A_3map3MapINtNtNtB1q_5slice4iter4IterNtNtB7_10signatures9ParameterENCNvXs5_B4l_RNtB4l_9SignatureNtB5_17VarianceInferable11variance_of0EINtNtNtB1o_7sources4once4OnceBV_EEB3B_EINtNtB1q_6option8IntoIterBV_EEEB9_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_15wrapping_offset0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs2MoD74u7shA_14ruff_text_size5rangeNtB2_9TextRangeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast10node_index15AtomicNodeIndexNtB6_5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBK_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBO_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsM_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBQ_(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(240)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_E9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBN_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBK_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar26TypeVarNonceGeneratorInnerEE9drop_slowB1j_
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar26TypeVarNonceGeneratorInnerEE9drop_slowB1j_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtBH_31ApplyMaterializationEquivalenceTNtBH_4TypeB2l_EbKj1_EE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display18QualificationLevelNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE9drop_slowB1F_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE9drop_slowCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE9drop_slowB1D_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9Signaturej1_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexNtNtB1W_5range9RangeFullE5indexBO_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBK_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBO_4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B26_NtB26_13CallArguments4iter0ENtB4_13SpecAdvanceBy15spec_advance_byB2c_(ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order9walk_bodyNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1b_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order12walk_patternNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1f_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order14walk_argumentsNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1h_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order14walk_decoratorNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1h_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order14walk_with_itemNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1h_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order15walk_match_caseNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1i_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order15walk_parametersNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1i_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order15walk_type_paramNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1i_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order16walk_type_paramsNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1j_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order19walk_except_handlerNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1m_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order20walk_pattern_keywordNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1n_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order21walk_elif_else_clauseNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1o_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order22walk_pattern_argumentsNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1p_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order32walk_interpolated_string_elementNtNtCsoTR8nlGN3X_18ty_python_semantic10pull_types16PullTypesVisitorEB1z_(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic10walk_unionNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable18walk_callable_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function18walk_function_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18walk_type_var_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias20walk_type_alias_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20walk_typed_dict_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super21walk_bound_super_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_of21walk_subclass_of_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method22walk_bound_method_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic22walk_intersection_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance24walk_known_instance_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method24walk_method_wrapper_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss4_1__NtB8_18EnumComplementType4restDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype26walk_newtype_instance_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance26walk_nominal_instance_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsoTR8nlGN3X_18ty_python_semantic5types27walk_property_instance_typeNtNvNtNtB2_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB4_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance27walk_protocol_instance_typeNtNvNtNtB4_4call4bind29inferable_typevar_occurrences23InferableTypeVarVisitorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic10walk_unionNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18walk_type_var_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias20walk_type_alias_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20walk_typed_dict_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super21walk_bound_super_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_of21walk_subclass_of_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method22walk_bound_method_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic22walk_intersection_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics19walk_specializationNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance24walk_known_instance_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method24walk_method_wrapper_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype26walk_newtype_instance_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance26walk_nominal_instance_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsoTR8nlGN3X_18ty_python_semantic5types27walk_property_instance_typeNtNvNtNtB2_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB4_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance27walk_protocol_instance_typeNtNvNtNtB4_4call4bind34generic_contexts_mentioned_in_type23GenericContextCollectorEB6_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #50

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #50

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #45 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #50 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #51 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #54 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #59 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #61 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #62 = { cold }
attributes #63 = { cold noreturn nounwind }
attributes #64 = { noreturn }
attributes #65 = { nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{ptr @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic, null}
!5 = distinct !{null, ptr @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic}
!6 = distinct !{null, ptr @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic, null}
!7 = distinct !{ptr @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic, null, ptr @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic, null, null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 2, !"RtLibUseGOT", i32 1}
!10 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!11 = !{i32 -1, i32 33}
!12 = !{}
!13 = !{i64 8}
!14 = !{i64 -2, i64 -9223372036854775808}
!15 = !{i64 0, i64 3}
!16 = !{i64 4}
!17 = !{i8 0, i8 2}
!18 = !{i8 0, i8 6}
!19 = !{i32 0, i32 3}
!20 = !{i32 1, i32 0}
!21 = !{i32 -2, i32 37}
!22 = !{i64 0, i64 2}
!23 = !{i32 -2, i32 5}
!24 = !{i8 0, i8 -45}
!25 = !{i32 0, i32 39}
!26 = !{i32 -1, i32 37}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{i64 0, i64 -9223372036854775806}
!30 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!31 = !{i64 0, i64 -9223372036854775807}
!32 = !{i64 0, i64 -9223372036854775808}
!33 = !{i64 0, i64 5}
!34 = !{i32 0, i32 5}
!35 = !{i64 0, i64 20}
!36 = !{i32 0, i32 37}
!37 = !{i32 0, i32 7}
!38 = !{i32 0, i32 12}
!39 = !{i32 -1, i32 5}
!40 = !{i8 0, i8 26}
!41 = !{i64 -1, i64 -9223372036854775808}
!42 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!43 = !{i8 0, i8 3}
!44 = !{i64 -1, i64 3}
!45 = !{i64 -2, i64 5}
!46 = !{i8 -1, i8 -45}
!47 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 1, i32 2000, i32 1}
!48 = !{i32 0, i32 33}
!49 = !{i64 0, i64 -9223372036854775800}
!50 = !{i64 -3, i64 -9223372036854775808}
!51 = !{i32 -4, i32 37}
!52 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!53 = !{i32 -3, i32 37}
!54 = !{i32 0, i32 41}
!55 = !{i64 1, i64 0}
!56 = !{i8 -1, i8 3}
!57 = !{i32 0, i32 4}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{i32 -2, i32 9}
!60 = !{i8 0, i8 37}
!61 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!62 = !{i32 0, i32 20}
!63 = !{i8 0, i8 4}
!64 = !{i32 -1, i32 7}
!65 = !{i32 0, i32 24}
!66 = !{i32 0, i32 2}
!67 = !{i32 -2, i32 3}
!68 = !{i32 -2, i32 8}
!69 = !{i32 -2, i32 39}
!70 = !{i8 -1, i8 7}
!71 = !{i32 -1, i32 3}
!72 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1}
!73 = !{i32 -1, i32 8}
!74 = !{!"branch_weights", i32 1, i32 2000, i32 1, i32 1, i32 1}
!75 = !{i32 -1, i32 39}
!76 = !{i8 0, i8 7}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = !{i64 0, i64 18}
!79 = !{i8 97, i8 1}
!80 = !{i8 0, i8 10}
!81 = !{i8 -1, i8 -38}
!82 = !{i8 97, i8 0}
!83 = !{i8 0, i8 13}
!84 = !{ptr @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic}
!85 = !{ptr @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic}
!86 = !{i8 0, i8 9}
!87 = distinct !{!87, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind22CallDiagnosticOverrideE6map_orRNtNtBR_4lint12LintMetadataNCINvMBL_NtBL_21CallDiagnosticContext11report_lintNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeE0EBR_"}
!88 = distinct !{!88, !87, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind22CallDiagnosticOverrideE6map_orRNtNtBR_4lint12LintMetadataNCINvMBL_NtBL_21CallDiagnosticContext11report_lintNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeE0EBR_: argument 0"}
!89 = distinct !{!89, i1 true, !"_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_21CallDiagnosticContext11report_lintNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEs_0Bb_"}
!90 = distinct !{!90, !89, !"_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_21CallDiagnosticContext11report_lintNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEs_0Bb_: argument 1"}
!91 = distinct !{!91, !89, !"_RNCINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_21CallDiagnosticContext11report_lintNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEs_0Bb_: argument 0"}
!92 = !{!88}
!93 = !{!91, !90}
!94 = !{!90}
!95 = distinct !{!95, i1 true, !"_RINvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB3_18ConstructorBinding3mapNCNvNvMs39_B9_NtB9_4Type20constructor_bindings20bind_constructor_new0EBb_"}
!96 = distinct !{!96, !95, !"_RINvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB3_18ConstructorBinding3mapNCNvNvMs39_B9_NtB9_4Type20constructor_bindings20bind_constructor_new0EBb_: argument 2"}
!97 = distinct !{!97, i1 true, !"_RNCNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBa_4Type20constructor_bindings20bind_constructor_new0Bc_"}
!98 = distinct !{!98, !97, !"_RNCNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBa_4Type20constructor_bindings20bind_constructor_new0Bc_: argument 1"}
!99 = distinct !{!99, !95, !"_RINvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB3_18ConstructorBinding3mapNCNvNvMs39_B9_NtB9_4Type20constructor_bindings20bind_constructor_new0EBb_: argument 1"}
!100 = distinct !{!100, !95, !"_RINvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB3_18ConstructorBinding3mapNCNvNvMs39_B9_NtB9_4Type20constructor_bindings20bind_constructor_new0EBb_: argument 0"}
!101 = distinct !{!101, !97, !"_RNCNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBa_4Type20constructor_bindings20bind_constructor_new0Bc_: argument 2"}
!102 = distinct !{!102, !97, !"_RNCNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBa_4Type20constructor_bindings20bind_constructor_new0Bc_: argument 0"}
!103 = distinct !{!103, i1 true, !"_RNCNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBa_4Type20constructor_bindings20bind_constructor_new0Bc_"}
!104 = distinct !{!104, !103, !"_RNCNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBa_4Type20constructor_bindings20bind_constructor_new0Bc_: argument 2"}
!105 = distinct !{!105, !103, !"_RNCNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBa_4Type20constructor_bindings20bind_constructor_new0Bc_: argument 1"}
!106 = distinct !{!106, !103, !"_RNCNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBa_4Type20constructor_bindings20bind_constructor_new0Bc_: argument 0"}
!107 = !{!96}
!108 = !{!98}
!109 = !{!102, !98, !101, !100, !99, !96}
!110 = !{!102, !98, !100, !96}
!111 = !{!98, !96}
!112 = !{!100, !99, !96}
!113 = !{!99, !96}
!114 = !{!106, !105, !104}
!115 = !{!105}
!116 = distinct !{!116, i1 true, !"_RNCINvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB8_11DebugStruct10field_withNCNvXsl_Ba_PDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_NtBa_7Pointer3fmt0E0CsoTR8nlGN3X_18ty_python_semantic"}
!117 = distinct !{!117, !116, !"_RNCINvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB8_11DebugStruct10field_withNCNvXsl_Ba_PDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_NtBa_7Pointer3fmt0E0CsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!118 = !{!117}
!119 = distinct !{!119, i1 true, !"_RNCINvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB8_11DebugStruct10field_withNCNvXsl_Ba_PNtNtNtBc_3ptr8metadata6VTableNtBa_7Pointer3fmt0E0CsoTR8nlGN3X_18ty_python_semantic"}
!120 = distinct !{!120, !119, !"_RNCINvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB8_11DebugStruct10field_withNCNvXsl_Ba_PNtNtNtBc_3ptr8metadata6VTableNtBa_7Pointer3fmt0E0CsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!121 = !{!120}
!122 = distinct !{!122, i1 true, !"_RNCINvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB8_11DebugStruct10field_withNCNvXsl_Ba_PyNtBa_7Pointer3fmt0E0CsoTR8nlGN3X_18ty_python_semantic"}
!123 = distinct !{!123, !122, !"_RNCINvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB8_11DebugStruct10field_withNCNvXsl_Ba_PyNtBa_7Pointer3fmt0E0CsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!124 = !{!123}
!125 = distinct !{null}
!126 = distinct !{!126, i1 true, !"_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairs0_0EBa_"}
!127 = distinct !{!127, !126, !"_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairs0_0EBa_: argument 3"}
!128 = distinct !{!128, !126, !"_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairs0_0EBa_: argument 2"}
!129 = distinct !{!129, !126, !"_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairs0_0EBa_: argument 1"}
end_hunk_2
