Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.15?download=true
inline.NumInlined: 403
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCs8GyQQEoxZtT_7convert4main:bb.a
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  store ptr %i.dd, ptr %i.bg, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.dk, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvMNtNtCs9Jn0q30Ea0B_6object4read3anyNtB2_4File5parseCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.dk)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %.body249, %bb.z
  %.sroa.057.6 = phi i8 [ %.sroa.057.7, %bb.z ], [ %.sroa.057.8, %.body249 ]
  %.sroa.055.4 = phi i8 [ %.sroa.055.5, %bb.z ], [ %.sroa.055.6, %.body249 ]
  %.pn167 = phi { ptr, i32 } [ %i.dm, %bb.z ], [ %.pn165, %.body249 ]
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %.body193 unwind label %bb.gq

bb.z:                                             ; preds = %bb.ac, %bb.hk, %bb.gj, %bb.x
  %.sroa.057.7 = phi i8 [ 1, %bb.ac ], [ %.sroa.057.10, %bb.hk ], [ 0, %bb.gj ], [ 1, %bb.x ]
  %.sroa.055.5 = phi i8 [ 1, %bb.ac ], [ %.sroa.055.30, %bb.hk ], [ 0, %bb.gj ], [ 1, %bb.x ]
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  %i.dn = load i64, ptr %i.bd, align 8, !range !20, !noundef !6 ; 3 uses
  %i.do = icmp eq i64 %i.dn, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.ds = load i64, ptr %i.dr, align 8            ; 2 uses
  br i1 %i.do, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.dt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 25) 16, i64 noundef 8) #30 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ac, label %bb.hn, !prof !21

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28
          to label %.noexc217 unwind label %bb.z

.noexc217:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.616.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.662.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 %i.dn, ptr %i.be, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.dq, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.ds, ptr %.sroa.515.0..sroa_idx, align 8
  %i.dv = and i64 %i.dn, -2
  %switch = icmp eq i64 %i.dv, 2
  br i1 %switch, label %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCs8GyQQEoxZtT_7convert.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = invoke { ptr, ptr } @_RNvXsi_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EINtNtBW_7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 23)
          to label %bb.hl unwind label %bb.af     ; 2 uses

.body249:                                         ; preds = %bb.hi, %bb.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit
  %.sroa.057.8 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit ], [ %.sroa.057.9, %bb.af ], [ 0, %bb.hi ]
  %.sroa.055.6 = phi i8 [ %.sroa.055.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit ], [ %.sroa.055.7, %bb.af ], [ %.sroa.055.29, %bb.hi ]
  %.pn165 = phi { ptr, i32 } [ %.pn163, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit ], [ %i.dx, %bb.af ], [ %i.mm, %bb.hi ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(304) %i.be) #27
          to label %bb.y unwind label %bb.gq

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs8GyQQEoxZtT_7convert.exit.i248, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit236, %bb.ae
  %.sroa.057.9 = phi i8 [ 1, %bb.ae ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs8GyQQEoxZtT_7convert.exit.i248 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit236 ]
  %.sroa.055.7 = phi i8 [ 1, %bb.ae ], [ %.sroa.055.29, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs8GyQQEoxZtT_7convert.exit.i248 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit236 ]
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body249

_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 18
  %.sroa.0129.0.copyload = load i16, ptr %i.ea, align 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.be, i64 296
  %i.ec = load i8, ptr %i.eb, align 8, !range !16, !noundef !6
  %.not134 = icmp eq i8 %i.ec, 0
  %i.ed = call i16 @llvm.bswap.i16(i16 %.sroa.0129.0.copyload)
  %.sroa.017.2 = select i1 %.not134, i16 %.sroa.0129.0.copyload, i16 %i.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %.sroa.0.0.shrunk.i.in.in = getelementptr inbounds nuw i8, ptr %i.dz, i64 5
  %.sroa.0.0.shrunk.i.in = load i8, ptr %.sroa.0.0.shrunk.i.in.in, align 1, !noalias !499, !noundef !6
  %.sroa.0.0.shrunk.i = icmp ne i8 %.sroa.0.0.shrunk.i.in, 1
  %. = zext i1 %.sroa.0.0.shrunk.i to i8          ; 2 uses
  store i8 %., ptr %i.bc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef 4)
          to label %bb.ah unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert.exit, %bb.ag
  %.sroa.055.8 = phi i8 [ 1, %bb.ag ], [ %.sroa.055.10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert.exit ], [ %.sroa.055.10, %bb.ar ]
  %.pn163 = phi { ptr, i32 } [ %i.ee, %bb.ag ], [ %.pn161, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert.exit ], [ %.pn161, %bb.ar ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #27
          to label %.body249 unwind label %bb.gq

bb.ag:                                            ; preds = %bb.al, %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCs8GyQQEoxZtT_7convert.exit, %bb.ah
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit

bb.ah:                                            ; preds = %_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCs8GyQQEoxZtT_7convert.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !500, !noundef !6 ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !500, !nonnull !6, !noundef !6
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eg
  store i32 1886872622, ptr %i.ek, align 1
  %.pre.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !500
  %i.el = add i64 %.pre.i.i.i, 4
  store i64 %i.el, ptr %i.ef, align 8, !alias.scope !500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtNtB8_3ffi6os_str8OsStringECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %i.em = load i32, ptr %i.az, align 8, !range !498, !noundef !6
  %i.en = trunc nuw i32 %i.em to i1               ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !range !18 ; 4 uses
  %storemerge136 = select i1 %i.en, i32 -1, i32 %i.ep
  store i32 %storemerge136, ptr %i.ba, align 4
  br i1 %i.en, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %.val.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !503, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !503
  %i.er = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.es = and i64 %i.er, 3
  switch i64 %i.es, label %default.unreachable536 [
    i64 2, label %.thread537
    i64 3, label %bb.ak
    i64 0, label %.thread537
    i64 1, label %bb.al
  ], !prof !17

default.unreachable536:                           ; preds = %bb.eo, %bb.an, %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.et = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.eu = and i64 %i.er, 1095216660480
  %i.ev = icmp ne i64 %i.eu, 1095216660480
  call void @llvm.assume(i1 %i.et)
  call void @llvm.assume(i1 %i.ev)
  br label %.thread537

bb.al:                                            ; preds = %bb.aj
  %i.ew = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 8, !alias.scope !504, !noalias !503
  store i8 3, ptr %i.y, align 8, !alias.scope !504, !noalias !503
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ex)
          to label %.thread537 unwind label %bb.ag

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !506
  %i.ey = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.ey, align 8, !noalias !506
  store i64 0, ptr %i.w, align 8, !noalias !506
  %i.ez = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i8 0, ptr %i.ez, align 8, !noalias !506
  %i.fa = getelementptr inbounds nuw i8, ptr %i.w, i64 26
  store i8 0, ptr %i.fa, align 2, !noalias !506
  %i.fb = getelementptr inbounds nuw i8, ptr %i.w, i64 27
  store i8 0, ptr %i.fb, align 1, !noalias !506
  %i.fc = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i8 0, ptr %i.fc, align 4, !noalias !506
  invoke void @_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions3mapRNtNtCsG258MDvU3F_3std2fs4FileECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ba)
          to label %.noexc222 unwind label %bb.as

.noexc222:                                        ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !506
  %i.fd = load i64, ptr %i.x, align 8, !range !9, !noalias !506, !noundef !6
  %i.fe = trunc nuw i64 %i.fd to i1
  br i1 %i.fe, label %bb.an, label %.thread538

.thread538:                                       ; preds = %.noexc222
  %i.ff = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !506, !noundef !6
  %i.fh = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !506, !noundef !6
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.fg, ptr %i.fj, align 8, !alias.scope !505
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.fi, ptr %i.fk, align 8, !alias.scope !505
  store i64 1, ptr %i.ay, align 8, !alias.scope !505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  br label %bb.at

bb.an:                                            ; preds = %.noexc222
  store i64 0, ptr %i.ay, align 8, !alias.scope !505
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %.val.i.i.i = load ptr, ptr %i.fl, align 8, !alias.scope !509, !noalias !506, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !510
  %i.fm = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.fn = and i64 %i.fm, 3
  switch i64 %i.fn, label %default.unreachable536 [
    i64 2, label %.thread540
    i64 3, label %bb.ao
    i64 0, label %.thread540
    i64 1, label %bb.ap
  ], !prof !17

bb.ao:                                            ; preds = %bb.an
  %i.fo = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.fp = and i64 %i.fm, 1095216660480
  %i.fq = icmp ne i64 %i.fp, 1095216660480
  call void @llvm.assume(i1 %i.fo)
  call void @llvm.assume(i1 %i.fq)
  br label %.thread540

bb.ap:                                            ; preds = %bb.an
  %i.fr = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fr) ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.fr, ptr %i.fs, align 8, !alias.scope !511, !noalias !510
  store i8 3, ptr %i.v, align 8, !alias.scope !511, !noalias !510
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fs)
          to label %bb.aq unwind label %bb.as

.thread537:                                       ; preds = %bb.aj, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 0, ptr %i.ay, align 8
  br label %.sink.split

.thread540:                                       ; preds = %bb.ao, %bb.an, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !506
  br label %.sink.split

bb.aq:                                            ; preds = %bb.ap
  %.pre.pre.pre = load i64, ptr %i.ay, align 8, !range !9
  %i.ft = trunc nuw i64 %.pre.pre.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  br i1 %i.ft, label %bb.at, label %bb.av

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert.exit, %bb.ax, %bb.as
  %.sroa.055.10 = phi i8 [ %.sroa.055.11, %bb.as ], [ %.sroa.055.12, %bb.ax ], [ %.sroa.055.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert.exit ] ; 2 uses
  %.pn161 = phi { ptr, i32 } [ %i.fv, %bb.as ], [ %.pn159, %bb.ax ], [ %.pn159, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert.exit ] ; 2 uses
  br i1 %i.en, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert.exit
  %i.fu = call noundef i32 @close(i32 noundef %i.ep) #30 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std2fs4FileEECs8GyQQEoxZtT_7convert.exit

bb.as:                                            ; preds = %bb.hg, %bb.gh, %bb.ap, %bb.am
  %.sroa.055.11 = phi i8 [ %.sroa.055.29, %bb.hg ], [ 0, %bb.gh ], [ 1, %bb.ap ], [ 1, %bb.am ]
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert.exit

bb.at:                                            ; preds = %.thread538, %bb.aq
  %0 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.val207 = load ptr, ptr %0, align 8, !noundef !6
  %1 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.val208 = load i64, ptr %1, align 8, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !512
  invoke void @_RNvMNtNtCs9Jn0q30Ea0B_6object4read3anyNtB2_4File5parseCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val207, i64 noundef %.val208)
          to label %.noexc224 unwind label %bb.ay

.noexc224:                                        ; preds = %bb.at
  %i.fw = load i64, ptr %i.u, align 8, !range !20, !noalias !512, !noundef !6
  %i.fx = icmp eq i64 %i.fw, -1
  br i1 %i.fx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileNtB11_5ErrorEECs8GyQQEoxZtT_7convert.exit.i, label %bb.au

bb.au:                                            ; preds = %.noexc224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ax, ptr noundef nonnull align 8 dereferenceable(304) %i.u, i64 304, i1 false)
  br label %_RNCNvCs8GyQQEoxZtT_7convert4mains_0B3_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileNtB11_5ErrorEECs8GyQQEoxZtT_7convert.exit.i: ; preds = %.noexc224
  store i64 -1, ptr %i.ax, align 8, !alias.scope !512
  br label %_RNCNvCs8GyQQEoxZtT_7convert4mains_0B3_.exit

_RNCNvCs8GyQQEoxZtT_7convert4mains_0B3_.exit:     ; preds = %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileNtB11_5ErrorEECs8GyQQEoxZtT_7convert.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !512
  br label %bb.aw

.sink.split:                                      ; preds = %.thread537, %.thread540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.aq
  store i64 -1, ptr %i.ax, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %_RNCNvCs8GyQQEoxZtT_7convert4mains_0B3_.exit, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  invoke void @_RINvMNtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB3_13DwarfSectionsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE4loadNCNvCs8GyQQEoxZtT_7convert4mains0_0INtNtB12_5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEB1K_(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.be)
          to label %bb.bc unwind label %bb.bb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.az, %bb.ba, %bb.ay
  %.sroa.055.12 = phi i8 [ %.sroa.055.13, %bb.ay ], [ %.sroa.055.14, %bb.ba ], [ %.sroa.055.14, %bb.az ] ; 2 uses
  %.pn159 = phi { ptr, i32 } [ %i.gb, %bb.ay ], [ %.pn157, %bb.ba ], [ %.pn157, %bb.az ] ; 2 uses
  %i.fy = load i64, ptr %i.ay, align 8, !range !9, !alias.scope !513, !noundef !6
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert.exit, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ga)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert.exit unwind label %bb.gq

bb.ay:                                            ; preds = %bb.hf, %bb.gg, %bb.at
  %.sroa.055.13 = phi i8 [ %.sroa.055.29, %bb.hf ], [ 0, %bb.gg ], [ 1, %bb.at ]
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert.exit

bb.az:                                            ; preds = %.body240, %bb.bb
  %.sroa.055.14 = phi i8 [ %.sroa.055.15, %bb.bb ], [ %.sroa.055.16, %.body240 ] ; 2 uses
  %.pn157 = phi { ptr, i32 } [ %i.ge, %bb.bb ], [ %.pn155, %.body240 ] ; 2 uses
  %i.gc = load i64, ptr %i.ax, align 8, !range !20, !alias.scope !514, !noundef !6
  %i.gd = icmp eq i64 %i.gc, -1
  br i1 %i.gd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.ax)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert.exit unwind label %bb.gq

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert.exit, %bb.ge, %bb.aw
  %.sroa.055.15 = phi i8 [ %.sroa.055.28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert.exit ], [ 0, %bb.ge ], [ 1, %bb.aw ]
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bc:                                            ; preds = %bb.aw
  %i.gf = load i64, ptr %i.av, align 8, !range !11, !noundef !6 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, -2
  %i.gh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  br i1 %i.gg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.he

bb.be:                                            ; preds = %bb.bc
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.634.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.666.0..sroa_idx, i64 360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i64 %i.gf, ptr %i.aw, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.gi, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.gk, ptr %.sroa.533.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RINvMNtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB3_13DwarfSectionsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowNCNvCs8GyQQEoxZtT_7convert4mains1_0INtNtB5_12endian_slice11EndianSliceNtNtB7_9endianity13RunTimeEndianEEB1M_(ptr noalias nofree noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bc)
          to label %bb.bg unwind label %bb.bf

.body240:                                         ; preds = %bb.hc, %bb.bf, %bb.bj
  %.sroa.055.16 = phi i8 [ %.sroa.055.18, %bb.bj ], [ %.sroa.055.17, %bb.bf ], [ %.sroa.055.28, %bb.hc ]
  %.pn155 = phi { ptr, i32 } [ %.pn153, %bb.bj ], [ %i.gl, %bb.bf ], [ %i.mc, %bb.hc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf13DwarfSectionsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(384) %i.aw) #27
          to label %bb.az unwind label %bb.gq

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert.exit.i, %bb.gd, %bb.be
  %.sroa.055.17 = phi i8 [ %.sroa.055.28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert.exit.i ], [ 0, %bb.gd ], [ 1, %bb.be ]
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body240

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.gm = load i64, ptr %i.ax, align 8, !range !20, !noundef !6
  %.not138 = icmp eq i64 %i.gm, -1
  br i1 %.not138, label %.thread428, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RNCNvCs8GyQQEoxZtT_7convert4mains2_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(312) %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.ax)
          to label %bb.bi unwind label %bb.bk

.thread428:                                       ; preds = %bb.bg
  store i64 -2, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %.pr = load i64, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.not139 = icmp eq i64 %.pr, -2
  br i1 %.not139, label %bb.bm, label %bb.bl

bb.bj:                                            ; preds = %bb.bo, %bb.bk
  %.sroa.055.18 = phi i8 [ %.sroa.055.19, %bb.bk ], [ %.sroa.055.20, %bb.bo ]
  %.pn153 = phi { ptr, i32 } [ %i.gn, %bb.bk ], [ %.pn151, %bb.bo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(424) %i.au) #27
          to label %.body240 unwind label %bb.gq

bb.bk:                                            ; preds = %bb.gy, %bb.gc, %bb.bh
  %.sroa.055.19 = phi i8 [ %.sroa.055.28, %bb.gy ], [ 0, %bb.gc ], [ 1, %bb.bh ]
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  invoke fastcc void @_RNCNvCs8GyQQEoxZtT_7convert4mains3_0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(528) %i.as, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.at)
          to label %bb.bn unwind label %bb.bp

bb.bm:                                            ; preds = %.thread428, %bb.bi
  %i.go = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  store i8 2, ptr %i.go, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 0, ptr %i.aq, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 %., ptr %i.gp, align 8
  invoke void @_RNvMNtNtCsi68uqYEhoRA_5gimli5write7sectionINtB2_8SectionsINtNtB4_10endian_vec9EndianVecNtNtB6_9endianity13RunTimeEndianEE3newCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %i.ar, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aq)
          to label %bb.bq unwind label %bb.bp

bb.bo:                                            ; preds = %.body230, %bb.bp
  %.sroa.055.20 = phi i8 [ %.sroa.055.21, %bb.bp ], [ %.sroa.055.22, %.body230 ]
  %.pn151 = phi { ptr, i32 } [ %i.gq, %bb.bp ], [ %.pn149, %.body230 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf20DwarfPackageSectionsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(312) %i.at) #27
          to label %bb.bj unwind label %bb.gq

bb.bp:                                            ; preds = %bb.gw, %bb.gb, %bb.bn, %bb.bl
  %.sroa.055.21 = phi i8 [ %.sroa.055.28, %bb.gw ], [ 0, %bb.gb ], [ 1, %bb.bn ], [ 1, %bb.bl ]
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.gs = load i8, ptr %i.gr, align 8, !range !14, !noundef !6
  %.not140 = icmp eq i8 %i.gs, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.022.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.022.i.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.430.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016.i.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.521.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !515
  invoke fastcc void @_RINvCs8GyQQEoxZtT_7convert12filter_dwarfINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBJ_9endianity13RunTimeEndianEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %i.au)
          to label %.noexc227 unwind label %bb.el

.noexc227:                                        ; preds = %bb.bq
  %i.gt = load i64, ptr %i.t, align 8, !range !10, !noalias !515, !noundef !6 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, -1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
end_hunk_0
