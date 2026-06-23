inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RNvXs4t_NtCs4lawaffTVVK_9sqlparser3astNtB6_5ArrayNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5B_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CastFormatNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7211, !noundef !4
  %i.b = icmp ne i64 %i.a, -9223372036854775787   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !7211, !noundef !4
  %i.d = icmp eq i64 %i.c, -9223372036854775787   ; 3 uses
  %not. = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.d, %bb.a, %bb.f, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.l, %bb.f ], [ false, %bb.a ], [ %i.i, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not.)
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) #47
  br i1 %i.f, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h) #47
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j) #47
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_9ConnectByNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #47
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ %i.k, %bb.d ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.j, ptr noundef nonnull %i.h, i64 noundef %i.c)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !3186, !noundef !4 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !3186, !noundef !4
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.p, %bb.w, %bb.a, %bb.o, %bb.n, %bb.m, %bb.an, %bb.am, %bb.ak, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.l, %bb.k, %bb.ab, %bb.j, %bb.i, %bb.h, %bb.x, %bb.b, %bb.ao, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.ak ], [ %i.ds, %bb.y ], [ %.mux, %bb.w ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bo, %bb.n ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ false, %bb.x ], [ %i.dv, %bb.z ], [ true, %bb.h ], [ %i.dy, %bb.aa ], [ false, %bb.j ], [ %i.eg, %bb.ac ], [ true, %bb.i ], [ true, %bb.ab ], [ %i.ej, %bb.ad ], [ true, %bb.k ], [ %i.em, %bb.ae ], [ true, %bb.an ], [ %i.er, %bb.af ], [ true, %bb.l ], [ false, %bb.o ], [ false, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %i.fd, %bb.ag ], [ false, %bb.m ], [ %i.fi, %bb.ah ], [ false, %bb.q ], [ %i.fn, %bb.ai ], [ false, %bb.r ], [ %i.fs, %bb.aj ], [ false, %bb.s ], [ false, %bb.u ], [ %i.ga, %bb.al ], [ false, %bb.t ], [ false, %bb.am ], [ %i.gl, %bb.ao ], [ false, %bb.p ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.ew, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr2969 = phi ptr [ %i.ev, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr68 = phi ptr [ %i.et, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.o
    i8 34, label %bb.p
    i8 35, label %bb.q
    i8 36, label %bb.r
    i8 37, label %bb.s
    i8 38, label %bb.t
    i8 39, label %bb.u
    i8 40, label %bb.v
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !2683, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !2683, !noundef !4
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.w, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !2683, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !2683, !noundef !4
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !2683, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !2683, !noundef !4
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !2683, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !2683, !noundef !4
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !137, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !137, !noundef !4
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !4
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.aa

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !4
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ab, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val20 = load i64, ptr %i.bh, align 8, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val22 = load i64, ptr %i.bi, align 8, !noundef !4
  %i.bj = icmp eq i64 %.val20, %.val22
  br i1 %i.bj, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val.a = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val21 = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.a, i64 16
  %i.bo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull readonly align 8 %i.bn, ptr noundef nonnull readonly align 8 %i.bm, i64 noundef range(i64 0, 1152921504606846976) %.val20)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val24 = load i64, ptr %i.bp, align 8, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val26 = load i64, ptr %i.bq, align 8, !noundef !4
  %i.br = icmp eq i64 %.val24, %.val26
  br i1 %i.br, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val23.a = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val25 = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val23.a, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull readonly align 8 %i.bv, ptr noundef nonnull readonly align 8 %i.bu, i64 noundef range(i64 0, 576460752303423488) %.val24)
  br i1 %i.bw, label %bb.af, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #47
  br i1 %i.cb, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !4
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.ag, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !noundef !4
  %i.cq = icmp eq i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !4
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !5, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !5, !noundef !4
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %bb.an, label %bb.am

bb.w:                                             ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.dh, null                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noundef !4 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.dk
  %.mux = and i1 %.not, %i.dk
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.dn = load i64, ptr %i.dl, align 8, !noundef !4 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !noundef !4
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dr, ptr nonnull %i.dq, i64 %i.dn)
  %i.ds = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dv = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.dy = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dx)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ef)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ej = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ei)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.em = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.el)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !5, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !5, !noundef !4
  %i.er = icmp eq i8 %i.eo, %i.eq
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ew = load i8, ptr %i.et, align 8, !range !3186, !noundef !4 ; 2 uses
  %i.ex = load i8, ptr %i.ev, align 8, !range !3186, !noundef !4
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fc = load i8, ptr %i.fb, align 2, !noundef !4
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.ff = load i8, ptr %i.fe, align 2, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fh = load i8, ptr %i.fg, align 2, !noundef !4
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fm = load i8, ptr %i.fl, align 2, !noundef !4
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fp = load i8, ptr %i.fo, align 2, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !noundef !4
  %i.fs = icmp eq i8 %i.fp, %i.fr
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fz)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.gd = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gc)
  br i1 %i.gd, label %bb.an, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.v, %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ao
end_hunk_0
begin_hunk_1_@_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.an = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ak, i64 noundef %i.af)
  br label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXseh_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.g = load i8, ptr %i.f, align 1, !range !5, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noundef !4
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.l = load i8, ptr %i.k, align 2, !range !5, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.n = load i8, ptr %i.m, align 2, !range !5, !noundef !4
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.q, align 8, !noundef !4
  %i.r = icmp eq i64 %.val1, %.val3
  br i1 %i.r, label %bb.e, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.u = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ %i.u, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsf5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_9ForClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2275, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, -4
  %i.c = icmp samesign ugt i64 %i.a, 3
  %i.d = select i1 %i.c, i64 %i.b, i64 2          ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !2275, !noundef !4 ; 2 uses
  %i.f = add nsw i64 %i.e, -4
  %i.g = icmp samesign ugt i64 %i.e, 3
  %i.h = select i1 %i.g, i64 %i.f, i64 2
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.e
    i64 2, label %bb.j
    i64 0, label %bb.c
  ]

.sink.split:                                      ; preds = %bb.o, %bb.i
  %.sink16 = phi i64 [ 16, %bb.i ], [ 40, %bb.o ] ; 2 uses
  %.sink13 = phi i64 [ %i.aj, %bb.i ], [ %i.bj, %bb.o ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.sink16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %.sink13)
  %i.n = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %bb.h, %.sink.split, %bb.o, %bb.j, %bb.k, %bb.l, %bb.m, %bb.i, %bb.e, %bb.f, %bb.g, %bb.b, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.m ], [ %i.n, %.sink.split ], [ false, %bb.e ], [ false, %bb.l ], [ true, %bb.b ], [ false, %bb.a ], [ %.mux18, %bb.n ], [ false, %bb.f ], [ false, %bb.j ], [ %.mux, %bb.h ], [ false, %bb.i ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.g ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.p = load i8, ptr %i.o, align 1, !range !5, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.r = load i8, ptr %i.q, align 1, !range !5, !noundef !4
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.u = load i8, ptr %i.t, align 2, !range !5, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.w = load i8, ptr %i.v, align 2, !range !5, !noundef !4
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i8, ptr %i.y, align 8, !range !5, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !5, !noundef !4
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !133, !noundef !4
  %.not7 = icmp eq i64 %i.ae, -9223372036854775808 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !133, !noundef !4
  %i.ah = icmp eq i64 %i.ag, -9223372036854775808 ; 2 uses
  %brmerge = or i1 %.not7, %i.ah
  %.mux = and i1 %.not7, %i.ah
  br i1 %brmerge, label %bb.c, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %.sink.split, label %bb.c

bb.j:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i8, ptr %i.an, align 8, !range !5, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !range !5, !noundef !4
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.at = load i8, ptr %i.as, align 1, !range !5, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.av = load i8, ptr %i.au, align 1, !range !5, !noundef !4
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %bb.l, label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !range !5, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ba = load i8, ptr %i.az, align 2, !range !5, !noundef !4
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.c

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsff_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #47
  br i1 %i.bc, label %bb.n, label %bb.c

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !range !133, !noundef !4
  %.not = icmp eq i64 %i.be, -9223372036854775808 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !range !133, !noundef !4
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808 ; 2 uses
  %brmerge17 = or i1 %.not, %i.bh
  %.mux18 = and i1 %.not, %i.bh
  br i1 %brmerge17, label %bb.c, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = icmp eq i64 %i.bj, %i.bl
  br i1 %i.bm, label %.sink.split, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16758)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %3, align 8, !alias.scope !16758, !noalias !16761, !noundef !4 ; 2 uses
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !16758, !noalias !16761, !nonnull !4
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i, %.lr.ph.i
  %i.c = phi ptr [ %1, %.lr.ph.i ], [ %i.d, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val4.i = load i64, ptr %i.e, align 8, !noalias !16763, !noundef !4
  %i.f = icmp eq i64 %.val4.i, %.val3.i.i
  br i1 %i.f, label %bb.c, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val3.i = load ptr, ptr %i.g, align 8, !noalias !16763, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !noalias !16763
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i: ; preds = %bb.c, %bb.b
  %.not8.i = icmp eq ptr %i.d, %i.a
  br i1 %.not8.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i ], [ true, %bb.c ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef range(i64 0, 82351536043346213) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 112
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2r_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0) #47, !noalias !16764 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.d, %i.a
  %or.cond = select i1 %i.c, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2r_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2r_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.c, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsff_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2165, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !2165, !noundef !4
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink12 = phi i64 [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %i.e, i64 %.sink12)
  %i.h = icmp eq i32 %bcmp, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %.sink.split, %bb.g, %bb.f, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %.mux, %bb.d ], [ %i.h, %.sink.split ], [ true, %bb.c ], [ false, %bb.g ], [ %.mux15, %bb.e ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !133, !noundef !4
  %.not6 = icmp eq i64 %i.j, -9223372036854775808 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !133, !noundef !4
  %i.m = icmp eq i64 %i.l, -9223372036854775808   ; 2 uses
  %brmerge = or i1 %.not6, %i.m
  %.mux = and i1 %.not6, %i.m
  br i1 %brmerge, label %bb.b, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !133, !noundef !4
  %.not = icmp eq i64 %i.o, -9223372036854775808  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !133, !noundef !4
  %i.r = icmp eq i64 %i.q, -9223372036854775808   ; 2 uses
  %brmerge14 = or i1 %.not, %i.r
  %.mux15 = and i1 %.not, %i.r
  br i1 %brmerge14, label %bb.b, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %.sink.split, label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %.sink.split, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsgN_NtCs4lawaffTVVK_9sqlparser3astNtB6_12GrantObjectsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12804, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !12804, !noundef !4
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = icmp eq i64 %i.e, %i.g                   ; 28 uses
  switch i64 %i.a, label %default.unreachable89 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
  ]

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.l, ptr noundef nonnull %i.j, i64 noundef %i.e)
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph, %.lr.ph52, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.ag, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit38, %bb.ae, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.u ], [ false, %bb.a ], [ true, %bb.ah ], [ false, %bb.c ], [ false, %bb.v ], [ false, %bb.d ], [ true, %bb.af ], [ false, %bb.e ], [ false, %bb.w ], [ false, %bb.f ], [ false, %bb.ag ], [ false, %bb.g ], [ false, %bb.x ], [ false, %bb.h ], [ %i.m, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split ], [ false, %bb.i ], [ false, %bb.y ], [ false, %bb.j ], [ false, %bb.t ], [ false, %bb.k ], [ false, %bb.z ], [ false, %bb.l ], [ %i.ae, %.lr.ph52 ], [ false, %bb.m ], [ false, %bb.aa ], [ false, %bb.n ], [ false, %bb.ac ], [ false, %bb.o ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.ab ], [ false, %bb.q ], [ false, %bb.ad ], [ false, %bb.r ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit38 ], [ false, %bb.s ], [ false, %bb.ae ], [ %i.ar, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable89:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit
end_hunk_1
