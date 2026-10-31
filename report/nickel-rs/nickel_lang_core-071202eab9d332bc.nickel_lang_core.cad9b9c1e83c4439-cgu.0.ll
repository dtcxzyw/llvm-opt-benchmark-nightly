Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN16nickel_lang_core4repl18rustyline_frontend4repl17h3df1d2f871a45682E:bb.a

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !53908
  invoke void @_ZN7minimad8template24owning_template_expander22OwningTemplateExpander6expand17hab41e52cb23b4320E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bj)
          to label %bb.kk unwind label %bb.jy, !noalias !53909

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !53908
  invoke void @_ZN8termimad4text7FmtText9from_text17had7f921ef4055dd4E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.cf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bg, i64 noundef 1, i64 %i.ahy)
          to label %bb.kl unwind label %bb.jy, !noalias !53909

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !53908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !53908
  store ptr %i.bf, ptr %i.bd, align 8, !noalias !53908
  store ptr @"_ZN62_$LT$termimad..text..FmtText$u20$as$u20$core..fmt..Display$GT$3fmt17h2638c75084f43b6eE", ptr %.sroa.420.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53908
  store ptr @212, ptr %i.be, align 8, !noalias !53908
  store i64 1, ptr %i.oy, align 8, !noalias !53908
  store ptr null, ptr %i.oz, align 8, !noalias !53908
  store ptr %i.bd, ptr %i.pa, align 8, !noalias !53908
  store i64 1, ptr %i.pb, align 8, !noalias !53908
  %i.ait = invoke noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hf227482ec4576934E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.be)
          to label %bb.kn unwind label %bb.km, !noalias !53909 ; 2 uses

bb.km:                                            ; preds = %bb.kl
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$termimad..text..FmtText$GT$17h0a9343bb03d1a5c3E"(ptr noalias noundef align 8 dereferenceable(48) %i.bf) #86, !noalias !53909
  br label %.body.i.i.i.i.i

bb.kn:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !53908
  %.not22.i.i.i.i.i = icmp eq ptr %i.ait, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !53908
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$termimad..text..FmtText$GT$17h0a9343bb03d1a5c3E"(ptr noalias noundef align 8 dereferenceable(48) %i.bf), !noalias !53909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !53908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !53908
  br i1 %.not22.i.i.i.i.i, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i6.i.i.i.i120.i.i.i.i, i64 noundef %i.agy, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !53933
  br label %"_ZN4core3ptr192drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_parser..identifier..LocIdent..ident$GT$$GT$17hd52f1f602bacb027E.exit41.i.i.i.i.i"

bb.kp:                                            ; preds = %bb.kn
  %i.aiv = icmp eq ptr %i.aia, %i.aho
  br i1 %i.aiv, label %._crit_edge.i.i.i.i.i, label %bb.jz

"_ZN4core3ptr192drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_parser..identifier..LocIdent..ident$GT$$GT$17hd52f1f602bacb027E.exit41.i.i.i.i.i": ; preds = %bb.ko, %bb.jw
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.ahx, %bb.jw ], [ %i.ait, %bb.ko ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53934)
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$minimad..markdown..text..Text$GT$17h05cea4be7c0054beE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.bj), !noalias !53909
  %.val.i42.i.i.i.i.i = load i64, ptr %i.pc, align 8, !alias.scope !53934, !noalias !53908 ; 2 uses
  %i.aiw = icmp eq i64 %.val.i42.i.i.i.i.i, 0
  br i1 %i.aiw, label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..text_template..CompoundArg$GT$$GT$17h302770d6235250edE.exit9.i44.i.i.i.i.i", label %bb.kq

bb.kq:                                            ; preds = %"_ZN4core3ptr192drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_parser..identifier..LocIdent..ident$GT$$GT$17hd52f1f602bacb027E.exit41.i.i.i.i.i"
  %.val2.i43.i.i.i.i.i = load ptr, ptr %i.pd, align 8, !alias.scope !53934, !noalias !53908, !nonnull !145, !noundef !145
  %i.aix = mul nuw i64 %.val.i42.i.i.i.i.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i43.i.i.i.i.i, i64 noundef %i.aix, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !53935
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..text_template..CompoundArg$GT$$GT$17h302770d6235250edE.exit9.i44.i.i.i.i.i"

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..text_template..CompoundArg$GT$$GT$17h302770d6235250edE.exit9.i44.i.i.i.i.i": ; preds = %bb.kq, %"_ZN4core3ptr192drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_parser..identifier..LocIdent..ident$GT$$GT$17hd52f1f602bacb027E.exit41.i.i.i.i.i"
  %.val5.i45.i.i.i.i.i = load i64, ptr %i.pe, align 8, !alias.scope !53934, !noalias !53908 ; 2 uses
  %i.aiy = icmp eq i64 %.val5.i45.i.i.i.i.i, 0
  br i1 %i.aiy, label %"_ZN4core3ptr67drop_in_place$LT$minimad..template..text_template..TextTemplate$GT$17h37b0d55db648109fE.exit47.i.i.i.i.i", label %bb.kr

bb.kr:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..text_template..CompoundArg$GT$$GT$17h302770d6235250edE.exit9.i44.i.i.i.i.i"
  %.val6.i46.i.i.i.i.i = load ptr, ptr %i.pf, align 8, !alias.scope !53934, !noalias !53908, !nonnull !145, !noundef !145
  %i.aiz = shl nuw i64 %.val5.i45.i.i.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i46.i.i.i.i.i, i64 noundef %i.aiz, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !53935
  br label %"_ZN4core3ptr67drop_in_place$LT$minimad..template..text_template..TextTemplate$GT$17h37b0d55db648109fE.exit47.i.i.i.i.i"

"_ZN4core3ptr67drop_in_place$LT$minimad..template..text_template..TextTemplate$GT$17h37b0d55db648109fE.exit47.i.i.i.i.i": ; preds = %bb.kr, %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..text_template..CompoundArg$GT$$GT$17h302770d6235250edE.exit9.i44.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !53908
  call void @llvm.experimental.noalias.scope.decl(metadata !53936)
  call void @llvm.experimental.noalias.scope.decl(metadata !53937)
  %.val.i.i48.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i14.i.i.i.i, align 8, !alias.scope !53938, !noalias !53908, !nonnull !145, !noundef !145 ; 2 uses
  %.val1.i.i49.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i15.i.i.i.i, align 8, !alias.scope !53938, !noalias !53908, !noundef !145 ; 2 uses
  %i.aja = icmp eq i64 %.val1.i.i49.i.i.i.i.i, 0
  br i1 %i.aja, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5539f7f1c8efe5cdE.exit.i.i52.i.i.i.i.i", label %.lr.ph.i.i.i.i50.i.i.i.i.i

.lr.ph.i.i.i.i50.i.i.i.i.i:                       ; preds = %"_ZN4core3ptr67drop_in_place$LT$minimad..template..text_template..TextTemplate$GT$17h37b0d55db648109fE.exit47.i.i.i.i.i", %.lr.ph.i.i.i.i50.i.i.i.i.i
  %.sroa.0.07.i.i.i.i51.i.i.i.i.i = phi i64 [ %i.ajc, %.lr.ph.i.i.i.i50.i.i.i.i.i ], [ 0, %"_ZN4core3ptr67drop_in_place$LT$minimad..template..text_template..TextTemplate$GT$17h37b0d55db648109fE.exit47.i.i.i.i.i" ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i48.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i51.i.i.i.i.i
  %i.ajc = add nuw i64 %.sroa.0.07.i.i.i.i51.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$minimad..template..owning_template_expander..FillingOperation$GT$17hc8a552d3ac6828cbE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.ajb), !noalias !53939
  %i.ajd = icmp eq i64 %i.ajc, %.val1.i.i49.i.i.i.i.i
  br i1 %i.ajd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5539f7f1c8efe5cdE.exit.i.i52.i.i.i.i.i", label %.lr.ph.i.i.i.i50.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5539f7f1c8efe5cdE.exit.i.i52.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i50.i.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$minimad..template..text_template..TextTemplate$GT$17h37b0d55db648109fE.exit47.i.i.i.i.i"
  %.val2.i.i53.i.i.i.i.i = load i64, ptr %i.bk, align 8, !range !146, !alias.scope !53938, !noalias !53908, !noundef !145 ; 2 uses
  %i.aje = icmp eq i64 %.val2.i.i53.i.i.i.i.i, 0
  br i1 %i.aje, label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..owning_template_expander..FillingOperation$GT$$GT$17h1cef93be0d0a40e5E.exit.i54.i.i.i.i.i", label %bb.ks

bb.ks:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5539f7f1c8efe5cdE.exit.i.i52.i.i.i.i.i"
  %i.ajf = mul nuw i64 %.val2.i.i53.i.i.i.i.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i48.i.i.i.i.i, i64 noundef %i.ajf, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !53939
  br label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..owning_template_expander..FillingOperation$GT$$GT$17h1cef93be0d0a40e5E.exit.i54.i.i.i.i.i"

"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..owning_template_expander..FillingOperation$GT$$GT$17h1cef93be0d0a40e5E.exit.i54.i.i.i.i.i": ; preds = %bb.ks, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5539f7f1c8efe5cdE.exit.i.i52.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !53940)
  %i.ajg = load i64, ptr %i.ov, align 8, !range !168, !alias.scope !53941, !noalias !53908, !noundef !145 ; 3 uses
  %i.ajh = icmp eq i64 %i.ajg, -9223372036854775808
  br i1 %i.ajh, label %"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit56.i.i.i.i.i", label %bb.kt

bb.kt:                                            ; preds = %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..owning_template_expander..FillingOperation$GT$$GT$17h1cef93be0d0a40e5E.exit.i54.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !53942)
  call void @llvm.experimental.noalias.scope.decl(metadata !53943)
  %i.aji = icmp eq i64 %i.ajg, 0
  br i1 %i.aji, label %"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit56.i.i.i.i.i", label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %.val1.i.i.i1.i55.i.i.i.i.i = load ptr, ptr %i.pg, align 8, !alias.scope !53944, !noalias !53908, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1.i55.i.i.i.i.i, i64 noundef %i.ajg, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !53945
  br label %"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit56.i.i.i.i.i"

"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit56.i.i.i.i.i": ; preds = %bb.ku, %bb.kt, %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$minimad..template..owning_template_expander..FillingOperation$GT$$GT$17h1cef93be0d0a40e5E.exit.i54.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !53908
  %or.cond.i.i.i.i = or i1 %i.agz, %.not.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.kx, label %bb.kv

bb.kv:                                            ; preds = %"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit56.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i6.i.i.i.i120.i.i.i.i, i64 noundef %i.agy, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !53946
  br label %bb.kx

bb.kw:                                            ; preds = %bb.js, %.thread83.i.i.i.i.i, %.thread.i.i.i.i.i
  %.pn2864.i.i.i.i.i2039 = phi { ptr, i32 } [ %i.ahq, %.thread.i.i.i.i.i ], [ %.pn24.i.i.i.i.i, %bb.js ], [ %i.ahs, %.thread83.i.i.i.i.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i6.i.i.i.i120.i.i.i.i, i64 noundef %i.agy, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !53947
  br label %.body.i.i

bb.kx:                                            ; preds = %bb.kv, %"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit56.i.i.i.i.i", %"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i = phi ptr [ null, %"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit.i.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i.i, %"_ZN4core3ptr88drop_in_place$LT$minimad..template..owning_template_expander..OwningTemplateExpander$GT$17h36bbf813f9f1c06cE.exit56.i.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i.i, %bb.kv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !53902
  br label %_ZN16nickel_lang_core4repl11query_print19render_query_result12write_fields17h7f2577900926a8edE.exit.i.i.i

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$$RF$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hc5582e69a3476314E.exit.i.i.i.i": ; preds = %bb.jq, %bb.jp
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aha, i64 noundef %i.agy, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !53904
  br label %.body.i.i

bb.ky:                                            ; preds = %bb.jk
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aga, i64 24 ; 3 uses
  %i.ajl = load ptr, ptr %i.ajk, align 8, !noalias !53904, !nonnull !145, !align !149, !noundef !145 ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 48
  %i.ajn = load i64, ptr %i.ajm, align 8, !noalias !53904, !noundef !145
  %i.ajo = icmp eq i64 %i.ajn, 0
  br i1 %i.ajo, label %.thread.i.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !53902
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  %i.ajq = load ptr, ptr %i.ajp, align 8, !noalias !53904, !nonnull !145, !noundef !145 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %i.ajs = load i64, ptr %i.ajr, align 8, !noalias !53904, !noundef !145
  %i.ajt = getelementptr inbounds nuw [72 x i8], ptr %i.ajq, i64 %i.ajs
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h7673cd0ac47e44ceE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noundef nonnull %i.ajq, ptr noundef %i.ajt)
          to label %.noexc21.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53865

.noexc21.i.i:                                     ; preds = %bb.kz
  %i.aju = load ptr, ptr %i.ajk, align 8, !noalias !53904, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 96
  %i.ajw = load ptr, ptr %i.ajv, align 8, !noalias !53904, !nonnull !145, !noundef !145 ; 15 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aju, i64 104
  %i.ajy = load i64, ptr %i.ajx, align 8, !noalias !53904, !noundef !145 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53948)
  call void @llvm.experimental.noalias.scope.decl(metadata !53949)
  %i.ajz = load i64, ptr %i.oh, align 8, !alias.scope !53950, !noalias !53902, !noundef !145 ; 4 uses
  %i.aka = load i64, ptr %i.bl, align 8, !range !146, !alias.scope !53950, !noalias !53902, !noundef !145
  %i.akb = sub i64 %i.aka, %i.ajz
  %i.akc = icmp ugt i64 %i.ajy, %i.akb
  br i1 %i.akc, label %bb.la, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.i.i.i.i", !prof !147

bb.la:                                            ; preds = %.noexc21.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.ajz, i64 noundef %i.ajy, i64 noundef 4, i64 noundef 4)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.thread.i.i.i.i" unwind label %bb.mr, !noalias !53904

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.thread.i.i.i.i": ; preds = %bb.la
  %.pre.i.i.i.i.i.i = load i64, ptr %i.oh, align 8, !alias.scope !53951, !noalias !53902
  %i.akd = load ptr, ptr %i.oi, align 8, !alias.scope !53951, !noalias !53902, !nonnull !145, !noundef !145
  br label %.preheader.i.i.preheader.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.i.i.i.i": ; preds = %.noexc21.i.i
  %i.ake = load ptr, ptr %i.oi, align 8, !alias.scope !53951, !noalias !53902, !nonnull !145, !noundef !145 ; 2 uses
  %i.akf = icmp eq i64 %i.ajy, 0
  br i1 %i.akf, label %.loopexit142.i.i.i.i, label %.preheader.i.i.preheader.i.i.i.i

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.thread.i.i.i.i"
  %i.akg = phi ptr [ %i.akd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.thread.i.i.i.i" ], [ %i.ake, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.i.i.i.i" ] ; 11 uses
  %i.akh = phi i64 [ %.pre.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.thread.i.i.i.i" ], [ %i.ajz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.i.i.i.i" ] ; 6 uses
  %min.iters.check3231 = icmp ult i64 %i.ajy, 8
  br i1 %min.iters.check3231, label %.preheader.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.preheader.i.i.i.i
  %i.aki = shl i64 %i.akh, 2
  %scevgep = getelementptr nuw i8, ptr %i.akg, i64 %i.aki
  %i.akj = add i64 %i.akh, %i.ajy
  %i.akk = shl i64 %i.akj, 2
  %scevgep3226 = getelementptr i8, ptr %i.akg, i64 %i.akk
  %scevgep3227 = getelementptr i8, ptr %i.ajw, i64 376
  %3 = mul i64 %i.ajy, 384
  %4 = getelementptr i8, ptr %i.ajw, i64 %3
  %scevgep3229 = getelementptr i8, ptr %4, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3229
  %bound1 = icmp ult ptr %scevgep3227, %scevgep3226
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.i.i.i.preheader, label %vector.ph3232

vector.ph3232:                                    ; preds = %vector.memcheck
  %n.vec3233 = and i64 %i.ajy, -8                 ; 4 uses
  %i.akl = add i64 %i.akh, %n.vec3233             ; 2 uses
  %i.akm = getelementptr [4 x i8], ptr %i.akg, i64 %i.akh
  br label %vector.body3234

vector.body3234:                                  ; preds = %vector.body3234, %vector.ph3232
  %index3235 = phi i64 [ 0, %vector.ph3232 ], [ %index.next3236, %vector.body3234 ] ; 10 uses
  %i.akn = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %index3235
  %i.ako = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %index3235
  %i.akp = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %index3235
  %i.akq = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %index3235
  %i.akr = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %index3235
  %i.aks = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %index3235
  %i.akt = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %index3235
  %i.aku = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %index3235
  %i.akv = getelementptr i8, ptr %i.akn, i64 376
  %i.akw = getelementptr i8, ptr %i.ako, i64 760
  %i.akx = getelementptr i8, ptr %i.akp, i64 1144
  %i.aky = getelementptr i8, ptr %i.akq, i64 1528
  %i.akz = getelementptr i8, ptr %i.akr, i64 1912
  %i.ala = getelementptr i8, ptr %i.aks, i64 2296
  %i.alb = getelementptr i8, ptr %i.akt, i64 2680
  %i.alc = getelementptr i8, ptr %i.aku, i64 3064
  %i.ald = load i32, ptr %i.akv, align 8, !alias.scope !53952, !noalias !53953
  %i.ale = load i32, ptr %i.akw, align 8, !alias.scope !53952, !noalias !53953
  %i.alf = load i32, ptr %i.akx, align 8, !alias.scope !53952, !noalias !53953
  %i.alg = load i32, ptr %i.aky, align 8, !alias.scope !53952, !noalias !53953
  %i.alh = insertelement <4 x i32> poison, i32 %i.ald, i64 0
  %i.ali = insertelement <4 x i32> %i.alh, i32 %i.ale, i64 1
  %i.alj = insertelement <4 x i32> %i.ali, i32 %i.alf, i64 2
  %i.alk = insertelement <4 x i32> %i.alj, i32 %i.alg, i64 3
  %i.all = load i32, ptr %i.akz, align 8, !alias.scope !53952, !noalias !53953
  %i.alm = load i32, ptr %i.ala, align 8, !alias.scope !53952, !noalias !53953
  %i.aln = load i32, ptr %i.alb, align 8, !alias.scope !53952, !noalias !53953
  %i.alo = load i32, ptr %i.alc, align 8, !alias.scope !53952, !noalias !53953
  %i.alp = insertelement <4 x i32> poison, i32 %i.all, i64 0
  %i.alq = insertelement <4 x i32> %i.alp, i32 %i.alm, i64 1
  %i.alr = insertelement <4 x i32> %i.alq, i32 %i.aln, i64 2
  %i.als = insertelement <4 x i32> %i.alr, i32 %i.alo, i64 3
  %i.alt = getelementptr [4 x i8], ptr %i.akm, i64 %index3235 ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  store <4 x i32> %i.alk, ptr %i.alt, align 4, !alias.scope !53954, !noalias !53955
  store <4 x i32> %i.als, ptr %i.alu, align 4, !alias.scope !53954, !noalias !53955
  %index.next3236 = add nuw i64 %index3235, 8     ; 2 uses
  %i.alv = icmp eq i64 %index.next3236, %n.vec3233
  br i1 %i.alv, label %middle.block3237, label %vector.body3234, !llvm.loop !53514

middle.block3237:                                 ; preds = %vector.body3234
  %cmp.n3238 = icmp eq i64 %i.ajy, %n.vec3233
  br i1 %cmp.n3238, label %.loopexit142.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck, %.preheader.i.i.preheader.i.i.i.i, %middle.block3237
  %.ph3250 = phi i64 [ %i.akh, %vector.memcheck ], [ %i.akh, %.preheader.i.i.preheader.i.i.i.i ], [ %i.akl, %middle.block3237 ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.preheader.i.i.i.i ], [ %n.vec3233, %middle.block3237 ] ; 3 uses
  %xtraiter = and i64 %i.ajy, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.prol:                      ; preds = %.preheader.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.prol
  %i.alw = phi i64 [ %i.ama, %.preheader.i.i.i.i.i.i.prol ], [ %.ph3250, %.preheader.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.amb, %.preheader.i.i.i.i.i.i.prol ], [ %.sroa.06.0.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.preheader ]
  %i.alx = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.prol
  %i.aly = getelementptr i8, ptr %i.alx, i64 376
  %.val21.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.aly, align 8, !noalias !53953, !noundef !145
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %i.alw
  store i32 %.val21.i.i.i.i.i.i.i.i.i.prol, ptr %i.alz, align 4, !noalias !53956
  %i.ama = add i64 %i.alw, 1                      ; 3 uses
  %i.amb = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol, !llvm.loop !53515

.preheader.i.i.i.i.i.i.prol.loopexit:             ; preds = %.preheader.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.preheader
  %.lcssa3289.unr = phi i64 [ poison, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ama, %.preheader.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph3250, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ama, %.preheader.i.i.i.i.i.i.prol ]
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.06.0.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader ], [ %i.amb, %.preheader.i.i.i.i.i.i.prol ]
  %i.amc = sub i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.ph, %i.ajy
  %i.amd = icmp ugt i64 %i.amc, -4
  br i1 %i.amd, label %.loopexit142.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i
  %i.ame = phi i64 [ %i.amu, %.preheader.i.i.i.i.i.i ], [ %.unr, %.preheader.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.amv, %.preheader.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.amf = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i
  %i.amg = getelementptr i8, ptr %i.amf, i64 376
  %.val21.i.i.i.i.i.i.i.i.i = load i32, ptr %i.amg, align 8, !noalias !53953, !noundef !145
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %i.ame
  store i32 %.val21.i.i.i.i.i.i.i.i.i, ptr %i.amh, align 4, !noalias !53956
  %i.ami = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i
  %i.amj = getelementptr i8, ptr %i.ami, i64 760
  %.val21.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.amj, align 8, !noalias !53953, !noundef !145
  %i.amk = getelementptr [4 x i8], ptr %i.akg, i64 %i.ame
  %i.aml = getelementptr i8, ptr %i.amk, i64 4
  store i32 %.val21.i.i.i.i.i.i.i.i.i.1, ptr %i.aml, align 4, !noalias !53956
  %i.amm = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i
  %i.amn = getelementptr i8, ptr %i.amm, i64 1144
  %.val21.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.amn, align 8, !noalias !53953, !noundef !145
  %i.amo = getelementptr [4 x i8], ptr %i.akg, i64 %i.ame
  %i.amp = getelementptr i8, ptr %i.amo, i64 8
  store i32 %.val21.i.i.i.i.i.i.i.i.i.2, ptr %i.amp, align 4, !noalias !53956
  %i.amq = getelementptr inbounds nuw [384 x i8], ptr %i.ajw, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i
  %i.amr = getelementptr i8, ptr %i.amq, i64 1528
  %.val21.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.amr, align 8, !noalias !53953, !noundef !145
  %i.ams = getelementptr [4 x i8], ptr %i.akg, i64 %i.ame
  %i.amt = getelementptr i8, ptr %i.ams, i64 12
  store i32 %.val21.i.i.i.i.i.i.i.i.i.3, ptr %i.amt, align 4, !noalias !53956
  %i.amu = add i64 %i.ame, 4                      ; 2 uses
  %i.amv = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.amw = icmp eq i64 %i.amv, %i.ajy
  br i1 %i.amw, label %.loopexit142.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !53516

.loopexit142.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i, %middle.block3237, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.i.i.i.i"
  %i.amx = phi ptr [ %i.ake, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.i.i.i.i" ], [ %i.akg, %middle.block3237 ], [ %i.akg, %.preheader.i.i.i.i.i.i ], [ %i.akg, %.preheader.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %storemerge.i.i.i.i.i.i.i.i = phi i64 [ %i.ajz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i.i.i.i.i" ], [ %i.akl, %middle.block3237 ], [ %.lcssa3289.unr, %.preheader.i.i.i.i.i.i.prol.loopexit ], [ %i.amu, %.preheader.i.i.i.i.i.i ] ; 9 uses
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %i.oh, align 8, !alias.scope !53951, !noalias !53957
  %i.amy = icmp ult i64 %storemerge.i.i.i.i.i.i.i.i, 2
  br i1 %i.amy, label %_ZN5alloc5slice11stable_sort17h50b4e461a9faf8e6E.exit.i.i.i.i, label %bb.lb, !prof !154

bb.lb:                                            ; preds = %.loopexit142.i.i.i.i
  %i.amz = icmp ult i64 %storemerge.i.i.i.i.i.i.i.i, 21
  br i1 %i.amz, label %bb.ld, label %bb.lc, !prof !154

bb.lc:                                            ; preds = %bb.lb
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h853b64a81bb8ff4fE(ptr noalias noundef nonnull align 4 %i.amx, i64 noundef %storemerge.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 1 %i.a)
          to label %_ZN5alloc5slice11stable_sort17h50b4e461a9faf8e6E.exit.i.i.i.i unwind label %bb.mr, !noalias !53904

bb.ld:                                            ; preds = %bb.lb
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5f46e4ac3933a536E(ptr noalias noundef nonnull align 4 %i.amx, i64 noundef %storemerge.i.i.i.i.i.i.i.i)
          to label %_ZN5alloc5slice11stable_sort17h50b4e461a9faf8e6E.exit.i.i.i.i unwind label %bb.mr

_ZN5alloc5slice11stable_sort17h50b4e461a9faf8e6E.exit.i.i.i.i: ; preds = %bb.ld, %bb.lc, %.loopexit142.i.i.i.i
  %i.ana = invoke noundef i32 @"_ZN92_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h724f3ac097a80a00E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @984, i64 noundef 9)
          to label %bb.le unwind label %bb.mr, !noalias !53904 ; 2 uses

bb.le:                                            ; preds = %_ZN5alloc5slice11stable_sort17h50b4e461a9faf8e6E.exit.i.i.i.i
  %i.anb = load ptr, ptr %i.ajk, align 8, !noalias !53904, !nonnull !145, !align !149, !noundef !145
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 128
  %i.and = load i64, ptr %i.anc, align 8, !noalias !53904, !noundef !145 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53958)
  call void @llvm.experimental.noalias.scope.decl(metadata !53959)
  %i.ane = load i64, ptr %i.bl, align 8, !noalias !53902 ; 2 uses
  %i.anf = sub i64 %i.ane, %storemerge.i.i.i.i.i.i.i.i
  %i.ang = icmp ugt i64 %i.and, %i.anf
  br i1 %i.ang, label %bb.lf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.i.i.i.i", !prof !147

bb.lf:                                            ; preds = %bb.le
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %storemerge.i.i.i.i.i.i.i.i, i64 noundef %i.and, i64 noundef 4, i64 noundef 4)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.thread.i.i.i.i" unwind label %bb.mr, !noalias !53904

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.thread.i.i.i.i": ; preds = %bb.lf
  %.pre.i.i25.i.i.i.i = load i64, ptr %i.oh, align 8, !alias.scope !53960, !noalias !53902
  %.pre.i.i.i.i = load ptr, ptr %i.oi, align 8, !alias.scope !53960, !noalias !53902
  br label %.preheader.preheader.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.i.i.i.i": ; preds = %bb.le
  %i.anh = icmp eq i64 %i.and, 0
  br i1 %i.anh, label %.loopexit.i.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.thread.i.i.i.i"
  %i.ani = phi i64 [ %.pre.i.i25.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.thread.i.i.i.i" ], [ %storemerge.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.i.i.i.i" ] ; 3 uses
  %i.anj = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.thread.i.i.i.i" ], [ %i.amx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f710e373fefc7e9E.exit.i.i21.i.i.i.i" ] ; 3 uses
  %min.iters.check3216 = icmp ult i64 %i.and, 8
  br i1 %min.iters.check3216, label %.preheader.i.i.i.i.preheader, label %vector.ph3217

vector.ph3217:                                    ; preds = %.preheader.preheader.i.i.i.i
  %n.vec3218 = and i64 %i.and, -8                 ; 4 uses
  %i.ank = add i64 %i.ani, %n.vec3218             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ana, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.anl = getelementptr [4 x i8], ptr %i.anj, i64 %i.ani
  br label %vector.body3219

vector.body3219:                                  ; preds = %vector.body3219, %vector.ph3217
  %index3220 = phi i64 [ 0, %vector.ph3217 ], [ %index.next3221, %vector.body3219 ] ; 2 uses
  %i.anm = getelementptr [4 x i8], ptr %i.anl, i64 %index3220 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.anm, align 4, !noalias !53961
  store <4 x i32> %broadcast.splat, ptr %i.ann, align 4, !noalias !53961
  %index.next3221 = add nuw i64 %index3220, 8     ; 2 uses
  %i.ano = icmp eq i64 %index.next3221, %n.vec3218
  br i1 %i.ano, label %middle.block3222, label %vector.body3219, !llvm.loop !53537

middle.block3222:                                 ; preds = %vector.body3219
  %cmp.n3223 = icmp eq i64 %i.and, %n.vec3218
  br i1 %cmp.n3223, label %.loopexit.ithread-pre-split.i.i.i, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %.preheader.preheader.i.i.i.i, %middle.block3222
  %.ph3249 = phi i64 [ %i.ani, %.preheader.preheader.i.i.i.i ], [ %i.ank, %middle.block3222 ]
  %.sroa.06.0.i.i.i.i.i23.i.i.i.i.ph = phi i64 [ 0, %.preheader.preheader.i.i.i.i ], [ %n.vec3218, %middle.block3222 ]
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %i.anp = phi i64 [ %i.anr, %.preheader.i.i.i.i ], [ %.ph3249, %.preheader.i.i.i.i.preheader ] ; 2 uses
end_hunk_0
