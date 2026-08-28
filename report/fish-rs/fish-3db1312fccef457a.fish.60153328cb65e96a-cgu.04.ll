Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNvXs4_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_13BinaryPrimaryNtB5_10Expression8evaluate:bb.a
  unreachable

bb.b:                                             ; preds = %bb.u, %bb.c
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5171
  call void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_path(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.j, i64 noundef %i.l), !noalias !5173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5171
  call void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_path(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.n, i64 noundef %i.p), !noalias !5174
  switch i8 %i.h, label %bb.b [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.a
  %i.q = trunc nuw i8 %i.h to i1
  %i.r = icmp eq i64 %i.l, %i.p                   ; 2 uses
  br i1 %i.q, label %bb.o, label %bb.p

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5171
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !5171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5171
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !5171
  %i.u = call fastcc noundef zeroext i1 @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions12parse_number(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.j, i64 noundef %i.l, ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !noalias !5169
  br i1 %i.u, label %bb.s, label %bb.t

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.w = load i64, ptr %i.v, align 8, !noalias !5171, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = load i64, ptr %i.x, align 8, !noalias !5171, !noundef !4 ; 2 uses
  %i.z = icmp eq i64 %i.w, %i.y
  %i.aa = icmp slt i64 %i.w, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !5171
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !5171
  %i.af = icmp slt i64 %i.ae, %i.ac
  %.sroa.08.0.i = select i1 %i.z, i1 %i.af, i1 %i.aa
  br label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !5171, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !5171, !noundef !4 ; 2 uses
  %i.ak = icmp eq i64 %i.ah, %i.aj
  %i.al = icmp slt i64 %i.ah, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.an = load i64, ptr %i.am, align 8, !noalias !5171
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !5171
  %i.aq = icmp slt i64 %i.ap, %i.an
  %.sroa.06.0.i = select i1 %i.ak, i1 %i.aq, i1 %i.al
  br label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !5175)
  call void @llvm.experimental.noalias.scope.decl(metadata !5178)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !5175, !noalias !5180, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !5178, !noalias !5181, !noundef !4
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !5175, !noalias !5180, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !5178, !noalias !5181, !noundef !4
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !5175, !noalias !5180, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !5178, !noalias !5181, !noundef !4
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !5175, !noalias !5180, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !5178, !noalias !5181, !noundef !4
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.l, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !5175, !noalias !5180, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !5178, !noalias !5181, !noundef !4
  %i.bp = icmp eq i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.m, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.d, align 8, !alias.scope !5175, !noalias !5180, !noundef !4
  %i.br = load i64, ptr %i.c, align 8, !alias.scope !5178, !noalias !5181, !noundef !4
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !5175, !noalias !5180, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !5178, !noalias !5181, !noundef !4
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i

_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.04.0.in.i = phi i1 [ %.sroa.08.0.i, %bb.f ], [ %.sroa.06.0.i, %bb.g ], [ %i.bx, %bb.n ], [ false, %bb.h ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5171
  br label %_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23binary_primary_evaluate.exit

bb.o:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.r, label %_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23binary_primary_evaluate.exit

bb.p:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.q, label %_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23binary_primary_evaluate.exit

bb.q:                                             ; preds = %bb.p
  %i.by = shl nuw i64 %i.l, 2
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 4 %i.j, ptr nonnull readonly align 4 %i.n, i64 %i.by), !alias.scope !5182, !noalias !5174
  %i.bz = icmp eq i32 %bcmp.i, 0
  br label %_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23binary_primary_evaluate.exit

bb.r:                                             ; preds = %bb.o
  %i.ca = shl nuw i64 %i.l, 2
  %bcmp21.i = tail call i32 @bcmp(ptr nonnull readonly align 4 %i.j, ptr nonnull readonly align 4 %i.n, i64 %i.ca), !alias.scope !5182, !noalias !5174
  %i.cb = icmp ne i32 %bcmp21.i, 0
  br label %_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23binary_primary_evaluate.exit

bb.s:                                             ; preds = %bb.e
  %i.cc = call fastcc noundef zeroext i1 @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions12parse_number(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.cc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5171
  br label %_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23binary_primary_evaluate.exit

bb.u:                                             ; preds = %bb.s
  %i.cd = load i64, ptr %i.b, align 8, !noalias !5171, !noundef !4 ; 10 uses
  %i.ce = load i64, ptr %i.a, align 8, !noalias !5171, !noundef !4 ; 10 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %bb.v
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 4, label %bb.z
    i8 5, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.ab, label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.cg = icmp ne i64 %i.cd, %i.ce
  %i.ch = load double, ptr %i.s, align 8, !noalias !5171
  %i.ci = load double, ptr %i.t, align 8, !noalias !5171
  %i.cj = fcmp une double %i.ch, %i.ci
  %.sroa.014.0.i = select i1 %i.cg, i1 true, i1 %i.cj
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.ck = icmp eq i64 %i.cd, %i.ce
  %i.cl = icmp sgt i64 %i.cd, %i.ce
  br i1 %i.ck, label %bb.ad, label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.cm = icmp eq i64 %i.cd, %i.ce
  %i.cn = icmp sge i64 %i.cd, %i.ce
  br i1 %i.cm, label %bb.ae, label %bb.ac

bb.z:                                             ; preds = %bb.u
  %i.co = icmp eq i64 %i.cd, %i.ce
  %i.cp = icmp slt i64 %i.cd, %i.ce
  br i1 %i.co, label %bb.af, label %bb.ac

bb.aa:                                            ; preds = %bb.u
  %i.cq = icmp eq i64 %i.cd, %i.ce
  %i.cr = icmp sle i64 %i.cd, %i.ce
  br i1 %i.cq, label %bb.ag, label %bb.ac

bb.ab:                                            ; preds = %bb.v
  %i.cs = load double, ptr %i.s, align 8, !noalias !5171, !noundef !4
  %i.ct = load double, ptr %i.t, align 8, !noalias !5171, !noundef !4
  %i.cu = fcmp oeq double %i.cs, %i.ct
  br label %bb.ac

bb.ac:                                            ; preds = %10, %bb.ag, %7, %bb.af, %bb.ae, %4, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.04.2.i = phi i1 [ %i.cu, %bb.ab ], [ %i.cp, %bb.z ], [ %.sroa.014.0.i, %bb.w ], [ false, %bb.v ], [ %i.cl, %bb.x ], [ %i.cn, %bb.y ], [ false, %bb.ad ], [ %5, %4 ], [ %i.cr, %bb.aa ], [ %i.cz, %bb.ae ], [ %8, %7 ], [ false, %bb.af ], [ true, %10 ], [ false, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5171
  br label %_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23binary_primary_evaluate.exit

bb.ad:                                            ; preds = %bb.x
  %i.cv = load double, ptr %i.s, align 8, !noalias !5171, !noundef !4 ; 2 uses
  %i.cw = load double, ptr %i.t, align 8, !noalias !5171, !noundef !4 ; 2 uses
  %3 = fcmp ugt double %i.cv, %i.cw
  br i1 %3, label %4, label %bb.ac

4:                                                ; preds = %bb.ad
  %5 = fcmp oge double %i.cv, %i.cw
  br label %bb.ac

bb.ae:                                            ; preds = %bb.y
  %i.cx = load double, ptr %i.s, align 8, !noalias !5171, !noundef !4
  %i.cy = load double, ptr %i.t, align 8, !noalias !5171, !noundef !4
  %i.cz = fcmp oge double %i.cx, %i.cy
  br label %bb.ac

bb.af:                                            ; preds = %bb.z
  %i.da = load double, ptr %i.s, align 8, !noalias !5171, !noundef !4 ; 2 uses
  %i.db = load double, ptr %i.t, align 8, !noalias !5171, !noundef !4 ; 2 uses
  %6 = fcmp ugt double %i.da, %i.db
  br i1 %6, label %bb.ac, label %7

7:                                                ; preds = %bb.af
  %8 = fcmp ult double %i.da, %i.db
  br label %bb.ac

bb.ag:                                            ; preds = %bb.aa
  %i.dc = load double, ptr %i.s, align 8, !noalias !5171, !noundef !4
  %i.dd = load double, ptr %i.t, align 8, !noalias !5171, !noundef !4
  %9 = fcmp ugt double %i.dc, %i.dd
  br i1 %9, label %bb.ac, label %10

10:                                               ; preds = %bb.ag
  br label %bb.ac

_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23binary_primary_evaluate.exit: ; preds = %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i, %bb.o, %bb.p, %bb.q, %bb.r, %bb.t, %bb.ac
  %.sroa.04.1.i = phi i1 [ %.sroa.04.0.in.i, %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.p ], [ %i.bz, %bb.q ], [ false, %bb.t ], [ %.sroa.04.2.i, %bb.ac ], [ %i.cb, %bb.r ], [ true, %bb.o ]
  ret i1 %.sroa.04.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_RNvXs5_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_13UnaryOperatorNtB5_10Expression5range(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !alias.scope !5137, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.b, align 8, !alias.scope !5140, !noundef !4
  %i.c = insertvalue { i64, i64 } poison, i64 %.val, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.val1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_13UnaryOperatorNtB5_10Expression8evaluate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !123, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #39
  %i.g = xor i1 %i.f, true
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_RNvXs6_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_19CombiningExpressionNtB5_10Expression5range(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i64, ptr %i.a, align 8, !alias.scope !5137, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1 = load i64, ptr %i.b, align 8, !alias.scope !5140, !noundef !4
  %i.c = insertvalue { i64, i64 } poison, i64 %.val, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.val1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_19CombiningExpressionNtB5_10Expression8evaluate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 8 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @476) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !123, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !4, !nonnull !4
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #39 ; 0 uses
  %i.m = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add nuw i64 %i.o, 1                      ; 2 uses
  store i64 %i.q, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %bb.e, label %bb.d, !prof !87

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @477) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp eq i64 %i.d, 1
  br i1 %i.s, label %bb.f, label %.preheader19.split

.preheader19.split:                               ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4
  %i.v = add nsw i64 %i.d, -1
  br label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.x = load ptr, ptr %i.h, align 8, !nonnull !4, !align !123, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !4, !nonnull !4
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #39
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge, %._crit_edge.thread34, %bb.f
  %.sroa.0.0 = phi i1 [ %i.aa, %bb.f ], [ %i.ad, %._crit_edge.thread34 ], [ true, %.preheader ], [ %i.ap, %._crit_edge ]
  ret i1 %.sroa.0.0

.preheader:                                       ; preds = %.preheader19.split, %._crit_edge
  %.sroa.04.028 = phi i64 [ 0, %.preheader19.split ], [ %i.am, %._crit_edge ] ; 2 uses
  %i.ab = icmp ult i64 %.sroa.04.028, %i.d
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.sroa.04.123 = phi i64 [ %i.am, %bb.i ], [ %.sroa.04.028, %.preheader ] ; 4 uses
  %.sroa.011.022 = phi i8 [ %.sroa.011.2, %bb.i ], [ 1, %.preheader ]
  %i.ac = trunc nuw i8 %.sroa.011.022 to i1
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.011.2 = phi i8 [ %i.al, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.04.123, %i.v
  br i1 %exitcond.not, label %._crit_edge.thread34, label %bb.i

._crit_edge.thread34:                             ; preds = %bb.g
  %i.ad = trunc nuw i8 %.sroa.011.2 to i1
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.04.123 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !123, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !4, !nonnull !4
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #39
  %i.al = zext i1 %i.ak to i8
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.am = add i64 %.sroa.04.123, 1                ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.123
  %i.ao = load i8, ptr %i.an, align 1, !range !124, !noundef !4
  %.not18 = icmp eq i8 %i.ao, 0
  br i1 %.not18, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %i.ap = trunc nuw i8 %.sroa.011.2 to i1         ; 2 uses
  %i.aq = icmp uge i64 %i.am, %i.d
  %or.cond = or i1 %i.aq, %i.ap
  br i1 %or.cond, label %.loopexit, label %.preheader
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5186)
  %..i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %3, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %.not.i = icmp eq i64 %..i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = add nuw nsw i64 %.sroa.01.019.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.a, %..i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.b = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %1, i64 range(i64 0, 2305843009213693952) %3)
  br label %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish.exit

.loopexit.i:                                      ; preds = %.lr.ph.i
  %i.c = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val15.i, i32 %.val16.i)
  br label %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.01.019.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.019.i
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.01.019.i
  %.val15.i = load i32, ptr %i.d, align 4, !alias.scope !5183, !noalias !5186, !noundef !4 ; 2 uses
  %.val16.i = load i32, ptr %i.e, align 4, !alias.scope !5186, !noalias !5183, !noundef !4 ; 2 uses
  %i.f = icmp eq i32 %.val15.i, %.val16.i
  br i1 %i.f, label %bb.b, label %.loopexit.i

_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge.i, %.loopexit.i
  %.sroa.0.0.i = phi i8 [ %i.b, %._crit_edge.i ], [ %i.c, %.loopexit.i ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs7_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_11EnvNodeIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !noundef !4   ; 6 uses
  store ptr %i.b, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b
end_hunk_0
