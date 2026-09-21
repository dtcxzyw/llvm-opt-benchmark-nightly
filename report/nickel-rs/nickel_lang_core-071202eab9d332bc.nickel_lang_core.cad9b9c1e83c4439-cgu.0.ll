Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN16nickel_lang_core4term6string29grapheme_cluster_preservation5regex36does_match_start_and_end_on_boundary17h8d2dadd5ade1752cE:bb.a
  %i.z = load i64, ptr %i.f, align 8, !noundef !145
  %.not10 = icmp eq i64 %i.y, %i.z
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h4b46504b0fddf237E.exit"
  store i64 %i.y, ptr %i.f, align 8
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = load i64, ptr %i.g, align 8
  %i.ac = icmp eq i64 %i.y, %i.ab
  %or.cond5 = select i1 %i.aa, i1 true, i1 %i.ac
  %.11 = select i1 %or.cond5, i8 2, i8 0
  store i8 %.11, ptr %i.i, align 2
  store i8 16, ptr %i.j, align 1
  store i8 16, ptr %i.k, align 8
  store i64 0, ptr %i.l, align 8
  store i64 0, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h4b46504b0fddf237E.exit", %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_ZN20unicode_segmentation8grapheme14GraphemeCursor11is_boundary17h3e4b82bf97d87dbaE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(88) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !58313)
  %i.ad = load i64, ptr %i.c, align 8, !range !239, !alias.scope !58313, !noalias !58314, !noundef !145 ; 2 uses
  %.not.i13 = icmp eq i64 %i.ad, 4
  br i1 %.not.i13, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h4b46504b0fddf237E.exit14", label %bb.g, !prof !154

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58315
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !58313, !noalias !58314
  store i64 %i.ad, ptr %i.a, align 8, !noalias !58315
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !noalias !58315
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1066, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1700, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1067) #82, !noalias !58313
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h4b46504b0fddf237E.exit14": ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !range !153, !alias.scope !58313, !noalias !58314, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = and i8 %i.ai, %i.w
  %.12 = icmp ne i8 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %.12
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term7pattern7compile17update_with_merge17h6f1fbc8996679c57E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %1, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [24 x i8], align 4                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [12 x i8], align 4                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 4                ; 5 uses
  %i.i = alloca [24 x i8], align 4                ; 5 uses
  %i.j = alloca [12 x i8], align 4                ; 7 uses
  %i.k = alloca [12 x i8], align 4                ; 3 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 8 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  %i.m = alloca [20 x i8], align 4                ; 3 uses
  %i.n = alloca [56 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 4                ; 5 uses
  %i.q = alloca [56 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [88 x i8], align 8                ; 12 uses
  %i.u = alloca [64 x i8], align 8                ; 3 uses
  %i.v = alloca [72 x i8], align 8                ; 5 uses
  %i.w = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [12 x i8], align 4            ; 3 uses
  %.sroa.344 = alloca [12 x i8], align 4          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noundef !145 ; 5 uses
  %.not = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !145 ; 3 uses
  %.not16 = icmp eq ptr %i.aa, null
  br i1 %.not16, label %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ac = and i64 %i.ab, 3                        ; 3 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 2)
  switch i64 %..i, label %bb.c [
    i64 2, label %.invoke
    i64 0, label %bb.d
  ], !prof !150

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp samesign ugt i64 %i.ac, 1
  br i1 %i.ad, label %.invoke, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i, !prof !147

.invoke:                                          ; preds = %bb.c, %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i: ; preds = %bb.c
  %.not.not.i.i = icmp eq i64 %i.ac, 0
  %i.ae = lshr i64 %i.ab, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %.sroa.3.0.i.i = select i1 %.not.not.i.i, i32 undef, i32 %i.af
  %i.ag = trunc i64 %i.ab to i1
  br i1 %i.ag, label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit, label %.split.us.i.i.i.invoke.invoke, !prof !154

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !noalias !58465, !noundef !145
  br label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit: ; preds = %bb.d, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i
  %.sroa.0.0.i = phi i32 [ %i.ai, %bb.d ], [ %.sroa.3.0.i.i, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i ] ; 2 uses
  %.not127 = icmp eq i32 %.sroa.0.0.i, -1
  br i1 %.not127, label %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit
  %i.aj = and i32 %.sroa.0.0.i, 2147483647
  %i.ak = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !58466, !noalias !58467, !noundef !145 ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.ak
  br i1 %i.an, label %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit, label %.invoke119.invoke

.invoke119.invoke:                                ; preds = %bb.m, %bb.e, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i
  %i.ao = phi i64 [ %i.bo, %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i ], [ %i.bj, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %bb.e ], [ %i.ch, %bb.m ]
  %i.ap = phi i64 [ %i.bq, %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i ], [ %i.bl, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %bb.e ], [ %i.bs, %bb.m ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ao, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #82
          to label %.invoke119.cont unwind label %.loopexit.split-lp

.invoke119.cont:                                  ; preds = %.invoke119.invoke
  unreachable

_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !58466, !noalias !58467, !nonnull !145, !noundef !145
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(12) %i.as, i64 12, i1 false)
  br label %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.thread

_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.thread: ; preds = %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit, %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit ], [ true, %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br i1 %.not, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78f59dfa62744912E.exit.i", label %.lr.ph.split.us.i.i.i13.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i13.i.i.i.i.i.i.i.i.i:        ; preds = %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !148, !alias.scope !58468, !noalias !58469, !noundef !145
  %.not.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.au, 18
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !58468, !noalias !58469, !nonnull !145, !noundef !145 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 288
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !58468, !noalias !58469, !noundef !145 ; 2 uses
  %.idx.i.us.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.ay, 8
  %i.az = getelementptr i8, ptr %i.aw, i64 %.idx.i.us.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  br i1 %.not.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %.lr.ph.split.us.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr i8, ptr %i.y, i64 260
  %.val4.us.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ba, align 4, !noalias !58470, !noundef !145 ; 2 uses
  %i.bb = icmp eq i32 %.val4.us.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.bb, label %bb.f, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.bc = icmp eq i64 %i.ay, 0
  br i1 %i.bc, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78f59dfa62744912E.exit.i", label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.f, %bb.g
  %i.bd = phi ptr [ %i.be, %bb.g ], [ %i.aw, %bb.f ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 256 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 244
  %.val4.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bf, align 4, !noalias !58471, !noundef !145 ; 2 uses
  %i.bg = icmp eq i32 %.val4.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.bg, label %bb.g, label %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = icmp eq ptr %i.be, %i.az
  br i1 %i.bh, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78f59dfa62744912E.exit.i", label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.us.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = and i32 %.val4.us.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i, 2147483647
  %i.bj = zext nneg i32 %i.bi to i64              ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !58472, !noalias !58473, !noundef !145 ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.h, label %.invoke119.invoke

.split.us.i.i.i14.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = and i32 %.val4.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i, 2147483647
  %i.bo = zext nneg i32 %i.bn to i64              ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !58474, !noalias !58475, !noundef !145 ; 3 uses
  %i.br = icmp ugt i64 %i.bq, %i.bo
  br i1 %i.br, label %bb.h, label %.invoke119.invoke

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78f59dfa62744912E.exit.i": ; preds = %bb.g, %bb.f, %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.thread
  br i1 %.sroa.0.0, label %.thread115, label %bb.q

.thread115:                                       ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78f59dfa62744912E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, i64 12, i1 false)
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha1a950507d9e0869E.exit.i"

bb.h:                                             ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i
  %i.bs = phi i64 [ %i.bq, %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i ], [ %i.bl, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.22.0 = phi ptr [ %i.be, %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i ], [ %i.aw, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload31.i = phi i1 [ false, %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i ], [ true, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink100.i.i.i.sink.i.i.i.i.i.i = phi i64 [ %i.bo, %.split.us.i.i.i14.i.i.i.i.i.i.i.i.i ], [ %i.bj, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !58476, !nonnull !145, !noundef !145 ; 2 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %.sink100.i.i.i.sink.i.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58480)
  br i1 %.sroa.5.0.copyload31.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h2da1db45b5eed7f8E.exit.i.i, label %bb.i

_ZN4core4iter6traits8iterator8Iterator4fold17h2da1db45b5eed7f8E.exit.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4core4iter6traits8iterator8Iterator4fold17h2da1db45b5eed7f8E.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bw = icmp eq ptr %.sroa.22.0, %i.az
  br i1 %i.bw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false), !noalias !58481
  %i.bx = ptrtoint ptr %i.az to i64
  %i.by = ptrtoint ptr %.sroa.22.0 to i64
  %i.bz = sub nuw i64 %i.bx, %i.by
  %i.ca = lshr exact i64 %i.bz, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false), !noalias !58481
  br label %bb.p

bb.l:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17heb47b5cef7bc6c8cE.exit.i.i.i", %bb.j
  %.sroa.06.0.i.i.i = phi i64 [ 0, %bb.j ], [ %i.cm, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17heb47b5cef7bc6c8cE.exit.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cd = getelementptr inbounds nuw [256 x i8], ptr %.sroa.22.0, i64 %.sroa.06.0.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !58482)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 244
  %.val1.i.i.i.i = load i32, ptr %i.ce, align 4, !alias.scope !58482, !noalias !58483, !noundef !145 ; 2 uses
  %i.cf = icmp eq i32 %.val1.i.i.i.i, -1
  br i1 %i.cf, label %"_ZN16nickel_lang_core4term7pattern7compile17update_with_merge28_$u7b$$u7b$closure$u7d$$u7d$17hd6d0ff2ad4d42d9fE.exit.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = and i32 %.val1.i.i.i.i, 2147483647
  %i.ch = zext nneg i32 %i.cg to i64              ; 3 uses
  %i.ci = icmp ugt i64 %i.bs, %i.ch
  br i1 %i.ci, label %bb.n, label %.invoke119.invoke

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %i.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !noalias !58485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i64 12, i1 false), !noalias !58484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58486
  invoke void @_ZN18nickel_lang_parser8position7RawSpan4fuse17hc8561efe1b61513aE(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.cb)
          to label %.noexc125 unwind label %.loopexit

.noexc125:                                        ; preds = %bb.n
  %i.ck = load i32, ptr %i.b, align 4, !range !197, !noalias !58486, !noundef !145
  %i.cl = trunc nuw i32 %i.ck to i1
  br i1 %i.cl, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hfc2762a812178b0cE.exit.i.i.i.i.i", label %.split.us.i.i.i.invoke.invoke, !prof !154

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hfc2762a812178b0cE.exit.i.i.i.i.i": ; preds = %.noexc125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.cc, i64 12, i1 false), !noalias !58487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58484
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17heb47b5cef7bc6c8cE.exit.i.i.i"

"_ZN16nickel_lang_core4term7pattern7compile17update_with_merge28_$u7b$$u7b$closure$u7d$$u7d$17hd6d0ff2ad4d42d9fE.exit.i.i.i.i.i": ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !noalias !58485
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17heb47b5cef7bc6c8cE.exit.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17heb47b5cef7bc6c8cE.exit.i.i.i": ; preds = %"_ZN16nickel_lang_core4term7pattern7compile17update_with_merge28_$u7b$$u7b$closure$u7d$$u7d$17hd6d0ff2ad4d42d9fE.exit.i.i.i.i.i", %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hfc2762a812178b0cE.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !58485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cm = add nuw i64 %.sroa.06.0.i.i.i, 1        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, %i.ca
  br i1 %i.cn, label %bb.o, label %bb.l

bb.o:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17heb47b5cef7bc6c8cE.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !noalias !58488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !noalias !58481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false), !alias.scope !58489, !noalias !58490
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false)
  br i1 %.sroa.0.0, label %.lr.ph.split.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha1a950507d9e0869E.exit.i"

.lr.ph.split.i.i.i:                               ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !58491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !58492
  invoke void @_ZN18nickel_lang_parser8position7RawSpan4fuse17hc8561efe1b61513aE(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.co)
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %.lr.ph.split.i.i.i
  %i.cp = load i32, ptr %i.h, align 4, !range !197, !noalias !58492, !noundef !145
  %i.cq = trunc nuw i32 %i.cp to i1
  br i1 %i.cq, label %"_ZN16nickel_lang_core4term7pattern7compile17update_with_merge28_$u7b$$u7b$closure$u7d$$u7d$17he6e28727d49ed23aE.exit.i.i.i", label %.split.us.i.i.i.invoke.invoke, !prof !154

.split.us.i.i.i.invoke.invoke:                    ; preds = %.noexc125, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i, %.noexc33
  %i.cr = phi ptr [ @1069, %.noexc33 ], [ @740, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i ], [ @1069, %.noexc125 ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #82
          to label %.split.us.i.i.i.invoke.cont unwind label %.loopexit.split-lp

.split.us.i.i.i.invoke.cont:                      ; preds = %.split.us.i.i.i.invoke.invoke
  unreachable

"_ZN16nickel_lang_core4term7pattern7compile17update_with_merge28_$u7b$$u7b$closure$u7d$$u7d$17he6e28727d49ed23aE.exit.i.i.i": ; preds = %.noexc33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i64 12, i1 false), !noalias !58491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !58492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !58491
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha1a950507d9e0869E.exit.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha1a950507d9e0869E.exit.i": ; preds = %bb.p, %"_ZN16nickel_lang_core4term7pattern7compile17update_with_merge28_$u7b$$u7b$closure$u7d$$u7d$17he6e28727d49ed23aE.exit.i.i.i", %.thread115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !noalias !58493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.344, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !noalias !58494
  br label %bb.q

bb.q:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78f59dfa62744912E.exit.i", %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha1a950507d9e0869E.exit.i"
  %.sroa.043.0 = phi i1 [ true, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha1a950507d9e0869E.exit.i" ], [ false, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78f59dfa62744912E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  call fastcc void @"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h9e65df5d240509ceE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cu = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !range !153, !noalias !58495, !noundef !145
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i", !prof !154

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i: ; preds = %bb.q
  %.pre.i.i = load i64, ptr %i.cu, align 8, !noalias !58496
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !58496
  br label %bb.s

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i": ; preds = %bb.q
  %i.cy = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc35 unwind label %bb.r   ; 2 uses

.noexc35:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i"
  %i.cz = extractvalue { i64, i64 } %i.cy, 0
  %i.da = extractvalue { i64, i64 } %i.cy, 1      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.da, ptr %i.db, align 8, !noalias !58497
  store i8 1, ptr %i.cv, align 8, !noalias !58497
  br label %bb.s

bb.r:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i"
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h365c4ed716c759f8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v) #86
          to label %.thread unwind label %bb.ae

bb.s:                                             ; preds = %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i, %.noexc35
  %.pre-phi102 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ], [ %i.da, %.noexc35 ]
  %i.dd = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ], [ %i.cz, %.noexc35 ] ; 2 uses
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.cu, align 8, !noalias !58496
  store i64 0, ptr %i.t, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.660.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 %i.dd, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i64 %.pre-phi102, ptr %.sroa.8.0..sroa_idx, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store i8 0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 81
  store i8 0, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store ptr null, ptr %i.dh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store i8 0, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 81
  store i8 0, ptr %i.dj, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr null, ptr %i.dk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.dl = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue14record_posless17heca82e0fedb09f30E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.w)
          to label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h365c4ed716c759f8E.exit" unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h365c4ed716c759f8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t) #86
          to label %.thread unwind label %bb.ae
end_hunk_0
