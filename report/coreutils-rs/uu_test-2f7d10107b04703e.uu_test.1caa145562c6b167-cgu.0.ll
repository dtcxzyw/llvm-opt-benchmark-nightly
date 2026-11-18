Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_test-2f7d10107b04703e.uu_test.1caa145562c6b167-cgu.0?download=true
inline.NumInlined: 491
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtCs2szWGFz6wmN_7uu_test5errorNtB5_10ParseErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  br i1 %i.po, label %.preheader.i366, label %.preheader111.i360

.preheader.i366:                                  ; preds = %bb.dq
  %.not105146.i367 = icmp eq i64 %.sroa.26.0.i358, 0
  br i1 %.not105146.i367, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph150.i368

.preheader111.i360:                               ; preds = %bb.dq, %bb.dt
  %.sroa.0.3145.i361 = phi ptr [ %i.pp, %bb.dt ], [ %.sroa.0.0.i359, %bb.dq ] ; 2 uses
  %.sroa.26.3144.i362 = phi i64 [ %i.pq, %bb.dt ], [ %.sroa.26.0.i358, %bb.dq ]
  %.sroa.084.3143.i363 = phi i64 [ %i.qb, %bb.dt ], [ 0, %bb.dq ]
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i361, i64 1
  %i.pq = add nsw i64 %.sroa.26.3144.i362, -1     ; 2 uses
  %i.pr = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i363, i64 10) ; 2 uses
  %i.ps = extractvalue { i64, i1 } %i.pr, 0
  %i.pt = extractvalue { i64, i1 } %i.pr, 1
  br i1 %i.pt, label %.thread587, label %bb.dr, !prof !13

bb.dr:                                            ; preds = %.preheader111.i360
  %i.pu = load i8, ptr %.sroa.0.3145.i361, align 1, !alias.scope !1388, !noundef !4
  %i.pv = zext i8 %i.pu to i32
  %i.pw = add nsw i32 %i.pv, -48                  ; 2 uses
  %i.px = icmp ult i32 %i.pw, 10
  br i1 %i.px, label %bb.ds, label %.thread587

bb.ds:                                            ; preds = %bb.dr
  %i.py = zext nneg i32 %i.pw to i64
  %i.pz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ps, i64 %i.py) ; 2 uses
  %i.qa = extractvalue { i64, i1 } %i.pz, 1
  br i1 %i.qa, label %.thread587, label %bb.dt, !prof !13

bb.dt:                                            ; preds = %bb.ds
  %i.qb = extractvalue { i64, i1 } %i.pz, 0       ; 2 uses
  %.not104.i365 = icmp eq i64 %i.pq, 0
  br i1 %.not104.i365, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.preheader111.i360

.lr.ph150.i368:                                   ; preds = %.preheader.i366, %bb.du
  %.sroa.0.4149.i369 = phi ptr [ %i.qi, %bb.du ], [ %.sroa.0.0.i359, %.preheader.i366 ] ; 2 uses
  %.sroa.26.4148.i370 = phi i64 [ %i.qh, %bb.du ], [ %.sroa.26.0.i358, %.preheader.i366 ]
  %.sroa.084.4147.i371 = phi i64 [ %i.qk, %bb.du ], [ 0, %.preheader.i366 ]
  %i.qc = load i8, ptr %.sroa.0.4149.i369, align 1, !alias.scope !1388, !noundef !4
  %i.qd = zext i8 %i.qc to i32
  %i.qe = add nsw i32 %i.qd, -48                  ; 2 uses
  %i.qf = icmp ult i32 %i.qe, 10
  br i1 %i.qf, label %bb.du, label %.thread587

bb.du:                                            ; preds = %.lr.ph150.i368
  %i.qg = mul i64 %.sroa.084.4147.i371, 10
  %i.qh = add nsw i64 %.sroa.26.4148.i370, -1     ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i369, i64 1
  %i.qj = zext nneg i32 %i.qe to i64
  %i.qk = add i64 %i.qg, %i.qj                    ; 2 uses
  %.not105.i372 = icmp eq i64 %i.qh, 0
  br i1 %.not105.i372, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph150.i368

.thread587:                                       ; preds = %.lr.ph.i343, %bb.dn, %bb.dm, %.lr.ph141.i353, %.preheader111.i360, %bb.dr, %bb.ds, %.lr.ph150.i368, %bb.dj, %bb.dj, %bb.o
  %.ph595 = phi ptr [ inttoptr (i64 1 to ptr), %bb.o ], [ %i.ch, %.preheader111.i360 ], [ %i.ch, %.lr.ph150.i368 ], [ %i.ch, %bb.dj ], [ %i.ch, %.lr.ph141.i353 ], [ %i.ch, %bb.dj ], [ %i.ch, %bb.ds ], [ %i.ch, %bb.dr ], [ %i.ch, %bb.dm ], [ %i.ch, %bb.dn ], [ %i.ch, %.lr.ph.i343 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph595, i64 noundef %i.cf) #20
  %i.ql = load i8, ptr %i.d, align 8, !range !18, !noundef !4
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.dx, label %bb.dy

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375: ; preds = %bb.do, %bb.dp, %bb.dt, %bb.du, %.preheader.i366, %.preheader114.i351
  %.sroa.15420.0 = phi i64 [ %i.pn, %bb.dp ], [ 0, %.preheader114.i351 ], [ %i.qk, %bb.du ], [ 0, %.preheader.i366 ], [ %i.qb, %bb.dt ], [ %i.pe, %bb.do ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, i64 noundef %.sroa.15420.0) #21
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dy, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375
  %i.qn = phi ptr [ %.ph595, %bb.dy ], [ %i.ch, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.qo = icmp eq i64 %i.cf, 0
  br i1 %i.qo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qn, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1389
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378

bb.dx:                                            ; preds = %.thread587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.cf, ptr %i.c, align 8
  %.sroa.5415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph595, ptr %.sroa.5415.0..sroa_idx, align 8
  %.sroa.8416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.cf, ptr %.sroa.8416.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378

bb.dy:                                            ; preds = %.thread587
  %i.qp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.qq = load double, ptr %i.qp, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, double noundef %i.qq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.dv

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378: ; preds = %bb.dw, %bb.dv, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4132.0..sroa_idx, align 8
  %i.qr = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !nonnull !4, !align !9, !noundef !4
  %i.qu = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.qr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qt, ptr noundef nonnull @35, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %.val.i379 = load i64, ptr %i.f, align 8, !range !5, !alias.scope !1390, !noundef !4 ; 2 uses
  %i.qv = icmp eq i64 %.val.i379, 0
  br i1 %i.qv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378
  %i.qw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i380 = load ptr, ptr %i.qw, align 8, !alias.scope !1390, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i380, i64 noundef %.val.i379, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1390
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.d = load i64, ptr %i.c, align 8, !range !6, !alias.scope !1394, !noundef !4
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit
    i64 1, label %bb.b
    i64 2, label %bb.e
    i64 3, label %bb.e
    i64 4, label %bb.c
    i64 5, label %bb.c
    i64 6, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.a
  %.sink.i = phi i64 [ 16, %bb.c ], [ 8, %bb.a ], [ 8, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1394, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1394, !noundef !4
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.sroa.5.0.i = phi i64 [ 4, %bb.d ], [ 1, %bb.b ], [ %i.i, %bb.e ], [ 1, %bb.a ]
  %.sroa.03.0.i = phi ptr [ @52, %bb.d ], [ @29, %bb.b ], [ %i.g, %bb.e ], [ @28, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1396
  store i64 1, ptr %i.b, align 8, !noalias !1396
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.03.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1396
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1396
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.j, align 8, !noalias !1396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1396
  store ptr %i.b, ptr %i.a, align 8, !noalias !1396
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1396
  %i.k = load ptr, ptr %1, align 8, !alias.scope !1395, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1395, !nonnull !4, !align !9, !noundef !4
  %i.n = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @35, ptr noundef nonnull %i.a) #21, !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1396
  ret i1 %i.n
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtBb_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 5 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.g = icmp eq ptr %.val3, %.val
  br i1 %i.g, label %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1426
  %i.h = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, 9) 8) #21, !noalias !1426 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #24, !noalias !1427
  unreachable

.lr.ph.i.i:                                       ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i
  %.sroa.0.034.i.i = phi ptr [ %i.j, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %.val, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 4 uses
  %.sroa.7.033.i.i = phi i64 [ %i.k, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %.sroa.10.032.i.i = phi i64 [ %2, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %i.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ]
  %2 = add nsw i64 %.sroa.10.032.i.i, -1          ; 2 uses
  %3 = icmp eq ptr %.sroa.0.034.i.i, %.val3
  br i1 %3, label %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 24
  %i.k = add nuw nsw i64 %.sroa.7.033.i.i, 1
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.033.i.i ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.0.034.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1425, !noalias !1428, !nonnull !4, !noundef !4
  %i.n = getelementptr i8, ptr %.sroa.0.034.i.i, i64 16
  %.val13.i.i = load i64, ptr %i.n, align 8, !alias.scope !1425, !noalias !1428, !noundef !4 ; 6 uses
  %i.o = icmp eq i64 %.val13.i.i, 0
  br i1 %i.o, label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1429
  %i.p = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val13.i.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !1429 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val13.i.i) #24, !noalias !1430
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val13.i.i, i1 false), !noalias !1431
  br label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i

_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ]
  store i64 %.val13.i.i, ptr %i.l, align 8, !noalias !1427
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !1427
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.val13.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !1427
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %.lr.ph.i.i

_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit: ; preds = %.lr.ph.i.i, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, %bb.a
  %.sroa.10.0.i44.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.h, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %i.h, %.lr.ph.i.i ] ; 3 uses
  %i.s = icmp ult i64 %i.e, -9223372036854775792
  tail call void @llvm.assume(i1 %i.s)
  %i.t = load i64, ptr %1, align 8, !range !16, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.t, -2
  br i1 %.not, label %_RNvXs4_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtB7_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %.not.i = icmp eq i64 %i.t, -1
  br i1 %.not.i, label %_RNvXs4_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtB7_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !1432, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.v, align 8, !alias.scope !1432, !noundef !4 ; 6 uses
  %i.w = icmp eq i64 %.val1.i, 0
  br i1 %i.w, label %_RNvXs4_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtB7_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1433
  %i.x = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !1433 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i) #24, !noalias !1434
  unreachable

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val1.i, i1 false), !noalias !1435
  br label %_RNvXs4_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtB7_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit

_RNvXs4_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtB7_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.i, %bb.g, %bb.f, %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit
  %.sroa.5.sroa.4.0 = phi i64 [ undef, %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit ], [ 0, %bb.g ], [ %.val1.i, %bb.i ], [ undef, %bb.f ]
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit ], [ inttoptr (i64 1 to ptr), %bb.g ], [ %i.x, %bb.i ], [ undef, %bb.f ]
  %.sroa.0.0 = phi i64 [ -2, %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit ], [ 0, %bb.g ], [ %.val1.i, %bb.i ], [ -1, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i44.i.i, i64 %i.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i44.i.i, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.0.i44.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.f, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.z, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.d, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @47, ptr %i.e, align 8
  %i.f = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs2szWGFz6wmN_7uu_test.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 5) #21
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1440, !noundef !4 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !5, !alias.scope !1441, !noundef !4
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #21
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1440, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !1440
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !1440
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !1440
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !1440
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !1440
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !1440
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !1440
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !1440
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !1440
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !1440
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !1440
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1451, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !1451, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i.i, !prof !13
end_hunk_0
