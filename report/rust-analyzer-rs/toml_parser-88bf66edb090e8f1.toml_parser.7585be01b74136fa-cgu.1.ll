inline.NumInlined: 96
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar22decode_unquoted_scalar:bb.a
bb.ai:                                            ; preds = %bb.ah
  store i64 0, ptr %i.b, align 8, !noalias !261
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 -1, ptr %i.es, align 8, !noalias !261
  %.sroa.4.0..sroa_idx.i118.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @24, ptr %.sroa.4.0..sroa_idx.i118.i, align 8, !noalias !261
  %.sroa.54.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 29, ptr %.sroa.54.0..sroa_idx.i119.i, align 8, !noalias !261
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr null, ptr %i.et, align 8, !noalias !261
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0..sroa_idx2.i120.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 1, ptr %i.eu, align 8, !noalias !261
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i120.i, align 8, !noalias !261
  %.sroa.57.0..sroa_idx.i121.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.j, ptr %.sroa.57.0..sroa_idx.i121.i, align 8, !noalias !261
  call void %.val62(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b) #9, !noalias !244, !inline_history !251
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar9decode_as.exit122.i

_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar9decode_as.exit122.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar18decode_sign_prefix.exit

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246
  call void %.val60(ptr noundef nonnull %1) #9, !noalias !262, !inline_history !256
  %i.ev = call noundef zeroext i1 %.val61(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j) #9, !noalias !244, !inline_history !256
  br i1 %i.ev, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit127.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 0, ptr %i.a, align 8, !noalias !265
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.ew, align 8, !noalias !265
  %.sroa.4.0..sroa_idx.i.i123.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @24, ptr %.sroa.4.0..sroa_idx.i.i123.i, align 8, !noalias !265
  %.sroa.54.0..sroa_idx.i.i124.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 29, ptr %.sroa.54.0..sroa_idx.i.i124.i, align 8, !noalias !265
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.ex, align 8, !noalias !265
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx2.i.i125.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.ey, align 8, !noalias !265
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i.i125.i, align 8, !noalias !265
  %.sroa.57.0..sroa_idx.i.i126.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.j, ptr %.sroa.57.0..sroa_idx.i.i126.i, align 8, !noalias !265
  call void %.val62(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #9, !noalias !244, !inline_history !256
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit127.i

_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit127.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar18decode_sign_prefix.exit

bb.al:                                            ; preds = %bb.u
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar14decode_invalid(ptr %i.h, i64 %i.j, ptr noundef nonnull %1, ptr readonly %.val60, ptr readonly %.val61, ptr noundef nonnull %3, ptr readonly %.val62)
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar18decode_sign_prefix.exit

bb.am:                                            ; preds = %bb.u
  %i.ez = call fastcc { i8, i8 } @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar35decode_datetime_or_float_or_integer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.030.i, i64 noundef %.sroa.16.029.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %1, ptr readonly %.val60, ptr readonly %.val61, ptr noundef nonnull %3, ptr readonly %.val62) ; 2 uses
  %i.fa = extractvalue { i8, i8 } %i.ez, 0
  %i.fb = extractvalue { i8, i8 } %i.ez, 1
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar18decode_sign_prefix.exit

_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar18decode_sign_prefix.exit: ; preds = %._crit_edge.i, %bb.v, %bb.w, %bb.x, %bb.aa, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar9decode_as.exit.i, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit.i, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar9decode_as.exit122.i, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit127.i, %bb.al, %bb.am
  %.sroa.12.0.i = phi i8 [ %i.fb, %bb.am ], [ undef, %bb.al ], [ %i.ct, %bb.v ], [ %i.cw, %bb.w ], [ %i.dc, %bb.aa ], [ undef, %._crit_edge.i ], [ undef, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar9decode_as.exit.i ], [ undef, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit.i ], [ undef, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar9decode_as.exit122.i ], [ undef, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit127.i ], [ undef, %bb.x ]
  %.sroa.027.0.i = phi i8 [ %i.fa, %bb.am ], [ 0, %bb.al ], [ %i.cs, %bb.v ], [ %i.cv, %bb.w ], [ %i.db, %bb.aa ], [ 0, %._crit_edge.i ], [ 3, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar9decode_as.exit.i ], [ 3, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit.i ], [ 3, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar9decode_as.exit122.i ], [ 3, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit127.i ], [ 3, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.g

bb.an:                                            ; preds = %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef 1, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #10
  unreachable

bb.ao:                                            ; preds = %bb.m
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val28 = load ptr, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val29 = load ptr, ptr %i.fd, align 8
  %i.fe = tail call fastcc { i8, i8 } @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar23decode_float_or_integer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr nonnull %i.h, i64 %i.j, i8 noundef 3, i8 undef, ptr noundef nonnull %1, ptr %.val28, ptr %.val29, ptr noundef nonnull %3, ptr %.val25) ; 2 uses
  %i.ff = extractvalue { i8, i8 } %i.fe, 0
  %i.fg = extractvalue { i8, i8 } %i.fe, 1
  br label %bb.g

bb.ap:                                            ; preds = %bb.h
  tail call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar14decode_invalid(ptr %i.h, i64 %i.j, ptr noundef nonnull %1, ptr %.val31, ptr %.val32, ptr noundef nonnull %3, ptr %.val33)
  br label %bb.g

bb.aq:                                            ; preds = %bb.h
  %i.fh = tail call fastcc { i8, i8 } @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar35decode_datetime_or_float_or_integer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %1, ptr %.val31, ptr %.val32, ptr noundef nonnull %3, ptr %.val33) ; 2 uses
  %i.fi = extractvalue { i8, i8 } %i.fh, 0
  %i.fj = extractvalue { i8, i8 } %i.fh, 1
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar22ensure_no_leading_zero(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, 0) %1, ptr %.0.val, i64 %.8.val, ptr noundef nonnull %2, ptr nofree readonly captures(none) %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1) ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = xor i1 %i.b, true
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %0 to i64
  %i.d = ptrtoint ptr %.0.val to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = add i64 %i.e, 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @28, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 23, ptr %.sroa.55.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.a, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.8.val, ptr %.sroa.58.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  store i64 0, ptr %i.i, align 8
  store i64 1, ptr %i.j, align 8
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.f, ptr %.sroa.511.0..sroa_idx, align 8
  call void %.24.val(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #9
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar23decode_float_or_integer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr %.0.val, i64 %.8.val, i8 noundef range(i8 3, 5) %2, i8 %3, ptr noundef nonnull %4, ptr nofree readonly captures(none) %.24.val, ptr nofree readonly captures(none) %.32.val, ptr noundef nonnull %5, ptr nofree readonly captures(none) %.24.val1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %i.b = alloca [88 x i8], align 8                ; 12 uses
  tail call void %.24.val(ptr noundef nonnull %4) #9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i8 %2, 3                         ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.091 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.1, %bb.t ] ; 9 uses
  %.sroa.14.090 = phi i64 [ %1, %.lr.ph ], [ %.sroa.14.1, %bb.t ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 %.sroa.14.090
  %i.n = ptrtoint ptr %.sroa.0.091 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.02.08.i = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.o = phi ptr [ %i.p, %bb.c ], [ %.sroa.0.091, %bb.b ] ; 2 uses
  %.val6.i = load i8, ptr %i.o, align 1, !noalias !266, !noundef !4
  %.not = icmp eq i8 %.val6.i, 95                 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.q = add nuw i64 %.sroa.02.08.i, 1
  %i.r = icmp eq ptr %i.p, %i.m
  br i1 %i.r, label %_RNvNtCsil5KYoyU2ra_6winnow6stream6memmem.exit, label %.lr.ph.i

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %i.s = insertvalue { i8, i8 } poison, i8 %2, 0
  %i.t = insertvalue { i8, i8 } %i.s, i8 %3, 1
  ret { i8, i8 } %i.t

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = icmp ult i64 %.sroa.02.08.i, %.sroa.14.090
  call void @llvm.assume(i1 %i.u), !noalias !272
  br label %_RNvNtCsil5KYoyU2ra_6winnow6stream6memmem.exit

_RNvNtCsil5KYoyU2ra_6winnow6stream6memmem.exit:   ; preds = %bb.c, %bb.d
  %.sroa.021.0 = phi i64 [ %.sroa.02.08.i, %bb.d ], [ %.sroa.14.090, %bb.c ] ; 11 uses
  %i.v = sub i64 %i.n, %i.c                       ; 3 uses
  %i.w = add i64 %.sroa.021.0, %i.v               ; 3 uses
  %i.x = icmp eq i64 %.sroa.021.0, 0              ; 2 uses
  br i1 %i.x, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit, label %bb.e

bb.e:                                             ; preds = %_RNvNtCsil5KYoyU2ra_6winnow6stream6memmem.exit
  %.not.i = icmp ult i64 %.sroa.021.0, %.sroa.14.090
  br i1 %.not.i, label %bb.f, label %.split3.i

.split3.i:                                        ; preds = %bb.e
  %i.y = icmp eq i64 %.sroa.021.0, %.sroa.14.090
  br i1 %i.y, label %.split.i, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 %.sroa.021.0
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !273, !noalias !276, !noundef !4
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %.split.i, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.thread

.split.i:                                         ; preds = %bb.f, %.split3.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 %.sroa.021.0
  %i.ad = sub i64 %.sroa.14.090, %.sroa.021.0
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit: ; preds = %.split.i, %_RNvNtCsil5KYoyU2ra_6winnow6stream6memmem.exit
  %.sroa.9.1 = phi i64 [ %.sroa.14.090, %_RNvNtCsil5KYoyU2ra_6winnow6stream6memmem.exit ], [ %i.ad, %.split.i ] ; 5 uses
  %.sroa.7.1 = phi ptr [ %.sroa.0.091, %_RNvNtCsil5KYoyU2ra_6winnow6stream6memmem.exit ], [ %i.ac, %.split.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1) ]
  br i1 %.not, label %bb.g, label %bb.i

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.thread: ; preds = %.split3.i, %bb.f
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.091, i64 noundef %.sroa.14.090, i64 noundef 0, i64 noundef %.sroa.021.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #10
  unreachable

bb.g:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit
  %.not.i60 = icmp ugt i64 %.sroa.9.1, 1
  br i1 %.not.i60, label %bb.h, label %.split3.i61

.split3.i61:                                      ; preds = %bb.g
  %i.ae = icmp eq i64 %.sroa.9.1, 1
  br i1 %i.ae, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.1, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !278, !noalias !281, !noundef !4
  %i.ah = icmp sgt i8 %i.ag, -65
  br i1 %i.ah, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.q, %bb.r, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit
  %.sroa.14.1 = phi i64 [ %i.aj, %bb.r ], [ %i.aj, %bb.q ], [ %.sroa.9.1, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.ai, %bb.r ], [ %i.ai, %bb.q ], [ %.sroa.7.1, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit ]
  %6 = icmp eq i64 %.sroa.021.0, 0
  br i1 %6, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h, %.split3.i61
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.1, i64 1 ; 3 uses
  %i.aj = add i64 %.sroa.9.1, -1                  ; 3 uses
  br i1 %i.x, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h, %.split3.i61
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.1, i64 noundef %.sroa.9.1, i64 noundef 0, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ak = add i64 %i.v, -1
  %i.al = add i64 %i.ak, %.sroa.021.0             ; 3 uses
  %i.am = icmp ult i64 %i.al, %.8.val
  br i1 %i.am, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.an = icmp eq ptr %.sroa.0.091, %0
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !4 ; 2 uses
  %i.aq = add i8 %i.ap, -58
  %spec.select.i.i = icmp ult i8 %i.aq, -10
  %i.ar = and i8 %i.ap, -33
  %i.as = add i8 %i.ar, -71
  %i.at = icmp ult i8 %i.as, -6
  %or.cond29.i.i.i.not76 = or i1 %i.e, %i.at
  %.sroa.01.0.in.i.not = and i1 %spec.select.i.i, %or.cond29.i.i.i.not76
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #10
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.n
  %.sroa.027.1 = phi i1 [ %.sroa.01.0.in.i.not, %bb.n ], [ %i.an, %bb.m ]
  %.not57 = icmp eq i64 %i.aj, 0
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load i8, ptr %i.ai, align 1, !noundef !4 ; 2 uses
  %i.av = add i8 %i.au, -58
  %spec.select.i.i70 = icmp ult i8 %i.av, -10
  %i.aw = and i8 %i.au, -33
  %i.ax = add i8 %i.aw, -71
  %i.ay = icmp ult i8 %i.ax, -6
  %or.cond29.i.i.i71.not78 = or i1 %i.e, %i.ay
  %.sroa.01.0.in.i72.not = and i1 %spec.select.i.i70, %or.cond29.i.i.i71.not78
  %brmerge = or i1 %.sroa.027.1, %.sroa.01.0.in.i72.not
  br i1 %brmerge, label %bb.r, label %bb.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = add i64 %i.w, 1
  store i64 -1, ptr %i.f, align 8
  store ptr @59, ptr %.sroa.435.0..sroa_idx, align 8
  store i64 30, ptr %.sroa.536.0..sroa_idx, align 8
  store i64 1, ptr %i.b, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.539.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.h, align 8
  store i64 1, ptr %i.i, align 8
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx33, align 8
  store i64 %i.az, ptr %.sroa.542.0..sroa_idx, align 8
  call void %.24.val1(ptr noundef nonnull %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b) #9
  br label %bb.i

bb.s:                                             ; preds = %bb.i
  %i.ba = call noundef zeroext i1 %.32.val(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.091, i64 noundef %.sroa.021.0) #9
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.i
  %i.bb = icmp eq i64 %.sroa.14.1, 0
  br i1 %i.bb, label %._crit_edge, label %bb.b

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.a, align 8
  store i64 -1, ptr %i.j, align 8
  store ptr @24, ptr %.sroa.448.0..sroa_idx, align 8
  store i64 29, ptr %.sroa.549.0..sroa_idx, align 8
  store ptr null, ptr %i.k, align 8
  store i64 1, ptr %i.l, align 8
  store i64 %i.v, ptr %.sroa.545.0..sroa_idx46, align 8
  store i64 %i.w, ptr %.sroa.552.0..sroa_idx, align 8
  call void %.24.val1(ptr noundef nonnull %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #9
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar35decode_datetime_or_float_or_integer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noundef nonnull %3, ptr nofree readonly captures(none) %.24.val, ptr nofree readonly captures(none) %.32.val, ptr noundef nonnull %4, ptr nofree readonly captures(none) %.24.val1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %i.b = alloca [88 x i8], align 8                ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.02.07.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 7 uses
  %i.e = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ]   ; 2 uses
  %.val.i = load i8, ptr %i.e, align 1, !alias.scope !283, !noalias !286, !noundef !4
  %i.f = add i8 %.val.i, -58
  %spec.select.i.i.i = icmp ult i8 %i.f, -10
  br i1 %spec.select.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.h = add nuw i64 %.sroa.02.07.i, 1
  %i.i = icmp eq ptr %i.g, %i.c
  br i1 %i.i, label %bb.e, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp ult i64 %.sroa.02.07.i, %1
  tail call void @llvm.assume(i1 %i.j), !noalias !291
  %i.k = icmp eq i64 %.sroa.02.07.i, 0
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.07.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !292, !noundef !4
  %i.n = icmp sgt i8 %i.m, -65
  br i1 %i.n, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1)
  br i1 %i.r, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar22ensure_no_leading_zero.exit, label %bb.u

_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar22ensure_no_leading_zero.exit: ; preds = %bb.e
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.d, %i.s                       ; 2 uses
  %i.u = add i64 %i.t, 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 -1, ptr %i.v, align 8, !noalias !295
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @28, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !295
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 23, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !295
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 1, ptr %i.b, align 8, !noalias !295
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !295
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.q, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !295
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !295
  store i64 0, ptr %i.x, align 8, !noalias !295
  store i64 1, ptr %i.y, align 8, !noalias !295
  store i64 %i.t, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !295
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.u, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !295
  call void %.24.val1(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b) #9, !inline_history !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.z = sub nuw i64 %1, %.sroa.02.07.i           ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.07.i ; 7 uses
  %i.ab = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 1)
  br i1 %i.ab, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.02.07.i, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 1)
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.f
  %.val22 = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val23 = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void %.24.val(ptr noundef nonnull %3) #9, !noalias !299, !inline_history !302
  %i.ae = tail call noundef zeroext i1 %.32.val(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val22, i64 noundef %.val23) #9, !inline_history !302
  br i1 %i.ae, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar12decode_as_is.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.a, align 8, !noalias !299
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.af, align 8, !noalias !299
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !299
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 29, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !299
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.ag, align 8, !noalias !299
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.ah, align 8, !noalias !299
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !299
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
end_hunk_0
