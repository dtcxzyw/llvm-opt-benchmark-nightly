Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN16nickel_lang_core9serialize100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$11deserialize17h82c8a91c039f26feE":bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %i.du, align 8, !noalias !27387
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !27387
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !27387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !27321
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.aq:                                            ; preds = %.thread155, %.thread152, %.split.thread, %bb.dc
  %.sroa.37.0.i = phi ptr [ %i.jn, %bb.dc ], [ %i.jc, %.thread155 ], [ %.sroa.37.1.i92.ph, %.split.thread ], [ %.sroa.3.0.i, %.thread152 ]
  %i.dv = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %.sroa.37.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.ar:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !27321
  store i64 24, ptr %i.ag, align 8, !noalias !27321
  %i.dw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag), !inline_history !27139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !27321
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.as:                                            ; preds = %bb.ad
  %i.dx = add nuw i64 %i.ar, 1
  store i64 %i.dx, ptr %i.al, align 8, !alias.scope !27388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %0, ptr %i.s, align 8, !noalias !27389
  %i.dy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %i.dy, align 8, !noalias !27389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !27389
  store i64 0, ptr %i.r, align 8, !noalias !27389
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dz, align 8, !noalias !27389
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store i64 0, ptr %i.ea, align 8, !noalias !27389
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.at

bb.at:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd7105a5ca1cd5bc3E.exit.i", %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !27390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27390
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h5cee0495fcb73e65E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc44 unwind label %.body.i.thread82, !inline_history !27240

.noexc44:                                         ; preds = %bb.at
  %i.ec = load i8, ptr %i.c, align 8, !range !49, !noalias !27390, !noundef !43
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i.thread, label %bb.au

_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i.thread: ; preds = %.noexc44
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !27390, !nonnull !43, !align !44, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27390
  br label %.loopexit

bb.au:                                            ; preds = %.noexc44
  %i.eg = load i8, ptr %i.eb, align 1, !range !49, !noalias !27390, !noundef !43
  %i.eh = trunc nuw i8 %i.eg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27390
  br i1 %i.eh, label %bb.av, label %.loopexit161

bb.av:                                            ; preds = %bb.au
  %i.ei = load ptr, ptr %i.s, align 8, !alias.scope !27390, !nonnull !43, !align !44, !noundef !43
  %i.ej = invoke fastcc { i64, ptr } @"_ZN16nickel_lang_core9serialize100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$11deserialize17h82c8a91c039f26feE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
          to label %_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i unwind label %.body.i.thread82, !inline_history !27240 ; 2 uses

_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i: ; preds = %bb.av
  %i.ek = extractvalue { i64, ptr } %i.ej, 0
  %i.el = extractvalue { i64, ptr } %i.ej, 1      ; 4 uses
  %i.em = trunc nuw i64 %i.ek to i1
  br i1 %i.em, label %.loopexit, label %bb.az

.body.i.thread82:                                 ; preds = %bb.av, %bb.at
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread

.loopexit:                                        ; preds = %_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i, %_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i.thread
  %.sroa.5.0.i73 = phi ptr [ %i.ef, %_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i.thread ], [ %i.el, %_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i73) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !27391)
  %.val.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !27391, !noalias !27389, !nonnull !43, !noundef !43 ; 3 uses
  %.val1.i.i = load i64, ptr %i.ea, align 8, !alias.scope !27391, !noalias !27389, !noundef !43
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17h8ce52229eb398900E"(ptr noalias noundef nonnull readonly align 8 %.val.i.i, i64 noundef %.val1.i.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc57f2657fb847eb6E.exit.i.i" unwind label %bb.aw, !noalias !27391, !inline_history !27243

bb.aw:                                            ; preds = %.loopexit
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i = load i64, ptr %i.r, align 8, !alias.scope !27391, !noalias !27389 ; 2 uses
  %i.eo = icmp eq i64 %.val4.i.i, 0
  br i1 %i.eo, label %common.resume282, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ep = shl nuw i64 %.val4.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !27391, !inline_history !27243
  br label %common.resume282

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc57f2657fb847eb6E.exit.i.i": ; preds = %.loopexit
  %.val2.i.i = load i64, ptr %i.r, align 8, !alias.scope !27391, !noalias !27389 ; 2 uses
  %i.eq = icmp eq i64 %.val2.i.i, 0
  br i1 %i.eq, label %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h63eb22189a73dad1E.exit", label %bb.ay

bb.ay:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc57f2657fb847eb6E.exit.i.i"
  %i.er = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !27391, !inline_history !27243
  br label %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h63eb22189a73dad1E.exit"

bb.az:                                            ; preds = %_ZN10serde_core2de9SeqAccess12next_element17h7142dc129baf0c55E.exit.i
  %.not.i13 = icmp eq ptr %i.el, null
  br i1 %.not.i13, label %.loopexit161, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !27392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !27389
  store ptr %i.el, ptr %i.n, align 8, !noalias !27393
  %i.es = load i64, ptr %i.ea, align 8, !alias.scope !27392, !noalias !27389, !noundef !43 ; 3 uses
  %i.et = load i64, ptr %i.r, align 8, !range !45, !alias.scope !27392, !noalias !27389, !noundef !43
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %bb.bb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd7105a5ca1cd5bc3E.exit.i"

bb.bb:                                            ; preds = %bb.ba
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd99878f8a2078874E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @893)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd7105a5ca1cd5bc3E.exit.i" unwind label %bb.bc, !inline_history !27243

bb.bc:                                            ; preds = %bb.bb
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #75
          to label %.body.i.thread unwind label %bb.bd, !inline_history !27243

bb.bd:                                            ; preds = %bb.bc
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !inline_history !27243
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd7105a5ca1cd5bc3E.exit.i": ; preds = %bb.bb, %bb.ba
  %i.ex = load ptr, ptr %i.dz, align 8, !alias.scope !27392, !noalias !27389, !nonnull !43, !noundef !43
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.es
  store ptr %i.el, ptr %i.ey, align 8
  %i.ez = add i64 %i.es, 1
  store i64 %i.ez, ptr %i.ea, align 8, !alias.scope !27392, !noalias !27389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !27389
  br label %bb.at

.loopexit161:                                     ; preds = %bb.az, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !27389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !27389
  %.sroa.055.0.copyload = load i64, ptr %i.r, align 8, !noalias !27389
  %.sroa.4.0.copyload = load ptr, ptr %i.dz, align 8, !noalias !27389, !nonnull !43, !noundef !43 ; 3 uses
  %.sroa.556.0.copyload = load i64, ptr %i.ea, align 8, !noalias !27389 ; 2 uses
  %i.fa = icmp ult i64 %.sroa.556.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.556.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %i.p, align 8, !alias.scope !27394, !noalias !27389
  %i.fc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.055.0.copyload, ptr %i.fc, align 8, !alias.scope !27394, !noalias !27389
  %i.fd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.fd, align 8, !alias.scope !27394, !noalias !27389
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.fb, ptr %i.fe, align 8, !alias.scope !27394, !noalias !27389
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h18d8bba2b5935472E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.p), !inline_history !27243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !27389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !27389
  store i64 0, ptr %i.o, align 8, !noalias !27389
  %i.ff = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ff, align 8, !noalias !27389
  %i.fg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.fg, align 8, !noalias !27389
  %i.fh = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue5array17h650af8dba8a4cfcfE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, i32 noundef -1), !inline_history !27243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !27389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !27389
  br label %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h63eb22189a73dad1E.exit"

.body.i.thread:                                   ; preds = %bb.bc, %.body.i.thread82
  %eh.lpad-body.i81 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.i.thread82 ], [ %i.ev, %bb.bc ]
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h057f03c841a62efcE"(ptr noalias noundef align 8 dereferenceable(24) %i.r) #75
          to label %common.resume282 unwind label %bb.be, !inline_history !27243

bb.be:                                            ; preds = %.body.i.thread
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !inline_history !27243
  unreachable

"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h63eb22189a73dad1E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc57f2657fb847eb6E.exit.i.i", %bb.ay, %.loopexit161
  %.sroa.3.0.i14 = phi ptr [ %i.fh, %.loopexit161 ], [ %.sroa.5.0.i73, %bb.ay ], [ %.sroa.5.0.i73, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc57f2657fb847eb6E.exit.i.i" ] ; 5 uses
  %.sroa.0.0.i15 = phi i64 [ 0, %.loopexit161 ], [ 1, %bb.ay ], [ 1, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc57f2657fb847eb6E.exit.i.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !27389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.fj = load i8, ptr %i.ct, align 8, !alias.scope !27321, !noundef !43
  %i.fk = add i8 %i.fj, 1
  store i8 %i.fk, ptr %i.ct, align 8, !alias.scope !27321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !27321
  %i.fl = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17h73f1fb0c1ec28647E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.bg unwind label %bb.bf, !inline_history !27139 ; 9 uses

bb.bf:                                            ; preds = %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h63eb22189a73dad1E.exit"
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr118drop_in_place$LT$core..result..Result$LT$nickel_lang_core..eval..value..NickelValue$C$serde_json..error..Error$GT$$GT$17h07664b79f57574bbE"(i64 %.sroa.0.0.i15, ptr %.sroa.3.0.i14) #75
          to label %common.resume282 unwind label %bb.bk, !inline_history !27139

bb.bg:                                            ; preds = %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h63eb22189a73dad1E.exit"
  store i64 %.sroa.0.0.i15, ptr %i.af, align 8, !noalias !27321
  %i.fn = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %.sroa.3.0.i14, ptr %i.fn, align 8, !noalias !27321
  %i.fo = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.fl, ptr %i.fo, align 8, !noalias !27321
  %i.fp = trunc nuw i64 %.sroa.0.0.i15 to i1
  %.not158 = icmp eq ptr %i.fl, null              ; 2 uses
  br i1 %i.fp, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not158, label %.split, label %bb.bj, !prof !131

bb.bi:                                            ; preds = %bb.bg
  br i1 %.not158, label %.split.thread, label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  call void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fn), !inline_history !27139
  br label %.split.thread

bb.bk:                                            ; preds = %bb.cu, %bb.bf
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !inline_history !27139
  unreachable

.split.thread:                                    ; preds = %bb.bi, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit10", %bb.bj
  %.sroa.37.1.i92.ph = phi ptr [ %i.fl, %bb.bj ], [ %.sroa.3.0.i14, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit10" ], [ %.sroa.3.0.i14, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !27321
  br label %bb.aq

.split:                                           ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !27321
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !27395)
  call void @llvm.experimental.noalias.scope.decl(metadata !27396)
  %i.fr = load i64, ptr %i.fl, align 8, !range !91, !alias.scope !27397, !noalias !27398, !noundef !43
  switch i64 %i.fr, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit10" [
    i64 0, label %bb.bm
    i64 1, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %.val1.i.i.i.i7 = load i64, ptr %i.fs, align 8, !alias.scope !27397, !noalias !27398, !noundef !43 ; 2 uses
  %i.ft = icmp eq i64 %.val1.i.i.i.i7, 0
  br i1 %i.ft, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit10", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i8"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i8": ; preds = %bb.bm
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.val.i.i.i.i9 = load ptr, ptr %i.fu, align 8, !alias.scope !27397, !noalias !27398, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i9, i64 noundef %.val1.i.i.i.i7, i64 noundef 1) #67, !noalias !27399
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit10"

bb.bn:                                            ; preds = %bb.bl
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fv)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit10" unwind label %bb.bo, !noalias !27398

bb.bo:                                            ; preds = %bb.bn
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef 40, i64 noundef 8) #67, !noalias !27398
  br label %common.resume282

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit10": ; preds = %bb.bl, %bb.bm, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i8", %bb.bn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef 40, i64 noundef 8) #67, !noalias !27398
  br label %.split.thread

.thread152:                                       ; preds = %bb.cx, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !27321
  br label %bb.aq

bb.bp:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !27321
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.bq:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !27321
  store i64 24, ptr %i.ae, align 8, !noalias !27321
  %i.fx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae), !inline_history !27139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !27321
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.br:                                            ; preds = %bb.ae
  %i.fy = add nuw i64 %i.ar, 1
  store i64 %i.fy, ptr %i.al, align 8, !alias.scope !27400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %0, ptr %i.ab, align 8, !noalias !27401
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.fz, align 8, !noalias !27401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !27401
  %i.ga = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 8, !range !49, !noalias !27402, !noundef !43
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i", !prof !50

._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i: ; preds = %bb.br
  %.pre.i.i.i = load i64, ptr %i.ga, align 8, !noalias !27403
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !27403
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i": ; preds = %bb.br
  %i.ge = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !27404, !inline_history !27268 ; 2 uses
  %i.gf = extractvalue { i64, i64 } %i.ge, 0
  %i.gg = extractvalue { i64, i64 } %i.ge, 1      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i64 %i.gg, ptr %i.gh, align 8, !noalias !27405
  store i8 1, ptr %i.gb, align 8, !noalias !27405
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i
  %.pre-phi223 = phi i64 [ %i.gg, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i" ], [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i ]
  %.pre-phi = phi i64 [ %i.gf, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i" ], [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i ] ; 2 uses
  %i.gi = add i64 %.pre-phi, 1
  store i64 %i.gi, ptr %i.ga, align 8, !noalias !27403
  store i64 0, ptr %i.aa, align 8, !alias.scope !27406, !noalias !27401
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !27406, !noalias !27401
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !27406, !noalias !27401
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false), !noalias !27401
  %i.gj = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 %.pre-phi, ptr %i.gj, align 8, !alias.scope !27406, !noalias !27401
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 %.pre-phi223, ptr %i.gk, align 8, !alias.scope !27406, !noalias !27401
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.bs

bb.bs:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h421fd84538203e33E.exit.i", %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !27407)
  call void @llvm.experimental.noalias.scope.decl(metadata !27408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27409
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h9ba395a38cbe98aeE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %.noexc unwind label %.thread137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !27277

.noexc:                                           ; preds = %bb.bs
  %i.gm = load i8, ptr %i.g, align 8, !range !49, !noalias !27409, !noundef !43
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.noexc
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !27409, !nonnull !43, !align !44, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27409
  br label %bb.ch

bb.bu:                                            ; preds = %.noexc
  %i.gq = load i8, ptr %i.gl, align 1, !range !49, !noalias !27409, !noundef !43
  %i.gr = trunc nuw i8 %i.gq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27409
  br i1 %i.gr, label %bb.bv, label %_ZN10serde_core2de9MapAccess10next_entry17hed5279b70e3572a3E.exit.i.thread127

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27409
  %i.gs = load ptr, ptr %i.ab, align 8, !alias.scope !27410, !nonnull !43, !align !44, !noundef !43 ; 7 uses
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17h7c76c1c4dae80894E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.gs)
          to label %.noexc42 unwind label %.thread137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !27277

.noexc42:                                         ; preds = %bb.bv
  %i.gt = load i64, ptr %i.f, align 8, !range !66, !noalias !27409, !noundef !43 ; 6 uses
  %i.gu = icmp eq i64 %i.gt, -9223372036854775808
  %i.gv = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !27411 ; 4 uses
  br i1 %i.gu, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27409
  br label %bb.ch

bb.bx:                                            ; preds = %.noexc42
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !27411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27409
  call void @llvm.experimental.noalias.scope.decl(metadata !27412)
  call void @llvm.experimental.noalias.scope.decl(metadata !27413)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 40 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !27414, !noalias !27415, !noundef !43 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.gw, align 8, !alias.scope !27416, !noalias !27415 ; 2 uses
  %i.gz = icmp ult i64 %.promoted.i.i.i, %i.gy
  br i1 %i.gz, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bx
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !27414, !noalias !27415, !nonnull !43, !align !48, !noundef !43
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.lr.ph.i.i.i
  %i.hc = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.hf, %bb.bz ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3std2io19default_read_to_end17haea65dfac994e92cE:bb.a

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i64, ptr %0, align 8
  %.pre85 = load i64, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %i.ai = phi i64 [ %.pr, %thread-pre-split ], [ %i.ad, %bb.f ] ; 7 uses
  %i.aj = phi i64 [ %.pre85, %thread-pre-split ], [ %i.ae, %bb.f ] ; 8 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.aj, %i.ai
  br i1 %i.al, label %bb.k, label %..peel.begin_crit_edge

..peel.begin_crit_edge:                           ; preds = %bb.g
  %.pre86 = load ptr, ptr %i.q, align 8
  br label %.peel.begin

bb.h:                                             ; preds = %bb.f
  %i.am = tail call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h638217c32018f26fE(ptr %.0.val, ptr %.8.val, ptr noalias noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq ptr %i.ao, null
  br i1 %i.aq, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %i.c, align 8, !noundef !43 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = sub nsw i64 %i.ar, %i.d
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread"

bb.k:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44528)
  %i.au = add nuw i64 %i.ai, 32
  %i.av = shl nuw i64 %i.ai, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %i.av) ; 5 uses
  %i.aw = icmp slt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.aw, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !55

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44529
  %i.ax = icmp eq i64 %i.ai, 0
  br i1 %i.ax, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.val29.i.i = load ptr, ptr %i.q, align 8, !alias.scope !44529, !nonnull !43, !noundef !43
  store ptr %.val29.i.i, ptr %i.a, align 8, !alias.scope !44530, !noalias !44529
  store i64 %i.ai, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !44530, !noalias !44529
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sink.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  store i64 %.sink.i.i.i, ptr %i.r, align 8, !alias.scope !44530, !noalias !44529
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h9c21a51d395c93ccE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !44529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44529
  %i.ay = load i64, ptr %i.b, align 8, !range !60, !noalias !44529, !noundef !43
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.m, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit"

bb.m:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44529
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i"
  %i.ba = load ptr, ptr %i.s, align 8, !noalias !44529, !nonnull !43, !noundef !43 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44529
  store ptr %i.ba, ptr %i.q, align 8, !alias.scope !44529
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !44529
  %.pre.i = sub nuw nsw i64 %.sroa.0.0.i.i.i, %i.ai
  %i.bb = icmp samesign ugt i64 %.pre.i, 31
  tail call void @llvm.assume(i1 %i.bb)
  br label %.peel.begin

.peel.begin:                                      ; preds = %..peel.begin_crit_edge, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit"
  %i.bc = phi i64 [ %i.ai, %..peel.begin_crit_edge ], [ %.sroa.0.0.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit" ] ; 3 uses
  %i.bd = phi ptr [ %.pre86, %..peel.begin_crit_edge ], [ %i.ba, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit" ]
  %i.be = sub nsw i64 %i.bc, %i.aj                ; 2 uses
  %.sroa.0.0.i84 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.010.4.ph, i64 %i.be) ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.aj ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bg = sub nuw i64 %.sroa.0.0.i84, %.sroa.018.4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sroa.018.4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bh, i8 0, i64 %i.bg, i1 false), !noalias !44531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44533)
  %i.bi = load i64, ptr %i.t, align 8, !alias.scope !44532, !noalias !44534, !noundef !43 ; 5 uses
  %i.bj = load i64, ptr %i.u, align 8, !alias.scope !44532, !noalias !44534, !noundef !43 ; 4 uses
  %i.bk = icmp ne i64 %i.bi, %i.bj
  %i.bl = load i64, ptr %i.v, align 8, !alias.scope !44532, !noalias !44534 ; 6 uses
  %.not.i.peel = icmp ult i64 %.sroa.0.0.i84, %i.bl
  %or.cond.i.peel = select i1 %i.bk, i1 true, i1 %.not.i.peel
  br i1 %or.cond.i.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.peel.begin
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !alias.scope !44532, !noalias !44534
  %i.bm = tail call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef align 8 dereferenceable(56) %i.w, ptr noalias noundef nonnull align 1 %i.bf, i64 noundef %.sroa.0.0.i84), !noalias !44534
  br label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit.peel"

bb.o:                                             ; preds = %.peel.begin
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44535), !noalias !44534
  %.not.i.i.peel = icmp ult i64 %i.bi, %i.bj
  %.pre.i.i.peel = load ptr, ptr %.0.val, align 8, !alias.scope !44536, !noalias !44534 ; 6 uses
  br i1 %.not.i.i.peel, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load i64, ptr %i.x, align 8, !alias.scope !44536, !noalias !44534, !noundef !43 ; 2 uses
  %i.bo = sub nuw i64 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i.i.peel, i64 %i.bn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bp, i8 0, i64 %i.bo, i1 false), !noalias !44537
  %i.bq = tail call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.w, ptr noalias noundef nonnull align 1 %.pre.i.i.peel, i64 noundef %i.bl), !noalias !44538 ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bq, 0
  %i.bs = extractvalue { i64, ptr } %i.bq, 1      ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64               ; 5 uses
  %i.bu = trunc nuw i64 %i.br to i1
  br i1 %i.bu, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.peel = icmp ult i64 %i.bl, %i.bt
  br i1 %.not.i.i.i.i.i.peel, label %.loopexit, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i.peel", !prof !46

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i.peel": ; preds = %bb.q
  store i64 0, ptr %i.t, align 8, !alias.scope !44536, !noalias !44534
  store i64 %i.bt, ptr %i.u, align 8, !alias.scope !44536, !noalias !44534
  store i64 %i.bl, ptr %i.x, align 8, !alias.scope !44536, !noalias !44534
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i.peel

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel": ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !alias.scope !44536, !noalias !44534
  store i64 %i.bl, ptr %i.x, align 8, !alias.scope !44536, !noalias !44534
  %.not4.i.i.peel = icmp eq ptr %i.bs, null
  br i1 %.not4.i.i.peel, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i.peel, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i.peel

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel: ; preds = %bb.o
  %i.bv = sub nuw i64 %i.bj, %i.bi                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre.i.i.peel, i64 %i.bi
  %i.bx = icmp eq ptr %.pre.i.i.peel, null
  br i1 %i.bx, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i.peel, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i.peel

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i.peel: ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i.peel"
  %i.by = phi ptr [ %i.bw, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel ], [ %.pre.i.i.peel, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i.peel" ], [ %.pre.i.i.peel, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel" ] ; 2 uses
  %i.bz = phi i64 [ %i.bv, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel ], [ %i.bt, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i.peel" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel" ]
  %i.ca = phi i64 [ %i.bi, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i.peel" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel" ]
  %i.cb = phi i64 [ %i.bj, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel ], [ %i.bt, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i.peel" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44539), !noalias !44534
  %.sroa.0.0.i.i.i87.peel = tail call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %.sroa.0.0.i84) ; 4 uses
  %i.cc = icmp eq i64 %.sroa.0.0.i.i.i87.peel, 1
  br i1 %i.cc, label %bb.r, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i.peel"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i.peel": ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i.peel
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.by, i64 %.sroa.0.0.i.i.i87.peel, i1 false), !alias.scope !44540, !noalias !44541
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.peel"

bb.r:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i.peel
  %i.cd = load i8, ptr %i.by, align 1, !noalias !44542, !noundef !43
  store i8 %i.cd, ptr %i.bf, align 1, !alias.scope !44543, !noalias !44534
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.peel"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.peel": ; preds = %bb.r, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i.peel"
  %i.ce = inttoptr i64 %.sroa.0.0.i.i.i87.peel to ptr
  %i.cf = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ce, 1
  %i.cg = add i64 %i.ca, %.sroa.0.0.i.i.i87.peel
  %.sroa.0.0.i.i88.peel = tail call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cg)
  store i64 %.sroa.0.0.i.i88.peel, ptr %i.t, align 8, !alias.scope !44532, !noalias !44534
  br label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit.peel"

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i.peel: ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel"
  %.sroa.69.012.i.peel = phi i64 [ %i.bv, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i.peel ], [ %i.bt, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i.peel" ]
  %i.ch = inttoptr i64 %.sroa.69.012.i.peel to ptr
  %i.ci = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.ch, 1
  br label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit.peel"

"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit.peel": ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i.peel, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.peel", %bb.n
  %.merged.i.peel = phi { i64, ptr } [ %i.bm, %bb.n ], [ %i.ci, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i.peel ], [ %i.cf, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.peel" ] ; 2 uses
  %i.cj = extractvalue { i64, ptr } %.merged.i.peel, 0
  %i.ck = extractvalue { i64, ptr } %.merged.i.peel, 1 ; 12 uses
  %i.cl = trunc nuw i64 %i.cj to i1
  br i1 %i.cl, label %_ZN3std2io4Read8read_buf17h8ea2d6e9e0e1158dE.exit.peel, label %.loopexit77

_ZN3std2io4Read8read_buf17h8ea2d6e9e0e1158dE.exit.peel: ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit.peel"
  %.not77.peel = icmp eq ptr %i.ck, null
  br i1 %.not77.peel, label %.thread, label %bb.s

bb.s:                                             ; preds = %_ZN3std2io4Read8read_buf17h8ea2d6e9e0e1158dE.exit.peel
  %i.cm = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.cn = and i64 %i.cm, 3
  switch i64 %i.cn, label %.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %bb.w
    i64 0, label %.split38.peel
    i64 1, label %.split37.peel
  ], !prof !108

.split37.peel:                                    ; preds = %bb.s
  %i.co = getelementptr i8, ptr %i.ck, i64 -1     ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.cp = getelementptr i8, ptr %i.ck, i64 15
  %i.cq = load i8, ptr %i.cp, align 8, !range !109, !noundef !43
  %i.cr = icmp eq i8 %i.cq, 35
  br i1 %i.cr, label %bb.t, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit55"

bb.t:                                             ; preds = %.split37.peel
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %.val.i.i.i.i.i.peel = load ptr, ptr %i.co, align 8, !noalias !44544 ; 5 uses
  %i.cs = getelementptr i8, ptr %i.ck, i64 7
  %.val1.i.i.i.i.i.peel = load ptr, ptr %i.cs, align 8, !noalias !44544, !nonnull !43, !align !44, !noundef !43 ; 4 uses
  %i.ct = load ptr, ptr %.val1.i.i.i.i.i.peel, align 8, !invariant.load !43, !noalias !44544 ; 2 uses
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.peel) ]
  invoke void %i.ct(ptr noundef nonnull %.val.i.i.i.i.i.peel)
          to label %bb.v unwind label %.loopexit.split-lp, !noalias !44544

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.peel, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !45, !invariant.load !43, !noalias !44544 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.peel, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !range !74, !invariant.load !43, !noalias !44544 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, -9223372036854775807
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %i.cv, 0
  br i1 %i.cz, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.sink.split", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.peel"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.peel": ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.peel) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.peel, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) %i.cx) #67, !noalias !44544
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.sink.split"

.split38.peel:                                    ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.db = load i8, ptr %i.da, align 8, !range !109, !noundef !43
  %i.dc = icmp eq i8 %i.db, 35
  br i1 %i.dc, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit55"

bb.w:                                             ; preds = %bb.s
  %i.dd = icmp ult ptr %i.ck, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.dd)
  %.mask.peel = and i64 %i.cm, -4294967296
  %i.de = icmp eq i64 %.mask.peel, 150323855360
  br i1 %i.de, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit55"

.split.peel:                                      ; preds = %bb.s
  %.mask40.peel = and i64 %i.cm, -4294967296
  %i.df = icmp eq i64 %.mask40.peel, 17179869184
  br i1 %i.df, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit55"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.sink.split": ; preds = %bb.v, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.peel", %bb.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"
  %.sink = phi ptr [ %i.es, %bb.ai ], [ %i.es, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i" ], [ %i.co, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.peel" ], [ %i.co, %bb.v ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 24, i64 noundef 8) #67, !noalias !44544
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.preheader"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.preheader": ; preds = %.split.peel, %bb.w, %.split38.peel, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.sink.split"
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel": ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.backedge", %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.preheader"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44546)
  %i.dg = load i64, ptr %i.t, align 8, !alias.scope !44545, !noalias !44534, !noundef !43 ; 5 uses
  %i.dh = load i64, ptr %i.u, align 8, !alias.scope !44545, !noalias !44534, !noundef !43 ; 4 uses
  %i.di = icmp ne i64 %i.dg, %i.dh
  %i.dj = load i64, ptr %i.v, align 8, !alias.scope !44545, !noalias !44534 ; 6 uses
  %.not.i = icmp ult i64 %.sroa.0.0.i84, %i.dj
  %or.cond.i = select i1 %i.di, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44547), !noalias !44534
  %.not.i.i = icmp ult i64 %i.dg, %i.dh
  %.pre.i.i = load ptr, ptr %.0.val, align 8, !alias.scope !44548, !noalias !44534 ; 6 uses
  br i1 %.not.i.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = load i64, ptr %i.x, align 8, !alias.scope !44548, !noalias !44534, !noundef !43 ; 2 uses
  %i.dl = sub nuw i64 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dm, i8 0, i64 %i.dl, i1 false), !noalias !44549
  %i.dn = tail call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.w, ptr noalias noundef nonnull align 1 %.pre.i.i, i64 noundef %i.dj), !noalias !44550 ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = extractvalue { i64, ptr } %i.dn, 1      ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64               ; 5 uses
  %i.dr = trunc nuw i64 %i.do to i1
  br i1 %i.dr, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i.i = icmp ult i64 %i.dj, %i.dq
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i", !prof !46

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i": ; preds = %bb.z
  store i64 0, ptr %i.t, align 8, !alias.scope !44548, !noalias !44534
  store i64 %i.dq, ptr %i.u, align 8, !alias.scope !44548, !noalias !44534
  store i64 %i.dj, ptr %i.x, align 8, !alias.scope !44548, !noalias !44534
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i

.loopexit:                                        ; preds = %bb.q, %bb.z
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1048, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1050) #73, !noalias !44550
  unreachable

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i": ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !alias.scope !44548, !noalias !44534
  store i64 %i.dj, ptr %i.x, align 8, !alias.scope !44548, !noalias !44534
  %.not4.i.i = icmp eq ptr %i.dp, null
  br i1 %.not4.i.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i: ; preds = %bb.x
  %i.ds = sub nuw i64 %i.dh, %i.dg                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.dg
  %i.du = icmp eq ptr %.pre.i.i, null
  br i1 %i.du, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i

bb.aa:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel"
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !alias.scope !44545, !noalias !44534
  %i.dv = tail call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef align 8 dereferenceable(56) %i.w, ptr noalias noundef nonnull align 1 %i.bf, i64 noundef %.sroa.0.0.i84), !noalias !44534
  br label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit"

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i: ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i"
  %.sroa.69.012.i = phi i64 [ %i.ds, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i ], [ %i.dq, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i" ]
  %i.dw = inttoptr i64 %.sroa.69.012.i to ptr
  %i.dx = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.dw, 1
  br label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit"

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i: ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i"
  %i.dy = phi ptr [ %i.dt, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i ], [ %.pre.i.i, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i" ], [ %.pre.i.i, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i" ] ; 2 uses
  %i.dz = phi i64 [ %i.ds, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i ], [ %i.dq, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i" ]
  %i.ea = phi i64 [ %i.dg, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i" ]
  %i.eb = phi i64 [ %i.dh, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.i ], [ %i.dq, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44551), !noalias !44534
  %.sroa.0.0.i.i.i87 = tail call noundef i64 @llvm.umin.i64(i64 %i.dz, i64 %.sroa.0.0.i84) ; 4 uses
  %i.ec = icmp eq i64 %.sroa.0.0.i.i.i87, 1
  br i1 %i.ec, label %bb.ab, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i"

bb.ab:                                            ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i
  %i.ed = load i8, ptr %i.dy, align 1, !noalias !44552, !noundef !43
  store i8 %i.ed, ptr %i.bf, align 1, !alias.scope !44553, !noalias !44534
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i": ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.dy, i64 %.sroa.0.0.i.i.i87, i1 false), !alias.scope !44540, !noalias !44554
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i", %bb.ab
  %i.ee = inttoptr i64 %.sroa.0.0.i.i.i87 to ptr
  %i.ef = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ee, 1
  %i.eg = add i64 %i.ea, %.sroa.0.0.i.i.i87
  %.sroa.0.0.i.i88 = tail call noundef i64 @llvm.umin.i64(i64 %i.eb, i64 %i.eg)
  store i64 %.sroa.0.0.i.i88, ptr %i.t, align 8, !alias.scope !44545, !noalias !44534
  br label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit"

"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit": ; preds = %bb.aa, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"
  %.merged.i = phi { i64, ptr } [ %i.dv, %bb.aa ], [ %i.dx, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread.i ], [ %i.ef, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 2 uses
  %i.eh = extractvalue { i64, ptr } %.merged.i, 0
  %i.ei = extractvalue { i64, ptr } %.merged.i, 1 ; 12 uses
  %i.ej = trunc nuw i64 %i.eh to i1
  br i1 %i.ej, label %_ZN3std2io4Read8read_buf17h8ea2d6e9e0e1158dE.exit, label %.loopexit77

.loopexit77:                                      ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit", %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit.peel"
  %.lcssa60 = phi ptr [ %i.ck, %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit.peel" ], [ %i.ei, %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit" ] ; 3 uses
  %i.ek = ptrtoint ptr %.lcssa60 to i64           ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %.sroa.0.0.i84, %i.ek
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.ac, !prof !54

bb.ac:                                            ; preds = %.loopexit77
  %i.el = icmp eq ptr %.lcssa60, null
  br i1 %i.el, label %bb.ak, label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_ZN8gix_hash6hasher5_impl6Hasher6update17h0859fed53e712526E(ptr noalias noundef nonnull align 8 dereferenceable(824) %.8.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bf, i64 noundef range(i64 1, 0) %i.ek), !noalias !44534
  br label %bb.ak

bb.ad:                                            ; preds = %.loopexit77
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ek, i64 noundef %.sroa.0.0.i84, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2774) #73, !noalias !44534
  unreachable

_ZN3std2io4Read8read_buf17h8ea2d6e9e0e1158dE.exit: ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE.exit"
  %.not77 = icmp eq ptr %i.ei, null
  br i1 %.not77, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZN3std2io4Read8read_buf17h8ea2d6e9e0e1158dE.exit
  %i.em = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.en = and i64 %i.em, 3
  switch i64 %i.en, label %.unreachabledefault167 [
    i64 2, label %.split
    i64 3, label %bb.af
    i64 0, label %.split38
    i64 1, label %.split37
  ], !prof !108

.unreachabledefault167:                           ; preds = %bb.ae
  unreachable

.unreachabledefault:                              ; preds = %bb.s
  unreachable

.split:                                           ; preds = %bb.ae
  %.mask40 = and i64 %i.em, -4294967296
  %i.eo = icmp eq i64 %.mask40, 17179869184
  br i1 %i.eo, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit55"

.split38:                                         ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.eq = load i8, ptr %i.ep, align 8, !range !109, !noundef !43
end_hunk_1
