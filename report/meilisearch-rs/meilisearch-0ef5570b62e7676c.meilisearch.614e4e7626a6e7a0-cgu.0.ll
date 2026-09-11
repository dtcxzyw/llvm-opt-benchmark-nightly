Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hdb4f672457e046a6E":bb.a
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i" unwind label %bb.aa, !noalias !39733, !inline_history !39650

bb.aa:                                            ; preds = %bb.z
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h00ef09d73cf7b48fE"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #44
          to label %common.resume81 unwind label %bb.ab, !noalias !39734, !inline_history !39650

bb.ab:                                            ; preds = %bb.aa
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !39734, !inline_history !39650
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i": ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !39726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39732
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.eo = load <2 x i64>, ptr %i.en, align 8, !alias.scope !39735, !noalias !39736
  store <2 x i64> %i.eo, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !39723, !noalias !39726
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit": ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ea)
          to label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit" unwind label %bb.ac, !noalias !39721, !inline_history !39651

bb.ac:                                            ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !39737
  br label %common.resume81

"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit": ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %i.eq = add nuw nsw i64 %.sroa.0.0.i3.i38, 1    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !39737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !39722
  %exitcond.not = icmp eq i64 %i.eq, %i.dq
  br i1 %exitcond.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i", label %.lr.ph

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i": ; preds = %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit", %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread"
  %.idx30 = sub nuw nsw i64 %i.cm, %i.dq          ; 3 uses
  %i.er = load i64, ptr %0, align 8, !range !46, !alias.scope !39738, !noalias !39707, !noundef !45
  %i.es = sub nsw i64 %i.er, %i.dq
  %i.et = icmp ugt i64 %.idx30, %i.es
  br i1 %i.et, label %bb.ad, label %bb.ae, !prof !47

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hef594eaabfc18d82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.dq, i64 noundef %.idx30, i64 noundef 8, i64 noundef 104), !noalias !39707, !inline_history !39656
  %.pre = load ptr, ptr %i.ds, align 8, !alias.scope !39739, !noalias !39707
  br label %bb.ae

.body:                                            ; preds = %.body79, %bb.ar, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ez, %bb.af ], [ %eh.lpad-body, %bb.ar ], [ %eh.lpad-body, %.body79 ]
  store i64 %.sroa.617.0, ptr %i.cv, align 8, !noalias !39740
  br label %common.resume81

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i", %bb.ad
  %i.eu = phi ptr [ %i.dp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i" ], [ %.pre, %bb.ad ]
  %i.ev = icmp eq i64 %i.dq, %i.cm
  br i1 %i.ev, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8305f58903ae0ae8E.exit", label %.preheader

.preheader:                                       ; preds = %bb.ae
  %i.ew = load i64, ptr %i.cv, align 8, !alias.scope !39739, !noalias !39707, !noundef !45
  %.sroa.021.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i.i71 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i72 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %.preheader, %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i
  %.sroa.617.0 = phi i64 [ %i.fv, %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i ], [ %i.ew, %.preheader ] ; 3 uses
  %.sroa.06.0.i = phi i64 [ %i.fw, %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i ], [ 0, %.preheader ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [104 x i8], ptr %i.dr, i64 %.sroa.06.0.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39741), !noalias !39742
  call void @llvm.experimental.noalias.scope.decl(metadata !39743), !noalias !39742
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !39744, !noalias !39745, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39746
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1476)
          to label %.noexc.i3 unwind label %bb.af, !noalias !39740, !inline_history !39671

.noexc.i3:                                        ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39746
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39747)
  call void @llvm.experimental.noalias.scope.decl(metadata !39748)
  %i.fe = load i64, ptr %i.fd, align 8, !range !91, !alias.scope !39748, !noalias !39749, !noundef !45 ; 2 uses
  %i.ff = xor i64 %i.fe, -9223372036854775808
  %i.fg = icmp slt i64 %i.fe, 0
  %i.fh = select i1 %i.fg, i64 %i.ff, i64 5
  switch i64 %i.fh, label %bb.ah [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 4, label %bb.am
    i64 5, label %bb.an
  ]

bb.ah:                                            ; preds = %.noexc.i3
  unreachable

bb.ai:                                            ; preds = %.noexc.i3
  store i64 -9223372036854775808, ptr %i.c, align 8, !alias.scope !39747, !noalias !39750
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.aj:                                            ; preds = %.noexc.i3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fd, i64 72, i1 false), !alias.scope !39751, !noalias !39745
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.ak:                                            ; preds = %.noexc.i3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fd, i64 72, i1 false), !alias.scope !39751, !noalias !39745
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.al:                                            ; preds = %.noexc.i3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402)
          to label %.noexc unwind label %bb.aq, !inline_history !39675

.noexc:                                           ; preds = %bb.al
  store i64 -9223372036854775805, ptr %i.c, align 8, !alias.scope !39747, !noalias !39750
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.am:                                            ; preds = %.noexc.i3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !39752, !noalias !39753, !nonnull !45, !noundef !45
  %i.fm = load i64, ptr %i.fj, align 8, !alias.scope !39752, !noalias !39753, !noundef !45
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd8d25ff8c983adfeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fl, i64 noundef %i.fm)
          to label %.noexc78 unwind label %bb.aq, !inline_history !39675

.noexc78:                                         ; preds = %bb.am
  store i64 -9223372036854775804, ptr %i.c, align 8, !alias.scope !39747, !noalias !39750
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.an:                                            ; preds = %.noexc.i3
  call void @llvm.experimental.noalias.scope.decl(metadata !39754), !noalias !39745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !39755
  store i64 0, ptr %i.a, align 8, !noalias !39755
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i71, align 8, !noalias !39755
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i72, align 8, !noalias !39755
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hdb4f672457e046a6E"(ptr noalias noundef align 8 dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fd)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i73" unwind label %bb.ao, !noalias !39756, !inline_history !39687

bb.ao:                                            ; preds = %bb.an
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h00ef09d73cf7b48fE"(ptr noalias noundef align 8 dereferenceable(56) %i.a) #44
          to label %.body79 unwind label %bb.ap, !noalias !39757, !inline_history !39687

bb.ap:                                            ; preds = %bb.ao
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !39757, !inline_history !39687
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i73": ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !39750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39755
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 80
  %i.fq = load <2 x i64>, ptr %i.fp, align 8, !alias.scope !39758, !noalias !39759
  store <2 x i64> %i.fq, ptr %.sroa.42.0..sroa_idx.i76, align 8, !alias.scope !39747, !noalias !39750
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.aq:                                            ; preds = %bb.am, %bb.al
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.body79:                                          ; preds = %bb.ao, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.fr, %bb.aq ], [ %i.fn, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39760), !noalias !39742
  %.val.i.i4 = load i64, ptr %i.d, align 8, !alias.scope !39760, !noalias !39745
  %i.fs = icmp eq i64 %.val.i.i4, 0
  br i1 %i.fs, label %.body, label %bb.ar

bb.ar:                                            ; preds = %.body79
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i = load ptr, ptr %i.ft, align 8, !alias.scope !39760, !noalias !39745, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !39761, !inline_history !39690
  br label %.body

_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i: ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i73", %.noexc78, %.noexc, %bb.ak, %bb.aj, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.021.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !39746
  %i.fu = getelementptr inbounds nuw [104 x i8], ptr %i.eu, i64 %.sroa.617.0 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fu, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.021, i64 96, i1 false)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  store i64 %i.fc, ptr %.sroa.424.0..sroa_idx, align 8, !noalias !39762
  %i.fv = add i64 %.sroa.617.0, 1                 ; 2 uses
  %i.fw = add nuw i64 %.sroa.06.0.i, 1            ; 2 uses
  %i.fx = icmp eq i64 %i.fw, %.idx30
  br i1 %i.fx, label %bb.as, label %bb.ag

bb.as:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i
  store i64 %i.fv, ptr %i.cv, align 8, !noalias !39740
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8305f58903ae0ae8E.exit"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8305f58903ae0ae8E.exit": ; preds = %bb.ae, %bb.as
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17had9b95de9bfbeb29E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.l, align 8, !noundef !45
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.m, align 8, !noundef !45
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val.i.i.i)
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %.sroa.0.0.i.i.i.i.i) ; 5 uses
  %.not34 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not34, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !45 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hdf3202915cd9bf4bE.exit", label %bb.c

.loopexit:                                        ; preds = %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit", %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit", %bb.k, %bb.m, %bb.a
  ret void

"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hdf3202915cd9bf4bE.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17h13930f2435a1d8f1E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %.sroa.0.0.i.i.i)
  call void @_ZN5bytes5bytes5Bytes12try_into_mut17h6ffaca193e478725E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.q = load i64, ptr %i.h, align 8, !range !59, !noundef !45
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !45
  %i.u = sub i64 %i.o, %i.t
  %.not = icmp ugt i64 %.sroa.0.0.i.i.i, %i.u
  br i1 %.not, label %bb.m, label %.lr.ph

bb.d:                                             ; preds = %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hdf3202915cd9bf4bE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noundef !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !45 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39785)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !39785, !noalias !39786, !noundef !45 ; 2 uses
  %i.ac = load i64, ptr %i.n, align 8, !alias.scope !39785, !noalias !39786, !noundef !45
  %i.ad = sub i64 %i.ac, %i.ab
  %.not.i17 = icmp ugt i64 %i.z, %i.ad
  br i1 %.not.i17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.j     ; 0 uses

.noexc:                                           ; preds = %bb.e
  %.pre.i = load i64, ptr %i.aa, align 8, !alias.scope !39785, !noalias !39786
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %.pre.i, %.noexc ]
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !39785, !noalias !39786, !nonnull !45, !noundef !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.x, i64 %i.z, i1 false)
  %i.ai = load i64, ptr %i.n, align 8, !alias.scope !39785, !noalias !39786, !noundef !45
  %i.aj = load i64, ptr %i.aa, align 8, !alias.scope !39785, !noalias !39786, !noundef !45 ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp ugt i64 %i.z, %i.ak
  br i1 %i.al, label %bb.g, label %bb.k, !prof !47

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !39787
  store i64 %i.z, ptr %i.f, align 8, !noalias !39787
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !noalias !39787
  invoke void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) #43
          to label %.noexc18 unwind label %bb.j

.noexc18:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hdf3202915cd9bf4bE.exit"
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit"

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit": ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  br label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !39788)
  call void @llvm.experimental.noalias.scope.decl(metadata !39789)
  %i.aq = load ptr, ptr %i.g, align 8, !alias.scope !39790, !nonnull !45, !align !48, !noundef !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !39790, !nonnull !45, !noundef !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.au = load ptr, ptr %i.w, align 8, !alias.scope !39790, !noundef !45
  %i.av = load i64, ptr %i.y, align 8, !alias.scope !39790, !noundef !45
  invoke void %i.as(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.au, i64 noundef %i.av)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit" unwind label %bb.l, !inline_history !76

bb.k:                                             ; preds = %bb.f
  %i.aw = add i64 %i.aj, %i.z
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !39785, !noalias !39786
  call void @llvm.experimental.noalias.scope.decl(metadata !39791)
  call void @llvm.experimental.noalias.scope.decl(metadata !39792)
  %i.ax = load ptr, ptr %i.g, align 8, !alias.scope !39793, !nonnull !45, !align !48, !noundef !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !39793, !nonnull !45, !noundef !45
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bb = load ptr, ptr %i.w, align 8, !alias.scope !39793, !noundef !45
  %i.bc = load i64, ptr %i.y, align 8, !alias.scope !39793, !noundef !45
  call void %i.az(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bb, i64 noundef %i.bc), !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.be = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0.i.i.i, i1 noundef zeroext true) ; 0 uses
  %.val.i.i.i2146.pre = load i64, ptr %i.l, align 8
  %.val1.i.i.i2247.pre = load i64, ptr %i.m, align 8
  %.pre69 = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i2247.pre, i64 %.val.i.i.i2146.pre)
  %.pre70 = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %.pre69) ; 2 uses
  %.not3550 = icmp eq i64 %.pre70, 0
  br i1 %.not3550, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %.sroa.0.0.i.i.i2449.pre-phi79 = phi i64 [ %.pre70, %bb.m ], [ %.sroa.0.0.i.i.i, %bb.c ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i.i.i.i.pre = load ptr, ptr %i.bf, align 8
  %.pre = load i64, ptr %i.s, align 8, !alias.scope !39794, !noalias !39795
  %.pre68 = load i64, ptr %i.n, align 8, !alias.scope !39794, !noalias !39795
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit"
  %i.bg = phi i64 [ %.pre68, %.lr.ph ], [ %i.bo, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ]
  %i.bh = phi i64 [ %.pre, %.lr.ph ], [ %i.bt, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ] ; 2 uses
  %.val.i.i.i.i = phi ptr [ %.val.i.i.i.i.pre, %.lr.ph ], [ %i.cd, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ]
  %.sroa.0.0.i.i.i2451 = phi i64 [ %.sroa.0.0.i.i.i2449.pre-phi79, %.lr.ph ], [ %.sroa.0.0.i.i.i24, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ] ; 13 uses
  %i.bi = phi i64 [ %2, %.lr.ph ], [ %i.cf, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39794)
  %i.bj = sub i64 %i.bg, %i.bh
  %.not.i27 = icmp ugt i64 %.sroa.0.0.i.i.i2451, %i.bj
  br i1 %.not.i27, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0.i.i.i2451, i1 noundef zeroext true), !noalias !39795 ; 0 uses
  %.pre.i28 = load i64, ptr %i.s, align 8, !alias.scope !39794, !noalias !39795
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = phi i64 [ %i.bh, %bb.n ], [ %.pre.i28, %bb.o ]
  %i.bm = load ptr, ptr %0, align 8, !alias.scope !39794, !noalias !39795, !nonnull !45, !noundef !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i2451, i1 false)
  %i.bo = load i64, ptr %i.n, align 8, !alias.scope !39794, !noalias !39795, !noundef !45 ; 2 uses
  %i.bp = load i64, ptr %i.s, align 8, !alias.scope !39794, !noalias !39795, !noundef !45 ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp ugt i64 %.sroa.0.0.i.i.i2451, %i.bq
  br i1 %i.br, label %bb.q, label %bb.r, !prof !47
end_hunk_0
