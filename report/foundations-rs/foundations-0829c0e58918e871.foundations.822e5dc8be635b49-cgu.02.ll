Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.02?download=true
inline.NumInlined: 1214
inline.NumDeleted: 522
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvMNtNtNtCsaCYLheajBls_5hyper5proto2h16encodeNtB3_7Encoder15encode_trailersNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.af, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !412
  br label %bb.ag, !dbg !242

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit42, %bb.d
  ret void, !dbg !488

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !339
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header3map9HeaderMapECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(96) %i.q)
          to label %bb.ah unwind label %bb.j, !dbg !314

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !314
  call void @llvm.experimental.noalias.scope.decl(metadata !489), !dbg !262
  %i.cy = load i64, ptr %i.r, align 8, !dbg !492, !range !266, !alias.scope !489, !noundef !16
  %i.cz = icmp eq i64 %i.cy, 0, !dbg !492
  br i1 %i.cz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit40, label %bb.ai, !dbg !492

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !494), !dbg !492
  call void @llvm.experimental.noalias.scope.decl(metadata !497), !dbg !500
  %i.da = load ptr, ptr %i.av, align 8, !dbg !502, !alias.scope !504, !noundef !16 ; 2 uses
  %i.db = icmp eq ptr %i.da, null, !dbg !502
  br i1 %i.db, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit40, label %bb.aj, !dbg !502

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !505), !dbg !502
  call void @llvm.experimental.noalias.scope.decl(metadata !508), !dbg !511
  call void @llvm.experimental.noalias.scope.decl(metadata !513), !dbg !516
  call void @llvm.experimental.noalias.scope.decl(metadata !518), !dbg !521
  %i.dc = load ptr, ptr %i.aw, align 8, !dbg !523, !alias.scope !528, !noundef !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 32, !dbg !529
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !529, !noalias !528, !nonnull !16, !noundef !16
  %i.df = load ptr, ptr %i.ax, align 8, !dbg !530, !alias.scope !528, !noundef !16
  %i.dg = load i64, ptr %i.ay, align 8, !dbg !531, !alias.scope !528, !noundef !16
  invoke void %i.de(ptr noundef %i.dc, ptr noundef %i.df, i64 noundef %i.dg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit40 unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit.thread, !dbg !529, !inline_history !313

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit40: ; preds = %bb.ai, %bb.ah, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !262
  %.val = load ptr, ptr %i.s, align 8, !dbg !412  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !412
  %.val28 = load i64, ptr %i.dh, align 8, !dbg !412, !noundef !16 ; 4 uses
  %i.di = icmp eq i64 %.val28, 0, !dbg !532
  br i1 %i.di, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit42, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i41, !dbg !540

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i41: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit40
  %i.dj = shl i64 %.val28, 3, !dbg !541
  %i.dk = icmp slt i64 %.val28, 2305843009213693950, !dbg !547
  call void @llvm.assume(i1 %i.dk), !dbg !549
  %i.dl = and i64 %i.dj, -16, !dbg !551           ; 2 uses
  %i.dm = add i64 %i.dl, 16, !dbg !551            ; 2 uses
  %i.dn = add nsw i64 %.val28, 17, !dbg !552
  %i.do = add i64 %i.dn, %i.dm, !dbg !553         ; 4 uses
  %i.dp = icmp uge i64 %i.do, %i.dm, !dbg !553
  %i.dq = icmp ult i64 %i.do, 9223372036854775793
  call void @llvm.assume(i1 %i.dp), !dbg !555
  call void @llvm.assume(i1 %i.dq), !dbg !555
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.dr = icmp eq i64 %i.do, 0, !dbg !557
  br i1 %i.dr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit42, label %bb.ak, !dbg !557

bb.ak:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i41
  %i.ds = sub nuw nsw i64 -16, %i.dl, !dbg !561
  %i.dt = getelementptr inbounds i8, ptr %.val, i64 %i.ds, !dbg !563
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !dbg !564
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit42, !dbg !566

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit42: ; preds = %bb.ak, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i41, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameEECsbaWXNhtWAp9_11foundations.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !412
  br label %bb.ag, !dbg !242

bb.al:                                            ; preds = %bb.t, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #38
          to label %.body35 unwind label %bb.am, !dbg !339

bb.am:                                            ; preds = %bb.dc, %bb.i, %.thread, %bb.al, %.thread94, %.body35
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !dbg !567
  unreachable, !dbg !567

bb.an:                                            ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !568), !dbg !571
  %i.dv = icmp eq i64 %.pre, 0, !dbg !572
  br i1 %i.dv, label %.thread349, label %bb.ao, !dbg !572

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !574), !dbg !572
  call void @llvm.experimental.noalias.scope.decl(metadata !577), !dbg !580
  %i.dw = load ptr, ptr %i.av, align 8, !dbg !582, !alias.scope !584, !noundef !16 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null, !dbg !582
  br i1 %i.dx, label %.thread349, label %bb.ap, !dbg !582

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !585), !dbg !582
  call void @llvm.experimental.noalias.scope.decl(metadata !588), !dbg !591
  call void @llvm.experimental.noalias.scope.decl(metadata !593), !dbg !596
  call void @llvm.experimental.noalias.scope.decl(metadata !598), !dbg !601
  %i.dy = load ptr, ptr %i.aw, align 8, !dbg !603, !alias.scope !608, !noundef !16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 32, !dbg !609
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !609, !noalias !608, !nonnull !16, !noundef !16
  %i.eb = load ptr, ptr %i.ax, align 8, !dbg !610, !alias.scope !608, !noundef !16
  %i.ec = load i64, ptr %i.ay, align 8, !dbg !611, !alias.scope !608, !noundef !16
  invoke void %i.ea(ptr noundef %i.dy, ptr noundef %i.eb, i64 noundef %i.ec)
          to label %.thread349 unwind label %.thread90, !dbg !609, !inline_history !313

bb.aq:                                            ; preds = %bb.p
  %i.ed = trunc nuw i64 %.pre to i1, !dbg !612
  br i1 %i.ed, label %bb.ar, label %bb.as, !dbg !612, !prof !613

.thread90:                                        ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.r, align 8, !dbg !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false), !dbg !571
  br label %bb.dc, !dbg !614

.thread349:                                       ; preds = %bb.ap, %bb.an, %bb.ao
  store i64 1, ptr %i.r, align 8, !dbg !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false), !dbg !571
  br label %bb.ar, !dbg !612

.thread101:                                       ; preds = %.invoke, %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit.thread106, %bb.cr, %bb.az, %bb.bp
  %lpad.thr_comm99 = landingpad { ptr, i32 }
          cleanup
  br label %.thread94, !dbg !614

.loopexit:                                        ; preds = %bb.ar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ar:                                            ; preds = %.thread349, %bb.aq
  %i.ef = invoke noundef zeroext i1 @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE12contains_keyBP_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull align 8 %i.av)
          to label %bb.au unwind label %.loopexit, !dbg !615

bb.as:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #39
          to label %bb.at unwind label %.loopexit.split-lp, !dbg !624

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ar
  br i1 %i.ef, label %bb.aw, label %bb.av, !dbg !627

bb.av:                                            ; preds = %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload57) ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload57, i64 32, !dbg !628
  %i.eh = load ptr, ptr %i.eg, align 8, !dbg !628, !noalias !633, !nonnull !16, !noundef !16
  invoke void %i.eh(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.659.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.backedge unwind label %bb.n, !dbg !628, !inline_history !640

bb.aw:                                            ; preds = %bb.au
  %i.ei = load ptr, ptr %i.av, align 8, !dbg !641, !noundef !16
  %.not21 = icmp eq ptr %i.ei, null, !dbg !641
  br i1 %.not21, label %bb.db, label %bb.ax, !dbg !647

bb.ax:                                            ; preds = %bb.db, %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !648), !dbg !651
  %i.ej = invoke noundef zeroext i1 @_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %bb.ay unwind label %.loopexit111, !dbg !660, !noalias !663

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ej, label %bb.az, label %bb.ba, !dbg !665

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload57) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload57, i64 32, !dbg !671
  %i.el = load ptr, ptr %i.ek, align 8, !dbg !671, !noalias !675, !nonnull !16, !noundef !16
  invoke void %i.el(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.659.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit.thread106 unwind label %.thread101, !dbg !671, !inline_history !682

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !683), !dbg !686
  %i.em = load i64, ptr %i.q, align 8, !dbg !687, !range !320, !alias.scope !690, !noalias !663, !noundef !16 ; 2 uses
  %i.en = icmp eq i64 %i.em, 2, !dbg !691
  br i1 %i.en, label %bb.bb, label %bb.be, !dbg !691

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !692, !noalias !694
  %i.eo = load <2 x i64>, ptr %i.az, align 8, !dbg !695, !alias.scope !690, !noalias !663 ; 3 uses
  %i.ep = shufflevector <2 x i64> %i.eo, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !699
  %i.eq = xor <2 x i64> %i.ep, <i64 8317987319222330741, i64 7816392313619706465>, !dbg !699
  store <2 x i64> %i.eq, ptr %i.f, align 16, !dbg !712, !noalias !694
  %i.er = shufflevector <2 x i64> %i.eo, <2 x i64> poison, <2 x i32> <i32 1, i32 1>, !dbg !713
  %i.es = xor <2 x i64> %i.er, <i64 7237128888997146477, i64 8387220255154660723>, !dbg !713
  store <2 x i64> %i.es, ptr %.sroa.513.0..sroa_idx.i.i, align 16, !dbg !712, !noalias !694
  store <2 x i64> %i.eo, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !dbg !712, !noalias !694
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !dbg !712, !noalias !694
  %i.et = load ptr, ptr %i.av, align 8, !dbg !714, !noalias !729, !noundef !16 ; 2 uses
  %i.eu = icmp ne ptr %i.et, null, !dbg !714
  %i.ev = zext i1 %i.eu to i64, !dbg !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !736, !noalias !746
  store i64 %i.ev, ptr %i.e, align 8, !dbg !751, !noalias !746
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #40, !dbg !754, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !762, !noalias !746
  %.not.i.i.i.i.i = icmp eq ptr %i.et, null, !dbg !763 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.bd, label %bb.bc, !dbg !763

bb.bc:                                            ; preds = %bb.bb
  %.val.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !dbg !764, !noalias !729, !noundef !16 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.ay, align 8, !dbg !764, !noalias !729, !noundef !16
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i.i) #40, !dbg !766, !noalias !761
  %i.ew = ptrtoint ptr %.val.i.i.i.i.i to i64, !dbg !772
  %i.ex = trunc i64 %i.ew to i8, !dbg !772
  br label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !772

bb.bd:                                            ; preds = %bb.bb
  %i.ey = load i8, ptr %i.ax, align 8, !dbg !773, !range !778, !noalias !729, !noundef !16 ; 2 uses
  %i.ez = zext nneg i8 %i.ey to i64, !dbg !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !779, !noalias !784
  store i64 %i.ez, ptr %i.d, align 8, !dbg !789, !noalias !784
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #40, !dbg !791, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !794, !noalias !784
  br label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !772

_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.bd, %bb.bc
  %i.fa = phi i8 [ %i.ey, %bb.bd ], [ %i.ex, %bb.bc ]
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 16, !dbg !795, !alias.scope !803, !noalias !694
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !dbg !795, !alias.scope !803, !noalias !694
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 16, !dbg !795, !alias.scope !803, !noalias !694 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i.i, align 8, !dbg !795, !alias.scope !803, !noalias !694
  %i.fb = load i64, ptr %.sroa.915.0..sroa_idx.i.i, align 16, !dbg !806, !alias.scope !803, !noalias !694, !noundef !16
  %i.fc = shl i64 %i.fb, 56, !dbg !808
  %i.fd = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !809, !alias.scope !803, !noalias !694, !noundef !16
  %i.fe = or i64 %i.fc, %i.fd, !dbg !808          ; 2 uses
  %i.ff = xor i64 %i.fe, %.sroa.22.0.copyload.i.i.i, !dbg !810 ; 3 uses
  %i.fg = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i, !dbg !812 ; 3 uses
  %i.fh = add i64 %i.ff, %.sroa.10.0.copyload.i.i.i, !dbg !819 ; 2 uses
  %i.fi = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13), !dbg !821
  %i.fj = xor i64 %i.fi, %i.fg, !dbg !826         ; 3 uses
  %i.fk = call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 16), !dbg !827
  %i.fl = xor i64 %i.fk, %i.fh, !dbg !830         ; 3 uses
  %i.fm = call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 32), !dbg !831
  %i.fn = add i64 %i.fh, %i.fj, !dbg !834         ; 3 uses
  %i.fo = add i64 %i.fl, %i.fm, !dbg !836         ; 2 uses
  %i.fp = call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 17), !dbg !838
  %i.fq = xor i64 %i.fn, %i.fp, !dbg !830         ; 3 uses
  %i.fr = call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 21), !dbg !841
  %i.fs = xor i64 %i.fr, %i.fo, !dbg !826         ; 3 uses
  %i.ft = call noundef i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 32), !dbg !844
  %i.fu = xor i64 %i.fo, %i.fe, !dbg !847
  %i.fv = xor i64 %i.ft, 255, !dbg !848
  %i.fw = add i64 %i.fu, %i.fq, !dbg !849         ; 3 uses
  %i.fx = add i64 %i.fs, %i.fv, !dbg !854         ; 2 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 13), !dbg !856
  %i.fz = xor i64 %i.fw, %i.fy, !dbg !860         ; 3 uses
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 16), !dbg !861
  %i.gb = xor i64 %i.ga, %i.fx, !dbg !864         ; 3 uses
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 32), !dbg !865
  %i.gd = add i64 %i.fz, %i.fx, !dbg !868         ; 3 uses
  %i.ge = add i64 %i.gb, %i.gc, !dbg !870         ; 2 uses
  %i.gf = call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 17), !dbg !872
  %i.gg = xor i64 %i.gd, %i.gf, !dbg !864         ; 3 uses
  %i.gh = call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 21), !dbg !875
  %i.gi = xor i64 %i.gh, %i.ge, !dbg !860         ; 3 uses
  %i.gj = call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 32), !dbg !878
  %i.gk = add i64 %i.gg, %i.ge, !dbg !881         ; 3 uses
  %i.gl = add i64 %i.gi, %i.gj, !dbg !884         ; 2 uses
  %i.gm = call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 13), !dbg !886
  %i.gn = xor i64 %i.gm, %i.gk, !dbg !860         ; 3 uses
  %i.go = call noundef i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gi, i64 16), !dbg !889
  %i.gp = xor i64 %i.go, %i.gl, !dbg !864         ; 3 uses
  %i.gq = call noundef i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 32), !dbg !892
  %i.gr = add i64 %i.gn, %i.gl, !dbg !895         ; 3 uses
  %i.gs = add i64 %i.gp, %i.gq, !dbg !897         ; 2 uses
  %i.gt = call noundef i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 17), !dbg !899
  %i.gu = xor i64 %i.gt, %i.gr, !dbg !864         ; 3 uses
  %i.gv = call noundef i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 21), !dbg !902
  %i.gw = xor i64 %i.gv, %i.gs, !dbg !860         ; 2 uses
  %i.gx = call noundef i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 32), !dbg !905
  %i.gy = add i64 %i.gu, %i.gs, !dbg !908
  %i.gz = add i64 %i.gw, %i.gx, !dbg !911         ; 2 uses
  %i.ha = call noundef i64 @llvm.fshl.i64(i64 %i.gu, i64 %i.gu, i64 13), !dbg !913
  %i.hb = xor i64 %i.ha, %i.gy, !dbg !860         ; 2 uses
  %i.hc = shl i64 %i.gw, 16, !dbg !916
  %i.hd = xor i64 %i.hc, %i.gz, !dbg !864
  %i.he = add i64 %i.hb, %i.gz, !dbg !919         ; 2 uses
  %i.hf = lshr i64 %i.hb, 47, !dbg !921
  %i.hg = lshr i64 %i.hd, 43, !dbg !924
  %i.hh = lshr i64 %i.he, 32, !dbg !927
  %i.hi = xor i64 %i.hg, %i.hf, !dbg !930
  %i.hj = xor i64 %i.hi, %i.hh, !dbg !930
  %i.hk = xor i64 %i.hj, %i.he, !dbg !930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !931, !noalias !694
  br label %.loopexit.i, !dbg !932

bb.be:                                            ; preds = %bb.ba
  %i.hl = load ptr, ptr %i.av, align 8, !dbg !933, !noalias !941, !noundef !16 ; 2 uses
  %i.hm = icmp ne ptr %i.hl, null, !dbg !933
  %i.hn = zext i1 %i.hm to i64, !dbg !933
  %i.ho = xor i64 %i.hn, -3750763034362895579, !dbg !948
  %i.hp = mul i64 %i.ho, 2232315406967589409, !dbg !962 ; 4 uses
  %.not.i.i.i21.i.i = icmp eq ptr %i.hl, null, !dbg !965
  br i1 %.not.i.i.i21.i.i, label %bb.bg, label %bb.bf, !dbg !965

bb.bf:                                            ; preds = %bb.be
  %.val.i.i.i22.i.i = load ptr, ptr %i.ax, align 8, !dbg !966, !noalias !941, !noundef !16 ; 4 uses
  %.val1.i.i.i23.i.i = load i64, ptr %i.ay, align 8, !dbg !966, !noalias !941, !noundef !16 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i.i, i64 %.val1.i.i.i23.i.i, !dbg !968
  %i.hr = icmp samesign eq i64 %.val1.i.i.i23.i.i, 0, !dbg !983
  %i.hs = ptrtoint ptr %.val.i.i.i22.i.i to i64, !dbg !996
  %i.ht = trunc i64 %i.hs to i8, !dbg !996        ; 3 uses
  br i1 %i.hr, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader, !dbg !996

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.bf
  %xtraiter = and i64 %.val1.i.i.i23.i.i, 7, !dbg !996 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !996
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !dbg !996

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.hy, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.hp, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.i.i.prol = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.val.i.i.i22.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, i64 1, !dbg !997 ; 2 uses
  %i.hv = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.hw = zext i8 %i.hv to i64, !dbg !1009
  %i.hx = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, %i.hw, !dbg !1010
  %i.hy = mul i64 %i.hx, 1099511628211, !dbg !1011 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !996 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !996
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !dbg !996, !llvm.loop !1013

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.hp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.i.i.unr = phi ptr [ %.val.i.i.i22.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.hz = icmp ult i64 %.val1.i.i.i23.i.i, 8, !dbg !996
  br i1 %i.hz, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i, !dbg !996

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.jn, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i.i.i = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 1, !dbg !997
  %i.ib = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.ic = zext i8 %i.ib to i64, !dbg !1009
  %i.id = xor i64 %.sroa.0.06.i.i.i.i.i.i.i, %i.ic, !dbg !1010
  %i.ie = mul i64 %i.id, 1099511628211, !dbg !1011
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 2, !dbg !997
  %i.ig = load i8, ptr %i.ia, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.ih = zext i8 %i.ig to i64, !dbg !1009
  %i.ii = xor i64 %i.ie, %i.ih, !dbg !1010
  %i.ij = mul i64 %i.ii, 1099511628211, !dbg !1011
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 3, !dbg !997
  %i.il = load i8, ptr %i.if, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.im = zext i8 %i.il to i64, !dbg !1009
  %i.in = xor i64 %i.ij, %i.im, !dbg !1010
  %i.io = mul i64 %i.in, 1099511628211, !dbg !1011
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 4, !dbg !997
  %i.iq = load i8, ptr %i.ik, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.ir = zext i8 %i.iq to i64, !dbg !1009
  %i.is = xor i64 %i.io, %i.ir, !dbg !1010
  %i.it = mul i64 %i.is, 1099511628211, !dbg !1011
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 5, !dbg !997
  %i.iv = load i8, ptr %i.ip, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.iw = zext i8 %i.iv to i64, !dbg !1009
  %i.ix = xor i64 %i.it, %i.iw, !dbg !1010
  %i.iy = mul i64 %i.ix, 1099511628211, !dbg !1011
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 6, !dbg !997
  %i.ja = load i8, ptr %i.iu, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.jb = zext i8 %i.ja to i64, !dbg !1009
  %i.jc = xor i64 %i.iy, %i.jb, !dbg !1010
  %i.jd = mul i64 %i.jc, 1099511628211, !dbg !1011
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 7, !dbg !997
  %i.jf = load i8, ptr %i.iz, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.jg = zext i8 %i.jf to i64, !dbg !1009
  %i.jh = xor i64 %i.jd, %i.jg, !dbg !1010
  %i.ji = mul i64 %i.jh, 1099511628211, !dbg !1011
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 8, !dbg !997 ; 2 uses
  %i.jk = load i8, ptr %i.je, align 1, !dbg !1001, !alias.scope !1002, !noalias !1005, !noundef !16
  %i.jl = zext i8 %i.jk to i64, !dbg !1009
  %i.jm = xor i64 %i.ji, %i.jl, !dbg !1010
  %i.jn = mul i64 %i.jm, 1099511628211, !dbg !1011 ; 2 uses
  %i.jo = icmp eq ptr %i.jj, %i.hq, !dbg !983
  br i1 %i.jo, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i, !dbg !996

bb.bg:                                            ; preds = %bb.be
  %i.jp = load i8, ptr %i.ax, align 8, !dbg !1015, !range !778, !noalias !941, !noundef !16 ; 2 uses
  %i.jq = zext nneg i8 %i.jp to i64, !dbg !1015
  %i.jr = xor i64 %i.hp, %i.jq, !dbg !1019
  %i.js = mul i64 %i.jr, 2232315406967589409, !dbg !1025
  br label %.loopexit.i, !dbg !1027

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.bg, %bb.bf, %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.jt = phi i8 [ %i.fa, %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsbaWXNhtWAp9_11foundations.exit.i.i ], [ %i.jp, %bb.bg ], [ %i.ht, %bb.bf ], [ %i.ht, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ht, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %4 = phi i1 [ %.not.i.i.i.i.i, %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsbaWXNhtWAp9_11foundations.exit.i.i ], [ true, %bb.bg ], [ false, %bb.bf ], [ false, %.lr.ph.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.hk, %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsbaWXNhtWAp9_11foundations.exit.i.i ], [ %i.js, %bb.bg ], [ %i.hp, %bb.bf ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.jn, %.lr.ph.i.i.i.i.i.i.i ], !dbg !1028
  %i.ju = trunc i64 %.sroa.0.0.i.i to i16, !dbg !1029
  %i.jv = and i16 %i.ju, 32767, !dbg !1029        ; 6 uses
  %i.jw = load i16, ptr %i.ba, align 8, !dbg !1031, !alias.scope !648, !noalias !663, !noundef !16 ; 3 uses
  %i.jx = and i16 %i.jv, %i.jw, !dbg !1033
  %i.jy = zext nneg i16 %i.jx to i64, !dbg !1033
  %i.jz = load i64, ptr %i.bc, align 8, !alias.scope !648, !noalias !663, !noundef !16 ; 2 uses
  %i.ka = load ptr, ptr %i.bb, align 8, !alias.scope !648, !noalias !663, !nonnull !16
  %i.kb = zext i16 %i.jw to i64
  %i.kc = load i64, ptr %i.bd, align 8, !alias.scope !648, !noalias !663 ; 4 uses
  %i.kd = load ptr, ptr %i.be, align 8, !alias.scope !648, !noalias !663, !nonnull !16
  %not..i.i.i = xor i1 %4, true
  %i.ke = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.kf = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = trunc i64 %i.kg to i8
  %.not = icmp eq i64 %i.jz, 0
  br label %.outer511, !dbg !1036

.outer511:                                        ; preds = %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i, %.loopexit.i
  %.ph = phi i8 [ %i.mo, %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ %i.jt, %.loopexit.i ] ; 5 uses
  %.sroa.09.0.i.ph = phi i64 [ %i.mp, %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ 0, %.loopexit.i ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ %i.mq, %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ %i.jy, %.loopexit.i ] ; 2 uses
  %i.ki = icmp ult i64 %.sroa.01.0.i.ph, %i.jz, !dbg !1040 ; 2 uses
  %.not.not = xor i1 %.not, true, !dbg !1040
  %brmerge = or i1 %i.ki, %.not.not, !dbg !1040
  %.sroa.01.0.i.ph.mux = select i1 %i.ki, i64 %.sroa.01.0.i.ph, i64 0, !dbg !1040 ; 7 uses
  br i1 %brmerge, label %.loopexit589, label %infloop, !dbg !1040

.loopexit589:                                     ; preds = %.outer511
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.sroa.01.0.i.ph.mux, !dbg !1041 ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 2, !dbg !1043, !noalias !663, !noundef !16 ; 2 uses
  %.not.i = icmp eq i16 %i.kk, -1, !dbg !1043
  br i1 %.not.i, label %bb.bj, label %bb.bi, !dbg !1051

bb.bh:                                            ; preds = %bb.cb
  unreachable

bb.bi:                                            ; preds = %.loopexit589
  %i.kl = zext i16 %i.kk to i64, !dbg !1052       ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 2, !dbg !1053
  %i.kn = load i16, ptr %i.km, align 2, !dbg !1053, !noalias !663, !noundef !16 ; 2 uses
  %i.ko = and i16 %i.kn, %i.jw, !dbg !1054
  %i.kp = zext i16 %i.ko to i64, !dbg !1054
  %i.kq = sub i64 %.sroa.01.0.i.ph.mux, %i.kp, !dbg !1058
  %i.kr = and i64 %i.kq, %i.kb, !dbg !1061
  %i.ks = icmp samesign ult i64 %i.kr, %.sroa.09.0.i.ph, !dbg !1062
  br i1 %i.ks, label %bb.bw, label %bb.bv, !dbg !1062

bb.bj:                                            ; preds = %.loopexit589
  %i.kt = icmp ult i64 %i.kc, 88686269585142076, !dbg !1064
  call void @llvm.assume(i1 %i.kt), !dbg !1070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1071, !noalias !1073
  invoke void @_RNvXs7_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core7convert4FromRBE_E4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %i.av)
          to label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbaWXNhtWAp9_11foundations.exit.i unwind label %.loopexit111, !dbg !1074, !noalias !663

_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !1080), !dbg !1083
  call void @llvm.experimental.noalias.scope.decl(metadata !1084), !dbg !1083
  %i.ku = load i64, ptr %i.bd, align 8, !dbg !1086, !alias.scope !1091, !noalias !1092, !noundef !16 ; 5 uses
  %i.kv = icmp ult i64 %i.ku, 88686269585142076, !dbg !1094
  call void @llvm.assume(i1 %i.kv), !dbg !1096
  %i.kw = icmp samesign ugt i64 %i.ku, 32767, !dbg !1097
  br i1 %i.kw, label %bb.bo, label %bb.bk, !dbg !1097

bb.bk:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1098, !noalias !1099
  store i16 %i.jv, ptr %i.bm, align 8, !dbg !1098, !noalias !1099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !1098, !noalias !1100
  store ptr %.sroa.0.0.copyload57, ptr %i.bo, align 8, !dbg !1098, !noalias !1101
  store ptr %.sroa.659.0.copyload, ptr %.sroa.569.0..sroa_idx70.i, align 8, !dbg !1098, !noalias !1101
  store i64 %.sroa.8.0.copyload, ptr %.sroa.672.0..sroa_idx73.i, align 8, !dbg !1098, !noalias !1101
  store ptr %.sroa.10.0.copyload, ptr %.sroa.775.0..sroa_idx76.i, align 8, !dbg !1098, !noalias !1101
  store i64 %.sroa.12.0.copyload, ptr %.sroa.878.0..sroa_idx79.i, align 8, !dbg !1098, !noalias !1101
  store i64 0, ptr %i.c, align 8, !dbg !1098, !noalias !1099
  %i.kx = load i64, ptr %i.bi, align 8, !dbg !1102, !range !1112, !alias.scope !1113, !noalias !1116, !noundef !16
  %i.ky = icmp eq i64 %i.ku, %i.kx, !dbg !1118
  br i1 %i.ky, label %bb.bl, label %bb.bt, !dbg !1118

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.bt unwind label %bb.bm, !dbg !1119, !noalias !1116

bb.bm:                                            ; preds = %bb.bl
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.c) #38
          to label %.thread94 unwind label %bb.bn, !dbg !1120, !noalias !1092

bb.bn:                                            ; preds = %bb.bm
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !dbg !1121, !noalias !1116
  unreachable, !dbg !1121

bb.bo:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload57) ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload57, i64 32, !dbg !1122
  %i.lc = load ptr, ptr %i.lb, align 8, !dbg !1122, !noalias !1126, !nonnull !16, !noundef !16
  invoke void %i.lc(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.659.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.bq, !dbg !1122, !noalias !1133, !inline_history !640

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !1134), !dbg !1137
  call void @llvm.experimental.noalias.scope.decl(metadata !1138), !dbg !1141
  %i.ld = load ptr, ptr %i.g, align 8, !dbg !1143, !alias.scope !1145, !noalias !1100, !noundef !16 ; 2 uses
  %i.le = icmp eq ptr %i.ld, null, !dbg !1143
  br i1 %i.le, label %_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsbaWXNhtWAp9_11foundations.exit.thread.i, label %bb.bp, !dbg !1143

bb.bp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1146), !dbg !1143
  call void @llvm.experimental.noalias.scope.decl(metadata !1149), !dbg !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1154), !dbg !1157
  call void @llvm.experimental.noalias.scope.decl(metadata !1159), !dbg !1162
  %i.lf = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !1164
  %i.lg = load ptr, ptr %i.lf, align 8, !dbg !1171, !alias.scope !1173, !noalias !1100, !noundef !16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 32, !dbg !1174
  %i.li = load ptr, ptr %i.lh, align 8, !dbg !1174, !noalias !1175, !nonnull !16, !noundef !16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !1176
  %i.lk = load ptr, ptr %i.lj, align 8, !dbg !1176, !alias.scope !1173, !noalias !1100, !noundef !16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !1177
  %i.lm = load i64, ptr %i.ll, align 8, !dbg !1177, !alias.scope !1173, !noalias !1100, !noundef !16
  invoke void %i.li(ptr noundef %i.lg, ptr noundef %i.lk, i64 noundef %i.lm)
          to label %_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsbaWXNhtWAp9_11foundations.exit.thread.i unwind label %.thread101, !dbg !1174, !inline_history !682

bb.bq:                                            ; preds = %bb.bo
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1178), !dbg !1137
  call void @llvm.experimental.noalias.scope.decl(metadata !1181), !dbg !1184
  %i.lo = load ptr, ptr %i.g, align 8, !dbg !1186, !alias.scope !1188, !noalias !1100, !noundef !16 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null, !dbg !1186
  br i1 %i.lp, label %.thread94, label %bb.br, !dbg !1186

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !1189), !dbg !1186
  call void @llvm.experimental.noalias.scope.decl(metadata !1192), !dbg !1195
  call void @llvm.experimental.noalias.scope.decl(metadata !1197), !dbg !1200
  call void @llvm.experimental.noalias.scope.decl(metadata !1202), !dbg !1205
  %i.lq = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !1207
  %i.lr = load ptr, ptr %i.lq, align 8, !dbg !1214, !alias.scope !1216, !noalias !1100, !noundef !16
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 32, !dbg !1217
  %i.lt = load ptr, ptr %i.ls, align 8, !dbg !1217, !noalias !1218, !nonnull !16, !noundef !16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !1219
  %i.lv = load ptr, ptr %i.lu, align 8, !dbg !1219, !alias.scope !1216, !noalias !1100, !noundef !16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !1220
  %i.lx = load i64, ptr %i.lw, align 8, !dbg !1220, !alias.scope !1216, !noalias !1100, !noundef !16
  invoke void %i.lt(ptr noundef %i.lr, ptr noundef %i.lv, i64 noundef %i.lx)
          to label %.thread94 unwind label %bb.bs, !dbg !1217, !noalias !1133, !inline_history !1221

bb.bs:                                            ; preds = %bb.br
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !dbg !1222, !noalias !1133
  unreachable, !dbg !1222

_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsbaWXNhtWAp9_11foundations.exit.thread.i: ; preds = %bb.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1223, !noalias !1073
  br label %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit.thread106, !dbg !1224

bb.bt:                                            ; preds = %bb.bl, %bb.bk
  %i.lz = load ptr, ptr %i.be, align 8, !dbg !1226, !alias.scope !1113, !noalias !1116, !nonnull !16, !noundef !16
  %i.ma = getelementptr inbounds nuw [104 x i8], ptr %i.lz, i64 %i.ku, !dbg !1235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ma, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, i64 104, i1 false), !dbg !1238, !noalias !1092
  %i.mb = add nuw nsw i64 %i.ku, 1, !dbg !1242
  store i64 %i.mb, ptr %i.bd, align 8, !dbg !1242, !alias.scope !1113, !noalias !1116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1243, !noalias !1099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1223, !noalias !1073
  %i.mc = load i64, ptr %i.bc, align 8, !dbg !1244, !alias.scope !648, !noalias !663, !noundef !16 ; 2 uses
  %i.md = icmp ult i64 %.sroa.01.0.i.ph.mux, %i.mc, !dbg !1244
  br i1 %i.md, label %bb.bu, label %.invoke, !dbg !1244

bb.bu:                                            ; preds = %bb.bt
  %i.me = load ptr, ptr %i.bb, align 8, !dbg !1244, !alias.scope !648, !noalias !663, !nonnull !16, !noundef !16
  %i.mf = trunc i64 %i.kc to i16, !dbg !1245
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %.sroa.01.0.i.ph.mux, !dbg !1244 ; 2 uses
  store i16 %i.mf, ptr %i.mg, align 2, !dbg !1244, !noalias !663
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 2, !dbg !1244
  store i16 %i.jv, ptr %i.mh, align 2, !dbg !1244, !noalias !663
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.backedge, !dbg !1248

.invoke:                                          ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i, %bb.bt
  %i.mi = phi i64 [ %.sroa.01.0.i.ph.mux, %bb.bt ], [ %i.nj, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i ]
  %i.mj = phi i64 [ %i.mc, %bb.bt ], [ %i.nu, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i ]
  %i.mk = phi ptr [ @10, %bb.bt ], [ @13, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.mi, i64 noundef %i.mj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mk) #39
          to label %.cont unwind label %.thread101, !dbg !1250

.cont:                                            ; preds = %.invoke
  unreachable

bb.bv:                                            ; preds = %bb.bi
  %i.ml = icmp eq i16 %i.kn, %i.jv, !dbg !1251
  br i1 %i.ml, label %bb.bx, label %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i, !dbg !1255

bb.bw:                                            ; preds = %bb.bi
  %i.mm = icmp samesign ugt i64 %.sroa.09.0.i.ph, 511, !dbg !1256
  %i.mn = icmp ne i64 %i.em, 2, !dbg !1256
  %.sroa.016.0.i = and i1 %i.mn, %i.mm, !dbg !1256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1257, !noalias !1073
  invoke void @_RNvXs7_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core7convert4FromRBE_E4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.av)
          to label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbaWXNhtWAp9_11foundations.exit32.i unwind label %.loopexit111, !dbg !1259, !noalias !663

_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i: ; preds = %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.i, %.split.i, %bb.ca, %bb.by, %bb.bv
  %i.mo = phi i8 [ %.ph, %bb.ca ], [ %.ph, %bb.by ], [ %i.kh, %.split.i ], [ %.ph, %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.i ], [ %.ph, %bb.bv ]
  %i.mp = add nuw nsw i64 %.sroa.09.0.i.ph, 1, !dbg !1261
  %i.mq = add i64 %.sroa.01.0.i.ph.mux, 1, !dbg !1262
  br label %.outer511, !dbg !1263

bb.bx:                                            ; preds = %bb.bv
  %i.mr = icmp ugt i64 %i.kc, %i.kl, !dbg !1264
  br i1 %i.mr, label %bb.by, label %bb.cb, !dbg !1264

bb.by:                                            ; preds = %bb.bx
  %i.ms = getelementptr inbounds nuw [104 x i8], ptr %i.kd, i64 %i.kl, !dbg !1276 ; 10 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 64, !dbg !1277
  %i.mu = load ptr, ptr %i.mt, align 8, !dbg !1278, !noalias !663, !noundef !16
  %i.mv = icmp ne ptr %i.mu, null, !dbg !1278     ; 2 uses
  %i.mw = xor i1 %4, %i.mv, !dbg !1288
  br i1 %i.mw, label %bb.bz, label %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i, !dbg !1288

bb.bz:                                            ; preds = %bb.by
  br i1 %i.mv, label %bb.ca, label %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.i, !dbg !1288

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 %not..i.i.i), !dbg !1288
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 80, !dbg !1291
  %i.my = load i64, ptr %i.mx, align 8, !dbg !1291, !noalias !663, !noundef !16
  %i.mz = icmp eq i64 %i.my, %i.ke, !dbg !1309
  br i1 %i.mz, label %.split.i, label %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i, !dbg !1309

.split.i:                                         ; preds = %bb.ca
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 72, !dbg !1318
  %i.nb = load ptr, ptr %i.na, align 8, !dbg !1318, !noalias !663, !noundef !16
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.nb, ptr %i.kf, i64 %i.ke), !dbg !1319, !noalias !663
  %i.nc = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !1319
  br i1 %i.nc, label %bb.cc, label %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i, !dbg !1324

bb.cb:                                            ; preds = %bb.bx
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.kl, i64 noundef %i.kc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39
          to label %bb.bh unwind label %.loopexit.split-lp112, !dbg !1264, !noalias !663

_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.i: ; preds = %bb.bz
  call void @llvm.assume(i1 %4), !dbg !1288
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ms, i64 72, !dbg !1325
  %i.ne = load i8, ptr %i.nd, align 8, !dbg !1325, !range !778, !noalias !663, !noundef !16
  %i.nf = icmp eq i8 %i.ne, %.ph, !dbg !1332
  br i1 %i.nf, label %bb.cc, label %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i, !dbg !1324

bb.cc:                                            ; preds = %_RNvXsh_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRBE_E2eq.exit.i, %.split.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1335), !dbg !1338
  call void @llvm.experimental.noalias.scope.decl(metadata !1339), !dbg !1338
  %i.ng = load i64, ptr %i.ms, align 8, !dbg !1341, !range !266, !alias.scope !1335, !noalias !1344, !noundef !16
  %i.nh = trunc nuw i64 %i.ng to i1, !dbg !1346
  br i1 %i.nh, label %bb.cd, label %bb.ch, !dbg !1346

bb.cd:                                            ; preds = %bb.cc
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ms, i64 16, !dbg !1347 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !dbg !1347, !alias.scope !1335, !noalias !1344, !noundef !16 ; 4 uses
  %i.nk = load i64, ptr %i.bg, align 8, !dbg !1348, !alias.scope !1352, !noalias !1353, !noundef !16 ; 7 uses
  %i.nl = icmp ult i64 %i.nk, 128102389400760776, !dbg !1354
  call void @llvm.assume(i1 %i.nl), !dbg !1356
  %i.nm = load i64, ptr %i.bf, align 8, !dbg !1357, !range !1112, !alias.scope !1368, !noalias !1371, !noundef !16
  %i.nn = icmp eq i64 %i.nk, %i.nm, !dbg !1373
  br i1 %i.nn, label %bb.ce, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !1373

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.cf, !dbg !1374, !noalias !1371

bb.cf:                                            ; preds = %bb.ce
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload57) ]
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload57, i64 32, !dbg !1375
  %i.nq = load ptr, ptr %i.np, align 8, !dbg !1375, !noalias !1381, !nonnull !16, !noundef !16
  invoke void %i.nq(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.659.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.thread94 unwind label %bb.cg, !dbg !1375, !noalias !1371, !inline_history !1390

bb.cg:                                            ; preds = %bb.cf
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !dbg !1391, !noalias !1371
  unreachable, !dbg !1391

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.ce, %bb.cd
  %i.ns = load ptr, ptr %i.bh, align 8, !dbg !1392, !alias.scope !1368, !noalias !1371, !nonnull !16, !noundef !16
  %i.nt = getelementptr inbounds nuw [72 x i8], ptr %i.ns, i64 %i.nk, !dbg !1401 ; 9 uses
  store i64 1, ptr %i.nt, align 8, !dbg !1404, !noalias !1353
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 8, !dbg !1404
  store i64 %i.nj, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1404, !noalias !1353
  %.sroa.5.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 16, !dbg !1404
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i.i, align 8, !dbg !1404, !noalias !1353
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 24, !dbg !1404
  store i64 %i.kl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !1404, !noalias !1353
  %.sroa.7.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 32, !dbg !1404
  store ptr %.sroa.0.0.copyload57, ptr %.sroa.7.0..sroa_idx.i36.i, align 8, !dbg !1404, !noalias !1353
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 40, !dbg !1404
  store ptr %.sroa.659.0.copyload, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !1404, !noalias !1353
  %.sroa.10.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 48, !dbg !1404
  store i64 %.sroa.8.0.copyload, ptr %.sroa.10.0..sroa_idx.i37.i, align 8, !dbg !1404, !noalias !1353
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 56, !dbg !1404
  store ptr %.sroa.10.0.copyload, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !1404, !noalias !1353
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 64, !dbg !1404
  store i64 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !dbg !1404, !noalias !1353
  %i.nu = add nuw nsw i64 %i.nk, 1, !dbg !1408    ; 2 uses
  store i64 %i.nu, ptr %i.bg, align 8, !dbg !1408, !alias.scope !1368, !noalias !1371
  %.not.i.i = icmp ugt i64 %i.nj, %i.nk, !dbg !1409
  br i1 %.not.i.i, label %.invoke, label %bb.cl, !dbg !1409

bb.ch:                                            ; preds = %bb.cc
  %i.nv = load i64, ptr %i.bg, align 8, !dbg !1418, !alias.scope !1352, !noalias !1353, !noundef !16 ; 6 uses
  %i.nw = icmp ult i64 %i.nv, 128102389400760776, !dbg !1420
  call void @llvm.assume(i1 %i.nw), !dbg !1422
  %i.nx = load i64, ptr %i.bf, align 8, !dbg !1423, !range !1112, !alias.scope !1429, !noalias !1432, !noundef !16
  %i.ny = icmp eq i64 %i.nv, %i.nx, !dbg !1434
  br i1 %i.ny, label %bb.ci, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i, !dbg !1434

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i unwind label %bb.cj, !dbg !1435, !noalias !1432

bb.cj:                                            ; preds = %bb.ci
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload57) ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload57, i64 32, !dbg !1436
  %i.ob = load ptr, ptr %i.oa, align 8, !dbg !1436, !noalias !1441, !nonnull !16, !noundef !16
  invoke void %i.ob(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.659.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.thread94 unwind label %bb.ck, !dbg !1436, !noalias !1432, !inline_history !1390

bb.ck:                                            ; preds = %bb.cj
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !dbg !1450, !noalias !1432
  unreachable, !dbg !1450

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i: ; preds = %bb.ci, %bb.ch
  %i.od = load ptr, ptr %i.bh, align 8, !dbg !1451, !alias.scope !1429, !noalias !1432, !nonnull !16, !noundef !16
  %i.oe = getelementptr inbounds nuw [72 x i8], ptr %i.od, i64 %i.nv, !dbg !1456 ; 9 uses
  store i64 0, ptr %i.oe, align 8, !dbg !1458, !noalias !1353
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 8, !dbg !1458
  store i64 %i.kl, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !dbg !1458, !noalias !1353
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 16, !dbg !1458
  store i64 0, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !dbg !1458, !noalias !1353
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 24, !dbg !1458
  store i64 %i.kl, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1458, !noalias !1353
  %.sroa.720.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 32, !dbg !1458
  store ptr %.sroa.0.0.copyload57, ptr %.sroa.720.0..sroa_idx.i.i, align 8, !dbg !1458, !noalias !1353
  %.sroa.921.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 40, !dbg !1458
  store ptr %.sroa.659.0.copyload, ptr %.sroa.921.0..sroa_idx.i.i, align 8, !dbg !1458, !noalias !1353
  %.sroa.1022.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 48, !dbg !1458
  store i64 %.sroa.8.0.copyload, ptr %.sroa.1022.0..sroa_idx.i.i, align 8, !dbg !1458, !noalias !1353
  %.sroa.1123.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 56, !dbg !1458
  store ptr %.sroa.10.0.copyload, ptr %.sroa.1123.0..sroa_idx.i.i, align 8, !dbg !1458, !noalias !1353
  %.sroa.1224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 64, !dbg !1458
  store i64 %.sroa.12.0.copyload, ptr %.sroa.1224.0..sroa_idx.i.i, align 8, !dbg !1458, !noalias !1353
  %i.of = add nuw nsw i64 %i.nv, 1, !dbg !1460
  store i64 %i.of, ptr %i.bg, align 8, !dbg !1460, !alias.scope !1429, !noalias !1432
  store i64 1, ptr %i.ms, align 8, !dbg !1461, !alias.scope !1335, !noalias !1344
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 8, !dbg !1461
  store i64 %i.nv, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !1461, !alias.scope !1335, !noalias !1344
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 16, !dbg !1461
  store i64 %i.nv, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !1461, !alias.scope !1335, !noalias !1344
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.backedge, !dbg !1462

bb.cl:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i
  %i.og = load ptr, ptr %i.bh, align 8, !dbg !1463, !alias.scope !1352, !noalias !1353, !nonnull !16, !noundef !16
  %i.oh = getelementptr inbounds nuw [72 x i8], ptr %i.og, i64 %i.nj, !dbg !1477 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16, !dbg !1478
  store i64 1, ptr %i.oi, align 8, !dbg !1478, !noalias !1353
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 24, !dbg !1478
  store i64 %i.nk, ptr %i.oj, align 8, !dbg !1478, !noalias !1353
  store i64 1, ptr %i.ms, align 8, !dbg !1479, !alias.scope !1335, !noalias !1344
  store i64 %i.nk, ptr %i.ni, align 8, !dbg !1479, !alias.scope !1335, !noalias !1344
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.backedge, !dbg !1480

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.backedge: ; preds = %bb.cl, %bb.bu, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i, %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, %bb.av
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit, !dbg !318

_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbaWXNhtWAp9_11foundations.exit32.i: ; preds = %bb.bw
  %i.ok = load i64, ptr %i.bd, align 8, !dbg !1481, !alias.scope !1486, !noalias !1489, !noundef !16 ; 6 uses
  %i.ol = icmp ult i64 %i.ok, 88686269585142076, !dbg !1492
  call void @llvm.assume(i1 %i.ol), !dbg !1494
  call void @llvm.experimental.noalias.scope.decl(metadata !1495), !dbg !1498
  call void @llvm.experimental.noalias.scope.decl(metadata !1500), !dbg !1498
  %i.om = icmp samesign ugt i64 %i.ok, 32767, !dbg !1502
  br i1 %i.om, label %bb.cq, label %bb.cm, !dbg !1502

bb.cm:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbaWXNhtWAp9_11foundations.exit32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1504, !noalias !1505
  store i16 %i.jv, ptr %i.bj, align 8, !dbg !1504, !noalias !1505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !1504, !noalias !1507
  store ptr %.sroa.0.0.copyload57, ptr %i.bl, align 8, !dbg !1504, !noalias !1508
  store ptr %.sroa.659.0.copyload, ptr %.sroa.5.0..sroa_idx55.i, align 8, !dbg !1504, !noalias !1508
  store i64 %.sroa.8.0.copyload, ptr %.sroa.6.0..sroa_idx57.i, align 8, !dbg !1504, !noalias !1508
  store ptr %.sroa.10.0.copyload, ptr %.sroa.7.0..sroa_idx59.i, align 8, !dbg !1504, !noalias !1508
  store i64 %.sroa.12.0.copyload, ptr %.sroa.8.0..sroa_idx61.i, align 8, !dbg !1504, !noalias !1508
  store i64 0, ptr %i.b, align 8, !dbg !1504, !noalias !1505
  %i.on = load i64, ptr %i.bi, align 8, !dbg !1509, !range !1112, !alias.scope !1514, !noalias !1517, !noundef !16
  %i.oo = icmp eq i64 %i.ok, %i.on, !dbg !1519
  br i1 %i.oo, label %bb.cn, label %bb.cv, !dbg !1519

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.cv unwind label %bb.co, !dbg !1520, !noalias !1517

bb.co:                                            ; preds = %bb.cn
  %i.op = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #38
          to label %.thread94 unwind label %bb.cp, !dbg !1521, !noalias !1522

bb.cp:                                            ; preds = %bb.co
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !dbg !1523, !noalias !1517
  unreachable, !dbg !1523

bb.cq:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbaWXNhtWAp9_11foundations.exit32.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload57) ]
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload57, i64 32, !dbg !1524
  %i.os = load ptr, ptr %i.or, align 8, !dbg !1524, !noalias !1528, !nonnull !16, !noundef !16
  invoke void %i.os(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.659.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i47.i unwind label %bb.cs, !dbg !1524, !noalias !1535, !inline_history !640

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i47.i: ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !1536), !dbg !1539
  call void @llvm.experimental.noalias.scope.decl(metadata !1540), !dbg !1543
  %i.ot = load ptr, ptr %i.h, align 8, !dbg !1545, !alias.scope !1547, !noalias !1507, !noundef !16 ; 2 uses
  %i.ou = icmp eq ptr %i.ot, null, !dbg !1545
  br i1 %i.ou, label %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit.thread109, label %bb.cr, !dbg !1545

bb.cr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i47.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1548), !dbg !1545
  call void @llvm.experimental.noalias.scope.decl(metadata !1551), !dbg !1554
  call void @llvm.experimental.noalias.scope.decl(metadata !1556), !dbg !1559
  call void @llvm.experimental.noalias.scope.decl(metadata !1561), !dbg !1564
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !1566
  %i.ow = load ptr, ptr %i.ov, align 8, !dbg !1573, !alias.scope !1575, !noalias !1507, !noundef !16
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 32, !dbg !1576
  %i.oy = load ptr, ptr %i.ox, align 8, !dbg !1576, !noalias !1577, !nonnull !16, !noundef !16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1578
  %i.pa = load ptr, ptr %i.oz, align 8, !dbg !1578, !alias.scope !1575, !noalias !1507, !noundef !16
end_hunk_0
