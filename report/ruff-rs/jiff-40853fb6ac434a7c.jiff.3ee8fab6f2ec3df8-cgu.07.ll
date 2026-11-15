Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/jiff-40853fb6ac434a7c.jiff.3ee8fab6f2ec3df8-cgu.07?download=true
inline.NumInlined: 177
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter10print_span:bb.a

bb.cd:                                            ; preds = %bb.cc
  %i.rh = extractelement <4 x i32> %i.qk, i64 2
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.rj = extractelement <4 x i32> %i.qk, i64 1
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  %i.rl = extractelement <4 x i32> %i.qk, i64 0
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.rn = icmp eq i16 %i.qp, 0
  br i1 %i.rn, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.ro = icmp eq i16 %i.qu, 0
  br i1 %i.ro, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.rp = icmp eq i8 %i.qz, 0
  br i1 %i.rp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.rq = icmp samesign ugt i32 %.sroa.4.0.i108.i, 99999999
  %spec.select105.i = zext i1 %i.rq to i8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %.split.i
  %.sroa.06.0.i.lcssa.i = phi i8 [ 3, %bb.ch ], [ 9, %.split.i ], [ 8, %bb.cc ], [ %spec.select105.i, %bb.cj ], [ 7, %bb.cd ], [ 4, %bb.cg ], [ 6, %bb.ce ], [ 2, %bb.ci ], [ 5, %bb.cf ] ; 2 uses
  %i.rr = zext nneg i8 %.sroa.06.0.i.lcssa.i to i64 ; 3 uses
  %i.rs = zext nneg i16 %i.qb to i64              ; 2 uses
  %i.rt = sub nuw nsw i64 78, %i.rs
  %.not20.i.i = icmp samesign ult i64 %i.rt, %i.rr
  br i1 %.not20.i.i, label %bb.cl, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i, !prof !9

bb.cl:                                            ; preds = %bb.ck
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #13, !noalias !1164
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i: ; preds = %bb.ck
  %i.ru = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rs
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.ru, i64 noundef %i.rr, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.rr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !1164
  %i.rv = zext nneg i8 %.sroa.06.0.i.lcssa.i to i16
  %i.rw = add nuw nsw i16 %i.qb, %i.rv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1164
  br label %bb.bw

_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit60.i, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit54.i, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit52.i, %bb.z, %bb.as
  %.sroa.9.6 = phi i16 [ %.sroa.9.5, %bb.as ], [ %.sroa.9.3, %bb.z ], [ %i.nb, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit54.i ], [ %i.py, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit52.i ], [ %i.hp, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit60.i ]
  %i.rx = zext nneg i16 %.sroa.9.6 to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.rz = load ptr, ptr %i.ry, align 8, !invariant.load !6, !nonnull !6
  %i.sa = call { i64, ptr } %i.rz(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.rx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.sa
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter21print_signed_duration(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 !guid !1169 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [35 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 35, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i16 0, ptr %i.d, align 8
  %i.e = load i64, ptr %1, align 8, !noundef !6   ; 4 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !noundef !6 ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, label %bb.c

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  store i8 45, ptr %i.b, align 1, !noalias !1170
  store i16 1, ptr %i.d, align 8, !alias.scope !1170
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = sub i64 0, %i.e
  %.sroa.04.0.pre = load i32, ptr %i.j, align 8
  br label %bb.c

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  store i8 45, ptr %i.b, align 1, !noalias !1171
  store i16 1, ptr %i.d, align 8, !alias.scope !1171
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8
  %.sroa.04.0 = phi i32 [ %.sroa.04.0.pre, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8 ], [ %i.h, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit ], [ %i.h, %bb.b ]
  %.sroa.02.0 = phi i64 [ %i.k, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8 ], [ %i.e, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.03.0 = call i32 @llvm.abs.i32(i32 %.sroa.04.0, i1 false) ; 4 uses
  %i.l = icmp ult i32 %.sroa.03.0, 1000000000
  br i1 %i.l, label %_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration3new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = udiv i32 %.sroa.03.0, 1000000000
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add nuw i64 %.sroa.02.0, %i.n
  %i.p = urem i32 %.sroa.03.0, 1000000000
  br label %_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration3new.exit

_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration3new.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i32 [ %i.p, %bb.d ], [ %.sroa.03.0, %bb.c ]
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.02.0, %bb.c ]
  %.val = load ptr, ptr %0, align 8
  call fastcc void @_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter28print_unsigned_duration_impl(ptr %.val, i64 %.sroa.0.0.i, i32 %.sroa.3.0.i, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.r = load i16, ptr %i.d, align 8, !noundef !6
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !6, !nonnull !6
  %i.v = call { i64, ptr } %i.u(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter23print_unsigned_duration(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 !guid !1172 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [35 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 35, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.d, align 8
  %.val = load ptr, ptr %0, align 8
  %.val1 = load i64, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i32, ptr %i.e, align 8
  call fastcc void @_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter28print_unsigned_duration_impl(ptr %.val, i64 %.val1, i32 %.val2, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.g = load i16, ptr %i.d, align 8, !noundef !6
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !6, !nonnull !6
  %i.k = call { i64, ptr } %i.j(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter28print_unsigned_duration_impl(ptr nofree readonly captures(none) %.0.val, i64 %.0.val1, i32 %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !guid !1193 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1194, !noundef !6 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !1194, !noundef !6 ; 3 uses
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %.not.i30 = icmp eq i64 %i.c, %i.f
  br i1 %.not.i30, label %bb.b, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit31, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !1194
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit31: ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1194, !nonnull !6, !noundef !6 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store i8 80, ptr %i.h, align 1, !noalias !1194
  %i.i = add i16 %i.e, 1                          ; 2 uses
  store i16 %i.i, ptr %i.d, align 8, !alias.scope !1194
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %.not.i28 = icmp eq i64 %i.c, %i.j
  br i1 %.not.i28, label %bb.c, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29, !prof !9

bb.c:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit31
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !1195
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit31
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  store i8 84, ptr %i.k, align 1, !noalias !1195
  %i.l = add i16 %i.e, 2                          ; 5 uses
  store i16 %i.l, ptr %i.d, align 8, !alias.scope !1195
  %i.m = icmp ugt i64 %.0.val1, 59
  br i1 %i.m, label %bb.d, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit: ; preds = %bb.o, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29
  %i.n = phi i16 [ %i.ca, %bb.o ], [ %i.l, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29 ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.zext4, %bb.o ], [ %.0.val1, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.o = icmp samesign ult i64 %.sroa.0.0, 10     ; 2 uses
  %spec.select50 = select i1 %i.o, i8 1, i8 2     ; 2 uses
  %i.p = zext nneg i8 %spec.select50 to i64       ; 4 uses
  %i.q = zext i16 %i.n to i64                     ; 2 uses
  %i.r = sub nuw i64 %i.c, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q ; 3 uses
  %.not.i15 = icmp ult i64 %i.r, %i.p
  br i1 %.not.i15, label %2, label %.preheader.preheader, !prof !10

.preheader.preheader:                             ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit
  %xtraiter54 = and i64 %i.p, 1
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.t = add nsw i64 %i.p, -1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = urem i64 %.sroa.0.0, 10
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = or disjoint i8 %i.w, 48
  store i8 %i.x, ptr %i.u, align 1, !noalias !1196
  %1 = udiv i64 %.sroa.0.0, 10
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.sroa.0.0.i1714.unr = phi i64 [ %.sroa.0.0, %.preheader.preheader ], [ %1, %.preheader.prol ]
  %.sroa.03.0.i1613.unr = phi i64 [ %i.p, %.preheader.preheader ], [ %i.t, %.preheader.prol ]
  br i1 %i.o, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19, label %.preheader

2:                                                ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13, !noalias !1196
  unreachable

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.sroa.0.0.i1714 = phi i64 [ %9, %.preheader ], [ %.sroa.0.0.i1714.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.sroa.03.0.i1613 = phi i64 [ %8, %.preheader ], [ %.sroa.03.0.i1613.unr, %.preheader.prol.loopexit ] ; 2 uses
  %3 = getelementptr i8, ptr %i.s, i64 %.sroa.03.0.i1613
  %i.y = getelementptr i8, ptr %3, i64 -1
  %4 = urem i64 %.sroa.0.0.i1714, 10
  %5 = trunc nuw nsw i64 %4 to i8
  %6 = or disjoint i8 %5, 48
  store i8 %6, ptr %i.y, align 1, !noalias !1196
  %7 = udiv i64 %.sroa.0.0.i1714, 10
  %8 = add nsw i64 %.sroa.03.0.i1613, -2          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %8
  %i.aa = urem i64 %7, 10
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, 48
  store i8 %i.ac, ptr %i.z, align 1, !noalias !1196
  %9 = udiv i64 %.sroa.0.0.i1714, 100
  %.not8.i18.1 = icmp eq i64 %8, 0
  br i1 %.not8.i18.1, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19, label %.preheader

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19: ; preds = %.preheader, %.preheader.prol.loopexit
  %i.ad = zext nneg i8 %spec.select50 to i16
  %i.ae = add i16 %i.n, %i.ad                     ; 4 uses
  store i16 %i.ae, ptr %i.d, align 8, !alias.scope !1196
  %i.af = icmp eq i32 %.8.val, 0
  br i1 %i.af, label %bb.t, label %bb.x

bb.d:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29
  %i.ag = urem i64 %.0.val1, 3600                 ; 3 uses
  %i.ah = udiv i64 %.0.val1, 3600                 ; 3 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.ag to i16    ; 2 uses
  %i.ai = udiv i16 %.lhs.trunc, 60
  %.zext = trunc nuw nsw i16 %i.ai to i8          ; 3 uses
  %i.aj = urem i16 %.lhs.trunc, 60                ; 2 uses
  %.zext4 = zext nneg i16 %i.aj to i64
  %i.ak = icmp ult i64 %.0.val1, 3600
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit27, %bb.d
  %i.al = phi i16 [ %i.bz, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit27 ], [ %i.l, %bb.d ] ; 3 uses
  %i.am = icmp samesign ult i64 %i.ag, 60
  br i1 %i.am, label %bb.o, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit36

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.an = icmp ult i64 %.0.val1, 36000
  br i1 %i.an, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit34, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp ult i64 %.0.val1, 360000
  br i1 %i.ao, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit34, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp ult i64 %.0.val1, 3600000
  br i1 %i.ap, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ult i64 %.0.val1, 36000000
  br i1 %i.aq, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call fastcc noundef i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl(i64 noundef %i.ah), !noalias !1197 ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 20
  tail call void @llvm.assume(i1 %i.as), !noalias !1197
  %i.at = trunc nuw nsw i32 %i.ar to i8
  %i.au = add nuw nsw i8 %i.at, 1
  br label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit34

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit34: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i33 = phi i8 [ %i.au, %bb.j ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ], [ 4, %bb.i ] ; 3 uses
  %i.av = zext nneg i8 %.sroa.0.0.i33 to i64      ; 4 uses
  %i.aw = zext i16 %i.l to i64                    ; 2 uses
  %i.ax = sub nuw i64 %i.c, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aw ; 3 uses
  %.not.i10 = icmp ult i64 %i.ax, %i.av
  br i1 %.not.i10, label %bb.k, label %.preheader7.preheader, !prof !10

.preheader7.preheader:                            ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit34
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader7.prol.loopexit, label %.preheader7.prol

.preheader7.prol:                                 ; preds = %.preheader7.preheader
  %i.az = add nsw i64 %i.av, -1                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %i.bb = urem i64 %i.ah, 10
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  %i.bd = or disjoint i8 %i.bc, 48
  store i8 %i.bd, ptr %i.ba, align 1, !noalias !1197
  %i.be = udiv i64 %.0.val1, 36000
  br label %.preheader7.prol.loopexit

.preheader7.prol.loopexit:                        ; preds = %.preheader7.prol, %.preheader7.preheader
  %.sroa.0.0.i1210.unr = phi i64 [ %i.ah, %.preheader7.preheader ], [ %i.be, %.preheader7.prol ]
  %.sroa.03.0.i119.unr = phi i64 [ %i.av, %.preheader7.preheader ], [ %i.az, %.preheader7.prol ]
  %i.bf = icmp eq i8 %.sroa.0.0.i33, 1
  br i1 %i.bf, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14, label %.preheader7

bb.k:                                             ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit34
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13, !noalias !1197
  unreachable

.preheader7:                                      ; preds = %.preheader7.prol.loopexit, %.preheader7
  %.sroa.0.0.i1210 = phi i64 [ %i.br, %.preheader7 ], [ %.sroa.0.0.i1210.unr, %.preheader7.prol.loopexit ] ; 3 uses
  %.sroa.03.0.i119 = phi i64 [ %i.bm, %.preheader7 ], [ %.sroa.03.0.i119.unr, %.preheader7.prol.loopexit ] ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %.sroa.03.0.i119
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = urem i64 %.sroa.0.0.i1210, 10
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, 48
  store i8 %i.bk, ptr %i.bh, align 1, !noalias !1197
  %i.bl = udiv i64 %.sroa.0.0.i1210, 10
  %i.bm = add nsw i64 %.sroa.03.0.i119, -2        ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm
  %i.bo = urem i64 %i.bl, 10
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  %i.bq = or disjoint i8 %i.bp, 48
  store i8 %i.bq, ptr %i.bn, align 1, !noalias !1197
  %i.br = udiv i64 %.sroa.0.0.i1210, 100
  %.not8.i13.1 = icmp eq i64 %i.bm, 0
  br i1 %.not8.i13.1, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14, label %.preheader7

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14: ; preds = %.preheader7, %.preheader7.prol.loopexit
  %i.bs = zext nneg i8 %.sroa.0.0.i33 to i16
  %i.bt = add i16 %i.l, %i.bs                     ; 3 uses
  store i16 %i.bt, ptr %i.d, align 8, !alias.scope !1197
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.val, i64 5
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !8

bb.l:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1198
  unreachable

bb.m:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14
  %i.bx = zext i16 %i.bt to i64                   ; 2 uses
  %.not.i26 = icmp eq i64 %i.c, %i.bx
  br i1 %.not.i26, label %bb.n, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit27, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !1198
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit27: ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bx
  store i8 %i.bv, ptr %i.by, align 1, !noalias !1198
  %i.bz = add i16 %i.bt, 1                        ; 2 uses
  store i16 %i.bz, ptr %i.d, align 8, !alias.scope !1198
  br label %bb.e

bb.o:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit25, %bb.e
  %i.ca = phi i16 [ %i.cx, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit25 ], [ %i.al, %bb.e ]
  %i.cb = icmp eq i16 %i.aj, 0
  %i.cc = icmp eq i32 %.8.val, 0
  %or.cond = and i1 %i.cc, %i.cb
  br i1 %or.cond, label %bb.s, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit36: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.cd = icmp samesign ult i64 %i.ag, 600        ; 2 uses
  %spec.select = select i1 %i.cd, i8 1, i8 2      ; 2 uses
  %i.ce = zext nneg i8 %spec.select to i64        ; 4 uses
  %i.cf = zext i16 %i.al to i64                   ; 2 uses
  %i.cg = sub nuw i64 %i.c, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cf ; 3 uses
  %.not.i = icmp ult i64 %i.cg, %i.ce
  br i1 %.not.i, label %11, label %.preheader6.preheader, !prof !10

.preheader6.preheader:                            ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit36
  %xtraiter52 = and i64 %i.ce, 1
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.preheader6.prol.loopexit, label %.preheader6.prol

.preheader6.prol:                                 ; preds = %.preheader6.preheader
  %i.ci = add nsw i64 %i.ce, -1                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  %i.ck = urem i8 %.zext, 10
  %i.cl = or disjoint i8 %i.ck, 48
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !1199
  %10 = udiv i8 %.zext, 10
  br label %.preheader6.prol.loopexit

.preheader6.prol.loopexit:                        ; preds = %.preheader6.prol, %.preheader6.preheader
  %.sroa.0.0.i12.unr = phi i8 [ %.zext, %.preheader6.preheader ], [ %10, %.preheader6.prol ]
  %.sroa.03.0.i11.unr = phi i64 [ %i.ce, %.preheader6.preheader ], [ %i.ci, %.preheader6.prol ]
  br i1 %i.cd, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit, label %.preheader6

11:                                               ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit36
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13, !noalias !1199
  unreachable

.preheader6:                                      ; preds = %.preheader6.prol.loopexit, %.preheader6
  %.sroa.0.0.i12 = phi i8 [ %17, %.preheader6 ], [ %.sroa.0.0.i12.unr, %.preheader6.prol.loopexit ] ; 3 uses
  %.sroa.03.0.i11 = phi i64 [ %16, %.preheader6 ], [ %.sroa.03.0.i11.unr, %.preheader6.prol.loopexit ] ; 2 uses
  %12 = getelementptr i8, ptr %i.ch, i64 %.sroa.03.0.i11
  %i.cm = getelementptr i8, ptr %12, i64 -1
  %13 = urem i8 %.sroa.0.0.i12, 10
  %14 = or disjoint i8 %13, 48
  store i8 %14, ptr %i.cm, align 1, !noalias !1199
  %15 = udiv i8 %.sroa.0.0.i12, 10
  %16 = add nsw i64 %.sroa.03.0.i11, -2           ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %16
  %i.co = urem i8 %15, 10
  %i.cp = or disjoint i8 %i.co, 48
  store i8 %i.cp, ptr %i.cn, align 1, !noalias !1199
  %17 = udiv i8 %.sroa.0.0.i12, 100
  %.not8.i.1 = icmp eq i64 %16, 0
  br i1 %.not8.i.1, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit, label %.preheader6

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit: ; preds = %.preheader6, %.preheader6.prol.loopexit
  %i.cq = zext nneg i8 %spec.select to i16
  %i.cr = add i16 %i.al, %i.cq                    ; 3 uses
  store i16 %i.cr, ptr %i.d, align 8, !alias.scope !1199
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %bb.q, label %bb.p, !prof !8

bb.p:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1200
  unreachable

bb.q:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit
  %i.cv = zext i16 %i.cr to i64                   ; 2 uses
  %.not.i24 = icmp eq i64 %i.c, %i.cv
  br i1 %.not.i24, label %bb.r, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit25, !prof !9

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !1200
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit25: ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1, !noalias !1200
  %i.cx = add i16 %i.cr, 1                        ; 2 uses
  store i16 %i.cx, ptr %i.d, align 8, !alias.scope !1200
  br label %bb.o

bb.s:                                             ; preds = %bb.o, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit23
  ret void

bb.t:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit, %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19
  %i.cy = phi i16 [ %i.fd, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit ], [ %i.ae, %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.da = load i8, ptr %i.cz, align 1, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %bb.v, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1201
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dc = zext i16 %i.cy to i64                   ; 2 uses
  %.not.i22 = icmp eq i64 %i.c, %i.dc
  br i1 %.not.i22, label %bb.w, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit23, !prof !9

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !1201
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit23: ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dc
  store i8 %i.da, ptr %i.dd, align 1, !noalias !1201
  %i.de = add i16 %i.cy, 1
  store i16 %i.de, ptr %i.d, align 8, !alias.scope !1201
  br label %bb.s

bb.x:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.df = zext i16 %i.ae to i64                   ; 2 uses
  %.not.i21 = icmp eq i64 %i.c, %i.df
  br i1 %.not.i21, label %bb.y, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !1202
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.df
  store i8 46, ptr %i.dg, align 1, !noalias !1202
  %i.dh = add i16 %i.ae, 1                        ; 3 uses
  store i16 %i.dh, ptr %i.d, align 8, !alias.scope !1202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1203
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dj = urem i32 %.8.val, 10                    ; 2 uses
  %i.dk = trunc nuw nsw i32 %i.dj to i8
  %i.dl = or disjoint i8 %i.dk, 48
  store i8 %i.dl, ptr %i.di, align 1, !noalias !1203
  %i.dm = insertelement <4 x i32> poison, i32 %.8.val, i64 0
  %i.dn = shufflevector <4 x i32> %i.dm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.do = udiv <4 x i32> %i.dn, <i32 10000, i32 1000, i32 100, i32 10>
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dq = urem <4 x i32> %i.do, splat (i32 10)    ; 5 uses
  %i.dr = trunc nuw nsw <4 x i32> %i.dq to <4 x i8>
  %i.ds = or disjoint <4 x i8> %i.dr, splat (i8 48)
  store <4 x i8> %i.ds, ptr %i.dp, align 1, !noalias !1203
  %i.dt = udiv i32 %.8.val, 100000
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.lhs.trunc42 = trunc nuw i32 %i.dt to i16
  %i.dv = urem i16 %.lhs.trunc42, 10              ; 2 uses
  %i.dw = trunc nuw nsw i16 %i.dv to i8
  %i.dx = or disjoint i8 %i.dw, 48
  store i8 %i.dx, ptr %i.du, align 1, !noalias !1203
  %i.dy = udiv i32 %.8.val, 1000000
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.lhs.trunc44 = trunc nuw nsw i32 %i.dy to i16
  %i.ea = urem i16 %.lhs.trunc44, 10              ; 2 uses
  %i.eb = trunc nuw nsw i16 %i.ea to i8
  %i.ec = or disjoint i8 %i.eb, 48
  store i8 %i.ec, ptr %i.dz, align 1, !noalias !1203
  %i.ed = udiv i32 %.8.val, 10000000
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.lhs.trunc46 = trunc nuw nsw i32 %i.ed to i16
  %i.ef = urem i16 %.lhs.trunc46, 10              ; 2 uses
  %i.eg = trunc nuw nsw i16 %i.ef to i8
  %i.eh = or disjoint i8 %i.eg, 48
  store i8 %i.eh, ptr %i.ee, align 1, !noalias !1203
  %i.ei = udiv i32 %.8.val, 100000000
  %.lhs.trunc48 = trunc nuw nsw i32 %i.ei to i8
  %i.ej = urem i8 %.lhs.trunc48, 10               ; 2 uses
  %i.ek = or disjoint i8 %i.ej, 48
  store i8 %i.ek, ptr %i.a, align 1, !noalias !1203
  %i.el = icmp eq i32 %i.dj, 0
  br i1 %i.el, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  %i.em = extractelement <4 x i32> %i.dq, i64 3
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.eo = extractelement <4 x i32> %i.dq, i64 2
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractelement <4 x i32> %i.dq, i64 1
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.es = extractelement <4 x i32> %i.dq, i64 0
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.eu = icmp eq i16 %i.dv, 0
  br i1 %i.eu, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ev = icmp eq i16 %i.ea, 0
  br i1 %i.ev, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ew = icmp eq i16 %i.ef, 0
  br i1 %i.ew, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ex = icmp ne i8 %i.ej, 0
  %spec.select51 = zext i1 %i.ex to i8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  %.sroa.06.0.i.lcssa = phi i8 [ 3, %bb.ae ], [ 9, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit ], [ 8, %bb.z ], [ %spec.select51, %bb.ag ], [ 7, %bb.aa ], [ 4, %bb.ad ], [ 6, %bb.ab ], [ 2, %bb.af ], [ 5, %bb.ac ] ; 2 uses
  %i.ey = zext nneg i8 %.sroa.06.0.i.lcssa to i64 ; 3 uses
  %i.ez = zext i16 %i.dh to i64                   ; 2 uses
  %i.fa = sub nuw i64 %i.c, %i.ez
  %.not20.i = icmp ult i64 %i.fa, %i.ey
  br i1 %.not20.i, label %bb.ai, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit, !prof !9

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #13, !noalias !1203
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit: ; preds = %bb.ah
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ez
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.fb, i64 noundef %i.ey, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !1203
  %i.fc = zext nneg i8 %.sroa.06.0.i.lcssa to i16
  %i.fd = add i16 %i.dh, %i.fc                    ; 2 uses
  store i16 %i.fd, ptr %i.d, align 8, !alias.scope !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1203
  br label %bb.t
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 23) i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl(i64 noundef range(i64 10000, 0) %0) unnamed_addr #2 !guid !1204 {
bb.a:
  %i.a = icmp ugt i64 %0, 9999999999              ; 2 uses
  %i.b = udiv i64 %0, 10000000000
  %.sroa.05.0 = select i1 %i.a, i32 10, i32 0     ; 2 uses
  %.sroa.0.0 = select i1 %i.a, i64 %i.b, i64 %0   ; 3 uses
  %i.c = icmp samesign ugt i64 %.sroa.0.0, 99999
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 %.sroa.0.0, 100000
  %i.e = or disjoint i32 %.sroa.05.0, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.1 = phi i32 [ %i.e, %bb.b ], [ %.sroa.05.0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %i.d, %bb.b ], [ %.sroa.0.0, %bb.a ]
  %i.f = trunc nuw nsw i64 %.sroa.0.1 to i32      ; 4 uses
  %i.g = add nuw nsw i32 %i.f, 393206
end_hunk_0
