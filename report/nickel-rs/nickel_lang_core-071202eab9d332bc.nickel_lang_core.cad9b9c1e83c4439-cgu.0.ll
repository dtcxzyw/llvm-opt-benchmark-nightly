Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN121_$LT$nickel_lang_core..term..pattern..compile..MatchData$u20$as$u20$nickel_lang_core..term..pattern..compile..Compile$GT$7compile17h5271bdbc9ecb19a8E":bb.a
  %i.hz = add nsw i64 %.val3.i.i.i.i.i.i, 17
  %i.ia = add i64 %i.hz, %i.hy                    ; 4 uses
  %i.ib = icmp uge i64 %i.ia, %i.hy
  %i.ic = icmp ult i64 %i.ia, 9223372036854775793
  call void @llvm.assume(i1 %i.ib), !noalias !20836
  call void @llvm.assume(i1 %i.ic), !noalias !20836
  %i.id = icmp eq i64 %i.ia, 0
  br i1 %i.id, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17h727915114fc71ce1E.exit.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ %i.ik, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.hx, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i = phi i64 [ %i.in, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.ia, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.val.sink.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i, align 8, !alias.scope !20845, !noalias !20836, !nonnull !152, !noundef !152
  %i.ie = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i
  %i.if = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i, i64 %i.ie
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %.sink7.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !20846
  br label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17h727915114fc71ce1E.exit.i"

bb.al:                                            ; preds = %bb.aj
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %.val1.i.i.i.i.i.i115 = load i64, ptr %i.ig, align 8, !alias.scope !20845, !noalias !20836, !noundef !152 ; 4 uses
  %i.ih = icmp eq i64 %.val1.i.i.i.i.i.i115, 0
  br i1 %i.ih, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17h727915114fc71ce1E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %bb.al
  %i.ii = shl i64 %.val1.i.i.i.i.i.i115, 2
  %i.ij = icmp slt i64 %.val1.i.i.i.i.i.i115, 4611686018427387900
  call void @llvm.assume(i1 %i.ij), !noalias !20836
  %i.ik = and i64 %i.ii, -16                      ; 2 uses
  %i.il = add i64 %i.ik, 16                       ; 2 uses
  %i.im = add nsw i64 %.val1.i.i.i.i.i.i115, 17
  %i.in = add i64 %i.im, %i.il                    ; 4 uses
  %i.io = icmp uge i64 %i.in, %i.il
  %i.ip = icmp ult i64 %i.in, 9223372036854775793
  call void @llvm.assume(i1 %i.io), !noalias !20836
  call void @llvm.assume(i1 %i.ip), !noalias !20836
  %i.iq = icmp eq i64 %i.in, 0
  br i1 %i.iq, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17h727915114fc71ce1E.exit.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17h727915114fc71ce1E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i, %bb.al, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak, %bb.aj, %bb.ai, %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17h0b9105c0160e2388E.exit.i.i.i.i"
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hj, i64 120
  call void @llvm.experimental.noalias.scope.decl(metadata !20847), !noalias !20836
  %i.is = load i64, ptr %i.ir, align 8, !range !222, !alias.scope !20848, !noalias !20836, !noundef !152 ; 4 uses
  %i.it = icmp ne i64 %i.is, -9223372036854775805
  call void @llvm.assume(i1 %i.it), !noalias !20836
  %i.iu = icmp ult i64 %i.is, -9223372036854775807
  br i1 %i.iu, label %bb.am, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E.exit"

bb.am:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17h727915114fc71ce1E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !20849), !noalias !20836
  %switch.i.i.i = icmp sgt i64 %i.is, 0
  br i1 %switch.i.i.i, label %bb.an, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hfc2a1c847fec6b15E.exit.i.i.i"

bb.an:                                            ; preds = %bb.am
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hj, i64 128
  %.val5.i.i.i = load ptr, ptr %i.iv, align 8, !alias.scope !20850, !noalias !20836, !nonnull !152, !noundef !152
  %i.iw = shl nuw i64 %i.is, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.iw, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !20851
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hfc2a1c847fec6b15E.exit.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hfc2a1c847fec6b15E.exit.i.i.i": ; preds = %bb.an, %bb.am
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hj, i64 144
  %.val.i.i.i114 = load i64, ptr %i.ix, align 8, !range !175, !alias.scope !20850, !noalias !20836, !noundef !152 ; 2 uses
  %switch8.i.i.i = icmp sgt i64 %.val.i.i.i114, 0
  br i1 %switch8.i.i.i, label %bb.ao, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E.exit"

bb.ao:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hfc2a1c847fec6b15E.exit.i.i.i"
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %.val1.i.i.i = load ptr, ptr %i.iy, align 8, !alias.scope !20850, !noalias !20836, !nonnull !152, !noundef !152
  %i.iz = shl nuw i64 %.val.i.i.i114, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !20851
  br label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E.exit"

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E.exit": ; preds = %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17h727915114fc71ce1E.exit.i", %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hfc2a1c847fec6b15E.exit.i.i.i", %bb.ao
  %i.ja = icmp eq i64 %i.hk, %i.et
  br i1 %i.ja, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3b60aa9601188a5E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3b60aa9601188a5E.exit.i.i": ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E.exit", %_ZN4core4iter6traits8iterator8Iterator7collect17hbe713bf57580f7d7E.exit.i.thread
  %.val.i.i = load i64, ptr %i.ad, align 8, !range !153, !alias.scope !20831, !noalias !20804, !noundef !152 ; 2 uses
  %i.jb = icmp eq i64 %.val.i.i, 0
  br i1 %i.jb, label %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17h253bc71a39c58ff5E.exit.i", label %bb.ap

bb.ap:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3b60aa9601188a5E.exit.i.i"
  %i.jc = mul nuw i64 %.val.i.i, 248
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.es, i64 noundef %i.jc, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !20836, !inline_history !20532
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17h253bc71a39c58ff5E.exit.i"

"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17h253bc71a39c58ff5E.exit.i": ; preds = %bb.ap, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3b60aa9601188a5E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !20804
  %i.jd = load ptr, ptr %i.ed, align 8, !alias.scope !20803, !noalias !20806, !noundef !152 ; 3 uses
  %.not.i47 = icmp eq ptr %i.jd, null             ; 6 uses
  br i1 %.not.i47, label %bb.av, label %bb.ar

.critedge.i:                                      ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i562", %.thread12.i.i, %bb.ca, %bb.cd, %bb.bc, %bb.aw, %bb.bb
  %.not.i47864 = phi i1 [ false, %bb.aw ], [ false, %bb.bb ], [ %.not.i47, %bb.bc ], [ %.not.i47, %bb.cd ], [ %.not.i47, %bb.ca ], [ %.not.i47, %.thread12.i.i ], [ %.not.i47, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i562" ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp209, %bb.aw ], [ %lpad.thr_comm208, %bb.bb ], [ %i.km, %bb.bc ], [ %i.os, %bb.cd ], [ %i.oo, %bb.ca ], [ %eh.lpad-body.i.i.i.i, %.thread12.i.i ], [ %eh.lpad-body.i.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i562" ] ; 3 uses
  %.sroa.06.2.i = phi i1 [ true, %bb.aw ], [ true, %bb.bb ], [ false, %bb.bc ], [ true, %bb.cd ], [ true, %bb.ca ], [ true, %.thread12.i.i ], [ true, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i562" ] ; 3 uses
  %.val13.i = load ptr, ptr %i.ae, align 8, !noalias !20804 ; 2 uses
  %.val14.i = load i64, ptr %i.ef, align 8, !noalias !20804, !noundef !152 ; 4 uses
  %i.je = icmp eq i64 %.val14.i, 0
  br i1 %i.je, label %"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h873ba281d1e42320E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %.critedge.i
  %i.jf = mul i64 %.val14.i, 40
  %i.jg = icmp slt i64 %.val14.i, 461168601842738790
  call void @llvm.assume(i1 %i.jg), !noalias !20805
  %i.jh = and i64 %i.jf, -16                      ; 2 uses
  %i.ji = add i64 %i.jh, 48                       ; 2 uses
  %i.jj = add nsw i64 %.val14.i, 17
  %i.jk = add i64 %i.jj, %i.ji                    ; 4 uses
  %i.jl = icmp uge i64 %i.jk, %i.ji
  %i.jm = icmp ult i64 %i.jk, 9223372036854775793
  call void @llvm.assume(i1 %i.jl), !noalias !20805
  call void @llvm.assume(i1 %i.jm), !noalias !20805
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ], !noalias !20805
  %i.jn = icmp eq i64 %i.jk, 0
  br i1 %i.jn, label %"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h873ba281d1e42320E.exit", label %bb.aq

bb.aq:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i
  %i.jo = sub i64 -48, %i.jh
  %i.jp = getelementptr inbounds i8, ptr %.val13.i, i64 %i.jo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jp, i64 noundef %i.jk, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !20805
  br label %"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h873ba281d1e42320E.exit"

bb.ar:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17h253bc71a39c58ff5E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !20804
  store ptr %i.jd, ptr %i.ac, align 8, !noalias !20804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !20804
  %i.jq = load ptr, ptr %i.ee, align 8, !alias.scope !20803, !noalias !20806, !nonnull !152, !noundef !152 ; 2 uses
  store ptr %i.jq, ptr %i.ab, align 8, !noalias !20804
  %i.jr = ptrtoint ptr %i.en to i64
  %i.js = and i64 %i.jr, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.js, i64 2)
  switch i64 %..i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.as
    i64 0, label %bb.at
  ], !prof !157

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.noexc15.i unwind label %bb.az, !noalias !20805, !inline_history !20532

.noexc15.i:                                       ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.jt = load i64, ptr %i.en, align 8, !noalias !20805, !noundef !152 ; 3 uses
  %i.ju = and i64 %i.jt, 72057594037927935        ; 3 uses
  %i.jv = icmp ne i64 %i.ju, 0
  call void @llvm.assume(i1 %i.jv), !noalias !20806
  %i.jw = add nuw nsw i64 %i.ju, 1
  %i.jx = and i64 %i.jt, 1080863910568919040
  %i.jy = icmp ult i64 %i.jt, 864691128455135232
  call void @llvm.assume(i1 %i.jy), !noalias !20806
  %i.jz = or i64 %i.jw, %i.jx
  store i64 %i.jz, ptr %i.en, align 8, !noalias !20805
  %i.ka = icmp eq i64 %i.ju, 72057594037927935
  br i1 %i.ka, label %bb.au, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", !prof !154

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !20804
  store ptr @2796, ptr %i.x, align 8, !noalias !20804
  %i.kb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.kb, align 8, !noalias !20804
  %i.kc = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.kc, align 8, !noalias !20804
  %i.kd = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kd, align 8, !noalias !20804
  %i.ke = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.ke, align 8, !noalias !20804
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc16.i unwind label %bb.az, !noalias !20805, !inline_history !20532

.noexc16.i:                                       ; preds = %bb.au
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i": ; preds = %bb.at, %bb.ar
  %i.kf = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term4make12if_then_else17hc84249f11a3cc0efE(ptr noundef nonnull %i.jd, ptr noundef nonnull %i.jq, ptr noundef nonnull %i.en)
          to label %bb.ax unwind label %bb.aw, !noalias !20805, !inline_history !20532

bb.av:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17h253bc71a39c58ff5E.exit.i"
  %i.kg = load ptr, ptr %i.ee, align 8, !alias.scope !20803, !noalias !20806, !nonnull !152, !noundef !152
  br label %bb.ay

bb.aw:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  %lpad.thr_comm.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.ax:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !20804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !20804
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %.sroa.0148.0 = phi ptr [ %i.kg, %bb.av ], [ %i.kf, %bb.ax ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20852), !noalias !20806
  %i.kh = load ptr, ptr %i.ae, align 8, !alias.scope !20852, !noalias !20804, !nonnull !152, !noundef !152 ; 5 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.kh, align 16, !noalias !20853
  %i.ki = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1) ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.kk = load i64, ptr %i.eg, align 8, !alias.scope !20852, !noalias !20804, !noundef !152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !20854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !20855
  store i64 0, ptr %i.eh, align 8, !noalias !20855
  call void @llvm.experimental.noalias.scope.decl(metadata !20856), !noalias !20806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !20855
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6173)
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.kk, 4
  br i1 %.not.i.i.i.i.i.i, label %bb.bd, label %.lr.ph.i.i.preheader.i.i.i

bb.az:                                            ; preds = %bb.au, %bb.as
  %lpad.thr_comm208 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab) #86
          to label %bb.bb unwind label %bb.ba, !noalias !20805, !inline_history !20532

bb.ba:                                            ; preds = %.invoke550, %.invoke548, %bb.ct, %bb.cy, %bb.dd, %bb.bb, %bb.az
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !20805, !inline_history !20532
  unreachable

bb.bb:                                            ; preds = %bb.az
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #86
          to label %.critedge.i unwind label %bb.ba, !noalias !20805, !inline_history !20532

bb.bc:                                            ; preds = %_ZN16nickel_lang_core4term4make6let_in17hef58e67993e370e3E.exit.i
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.bd:                                            ; preds = %bb.ay
  %i.kn = add i64 %i.kk, -1
  %i.ko = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kn, i1 true) ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfeb95fd6603e1195E.exit.thread.i.i.i.i.i", label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfeb95fd6603e1195E.exit.i.i.i.i.i", !prof !154

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfeb95fd6603e1195E.exit.i.i.i.i.i": ; preds = %bb.bd
  %i.kq = lshr i64 -1, %i.ko
  %i.kr = add nuw i64 %i.kq, 1
  %i.ks = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hdff48f4e7accb40aE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.v, i64 noundef %i.kr)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20857, !inline_history !20532 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfeb95fd6603e1195E.exit.i.i.i.i.i"
  %i.kt = extractvalue { i64, i64 } %i.ks, 0      ; 2 uses
  switch i64 %i.kt, label %bb.be [
    i64 -9223372036854775807, label %.thread.i.i.i.i
    i64 0, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfeb95fd6603e1195E.exit.thread.i.i.i.i.i"
  ], !prof !233

bb.be:                                            ; preds = %.noexc.i.i.i.i
  %i.ku = extractvalue { i64, i64 } %i.ks, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.kt, i64 noundef %i.ku) #82
          to label %.noexc3.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20857, !inline_history !20532

.noexc3.i.i.i.i:                                  ; preds = %bb.be
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfeb95fd6603e1195E.exit.thread.i.i.i.i.i": ; preds = %.noexc.i.i.i.i, %bb.bd
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @307, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2947) #82
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20857, !inline_history !20532

.noexc4.i.i.i.i:                                  ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfeb95fd6603e1195E.exit.thread.i.i.i.i.i"
  unreachable

.thread.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  %.pre.i.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !20858, !noalias !20855
  %.pre.i.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i.i ; 2 uses
  %.pre33.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.pre.i.fr.i.i.i.i, i64 4) ; 2 uses
  %i.kv = icmp ugt i64 %.pre.i.fr.i.i.i.i, 4      ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !20858, !noalias !20855
  %spec.select.i.i.i = select i1 %i.kv, ptr %.pre.i.i.i.i, ptr %i.v
  %spec.select1.i.i.i = select i1 %i.kv, ptr %i.ei, ptr %i.eh ; 2 uses
  %.pre.i.i.i = load i64, ptr %spec.select1.i.i.i, align 8, !alias.scope !20856, !noalias !20855 ; 2 uses
  %i.kw = icmp ult i64 %.pre.i.i.i, %.pre33.i.i.i.i.i
  br i1 %i.kw, label %.lr.ph.i.i.preheader.i.i.i, label %._crit_edge.i.i.i.i.i.thread

._crit_edge.i.i.i.i.i.thread:                     ; preds = %.thread.i.i.i.i
  %4 = bitcast <16 x i1> %i.ki to i16
  br label %._crit_edge.i.i.i.i.i.thread.a

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %.thread.i.i.i.i, %bb.ay
  %i.kx = phi ptr [ %spec.select1.i.i.i, %.thread.i.i.i.i ], [ %i.eh, %bb.ay ] ; 3 uses
  %.sink.i.pre-phi.i1822.i11.i.i.i = phi i64 [ %.pre33.i.i.i.i.i, %.thread.i.i.i.i ], [ 4, %bb.ay ] ; 3 uses
  %i.ky = phi ptr [ %spec.select.i.i.i, %.thread.i.i.i.i ], [ %i.v, %bb.ay ]
  %i.kz = phi i64 [ %.pre.i.i.i, %.thread.i.i.i.i ], [ 0, %bb.ay ] ; 2 uses
  %5 = bitcast <16 x i1> %i.ki to i16
  %i.la = sub i64 %i.kk, %.sink.i.pre-phi.i1822.i11.i.i.i
  %i.lb = add i64 %i.la, %i.kz                    ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bx
  store i64 %.sink.i.pre-phi.i1822.i11.i.i.i, ptr %i.kx, align 8, !alias.scope !20856, !noalias !20855
  call void @llvm.experimental.noalias.scope.decl(metadata !20859)
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %._crit_edge30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.thread.a

._crit_edge.i.i.i.i.i.thread.a:                   ; preds = %._crit_edge.i.i.i.i.i.thread, %._crit_edge.i.i.i.i.i
  %6 = phi i16 [ %4, %._crit_edge.i.i.i.i.i.thread ], [ %i.mj, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.15.1223 = phi i64 [ %i.kk, %._crit_edge.i.i.i.i.i.thread ], [ %i.lb, %._crit_edge.i.i.i.i.i ]
  %.sroa.7169.1221 = phi ptr [ %i.kj, %._crit_edge.i.i.i.i.i.thread ], [ %.sroa.7169.2, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0168.1220 = phi ptr [ %i.kh, %._crit_edge.i.i.i.i.i.thread ], [ %.sroa.0168.2, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.not13.i.i.i.i.i95 = icmp eq i16 %6, 0
  br i1 %.not13.i.i.i.i.i95, label %.lr.ph.i.i.i.i.i104, label %._crit_edge20.i.i.i.i.i96

.lr.ph.i.i.i.i.i104:                              ; preds = %._crit_edge.i.i.i.i.i.thread.a, %.lr.ph.i.i.i.i.i104
  %i.ld = phi ptr [ %i.lh, %.lr.ph.i.i.i.i.i104 ], [ %.sroa.7169.1221, %._crit_edge.i.i.i.i.i.thread.a ] ; 2 uses
  %i.le = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i104 ], [ %.sroa.0168.1220, %._crit_edge.i.i.i.i.i.thread.a ]
  %.val11.i.i.i.i.i107 = load <16 x i8>, ptr %i.ld, align 16, !noalias !20860
  %i.lf = icmp sgt <16 x i8> %.val11.i.i.i.i.i107, splat (i8 -1)
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 -640 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 16 ; 2 uses
  %.cast.i.i.i.i.i108 = bitcast <16 x i1> %i.lf to i16 ; 2 uses
  %.not.i.i.i.i.i109 = icmp eq i16 %.cast.i.i.i.i.i108, 0
  br i1 %.not.i.i.i.i.i109, label %.lr.ph.i.i.i.i.i104, label %._crit_edge20.i.i.i.i.i96

._crit_edge20.i.i.i.i.i96:                        ; preds = %.lr.ph.i.i.i.i.i104, %._crit_edge.i.i.i.i.i.thread.a
  %.sroa.0175.3 = phi ptr [ %.sroa.0168.1220, %._crit_edge.i.i.i.i.i.thread.a ], [ %i.lg, %.lr.ph.i.i.i.i.i104 ] ; 2 uses
  %.sroa.9176.3 = phi ptr [ %.sroa.7169.1221, %._crit_edge.i.i.i.i.i.thread.a ], [ %i.lh, %.lr.ph.i.i.i.i.i104 ]
  %.lcssa.i.i.i.i.i98 = phi i16 [ %6, %._crit_edge.i.i.i.i.i.thread.a ], [ %.cast.i.i.i.i.i108, %.lr.ph.i.i.i.i.i104 ] ; 3 uses
  %i.li = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i98, i1 true)
  %i.lj = zext nneg i16 %i.li to i64
  %i.lk = sub nsw i64 0, %i.lj
  %i.ll = getelementptr inbounds [40 x i8], ptr %.sroa.0175.3, i64 %i.lk ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -40
  %i.ln = getelementptr inbounds i8, ptr %i.ll, i64 -20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.78.i94)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.78.i94, ptr noundef nonnull align 4 dereferenceable(20) %i.ln, i64 20, i1 false), !noalias !20861
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i93)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.05.i93, ptr noundef nonnull align 4 dereferenceable(20) %i.lm, i64 20, i1 false), !noalias !20861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20862
  store i64 -9223372036854775760, ptr %i.h, align 8, !noalias !20863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.78.24..sroa_idx.i99, ptr noundef nonnull align 4 dereferenceable(20) %i.ln, i64 20, i1 false), !noalias !20861
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !20864
  %i.lo = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #83, !noalias !20864 ; 6 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bg, label %.noexc5.i.i.i.i, !prof !154

bb.bf:                                            ; preds = %bb.bg
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h676dc1c8dd07f040E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #86
          to label %.body.i.i.i.i unwind label %bb.bi, !noalias !20862

bb.bg:                                            ; preds = %._crit_edge20.i.i.i.i.i96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20864
  store ptr @760, ptr %i.g, align 8, !noalias !20864
  %i.lr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.lr, align 8, !noalias !20864
  %i.ls = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.ls, align 8, !noalias !20864
  %i.lt = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.lt, align 8, !noalias !20864
  %i.lu = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.lu, align 8, !noalias !20864
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @761) #82
          to label %bb.bh unwind label %bb.bf, !noalias !20864

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !20862
  unreachable

.noexc5.i.i.i.i:                                  ; preds = %._crit_edge20.i.i.i.i.i96
  store i64 360287970189639681, ptr %i.lo, align 8, !noalias !20864
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i32 -1, ptr %i.lw, align 8, !noalias !20864
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store i64 -9223372036854775760, ptr %i.lx, align 8, !noalias !20863
  %.sroa.78.24..sroa_idx9.i101 = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.78.24..sroa_idx9.i101, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.78.i94, i64 20, i1 false), !noalias !20863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.05.i93, i64 20, i1 false), !noalias !20865
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.78.i94)
  store ptr %i.lo, ptr %.sroa.44.0..sroa_idx.i102, align 8, !alias.scope !20859, !noalias !20857
  %.pr = load i32, ptr %i.u, align 8, !noalias !20866
  %.not27.i.i.i.i.i = icmp eq i32 %.pr, 3
  br i1 %.not27.i.i.i.i.i, label %._crit_edge30.i.i.i.i.i, label %.lr.ph29.i.i.i.i.i.preheader

.lr.ph29.i.i.i.i.i.preheader:                     ; preds = %.noexc5.i.i.i.i
  %i.ly = add i16 %.lcssa.i.i.i.i.i98, -1
  %i.lz = and i16 %i.ly, %.lcssa.i.i.i.i.i98
  br label %.lr.ph29.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bx, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.0168.0 = phi ptr [ %i.kh, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.0168.2, %bb.bx ] ; 2 uses
  %.sroa.7169.0 = phi ptr [ %i.kj, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.7169.2, %bb.bx ] ; 2 uses
  %.sroa.11.0 = phi i16 [ %5, %.lr.ph.i.i.preheader.i.i.i ], [ %i.mj, %bb.bx ] ; 2 uses
  %.sroa.15.0 = phi i64 [ %i.kk, %.lr.ph.i.i.preheader.i.i.i ], [ %i.mm, %bb.bx ] ; 2 uses
  %.sroa.7.026.i.i.i.i.i = phi i64 [ %i.kz, %.lr.ph.i.i.preheader.i.i.i ], [ %i.ok, %bb.bx ] ; 4 uses
  %i.ma = icmp eq i64 %.sroa.15.0, 0
  br i1 %i.ma, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1027f285f9c22ffE.exit92.thread", label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.not13.i.i.i.i.i74 = icmp eq i16 %.sroa.11.0, 0
  br i1 %.not13.i.i.i.i.i74, label %.lr.ph.i.i.i.i.i83, label %._crit_edge20.i.i.i.i.i75

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.bj, %.lr.ph.i.i.i.i.i83
  %i.mb = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i83 ], [ %.sroa.7169.0, %bb.bj ] ; 2 uses
  %i.mc = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i83 ], [ %.sroa.0168.0, %bb.bj ]
  %.val11.i.i.i.i.i86 = load <16 x i8>, ptr %i.mb, align 16, !noalias !20867
  %i.md = icmp sgt <16 x i8> %.val11.i.i.i.i.i86, splat (i8 -1)
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 -640 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i87 = bitcast <16 x i1> %i.md to i16 ; 2 uses
  %.not.i.i.i.i.i88 = icmp eq i16 %.cast.i.i.i.i.i87, 0
  br i1 %.not.i.i.i.i.i88, label %.lr.ph.i.i.i.i.i83, label %._crit_edge20.i.i.i.i.i75

._crit_edge20.i.i.i.i.i75:                        ; preds = %.lr.ph.i.i.i.i.i83, %bb.bj
  %.sroa.0168.2 = phi ptr [ %.sroa.0168.0, %bb.bj ], [ %i.me, %.lr.ph.i.i.i.i.i83 ] ; 3 uses
  %.sroa.7169.2 = phi ptr [ %.sroa.7169.0, %bb.bj ], [ %i.mf, %.lr.ph.i.i.i.i.i83 ] ; 2 uses
  %.lcssa.i.i.i.i.i77 = phi i16 [ %.sroa.11.0, %bb.bj ], [ %.cast.i.i.i.i.i87, %.lr.ph.i.i.i.i.i83 ] ; 3 uses
  %i.mg = add i16 %.lcssa.i.i.i.i.i77, -1
  %i.mh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i77, i1 true)
  %i.mi = zext nneg i16 %i.mh to i64
  %i.mj = and i16 %i.mg, %.lcssa.i.i.i.i.i77      ; 2 uses
  %i.mk = sub nsw i64 0, %i.mi
  %i.ml = getelementptr inbounds [40 x i8], ptr %.sroa.0168.2, i64 %i.mk ; 3 uses
  %i.mm = add i64 %.sroa.15.0, -1
  %i.mn = getelementptr inbounds i8, ptr %i.ml, i64 -40
  %i.mo = getelementptr inbounds i8, ptr %i.ml, i64 -20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.78.i73)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.78.i73, ptr noundef nonnull align 4 dereferenceable(20) %i.mo, i64 20, i1 false), !noalias !20868
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i72.sroa.4)
  %.sroa.05.i72.sroa.0.0.copyload = load i32, ptr %i.mn, align 4, !noalias !20868 ; 2 uses
  %.sroa.05.i72.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.ml, i64 -36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.05.i72.sroa.4, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.05.i72.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !20868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20869
  store i64 -9223372036854775760, ptr %i.j, align 8, !noalias !20870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.78.24..sroa_idx.i78, ptr noundef nonnull align 4 dereferenceable(20) %i.mo, i64 20, i1 false), !noalias !20868
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !20871
  %i.mp = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #83, !noalias !20871 ; 6 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.bl, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1027f285f9c22ffE.exit92", !prof !154

bb.bk:                                            ; preds = %bb.bl
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h676dc1c8dd07f040E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #86
          to label %.body90 unwind label %bb.bn, !noalias !20869

bb.bl:                                            ; preds = %._crit_edge20.i.i.i.i.i75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20871
  store ptr @760, ptr %i.i, align 8, !noalias !20871
  %i.ms = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.ms, align 8, !noalias !20871
  %i.mt = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.mt, align 8, !noalias !20871
  %i.mu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.mu, align 8, !noalias !20871
  %i.mv = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.mv, align 8, !noalias !20871
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @761) #82
          to label %bb.bm unwind label %bb.bk, !noalias !20871

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !20869
  unreachable

.lr.ph29.i.i.i.i.i:                               ; preds = %.lr.ph29.i.i.i.i.i.preheader, %.noexc6.i.i.i.i
  %.sroa.0175.0 = phi ptr [ %.sroa.0175.1, %.noexc6.i.i.i.i ], [ %.sroa.0175.3, %.lr.ph29.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.9176.0 = phi ptr [ %.sroa.9176.1, %.noexc6.i.i.i.i ], [ %.sroa.9176.3, %.lr.ph29.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.15178.0 = phi i16 [ %i.oe, %.noexc6.i.i.i.i ], [ %i.lz, %.lr.ph29.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.21.0.in = phi i64 [ %.sroa.21.0, %.noexc6.i.i.i.i ], [ %.sroa.15.1223, %.lr.ph29.i.i.i.i.i.preheader ]
  %.sroa.21.0 = add i64 %.sroa.21.0.in, -1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20872), !noalias !20806
  %i.mx = load i64, ptr %i.eh, align 8, !alias.scope !20873, !noalias !20855, !noundef !152 ; 2 uses
  %i.my = icmp ugt i64 %i.mx, 4                   ; 2 uses
  %i.mz = load ptr, ptr %i.v, align 8, !alias.scope !20873, !noalias !20855, !nonnull !152
  %.sink10.i.i.i.i.i.i.i = select i1 %i.my, ptr %i.mz, ptr %i.v
  %.sink9.i.i.i.i.i.i.i = select i1 %i.my, ptr %i.ei, ptr %i.eh ; 2 uses
  %.sink.i.i10.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mx, i64 4)
  %i.na = load i64, ptr %.sink9.i.i.i.i.i.i.i, align 8, !alias.scope !20874, !noalias !20855, !noundef !152 ; 2 uses
  %i.nb = icmp eq i64 %i.na, %.sink.i.i10.i.i.i.i.i
  br i1 %i.nb, label %bb.bp, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h34ac2dea70c146a6E.exit.i.i.i.i.i", !prof !154

bb.bo:                                            ; preds = %bb.bp
  %i.nc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$17hea2712b5ad995135E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.u) #86
          to label %.body.i.i.i.i unwind label %bb.br, !noalias !20875, !inline_history !20532

bb.bp:                                            ; preds = %.lr.ph29.i.i.i.i.i
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h6c356ea502c9ed4cE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.v)
          to label %bb.bq unwind label %bb.bo, !noalias !20876, !inline_history !20532

bb.bq:                                            ; preds = %bb.bp
  %i.nd = load ptr, ptr %i.v, align 8, !alias.scope !20874, !noalias !20855, !nonnull !152, !noundef !152
  %.pre.i.i.i.i.i17.i = load i64, ptr %i.ei, align 8, !alias.scope !20874, !noalias !20855
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h34ac2dea70c146a6E.exit.i.i.i.i.i"

bb.br:                                            ; preds = %bb.bo
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !20877, !inline_history !20532
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h34ac2dea70c146a6E.exit.i.i.i.i.i": ; preds = %bb.bq, %.lr.ph29.i.i.i.i.i
  %i.nf = phi i64 [ %.pre.i.i.i.i.i17.i, %bb.bq ], [ %i.na, %.lr.ph29.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i.i = phi ptr [ %i.ei, %bb.bq ], [ %.sink9.i.i.i.i.i.i.i, %.lr.ph29.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i11.i.i.i.i.i = phi ptr [ %i.nd, %bb.bq ], [ %.sink10.i.i.i.i.i.i.i, %.lr.ph29.i.i.i.i.i ]
  %i.ng = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i11.i.i.i.i.i, i64 %i.nf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ng, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !20878
  %i.nh = load i64, ptr %.sroa.01.0.i.i.i.i.i.i, align 8, !alias.scope !20874, !noalias !20855, !noundef !152
  %i.ni = add i64 %i.nh, 1
  store i64 %i.ni, ptr %.sroa.01.0.i.i.i.i.i.i, align 8, !alias.scope !20874, !noalias !20855
  call void @llvm.experimental.noalias.scope.decl(metadata !20879)
  %i.nj = icmp eq i64 %.sroa.21.0, 0
  br i1 %i.nj, label %._crit_edge30.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h34ac2dea70c146a6E.exit.i.i.i.i.i"
  %.not13.i.i.i.i.i = icmp eq i16 %.sroa.15178.0, 0
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i.i68, label %._crit_edge20.i.i.i.i.i

.lr.ph.i.i.i.i.i68:                               ; preds = %bb.bs, %.lr.ph.i.i.i.i.i68
  %i.nk = phi ptr [ %i.no, %.lr.ph.i.i.i.i.i68 ], [ %.sroa.9176.0, %bb.bs ] ; 2 uses
  %i.nl = phi ptr [ %i.nn, %.lr.ph.i.i.i.i.i68 ], [ %.sroa.0175.0, %bb.bs ]
  %.val11.i.i.i.i.i = load <16 x i8>, ptr %i.nk, align 16, !noalias !20880
  %i.nm = icmp sgt <16 x i8> %.val11.i.i.i.i.i, splat (i8 -1)
  %i.nn = getelementptr inbounds i8, ptr %i.nl, i64 -640 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.nm to i16 ; 2 uses
  %.not.i.i.i.i.i69 = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i69, label %.lr.ph.i.i.i.i.i68, label %._crit_edge20.i.i.i.i.i

._crit_edge20.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i68, %bb.bs
  %.sroa.0175.1 = phi ptr [ %.sroa.0175.0, %bb.bs ], [ %i.nn, %.lr.ph.i.i.i.i.i68 ] ; 2 uses
  %.sroa.9176.1 = phi ptr [ %.sroa.9176.0, %bb.bs ], [ %i.no, %.lr.ph.i.i.i.i.i68 ]
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.15178.0, %bb.bs ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i68 ] ; 3 uses
  %i.np = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.nq = zext nneg i16 %i.np to i64
  %i.nr = sub nsw i64 0, %i.nq
  %i.ns = getelementptr inbounds [40 x i8], ptr %.sroa.0175.1, i64 %i.nr ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -40
  %i.nu = getelementptr inbounds i8, ptr %i.ns, i64 -20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.78.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.78.i, ptr noundef nonnull align 4 dereferenceable(20) %i.nu, i64 20, i1 false), !noalias !20881
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.05.i, ptr noundef nonnull align 4 dereferenceable(20) %i.nt, i64 20, i1 false), !noalias !20881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20882
  store i64 -9223372036854775760, ptr %i.l, align 8, !noalias !20883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.78.24..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %i.nu, i64 20, i1 false), !noalias !20881
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !20884
  %i.nv = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #83, !noalias !20884 ; 6 uses
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.bu, label %.noexc6.i.i.i.i, !prof !154

bb.bt:                                            ; preds = %bb.bu
  %i.nx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h676dc1c8dd07f040E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l) #86
          to label %.body.i.i.i.i unwind label %bb.bw, !noalias !20882

bb.bu:                                            ; preds = %._crit_edge20.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20884
  store ptr @760, ptr %i.k, align 8, !noalias !20884
  %i.ny = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.ny, align 8, !noalias !20884
  %i.nz = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.nz, align 8, !noalias !20884
  %i.oa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.oa, align 8, !noalias !20884
  %i.ob = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.ob, align 8, !noalias !20884
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @761) #82
          to label %bb.bv unwind label %bb.bt, !noalias !20884

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !20882
  unreachable

.noexc6.i.i.i.i:                                  ; preds = %._crit_edge20.i.i.i.i.i
  %i.od = add i16 %.lcssa.i.i.i.i.i, -1
  %i.oe = and i16 %i.od, %.lcssa.i.i.i.i.i
  store i64 360287970189639681, ptr %i.nv, align 8, !noalias !20884
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 -1, ptr %i.of, align 8, !noalias !20884
  %i.og = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
end_hunk_0
begin_hunk_1_@_ZN16nickel_lang_core5cache10ImportData11rev_imports17h7e1bc8365c43ae0cE:bb.a
  store ptr %.sroa.0.0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.67.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN16nickel_lang_core5cache10ImportData18transitive_imports17hf7b0a9d2bc5b61a7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !57878 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !160, !noalias !57879, !noundef !152
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i", !prof !161

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !57880
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !57880
  br label %bb.c

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i": ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !57881 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !57881
  store i8 1, ptr %i.e, align 8, !noalias !57881
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit16"

bb.c:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i ], [ %i.j, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i" ]
  %i.m = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i ], [ %i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i" ] ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.d, align 8, !noalias !57880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 %i.m, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.541.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.o = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 4) #83 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e, !prof !154

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 4) #82
          to label %bb.z unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  store i32 %2, ptr %i.o, align 4
  store i64 1, ptr %i.b, align 8, !alias.scope !57882
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.o, ptr %i.q, align 8, !alias.scope !57882
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !57883, !noundef !152
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i.i = load i64, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !nonnull !152 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.h

bb.f:                                             ; preds = %.split53.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %.val12 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.ac = icmp eq i64 %.val12, 0
  br i1 %i.ac, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val13 = load ptr, ptr %i.q, align 8, !nonnull !152, !noundef !152
  %i.ad = shl nuw i64 %.val12, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #83
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit"

bb.h:                                             ; preds = %bb.e, %.split53.us.i
  %i.ae = phi ptr [ %i.o, %bb.e ], [ %.ph, %.split53.us.i ]
  %i.af = phi ptr [ %i.o, %bb.e ], [ %.ph110, %.split53.us.i ] ; 2 uses
  %i.ag = phi i64 [ 1, %bb.e ], [ %.pr.ph, %.split53.us.i ] ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1                   ; 4 uses
  store i64 %i.ah, ptr %i.r, align 8
  %i.ai = load i64, ptr %i.b, align 8, !range !153, !noundef !152
  %i.aj = icmp samesign ult i64 %i.ah, %i.ai
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp samesign ult i64 %i.ag, 2305843009213693953
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ah
  %i.am = load i32, ptr %i.al, align 4, !noundef !152 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57884)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.am, ptr %i.a, align 4, !noalias !57885
  call void @llvm.experimental.noalias.scope.decl(metadata !57886)
  br i1 %i.u, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !57887 ; 2 uses
  %i.ao = lshr i64 %i.an, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bg, %bb.l ]
  %.pn.i.i.i = phi i64 [ %i.an, %bb.i ], [ %i.bh, %bb.l ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.y  ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !57888 ; 2 uses
  %i.ar = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.bf, %bb.k ], [ %i.as, %bb.j ] ; 3 uses
  %i.at = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.01.0.i.i.i.i, %i.au
  %i.aw = and i64 %i.av, %i.y
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -56
  %.val3.i.i.i.i = load i32, ptr %i.az, align 4, !noalias !57889, !noundef !152
  %i.ba = icmp eq i32 %i.am, %.val3.i.i.i.i
  br i1 %i.ba, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17ha02a802824d8a5b7E.exit.i.i", label %bb.k, !prof !161

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.j
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17ha02a802824d8a5b7E.exit.i.i", !prof !154

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.be = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.bf = and i16 %i.be, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bh = add i64 %.sroa.01.0.i.i.i.i, %i.bg
  br label %bb.j

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17ha02a802824d8a5b7E.exit.i.i": ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i
  %i.bi = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -56
  %.sroa.0.1.i.i = select i1 %.not.i.i, ptr null, ptr %i.bj
  br label %bb.n

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit": ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp:                               ; preds = %bb.q, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bk = icmp eq i64 %.val, 0
  br i1 %i.bk, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit16", label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp
  %.val11 = load ptr, ptr %i.q, align 8, !nonnull !152, !noundef !152
  %i.bl = shl nuw i64 %.val, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 4) #83
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit16"

bb.n:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17ha02a802824d8a5b7E.exit.i.i", %bb.h
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17ha02a802824d8a5b7E.exit.i.i" ], [ null, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.split.us.preheader.i.outer

.split.us.preheader.i.outer:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit", %bb.n
  %.ph = phi ptr [ %i.gw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ %i.ae, %bb.n ] ; 2 uses
  %.pr.ph = phi i64 [ %i.gy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ %i.ah, %bb.n ] ; 5 uses
  %.ph110 = phi ptr [ %i.gw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ %i.af, %bb.n ]
  %.sroa.434.0.ph = phi ptr [ %.sroa.434.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ %.sroa.0.0.i, %bb.n ]
  %.sroa.2235.0.ph = phi i64 [ %i.cb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ undef, %bb.n ]
  %.sroa.19.0.ph = phi <16 x i1> [ %4, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ undef, %bb.n ]
  %.sroa.14.0.ph = phi ptr [ %.sroa.14.2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ undef, %bb.n ]
  %.sroa.8.0.ph = phi ptr [ %.sroa.8.2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ null, %bb.n ]
  br label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %.lr.ph.i.i.i23, %.split.us.preheader.i.outer
  %.sroa.434.0 = phi ptr [ %.sroa.434.0.ph, %.split.us.preheader.i.outer ], [ %.sroa.434.1, %.lr.ph.i.i.i23 ] ; 4 uses
  %.sroa.2235.0 = phi i64 [ %.sroa.2235.0.ph, %.split.us.preheader.i.outer ], [ %i.cb, %.lr.ph.i.i.i23 ] ; 2 uses
  %.sroa.19.0 = phi <16 x i1> [ %.sroa.19.0.ph, %.split.us.preheader.i.outer ], [ %4, %.lr.ph.i.i.i23 ]
  %.sroa.14.0 = phi ptr [ %.sroa.14.0.ph, %.split.us.preheader.i.outer ], [ %.sroa.14.2, %.lr.ph.i.i.i23 ]
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.ph, %.split.us.preheader.i.outer ], [ %.sroa.8.2, %.lr.ph.i.i.i23 ] ; 2 uses
  %.not.i.us.peel.i = icmp eq ptr %.sroa.8.0, null
  %i.bn = icmp eq i64 %.sroa.2235.0, 0
  %or.cond = select i1 %.not.i.us.peel.i, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.o, label %.split49.us.i

bb.o:                                             ; preds = %.split.us.preheader.i
  %.not.i.i.us.peel.i = icmp eq ptr %.sroa.434.0, null
  br i1 %.not.i.i.us.peel.i, label %.split53.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !57890)
  call void @llvm.experimental.noalias.scope.decl(metadata !57891)
  %i.bo = load ptr, ptr %.sroa.434.0, align 8, !alias.scope !57892, !noalias !57893, !nonnull !152, !noundef !152 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i = load <16 x i8>, ptr %i.bo, align 16, !noalias !57894
  %i.bp = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i, splat (i8 -1)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.434.0, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !57892, !noalias !57893, !noundef !152 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.split53.us.i, label %.split49.us.i

.split49.us.i:                                    ; preds = %.split.us.preheader.i, %bb.p
  %.sroa.434.1 = phi ptr [ null, %bb.p ], [ %.sroa.434.0, %.split.us.preheader.i ] ; 2 uses
  %.sroa.19.1 = phi <16 x i1> [ %i.bp, %bb.p ], [ %.sroa.19.0, %.split.us.preheader.i ]
  %.sroa.14.1 = phi ptr [ %i.bq, %bb.p ], [ %.sroa.14.0, %.split.us.preheader.i ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %i.bo, %bb.p ], [ %.sroa.8.0, %.split.us.preheader.i ] ; 2 uses
  %.us-phi51.i = phi i64 [ %i.bs, %bb.p ], [ %.sroa.2235.0, %.split.us.preheader.i ]
  %3 = bitcast <16 x i1> %.sroa.19.1 to i16       ; 2 uses
  %.not13.i.i.i.i.i.i = icmp eq i16 %3, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.split49.us.i, %.lr.ph.i.i.i.i.i.i
  %i.bu = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.14.1, %.split49.us.i ] ; 2 uses
  %i.bv = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.8.1, %.split49.us.i ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.bu, align 16, !noalias !57895
  %i.bw = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -128 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.bw to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %.split49.us.i
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %.split49.us.i ], [ %i.by, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.1, %.split49.us.i ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %3, %.split49.us.i ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.bz = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.ca = and i16 %i.bz, %.lcssa.i.i.i.i.i.i
  %4 = bitcast i16 %i.ca to <16 x i1>             ; 2 uses
  %i.cb = add i64 %.us-phi51.i, -1                ; 2 uses
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds [8 x i8], ptr %.sroa.8.2, i64 %i.ce
  %.sroa.0.0.i18 = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.cg = load i32, ptr %.sroa.0.0.i18, align 4, !noundef !152 ; 4 uses
  %.val.i = load i64, ptr %.sroa.440.0..sroa_idx, align 8, !alias.scope !57896, !noundef !152 ; 2 uses
  %.val8.i = load i64, ptr %.sroa.541.0..sroa_idx, align 8, !alias.scope !57896, !noundef !152 ; 2 uses
  %i.ch = xor i64 %.val.i, 8317987319222330741
  %i.ci = xor i64 %.val8.i, 7237128888997146477   ; 3 uses
  %i.cj = xor i64 %.val.i, 7816392313619706465
  %i.ck = zext i32 %i.cg to i64                   ; 2 uses
  %i.cl = or disjoint i64 %i.ck, 288230376151711744
  %i.cm = xor i64 %.val8.i, %i.ck
  %i.cn = xor i64 %i.cm, 8098989879002948979      ; 3 uses
  %i.co = add i64 %i.ci, %i.ch                    ; 3 uses
  %i.cp = add i64 %i.cn, %i.cj                    ; 2 uses
  %i.cq = call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 13)
  %i.cr = xor i64 %i.cq, %i.co                    ; 3 uses
  %i.cs = call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 16)
  %i.ct = xor i64 %i.cs, %i.cp                    ; 3 uses
  %i.cu = call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cv = add i64 %i.cr, %i.cp                    ; 3 uses
  %i.cw = add i64 %i.ct, %i.cu                    ; 2 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 17)
  %i.cy = xor i64 %i.cv, %i.cx                    ; 3 uses
  %i.cz = call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 21)
  %i.da = xor i64 %i.cz, %i.cw                    ; 3 uses
  %i.db = call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 32)
  %i.dc = xor i64 %i.cw, %i.cl
  %i.dd = xor i64 %i.db, 255
  %i.de = add i64 %i.dc, %i.cy                    ; 3 uses
  %i.df = add i64 %i.dd, %i.da                    ; 2 uses
  %i.dg = call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 13)
  %i.dh = xor i64 %i.de, %i.dg                    ; 3 uses
  %i.di = call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 16)
  %i.dj = xor i64 %i.df, %i.di                    ; 3 uses
  %i.dk = call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 32)
  %i.dl = add i64 %i.dh, %i.df                    ; 3 uses
  %i.dm = add i64 %i.dj, %i.dk                    ; 2 uses
  %i.dn = call i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 17)
  %i.do = xor i64 %i.dl, %i.dn                    ; 3 uses
  %i.dp = call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 21)
  %i.dq = xor i64 %i.dp, %i.dm                    ; 3 uses
  %i.dr = call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 32)
  %i.ds = add i64 %i.do, %i.dm                    ; 3 uses
  %i.dt = add i64 %i.dq, %i.dr                    ; 2 uses
  %i.du = call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 13)
  %i.dv = xor i64 %i.du, %i.ds                    ; 3 uses
  %i.dw = call i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 16)
  %i.dx = xor i64 %i.dw, %i.dt                    ; 3 uses
  %i.dy = call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 32)
  %i.dz = add i64 %i.dv, %i.dt                    ; 3 uses
  %i.ea = add i64 %i.dx, %i.dy                    ; 2 uses
  %i.eb = call i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 17)
  %i.ec = xor i64 %i.eb, %i.dz                    ; 3 uses
  %i.ed = call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 21)
  %i.ee = xor i64 %i.ed, %i.ea                    ; 3 uses
  %i.ef = call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 32)
  %i.eg = add i64 %i.ec, %i.ea
  %i.eh = add i64 %i.ee, %i.ef                    ; 2 uses
  %i.ei = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 13)
  %i.ej = xor i64 %i.ei, %i.eg                    ; 3 uses
  %i.ek = call i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 16)
  %i.el = xor i64 %i.ek, %i.eh                    ; 2 uses
  %i.em = add i64 %i.ej, %i.eh                    ; 3 uses
  %i.en = call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 17)
  %i.eo = call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 21)
  %i.ep = call i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 32)
  %i.eq = xor i64 %i.en, %i.eo
  %i.er = xor i64 %i.eq, %i.ep
  %i.es = xor i64 %i.er, %i.em                    ; 2 uses
  %i.et = load i64, ptr %i.aa, align 8, !alias.scope !57897, !noundef !152
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.q, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i", !prof !154

bb.q:                                             ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit"
  %i.ev = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h71fa3492fd681a5eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.440.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" unwind label %.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i": ; preds = %bb.q, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit"
  %.val.i.i19 = load ptr, ptr %i.c, align 8, !alias.scope !57898, !nonnull !152, !noundef !152 ; 8 uses
  %.val7.i.i = load i64, ptr %i.ab, align 8, !alias.scope !57898, !noundef !152 ; 4 uses
  %i.ew = lshr i64 %i.es, 57
  %i.ex = trunc nuw nsw i64 %i.ew to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i20 = insertelement <16 x i8> poison, i8 %i.ex, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i21 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i20, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i"
  %.pn.i.i.i22 = phi i64 [ %i.es, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" ], [ %i.fw, %bb.u ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" ], [ %.sroa.6.120.i.i.i, %bb.u ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" ], [ %.sroa.01.122.i.i.i, %bb.u ]
  %i.ey = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" ], [ %i.fv, %bb.u ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i22, %.val7.i.i ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !57899 ; 3 uses
  %i.fa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i21
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not25.i.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not25.i.i.i, label %._crit_edge.i.i.i24, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %bb.r, %bb.s
  %.sroa.05.026.i.i.i = phi i16 [ %i.fl, %bb.s ], [ %i.fb, %bb.r ] ; 3 uses
  %i.fc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = add i64 %.sroa.0.017.i.i.i, %i.fd
  %i.ff = and i64 %i.fe, %.val7.i.i
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = getelementptr inbounds [4 x i8], ptr %.val.i.i19, i64 %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -4
  %.val3.i.i.i = load i32, ptr %i.fi, align 4, !noalias !57900, !noundef !152
  %i.fj = icmp eq i32 %i.cg, %.val3.i.i.i
  br i1 %i.fj, label %.split.us.preheader.i, label %bb.s, !prof !161

._crit_edge.i.i.i24:                              ; preds = %bb.s, %bb.r
  %.not13.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not13.i.i.i, label %.thread.i.i.i, label %bb.t, !prof !154

bb.s:                                             ; preds = %.lr.ph.i.i.i23
  %i.fk = add i16 %.sroa.05.026.i.i.i, -1
  %i.fl = and i16 %i.fk, %.sroa.05.026.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i24, label %.lr.ph.i.i.i23

bb.t:                                             ; preds = %._crit_edge.i.i.i24
  %i.fm = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, zeroinitializer
  %i.fn = bitcast <16 x i1> %i.fm to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.fn, 0    ; 2 uses
  %i.fo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fn, i1 true)
  %i.fp = zext nneg i16 %i.fo to i64
  %.sroa.6.0.i.i.i.i = select i1 %.not.not.i.not.i.i.i, i64 undef, i64 %i.fp
  %i.fq = add i64 %.sroa.6.0.i.i.i.i, %.sroa.0.017.i.i.i
  %i.fr = and i64 %i.fq, %.val7.i.i
  br i1 %.not.not.i.not.i.i.i, label %bb.u, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.t, %._crit_edge.i.i.i24
  %.sroa.6.121.i.i.i = phi i64 [ %i.fr, %bb.t ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i24 ] ; 3 uses
  %i.fs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ft = bitcast <16 x i1> %i.fs to i16
  %i.fu = icmp eq i16 %i.ft, 0
  br i1 %i.fu, label %bb.u, label %bb.v, !prof !154

bb.u:                                             ; preds = %.thread.i.i.i, %bb.t
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.t ]
  %.sroa.6.120.i.i.i = phi i64 [ %.sroa.6.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.t ]
  %i.fv = add i64 %i.ey, 16                       ; 2 uses
  %i.fw = add i64 %i.fv, %.sroa.0.017.i.i.i
  br label %bb.r

bb.v:                                             ; preds = %.thread.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %.sroa.6.121.i.i.i
  %i.fy = load i8, ptr %i.fx, align 1, !noalias !57901, !noundef !152 ; 2 uses
  %i.fz = icmp sgt i8 %i.fy, -1
  br i1 %i.fz, label %bb.w, label %bb.x, !prof !154

bb.w:                                             ; preds = %bb.v
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i19, align 16, !noalias !57901
  %i.ga = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.gb = bitcast <16 x i1> %i.ga to i16          ; 2 uses
  %i.gc = icmp ne i16 %i.gb, 0
  call void @llvm.assume(i1 %i.gc)
  %i.gd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gb, i1 true)
  %i.ge = zext nneg i16 %i.gd to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %i.ge
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !57902
  br label %bb.x

.split53.us.i:                                    ; preds = %bb.o, %bb.p
  %i.gf = icmp eq i64 %.pr.ph, 0
  br i1 %i.gf, label %bb.f, label %bb.h

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gg = phi i8 [ %.pre.i, %bb.w ], [ %i.fy, %bb.v ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.ge, %bb.w ], [ %.sroa.6.121.i.i.i, %bb.v ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57902)
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %.sroa.3.0.i.ph.i.i
  %i.gi = and i8 %i.gg, 1
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.gl = and i64 %i.gk, %.val7.i.i
  store i8 %i.ex, ptr %i.gh, align 1, !noalias !57902
  %i.gm = getelementptr i8, ptr %.val.i.i19, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  store i8 %i.ex, ptr %i.gn, align 1, !noalias !57902
  %i.go = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !57903
  %i.gp = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gj, i64 0
  %i.gq = sub <2 x i64> %i.go, %i.gp
  store <2 x i64> %i.gq, ptr %i.aa, align 8, !alias.scope !57903
  %i.gr = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i.i19, i64 %i.gr
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -4
  store i32 %i.cg, ptr %i.gt, align 4, !noalias !57902
  call void @llvm.experimental.noalias.scope.decl(metadata !57904)
  %i.gu = load i64, ptr %i.b, align 8, !range !153, !alias.scope !57904, !noundef !152
  %i.gv = icmp eq i64 %.pr.ph, %i.gu
  br i1 %i.gv, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit"

bb.y:                                             ; preds = %bb.x
end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core5cache10ImportData18transitive_imports17hf7b0a9d2bc5b61a7E:bb.a
  %.val14 = load ptr, ptr %i.c, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val15 = load i64, ptr %i.gz, align 8, !noundef !152
  call fastcc void @"_ZN4core3ptr98drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..files..FileId$GT$$GT$17h180e78b6848bc7f8E"(ptr %.val14, i64 %.val15) #86
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN16nickel_lang_core5cache10ImportData22transitive_rev_imports17hb254ac8be58438e8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !57980 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !160, !noalias !57981, !noundef !152
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i", !prof !161

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !57982
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !57982
  br label %bb.c

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i": ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !57983 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !57983
  store i8 1, ptr %i.e, align 8, !noalias !57983
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit16"

bb.c:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i ], [ %i.j, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i" ]
  %i.m = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i.i ], [ %i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i" ] ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.d, align 8, !noalias !57982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 %i.m, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.541.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.o = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 4) #83 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e, !prof !154

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 4) #82
          to label %bb.z unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  store i32 %2, ptr %i.o, align 4
  store i64 1, ptr %i.b, align 8, !alias.scope !57984
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.o, ptr %i.q, align 8, !alias.scope !57984
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !57985, !noundef !152
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i = load i64, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val5.i.i = load i64, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !nonnull !152 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.h

bb.f:                                             ; preds = %.split53.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %.val12 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.ad = icmp eq i64 %.val12, 0
  br i1 %i.ad, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val13 = load ptr, ptr %i.q, align 8, !nonnull !152, !noundef !152
  %i.ae = shl nuw i64 %.val12, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 4) #83
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit"

bb.h:                                             ; preds = %bb.e, %.split53.us.i
  %i.af = phi ptr [ %i.o, %bb.e ], [ %.ph, %.split53.us.i ]
  %i.ag = phi ptr [ %i.o, %bb.e ], [ %.ph110, %.split53.us.i ] ; 2 uses
  %i.ah = phi i64 [ 1, %bb.e ], [ %.pr.ph, %.split53.us.i ] ; 2 uses
  %i.ai = add nsw i64 %i.ah, -1                   ; 4 uses
  store i64 %i.ai, ptr %i.r, align 8
  %i.aj = load i64, ptr %i.b, align 8, !range !153, !noundef !152
  %i.ak = icmp samesign ult i64 %i.ai, %i.aj
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ult i64 %i.ah, 2305843009213693953
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.an = load i32, ptr %i.am, align 4, !noundef !152 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57986)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.an, ptr %i.a, align 4, !noalias !57987
  call void @llvm.experimental.noalias.scope.decl(metadata !57988)
  br i1 %i.u, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !57989 ; 2 uses
  %i.ap = lshr i64 %i.ao, 57
  %i.aq = trunc nuw nsw i64 %i.ap to i8
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bh, %bb.l ]
  %.pn.i.i.i = phi i64 [ %i.ao, %bb.i ], [ %i.bi, %bb.l ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.z  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ar, align 1, !noalias !57990 ; 2 uses
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.bg, %bb.k ], [ %i.at, %bb.j ] ; 3 uses
  %i.au = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %.sroa.01.0.i.i.i.i, %i.av
  %i.ax = and i64 %i.aw, %i.z
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [56 x i8], ptr %i.aa, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -56
  %.val3.i.i.i.i = load i32, ptr %i.ba, align 4, !noalias !57991, !noundef !152
  %i.bb = icmp eq i32 %i.an, %.val3.i.i.i.i
  br i1 %i.bb, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h44504e493162d58fE.exit.i.i", label %bb.k, !prof !161

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.j
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = icmp eq i16 %i.bd, 0
  br i1 %i.be, label %bb.l, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h44504e493162d58fE.exit.i.i", !prof !154

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.bg = and i16 %i.bf, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bi = add i64 %.sroa.01.0.i.i.i.i, %i.bh
  br label %bb.j

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h44504e493162d58fE.exit.i.i": ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i
  %i.bj = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -56
  %.sroa.0.1.i.i = select i1 %.not.i.i, ptr null, ptr %i.bk
  br label %bb.n

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit": ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp:                               ; preds = %bb.q, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bl = icmp eq i64 %.val, 0
  br i1 %i.bl, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit16", label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp
  %.val11 = load ptr, ptr %i.q, align 8, !nonnull !152, !noundef !152
  %i.bm = shl nuw i64 %.val, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 4) #83
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit16"

bb.n:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h44504e493162d58fE.exit.i.i", %bb.h
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h44504e493162d58fE.exit.i.i" ], [ null, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.split.us.preheader.i.outer

.split.us.preheader.i.outer:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit", %bb.n
  %.ph = phi ptr [ %i.gx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ %i.af, %bb.n ] ; 2 uses
  %.pr.ph = phi i64 [ %i.gz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ %i.ai, %bb.n ] ; 5 uses
  %.ph110 = phi ptr [ %i.gx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ %i.ag, %bb.n ]
  %.sroa.434.0.ph = phi ptr [ %.sroa.434.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ %.sroa.0.0.i, %bb.n ]
  %.sroa.2235.0.ph = phi i64 [ %i.cc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ undef, %bb.n ]
  %.sroa.19.0.ph = phi <16 x i1> [ %4, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ undef, %bb.n ]
  %.sroa.14.0.ph = phi ptr [ %.sroa.14.2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ undef, %bb.n ]
  %.sroa.8.0.ph = phi ptr [ %.sroa.8.2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit" ], [ null, %bb.n ]
  br label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %.lr.ph.i.i.i23, %.split.us.preheader.i.outer
  %.sroa.434.0 = phi ptr [ %.sroa.434.0.ph, %.split.us.preheader.i.outer ], [ %.sroa.434.1, %.lr.ph.i.i.i23 ] ; 4 uses
  %.sroa.2235.0 = phi i64 [ %.sroa.2235.0.ph, %.split.us.preheader.i.outer ], [ %i.cc, %.lr.ph.i.i.i23 ] ; 2 uses
  %.sroa.19.0 = phi <16 x i1> [ %.sroa.19.0.ph, %.split.us.preheader.i.outer ], [ %4, %.lr.ph.i.i.i23 ]
  %.sroa.14.0 = phi ptr [ %.sroa.14.0.ph, %.split.us.preheader.i.outer ], [ %.sroa.14.2, %.lr.ph.i.i.i23 ]
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.ph, %.split.us.preheader.i.outer ], [ %.sroa.8.2, %.lr.ph.i.i.i23 ] ; 2 uses
  %.not.i.us.peel.i = icmp eq ptr %.sroa.8.0, null
  %i.bo = icmp eq i64 %.sroa.2235.0, 0
  %or.cond = select i1 %.not.i.us.peel.i, i1 true, i1 %i.bo
  br i1 %or.cond, label %bb.o, label %.split49.us.i

bb.o:                                             ; preds = %.split.us.preheader.i
  %.not.i.i.us.peel.i = icmp eq ptr %.sroa.434.0, null
  br i1 %.not.i.i.us.peel.i, label %.split53.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !57992)
  call void @llvm.experimental.noalias.scope.decl(metadata !57993)
  %i.bp = load ptr, ptr %.sroa.434.0, align 8, !alias.scope !57994, !noalias !57995, !nonnull !152, !noundef !152 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i = load <16 x i8>, ptr %i.bp, align 16, !noalias !57996
  %i.bq = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i, splat (i8 -1)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.434.0, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !57994, !noalias !57995, !noundef !152 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.split53.us.i, label %.split49.us.i

.split49.us.i:                                    ; preds = %.split.us.preheader.i, %bb.p
  %.sroa.434.1 = phi ptr [ null, %bb.p ], [ %.sroa.434.0, %.split.us.preheader.i ] ; 2 uses
  %.sroa.19.1 = phi <16 x i1> [ %i.bq, %bb.p ], [ %.sroa.19.0, %.split.us.preheader.i ]
  %.sroa.14.1 = phi ptr [ %i.br, %bb.p ], [ %.sroa.14.0, %.split.us.preheader.i ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %i.bp, %bb.p ], [ %.sroa.8.0, %.split.us.preheader.i ] ; 2 uses
  %.us-phi51.i = phi i64 [ %i.bt, %bb.p ], [ %.sroa.2235.0, %.split.us.preheader.i ]
  %3 = bitcast <16 x i1> %.sroa.19.1 to i16       ; 2 uses
  %.not13.i.i.i.i.i.i = icmp eq i16 %3, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.split49.us.i, %.lr.ph.i.i.i.i.i.i
  %i.bv = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.14.1, %.split49.us.i ] ; 2 uses
  %i.bw = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.8.1, %.split49.us.i ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.bv, align 16, !noalias !57997
  %i.bx = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -320 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.bx to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %.split49.us.i
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %.split49.us.i ], [ %i.bz, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.1, %.split49.us.i ], [ %i.by, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %3, %.split49.us.i ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ca = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.cb = and i16 %i.ca, %.lcssa.i.i.i.i.i.i
  %4 = bitcast i16 %i.cb to <16 x i1>             ; 2 uses
  %i.cc = add i64 %.us-phi51.i, -1                ; 2 uses
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [20 x i8], ptr %.sroa.8.2, i64 %i.cf
  %.sroa.0.0.i18 = getelementptr inbounds i8, ptr %i.cg, i64 -20
  %i.ch = load i32, ptr %.sroa.0.0.i18, align 4, !noundef !152 ; 4 uses
  %.val.i = load i64, ptr %.sroa.440.0..sroa_idx, align 8, !alias.scope !57998, !noundef !152 ; 2 uses
  %.val8.i = load i64, ptr %.sroa.541.0..sroa_idx, align 8, !alias.scope !57998, !noundef !152 ; 2 uses
  %i.ci = xor i64 %.val.i, 8317987319222330741
  %i.cj = xor i64 %.val8.i, 7237128888997146477   ; 3 uses
  %i.ck = xor i64 %.val.i, 7816392313619706465
  %i.cl = zext i32 %i.ch to i64                   ; 2 uses
  %i.cm = or disjoint i64 %i.cl, 288230376151711744
  %i.cn = xor i64 %.val8.i, %i.cl
  %i.co = xor i64 %i.cn, 8098989879002948979      ; 3 uses
  %i.cp = add i64 %i.cj, %i.ci                    ; 3 uses
  %i.cq = add i64 %i.co, %i.ck                    ; 2 uses
  %i.cr = call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 13)
  %i.cs = xor i64 %i.cr, %i.cp                    ; 3 uses
  %i.ct = call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 16)
  %i.cu = xor i64 %i.ct, %i.cq                    ; 3 uses
  %i.cv = call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 32)
  %i.cw = add i64 %i.cs, %i.cq                    ; 3 uses
  %i.cx = add i64 %i.cu, %i.cv                    ; 2 uses
  %i.cy = call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 17)
  %i.cz = xor i64 %i.cw, %i.cy                    ; 3 uses
  %i.da = call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 21)
  %i.db = xor i64 %i.da, %i.cx                    ; 3 uses
  %i.dc = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32)
  %i.dd = xor i64 %i.cx, %i.cm
  %i.de = xor i64 %i.dc, 255
  %i.df = add i64 %i.dd, %i.cz                    ; 3 uses
  %i.dg = add i64 %i.de, %i.db                    ; 2 uses
  %i.dh = call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 13)
  %i.di = xor i64 %i.df, %i.dh                    ; 3 uses
  %i.dj = call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 16)
  %i.dk = xor i64 %i.dg, %i.dj                    ; 3 uses
  %i.dl = call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 32)
  %i.dm = add i64 %i.di, %i.dg                    ; 3 uses
  %i.dn = add i64 %i.dk, %i.dl                    ; 2 uses
  %i.do = call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 17)
  %i.dp = xor i64 %i.dm, %i.do                    ; 3 uses
  %i.dq = call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 21)
  %i.dr = xor i64 %i.dq, %i.dn                    ; 3 uses
  %i.ds = call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 32)
  %i.dt = add i64 %i.dp, %i.dn                    ; 3 uses
  %i.du = add i64 %i.dr, %i.ds                    ; 2 uses
  %i.dv = call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 13)
  %i.dw = xor i64 %i.dv, %i.dt                    ; 3 uses
  %i.dx = call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 16)
  %i.dy = xor i64 %i.dx, %i.du                    ; 3 uses
  %i.dz = call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 32)
  %i.ea = add i64 %i.dw, %i.du                    ; 3 uses
  %i.eb = add i64 %i.dy, %i.dz                    ; 2 uses
  %i.ec = call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 17)
  %i.ed = xor i64 %i.ec, %i.ea                    ; 3 uses
  %i.ee = call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 21)
  %i.ef = xor i64 %i.ee, %i.eb                    ; 3 uses
  %i.eg = call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 32)
  %i.eh = add i64 %i.ed, %i.eb
  %i.ei = add i64 %i.ef, %i.eg                    ; 2 uses
  %i.ej = call i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 13)
  %i.ek = xor i64 %i.ej, %i.eh                    ; 3 uses
  %i.el = call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 16)
  %i.em = xor i64 %i.el, %i.ei                    ; 2 uses
  %i.en = add i64 %i.ek, %i.ei                    ; 3 uses
  %i.eo = call i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 17)
  %i.ep = call i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 21)
  %i.eq = call i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 32)
  %i.er = xor i64 %i.eo, %i.ep
  %i.es = xor i64 %i.er, %i.eq
  %i.et = xor i64 %i.es, %i.en                    ; 2 uses
  %i.eu = load i64, ptr %i.ab, align 8, !alias.scope !57999, !noundef !152
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.q, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i", !prof !154

bb.q:                                             ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit"
  %i.ew = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h71fa3492fd681a5eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.440.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" unwind label %.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i": ; preds = %bb.q, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E.exit"
  %.val.i.i19 = load ptr, ptr %i.c, align 8, !alias.scope !58000, !nonnull !152, !noundef !152 ; 8 uses
  %.val7.i.i = load i64, ptr %i.ac, align 8, !alias.scope !58000, !noundef !152 ; 4 uses
  %i.ex = lshr i64 %i.et, 57
  %i.ey = trunc nuw nsw i64 %i.ex to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i20 = insertelement <16 x i8> poison, i8 %i.ey, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i21 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i20, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i"
  %.pn.i.i.i22 = phi i64 [ %i.et, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" ], [ %i.fx, %bb.u ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" ], [ %.sroa.6.120.i.i.i, %bb.u ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" ], [ %.sroa.01.122.i.i.i, %bb.u ]
  %i.ez = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8025d2414f145c4aE.exit.i.i" ], [ %i.fw, %bb.u ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i22, %.val7.i.i ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.fa, align 1, !noalias !58001 ; 3 uses
  %i.fb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i21
  %i.fc = bitcast <16 x i1> %i.fb to i16          ; 2 uses
  %.not25.i.i.i = icmp eq i16 %i.fc, 0
  br i1 %.not25.i.i.i, label %._crit_edge.i.i.i24, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %bb.r, %bb.s
  %.sroa.05.026.i.i.i = phi i16 [ %i.fm, %bb.s ], [ %i.fc, %bb.r ] ; 3 uses
  %i.fd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i, i1 true)
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = add i64 %.sroa.0.017.i.i.i, %i.fe
  %i.fg = and i64 %i.ff, %.val7.i.i
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = getelementptr inbounds [4 x i8], ptr %.val.i.i19, i64 %i.fh
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4
  %.val3.i.i.i = load i32, ptr %i.fj, align 4, !noalias !58002, !noundef !152
  %i.fk = icmp eq i32 %i.ch, %.val3.i.i.i
  br i1 %i.fk, label %.split.us.preheader.i, label %bb.s, !prof !161

._crit_edge.i.i.i24:                              ; preds = %bb.s, %bb.r
  %.not13.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not13.i.i.i, label %.thread.i.i.i, label %bb.t, !prof !154

bb.s:                                             ; preds = %.lr.ph.i.i.i23
  %i.fl = add i16 %.sroa.05.026.i.i.i, -1
  %i.fm = and i16 %i.fl, %.sroa.05.026.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i24, label %.lr.ph.i.i.i23

bb.t:                                             ; preds = %._crit_edge.i.i.i24
  %i.fn = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, zeroinitializer
  %i.fo = bitcast <16 x i1> %i.fn to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.fo, 0    ; 2 uses
  %i.fp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fo, i1 true)
  %i.fq = zext nneg i16 %i.fp to i64
  %.sroa.6.0.i.i.i.i = select i1 %.not.not.i.not.i.i.i, i64 undef, i64 %i.fq
  %i.fr = add i64 %.sroa.6.0.i.i.i.i, %.sroa.0.017.i.i.i
  %i.fs = and i64 %i.fr, %.val7.i.i
  br i1 %.not.not.i.not.i.i.i, label %bb.u, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.t, %._crit_edge.i.i.i24
  %.sroa.6.121.i.i.i = phi i64 [ %i.fs, %bb.t ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i24 ] ; 3 uses
  %i.ft = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.fu = bitcast <16 x i1> %i.ft to i16
  %i.fv = icmp eq i16 %i.fu, 0
  br i1 %i.fv, label %bb.u, label %bb.v, !prof !154

bb.u:                                             ; preds = %.thread.i.i.i, %bb.t
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.t ]
  %.sroa.6.120.i.i.i = phi i64 [ %.sroa.6.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.t ]
  %i.fw = add i64 %i.ez, 16                       ; 2 uses
  %i.fx = add i64 %i.fw, %.sroa.0.017.i.i.i
  br label %bb.r

bb.v:                                             ; preds = %.thread.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %.sroa.6.121.i.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !noalias !58003, !noundef !152 ; 2 uses
  %i.ga = icmp sgt i8 %i.fz, -1
  br i1 %i.ga, label %bb.w, label %bb.x, !prof !154

bb.w:                                             ; preds = %bb.v
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i19, align 16, !noalias !58003
  %i.gb = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.gc = bitcast <16 x i1> %i.gb to i16          ; 2 uses
  %i.gd = icmp ne i16 %i.gc, 0
  call void @llvm.assume(i1 %i.gd)
  %i.ge = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gc, i1 true)
  %i.gf = zext nneg i16 %i.ge to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %i.gf
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !58004
  br label %bb.x

.split53.us.i:                                    ; preds = %bb.o, %bb.p
  %i.gg = icmp eq i64 %.pr.ph, 0
  br i1 %i.gg, label %bb.f, label %bb.h

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gh = phi i8 [ %.pre.i, %bb.w ], [ %i.fz, %bb.v ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.gf, %bb.w ], [ %.sroa.6.121.i.i.i, %bb.v ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58004)
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %.sroa.3.0.i.ph.i.i
  %i.gj = and i8 %i.gh, 1
  %i.gk = zext nneg i8 %i.gj to i64
  %i.gl = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.gm = and i64 %i.gl, %.val7.i.i
  store i8 %i.ey, ptr %i.gi, align 1, !noalias !58004
  %i.gn = getelementptr i8, ptr %.val.i.i19, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 16
  store i8 %i.ey, ptr %i.go, align 1, !noalias !58004
  %i.gp = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !58005
  %i.gq = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gk, i64 0
  %i.gr = sub <2 x i64> %i.gp, %i.gq
  store <2 x i64> %i.gr, ptr %i.ab, align 8, !alias.scope !58005
  %i.gs = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.gt = getelementptr inbounds [4 x i8], ptr %.val.i.i19, i64 %i.gs
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -4
  store i32 %i.ch, ptr %i.gu, align 4, !noalias !58004
  call void @llvm.experimental.noalias.scope.decl(metadata !58006)
  %i.gv = load i64, ptr %i.b, align 8, !range !153, !alias.scope !58006, !noundef !152
  %i.gw = icmp eq i64 %.pr.ph, %i.gv
  br i1 %i.gw, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h92cdda4ddbbc92fdE.exit"

bb.y:                                             ; preds = %bb.x
end_hunk_2
begin_hunk_3_@_ZN16nickel_lang_core5cache9TermCache9transform17h2e6ae5658a5e94c1E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60844)
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !60844, !noundef !152
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he5e53c128df805a3E.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val.i78 = load i64, ptr %i.az, align 8, !alias.scope !60844, !noundef !152
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val5.i79 = load i64, ptr %i.ba, align 8, !alias.scope !60844, !noundef !152
  %i.bb = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i78, i64 %.val5.i79, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i), !noalias !60844 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60846)
  %i.bc = lshr i64 %i.bb, 57
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !60847, !noundef !152 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !alias.scope !60847, !nonnull !152, !noundef !152 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i80 = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %.sroa.0.15.vec.insert.i.i.i81 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i80, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.9.0.i.i.i83 = phi i64 [ 0, %bb.l ], [ %i.bx, %bb.o ]
  %.pn.i.i84 = phi i64 [ %i.bb, %bb.l ], [ %i.by, %bb.o ]
  %.sroa.01.0.i.i.i85 = and i64 %.pn.i.i84, %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.01.0.i.i.i85
  %.sroa.0.0.copyload.i26.i.i86 = load <16 x i8>, ptr %i.bh, align 1, !noalias !60848 ; 2 uses
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i86, %.sroa.0.15.vec.insert.i.i.i81
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i.not32.i.i87 = icmp eq i16 %i.bj, 0
  br i1 %.not.i.not32.i.i87, label %._crit_edge.i.i92, label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %bb.m, %bb.n
  %.sroa.06.0.i33.i.i89 = phi i16 [ %i.bw, %bb.n ], [ %i.bj, %bb.m ] ; 3 uses
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i89, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add i64 %.sroa.01.0.i.i.i85, %i.bl
  %i.bn = and i64 %i.bm, %i.bf
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [32 x i8], ptr %i.bg, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -32
  %.val3.i.i.i90 = load i32, ptr %i.bq, align 4, !noalias !60849, !noundef !152
  %i.br = icmp eq i32 %5, %.val3.i.i.i90
  br i1 %i.br, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h619a3f0fde36d8c5E.exit.i", label %bb.n, !prof !161

._crit_edge.i.i92:                                ; preds = %bb.n, %bb.m
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i86, splat (i8 -1)
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h619a3f0fde36d8c5E.exit.i", !prof !154

bb.n:                                             ; preds = %.lr.ph.i.i88
  %i.bv = add i16 %.sroa.06.0.i33.i.i89, -1
  %i.bw = and i16 %i.bv, %.sroa.06.0.i33.i.i89    ; 2 uses
  %.not.i.not.i.i91 = icmp eq i16 %i.bw, 0
  br i1 %.not.i.not.i.i91, label %._crit_edge.i.i92, label %.lr.ph.i.i88

bb.o:                                             ; preds = %._crit_edge.i.i92
  %i.bx = add i64 %.sroa.9.0.i.i.i83, 16          ; 2 uses
  %i.by = add i64 %.sroa.01.0.i.i.i85, %i.bx
  br label %bb.m

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h619a3f0fde36d8c5E.exit.i": ; preds = %._crit_edge.i.i92, %.lr.ph.i.i88
  %i.bz = phi ptr [ %i.bp, %.lr.ph.i.i88 ], [ null, %._crit_edge.i.i92 ] ; 2 uses
  %.not.i93 = icmp eq ptr %i.bz, null
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -32
  %.sroa.0.1.i94 = select i1 %.not.i93, ptr null, ptr %i.ca
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he5e53c128df805a3E.exit"

bb.p:                                             ; preds = %bb.j
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1124) #82
  unreachable

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he5e53c128df805a3E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h619a3f0fde36d8c5E.exit.i", %bb.k
  %.sroa.0.0.i95 = phi ptr [ %.sroa.0.1.i94, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h619a3f0fde36d8c5E.exit.i" ], [ null, %bb.k ] ; 2 uses
  %.not70 = icmp eq ptr %.sroa.0.0.i95, null
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i95, i64 8
  %.sroa.017.0 = select i1 %.not70, ptr null, ptr %i.cb
  call void @_ZN16nickel_lang_core9transform9transform17hbca97d33d66b2027E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.017.0)
  %i.cc = load i32, ptr %i.g, align 8, !range !204, !noundef !152
  %i.cd = trunc nuw i32 %i.cc to i1
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he5e53c128df805a3E.exit"
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.045.0.copyload = load i32, ptr %i.ce, align 4
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.546.0.copyload = load ptr, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.647.0.copyload = load i64, ptr %.sroa.647.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 0, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.045.0.copyload, ptr %.sroa.452.0..sroa_idx, align 4
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.546.0.copyload, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.647.0.copyload, ptr %.sroa.654.0..sroa_idx, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h8abcdc13171c1f51E.exit123"

bb.r:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he5e53c128df805a3E.exit"
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !152, !noundef !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.cg, ptr %i.ch, align 8
  store i64 5, ptr %i.f, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 %i.av, ptr %i.ci, align 8
  call void @_ZN16nickel_lang_core5cache9TermCache6insert17hf8a879e66c400394E(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60850)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %5, ptr %i.d, align 4, !noalias !60851
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60852)
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !60853, !noundef !152
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.thread145, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val.i.i = load i64, ptr %i.cm, align 8, !alias.scope !60853, !noundef !152
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val5.i.i = load i64, ptr %i.cn, align 8, !alias.scope !60853, !noundef !152
  %i.co = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d), !noalias !60854 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60856)
  %i.cp = lshr i64 %i.co, 57
  %i.cq = trunc nuw nsw i64 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !60857, !noundef !152 ; 2 uses
  %i.ct = load ptr, ptr %4, align 8, !alias.scope !60857, !nonnull !152, !noundef !152 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.s ], [ %i.dk, %bb.v ]
  %.pn.i.i.i = phi i64 [ %i.co, %bb.s ], [ %i.dl, %bb.v ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.cu, align 1, !noalias !60858 ; 2 uses
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.cw = bitcast <16 x i1> %i.cv to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %bb.u
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.dj, %bb.u ], [ %i.cw, %bb.t ] ; 3 uses
  %i.cx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = add i64 %.sroa.01.0.i.i.i.i, %i.cy
  %i.da = and i64 %i.cz, %i.cs
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds [56 x i8], ptr %i.ct, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -56
  %.val3.i.i.i.i = load i32, ptr %i.dd, align 4, !noalias !60859, !noundef !152
  %i.de = icmp eq i32 %5, %.val3.i.i.i.i
  br i1 %i.de, label %bb.w, label %bb.u, !prof !161

._crit_edge.i.i.i:                                ; preds = %bb.u, %bb.t
  %i.df = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %bb.v, label %.thread145, !prof !154

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.di = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.dj = and i16 %i.di, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.dj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.dk = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.dl = add i64 %.sroa.01.0.i.i.i.i, %i.dk
  br label %bb.t

.thread145:                                       ; preds = %._crit_edge.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60860
  br label %._crit_edge.thread

bb.w:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60862), !noalias !60863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60864), !noalias !60863
  %i.dm = getelementptr inbounds i8, ptr %i.dc, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !60865, !noalias !60866, !noundef !152 ; 5 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %._crit_edge.thread, label %.split49.us.i.i.i

.split49.us.i.i.i:                                ; preds = %bb.w
  %i.dp = getelementptr inbounds i8, ptr %i.dc, i64 -48
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !60865, !noalias !60866, !nonnull !152, !noundef !152 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i = load <16 x i8>, ptr %i.dq, align 16, !noalias !60867
  %i.dr = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i, splat (i8 -1)
  %i.ds = bitcast <16 x i1> %i.dr to i16          ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.split49.us.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %6, %.split49.us.i.i.i ] ; 2 uses
  %i.du = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dq, %.split49.us.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dt, align 16, !noalias !60868
  %i.dv = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -128 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dv to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.split49.us.i.i.i
  %.sroa.15.1.i.i = phi ptr [ %6, %.split49.us.i.i.i ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dy = phi ptr [ %i.dq, %.split49.us.i.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.ds, %.split49.us.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dz = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = and i16 %i.dz, %.lcssa.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ed = sub nsw i64 0, %i.eb
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ed
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %i.ee, i64 -8
  %.val.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i, align 4, !noalias !60869, !noundef !152
  %.sroa.0.0.i8.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dn, i64 4) ; 4 uses
  %i.ef = shl i64 %.sroa.0.0.i8.i.i.i.i, 2        ; 3 uses
  %i.eg = icmp ugt i64 %i.dn, 4611686018427387903
  %i.eh = icmp ugt i64 %i.ef, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i = or i1 %i.eg, %i.eh
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !158

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !60870
  %i.ei = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ef, i64 noundef range(i64 1, 9) 4) #83, !noalias !60870 ; 5 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.x, label %.split.us.preheader.i45.i.i.i.i

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82, !noalias !60861
  unreachable

.split.us.preheader.i45.i.i.i.i:                  ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store i32 %.val.i.i.i.i.i, ptr %i.ei, align 4, !noalias !60861
  store i64 %.sroa.0.0.i8.i.i.i.i, ptr %i.c, align 8, !noalias !60861
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.ei, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !60861
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !60861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60872)
  %i.ek = icmp eq i64 %i.dn, 1
  br i1 %i.ek, label %.lr.ph.preheader, label %.split49.us.i21.i.i.i.i

.split49.us.i21.i.i.i.i:                          ; preds = %.split.us.preheader.i45.i.i.i.i
  %.not13.i.i.i.i.i.i24.i.i.i.i = icmp eq i16 %i.ec, 0
  br i1 %.not13.i.i.i.i.i.i24.i.i.i.i, label %.lr.ph.i.i.i.i.i.i28.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i28.i.i.i.i:                     ; preds = %.split49.us.i21.i.i.i.i, %.lr.ph.i.i.i.i.i.i28.i.i.i.i
  %i.el = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i28.i.i.i.i ], [ %.sroa.15.1.i.i, %.split49.us.i21.i.i.i.i ] ; 2 uses
  %i.em = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i28.i.i.i.i ], [ %i.dy, %.split49.us.i21.i.i.i.i ]
  %.val11.i.i.i.i.i.i30.i.i.i.i = load <16 x i8>, ptr %i.el, align 16, !noalias !60873
  %i.en = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i30.i.i.i.i, splat (i8 -1)
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -128 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i31.i.i.i.i = bitcast <16 x i1> %i.en to i16 ; 2 uses
  %.not.i.i.i.i.i.i32.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i31.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i32.i.i.i.i, label %.lr.ph.i.i.i.i.i.i28.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i28.i.i.i.i, %.split49.us.i21.i.i.i.i
  %.sroa.22.1.i.i.i.i = phi ptr [ %.sroa.15.1.i.i, %.split49.us.i21.i.i.i.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.i28.i.i.i.i ]
  %i.eq = phi ptr [ %i.dy, %.split49.us.i21.i.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.i28.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i26.i.i.i.i = phi i16 [ %i.ec, %.split49.us.i21.i.i.i.i ], [ %.cast.i.i.i.i.i.i31.i.i.i.i, %.lr.ph.i.i.i.i.i.i28.i.i.i.i ] ; 3 uses
  %i.er = add i16 %.lcssa.i.i.i.i.i.i26.i.i.i.i, -1
  %i.es = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i26.i.i.i.i, i1 true)
  %i.et = zext nneg i16 %i.es to i64
  %i.eu = and i16 %i.er, %.lcssa.i.i.i.i.i.i26.i.i.i.i
  %i.ev = sub nsw i64 0, %i.et
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ev
  %i.ex = add nsw i64 %i.dn, -2
  br label %bb.y

bb.y:                                             ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.ey = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i ], [ %i.ff, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i" ]
  %.sroa.11.5.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i ], [ %i.fp, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i" ] ; 2 uses
  %.sroa.365.2.i.i.i.i = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i.i ], [ %i.fq, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i" ] ; 3 uses
  %.sroa.30.3.i.i.i.i = phi i16 [ %i.eu, %.lr.ph.i.i.i.i.i.i ], [ %i.fw, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i" ] ; 2 uses
  %.sroa.22.4.i.i.i.i = phi ptr [ %.sroa.22.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.22.6.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i" ] ; 2 uses
  %i.ez = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.fg, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i" ] ; 3 uses
  %i.fa = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.fi, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i" ] ; 4 uses
  %.pn.pn.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i ], [ %i.fu, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i" ]
  %i.fb = getelementptr inbounds i8, ptr %.pn.pn.i.i.i.i, i64 -8
  %.val.i.i.i9.i.i.i.i = load i32, ptr %i.fb, align 4, !noalias !60874, !noundef !152
  %i.fc = icmp samesign ult i64 %i.fa, 2305843009213693952
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq i64 %i.fa, %i.ez
  br i1 %i.fd, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i.i.i", label %.split.us.preheader.i.i.i.i.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i.i.i": ; preds = %bb.y
  %i.fe = add nuw i64 %.sroa.365.2.i.i.i.i, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ez, i64 noundef %i.fe, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %bb.z, !noalias !60861

.noexc.i.i.i.i:                                   ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i.i.i"
  %.pre5.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !range !153, !alias.scope !60875, !noalias !60861
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !60875, !noalias !60861
  br label %.split.us.preheader.i.i.i.i.i

.split.us.preheader.i.i.i.i.i:                    ; preds = %bb.y, %.noexc.i.i.i.i
  %i.ff = phi ptr [ %.pre.i.i.i.i, %.noexc.i.i.i.i ], [ %i.ey, %bb.y ] ; 2 uses
  %i.fg = phi i64 [ %.pre5.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.ez, %bb.y ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fa
  store i32 %.val.i.i.i9.i.i.i.i, ptr %i.fh, align 4, !noalias !60876
  %i.fi = add nuw nsw i64 %i.fa, 1                ; 3 uses
  store i64 %i.fi, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !60875, !noalias !60861
  %i.fj = icmp eq i64 %.sroa.365.2.i.i.i.i, 0
  br i1 %i.fj, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2256b2857528f5deE.exit.i.i.i.i.loopexit", label %.split49.us.i.i.i.i.i

.split49.us.i.i.i.i.i:                            ; preds = %.split.us.preheader.i.i.i.i.i
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.30.3.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.split49.us.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fk = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.22.4.i.i.i.i, %.split49.us.i.i.i.i.i ] ; 2 uses
  %i.fl = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.5.i.i.i.i, %.split49.us.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fk, align 16, !noalias !60877
  %i.fm = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -128 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.fm to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h434d1fa4c9a29733E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i
  %.sroa.22.6.i.i.i.i = phi ptr [ %.sroa.22.4.i.i.i.i, %.split49.us.i.i.i.i.i ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.fp = phi ptr [ %.sroa.11.5.i.i.i.i, %.split49.us.i.i.i.i.i ], [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.30.3.i.i.i.i, %.split49.us.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fq = add nsw i64 %.sroa.365.2.i.i.i.i, -1
  %i.fr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.fs = zext nneg i16 %i.fr to i64
  %i.ft = sub nsw i64 0, %i.fs
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.ft
  %i.fv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.fw = and i16 %i.fv, %.lcssa.i.i.i.i.i.i.i.i.i.i
  br label %bb.y

bb.z:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he3e1a33231501438E.exit.i.i.i.i.i.i"
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i99 = load i64, ptr %i.c, align 8, !noalias !60861 ; 2 uses
  %i.fy = icmp eq i64 %.val.i.i.i.i99, 0
  br i1 %i.fy, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !60861, !nonnull !152, !noundef !152
  br label %common.resume.sink.split

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2256b2857528f5deE.exit.i.i.i.i.loopexit": ; preds = %.split.us.preheader.i.i.i.i.i
  %.sroa.0.0.copyload.pre = load i64, ptr %i.c, align 8, !noalias !60878
  %.sroa.3.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !60878
  br label %.lr.ph.preheader

common.resume.sink.split:                         ; preds = %bb.ab, %bb.aa
  %.sroa.0.0139.sink = phi i64 [ %.val.i.i.i.i99, %bb.aa ], [ %.sroa.0.0139, %bb.ab ]
  %.sroa.3.0.sink = phi ptr [ %.val7.i.i.i.i, %bb.aa ], [ %.sroa.3.0, %bb.ab ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fx, %bb.aa ], [ %i.gc, %bb.ab ]
  %i.fz = shl nuw i64 %.sroa.0.0139.sink, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.sink, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) 4) #83, !noalias !152
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ab, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.z ], [ %i.gc, %bb.ab ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

._crit_edge.thread:                               ; preds = %bb.w, %.thread145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !60861
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h8abcdc13171c1f51E.exit106"

.lr.ph.preheader:                                 ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2256b2857528f5deE.exit.i.i.i.i.loopexit", %.split.us.preheader.i45.i.i.i.i
  %.sroa.5.0 = phi i64 [ %i.fi, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2256b2857528f5deE.exit.i.i.i.i.loopexit" ], [ 1, %.split.us.preheader.i45.i.i.i.i ] ; 2 uses
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload.pre, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2256b2857528f5deE.exit.i.i.i.i.loopexit" ], [ %i.ei, %.split.us.preheader.i45.i.i.i.i ] ; 6 uses
  %.sroa.0.0139 = phi i64 [ %.sroa.0.0.copyload.pre, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2256b2857528f5deE.exit.i.i.i.i.loopexit" ], [ %.sroa.0.0.i8.i.i.i.i, %.split.us.preheader.i45.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !60861
  %i.ga = icmp samesign ult i64 %.sroa.5.0, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ga)
  %.idx = shl nuw nsw i64 %.sroa.5.0, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 %.idx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  br label %.lr.ph

bb.ab:                                            ; preds = %.lr.ph
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = icmp eq i64 %.sroa.0.0139, 0
  br i1 %i.gd, label %common.resume, label %common.resume.sink.split

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %.sroa.7134.0176 = phi ptr [ %i.ge, %bb.ak ], [ %.sroa.3.0, %.lr.ph.preheader ] ; 2 uses
end_hunk_3
begin_hunk_4_@"_ZN52_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h24c1d241b85d187eE":bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !152, !align !156, !noundef !152
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E"(i32 noundef range(i32 0, 1114112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !107908 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 18 uses
  %i.e = icmp samesign ult i32 %0, 128
  br i1 %i.e, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.f = icmp samesign ult i32 %0, 2048
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 4 uses
  %i.j = lshr i32 %0, 6
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128                ; 2 uses
  %i.n = lshr i32 %0, 12
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  %i.r = lshr i32 %0, 18
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = or disjoint i8 %i.s, -16
  br i1 %i.f, label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 65536
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = or disjoint i8 %i.o, -32
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.i, ptr %i.w, align 1, !alias.scope !107909
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.d, %bb.e
  %i.x = phi i8 [ %i.v, %bb.d ], [ %i.t, %bb.e ]  ; 6 uses
  %.sink17 = phi i8 [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  %.sink = phi i8 [ %i.i, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 11 uses
  store i8 %i.x, ptr %i.d, align 4, !alias.scope !107909
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sink17, ptr %i.y, align 1, !alias.scope !107909
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %.sink, ptr %i.z, align 2, !alias.scope !107909
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107911)
  %i.aa = icmp ult i64 %.sroa.0.05.i, %2
  br i1 %i.aa, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i", label %bb.f

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.thread: ; preds = %bb.b
  %i.ab = or disjoint i8 %i.k, -64                ; 2 uses
  store i8 %i.ab, ptr %i.d, align 4, !alias.scope !107909
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.i, ptr %i.ac, align 1, !alias.scope !107909
  %i.ad = icmp ugt i64 %2, 2
  br i1 %i.ad, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.thread, %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit
  %.sroa.0.05.i6 = phi i64 [ 2, %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.thread ], [ %.sroa.0.05.i, %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit ]
  %.not.i = icmp eq i64 %.sroa.0.05.i6, %2
  br i1 %.not.i, label %bb.r, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i": ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107913)
  %i.ae = add nsw i64 %.sroa.0.05.i, -1
  %i.af = add nsw i64 %.sroa.0.05.i, -1           ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !107914, !noalias !107915, !noundef !152 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ah, %i.x
  br i1 %.not.i.not.i.i.i, label %.preheader110.split.i.i, label %bb.g

.preheader110.split.i.i:                          ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i"
  %.not.i25.i = icmp eq i64 %i.af, 0
  br i1 %.not.i25.i, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.1"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.1": ; preds = %.preheader110.split.i.i
  %i.ai = add nsw i64 %.sroa.0.05.i, -2           ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !107914, !noalias !107915, !noundef !152 ; 2 uses
  %.not.i.not.i.i.i.1 = icmp eq i8 %i.ak, %i.x
  br i1 %.not.i.not.i.i.i.1, label %.preheader110.split.i.i.1, label %bb.g

.preheader110.split.i.i.1:                        ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.1"
  %.not.i25.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i25.i.1, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.2"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.2": ; preds = %.preheader110.split.i.i.1
  %i.al = add nsw i64 %.sroa.0.05.i, -3           ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !107914, !noalias !107915, !noundef !152 ; 2 uses
  %.not.i.not.i.i.i.2 = icmp eq i8 %i.an, %i.x
  br i1 %.not.i.not.i.i.i.2, label %.preheader110.split.i.i.2, label %bb.g

.preheader110.split.i.i.2:                        ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.2"
  %.not.i25.i.2 = icmp eq i64 %i.al, 0
  br i1 %.not.i25.i.2, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.3"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.3": ; preds = %.preheader110.split.i.i.2
  %i.ao = add nsw i64 %.sroa.0.05.i, -4           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !107914, !noalias !107915, !noundef !152 ; 2 uses
  %.not.i.not.i.i.i.3 = icmp eq i8 %i.aq, %i.x
  br i1 %.not.i.not.i.i.i.3, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i, label %bb.g

bb.g:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.3", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.2", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.1", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i"
  %.lcssa47 = phi i64 [ %i.af, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i" ], [ %i.ai, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.1" ], [ %i.al, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.2" ], [ %i.ao, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.3" ]
  %.lcssa45 = phi i8 [ %i.ah, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i" ], [ %i.ak, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.1" ], [ %i.an, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.2" ], [ %i.aq, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.3" ]
  %i.ar = add nuw nsw i64 %.sroa.0.05.i, 15
  %i.as = icmp ult i64 %2, %i.ar
  br i1 %i.as, label %.lr.ph.split.us.i.i.i, label %bb.h

.thread.i.i:                                      ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.thread
  %i.at = insertelement <1 x i8> poison, i8 %i.i, i64 0
  %i.au = icmp ult i64 %2, 17
  br i1 %i.au, label %.lr.ph.split.us.i.i.i, label %.thread106.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = insertelement <1 x i8> poison, i8 %.lcssa45, i64 0
  br label %.thread106.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.g
  %.sroa.0.05.i58 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 4 uses
  %bcmp.i.i.us23.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %1, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i58), !alias.scope !107916, !noalias !107917
  %i.aw = icmp eq i32 %bcmp.i.i.us23.i.i.i, 0
  br i1 %i.aw, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit", label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i.preheader": ; preds = %.lr.ph.split.us.i.i.i
  %i.ax = add i64 %2, -1                          ; 2 uses
  %.not28.i.i.i40 = icmp ugt i64 %.sroa.0.05.i58, %i.ax
  br i1 %.not28.i.i.i40, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit", label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i"
  %i.ay = phi i64 [ %i.bb, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i" ], [ %i.ax, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i.preheader" ]
  %.pn.i.i41 = phi ptr [ %i.az, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i" ], [ %1, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i.preheader" ]
  %i.az = getelementptr inbounds nuw i8, ptr %.pn.i.i41, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i58), !alias.scope !107916, !noalias !107917
  %i.ba = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.ba, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit", label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i": ; preds = %.split.us.i.i.i
  %i.bb = add i64 %i.ay, -1                       ; 2 uses
  %.not28.i.i.i = icmp ugt i64 %.sroa.0.05.i58, %i.bb
  br i1 %.not28.i.i.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit", label %.split.us.i.i.i

.thread106.i.i:                                   ; preds = %.thread.i.i, %bb.h
  %.sink36 = phi i8 [ %i.x, %bb.h ], [ %i.ab, %.thread.i.i ]
  %i.bc = phi i64 [ %i.ae, %bb.h ], [ 1, %.thread.i.i ] ; 2 uses
  %.sroa.0.05.i510 = phi i64 [ %.sroa.0.05.i, %bb.h ], [ 2, %.thread.i.i ] ; 2 uses
  %i.bd = phi <1 x i8> [ %i.av, %bb.h ], [ %i.at, %.thread.i.i ]
  %storemerge105108.i.i = phi i64 [ %.lcssa47, %bb.h ], [ 1, %.thread.i.i ] ; 6 uses
  %i.be = insertelement <1 x i8> poison, i8 %.sink36, i64 0
  %i.bf = shufflevector <1 x i8> %i.be, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bg = shufflevector <1 x i8> %i.bd, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107916
  store ptr %1, ptr %i.a, align 8, !noalias !107916
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.bi, align 8, !noalias !107916
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !107916
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bc, ptr %i.bk, align 8, !noalias !107916
  %i.bl = add nuw nsw i64 %.sroa.0.05.i510, 63    ; 2 uses
  %.not124.i.i = icmp ult i64 %i.bl, %2
  br i1 %.not124.i.i, label %.lr.ph.i28.i, label %.preheader.i26.i

.preheader.i26.i:                                 ; preds = %bb.l, %.thread106.i.i
  %.sroa.015.0.lcssa.i.i = phi i8 [ 0, %.thread106.i.i ], [ %.sroa.015.2.3.i.i, %bb.l ] ; 2 uses
  %.sroa.07.0.lcssa.i.i = phi i64 [ 0, %.thread106.i.i ], [ %i.da, %bb.l ] ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.0.05.i510, 15    ; 2 uses
  %i.bn = add i64 %.sroa.07.0.lcssa.i.i, %i.bm
  %i.bo = icmp uge i64 %i.bn, %2
  %i.bp = trunc nuw i8 %.sroa.015.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3119.i.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond3119.i.i, label %._crit_edge.i.i, label %.lr.ph121.i.i

.lr.ph.i28.i:                                     ; preds = %.thread106.i.i, %bb.l
  %.sroa.07.0117.i.i = phi i64 [ %i.da, %bb.l ], [ 0, %.thread106.i.i ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.07.0117.i.i ; 5 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !107918, !noalias !107919
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %storemerge105108.i.i
  %.val.i.i.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !107918, !noalias !107919
  %i.bs = icmp eq <16 x i8> %.val3.i.i.i, %i.bf
  %i.bt = icmp eq <16 x i8> %.val.i.i.i, %i.bg
  %narrow.i.i.i = select <16 x i1> %i.bs, <16 x i1> %i.bt, <16 x i1> zeroinitializer
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.val3.i.1.i.i = load <16 x i8>, ptr %i.bu, align 1, !alias.scope !107918, !noalias !107919
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %storemerge105108.i.i
  %.val.i.1.i.i = load <16 x i8>, ptr %i.bv, align 1, !alias.scope !107918, !noalias !107919
  %i.bw = icmp eq <16 x i8> %.val3.i.1.i.i, %i.bf
  %i.bx = icmp eq <16 x i8> %.val.i.1.i.i, %i.bg
  %narrow.i.1.i.i = select <16 x i1> %i.bw, <16 x i1> %i.bx, <16 x i1> zeroinitializer
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %.val3.i.2.i.i = load <16 x i8>, ptr %i.by, align 1, !alias.scope !107918, !noalias !107919
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %storemerge105108.i.i
  %.val.i.2.i.i = load <16 x i8>, ptr %i.bz, align 1, !alias.scope !107918, !noalias !107919
  %i.ca = icmp eq <16 x i8> %.val3.i.2.i.i, %i.bf
  %i.cb = icmp eq <16 x i8> %.val.i.2.i.i, %i.bg
  %narrow.i.2.i.i = select <16 x i1> %i.ca, <16 x i1> %i.cb, <16 x i1> zeroinitializer
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %.val3.i.3.i.i = load <16 x i8>, ptr %i.cc, align 1, !alias.scope !107918, !noalias !107919
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %storemerge105108.i.i
  %.val.i.3.i.i = load <16 x i8>, ptr %i.cd, align 1, !alias.scope !107918, !noalias !107919
  %i.ce = icmp eq <16 x i8> %.val3.i.3.i.i, %i.bf
  %i.cf = icmp eq <16 x i8> %.val.i.3.i.i, %i.bg
  %narrow.i.3.i.i = select <16 x i1> %i.ce, <16 x i1> %i.cf, <16 x i1> zeroinitializer
  %i.cg = bitcast <16 x i1> %narrow.i.i.i to i16  ; 2 uses
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %.preheader109.1.i.i, label %bb.m

.preheader109.1.i.i:                              ; preds = %bb.m, %.lr.ph.i28.i
  %.sroa.015.2.i.i = phi i8 [ 0, %.lr.ph.i28.i ], [ %i.df, %bb.m ] ; 3 uses
  %3 = bitcast <16 x i1> %narrow.i.1.i.i to i16   ; 2 uses
  %i.ci = icmp eq i16 %3, 0
  br i1 %i.ci, label %.preheader109.2.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader109.1.i.i
  %i.cj = or disjoint i64 %.sroa.07.0117.i.i, 16
  %i.ck = trunc nuw i8 %.sroa.015.2.i.i to i1
  %i.cl = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h62cfaca4d3fd88fbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cj, i16 noundef %3, i1 noundef zeroext %i.ck)
  %i.cm = zext i1 %i.cl to i8
  %i.cn = or i8 %.sroa.015.2.i.i, %i.cm
  br label %.preheader109.2.i.i

.preheader109.2.i.i:                              ; preds = %bb.i, %.preheader109.1.i.i
  %.sroa.015.2.1.i.i = phi i8 [ %.sroa.015.2.i.i, %.preheader109.1.i.i ], [ %i.cn, %bb.i ] ; 3 uses
  %4 = bitcast <16 x i1> %narrow.i.2.i.i to i16   ; 2 uses
  %i.co = icmp eq i16 %4, 0
  br i1 %i.co, label %.preheader109.3.i.i, label %bb.j

bb.j:                                             ; preds = %.preheader109.2.i.i
  %i.cp = or disjoint i64 %.sroa.07.0117.i.i, 32
  %i.cq = trunc nuw i8 %.sroa.015.2.1.i.i to i1
  %i.cr = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h62cfaca4d3fd88fbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cp, i16 noundef %4, i1 noundef zeroext %i.cq)
  %i.cs = zext i1 %i.cr to i8
  %i.ct = or i8 %.sroa.015.2.1.i.i, %i.cs
  br label %.preheader109.3.i.i

.preheader109.3.i.i:                              ; preds = %bb.j, %.preheader109.2.i.i
  %.sroa.015.2.2.i.i = phi i8 [ %.sroa.015.2.1.i.i, %.preheader109.2.i.i ], [ %i.ct, %bb.j ] ; 3 uses
  %5 = bitcast <16 x i1> %narrow.i.3.i.i to i16   ; 2 uses
  %i.cu = icmp eq i16 %5, 0
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader109.3.i.i
  %i.cv = or disjoint i64 %.sroa.07.0117.i.i, 48
  %i.cw = trunc nuw i8 %.sroa.015.2.2.i.i to i1
  %i.cx = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h62cfaca4d3fd88fbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cv, i16 noundef %5, i1 noundef zeroext %i.cw)
  %i.cy = zext i1 %i.cx to i8
  %i.cz = or i8 %.sroa.015.2.2.i.i, %i.cy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader109.3.i.i
  %.sroa.015.2.3.i.i = phi i8 [ %.sroa.015.2.2.i.i, %.preheader109.3.i.i ], [ %i.cz, %bb.k ] ; 2 uses
  %i.da = add i64 %.sroa.07.0117.i.i, 64          ; 3 uses
  %i.db = add i64 %i.da, %i.bl
  %i.dc = icmp uge i64 %i.db, %2
  %i.dd = trunc nuw i8 %.sroa.015.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %.preheader.i26.i, label %.lr.ph.i28.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %i.de = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h62cfaca4d3fd88fbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0117.i.i, i16 noundef %i.cg, i1 noundef zeroext false)
  %i.df = zext i1 %i.de to i8
  br label %.preheader109.1.i.i

._crit_edge.i.i:                                  ; preds = %bb.n, %.preheader.i26.i
  %.sroa.015.3.lcssa.i.i = phi i8 [ %.sroa.015.0.lcssa.i.i, %.preheader.i26.i ], [ %.sroa.015.4.i.i, %bb.n ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.bp, %.preheader.i26.i ], [ %i.dx, %bb.n ]
  %i.dg = sub nuw i64 %2, %i.bc
  %i.dh = add i64 %i.dg, -16                      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh ; 2 uses
  %.val3.i65.i.i = load <16 x i8>, ptr %i.di, align 1, !alias.scope !107918, !noalias !107920
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %storemerge105108.i.i
  %.val.i66.i.i = load <16 x i8>, ptr %i.dj, align 1, !alias.scope !107918, !noalias !107920
  %i.dk = icmp eq <16 x i8> %.val3.i65.i.i, %i.bf
  %i.dl = icmp eq <16 x i8> %.val.i66.i.i, %i.bg
  %narrow.i67.i.i = select <16 x i1> %i.dk, <16 x i1> %i.dl, <16 x i1> zeroinitializer
  %i.dm = bitcast <16 x i1> %narrow.i67.i.i to i16 ; 2 uses
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %bb.p, label %bb.q

.lr.ph121.i.i:                                    ; preds = %.preheader.i26.i, %bb.n
  %.sroa.07.1120.i.i = phi i64 [ %i.du, %bb.n ], [ %.sroa.07.0.lcssa.i.i, %.preheader.i26.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.07.1120.i.i ; 2 uses
  %.val3.i68.i.i = load <16 x i8>, ptr %i.do, align 1, !alias.scope !107918, !noalias !107921
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %storemerge105108.i.i
  %.val.i69.i.i = load <16 x i8>, ptr %i.dp, align 1, !alias.scope !107918, !noalias !107921
  %i.dq = icmp eq <16 x i8> %.val3.i68.i.i, %i.bf
  %i.dr = icmp eq <16 x i8> %.val.i69.i.i, %i.bg
  %narrow.i70.i.i = select <16 x i1> %i.dq, <16 x i1> %i.dr, <16 x i1> zeroinitializer
  %i.ds = bitcast <16 x i1> %narrow.i70.i.i to i16 ; 2 uses
  %i.dt = icmp eq i16 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %.lr.ph121.i.i
  %.sroa.015.4.i.i = phi i8 [ 0, %.lr.ph121.i.i ], [ %i.dz, %bb.o ] ; 2 uses
  %i.du = add i64 %.sroa.07.1120.i.i, 16          ; 2 uses
  %i.dv = add i64 %i.du, %i.bm
  %i.dw = icmp uge i64 %i.dv, %2
  %i.dx = trunc nuw i8 %.sroa.015.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.dw, %i.dx
  br i1 %or.cond3.i.i, label %._crit_edge.i.i, label %.lr.ph121.i.i

bb.o:                                             ; preds = %.lr.ph121.i.i
  %i.dy = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h62cfaca4d3fd88fbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.1120.i.i, i16 noundef %i.ds, i1 noundef zeroext false)
  %i.dz = zext i1 %i.dy to i8
  br label %bb.n

bb.p:                                             ; preds = %bb.q, %._crit_edge.i.i
  %.sroa.015.5.i.i = phi i8 [ %.sroa.015.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.ec, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107916
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit"

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.ea = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h62cfaca4d3fd88fbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dh, i16 noundef %i.dm, i1 noundef zeroext %.lcssa.i.i)
  %i.eb = zext i1 %i.ea to i8
  %i.ec = or i8 %.sroa.015.3.lcssa.i.i, %i.eb
  br label %bb.p

_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i: ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h0c1275090124be99E.exit.i.i.i.3", %.preheader110.split.i.i.2, %.preheader110.split.i.i.1, %.preheader110.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !107922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !107922
  call void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef range(i64 1, 5) %.sroa.0.05.i)
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.ed = load i64, ptr %i.c, align 8, !range !171, !noalias !107922, !noundef !152
  %i.ee = trunc nuw nsw i64 %i.ed to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !107922
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit"

bb.r:                                             ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 1, 5) %2), !alias.scope !107922
  %i.ef = icmp eq i32 %bcmp.i, 0
  %i.eg = zext i1 %i.ef to i8
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i", %.split.us.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i.preheader", %bb.f, %.lr.ph.split.us.i.i.i, %bb.p, %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i, %bb.r
  %.sroa.011.0.i = phi i8 [ 0, %bb.f ], [ %.sroa.015.5.i.i, %bb.p ], [ %i.ee, %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i ], [ %i.eg, %bb.r ], [ 1, %.lr.ph.split.us.i.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i.preheader" ], [ 1, %.split.us.i.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hcb63da95bb779ef1E.exit.backedge.us.i.i.i" ]
  %i.eh = trunc nuw i8 %.sroa.011.0.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit

bb.s:                                             ; preds = %bb.a
  %i.ei = trunc nuw nsw i32 %0 to i8              ; 2 uses
  %i.ej = icmp ult i64 %2, 16
  br i1 %i.ej, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %bb.s
  %.not.i3 = icmp eq i64 %2, 0
  br i1 %.not.i3, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit, label %.lr.ph.i

bb.t:                                             ; preds = %bb.s
  %i.ek = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %i.ei, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.el = extractvalue { i64, i64 } %i.ek, 0
  %i.em = icmp eq i64 %i.el, 1
  br label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.eq, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !107923, !noundef !152
  %i.ep = icmp eq i8 %i.eo, %i.ei                 ; 2 uses
  %i.eq = add nuw nsw i64 %.sroa.01.05.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eq, %2
  %or.cond = select i1 %i.ep, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit, label %.lr.ph.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit: ; preds = %.lr.ph.i, %bb.t, %.preheader.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit"
  %.sroa.0.0.in = phi i1 [ %i.eh, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E.exit" ], [ %i.em, %bb.t ], [ false, %.preheader.i ], [ %i.ep, %.lr.ph.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN52_$LT$std..path..Path$u20$as$u20$core..hash..Hash$GT$4hash17hb2b726530b5e4763E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2) unnamed_addr #50 !guid !107926 {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.split
  %.sroa.06.0.lcssa = phi i64 [ 0, %.split ], [ %.sroa.06.2, %bb.b ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %.split ], [ %.sroa.0.1, %bb.b ] ; 3 uses
  %i.b = icmp ult i64 %.sroa.0.0.lcssa, %1
  br i1 %i.b, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit", label %bb.a

.lr.ph:                                           ; preds = %.split, %bb.b
  %.sroa.0.026 = phi i64 [ %.sroa.0.1, %bb.b ], [ 0, %.split ] ; 4 uses
  %.sroa.06.025 = phi i64 [ %.sroa.06.2, %bb.b ], [ 0, %.split ] ; 3 uses
  %.sroa.011.024 = phi i64 [ %i.c, %bb.b ], [ 0, %.split ] ; 4 uses
  %i.c = add nuw i64 %.sroa.011.024, 1            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.011.024
  %i.e = load i8, ptr %i.d, align 1, !noundef !152
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %bb.b

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit": ; preds = %._crit_edge
  %i.g = sub nuw i64 %1, %.sroa.0.0.lcssa         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.lcssa
  %i.i = add i64 %i.g, %.sroa.06.0.lcssa          ; 2 uses
  %i.j = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 62)
  tail call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.g)
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit"
  %.sroa.06.1 = phi i64 [ %i.j, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit" ], [ %.sroa.06.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107927
  store i64 %.sroa.06.1, ptr %i.a, align 8, !noalias !107927
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107927
  ret void

bb.b:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.06.2 = phi i64 [ %.sroa.06.3, %bb.g ], [ %.sroa.06.025, %.lr.ph ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.t, %bb.g ], [ %.sroa.0.026, %.lr.ph ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = icmp ugt i64 %.sroa.011.024, %.sroa.0.026
  br i1 %i.k, label %bb.d, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit21"

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit21": ; preds = %bb.c, %bb.d
  %.sroa.06.3 = phi i64 [ %i.q, %bb.d ], [ %.sroa.06.025, %bb.c ]
  %i.l = sub nuw i64 %1, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  switch i64 %i.l, label %bb.h [
    i64 1, label %bb.e
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw i64 %.sroa.011.024, %.sroa.0.026 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.026
  %i.p = add i64 %i.n, %.sroa.06.025              ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 62)
  tail call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h30a840ad61c7bdc8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.n)
  br label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit21"

bb.e:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit21"
  %i.r = load i8, ptr %i.m, align 1, !noundef !152
  %i.s = icmp eq i8 %i.r, 46
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit21", %bb.h, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.e, %bb.f
  %.sroa.015.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.i ]
  %i.t = add i64 %.sroa.015.0, %i.c
  br label %bb.b

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h92a8e8fbedbb39a9E.exit21"
  %i.u = load i8, ptr %i.m, align 1, !noundef !152
  %i.v = icmp eq i8 %i.u, 46
  br i1 %i.v, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.x = load i8, ptr %i.w, align 1, !noundef !152
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %bb.g, label %bb.f
}
end_hunk_4
