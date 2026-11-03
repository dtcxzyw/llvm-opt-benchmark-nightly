Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 79
begin_hunk_0_@"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h97242e7432a5ab75E":bb.a
  %.sroa.06.0.i.i5 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i13, i64 %.sroa.06.0.i.i5
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !306, !noundef !13 ; 3 uses
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser6ESCAPE17h0276473040442971E, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !306, !noundef !13 ; 3 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i13, i64 %.sroa.06.0.i.i5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ad = xor i64 %.sroa.06.0.i.i5, -1
  %i.ae = add i64 %.sroa.8.0.ph.i.i12, %i.ad      ; 3 uses
  %i.af = icmp eq i64 %.sroa.06.0.i.i5, 0
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ag = load i64, ptr %.0.val, align 8, !range !14, !alias.scope !311, !noalias !312, !noundef !13
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = icmp ugt i64 %.sroa.06.0.i.i5, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN10serde_json3ser9Formatter21write_string_fragment17h77e544e74d973200E.exit24.i.i, !prof !15

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf73253a6d4574d3aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.k, i64 noundef range(i64 1, 0) %.sroa.06.0.i.i5, i64 noundef 1, i64 noundef 1), !noalias !313
  %.pre.i.i.i.i.i.i23.i.i = load i64, ptr %i.a, align 8, !alias.scope !314, !noalias !312
  br label %_ZN10serde_json3ser9Formatter21write_string_fragment17h77e544e74d973200E.exit24.i.i

_ZN10serde_json3ser9Formatter21write_string_fragment17h77e544e74d973200E.exit24.i.i: ; preds = %bb.i, %bb.h
  %i.aj = phi i64 [ %i.k, %bb.h ], [ %.pre.i.i.i.i.i.i23.i.i, %bb.i ] ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %i.g, align 8, !alias.scope !314, !noalias !312, !nonnull !13, !noundef !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.01.0.ph.i.i13, i64 range(i64 1, 0) %.sroa.06.0.i.i5, i1 false), !noalias !314
  %i.an = add i64 %i.aj, %.sroa.06.0.i.i5         ; 2 uses
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !314, !noalias !312
  br label %bb.j

bb.j:                                             ; preds = %_ZN10serde_json3ser9Formatter21write_string_fragment17h77e544e74d973200E.exit24.i.i, %bb.g
  %i.ao = phi i64 [ %i.an, %_ZN10serde_json3ser9Formatter21write_string_fragment17h77e544e74d973200E.exit24.i.i ], [ %i.k, %bb.g ] ; 6 uses
  %i.ap = icmp eq i8 %i.z, 117
  br i1 %i.ap, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aq = and i8 %i.w, 15
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = lshr i8 %i.w, 4
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !306, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.ar
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !306, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.ay = load i64, ptr %.0.val, align 8, !range !14, !alias.scope !319, !noalias !320, !noundef !13
  %i.az = sub i64 %i.ay, %i.ao
  %i.ba = icmp ult i64 %i.az, 6
  br i1 %i.ba, label %bb.l, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit.i.i.i", !prof !15

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf73253a6d4574d3aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.ao, i64 noundef 6, i64 noundef 1, i64 noundef 1), !noalias !321
  %.pre.i.i.i.i.i.i25.i.i = load i64, ptr %i.a, align 8, !alias.scope !322, !noalias !320
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit.i.i.i": ; preds = %bb.l, %bb.k
  %i.bb = phi i64 [ %i.ao, %bb.k ], [ %.pre.i.i.i.i.i.i25.i.i, %bb.l ] ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load ptr, ptr %i.g, align 8, !alias.scope !322, !noalias !320, !nonnull !13, !noundef !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.be, align 1, !noalias !323
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i8 %i.av, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !323
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  store i8 %i.ax, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !noalias !323
  %i.bf = add nuw i64 %i.bb, 6
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17h1b356b0475114abfE.exit.i.i

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.bg = load i64, ptr %.0.val, align 8, !range !14, !alias.scope !328, !noalias !329, !noundef !13
  %i.bh = sub i64 %i.bg, %i.ao
  %i.bi = icmp ult i64 %i.bh, 2
  br i1 %i.bi, label %bb.n, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit7.i.i.i", !prof !15

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf73253a6d4574d3aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.ao, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !330
  %.pre.i.i.i.i.i6.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !331, !noalias !329
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit7.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit7.i.i.i": ; preds = %bb.n, %bb.m
  %i.bj = phi i64 [ %i.ao, %bb.m ], [ %.pre.i.i.i.i.i6.i.i.i, %bb.n ] ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load ptr, ptr %i.g, align 8, !alias.scope !331, !noalias !329, !nonnull !13, !noundef !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj ; 2 uses
  store i8 92, ptr %i.bm, align 1, !noalias !332
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 %i.z, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !noalias !332
  %i.bn = add nuw i64 %i.bj, 2
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17h1b356b0475114abfE.exit.i.i

_ZN10serde_json3ser9Formatter17write_char_escape17h1b356b0475114abfE.exit.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit7.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit.i.i.i"
  %storemerge.i.i = phi i64 [ %i.bn, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit7.i.i.i" ], [ %i.bf, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hfdc45d1faee37653E.exit.i.i.i" ] ; 3 uses
  store i64 %storemerge.i.i, ptr %i.a, align 8, !noalias !306
  %exitcond.not.i.i4 = icmp eq i64 %i.ae, 0
  br i1 %exitcond.not.i.i4, label %.outer.i.i._crit_edge, label %.lr.ph

_ZN10serde_json3ser27format_escaped_str_contents17h0be6c79376bb7350E.exit.i: ; preds = %_ZN10serde_json3ser9Formatter21write_string_fragment17h77e544e74d973200E.exit.i.i, %.outer.i.i._crit_edge
  %i.bo = phi i64 [ %.lcssa3, %.outer.i.i._crit_edge ], [ %i.u, %_ZN10serde_json3ser9Formatter21write_string_fragment17h77e544e74d973200E.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.bp = load i64, ptr %.0.val, align 8, !range !14, !alias.scope !337, !noalias !338, !noundef !13
  %i.bq = icmp eq i64 %i.bp, %i.bo
  br i1 %i.bq, label %bb.o, label %_ZN10serde_json3ser18format_escaped_str17hd4696b7881c551faE.exit, !prof !15

bb.o:                                             ; preds = %_ZN10serde_json3ser27format_escaped_str_contents17h0be6c79376bb7350E.exit.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf73253a6d4574d3aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.bo, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !339
  %.pre.i.i.i.i.i.i9.i = load i64, ptr %i.a, align 8, !alias.scope !340, !noalias !338
  br label %_ZN10serde_json3ser18format_escaped_str17hd4696b7881c551faE.exit

_ZN10serde_json3ser18format_escaped_str17hd4696b7881c551faE.exit: ; preds = %_ZN10serde_json3ser27format_escaped_str_contents17h0be6c79376bb7350E.exit.i, %bb.o
  %i.br = phi i64 [ %i.bo, %_ZN10serde_json3ser27format_escaped_str_contents17h0be6c79376bb7350E.exit.i ], [ %.pre.i.i.i.i.i.i9.i, %bb.o ] ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load ptr, ptr %i.g, align 8, !alias.scope !340, !noalias !338, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 34, ptr %i.bu, align 1, !noalias !341
  %i.bv = add nuw i64 %i.br, 1
  store i64 %i.bv, ptr %i.a, align 8, !alias.scope !340, !noalias !338
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h941ddf5de4dbe83dE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 7 uses
  %.promoted.i.i = load i8, ptr %i.a, align 1, !alias.scope !359 ; 7 uses
  %.promoted19.i.i = load i64, ptr %0, align 8, !alias.scope !360 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !360, !nonnull !13, !align !16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !360 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !360 ; 8 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.f, %.val1.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8, !alias.scope !360 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !17, !alias.scope !360
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !360 ; 4 uses
  %.promoted22.i.i = load i64, ptr %i.d, align 8, !alias.scope !360 ; 2 uses
  %.not.i.i.i.fr.i.i = freeze i1 %.not.i.i.i.i.i
  br i1 %.not.i.i.i.fr.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a
  %i.q = icmp ult i64 %i.f, %.promoted22.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted19.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.us.i.i
  %or.cond.not.i.i.i.us.fr.i.i = freeze i1 %or.cond.not.i.i.i.us.i.i ; 2 uses
  %i.r = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted19.i.i
  %.fr44.i.i = freeze i64 %i.r                    ; 2 uses
  %.not.i.us.i.i = icmp eq i64 %.fr44.i.i, 0      ; 2 uses
  %.fr.i.i = freeze i1 %i.q
  br i1 %.fr.i.i, label %.split.us.split.us.i.i, label %.split.us.split.i.i

.split.us.split.us.i.i:                           ; preds = %.split.us.i.i
  br i1 %or.cond.not.i.i.i.us.fr.i.i, label %.split.us.split.us.split.us.i.i, label %.split.us.split.us.split.i.i

.split.us.split.us.split.us.i.i:                  ; preds = %.split.us.split.us.i.i
  br i1 %.not.i.us.i.i, label %.split.us.split.us.split.us.split.us.i.i, label %.split.us.split.us.split.us.split.i.i

.split.us.split.us.split.us.split.us.i.i:         ; preds = %.split.us.split.us.split.us.i.i
  %i.s = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.s, label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.us.us.us.i.i"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.us.us.us.i.i": ; preds = %.split.us.split.us.split.us.split.us.i.i
  store i8 1, ptr %i.a, align 1, !alias.scope !361
  br label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit

.split.us.split.us.split.us.split.i.i:            ; preds = %.split.us.split.us.split.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.t = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.t, label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit, label %.split26.us.sink.split.i.i

.split.us.split.us.split.i.i:                     ; preds = %.split.us.split.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.u = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.u, label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.i.i"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.i.i": ; preds = %.split.us.split.us.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  store i8 1, ptr %i.a, align 1, !alias.scope !361
  br label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit

.split.us.split.i.i:                              ; preds = %.split.us.i.i
  br i1 %or.cond.not.i.i.i.us.fr.i.i, label %.split.us.split.split.us.i.i, label %.split.us.split.split.i.i

.split.us.split.split.us.i.i:                     ; preds = %.split.us.split.i.i
  br i1 %.not.i.us.i.i, label %.split.us.split.split.us.split.us.i.i, label %.split.us.split.split.us.split.i.i

.split.us.split.split.us.split.us.i.i:            ; preds = %.split.us.split.split.us.i.i
  %i.v = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.v, label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit, label %.lr.ph.i.i.i.us.us.us.us.i.i

.lr.ph.i.i.i.us.us.us.us.i.i:                     ; preds = %.split.us.split.split.us.split.us.i.i
  store i8 1, ptr %i.a, align 1, !alias.scope !361
  br label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit

.split.us.split.split.us.split.i.i:               ; preds = %.split.us.split.split.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.w = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.w, label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit, label %.split26.us.sink.split.i.i

.split.us.split.split.i.i:                        ; preds = %.split.us.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.x = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.x, label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit, label %.lr.ph.i.i.i.us.i.i

.lr.ph.i.i.i.us.i.i:                              ; preds = %.split.us.split.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  store i8 1, ptr %i.a, align 1, !alias.scope !361
  br label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit

.split.i.i:                                       ; preds = %bb.a, %select.unfold.i.i
  %i.y = phi i64 [ %i.av, %select.unfold.i.i ], [ %.promoted22.i.i, %bb.a ] ; 3 uses
  %.lcssa1721.i.i = phi i64 [ %.lcssa1720.i.i, %select.unfold.i.i ], [ %.promoted19.i.i, %bb.a ] ; 4 uses
  %i.z = phi i8 [ %i.aw, %select.unfold.i.i ], [ %.promoted.i.i, %bb.a ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit, label %bb.b

bb.b:                                             ; preds = %.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ab = icmp ult i64 %i.f, %i.y
  br i1 %i.ab, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !365 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.ac = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.ap, %bb.e ] ; 4 uses
  %i.ad = sub nuw i64 %i.f, %i.ac                 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ac ; 2 uses
  %i.af = icmp ult i64 %i.ad, 16
  br i1 %i.af, label %.preheader.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.f, %i.ac
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !366, !noalias !367, !noundef !13
  %i.ai = icmp eq i8 %i.ah, %.pre.i.i.i.i.i
  br i1 %i.ai, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.aj, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ak = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.ad), !noalias !367 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = extractvalue { i64, i64 } %i.ak, 1
  %i.an = trunc nuw i64 %i.al to i1
  br i1 %i.an, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i.i = phi i64 [ %i.am, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ao = add i64 %i.ac, 1
  %i.ap = add i64 %i.ao, %.sroa.4.0.i27.i.i.i.i.i ; 10 uses
  store i64 %i.ap, ptr %i.d, align 8, !alias.scope !365
  %.not20.i.i.i.i.i = icmp ult i64 %i.ap, %i.j
  %.not21.i.i.i.i.i = icmp ugt i64 %i.ap, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not20.i.i.i.i.i, %.not21.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.f

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.d
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !365
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i"

bb.e:                                             ; preds = %bb.f, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  %i.aq = icmp ult i64 %i.f, %i.ap
  br i1 %i.aq, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i", label %bb.c

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  %i.ar = sub nuw i64 %i.ap, %i.j                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ar
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.g, i64 %i.j), !noalias !368
  %i.at = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.at, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i.i", label %bb.e

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i.i": ; preds = %bb.f
  store i64 %i.ap, ptr %0, align 8, !alias.scope !359
  br label %select.unfold.i.i

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i": ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i, %bb.b
  %i.au = phi i64 [ %i.y, %bb.b ], [ %i.f, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i ], [ %i.ap, %bb.e ]
  store i8 1, ptr %i.a, align 1, !alias.scope !361
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa1721.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit

select.unfold.i.i:                                ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i.i"
  %i.av = phi i64 [ %i.ap, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i.i" ], [ %i.au, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i" ]
  %.lcssa1720.i.i = phi i64 [ %i.ap, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i.i" ], [ %.lcssa1721.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i" ]
  %i.aw = phi i8 [ 0, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i.i" ], [ 1, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i" ]
  %.pn.i.i = phi i64 [ %i.ar, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i.i" ], [ %.pre2.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i" ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa1721.i.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.4.1.i.i.i.i, 0
  br i1 %.not.i.i.i, label %.split.i.i, label %.split26.us.i.i

.split26.us.sink.split.i.i:                       ; preds = %.split.us.split.split.us.split.i.i, %.split.us.split.us.split.us.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  store i8 1, ptr %i.a, align 1, !alias.scope !361
  br label %.split26.us.i.i

.split26.us.i.i:                                  ; preds = %select.unfold.i.i, %.split26.us.sink.split.i.i
  %.us-phi.i.i = phi i64 [ %.fr44.i.i, %.split26.us.sink.split.i.i ], [ %.sroa.4.1.i.i.i.i, %select.unfold.i.i ]
  %.us-phi27.i.i = phi i64 [ %.promoted19.i.i, %.split26.us.sink.split.i.i ], [ %.lcssa1721.i.i, %select.unfold.i.i ]
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.us-phi27.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit

_ZN4core4iter6traits8iterator8Iterator4find17h8cba85aecf40790bE.exit: ; preds = %.split.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i", %.split.us.split.us.split.us.split.us.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.us.us.us.i.i", %.split.us.split.us.split.us.split.i.i, %.split.us.split.us.split.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.i.i", %.split.us.split.split.us.split.us.i.i, %.lr.ph.i.i.i.us.us.us.us.i.i, %.split.us.split.split.us.split.i.i, %.split.us.split.split.i.i, %.lr.ph.i.i.i.us.i.i, %.split26.us.i.i
  %.sroa.3.0.i.i = phi i64 [ %.us-phi.i.i, %.split26.us.i.i ], [ undef, %.split.us.split.split.us.split.us.i.i ], [ undef, %.split.us.split.split.us.split.i.i ], [ undef, %.split.us.split.us.split.i.i ], [ undef, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.i.i" ], [ undef, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.us.us.us.i.i" ], [ undef, %.split.us.split.us.split.us.split.us.i.i ], [ undef, %.split.us.split.us.split.us.split.i.i ], [ undef, %.split.us.split.split.i.i ], [ undef, %.lr.ph.i.i.i.us.i.i ], [ undef, %.lr.ph.i.i.i.us.us.us.us.i.i ], [ undef, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i" ], [ undef, %.split.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %.split26.us.i.i ], [ null, %.split.us.split.split.us.split.us.i.i ], [ null, %.split.us.split.split.us.split.i.i ], [ null, %.split.us.split.us.split.i.i ], [ null, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.i.i" ], [ null, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.us.us.us.us.us.i.i" ], [ null, %.split.us.split.us.split.us.split.us.i.i ], [ null, %.split.us.split.us.split.us.split.i.i ], [ null, %.split.us.split.split.i.i ], [ null, %.lr.ph.i.i.i.us.i.i ], [ null, %.lr.ph.i.i.i.us.us.us.us.i.i ], [ null, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i" ], [ null, %.split.i.i ]
  %i.ax = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.ay = insertvalue { ptr, i64 } %i.ax, i64 %.sroa.3.0.i.i, 1
  ret { ptr, i64 } %i.ay
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10serde_core3ser10Serializer11collect_seq17h3949bf190bdcc70eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.e, align 8, !noundef !13 ; 3 uses
  %.idx = mul nuw nsw i64 %.val9, 72
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h40d5774207ec4ffdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 %.val9)
  %i.g = load i64, ptr %i.b, align 8, !range !18, !noundef !13
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !13, !align !19, !noundef !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeVec$GT$17hc788f4b1bc9ad7dfE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = icmp eq i64 %.val9, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.noexc
  %.sroa.0.01827 = phi ptr [ %.val, %.lr.ph ], [ %i.o, %.noexc ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01827, i64 72 ; 2 uses
  invoke fastcc void @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hc187bf72503bed52E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.01827)
          to label %.noexc14 unwind label %bb.i, !inline_history !369

.noexc14:                                         ; preds = %bb.d
  %i.p = load i64, ptr %i.a, align 8, !range !20, !noundef !13
  %i.q = icmp eq i64 %i.p, -9223372036854775803
  br i1 %i.q, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.noexc14
  %i.r = load i64, ptr %i.m, align 8, !alias.scope !385, !noalias !386, !noundef !13 ; 3 uses
  %i.s = load i64, ptr %i.c, align 8, !range !14, !alias.scope !385, !noalias !386, !noundef !13
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.f, label %.noexc

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h877425924756c09cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @491)
          to label %.noexc unwind label %bb.g, !noalias !387, !inline_history !369

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.a) #33
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.thread.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i", %bb.qi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff), !noalias !7542
  store ptr %i.fh, ptr %i.ff, align 8, !noalias !7542
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !7542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !7557
  store ptr @99, ptr %i.em, align 8, !noalias !7558
  store i64 1, ptr %.sroa.4.0..sroa_idx.i205, align 8, !noalias !7558
  store ptr %i.ff, ptr %.sroa.5.0..sroa_idx129.i, align 8, !noalias !7558
  store i64 1, ptr %.sroa.6.0..sroa_idx.i206, align 8, !noalias !7558
  store ptr null, ptr %.sroa.7.0..sroa_idx.i207, align 8, !noalias !7558
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.em)
          to label %bb.qk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qj:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i"
  %i.azp = phi i64 [ %.pre378.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i" ], [ %i.azl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i" ]
  %i.azq = phi ptr [ %.pre376.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i" ], [ %i.azn, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i" ]
  %i.azr = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @101, i64 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.azq, i64 noundef %i.azp)
          to label %bb.qo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qk:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !7557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !noalias !7542
  call void @llvm.experimental.noalias.scope.decl(metadata !7559)
  call void @llvm.experimental.noalias.scope.decl(metadata !7560)
  %i.azs = load i64, ptr %i.awe, align 8, !alias.scope !7559, !noalias !7542, !noundef !13 ; 3 uses
  %i.azt = load i64, ptr %i.fj, align 8, !range !14, !alias.scope !7559, !noalias !7542, !noundef !13
  %i.azu = icmp eq i64 %i.azs, %i.azt
  br i1 %i.azu, label %bb.ql, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i"

bb.ql:                                            ; preds = %bb.qk
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @100)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i" unwind label %bb.qm, !noalias !7560

bb.qm:                                            ; preds = %bb.ql
  %i.azv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i90.i = load i64, ptr %i.fg, align 8, !alias.scope !7560, !noalias !7542 ; 2 uses
  %i.azw = icmp eq i64 %.val.i90.i, 0
  br i1 %i.azw, label %.body.i209, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.azx = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.val2.i91.i = load ptr, ptr %i.azx, align 8, !alias.scope !7560, !noalias !7542, !nonnull !13, !noundef !13
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i91.i, i64 noundef %.val.i90.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7560
  br label %.body.i209

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i": ; preds = %bb.ql, %bb.qk
  %i.azy = load ptr, ptr %i.awd, align 8, !alias.scope !7559, !noalias !7542, !nonnull !13, !noundef !13
  %i.azz = getelementptr inbounds nuw [24 x i8], ptr %i.azy, i64 %i.azs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.azz, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fg, i64 24, i1 false)
  %i.baa = add i64 %i.azs, 1
  store i64 %i.baa, ptr %i.awe, align 8, !alias.scope !7559, !noalias !7542
  %.pre.i = load ptr, ptr %i.fh, align 8, !noalias !7542 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre376.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert377.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre378.i = load i64, ptr %.phi.trans.insert377.i, align 8
  br label %bb.qj

bb.qo:                                            ; preds = %bb.qj
  br i1 %i.azr, label %bb.rj, label %bb.qp

bb.qp:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit103.i", %bb.qo
  %i.bab = load ptr, ptr %i.fh, align 8, !noalias !7542, !nonnull !13, !align !19, !noundef !13 ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 8
  %i.bad = load ptr, ptr %i.bac, align 8, !nonnull !13, !noundef !13
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bab, i64 16
  %i.baf = load i64, ptr %i.bae, align 8, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !7561
  store i64 0, ptr %i.ek, align 8, !alias.scope !7562, !noalias !7563
  store i64 %i.baf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !7562, !noalias !7563
  store ptr %i.bad, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !7562, !noalias !7563
  store i64 %i.baf, ptr %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7562, !noalias !7563
  store i64 0, ptr %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7562, !noalias !7563
  store i64 %i.baf, ptr %.sroa.515.sroa.6.0..sroa.515.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7562, !noalias !7563
  store i32 47, ptr %.sroa.515.sroa.7.0..sroa.515.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7562, !noalias !7563
  store i32 47, ptr %.sroa.515.sroa.8.0..sroa.515.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !7562, !noalias !7563
  store i8 1, ptr %.sroa.515.sroa.9.0..sroa.515.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7562, !noalias !7563
  store i8 1, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !alias.scope !7562, !noalias !7563
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !alias.scope !7562, !noalias !7563
  %i.bag = invoke fastcc { ptr, i64 } @"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h941ddf5de4dbe83dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ek)
          to label %.noexc92.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc92.i:                                       ; preds = %bb.qp
  %i.bah = extractvalue { ptr, i64 } %i.bag, 0    ; 2 uses
  %i.bai = extractvalue { ptr, i64 } %i.bag, 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bah, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hc57511c88c03fb62E.exit.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc92.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7564
  %i.baj = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #37, !noalias !7564 ; 7 uses
  %i.bak = icmp eq ptr %i.baj, null
  br i1 %i.bak, label %bb.qq, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i.i.i.i.i.i"

bb.qq:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 64, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #38
          to label %.noexc93.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93.i:                                       ; preds = %bb.qq
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"
  store ptr %i.bah, ptr %i.baj, align 8, !noalias !7565
  %i.bal = getelementptr inbounds nuw i8, ptr %i.baj, i64 8
  store i64 %i.bai, ptr %i.bal, align 8, !noalias !7565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !7566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, ptr noundef nonnull align 8 dereferenceable(72) %i.ek, i64 72, i1 false), !noalias !7567
  %i.bam = invoke fastcc { ptr, i64 } @"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h941ddf5de4dbe83dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ej)
          to label %.noexc.i.i.i.i.i.i211 unwind label %.loopexit.split-lp.thread.i.i.i.i.i.i, !noalias !7565 ; 2 uses

.noexc.i.i.i.i.i.i211:                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i.i.i.i.i.i"
  %i.ban = extractvalue { ptr, i64 } %i.bam, 0    ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.ban, null
  br i1 %.not1.i.i.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.preheader.i:                 ; preds = %.noexc.i.i.i.i.i.i211
  %i.bao = extractvalue { ptr, i64 } %i.bam, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i212

.lr.ph.i.i.i.i.i.i.i.i212:                        ; preds = %.noexc11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i
  %.sroa.0160.0.i = phi i64 [ %.sroa.0160.1.i, %.noexc11.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.i ] ; 5 uses
  %.sroa.8164.0.i = phi ptr [ %.sroa.8164.1.i, %.noexc11.i.i.i.i.i.i ], [ %i.baj, %.lr.ph.i.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.bap = phi ptr [ %i.bbi, %.noexc11.i.i.i.i.i.i ], [ %i.baj, %.lr.ph.i.i.i.i.i.i.i.preheader.i ]
  %i.baq = phi i64 [ %i.bbj, %.noexc11.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.bar = phi i64 [ %i.bbm, %.noexc11.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %.pn.i.i.i.i.i.i.i.i = phi i64 [ %.us-phi.i.i.i.i, %.noexc11.i.i.i.i.i.i ], [ %i.bao, %.lr.ph.i.i.i.i.i.i.i.preheader.i ]
  %i.bas = phi ptr [ %.sroa.0.1.i.i.i.i.i.i, %.noexc11.i.i.i.i.i.i ], [ %i.ban, %.lr.ph.i.i.i.i.i.i.i.preheader.i ]
  %i.bat = icmp samesign ult i64 %i.bar, 576460752303423488
  call void @llvm.assume(i1 %i.bat)
  %i.bau = icmp eq i64 %i.bar, %i.baq
  br i1 %i.bau, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i", label %bb.qt

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i212
  %i.bav = add nuw nsw i64 %i.baq, 1
  %i.baw = shl nuw i64 %.sroa.0160.0.i, 1
  %.sroa.0.0.i.i.i127.i = call noundef i64 @llvm.umax.i64(i64 %i.bav, i64 %i.baw) ; 2 uses
  %.sroa.0.0.i32.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i127.i, i64 4) ; 3 uses
  %i.bax = shl i64 %.sroa.0.0.i32.i.i.i, 4        ; 2 uses
  %i.bay = icmp ugt i64 %.sroa.0.0.i.i.i127.i, 1152921504606846975
  %i.baz = icmp ugt i64 %i.bax, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.bay, %i.baz
  br i1 %or.cond.i.i.i.i, label %.loopexit192.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !7568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !7568
  %i.bba = icmp eq i64 %.sroa.0160.0.i, 0
  br i1 %i.bba, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9ebf92d9a3dea4b6E.exit.i.i.i", label %bb.qr

bb.qr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8164.0.i) ]
  %i.bbb = shl nuw i64 %.sroa.0160.0.i, 4
  store ptr %.sroa.8164.0.i, ptr %i.ef, align 8, !alias.scope !7569, !noalias !7568
  store i64 %i.bbb, ptr %.sroa.5.0..sroa_idx.i.i.i.i208, align 8, !alias.scope !7569, !noalias !7568
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9ebf92d9a3dea4b6E.exit.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9ebf92d9a3dea4b6E.exit.i.i.i": ; preds = %bb.qr, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sink.i.i.i.i = phi i64 [ 8, %bb.qr ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %i.axd, align 8, !alias.scope !7569, !noalias !7568
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17ha60f7e286bcb63feE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.eg, i64 noundef range(i64 1, 9) 8, i64 noundef %i.bax, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ef), !noalias !7570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !7568
  %i.bbc = load i64, ptr %i.eg, align 8, !range !34, !noalias !7568, !noundef !13
  %i.bbd = trunc nuw i64 %i.bbc to i1
  br i1 %i.bbd, label %bb.qs, label %.noexc10.i.i.i.i.i.i

bb.qs:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9ebf92d9a3dea4b6E.exit.i.i.i"
  %i.bbe = load i64, ptr %i.axe, align 8, !range !18, !noalias !7568, !noundef !13
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.bbg = load i64, ptr %i.bbf, align 8, !noalias !7568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !7568
  br label %.loopexit192.i

.loopexit192.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i", %bb.qs
  %.sroa.6.0.i.ph.i.i = phi i64 [ %i.bbg, %bb.qs ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i" ]
  %.sroa.04.0.i.ph.i.i = phi i64 [ %i.bbe, %bb.qs ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph.i.i, i64 %.sroa.6.0.i.ph.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #38
          to label %.noexc128.i unwind label %.loopexit.split-lp.i.i.i.i.i.loopexit.split-lp.i

.noexc128.i:                                      ; preds = %.loopexit192.i
  unreachable

.noexc10.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9ebf92d9a3dea4b6E.exit.i.i.i"
  %i.bbh = load ptr, ptr %i.axe, align 8, !noalias !7568, !nonnull !13, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !7568
  br label %bb.qt

bb.qt:                                            ; preds = %.noexc10.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i212
  %.sroa.0160.1.i = phi i64 [ %.sroa.0.0.i32.i.i.i, %.noexc10.i.i.i.i.i.i ], [ %.sroa.0160.0.i, %.lr.ph.i.i.i.i.i.i.i.i212 ] ; 12 uses
  %.sroa.8164.1.i = phi ptr [ %i.bbh, %.noexc10.i.i.i.i.i.i ], [ %.sroa.8164.0.i, %.lr.ph.i.i.i.i.i.i.i.i212 ] ; 12 uses
  %i.bbi = phi ptr [ %i.bbh, %.noexc10.i.i.i.i.i.i ], [ %i.bap, %.lr.ph.i.i.i.i.i.i.i.i212 ] ; 2 uses
  %i.bbj = phi i64 [ %.sroa.0.0.i32.i.i.i, %.noexc10.i.i.i.i.i.i ], [ %i.baq, %.lr.ph.i.i.i.i.i.i.i.i212 ]
  %i.bbk = getelementptr inbounds nuw [16 x i8], ptr %i.bbi, i64 %i.bar ; 2 uses
  store ptr %i.bas, ptr %i.bbk, align 8, !noalias !7571
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 8
  store i64 %.pn.i.i.i.i.i.i.i.i, ptr %i.bbl, align 8, !noalias !7571
  %i.bbm = add nuw nsw i64 %i.bar, 1              ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7572)
  call void @llvm.experimental.noalias.scope.decl(metadata !7573), !noalias !7565
  call void @llvm.experimental.noalias.scope.decl(metadata !7574), !noalias !7565
  %.promoted.i.i.i.i = load i8, ptr %i.axf, align 1, !alias.scope !7575, !noalias !7576 ; 6 uses
  %.promoted19.i.i.i.i = load i64, ptr %i.ej, align 8, !alias.scope !7577, !noalias !7576 ; 7 uses
  %.val.i.i.i.i.i.i213 = load ptr, ptr %i.axg, align 8, !alias.scope !7577, !noalias !7576, !nonnull !13, !align !16 ; 5 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.axh, align 8, !alias.scope !7577, !noalias !7576 ; 3 uses
  %i.bbn = load i64, ptr %i.axj, align 8, !alias.scope !7577, !noalias !7576 ; 22 uses
  %.not.i.i.i.i.i.i.i214 = icmp ugt i64 %i.bbn, %.val1.i.i.i.i.i.i
  %i.bbo = load i8, ptr %i.axl, align 8, !alias.scope !7577, !noalias !7576 ; 2 uses
  %i.bbp = zext nneg i8 %i.bbo to i64             ; 7 uses
  %i.bbq = icmp ult i8 %i.bbo, 5                  ; 2 uses
  %i.bbr = getelementptr i8, ptr %i.axk, i64 %i.bbp
  %i.bbs = getelementptr i8, ptr %i.bbr, i64 -1   ; 2 uses
  %i.bbt = load i8, ptr %i.axm, align 8, !range !17, !alias.scope !7577, !noalias !7576
  %.fr1135 = freeze i8 %i.bbt
  %i.bbu = trunc i8 %.fr1135 to i1                ; 2 uses
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !alias.scope !7577, !noalias !7576 ; 5 uses
  %.promoted22.i.i.i.i = load i64, ptr %i.axi, align 8, !alias.scope !7577, !noalias !7576 ; 5 uses
  %.not.i.i.i.fr.i.i.i.i = freeze i1 %.not.i.i.i.i.i.i.i214
  br i1 %.not.i.i.i.fr.i.i.i.i, label %.split.us.i.i.i.i, label %.split.i.i.i.i.preheader

.split.i.i.i.i.preheader:                         ; preds = %bb.qt
  br i1 %i.bbu, label %.split.i.i.i.i.us, label %.split.i.i.i.i

.split.i.i.i.i.us:                                ; preds = %.split.i.i.i.i.preheader, %select.unfold.i.i.i.i.us
  %.lcssa198283.i.us = phi i64 [ %.lcssa198282.i.us, %select.unfold.i.i.i.i.us ], [ %.promoted19.i.i.i.i, %.split.i.i.i.i.preheader ] ; 2 uses
  %.lcssa274278.i.us = phi i64 [ %.lcssa274276.i.us, %select.unfold.i.i.i.i.us ], [ %.promoted22.i.i.i.i, %.split.i.i.i.i.preheader ] ; 2 uses
  %i.bbv = phi i64 [ %i.bct, %select.unfold.i.i.i.i.us ], [ %.promoted22.i.i.i.i, %.split.i.i.i.i.preheader ] ; 3 uses
  %.lcssa1721.i.i.i.i.us = phi i64 [ %.lcssa1720.i.i.i.i.us, %select.unfold.i.i.i.i.us ], [ %.promoted19.i.i.i.i, %.split.i.i.i.i.preheader ] ; 3 uses
  %i.bbw = phi i8 [ %i.bcu, %select.unfold.i.i.i.i.us ], [ %.promoted.i.i.i.i, %.split.i.i.i.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7578), !noalias !7565
  call void @llvm.experimental.noalias.scope.decl(metadata !7579), !noalias !7565
  %i.bbx = trunc nuw i8 %i.bbw to i1
  br i1 %i.bbx, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %bb.qu

bb.qu:                                            ; preds = %.split.i.i.i.i.us
  call void @llvm.experimental.noalias.scope.decl(metadata !7580), !noalias !7565
  %i.bby = icmp ult i64 %i.bbn, %i.bbv
  br i1 %i.bby, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us", label %.lr.ph.i.i.i.i.i.i.i215.us

.lr.ph.i.i.i.i.i.i.i215.us:                       ; preds = %bb.qu
  call void @llvm.assume(i1 %i.bbq), !noalias !7565
  %.pre.i.i.i.i.i.i.i216.us = load i8, ptr %i.bbs, align 1, !alias.scope !7581, !noalias !7576 ; 2 uses
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qy, %.lr.ph.i.i.i.i.i.i.i215.us
  %i.bbz = phi i64 [ %.lcssa274278.i.us, %.lr.ph.i.i.i.i.i.i.i215.us ], [ %i.bcn, %bb.qy ]
  %i.bca = phi i64 [ %i.bbv, %.lr.ph.i.i.i.i.i.i.i215.us ], [ %i.bcn, %bb.qy ] ; 4 uses
  %i.bcb = sub nuw i64 %i.bbn, %i.bca             ; 3 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i213, i64 %i.bca ; 2 uses
  %i.bcd = icmp ult i64 %i.bcb, 16
  br i1 %i.bcd, label %.preheader.i.i.i.i.i.i.i.i236.us, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.us

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.us: ; preds = %bb.qv
  %i.bce = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i.i.i.i216.us, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bcc, i64 noundef %i.bcb)
          to label %.noexc126.i.us unwind label %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split.us ; 2 uses

.noexc126.i.us:                                   ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.us
  %i.bcf = extractvalue { i64, i64 } %i.bce, 0
  %i.bcg = extractvalue { i64, i64 } %i.bce, 1
  %i.bch = trunc nuw i64 %i.bcf to i1
  br i1 %i.bch, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.us, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us"

.preheader.i.i.i.i.i.i.i.i236.us:                 ; preds = %bb.qv
  %.not.i.i.i.i.i.i.i124.i.us = icmp eq i64 %i.bbn, %i.bca
  br i1 %.not.i.i.i.i.i.i.i124.i.us, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us", label %.lr.ph.i.i.i.i.i.i.i125.i.us

.lr.ph.i.i.i.i.i.i.i125.i.us:                     ; preds = %.preheader.i.i.i.i.i.i.i.i236.us, %bb.qw
  %.sroa.01.05.i.i.i.i.i.i.i.i.us = phi i64 [ %i.bcl, %bb.qw ], [ 0, %.preheader.i.i.i.i.i.i.i.i236.us ] ; 3 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bcc, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.us
  %i.bcj = load i8, ptr %i.bci, align 1, !alias.scope !7582, !noalias !7583, !noundef !13
  %i.bck = icmp eq i8 %i.bcj, %.pre.i.i.i.i.i.i.i216.us
  br i1 %i.bck, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.us, label %bb.qw

bb.qw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i125.i.us
  %i.bcl = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.us = icmp eq i64 %i.bcl, %i.bcb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.us, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us", label %.lr.ph.i.i.i.i.i.i.i125.i.us

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i125.i.us, %.noexc126.i.us
  %.sroa.4.0.i27.i.i.i.i.i.i.i.us = phi i64 [ %i.bcg, %.noexc126.i.us ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.i125.i.us ]
  %i.bcm = add i64 %i.bca, 1
  %i.bcn = add i64 %i.bcm, %.sroa.4.0.i27.i.i.i.i.i.i.i.us ; 12 uses
  %.not20.i.i.i.i.i.i.i.us = icmp ult i64 %i.bcn, %i.bbp
  %.not21.i.i.i.i.i.i.i.us = icmp ugt i64 %i.bcn, %.val1.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i234.us = or i1 %.not20.i.i.i.i.i.i.i.us, %.not21.i.i.i.i.i.i.i.us
  br i1 %or.cond.i.i.i.i.i.i.i234.us, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.us
  %i.bco = sub nuw i64 %i.bcn, %i.bbp             ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i213, i64 %i.bco
  %bcmp.i.i.i.i.i.i.i235.us = call i32 @bcmp(ptr nonnull %i.bcp, ptr nonnull %i.axk, i64 %i.bbp), !noalias !7584
  %i.bcq = icmp eq i32 %bcmp.i.i.i.i.i.i.i235.us, 0
  br i1 %i.bcq, label %select.unfold.i.i.i.i.us, label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.us
  %i.bcr = icmp ult i64 %i.bbn, %i.bcn
  br i1 %i.bcr, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us", label %bb.qv

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us": ; preds = %.noexc126.i.us, %.preheader.i.i.i.i.i.i.i.i236.us, %bb.qy, %bb.qw, %bb.qu
  %.lcssa274277.i.us = phi i64 [ %.lcssa274278.i.us, %bb.qu ], [ %i.bbn, %bb.qw ], [ %i.bbn, %.preheader.i.i.i.i.i.i.i.i236.us ], [ %i.bbn, %.noexc126.i.us ], [ %i.bcn, %bb.qy ]
  %i.bcs = phi i64 [ %i.bbv, %bb.qu ], [ %i.bbn, %bb.qw ], [ %i.bbn, %.preheader.i.i.i.i.i.i.i.i236.us ], [ %i.bbn, %.noexc126.i.us ], [ %i.bcn, %bb.qy ]
  store i8 1, ptr %i.axf, align 1, !alias.scope !7585, !noalias !7576
  br label %select.unfold.i.i.i.i.us

select.unfold.i.i.i.i.us:                         ; preds = %bb.qx, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us"
  %.lcssa198282.i.us = phi i64 [ %.lcssa198283.i.us, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us" ], [ %i.bcn, %bb.qx ] ; 2 uses
  %.lcssa274276.i.us = phi i64 [ %.lcssa274277.i.us, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us" ], [ %i.bcn, %bb.qx ] ; 2 uses
  %i.bct = phi i64 [ %i.bcs, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us" ], [ %i.bcn, %bb.qx ]
  %.lcssa1720.i.i.i.i.us = phi i64 [ %.lcssa1721.i.i.i.i.us, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us" ], [ %i.bcn, %bb.qx ]
  %i.bcu = phi i8 [ 1, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us" ], [ 0, %bb.qx ]
  %.pn.i.i.i.i232.us = phi i64 [ %.pre2.i.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i.us" ], [ %i.bco, %bb.qx ]
  %.sroa.4.1.i.i.i.i.i.i.us = sub nuw i64 %.pn.i.i.i.i232.us, %.lcssa1721.i.i.i.i.us ; 2 uses
  %.not.i.i.i.i.i233.us = icmp eq i64 %.sroa.4.1.i.i.i.i.i.i.us, 0
  br i1 %.not.i.i.i.i.i233.us, label %.split.i.i.i.i.us, label %.noexc11.i.i.i.i.i.loopexit.i

.loopexit.split-lp.i.i.i.i.i.loopexit.i.split.us: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.us
  %lpad.loopexit188.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.loopexit.i

.split.us.i.i.i.i:                                ; preds = %bb.qt
  %i.bcv = icmp ult i64 %i.bbn, %.promoted22.i.i.i.i
  %.not.i3.i.i.us.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i, %.promoted19.i.i.i.i
  %.not.i3.i.i.us.i.i.i.i.fr = freeze i1 %.not.i3.i.i.us.i.i.i.i
  %or.cond.not.i.i.i.us.i.i.i.i = or i1 %.not.i3.i.i.us.i.i.i.i.fr, %i.bbu ; 2 uses
  %i.bcw = sub nuw i64 %.pre2.i.i.i.i.i.i.i, %.promoted19.i.i.i.i
  %.fr44.i.i.i.i = freeze i64 %i.bcw              ; 2 uses
  %.not.i.us.i.i.i.i = icmp eq i64 %.fr44.i.i.i.i, 0 ; 2 uses
  %.fr.i.i.i.i = freeze i1 %i.bcv
  br i1 %.fr.i.i.i.i, label %.split.us.split.us.split.us.i.i.i.i.a, label %.split.us.split.split.us.i.i.i.i.a

.split.us.split.us.split.us.i.i.i.i.a:            ; preds = %.split.us.i.i.i.i
  br i1 %or.cond.not.i.i.i.us.i.i.i.i, label %.split.us.split.us.split.us.split.us.i.i.i.i, label %.split.us.split.us.split.i.i.i.i

.split.us.split.us.split.us.split.us.i.i.i.i:     ; preds = %.split.us.split.us.split.us.i.i.i.i.a
  br i1 %.not.i.us.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %.split.us.split.us.split.us.split.i.i.i.i

.split.us.split.us.split.us.split.i.i.i.i:        ; preds = %.split.us.split.us.split.us.split.us.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7578), !noalias !7565
  call void @llvm.experimental.noalias.scope.decl(metadata !7579), !noalias !7565
  %i.bcx = trunc nuw i8 %.promoted.i.i.i.i to i1
  br i1 %i.bcx, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %.split26.us.sink.split.i.i.i.i

.split.us.split.us.split.i.i.i.i:                 ; preds = %.split.us.split.us.split.us.i.i.i.i.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7578), !noalias !7565
  call void @llvm.experimental.noalias.scope.decl(metadata !7579), !noalias !7565
  %i.bcy = trunc nuw i8 %.promoted.i.i.i.i to i1
  br i1 %i.bcy, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.sink.split.i"

.split.us.split.split.us.i.i.i.i.a:               ; preds = %.split.us.i.i.i.i
  br i1 %or.cond.not.i.i.i.us.i.i.i.i, label %.split.us.split.split.us.split.us.i.i.i.i, label %.split.us.split.split.i.i.i.i

.split.us.split.split.us.split.us.i.i.i.i:        ; preds = %.split.us.split.split.us.i.i.i.i.a
  br i1 %.not.i.us.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %.split.us.split.split.us.split.i.i.i.i

.split.us.split.split.us.split.i.i.i.i:           ; preds = %.split.us.split.split.us.split.us.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7578), !noalias !7565
  call void @llvm.experimental.noalias.scope.decl(metadata !7579), !noalias !7565
  %i.bcz = trunc nuw i8 %.promoted.i.i.i.i to i1
  br i1 %i.bcz, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %.split26.us.sink.split.i.i.i.i

.split.us.split.split.i.i.i.i:                    ; preds = %.split.us.split.split.us.i.i.i.i.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7578), !noalias !7565
  call void @llvm.experimental.noalias.scope.decl(metadata !7579), !noalias !7565
  %i.bda = trunc nuw i8 %.promoted.i.i.i.i to i1
  br i1 %i.bda, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.sink.split.i"

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %.lcssa198283.i = phi i64 [ %.lcssa198282.i, %select.unfold.i.i.i.i ], [ %.promoted19.i.i.i.i, %.split.i.i.i.i.preheader ] ; 2 uses
  %.lcssa274278.i = phi i64 [ %.lcssa274276.i, %select.unfold.i.i.i.i ], [ %.promoted22.i.i.i.i, %.split.i.i.i.i.preheader ] ; 2 uses
  %i.bdb = phi i64 [ %i.bdz, %select.unfold.i.i.i.i ], [ %.promoted22.i.i.i.i, %.split.i.i.i.i.preheader ] ; 3 uses
  %.lcssa1721.i.i.i.i = phi i64 [ %.lcssa1720.i.i.i.i, %select.unfold.i.i.i.i ], [ %.promoted19.i.i.i.i, %.split.i.i.i.i.preheader ] ; 4 uses
  %i.bdc = phi i8 [ %i.bea, %select.unfold.i.i.i.i ], [ %.promoted.i.i.i.i, %.split.i.i.i.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7578), !noalias !7565
  call void @llvm.experimental.noalias.scope.decl(metadata !7579), !noalias !7565
  %i.bdd = trunc nuw i8 %i.bdc to i1
  br i1 %i.bdd, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %bb.qz

bb.qz:                                            ; preds = %.split.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7580), !noalias !7565
  %i.bde = icmp ult i64 %i.bbn, %i.bdb
  br i1 %i.bde, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %bb.qz
  call void @llvm.assume(i1 %i.bbq), !noalias !7565
  %.pre.i.i.i.i.i.i.i216 = load i8, ptr %i.bbs, align 1, !alias.scope !7581, !noalias !7576 ; 2 uses
  br label %bb.ra

bb.ra:                                            ; preds = %bb.rc, %.lr.ph.i.i.i.i.i.i.i215
  %i.bdf = phi i64 [ %.lcssa274278.i, %.lr.ph.i.i.i.i.i.i.i215 ], [ %i.bdt, %bb.rc ]
  %i.bdg = phi i64 [ %i.bdb, %.lr.ph.i.i.i.i.i.i.i215 ], [ %i.bdt, %bb.rc ] ; 4 uses
  %i.bdh = sub nuw i64 %i.bbn, %i.bdg             ; 3 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i213, i64 %i.bdg ; 2 uses
  %i.bdj = icmp ult i64 %i.bdh, 16
  br i1 %i.bdj, label %.preheader.i.i.i.i.i.i.i.i236, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i236:                    ; preds = %bb.ra
  %.not.i.i.i.i.i.i.i124.i = icmp eq i64 %i.bbn, %i.bdg
  br i1 %.not.i.i.i.i.i.i.i124.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i125.i

.lr.ph.i.i.i.i.i.i.i125.i:                        ; preds = %.preheader.i.i.i.i.i.i.i.i236, %bb.rb
  %.sroa.01.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bdn, %bb.rb ], [ 0, %.preheader.i.i.i.i.i.i.i.i236 ] ; 3 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdi, i64 %.sroa.01.05.i.i.i.i.i.i.i.i
  %i.bdl = load i8, ptr %i.bdk, align 1, !alias.scope !7582, !noalias !7583, !noundef !13
  %i.bdm = icmp eq i8 %i.bdl, %.pre.i.i.i.i.i.i.i216
  br i1 %i.bdm, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i, label %bb.rb

bb.rb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i125.i
  %i.bdn = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bdn, %i.bdh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i125.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i: ; preds = %bb.ra
  %i.bdo = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i.i.i.i216, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bdi, i64 noundef %i.bdh)
          to label %.noexc126.i unwind label %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split ; 2 uses

.noexc126.i:                                      ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i
  %i.bdp = extractvalue { i64, i64 } %i.bdo, 0
  %i.bdq = extractvalue { i64, i64 } %i.bdo, 1
  %i.bdr = trunc nuw i64 %i.bdp to i1
  br i1 %i.bdr, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i125.i, %.noexc126.i
  %.sroa.4.0.i27.i.i.i.i.i.i.i = phi i64 [ %i.bdq, %.noexc126.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i125.i ]
  %i.bds = add i64 %i.bdg, 1
  %i.bdt = add i64 %i.bds, %.sroa.4.0.i27.i.i.i.i.i.i.i ; 12 uses
  %.not20.i.i.i.i.i.i.i = icmp ult i64 %i.bdt, %i.bbp
  %.not21.i.i.i.i.i.i.i = icmp ugt i64 %i.bdt, %.val1.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i234 = or i1 %.not20.i.i.i.i.i.i.i, %.not21.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i234, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rd, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i
  %i.bdu = icmp ult i64 %i.bbn, %i.bdt
  br i1 %i.bdu, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i", label %bb.ra

bb.rd:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i
  %i.bdv = sub nuw i64 %i.bdt, %i.bbp             ; 2 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i213, i64 %i.bdv
  %bcmp.i.i.i.i.i.i.i235 = call i32 @bcmp(ptr nonnull %i.bdw, ptr nonnull %i.axk, i64 %i.bbp), !noalias !7584
  %i.bdx = icmp eq i32 %bcmp.i.i.i.i.i.i.i235, 0
  br i1 %i.bdx, label %select.unfold.i.i.i.i, label %bb.rc

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i": ; preds = %bb.rc, %.noexc126.i, %.preheader.i.i.i.i.i.i.i.i236, %bb.rb, %bb.qz
  %.lcssa274277.i = phi i64 [ %.lcssa274278.i, %bb.qz ], [ %i.bbn, %bb.rb ], [ %i.bbn, %.preheader.i.i.i.i.i.i.i.i236 ], [ %i.bbn, %.noexc126.i ], [ %i.bdt, %bb.rc ]
  %i.bdy = phi i64 [ %i.bdb, %bb.qz ], [ %i.bbn, %bb.rb ], [ %i.bbn, %.preheader.i.i.i.i.i.i.i.i236 ], [ %i.bbn, %.noexc126.i ], [ %i.bdt, %bb.rc ]
  store i8 1, ptr %i.axf, align 1, !alias.scope !7585, !noalias !7576
  %.not.i3.i.i.i.i.i.i.not = icmp eq i64 %.pre2.i.i.i.i.i.i.i, %.lcssa1721.i.i.i.i
  br i1 %.not.i3.i.i.i.i.i.i.not, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", label %select.unfold.i.i.i.i

select.unfold.i.i.i.i:                            ; preds = %bb.rd, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i"
  %.lcssa198282.i = phi i64 [ %.lcssa198283.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ %i.bdt, %bb.rd ] ; 2 uses
  %.lcssa274276.i = phi i64 [ %.lcssa274277.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ %i.bdt, %bb.rd ] ; 2 uses
  %i.bdz = phi i64 [ %i.bdy, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ %i.bdt, %bb.rd ]
  %.lcssa1720.i.i.i.i = phi i64 [ %.lcssa1721.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ %i.bdt, %bb.rd ]
  %i.bea = phi i8 [ 1, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ 0, %bb.rd ]
  %.pn.i.i.i.i232 = phi i64 [ %.pre2.i.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ %i.bdv, %bb.rd ]
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i232, %.lcssa1721.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i233 = icmp eq i64 %.sroa.4.1.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i233, label %.split.i.i.i.i, label %.noexc11.i.i.i.i.i.loopexit.i

.split26.us.sink.split.i.i.i.i:                   ; preds = %.split.us.split.split.us.split.i.i.i.i, %.split.us.split.us.split.us.split.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7580), !noalias !7565
  store i8 1, ptr %i.axf, align 1, !alias.scope !7585, !noalias !7576
  br label %.noexc11.i.i.i.i.i.i

.noexc11.i.i.i.i.i.loopexit.i:                    ; preds = %select.unfold.i.i.i.i, %select.unfold.i.i.i.i.us
  %.us-phi1131 = phi i64 [ %.lcssa198282.i.us, %select.unfold.i.i.i.i.us ], [ %.lcssa198282.i, %select.unfold.i.i.i.i ]
  %.us-phi1132 = phi i64 [ %.lcssa274276.i.us, %select.unfold.i.i.i.i.us ], [ %.lcssa274276.i, %select.unfold.i.i.i.i ]
  %.us-phi1133 = phi i64 [ %.sroa.4.1.i.i.i.i.i.i.us, %select.unfold.i.i.i.i.us ], [ %.sroa.4.1.i.i.i.i.i.i, %select.unfold.i.i.i.i ]
  %.us-phi1134 = phi i64 [ %.lcssa1721.i.i.i.i.us, %select.unfold.i.i.i.i.us ], [ %.lcssa1721.i.i.i.i, %select.unfold.i.i.i.i ]
  store i64 %.us-phi1132, ptr %i.axi, align 8, !noalias !7542
  store i64 %.us-phi1131, ptr %i.ej, align 8, !noalias !7542
  br label %.noexc11.i.i.i.i.i.i

.noexc11.i.i.i.i.i.i:                             ; preds = %.noexc11.i.i.i.i.i.loopexit.i, %.split26.us.sink.split.i.i.i.i
  %.us-phi.i.i.i.i = phi i64 [ %.fr44.i.i.i.i, %.split26.us.sink.split.i.i.i.i ], [ %.us-phi1133, %.noexc11.i.i.i.i.i.loopexit.i ]
  %.us-phi27.i.i.i.i = phi i64 [ %.promoted19.i.i.i.i, %.split26.us.sink.split.i.i.i.i ], [ %.us-phi1134, %.noexc11.i.i.i.i.i.loopexit.i ]
  %.sroa.0.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i213, i64 %.us-phi27.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i212

.loopexit.split-lp.thread.i.i.i.i.i.i:            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i.i.i.i.i.i"
  %lpad.loopexit.split-lp1.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

.loopexit.split-lp.i.i.i.i.i.loopexit.i.split:    ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i
  %lpad.loopexit188.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.loopexit.i

.loopexit.split-lp.i.i.i.i.i.loopexit.i:          ; preds = %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split.us, %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split
  %.us-phi1128 = phi i64 [ %.lcssa198283.i, %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split ], [ %.lcssa198283.i.us, %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split.us ]
  %.us-phi1129 = phi i64 [ %i.bdf, %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split ], [ %i.bbz, %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split.us ]
  %.us-phi1130 = phi { ptr, i32 } [ %lpad.loopexit188.i, %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split ], [ %lpad.loopexit188.i.us, %.loopexit.split-lp.i.i.i.i.i.loopexit.i.split.us ]
  store i64 %.us-phi1128, ptr %i.ej, align 8, !noalias !7542
  store i64 %.us-phi1129, ptr %i.axi, align 8, !noalias !7542
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.loopexit.split-lp.i: ; preds = %.loopexit192.i
  %lpad.loopexit.split-lp189.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.loopexit.split-lp.i.i.i.i.i.loopexit.split-lp.i, %.loopexit.split-lp.i.i.i.i.i.loopexit.i
  %.sroa.0160.2.i = phi i64 [ %.sroa.0160.1.i, %.loopexit.split-lp.i.i.i.i.i.loopexit.i ], [ %.sroa.0160.0.i, %.loopexit.split-lp.i.i.i.i.i.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8164.2.i = phi ptr [ %.sroa.8164.1.i, %.loopexit.split-lp.i.i.i.i.i.loopexit.i ], [ %.sroa.8164.0.i, %.loopexit.split-lp.i.i.i.i.i.loopexit.split-lp.i ]
  %lpad.phi190.i = phi { ptr, i32 } [ %.us-phi1130, %.loopexit.split-lp.i.i.i.i.i.loopexit.i ], [ %lpad.loopexit.split-lp189.i, %.loopexit.split-lp.i.i.i.i.i.loopexit.split-lp.i ] ; 2 uses
  %i.beb = icmp eq i64 %.sroa.0160.2.i, 0
  br i1 %i.beb, label %.body.i209, label %.loopexit.split-lp.i._crit_edge.i.i.i.i.i

.loopexit.split-lp.i._crit_edge.i.i.i.i.i:        ; preds = %.loopexit.split-lp.i.i.i.i.i.i
  %i.bec = shl nuw i64 %.sroa.0160.2.i, 4
  br label %bb.re

bb.re:                                            ; preds = %.loopexit.split-lp.i._crit_edge.i.i.i.i.i, %.loopexit.split-lp.thread.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i = phi ptr [ %i.baj, %.loopexit.split-lp.thread.i.i.i.i.i.i ], [ %.sroa.8164.2.i, %.loopexit.split-lp.i._crit_edge.i.i.i.i.i ]
  %lpad.phi11.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1.i.i.i.i.i.i, %.loopexit.split-lp.thread.i.i.i.i.i.i ], [ %lpad.phi190.i, %.loopexit.split-lp.i._crit_edge.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i = phi i64 [ 64, %.loopexit.split-lp.thread.i.i.i.i.i.i ], [ %i.bec, %.loopexit.split-lp.i._crit_edge.i.i.i.i.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !7565
  br label %.body.i209

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.sink.split.i": ; preds = %.split.us.split.split.i.i.i.i, %.split.us.split.us.split.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7580), !noalias !7565
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i": ; preds = %.split.us.split.split.us.split.i.i.i.i, %.split.us.split.split.us.split.us.i.i.i.i, %.split.us.split.us.split.us.split.i.i.i.i, %.split.us.split.us.split.us.split.us.i.i.i.i, %.split.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i", %.split.i.i.i.i.us, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.sink.split.i", %.split.us.split.split.i.i.i.i, %.split.us.split.us.split.i.i.i.i, %.noexc.i.i.i.i.i.i211
  %.sroa.10.0.copyload.i.i = phi i64 [ 1, %.noexc.i.i.i.i.i.i211 ], [ %i.bbm, %.split.us.split.split.i.i.i.i ], [ %i.bbm, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.sink.split.i" ], [ %i.bbm, %.split.us.split.us.split.i.i.i.i ], [ %i.bbm, %.split.i.i.i.i ], [ %i.bbm, %.split.i.i.i.i.us ], [ %i.bbm, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ %i.bbm, %.split.us.split.us.split.us.split.us.i.i.i.i ], [ %i.bbm, %.split.us.split.us.split.us.split.i.i.i.i ], [ %i.bbm, %.split.us.split.split.us.split.us.i.i.i.i ], [ %i.bbm, %.split.us.split.split.us.split.i.i.i.i ]
  %.sroa.6.0.copyload.i.i = phi ptr [ %i.baj, %.noexc.i.i.i.i.i.i211 ], [ %.sroa.8164.1.i, %.split.us.split.split.i.i.i.i ], [ %.sroa.8164.1.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.sink.split.i" ], [ %.sroa.8164.1.i, %.split.us.split.us.split.i.i.i.i ], [ %.sroa.8164.1.i, %.split.i.i.i.i ], [ %.sroa.8164.1.i, %.split.i.i.i.i.us ], [ %.sroa.8164.1.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ %.sroa.8164.1.i, %.split.us.split.us.split.us.split.us.i.i.i.i ], [ %.sroa.8164.1.i, %.split.us.split.us.split.us.split.i.i.i.i ], [ %.sroa.8164.1.i, %.split.us.split.split.us.split.us.i.i.i.i ], [ %.sroa.8164.1.i, %.split.us.split.split.us.split.i.i.i.i ]
  %.sroa.0.0.copyload.i.i = phi i64 [ 4, %.noexc.i.i.i.i.i.i211 ], [ %.sroa.0160.1.i, %.split.us.split.split.i.i.i.i ], [ %.sroa.0160.1.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.sink.split.i" ], [ %.sroa.0160.1.i, %.split.us.split.us.split.i.i.i.i ], [ %.sroa.0160.1.i, %.split.i.i.i.i ], [ %.sroa.0160.1.i, %.split.i.i.i.i.us ], [ %.sroa.0160.1.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h60f9459070e34218E.exit.i.i.i.i.i.i" ], [ %.sroa.0160.1.i, %.split.us.split.us.split.us.split.us.i.i.i.i ], [ %.sroa.0160.1.i, %.split.us.split.us.split.us.split.i.i.i.i ], [ %.sroa.0160.1.i, %.split.us.split.split.us.split.us.i.i.i.i ], [ %.sroa.0160.1.i, %.split.us.split.split.us.split.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !7566
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hc57511c88c03fb62E.exit.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hc57511c88c03fb62E.exit.i.i: ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i", %.noexc92.i
  %.sroa.10.0.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i" ], [ 0, %.noexc92.i ]
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.0.copyload.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %.noexc92.i ] ; 4 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8c231f28f5bcdf2E.exit.i.i.i.i.i.i" ], [ 0, %.noexc92.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !7561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !7586
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17h644706dfe40605ebE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.6.0.i.i, i64 noundef %.sroa.10.0.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80)
          to label %bb.rh unwind label %bb.rf

bb.rf:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hc57511c88c03fb62E.exit.i.i
  %i.bed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bee = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.bee, label %.body.i209, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bef = shl nuw i64 %.sroa.0.0.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i, i64 noundef %i.bef, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !7587
  br label %.body.i209

bb.rh:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hc57511c88c03fb62E.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false), !noalias !7588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !7586
  %i.beg = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.beg, label %_ZN17openapi_generator14normalize_path17hb092845994de8d07E.exit.i, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.beh = shl nuw i64 %.sroa.0.0.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i, i64 noundef %i.beh, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !7587
  br label %_ZN17openapi_generator14normalize_path17hb092845994de8d07E.exit.i

bb.rj:                                            ; preds = %bb.qo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !noalias !7542
  store ptr %i.fh, ptr %i.fd, align 8, !noalias !7542
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !7542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !7589
  store ptr @103, ptr %i.ei, align 8, !noalias !7590
  store i64 1, ptr %.sroa.4131.0..sroa_idx.i, align 8, !noalias !7590
  store ptr %i.fd, ptr %.sroa.5132.0..sroa_idx.i, align 8, !noalias !7590
  store i64 1, ptr %.sroa.6133.0..sroa_idx.i, align 8, !noalias !7590
  store ptr null, ptr %.sroa.7134.0..sroa_idx.i, align 8, !noalias !7590
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ei)
          to label %bb.rk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rk:                                            ; preds = %bb.rj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !7589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !7542
  call void @llvm.experimental.noalias.scope.decl(metadata !7591)
  call void @llvm.experimental.noalias.scope.decl(metadata !7592)
  %i.bei = load i64, ptr %i.awe, align 8, !alias.scope !7591, !noalias !7542, !noundef !13 ; 3 uses
  %i.bej = load i64, ptr %i.fj, align 8, !range !14, !alias.scope !7591, !noalias !7542, !noundef !13
  %i.bek = icmp eq i64 %i.bei, %i.bej
  br i1 %i.bek, label %bb.rl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit103.i"

bb.rl:                                            ; preds = %bb.rk
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @104)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit103.i" unwind label %bb.rm, !noalias !7592

bb.rm:                                            ; preds = %bb.rl
  %i.bel = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i98.i = load i64, ptr %i.fe, align 8, !alias.scope !7592, !noalias !7542 ; 2 uses
  %i.bem = icmp eq i64 %.val.i98.i, 0
  br i1 %i.bem, label %.body.i209, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.ben = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.val2.i99.i = load ptr, ptr %i.ben, align 8, !alias.scope !7592, !noalias !7542, !nonnull !13, !noundef !13
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i99.i, i64 noundef %.val.i98.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7592
  br label %.body.i209

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit103.i": ; preds = %bb.rl, %bb.rk
  %i.beo = load ptr, ptr %i.awd, align 8, !alias.scope !7591, !noalias !7542, !nonnull !13, !noundef !13
  %i.bep = getelementptr inbounds nuw [24 x i8], ptr %i.beo, i64 %i.bei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bep, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  %i.beq = add i64 %i.bei, 1
  store i64 %i.beq, ptr %i.awe, align 8, !alias.scope !7591, !noalias !7542
  br label %bb.qp

_ZN17openapi_generator14normalize_path17hb092845994de8d07E.exit.i: ; preds = %bb.ri, %bb.rh
  call void @llvm.experimental.noalias.scope.decl(metadata !7593)
  call void @llvm.experimental.noalias.scope.decl(metadata !7594)
  call void @llvm.experimental.noalias.scope.decl(metadata !7595)
  %.val8.i.i = load i64, ptr %.sroa.425.0..sroa_idx.i, align 8, !alias.scope !7594, !noalias !7542, !noundef !13
  %.val9.i.i = load i64, ptr %.sroa.526.0..sroa_idx.i, align 8, !alias.scope !7594, !noalias !7542, !noundef !13
  %i.ber = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h9a0cf704dcdc809bE(i64 %.val8.i.i, i64 %.val9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc), !noalias !7596 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7597)
  call void @llvm.experimental.noalias.scope.decl(metadata !7598)
  call void @llvm.experimental.noalias.scope.decl(metadata !7599)
  %i.bes = lshr i64 %i.ber, 57
  %i.bet = trunc nuw nsw i64 %i.bes to i8         ; 3 uses
  %i.beu = load i64, ptr %i.axn, align 8, !alias.scope !7600, !noalias !7542, !noundef !13 ; 2 uses
  %i.bev = load ptr, ptr %i.fi, align 8, !alias.scope !7600, !noalias !7542, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bet, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i.i = load i64, ptr %i.axo, align 8, !alias.scope !7601, !noalias !7542 ; 3 uses
  %.val2.i.i.i.i.i217 = load ptr, ptr %i.axp, align 8, !alias.scope !7601, !noalias !7542 ; 8 uses
  %i.bew = inttoptr i64 %.val3.i.i.i.i.i to ptr
  br label %bb.rq

bb.ro:                                            ; preds = %bb.ru
  %i.bex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val6.i.i = load i64, ptr %i.fc, align 8, !alias.scope !7595, !noalias !7542 ; 2 uses
  %i.bey = icmp eq i64 %.val6.i.i, 0
  br i1 %i.bey, label %.body.i209, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i217, i64 noundef %.val6.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7602
  br label %.body.i209

bb.rq:                                            ; preds = %bb.rr, %_ZN17openapi_generator14normalize_path17hb092845994de8d07E.exit.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %_ZN17openapi_generator14normalize_path17hb092845994de8d07E.exit.i ], [ %i.bfq, %bb.rr ]
  %.pn.i.i.i = phi i64 [ %i.ber, %_ZN17openapi_generator14normalize_path17hb092845994de8d07E.exit.i ], [ %i.bfr, %bb.rr ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.beu ; 3 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bev, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.bez, align 1, !noalias !7603 ; 2 uses
  %i.bfa = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.bfb = bitcast <16 x i1> %i.bfa to i16        ; 2 uses
  %.not.i.not33.i.i.i = icmp eq i16 %i.bfb, 0
  br i1 %.not.i.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i218

.lr.ph.i.i.i218:                                  ; preds = %bb.rq, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.thread.i.i.i"
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.bfp, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.thread.i.i.i" ], [ %i.bfb, %bb.rq ] ; 3 uses
  %i.bfc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.bfd = zext nneg i16 %i.bfc to i64
  %i.bfe = add i64 %.sroa.01.0.i.i.i.i, %i.bfd
  %i.bff = and i64 %i.bfe, %i.beu
  %i.bfg = sub nsw i64 0, %i.bff
  %i.bfh = getelementptr inbounds [48 x i8], ptr %i.bev, i64 %i.bfg ; 4 uses
  %i.bfi = getelementptr i8, ptr %i.bfh, i64 -32
  %.val4.i.i.i.i = load i64, ptr %i.bfi, align 8, !noalias !7604, !noundef !13
  %.not.i.i.i.i.i.i.i104.i = icmp eq i64 %.val4.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i104.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.thread.i.i.i", !prof !42

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.i.i.i": ; preds = %.lr.ph.i.i.i218
  %i.bfj = getelementptr i8, ptr %i.bfh, i64 -40
  %.val3.i.i.i.i231 = load ptr, ptr %i.bfj, align 8, !noalias !7604, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val3.i.i.i.i231, ptr nonnull readonly align 1 %.val2.i.i.i.i.i217, i64 %.val3.i.i.i.i.i), !alias.scope !7605, !noalias !7604
  %i.bfk = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.bfk, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h000d31ee53eea1a1E.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.thread.i.i.i", !prof !41

._crit_edge.i.i.i:                                ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.thread.i.i.i", %bb.rq
  %i.bfl = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.bfm = bitcast <16 x i1> %i.bfl to i16
  %i.bfn = icmp eq i16 %i.bfm, 0
  br i1 %i.bfn, label %bb.rr, label %bb.rt, !prof !15

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.thread.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.i.i.i", %.lr.ph.i.i.i218
  %i.bfo = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.bfp = and i16 %i.bfo, %.sroa.06.0.i34.i.i.i  ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bfp, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i218

bb.rr:                                            ; preds = %._crit_edge.i.i.i
  %i.bfq = add i64 %.sroa.9.0.i.i.i.i, 16         ; 2 uses
  %i.bfr = add i64 %.sroa.01.0.i.i.i.i, %i.bfq
  br label %bb.rq

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h000d31ee53eea1a1E.exit.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6de25e3c7a8b7458E.exit.i.i.i"
  %.val.i107.i = load i64, ptr %i.fc, align 8, !alias.scope !7595, !noalias !7542 ; 2 uses
  %i.bfs = icmp eq i64 %.val.i107.i, 0
  br i1 %i.bfs, label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.thread.i", label %bb.rs

bb.rs:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h000d31ee53eea1a1E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i217) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i217, i64 noundef %.val.i107.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7602
  br label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.thread.i"

bb.rt:                                            ; preds = %._crit_edge.i.i.i
  %i.bft = load i64, ptr %i.axq, align 8, !alias.scope !7606, !noalias !7542, !noundef !13
  %i.bfu = icmp eq i64 %i.bft, 0
  br i1 %i.bfu, label %bb.ru, label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.i", !prof !15

bb.ru:                                            ; preds = %bb.rt
  %i.bfv = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haaa7a586260f9f22E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fi, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.425.0..sroa_idx.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.i" unwind label %bb.ro, !noalias !7602 ; 0 uses

"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.i": ; preds = %bb.ru, %bb.rt
  %.sroa.0152.0.copyload.i = load i64, ptr %i.fc, align 8, !alias.scope !7602, !noalias !7542 ; 4 uses
  %.not67.i = icmp eq i64 %.sroa.0152.0.copyload.i, -9223372036854775808
  br i1 %.not67.i, label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.thread.i", label %bb.rv

bb.rv:                                            ; preds = %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.i"
  %i.bfw = load ptr, ptr %i.fh, align 8, !noalias !7542, !nonnull !13, !align !19, !noundef !13
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bfw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109)
          to label %bb.sb unwind label %bb.se

"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.thread.i": ; preds = %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.i", %bb.rs, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h000d31ee53eea1a1E.exit.i.i"
  %.sroa.5153.0177.i = phi ptr [ %.val2.i.i.i.i.i217, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h90c5696fcac4324dE.exit.i" ], [ %i.bfh, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h000d31ee53eea1a1E.exit.i.i" ], [ %i.bfh, %bb.rs ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5153.0177.i) ]
  %i.bfx = load ptr, ptr %i.fh, align 8, !noalias !7542, !nonnull !13, !align !19, !noundef !13 ; 2 uses
  %i.bfy = getelementptr inbounds i8, ptr %.sroa.5153.0177.i, i64 -24
  %i.bfz = getelementptr i8, ptr %.sroa.5153.0177.i, i64 -8
  %.val71.i = load i64, ptr %i.bfz, align 8, !noundef !13 ; 2 uses
  %i.bga = getelementptr i8, ptr %i.bfx, i64 16
end_hunk_1
