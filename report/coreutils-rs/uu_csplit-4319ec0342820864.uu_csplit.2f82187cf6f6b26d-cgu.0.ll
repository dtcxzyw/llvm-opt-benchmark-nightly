Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_csplit-4319ec0342820864.uu_csplit.2f82187cf6f6b26d-cgu.0?download=true
inline.NumInlined: 730
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs2_NtCs44SRMMtlaHN_9uu_csplit12csplit_errorNtB5_11CsplitErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ce) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %i.uf = icmp eq i64 %.sroa.0.0.copyload708, 0
  br i1 %i.uf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit505, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload711, i64 noundef %.sroa.0.0.copyload708, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1682
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit505

bb.dq:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store i64 %.sroa.0.0.copyload708, ptr %i.cf, align 8
  %.sroa.5.0..sroa_idx709 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %.sroa.5.0.copyload711, ptr %.sroa.5.0..sroa_idx709, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %.sroa.8.0.copyload714, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ce) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit505

bb.dr:                                            ; preds = %.loopexit
  %i.ug = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.uh = load double, ptr %i.ug, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, double noundef %i.uh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.do

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit505: ; preds = %bb.dp, %bb.do, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr %i.cj, ptr %i.cd, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  %i.ui = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ul = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ui, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.uk, ptr noundef nonnull @28, ptr noundef nonnull %i.cd) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %.val.i506 = load i64, ptr %i.cj, align 8, !range !5, !alias.scope !1683, !noundef !4 ; 2 uses
  %i.um = icmp eq i64 %.val.i506, 0
  br i1 %i.um, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit508, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit505
  %i.un = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.val1.i507 = load ptr, ptr %i.un, align 8, !alias.scope !1683, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i507, i64 noundef %.val.i506, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1683
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit508

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit508: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit505, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %bb.dn

.loopexit983:                                     ; preds = %.lr.ph.i275, %bb.z, %bb.y, %.lr.ph141.i285, %.preheader111.i292, %bb.ad, %bb.ae, %.lr.ph150.i300, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs44SRMMtlaHN_9uu_csplit.exit273, %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5721.0.copyload723, i64 noundef %.sroa.8725.0.copyload727) #21
  %i.uo = load i8, ptr %i.bz, align 8, !range !20, !noundef !4
  %i.up = trunc nuw i8 %i.uo to i1
  br i1 %i.up, label %bb.dv, label %bb.dw

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit307: ; preds = %bb.aa, %bb.ab, %bb.af, %bb.ag, %.preheader.i298, %.preheader114.i283
  %.sroa.15732.0 = phi i64 [ %i.hj, %bb.ag ], [ %i.gm, %bb.ab ], [ %i.ha, %bb.af ], [ 0, %.preheader.i298 ], [ 0, %.preheader114.i283 ], [ %i.gd, %bb.aa ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, i64 noundef %.sroa.15732.0) #22
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dw, %bb.dv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit307
  %.sroa.01.0.not = phi i1 [ true, %bb.dv ], [ false, %bb.dw ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit307 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ur = load i64, ptr %i.uq, align 8, !noundef !4
  %i.us = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ur, ptr noalias nofree noundef nonnull %i.s, i64 noundef 20) #22 ; 2 uses
  %i.ut = extractvalue { ptr, i64 } %i.us, 0
  %i.uu = extractvalue { ptr, i64 } %i.us, 1      ; 16 uses
  %.not.i509 = icmp slt i64 %i.uu, 0
  br i1 %.not.i509, label %bb.dx, label %bb.du, !prof !17

bb.du:                                            ; preds = %bb.dt
  %i.uv = icmp eq i64 %i.uu, 0
  br i1 %i.uv, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i510

.thread:                                          ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.loopexit976

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i510: ; preds = %bb.du
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1684
  %i.uw = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.uu, i64 noundef range(i64 1, 9) 1) #22, !noalias !1684 ; 18 uses
  %i.ux = icmp eq ptr %i.uw, null
  br i1 %i.ux, label %bb.dx, label %bb.dy

bb.dv:                                            ; preds = %.loopexit983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 %.sroa.0719.0.copyload720, ptr %i.by, align 8
  %.sroa.5721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %.sroa.5721.0.copyload723, ptr %.sroa.5721.0..sroa_idx, align 8
  %.sroa.8725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %.sroa.8725.0.copyload727, ptr %.sroa.8725.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.by) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.dt

bb.dw:                                            ; preds = %.loopexit983
  %i.uy = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.uz = load double, ptr %i.uy, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, double noundef %i.uz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.dt

bb.dx:                                            ; preds = %bb.dt, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i510
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i510 ], [ 0, %bb.dt ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.uu) #25
  unreachable

bb.dy:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i510
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uw, ptr align 1 %i.ut, i64 %i.uu, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %cond = icmp eq i64 %i.uu, 1
  %i.va = load i8, ptr %i.uw, align 1, !alias.scope !1685, !noalias !1686 ; 2 uses
  br i1 %cond, label %bb.dz, label %thread-pre-split.i544

bb.dz:                                            ; preds = %bb.dy
  switch i8 %i.va, label %bb.eg [
    i8 43, label %.loopexit976
    i8 45, label %.loopexit976
  ]

thread-pre-split.i544:                            ; preds = %bb.dy
  switch i8 %i.va, label %bb.eg [
    i8 43, label %bb.ea
    i8 45, label %bb.eb
  ]

bb.ea:                                            ; preds = %thread-pre-split.i544
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 1
  %i.vc = add nsw i64 %i.uu, -1
  br label %bb.eg

bb.eb:                                            ; preds = %thread-pre-split.i544
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uw, i64 1 ; 2 uses
  %i.ve = add nsw i64 %i.uu, -1                   ; 2 uses
  %i.vf = icmp samesign ult i64 %i.uu, 17
  br i1 %i.vf, label %.lr.ph141.i524, label %.lr.ph.i514

.lr.ph.i514:                                      ; preds = %bb.eb, %bb.ee
  %.sroa.0.1136.i515 = phi ptr [ %i.vg, %bb.ee ], [ %i.vd, %bb.eb ] ; 2 uses
  %.sroa.26.1135.i516 = phi i64 [ %i.vh, %bb.ee ], [ %i.ve, %bb.eb ]
  %.sroa.084.0134.i517 = phi i64 [ %i.vs, %bb.ee ], [ 0, %bb.eb ]
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i515, i64 1
  %i.vh = add nsw i64 %.sroa.26.1135.i516, -1     ; 2 uses
  %i.vi = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i517, i64 10) ; 2 uses
  %i.vj = extractvalue { i64, i1 } %i.vi, 0
  %i.vk = extractvalue { i64, i1 } %i.vi, 1
  br i1 %i.vk, label %.loopexit976, label %bb.ec, !prof !19

bb.ec:                                            ; preds = %.lr.ph.i514
  %i.vl = load i8, ptr %.sroa.0.1136.i515, align 1, !alias.scope !1685, !noalias !1686, !noundef !4
  %i.vm = zext i8 %i.vl to i32
  %i.vn = add nsw i32 %i.vm, -48                  ; 2 uses
  %i.vo = icmp ult i32 %i.vn, 10
  br i1 %i.vo, label %bb.ed, label %.loopexit976

bb.ed:                                            ; preds = %bb.ec
  %i.vp = zext nneg i32 %i.vn to i64
  %i.vq = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.vj, i64 %i.vp) ; 2 uses
  %i.vr = extractvalue { i64, i1 } %i.vq, 1
  br i1 %i.vr, label %.loopexit976, label %bb.ee, !prof !19

bb.ee:                                            ; preds = %bb.ed
  %i.vs = extractvalue { i64, i1 } %i.vq, 0       ; 2 uses
  %.not102.i519 = icmp eq i64 %i.vh, 0
  br i1 %.not102.i519, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit546, label %.lr.ph.i514

.lr.ph141.i524:                                   ; preds = %bb.eb, %bb.ef
  %.sroa.0.2140.i525 = phi ptr [ %i.vz, %bb.ef ], [ %i.vd, %bb.eb ] ; 2 uses
  %.sroa.26.2139.i526 = phi i64 [ %i.vy, %bb.ef ], [ %i.ve, %bb.eb ]
  %.sroa.084.2138.i527 = phi i64 [ %i.wb, %bb.ef ], [ 0, %bb.eb ]
  %i.vt = load i8, ptr %.sroa.0.2140.i525, align 1, !alias.scope !1685, !noalias !1686, !noundef !4
  %i.vu = zext i8 %i.vt to i32
  %i.vv = add nsw i32 %i.vu, -48                  ; 2 uses
  %i.vw = icmp ult i32 %i.vv, 10
  br i1 %i.vw, label %bb.ef, label %.loopexit976

bb.ef:                                            ; preds = %.lr.ph141.i524
  %i.vx = mul i64 %.sroa.084.2138.i527, 10
  %i.vy = add nsw i64 %.sroa.26.2139.i526, -1     ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i525, i64 1
  %i.wa = zext nneg i32 %i.vv to i64
  %i.wb = sub i64 %i.vx, %i.wa                    ; 2 uses
  %.not103.i528 = icmp eq i64 %i.vy, 0
  br i1 %.not103.i528, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit546, label %.lr.ph141.i524

bb.eg:                                            ; preds = %bb.dz, %bb.ea, %thread-pre-split.i544
  %.sroa.26.0.i529 = phi i64 [ %i.vc, %bb.ea ], [ %i.uu, %thread-pre-split.i544 ], [ %i.uu, %bb.dz ] ; 3 uses
  %.sroa.0.0.i530 = phi ptr [ %i.vb, %bb.ea ], [ %i.uw, %thread-pre-split.i544 ], [ %i.uw, %bb.dz ] ; 2 uses
  %i.wc = icmp samesign ult i64 %.sroa.26.0.i529, 16
  br i1 %i.wc, label %.lr.ph150.i539, label %.preheader111.i531

.preheader111.i531:                               ; preds = %bb.eg, %bb.ej
  %.sroa.0.3145.i532 = phi ptr [ %i.wd, %bb.ej ], [ %.sroa.0.0.i530, %bb.eg ] ; 2 uses
  %.sroa.26.3144.i533 = phi i64 [ %i.we, %bb.ej ], [ %.sroa.26.0.i529, %bb.eg ]
  %.sroa.084.3143.i534 = phi i64 [ %i.wp, %bb.ej ], [ 0, %bb.eg ]
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i532, i64 1
  %i.we = add nsw i64 %.sroa.26.3144.i533, -1     ; 2 uses
  %i.wf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i534, i64 10) ; 2 uses
  %i.wg = extractvalue { i64, i1 } %i.wf, 0
  %i.wh = extractvalue { i64, i1 } %i.wf, 1
  br i1 %i.wh, label %.loopexit976, label %bb.eh, !prof !19

bb.eh:                                            ; preds = %.preheader111.i531
  %i.wi = load i8, ptr %.sroa.0.3145.i532, align 1, !alias.scope !1685, !noalias !1686, !noundef !4
  %i.wj = zext i8 %i.wi to i32
  %i.wk = add nsw i32 %i.wj, -48                  ; 2 uses
  %i.wl = icmp ult i32 %i.wk, 10
  br i1 %i.wl, label %bb.ei, label %.loopexit976

bb.ei:                                            ; preds = %bb.eh
  %i.wm = zext nneg i32 %i.wk to i64
  %i.wn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.wg, i64 %i.wm) ; 2 uses
  %i.wo = extractvalue { i64, i1 } %i.wn, 1
  br i1 %i.wo, label %.loopexit976, label %bb.ej, !prof !19

bb.ej:                                            ; preds = %bb.ei
  %i.wp = extractvalue { i64, i1 } %i.wn, 0       ; 2 uses
  %.not104.i536 = icmp eq i64 %i.we, 0
  br i1 %.not104.i536, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit546, label %.preheader111.i531

.lr.ph150.i539:                                   ; preds = %bb.eg, %bb.ek
  %.sroa.0.4149.i540 = phi ptr [ %i.ww, %bb.ek ], [ %.sroa.0.0.i530, %bb.eg ] ; 2 uses
  %.sroa.26.4148.i541 = phi i64 [ %i.wv, %bb.ek ], [ %.sroa.26.0.i529, %bb.eg ]
  %.sroa.084.4147.i542 = phi i64 [ %i.wy, %bb.ek ], [ 0, %bb.eg ]
  %i.wq = load i8, ptr %.sroa.0.4149.i540, align 1, !alias.scope !1685, !noalias !1686, !noundef !4
  %i.wr = zext i8 %i.wq to i32
  %i.ws = add nsw i32 %i.wr, -48                  ; 2 uses
  %i.wt = icmp ult i32 %i.ws, 10
  br i1 %i.wt, label %bb.ek, label %.loopexit976

bb.ek:                                            ; preds = %.lr.ph150.i539
  %i.wu = mul i64 %.sroa.084.4147.i542, 10
  %i.wv = add nsw i64 %.sroa.26.4148.i541, -1     ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i540, i64 1
  %i.wx = zext nneg i32 %i.ws to i64
  %i.wy = add i64 %i.wu, %i.wx                    ; 2 uses
  %.not105.i543 = icmp eq i64 %i.wv, 0
  br i1 %.not105.i543, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit546, label %.lr.ph150.i539

.loopexit976:                                     ; preds = %.lr.ph.i514, %bb.ed, %bb.ec, %.lr.ph141.i524, %.preheader111.i531, %bb.eh, %bb.ei, %.lr.ph150.i539, %bb.dz, %bb.dz, %.thread
  %.ph = phi ptr [ %i.uw, %.preheader111.i531 ], [ %i.uw, %.lr.ph141.i524 ], [ %i.uw, %.lr.ph150.i539 ], [ %i.uw, %bb.dz ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.uw, %bb.dz ], [ %i.uw, %bb.ei ], [ %i.uw, %bb.eh ], [ %i.uw, %bb.ec ], [ %i.uw, %bb.ed ], [ %i.uw, %.lr.ph.i514 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.uu) #21
  %i.wz = load i8, ptr %i.bx, align 8, !range !20, !noundef !4
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %bb.en, label %bb.eo

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit546: ; preds = %bb.ee, %bb.ef, %bb.ej, %bb.ek
  %.sroa.15739.0 = phi i64 [ %i.wp, %bb.ej ], [ %i.wb, %bb.ef ], [ %i.wy, %bb.ek ], [ %i.vs, %bb.ee ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 10, i64 noundef %.sroa.15739.0) #22
  br label %bb.el

bb.el:                                            ; preds = %bb.eo, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit546
  %i.xb = phi ptr [ %.ph, %bb.eo ], [ %i.uw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit546 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 44, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.xc = icmp eq i64 %i.uu, 0
  br i1 %i.xc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit549, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xb, i64 noundef %i.uu, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1687
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit549

bb.en:                                            ; preds = %.loopexit976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i64 %i.uu, ptr %i.bw, align 8
  %.sroa.5734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.ph, ptr %.sroa.5734.0..sroa_idx, align 8
  %.sroa.8735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %i.uu, ptr %.sroa.8735.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 10, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 44, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit549

bb.eo:                                            ; preds = %.loopexit976
  %i.xd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.xe = load double, ptr %i.xd, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 10, double noundef %i.xe) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.el

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit549: ; preds = %bb.em, %bb.el, %bb.en
  %i.xf = icmp eq i64 %.sroa.0719.0.copyload720, 0
  %or.cond = select i1 %.sroa.01.0.not, i1 true, i1 %i.xf
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit555, label %bb.eq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit555: ; preds = %bb.eq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store ptr %i.cc, ptr %i.bu, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.472.0..sroa_idx, align 8
  %i.xg = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !nonnull !4, !align !6, !noundef !4
  %i.xj = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.xg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xi, ptr noundef nonnull @28, ptr noundef nonnull %i.bu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %.val.i550 = load i64, ptr %i.cc, align 8, !range !5, !alias.scope !1688, !noundef !4 ; 2 uses
  %i.xk = icmp eq i64 %.val.i550, 0
  br i1 %i.xk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit552, label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit555
  %i.xl = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.val1.i551 = load ptr, ptr %i.xl, align 8, !alias.scope !1688, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i551, i64 noundef %.val.i550, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1688
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit552

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit552: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit555, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.dn

bb.eq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit549
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5721.0.copyload723, i64 noundef %.sroa.0719.0.copyload720, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1689
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit555

.loopexit990:                                     ; preds = %.lr.ph.i312, %bb.ao, %bb.an, %.lr.ph141.i322, %.preheader111.i329, %bb.as, %bb.at, %.lr.ph150.i337, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs44SRMMtlaHN_9uu_csplit.exit310, %bb.aj, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5742.0.copyload744, i64 noundef %.sroa.8746.0.copyload748) #21
  %i.xm = load i8, ptr %i.bq, align 8, !range !20, !noundef !4
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %bb.et, label %bb.eu

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit344: ; preds = %bb.ap, %bb.aq, %bb.au, %bb.av, %.preheader.i335, %.preheader114.i320
  %.sroa.15753.0 = phi i64 [ %i.jr, %bb.av ], [ %i.iu, %bb.aq ], [ %i.ji, %bb.au ], [ 0, %.preheader.i335 ], [ 0, %.preheader114.i320 ], [ %i.il, %bb.ap ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, i64 noundef %.sroa.15753.0) #22
  br label %bb.er

bb.er:                                            ; preds = %bb.eu, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bo) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.xo = icmp eq i64 %.sroa.0740.0.copyload741, 0
  br i1 %i.xo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit558, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5742.0.copyload744, i64 noundef %.sroa.0740.0.copyload741, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1690
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit558

bb.et:                                            ; preds = %.loopexit990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 %.sroa.0740.0.copyload741, ptr %i.bp, align 8
  %.sroa.5742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %.sroa.5742.0.copyload744, ptr %.sroa.5742.0..sroa_idx, align 8
  %.sroa.8746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %.sroa.8746.0.copyload748, ptr %.sroa.8746.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bp) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bo) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit558

bb.eu:                                            ; preds = %.loopexit990
  %i.xp = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.xq = load double, ptr %i.xp, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, double noundef %i.xq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.er

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit558: ; preds = %bb.es, %bb.er, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store ptr %i.bt, ptr %i.bn, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.491.0..sroa_idx, align 8
  %i.xr = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !nonnull !4, !align !6, !noundef !4
  %i.xu = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.xr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xt, ptr noundef nonnull @28, ptr noundef nonnull %i.bn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  %.val.i559 = load i64, ptr %i.bt, align 8, !range !5, !alias.scope !1691, !noundef !4 ; 2 uses
  %i.xv = icmp eq i64 %.val.i559, 0
  br i1 %i.xv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit561, label %bb.ev

bb.ev:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit558
  %i.xw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val1.i560 = load ptr, ptr %i.xw, align 8, !alias.scope !1691, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i560, i64 noundef %.val.i559, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1691
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit561

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit561: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit558, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.dn

.loopexit1004:                                    ; preds = %.lr.ph.i349, %bb.bd, %bb.bc, %.lr.ph141.i359, %.preheader111.i366, %bb.bh, %bb.bi, %.lr.ph150.i374, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs44SRMMtlaHN_9uu_csplit.exit347, %bb.ay, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5756.0.copyload758, i64 noundef %.sroa.8760.0.copyload762) #21
  %i.xx = load i8, ptr %i.bj, align 8, !range !20, !noundef !4
  %i.xy = trunc nuw i8 %i.xx to i1
  br i1 %i.xy, label %bb.ey, label %bb.ez

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit381: ; preds = %bb.be, %bb.bf, %bb.bj, %bb.bk, %.preheader.i372, %.preheader114.i357
  %.sroa.15767.0 = phi i64 [ %i.lz, %bb.bk ], [ %i.lc, %bb.bf ], [ %i.lq, %bb.bj ], [ 0, %.preheader.i372 ], [ 0, %.preheader114.i357 ], [ %i.kt, %bb.be ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, i64 noundef %.sroa.15767.0) #22
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ez, %bb.ey, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit381
  %.sroa.02.0.not = phi i1 [ true, %bb.ey ], [ false, %bb.ez ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit381 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ya = load i64, ptr %i.xz, align 8, !noundef !4
  %i.yb = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ya, ptr noalias nofree noundef nonnull %i.r, i64 noundef 20) #22 ; 2 uses
  %i.yc = extractvalue { ptr, i64 } %i.yb, 0
  %i.yd = extractvalue { ptr, i64 } %i.yb, 1      ; 16 uses
  %.not.i562 = icmp slt i64 %i.yd, 0
  br i1 %.not.i562, label %bb.fa, label %bb.ex, !prof !17

bb.ex:                                            ; preds = %bb.ew
  %i.ye = icmp eq i64 %i.yd, 0
  br i1 %i.ye, label %.thread900, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i563

.thread900:                                       ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.loopexit997

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i563: ; preds = %bb.ex
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1692
  %i.yf = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.yd, i64 noundef range(i64 1, 9) 1) #22, !noalias !1692 ; 18 uses
  %i.yg = icmp eq ptr %i.yf, null
  br i1 %i.yg, label %bb.fa, label %bb.fb

bb.ey:                                            ; preds = %.loopexit1004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i64 %.sroa.0754.0.copyload755, ptr %i.bi, align 8
  %.sroa.5756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.5756.0.copyload758, ptr %.sroa.5756.0..sroa_idx, align 8
  %.sroa.8760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.sroa.8760.0.copyload762, ptr %.sroa.8760.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bi) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.ew

bb.ez:                                            ; preds = %.loopexit1004
  %i.yh = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.yi = load double, ptr %i.yh, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, double noundef %i.yi) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.ew

bb.fa:                                            ; preds = %bb.ew, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i563
  %.sroa.4834.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i563 ], [ 0, %bb.ew ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4834.0.ph, i64 %i.yd) #25
  unreachable

bb.fb:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i563
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yf, ptr align 1 %i.yc, i64 %i.yd, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %cond965 = icmp eq i64 %i.yd, 1
  %i.yj = load i8, ptr %i.yf, align 1, !alias.scope !1693, !noalias !1694 ; 2 uses
  br i1 %cond965, label %bb.fc, label %thread-pre-split.i597

bb.fc:                                            ; preds = %bb.fb
  switch i8 %i.yj, label %bb.fj [
    i8 43, label %.loopexit997
    i8 45, label %.loopexit997
  ]

thread-pre-split.i597:                            ; preds = %bb.fb
  switch i8 %i.yj, label %bb.fj [
    i8 43, label %bb.fd
    i8 45, label %bb.fe
  ]

bb.fd:                                            ; preds = %thread-pre-split.i597
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yf, i64 1
  %i.yl = add nsw i64 %i.yd, -1
  br label %bb.fj

bb.fe:                                            ; preds = %thread-pre-split.i597
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yf, i64 1 ; 2 uses
  %i.yn = add nsw i64 %i.yd, -1                   ; 2 uses
  %i.yo = icmp samesign ult i64 %i.yd, 17
  br i1 %i.yo, label %.lr.ph141.i577, label %.lr.ph.i567

.lr.ph.i567:                                      ; preds = %bb.fe, %bb.fh
  %.sroa.0.1136.i568 = phi ptr [ %i.yp, %bb.fh ], [ %i.ym, %bb.fe ] ; 2 uses
  %.sroa.26.1135.i569 = phi i64 [ %i.yq, %bb.fh ], [ %i.yn, %bb.fe ]
  %.sroa.084.0134.i570 = phi i64 [ %i.zb, %bb.fh ], [ 0, %bb.fe ]
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i568, i64 1
  %i.yq = add nsw i64 %.sroa.26.1135.i569, -1     ; 2 uses
  %i.yr = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i570, i64 10) ; 2 uses
  %i.ys = extractvalue { i64, i1 } %i.yr, 0
  %i.yt = extractvalue { i64, i1 } %i.yr, 1
  br i1 %i.yt, label %.loopexit997, label %bb.ff, !prof !19

bb.ff:                                            ; preds = %.lr.ph.i567
  %i.yu = load i8, ptr %.sroa.0.1136.i568, align 1, !alias.scope !1693, !noalias !1694, !noundef !4
  %i.yv = zext i8 %i.yu to i32
  %i.yw = add nsw i32 %i.yv, -48                  ; 2 uses
  %i.yx = icmp ult i32 %i.yw, 10
  br i1 %i.yx, label %bb.fg, label %.loopexit997

bb.fg:                                            ; preds = %bb.ff
  %i.yy = zext nneg i32 %i.yw to i64
  %i.yz = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ys, i64 %i.yy) ; 2 uses
  %i.za = extractvalue { i64, i1 } %i.yz, 1
  br i1 %i.za, label %.loopexit997, label %bb.fh, !prof !19

bb.fh:                                            ; preds = %bb.fg
  %i.zb = extractvalue { i64, i1 } %i.yz, 0       ; 2 uses
  %.not102.i572 = icmp eq i64 %i.yq, 0
  br i1 %.not102.i572, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit599, label %.lr.ph.i567

.lr.ph141.i577:                                   ; preds = %bb.fe, %bb.fi
  %.sroa.0.2140.i578 = phi ptr [ %i.zi, %bb.fi ], [ %i.ym, %bb.fe ] ; 2 uses
  %.sroa.26.2139.i579 = phi i64 [ %i.zh, %bb.fi ], [ %i.yn, %bb.fe ]
  %.sroa.084.2138.i580 = phi i64 [ %i.zk, %bb.fi ], [ 0, %bb.fe ]
  %i.zc = load i8, ptr %.sroa.0.2140.i578, align 1, !alias.scope !1693, !noalias !1694, !noundef !4
  %i.zd = zext i8 %i.zc to i32
  %i.ze = add nsw i32 %i.zd, -48                  ; 2 uses
  %i.zf = icmp ult i32 %i.ze, 10
  br i1 %i.zf, label %bb.fi, label %.loopexit997

bb.fi:                                            ; preds = %.lr.ph141.i577
  %i.zg = mul i64 %.sroa.084.2138.i580, 10
  %i.zh = add nsw i64 %.sroa.26.2139.i579, -1     ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i578, i64 1
  %i.zj = zext nneg i32 %i.ze to i64
  %i.zk = sub i64 %i.zg, %i.zj                    ; 2 uses
  %.not103.i581 = icmp eq i64 %i.zh, 0
  br i1 %.not103.i581, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit599, label %.lr.ph141.i577

bb.fj:                                            ; preds = %bb.fc, %bb.fd, %thread-pre-split.i597
  %.sroa.26.0.i582 = phi i64 [ %i.yl, %bb.fd ], [ %i.yd, %thread-pre-split.i597 ], [ %i.yd, %bb.fc ] ; 3 uses
  %.sroa.0.0.i583 = phi ptr [ %i.yk, %bb.fd ], [ %i.yf, %thread-pre-split.i597 ], [ %i.yf, %bb.fc ] ; 2 uses
  %i.zl = icmp samesign ult i64 %.sroa.26.0.i582, 16
  br i1 %i.zl, label %.lr.ph150.i592, label %.preheader111.i584

.preheader111.i584:                               ; preds = %bb.fj, %bb.fm
  %.sroa.0.3145.i585 = phi ptr [ %i.zm, %bb.fm ], [ %.sroa.0.0.i583, %bb.fj ] ; 2 uses
  %.sroa.26.3144.i586 = phi i64 [ %i.zn, %bb.fm ], [ %.sroa.26.0.i582, %bb.fj ]
  %.sroa.084.3143.i587 = phi i64 [ %i.zy, %bb.fm ], [ 0, %bb.fj ]
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i585, i64 1
  %i.zn = add nsw i64 %.sroa.26.3144.i586, -1     ; 2 uses
  %i.zo = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i587, i64 10) ; 2 uses
  %i.zp = extractvalue { i64, i1 } %i.zo, 0
  %i.zq = extractvalue { i64, i1 } %i.zo, 1
  br i1 %i.zq, label %.loopexit997, label %bb.fk, !prof !19

bb.fk:                                            ; preds = %.preheader111.i584
  %i.zr = load i8, ptr %.sroa.0.3145.i585, align 1, !alias.scope !1693, !noalias !1694, !noundef !4
  %i.zs = zext i8 %i.zr to i32
  %i.zt = add nsw i32 %i.zs, -48                  ; 2 uses
  %i.zu = icmp ult i32 %i.zt, 10
  br i1 %i.zu, label %bb.fl, label %.loopexit997

bb.fl:                                            ; preds = %bb.fk
  %i.zv = zext nneg i32 %i.zt to i64
  %i.zw = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.zp, i64 %i.zv) ; 2 uses
  %i.zx = extractvalue { i64, i1 } %i.zw, 1
  br i1 %i.zx, label %.loopexit997, label %bb.fm, !prof !19

bb.fm:                                            ; preds = %bb.fl
  %i.zy = extractvalue { i64, i1 } %i.zw, 0       ; 2 uses
  %.not104.i589 = icmp eq i64 %i.zn, 0
  br i1 %.not104.i589, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit599, label %.preheader111.i584

.lr.ph150.i592:                                   ; preds = %bb.fj, %bb.fn
  %.sroa.0.4149.i593 = phi ptr [ %i.aaf, %bb.fn ], [ %.sroa.0.0.i583, %bb.fj ] ; 2 uses
  %.sroa.26.4148.i594 = phi i64 [ %i.aae, %bb.fn ], [ %.sroa.26.0.i582, %bb.fj ]
  %.sroa.084.4147.i595 = phi i64 [ %i.aah, %bb.fn ], [ 0, %bb.fj ]
  %i.zz = load i8, ptr %.sroa.0.4149.i593, align 1, !alias.scope !1693, !noalias !1694, !noundef !4
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = add nsw i32 %i.aaa, -48                ; 2 uses
  %i.aac = icmp ult i32 %i.aab, 10
  br i1 %i.aac, label %bb.fn, label %.loopexit997

bb.fn:                                            ; preds = %.lr.ph150.i592
  %i.aad = mul i64 %.sroa.084.4147.i595, 10
  %i.aae = add nsw i64 %.sroa.26.4148.i594, -1    ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i593, i64 1
  %i.aag = zext nneg i32 %i.aab to i64
  %i.aah = add i64 %i.aad, %i.aag                 ; 2 uses
  %.not105.i596 = icmp eq i64 %i.aae, 0
  br i1 %.not105.i596, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit599, label %.lr.ph150.i592

.loopexit997:                                     ; preds = %.lr.ph.i567, %bb.fg, %bb.ff, %.lr.ph141.i577, %.preheader111.i584, %bb.fk, %bb.fl, %.lr.ph150.i592, %bb.fc, %bb.fc, %.thread900
  %.ph908 = phi ptr [ %i.yf, %.preheader111.i584 ], [ %i.yf, %.lr.ph141.i577 ], [ %i.yf, %.lr.ph150.i592 ], [ %i.yf, %bb.fc ], [ inttoptr (i64 1 to ptr), %.thread900 ], [ %i.yf, %bb.fc ], [ %i.yf, %bb.fl ], [ %i.yf, %bb.fk ], [ %i.yf, %bb.ff ], [ %i.yf, %bb.fg ], [ %i.yf, %.lr.ph.i567 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph908, i64 noundef %i.yd) #21
  %i.aai = load i8, ptr %i.bh, align 8, !range !20, !noundef !4
  %i.aaj = trunc nuw i8 %i.aai to i1
  br i1 %i.aaj, label %bb.fq, label %bb.fr

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit599: ; preds = %bb.fh, %bb.fi, %bb.fm, %bb.fn
  %.sroa.15774.0 = phi i64 [ %i.zy, %bb.fm ], [ %i.zk, %bb.fi ], [ %i.aah, %bb.fn ], [ %i.zb, %bb.fh ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 10, i64 noundef %.sroa.15774.0) #22
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fr, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit599
  %i.aak = phi ptr [ %.ph908, %bb.fr ], [ %i.yf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit599 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 42, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.aal = icmp eq i64 %i.yd, 0
  br i1 %i.aal, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit602, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aak, i64 noundef %i.yd, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1695
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit602

bb.fq:                                            ; preds = %.loopexit997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i64 %i.yd, ptr %i.bg, align 8
  %.sroa.5769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.ph908, ptr %.sroa.5769.0..sroa_idx, align 8
  %.sroa.8770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.yd, ptr %.sroa.8770.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 10, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 42, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit602

bb.fr:                                            ; preds = %.loopexit997
  %i.aam = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.aan = load double, ptr %i.aam, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 10, double noundef %i.aan) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.fo

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit602: ; preds = %bb.fp, %bb.fo, %bb.fq
  %i.aao = icmp eq i64 %.sroa.0754.0.copyload755, 0
  %or.cond968 = select i1 %.sroa.02.0.not, i1 true, i1 %i.aao
  br i1 %or.cond968, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit608, label %bb.ft

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit608: ; preds = %bb.ft, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.bm, ptr %i.be, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx, align 8
  %i.aap = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aas = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.aap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aar, ptr noundef nonnull @28, ptr noundef nonnull %i.be) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %.val.i603 = load i64, ptr %i.bm, align 8, !range !5, !alias.scope !1696, !noundef !4 ; 2 uses
  %i.aat = icmp eq i64 %.val.i603, 0
  br i1 %i.aat, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit605, label %bb.fs

bb.fs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit608
  %i.aau = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val1.i604 = load ptr, ptr %i.aau, align 8, !alias.scope !1696, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i604, i64 noundef %.val.i603, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1696
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit605

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit605: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit608, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.dn

bb.ft:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit602
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5756.0.copyload758, i64 noundef %.sroa.0754.0.copyload755, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1697
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit608

bb.fu:                                            ; preds = %bb.bn, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4838.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.bn ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4838.0.ph, i64 %i.mk) #25
  unreachable

bb.fv:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mm, ptr align 1 %i.mj, i64 %i.mk, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %cond967 = icmp eq i64 %i.mk, 1
  %i.aav = load i8, ptr %i.mm, align 1, !alias.scope !1698, !noalias !1699 ; 2 uses
  br i1 %cond967, label %bb.fw, label %thread-pre-split.i640

bb.fw:                                            ; preds = %bb.fv
  switch i8 %i.aav, label %bb.gd [
    i8 43, label %.loopexit1018
    i8 45, label %.loopexit1018
  ]

thread-pre-split.i640:                            ; preds = %bb.fv
  switch i8 %i.aav, label %bb.gd [
    i8 43, label %bb.fx
    i8 45, label %bb.fy
  ]

bb.fx:                                            ; preds = %thread-pre-split.i640
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.mm, i64 1
  %i.aax = add nsw i64 %i.mk, -1
  br label %bb.gd

bb.fy:                                            ; preds = %thread-pre-split.i640
  %i.aay = getelementptr inbounds nuw i8, ptr %i.mm, i64 1 ; 2 uses
  %i.aaz = add nsw i64 %i.mk, -1                  ; 2 uses
  %i.aba = icmp samesign ult i64 %i.mk, 17
  br i1 %i.aba, label %.lr.ph141.i620, label %.lr.ph.i610

.lr.ph.i610:                                      ; preds = %bb.fy, %bb.gb
  %.sroa.0.1136.i611 = phi ptr [ %i.abb, %bb.gb ], [ %i.aay, %bb.fy ] ; 2 uses
  %.sroa.26.1135.i612 = phi i64 [ %i.abc, %bb.gb ], [ %i.aaz, %bb.fy ]
  %.sroa.084.0134.i613 = phi i64 [ %i.abn, %bb.gb ], [ 0, %bb.fy ]
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i611, i64 1
  %i.abc = add nsw i64 %.sroa.26.1135.i612, -1    ; 2 uses
  %i.abd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i613, i64 10) ; 2 uses
  %i.abe = extractvalue { i64, i1 } %i.abd, 0
  %i.abf = extractvalue { i64, i1 } %i.abd, 1
  br i1 %i.abf, label %.loopexit1018, label %bb.fz, !prof !19

bb.fz:                                            ; preds = %.lr.ph.i610
  %i.abg = load i8, ptr %.sroa.0.1136.i611, align 1, !alias.scope !1698, !noalias !1699, !noundef !4
  %i.abh = zext i8 %i.abg to i32
  %i.abi = add nsw i32 %i.abh, -48                ; 2 uses
  %i.abj = icmp ult i32 %i.abi, 10
  br i1 %i.abj, label %bb.ga, label %.loopexit1018

bb.ga:                                            ; preds = %bb.fz
  %i.abk = zext nneg i32 %i.abi to i64
  %i.abl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.abe, i64 %i.abk) ; 2 uses
  %i.abm = extractvalue { i64, i1 } %i.abl, 1
  br i1 %i.abm, label %.loopexit1018, label %bb.gb, !prof !19

bb.gb:                                            ; preds = %bb.ga
  %i.abn = extractvalue { i64, i1 } %i.abl, 0     ; 2 uses
  %.not102.i615 = icmp eq i64 %i.abc, 0
  br i1 %.not102.i615, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit642, label %.lr.ph.i610

.lr.ph141.i620:                                   ; preds = %bb.fy, %bb.gc
  %.sroa.0.2140.i621 = phi ptr [ %i.abu, %bb.gc ], [ %i.aay, %bb.fy ] ; 2 uses
  %.sroa.26.2139.i622 = phi i64 [ %i.abt, %bb.gc ], [ %i.aaz, %bb.fy ]
  %.sroa.084.2138.i623 = phi i64 [ %i.abw, %bb.gc ], [ 0, %bb.fy ]
  %i.abo = load i8, ptr %.sroa.0.2140.i621, align 1, !alias.scope !1698, !noalias !1699, !noundef !4
  %i.abp = zext i8 %i.abo to i32
  %i.abq = add nsw i32 %i.abp, -48                ; 2 uses
  %i.abr = icmp ult i32 %i.abq, 10
  br i1 %i.abr, label %bb.gc, label %.loopexit1018

bb.gc:                                            ; preds = %.lr.ph141.i620
  %i.abs = mul i64 %.sroa.084.2138.i623, 10
  %i.abt = add nsw i64 %.sroa.26.2139.i622, -1    ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i621, i64 1
  %i.abv = zext nneg i32 %i.abq to i64
  %i.abw = sub i64 %i.abs, %i.abv                 ; 2 uses
  %.not103.i624 = icmp eq i64 %i.abt, 0
  br i1 %.not103.i624, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit642, label %.lr.ph141.i620

bb.gd:                                            ; preds = %bb.fw, %bb.fx, %thread-pre-split.i640
  %.sroa.26.0.i625 = phi i64 [ %i.aax, %bb.fx ], [ %i.mk, %thread-pre-split.i640 ], [ %i.mk, %bb.fw ] ; 3 uses
  %.sroa.0.0.i626 = phi ptr [ %i.aaw, %bb.fx ], [ %i.mm, %thread-pre-split.i640 ], [ %i.mm, %bb.fw ] ; 2 uses
  %i.abx = icmp samesign ult i64 %.sroa.26.0.i625, 16
  br i1 %i.abx, label %.lr.ph150.i635, label %.preheader111.i627

.preheader111.i627:                               ; preds = %bb.gd, %bb.gg
  %.sroa.0.3145.i628 = phi ptr [ %i.aby, %bb.gg ], [ %.sroa.0.0.i626, %bb.gd ] ; 2 uses
  %.sroa.26.3144.i629 = phi i64 [ %i.abz, %bb.gg ], [ %.sroa.26.0.i625, %bb.gd ]
  %.sroa.084.3143.i630 = phi i64 [ %i.ack, %bb.gg ], [ 0, %bb.gd ]
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i628, i64 1
  %i.abz = add nsw i64 %.sroa.26.3144.i629, -1    ; 2 uses
  %i.aca = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i630, i64 10) ; 2 uses
  %i.acb = extractvalue { i64, i1 } %i.aca, 0
  %i.acc = extractvalue { i64, i1 } %i.aca, 1
  br i1 %i.acc, label %.loopexit1018, label %bb.ge, !prof !19

bb.ge:                                            ; preds = %.preheader111.i627
  %i.acd = load i8, ptr %.sroa.0.3145.i628, align 1, !alias.scope !1698, !noalias !1699, !noundef !4
  %i.ace = zext i8 %i.acd to i32
  %i.acf = add nsw i32 %i.ace, -48                ; 2 uses
  %i.acg = icmp ult i32 %i.acf, 10
  br i1 %i.acg, label %bb.gf, label %.loopexit1018

bb.gf:                                            ; preds = %bb.ge
  %i.ach = zext nneg i32 %i.acf to i64
  %i.aci = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.acb, i64 %i.ach) ; 2 uses
  %i.acj = extractvalue { i64, i1 } %i.aci, 1
  br i1 %i.acj, label %.loopexit1018, label %bb.gg, !prof !19

bb.gg:                                            ; preds = %bb.gf
  %i.ack = extractvalue { i64, i1 } %i.aci, 0     ; 2 uses
  %.not104.i632 = icmp eq i64 %i.abz, 0
  br i1 %.not104.i632, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit642, label %.preheader111.i627

.lr.ph150.i635:                                   ; preds = %bb.gd, %bb.gh
  %.sroa.0.4149.i636 = phi ptr [ %i.acr, %bb.gh ], [ %.sroa.0.0.i626, %bb.gd ] ; 2 uses
  %.sroa.26.4148.i637 = phi i64 [ %i.acq, %bb.gh ], [ %.sroa.26.0.i625, %bb.gd ]
  %.sroa.084.4147.i638 = phi i64 [ %i.act, %bb.gh ], [ 0, %bb.gd ]
  %i.acl = load i8, ptr %.sroa.0.4149.i636, align 1, !alias.scope !1698, !noalias !1699, !noundef !4
  %i.acm = zext i8 %i.acl to i32
  %i.acn = add nsw i32 %i.acm, -48                ; 2 uses
  %i.aco = icmp ult i32 %i.acn, 10
  br i1 %i.aco, label %bb.gh, label %.loopexit1018

bb.gh:                                            ; preds = %.lr.ph150.i635
  %i.acp = mul i64 %.sroa.084.4147.i638, 10
  %i.acq = add nsw i64 %.sroa.26.4148.i637, -1    ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i636, i64 1
  %i.acs = zext nneg i32 %i.acn to i64
  %i.act = add i64 %i.acp, %i.acs                 ; 2 uses
  %.not105.i639 = icmp eq i64 %i.acq, 0
  br i1 %.not105.i639, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit642, label %.lr.ph150.i635

.loopexit1018:                                    ; preds = %.lr.ph.i610, %bb.ga, %bb.fz, %.lr.ph141.i620, %.preheader111.i627, %bb.ge, %bb.gf, %.lr.ph150.i635, %bb.fw, %bb.fw, %.thread922
  %.ph930 = phi ptr [ %i.mm, %.preheader111.i627 ], [ %i.mm, %.lr.ph141.i620 ], [ %i.mm, %.lr.ph150.i635 ], [ %i.mm, %bb.fw ], [ inttoptr (i64 1 to ptr), %.thread922 ], [ %i.mm, %bb.fw ], [ %i.mm, %bb.gf ], [ %i.mm, %bb.ge ], [ %i.mm, %bb.fz ], [ %i.mm, %bb.ga ], [ %i.mm, %.lr.ph.i610 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph930, i64 noundef %i.mk) #21
  %i.acu = load i8, ptr %i.az, align 8, !range !20, !noundef !4
  %i.acv = trunc nuw i8 %i.acu to i1
  br i1 %i.acv, label %bb.gk, label %bb.gl

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit642: ; preds = %bb.gb, %bb.gc, %bb.gg, %bb.gh
  %.sroa.15781.0 = phi i64 [ %i.ack, %bb.gg ], [ %i.abw, %bb.gc ], [ %i.act, %bb.gh ], [ %i.abn, %bb.gb ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 7, i64 noundef %.sroa.15781.0) #22
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gl, %bb.gk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit642
  %i.acw = phi ptr [ %.ph930, %bb.gk ], [ %.ph930, %bb.gl ], [ %i.mm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit642 ]
  %.sroa.03.0.not = phi i1 [ true, %bb.gk ], [ false, %bb.gl ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit642 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.acy = load i64, ptr %i.acx, align 8, !noundef !4
  %i.acz = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.acy, ptr noalias nofree noundef nonnull %i.p, i64 noundef 20) #22 ; 2 uses
  %i.ada = extractvalue { ptr, i64 } %i.acz, 0
  %i.adb = extractvalue { ptr, i64 } %i.acz, 1    ; 16 uses
  %.not.i643 = icmp slt i64 %i.adb, 0
  br i1 %.not.i643, label %bb.gm, label %bb.gj, !prof !17

bb.gj:                                            ; preds = %bb.gi
  %i.adc = icmp eq i64 %i.adb, 0
  br i1 %i.adc, label %.thread949, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i644

.thread949:                                       ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit1011

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i644: ; preds = %bb.gj
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1700
  %i.add = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.adb, i64 noundef range(i64 1, 9) 1) #22, !noalias !1700 ; 18 uses
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %bb.gm, label %bb.gn

bb.gk:                                            ; preds = %.loopexit1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 %i.mk, ptr %i.ay, align 8
  %.sroa.5776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.ph930, ptr %.sroa.5776.0..sroa_idx, align 8
  %.sroa.8777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.mk, ptr %.sroa.8777.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ay) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.gi

bb.gl:                                            ; preds = %.loopexit1018
  %i.adf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.adg = load double, ptr %i.adf, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 7, double noundef %i.adg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gi

bb.gm:                                            ; preds = %bb.gi, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i644
  %.sroa.4842.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i644 ], [ 0, %bb.gi ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4842.0.ph, i64 %i.adb) #25
  unreachable

bb.gn:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i644
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.add, ptr align 1 %i.ada, i64 %i.adb, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %cond966 = icmp eq i64 %i.adb, 1
  %i.adh = load i8, ptr %i.add, align 1, !alias.scope !1701, !noalias !1702 ; 2 uses
  br i1 %cond966, label %bb.go, label %thread-pre-split.i678

bb.go:                                            ; preds = %bb.gn
  switch i8 %i.adh, label %bb.gv [
    i8 43, label %.loopexit1011
    i8 45, label %.loopexit1011
  ]

thread-pre-split.i678:                            ; preds = %bb.gn
  switch i8 %i.adh, label %bb.gv [
    i8 43, label %bb.gp
    i8 45, label %bb.gq
  ]

bb.gp:                                            ; preds = %thread-pre-split.i678
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 1
  %i.adj = add nsw i64 %i.adb, -1
  br label %bb.gv

bb.gq:                                            ; preds = %thread-pre-split.i678
  %i.adk = getelementptr inbounds nuw i8, ptr %i.add, i64 1 ; 2 uses
  %i.adl = add nsw i64 %i.adb, -1                 ; 2 uses
  %i.adm = icmp samesign ult i64 %i.adb, 17
  br i1 %i.adm, label %.lr.ph141.i658, label %.lr.ph.i648

.lr.ph.i648:                                      ; preds = %bb.gq, %bb.gt
  %.sroa.0.1136.i649 = phi ptr [ %i.adn, %bb.gt ], [ %i.adk, %bb.gq ] ; 2 uses
  %.sroa.26.1135.i650 = phi i64 [ %i.ado, %bb.gt ], [ %i.adl, %bb.gq ]
  %.sroa.084.0134.i651 = phi i64 [ %i.adz, %bb.gt ], [ 0, %bb.gq ]
  %i.adn = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i649, i64 1
  %i.ado = add nsw i64 %.sroa.26.1135.i650, -1    ; 2 uses
  %i.adp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i651, i64 10) ; 2 uses
  %i.adq = extractvalue { i64, i1 } %i.adp, 0
  %i.adr = extractvalue { i64, i1 } %i.adp, 1
  br i1 %i.adr, label %.loopexit1011, label %bb.gr, !prof !19

bb.gr:                                            ; preds = %.lr.ph.i648
  %i.ads = load i8, ptr %.sroa.0.1136.i649, align 1, !alias.scope !1701, !noalias !1702, !noundef !4
  %i.adt = zext i8 %i.ads to i32
  %i.adu = add nsw i32 %i.adt, -48                ; 2 uses
  %i.adv = icmp ult i32 %i.adu, 10
  br i1 %i.adv, label %bb.gs, label %.loopexit1011

bb.gs:                                            ; preds = %bb.gr
  %i.adw = zext nneg i32 %i.adu to i64
  %i.adx = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.adq, i64 %i.adw) ; 2 uses
  %i.ady = extractvalue { i64, i1 } %i.adx, 1
  br i1 %i.ady, label %.loopexit1011, label %bb.gt, !prof !19

bb.gt:                                            ; preds = %bb.gs
  %i.adz = extractvalue { i64, i1 } %i.adx, 0     ; 2 uses
  %.not102.i653 = icmp eq i64 %i.ado, 0
  br i1 %.not102.i653, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit680, label %.lr.ph.i648

.lr.ph141.i658:                                   ; preds = %bb.gq, %bb.gu
  %.sroa.0.2140.i659 = phi ptr [ %i.aeg, %bb.gu ], [ %i.adk, %bb.gq ] ; 2 uses
  %.sroa.26.2139.i660 = phi i64 [ %i.aef, %bb.gu ], [ %i.adl, %bb.gq ]
  %.sroa.084.2138.i661 = phi i64 [ %i.aei, %bb.gu ], [ 0, %bb.gq ]
  %i.aea = load i8, ptr %.sroa.0.2140.i659, align 1, !alias.scope !1701, !noalias !1702, !noundef !4
  %i.aeb = zext i8 %i.aea to i32
  %i.aec = add nsw i32 %i.aeb, -48                ; 2 uses
  %i.aed = icmp ult i32 %i.aec, 10
  br i1 %i.aed, label %bb.gu, label %.loopexit1011

bb.gu:                                            ; preds = %.lr.ph141.i658
  %i.aee = mul i64 %.sroa.084.2138.i661, 10
  %i.aef = add nsw i64 %.sroa.26.2139.i660, -1    ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i659, i64 1
  %i.aeh = zext nneg i32 %i.aec to i64
  %i.aei = sub i64 %i.aee, %i.aeh                 ; 2 uses
  %.not103.i662 = icmp eq i64 %i.aef, 0
  br i1 %.not103.i662, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit680, label %.lr.ph141.i658

bb.gv:                                            ; preds = %bb.go, %bb.gp, %thread-pre-split.i678
  %.sroa.26.0.i663 = phi i64 [ %i.adj, %bb.gp ], [ %i.adb, %thread-pre-split.i678 ], [ %i.adb, %bb.go ] ; 3 uses
  %.sroa.0.0.i664 = phi ptr [ %i.adi, %bb.gp ], [ %i.add, %thread-pre-split.i678 ], [ %i.add, %bb.go ] ; 2 uses
  %i.aej = icmp samesign ult i64 %.sroa.26.0.i663, 16
  br i1 %i.aej, label %.lr.ph150.i673, label %.preheader111.i665

.preheader111.i665:                               ; preds = %bb.gv, %bb.gy
  %.sroa.0.3145.i666 = phi ptr [ %i.aek, %bb.gy ], [ %.sroa.0.0.i664, %bb.gv ] ; 2 uses
  %.sroa.26.3144.i667 = phi i64 [ %i.ael, %bb.gy ], [ %.sroa.26.0.i663, %bb.gv ]
  %.sroa.084.3143.i668 = phi i64 [ %i.aew, %bb.gy ], [ 0, %bb.gv ]
  %i.aek = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i666, i64 1
  %i.ael = add nsw i64 %.sroa.26.3144.i667, -1    ; 2 uses
  %i.aem = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i668, i64 10) ; 2 uses
  %i.aen = extractvalue { i64, i1 } %i.aem, 0
  %i.aeo = extractvalue { i64, i1 } %i.aem, 1
  br i1 %i.aeo, label %.loopexit1011, label %bb.gw, !prof !19

bb.gw:                                            ; preds = %.preheader111.i665
  %i.aep = load i8, ptr %.sroa.0.3145.i666, align 1, !alias.scope !1701, !noalias !1702, !noundef !4
  %i.aeq = zext i8 %i.aep to i32
  %i.aer = add nsw i32 %i.aeq, -48                ; 2 uses
  %i.aes = icmp ult i32 %i.aer, 10
  br i1 %i.aes, label %bb.gx, label %.loopexit1011

bb.gx:                                            ; preds = %bb.gw
  %i.aet = zext nneg i32 %i.aer to i64
  %i.aeu = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aen, i64 %i.aet) ; 2 uses
  %i.aev = extractvalue { i64, i1 } %i.aeu, 1
  br i1 %i.aev, label %.loopexit1011, label %bb.gy, !prof !19

bb.gy:                                            ; preds = %bb.gx
  %i.aew = extractvalue { i64, i1 } %i.aeu, 0     ; 2 uses
  %.not104.i670 = icmp eq i64 %i.ael, 0
  br i1 %.not104.i670, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit680, label %.preheader111.i665

.lr.ph150.i673:                                   ; preds = %bb.gv, %bb.gz
  %.sroa.0.4149.i674 = phi ptr [ %i.afd, %bb.gz ], [ %.sroa.0.0.i664, %bb.gv ] ; 2 uses
  %.sroa.26.4148.i675 = phi i64 [ %i.afc, %bb.gz ], [ %.sroa.26.0.i663, %bb.gv ]
  %.sroa.084.4147.i676 = phi i64 [ %i.aff, %bb.gz ], [ 0, %bb.gv ]
  %i.aex = load i8, ptr %.sroa.0.4149.i674, align 1, !alias.scope !1701, !noalias !1702, !noundef !4
  %i.aey = zext i8 %i.aex to i32
  %i.aez = add nsw i32 %i.aey, -48                ; 2 uses
  %i.afa = icmp ult i32 %i.aez, 10
  br i1 %i.afa, label %bb.gz, label %.loopexit1011

bb.gz:                                            ; preds = %.lr.ph150.i673
  %i.afb = mul i64 %.sroa.084.4147.i676, 10
  %i.afc = add nsw i64 %.sroa.26.4148.i675, -1    ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i674, i64 1
  %i.afe = zext nneg i32 %i.aez to i64
  %i.aff = add i64 %i.afb, %i.afe                 ; 2 uses
  %.not105.i677 = icmp eq i64 %i.afc, 0
  br i1 %.not105.i677, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit680, label %.lr.ph150.i673

.loopexit1011:                                    ; preds = %.lr.ph.i648, %bb.gs, %bb.gr, %.lr.ph141.i658, %.preheader111.i665, %bb.gw, %bb.gx, %.lr.ph150.i673, %bb.go, %bb.go, %.thread949
  %.ph957 = phi ptr [ %i.add, %.preheader111.i665 ], [ %i.add, %.lr.ph141.i658 ], [ %i.add, %.lr.ph150.i673 ], [ %i.add, %bb.go ], [ inttoptr (i64 1 to ptr), %.thread949 ], [ %i.add, %bb.go ], [ %i.add, %bb.gx ], [ %i.add, %bb.gw ], [ %i.add, %bb.gr ], [ %i.add, %bb.gs ], [ %i.add, %.lr.ph.i648 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph957, i64 noundef %i.adb) #21
  %i.afg = load i8, ptr %i.ax, align 8, !range !20, !noundef !4
  %i.afh = trunc nuw i8 %i.afg to i1
  br i1 %i.afh, label %bb.hc, label %bb.hd

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit680: ; preds = %bb.gt, %bb.gu, %bb.gy, %bb.gz
  %.sroa.15788.0 = phi i64 [ %i.aew, %bb.gy ], [ %i.aei, %bb.gu ], [ %i.aff, %bb.gz ], [ %i.adz, %bb.gt ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 8, i64 noundef %.sroa.15788.0) #22
  br label %bb.ha

bb.ha:                                            ; preds = %bb.hd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit680
  %i.afi = phi ptr [ %.ph957, %bb.hd ], [ %i.add, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit680 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 46, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.afj = icmp eq i64 %i.adb, 0
  br i1 %i.afj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit683, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afi, i64 noundef %i.adb, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1703
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit683

bb.hc:                                            ; preds = %.loopexit1011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 %i.adb, ptr %i.aw, align 8
  %.sroa.5783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.ph957, ptr %.sroa.5783.0..sroa_idx, align 8
  %.sroa.8784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.adb, ptr %.sroa.8784.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 46, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit683

bb.hd:                                            ; preds = %.loopexit1011
  %i.afk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.afl = load double, ptr %i.afk, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 8, double noundef %i.afl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.ha

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit683: ; preds = %bb.hb, %bb.ha, %bb.hc
  %i.afm = icmp eq i64 %i.mk, 0
  %or.cond969 = or i1 %.sroa.03.0.not, %i.afm
  br i1 %or.cond969, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit689, label %bb.hf

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit689: ; preds = %bb.hf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.bb, ptr %i.au, align 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4151.0..sroa_idx, align 8
  %i.afn = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8, !nonnull !4, !align !6, !noundef !4
  %i.afq = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.afn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.afp, ptr noundef nonnull @28, ptr noundef nonnull %i.au) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %.val.i684 = load i64, ptr %i.bb, align 8, !range !5, !alias.scope !1704, !noundef !4 ; 2 uses
  %i.afr = icmp eq i64 %.val.i684, 0
  br i1 %i.afr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit686, label %bb.he

bb.he:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit689
  %i.afs = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val1.i685 = load ptr, ptr %i.afs, align 8, !alias.scope !1704, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i685, i64 noundef %.val.i684, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1704
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit686

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit686: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit689, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.dn

bb.hf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit683
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acw, i64 noundef %i.mk, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1705
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit689

.loopexit1025:                                    ; preds = %.lr.ph.i390, %bb.bw, %bb.bv, %.lr.ph141.i400, %.preheader111.i407, %bb.ca, %bb.cb, %.lr.ph150.i415, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs44SRMMtlaHN_9uu_csplit.exit388, %bb.br, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5791.0.copyload793, i64 noundef %.sroa.8795.0.copyload797) #21
  %i.aft = load i8, ptr %i.aq, align 8, !range !20, !noundef !4
  %i.afu = trunc nuw i8 %i.aft to i1
  br i1 %i.afu, label %bb.hi, label %bb.hj

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit422: ; preds = %bb.bx, %bb.by, %bb.cc, %bb.cd, %.preheader.i413, %.preheader114.i398
  %.sroa.15802.0 = phi i64 [ %i.ov, %bb.cd ], [ %i.ny, %bb.by ], [ %i.om, %bb.cc ], [ 0, %.preheader.i413 ], [ 0, %.preheader114.i398 ], [ %i.np, %bb.bx ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, i64 noundef %.sroa.15802.0) #22
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hj, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.afv = icmp eq i64 %.sroa.0789.0.copyload790, 0
  br i1 %i.afv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit692, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5791.0.copyload793, i64 noundef %.sroa.0789.0.copyload790, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1706
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit692

bb.hi:                                            ; preds = %.loopexit1025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 %.sroa.0789.0.copyload790, ptr %i.ap, align 8
  %.sroa.5791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.5791.0.copyload793, ptr %.sroa.5791.0..sroa_idx, align 8
  %.sroa.8795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.8795.0.copyload797, ptr %.sroa.8795.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit692

bb.hj:                                            ; preds = %.loopexit1025
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.afx = load double, ptr %i.afw, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, double noundef %i.afx) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.hg

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit692: ; preds = %bb.hh, %bb.hg, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.at, ptr %i.an, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4170.0..sroa_idx, align 8
  %i.afy = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8, !nonnull !4, !align !6, !noundef !4
  %i.agb = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.afy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aga, ptr noundef nonnull @28, ptr noundef nonnull %i.an) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %.val.i693 = load i64, ptr %i.at, align 8, !range !5, !alias.scope !1707, !noundef !4 ; 2 uses
  %i.agc = icmp eq i64 %.val.i693, 0
  br i1 %i.agc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit695, label %bb.hk

bb.hk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit692
  %i.agd = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.val1.i694 = load ptr, ptr %i.agd, align 8, !alias.scope !1707, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i694, i64 noundef %.val.i693, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit695

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit695: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit692, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.dn

.loopexit1032:                                    ; preds = %.lr.ph.i427, %bb.cl, %bb.ck, %.lr.ph141.i437, %.preheader111.i444, %bb.cp, %bb.cq, %.lr.ph150.i452, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs44SRMMtlaHN_9uu_csplit.exit425, %bb.cg, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5805.0.copyload807, i64 noundef %.sroa.8809.0.copyload811) #21
  %i.age = load i8, ptr %i.aj, align 8, !range !20, !noundef !4
  %i.agf = trunc nuw i8 %i.age to i1
  br i1 %i.agf, label %bb.hn, label %bb.ho

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459: ; preds = %bb.cm, %bb.cn, %bb.cr, %bb.cs, %.preheader.i450, %.preheader114.i435
  %.sroa.15816.0 = phi i64 [ %i.rd, %bb.cs ], [ %i.qg, %bb.cn ], [ %i.qu, %bb.cr ], [ 0, %.preheader.i450 ], [ 0, %.preheader114.i435 ], [ %i.px, %bb.cm ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 6, i64 noundef %.sroa.15816.0) #22
  br label %bb.hl

bb.hl:                                            ; preds = %bb.ho, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.agg = icmp eq i64 %.sroa.0803.0.copyload804, 0
  br i1 %i.agg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit698, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5805.0.copyload807, i64 noundef %.sroa.0803.0.copyload804, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1708
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit698

bb.hn:                                            ; preds = %.loopexit1032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 %.sroa.0803.0.copyload804, ptr %i.ai, align 8
  %.sroa.5805.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.5805.0.copyload807, ptr %.sroa.5805.0..sroa_idx, align 8
  %.sroa.8809.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.8809.0.copyload811, ptr %.sroa.8809.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ai) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit698

bb.ho:                                            ; preds = %.loopexit1032
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.agi = load double, ptr %i.agh, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 6, double noundef %i.agi) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.hl

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit698: ; preds = %bb.hm, %bb.hl, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.am, ptr %i.ag, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4189.0..sroa_idx, align 8
end_hunk_0
