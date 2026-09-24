Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel.nickel.321223028b931924-cgu.0?download=true
inline.NumInlined: 8338
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN16nickel_lang_core4term6record10RecordData17with_field_values17h3b30dedcc0e48dfaE:bb.a
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !15269, !noalias !15270, !noundef !16
  %i.ak = icmp ugt i64 %.sroa.0.0.i.i.i, %i.aj
  br i1 %i.ak, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i", !prof !22

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = load i64, ptr %i.ah, align 8, !alias.scope !15271, !noalias !15268, !noundef !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !15271, !noalias !15268, !nonnull !16, !noundef !16
  %i.ap = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.am, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i" unwind label %bb.o, !noalias !15268 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.aq = load i64, ptr %i.e, align 8, !range !40, !alias.scope !15271, !noalias !15268, !noundef !16
  %i.ar = load i64, ptr %i.ah, align 8, !alias.scope !15271, !noalias !15268, !noundef !16 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 128102389400760776
  call void @llvm.assume(i1 %i.as)
  %i.at = sub nsw i64 %i.aq, %i.ar
  %i.au = icmp ugt i64 %.sroa.0.0.i.i.i, %i.at
  br i1 %i.au, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i"
  %i.av = load i64, ptr %i.ac, align 8, !alias.scope !15271, !noalias !15268, !noundef !16
  %i.aw = load i64, ptr %i.ai, align 8, !alias.scope !15271, !noalias !15268, !noundef !16
  %i.ax = add i64 %i.aw, %i.av
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h08915342def29ccfE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.ax)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i" unwind label %bb.o, !noalias !15268

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !15273
  call void @llvm.experimental.noalias.scope.decl(metadata !15274)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !15275, !noalias !15276, !nonnull !16, !noundef !16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !15275, !noalias !15276 ; 3 uses
  %i.bb = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.az
  br i1 %i.bb, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.lr.ph.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.lr.ph.i.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i"
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.lr.ph.i.i.i.i.i.i"
  %i.be = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.lr.ph.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15277)
  call void @llvm.experimental.noalias.scope.decl(metadata !15278)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 5 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.43.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !15279 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i._crit_edge.i.i.i.i.i.i", label %bb.g

bb.f:                                             ; preds = %bb.h, %.noexc.i.i.i.i.i.i, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bf, ptr %i.ba, align 8, !alias.scope !15275, !noalias !15276
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hb327ab66f37e6cfaE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #46
          to label %.body.i.i unwind label %bb.n, !noalias !15280

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !15279, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !15281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15282
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bc, ptr noundef nonnull %.sroa.01.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.f, !noalias !15281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  store i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !15282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, i64 16, i1 false), !noalias !15282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15283
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h099aab7514b4cb25E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.bc)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.f, !noalias !15281

.noexc3.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !noalias !15283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15283
  %i.bh = load i64, ptr %i.b, align 8, !range !33, !alias.scope !15284, !noalias !15283, !noundef !16
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.noexc3.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hd6967b05622b50ebE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.m unwind label %bb.f, !noalias !15281

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i._crit_edge.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i"
  %i.bj = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i" ], [ %i.bf, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15285)
  call void @llvm.experimental.noalias.scope.decl(metadata !15286)
  call void @llvm.experimental.noalias.scope.decl(metadata !15287)
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 40
  invoke fastcc void @"_ZN4core3ptr140drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$u5d$$GT$17h7913932c38cd6c83E"(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bn)
          to label %bb.k unwind label %bb.i, !noalias !15288

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !15289, !noalias !15290, !noundef !16 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.d, align 8, !alias.scope !15289, !noalias !15290, !nonnull !16, !noundef !16
  %i.bt = mul nuw i64 %i.bq, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !15288
  br label %.body.i.i

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !15289, !noalias !15290, !noundef !16 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4core4iter6traits8iterator8Iterator7collect17h294ddf7c4d061700E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.d, align 8, !alias.scope !15289, !noalias !15290, !nonnull !16, !noundef !16
  %i.by = mul nuw i64 %i.bv, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !15288
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h294ddf7c4d061700E.exit

bb.m:                                             ; preds = %bb.h, %.noexc3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15282
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  %i.bz = icmp eq ptr %i.bf, %i.az
  br i1 %i.bz, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he6f31f30edfcc5dfE.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15281
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54dc5e10ec7234b2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #46
          to label %.body.i.i unwind label %bb.p, !noalias !15291

bb.p:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15268
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.j, %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.f ], [ %i.cb, %bb.o ], [ %i.bo, %bb.i ], [ %i.bo, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #46
          to label %common.resume unwind label %bb.q, !noalias !15263

bb.q:                                             ; preds = %bb.r, %.body.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15263
  unreachable

common.resume:                                    ; preds = %bb.s, %.body.i.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ce, %bb.r ], [ %i.cq, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.b, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i"
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54dc5e10ec7234b2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #46
          to label %common.resume unwind label %bb.q, !noalias !15291

_ZN4core4iter6traits8iterator8Iterator7collect17h294ddf7c4d061700E.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = load i8, ptr %i.u, align 8, !range !17, !noalias !15292, !noundef !16
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i", !prof !18

._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h294ddf7c4d061700E.exit
  %.pre.i.i = load i64, ptr %i.t, align 8, !noalias !15293
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h294ddf7c4d061700E.exit
  %i.ch = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i"
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !noalias !15294
  store i8 1, ptr %i.u, align 8, !noalias !15294
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E.exit": ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i
  %i.cl = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i ], [ %i.ci, %.noexc ]
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.t, align 8, !noalias !15293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i"
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #46
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData17with_field_values17hdaf3d378a191f8c5E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8, !alias.scope !15356
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15356
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !15356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15357
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !range !17, !noalias !15358, !noundef !16
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i", !prof !18

._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !15359
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !15359
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.l = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.n, !noalias !15357 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i"
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !15360
  store i8 1, ptr %i.i, align 8, !noalias !15360
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i
  %.pre-phi12.i.i = phi i64 [ %i.n, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.m, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.p = add i64 %.pre-phi.i.i, 1
  store i64 %i.p, ptr %i.h, align 8, !noalias !15359
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hbbb248a966e56540E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef 2, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi12.i.i)
          to label %bb.c unwind label %bb.n, !noalias !15357

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15361)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !15361, !noalias !15362, !noundef !16
  %i.s = icmp eq i64 %i.r, 0
  %.sroa.0.0.i.i.i = select i1 %i.s, i64 2, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !15363, !noalias !15364, !noundef !16
  %i.w = icmp ugt i64 %.sroa.0.0.i.i.i, %i.v
  br i1 %i.w, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i", !prof !22

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !15365, !noalias !15362, !noundef !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !15365, !noalias !15362, !nonnull !16, !noundef !16
  %i.ab = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.y, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i" unwind label %bb.k, !noalias !15362 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.ac = load i64, ptr %i.e, align 8, !range !40, !alias.scope !15365, !noalias !15362, !noundef !16
  %i.ad = load i64, ptr %i.t, align 8, !alias.scope !15365, !noalias !15362, !noundef !16 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 128102389400760776
  call void @llvm.assume(i1 %i.ae)
  %i.af = sub nsw i64 %i.ac, %i.ad
  %i.ag = icmp ugt i64 %.sroa.0.0.i.i.i, %i.af
  br i1 %i.ag, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i"
  %i.ah = load i64, ptr %i.q, align 8, !alias.scope !15365, !noalias !15362, !noundef !16
  %i.ai = load i64, ptr %i.u, align 8, !alias.scope !15365, !noalias !15362, !noundef !16
  %i.aj = add i64 %i.ai, %i.ah
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h08915342def29ccfE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.aj)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i" unwind label %bb.k, !noalias !15362

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !15367
  call void @llvm.experimental.noalias.scope.decl(metadata !15368)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15369)
  %i.al = load i64, ptr %i.d, align 8, !alias.scope !15370, !noalias !15371, !noundef !16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !15370, !noalias !15371, !noundef !16 ; 5 uses
  %i.ao = icmp ule i64 %i.al, %i.an
  call void @llvm.assume(i1 %i.ao)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %i.al, %i.an
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha5f81fb0466fc2e1E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6780c06cdc4ebc06E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.as, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6780c06cdc4ebc06E.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 6 uses
  %i.at = icmp ult i64 %i.ar, 2
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !15368, !noalias !15372, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15373
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !15374

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.au, i64 20, i1 false), !noalias !15375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15376
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h099aab7514b4cb25E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.ap)
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !15374

.noexc1.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !noalias !15376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15376
  %i.av = load i64, ptr %i.b, align 8, !range !33, !alias.scope !15377, !noalias !15376, !noundef !16
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6780c06cdc4ebc06E.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %.noexc1.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hd6967b05622b50ebE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6780c06cdc4ebc06E.exit.i.i.i.i.i.i.i" unwind label %bb.h, !noalias !15374

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6780c06cdc4ebc06E.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %.noexc1.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15373
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.as, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha5f81fb0466fc2e1E.exit, label %bb.f

bb.h:                                             ; preds = %bb.g, %.noexc.i.i.i.i.i.i, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !15370, !noalias !15371
  %i.ay = icmp eq i64 %i.an, %i.as
  br i1 %i.ay, label %.body.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = sub nuw i64 %i.an, %i.as
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.as
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h46f10acec7ea8733E"(ptr noalias noundef nonnull readonly align 8 %i.ba, i64 noundef %i.az)
          to label %.body.i.i unwind label %bb.j, !noalias !15378

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15374
  unreachable

bb.k:                                             ; preds = %bb.d, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h46f10acec7ea8733E"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %.body.i.i unwind label %bb.l, !noalias !15379

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15362
  unreachable

.body.i.i:                                        ; preds = %bb.k, %bb.i, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.ax, %bb.i ], [ %i.ax, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #46
          to label %common.resume unwind label %bb.m, !noalias !15357

bb.m:                                             ; preds = %bb.n, %.body.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15357
  unreachable

common.resume:                                    ; preds = %bb.o, %.body.i.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.br, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i", %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h46f10acec7ea8733E"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %common.resume unwind label %bb.m, !noalias !15379

_ZN4core4iter6traits8iterator8Iterator7collect17ha5f81fb0466fc2e1E.exit: ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6780c06cdc4ebc06E.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bg = load i8, ptr %i.i, align 8, !range !17, !noalias !15380, !noundef !16
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i", !prof !18

._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17ha5f81fb0466fc2e1E.exit
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !15381
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17ha5f81fb0466fc2e1E.exit
  %i.bi = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i"
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !noalias !15382
  store i8 1, ptr %i.i, align 8, !noalias !15382
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E.exit": ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i
  %i.bm = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i ], [ %i.bj, %.noexc ]
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.h, align 8, !noalias !15381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.o:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i"
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hfd288e2dcebed237E"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #46
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core5cache9TermCache9closurize17hf8ac1d5cf910a9b9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, i32 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 14 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = tail call { i64, i64 } @_ZN16nickel_lang_core5cache9TermCache11entry_state17hbb3e2ab6ce484d7fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i32 noundef %4)
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %.not = icmp eq i64 %i.i, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 6
  br i1 %i.j, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hac8828606dc44bd5E.exit32"

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15576)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15577
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load <2 x i64>, ptr %i.k, align 8, !alias.scope !15578, !noalias !15579 ; 3 uses
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.n = xor <2 x i64> %i.m, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.n, ptr %i.c, align 16, !alias.scope !15580, !noalias !15577
  %i.o = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i64> %i.o, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.p, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !15580, !noalias !15577
  store <2 x i64> %i.l, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !15580, !noalias !15577
  %.sroa.913.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !15580, !noalias !15577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15581
  store i32 %4, ptr %i.b, align 4, !noalias !15581
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h09c14117b646cf30E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 4), !noalias !15577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15581
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.c, align 16, !alias.scope !15582, !noalias !15577
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !alias.scope !15582, !noalias !15577
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !15582, !noalias !15577 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !alias.scope !15582, !noalias !15577
  %i.q = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i, align 16, !alias.scope !15582, !noalias !15577, !noundef !16
  %i.r = shl i64 %i.q, 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !15582, !noalias !15577, !noundef !16
  %i.u = or i64 %i.r, %i.t                        ; 2 uses
  %i.v = xor i64 %i.u, %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %i.w = add i64 %.sroa.17.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i ; 3 uses
  %i.x = add i64 %i.v, %.sroa.10.0.copyload.i.i.i.i.i ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 13)
  %i.z = xor i64 %i.y, %i.w                       ; 3 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = add i64 %i.x, %i.z                      ; 3 uses
  %i.ae = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = xor i64 %i.ae, %i.u
  %i.al = xor i64 %i.aj, 255
  %i.am = add i64 %i.ak, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ai, %i.al                    ; 2 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 17)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32)
  %i.bo = add i64 %i.bk, %i.bi
  %i.bp = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13)
  %i.br = xor i64 %i.bq, %i.bo                    ; 3 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bt = xor i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17)
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 21)
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = xor i64 %i.bw, %i.bv
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = xor i64 %i.bz, %i.bu                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15585)
  %i.cb = lshr i64 %i.ca, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !15586, !noalias !15587, !noundef !16 ; 3 uses
  %i.cf = load ptr, ptr %1, align 8, !alias.scope !15586, !noalias !15587, !nonnull !16, !noundef !16 ; 4 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.cw, %bb.g ]
  %.pn.i.i.i.i = phi i64 [ %i.ca, %bb.d ], [ %i.cx, %bb.g ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !15588 ; 2 uses
  %i.ch = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.cv, %bb.f ], [ %i.ci, %bb.e ] ; 3 uses
  %i.cj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = add i64 %.sroa.01.0.i.i.i.i.i, %i.ck
  %i.cm = and i64 %i.cl, %i.ce                    ; 2 uses
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds [40 x i8], ptr %i.cf, i64 %i.cn ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -40
  %.val3.i.i.i.i.i = load i32, ptr %i.cp, align 4, !noalias !15589, !noundef !16
  %i.cq = icmp eq i32 %4, %.val3.i.i.i.i.i
  br i1 %i.cq, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17he9f1769661e71e72E.exit.i.i.i", label %bb.f, !prof !18

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.cr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.cs = bitcast <16 x i1> %i.cr to i16
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %bb.g, label %.loopexit, !prof !22

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cu = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.cv = and i16 %i.cu, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cw = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.cx = add i64 %.sroa.01.0.i.i.i.i.i, %i.cw
  br label %bb.e

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17he9f1769661e71e72E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15591)
  %.idx.neg.i.i.i = mul i64 %i.cm, 40
  %i.cy = sdiv exact i64 %.idx.neg.i.i.i, 40      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15592)
  %i.cz = add nsw i64 %i.cy, -16
end_hunk_0
