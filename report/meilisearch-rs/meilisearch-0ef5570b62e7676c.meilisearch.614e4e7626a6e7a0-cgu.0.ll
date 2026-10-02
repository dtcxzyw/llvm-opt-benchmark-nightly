Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE":bb.a
bb.u:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br i1 %.not33, label %bb.t, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.u
  call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i) #38
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN118_$LT$tracing_subscriber..fmt..format..json..SerializableSpan$LT$Span$C$N$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hfc640114024da595E"(ptr captures(address, read_provenance) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.450 = alloca [88 x i8], align 8          ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 15 uses
  %i.h = alloca [96 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [88 x i8], align 8            ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = tail call fastcc noundef ptr @_ZN3std2io5Write9write_all17habb299c3513606fdE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 1), !noalias !6004 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.k), !noalias !6004
  br label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17hb0dfebf2ab5a23a9E.exit150"

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 7 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.n = tail call { ptr, ptr } @"_ZN102_$LT$tracing_subscriber..registry..sharded..Data$u20$as$u20$tracing_subscriber..registry..SpanData$GT$10extensions17hc3f755807525879fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6006)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !6007, !noalias !6008, !noundef !45
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit84, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6010)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !6011, !noalias !6012, !noundef !45 ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !alias.scope !6011, !noalias !6012, !nonnull !45, !noundef !45 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.am, %bb.g ]
  %.pn.i.i.i = phi i64 [ 2039119258041537915, %bb.d ], [ %i.an, %bb.g ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.u  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.w, align 1, !noalias !6013 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 14)
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.al, %bb.f ], [ %i.y, %bb.e ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.01.0.i.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %i.u
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32
  %.val3.i.i.i.i = load i128, ptr %i.af, align 8, !noalias !6014
  %i.ag = icmp eq i128 %.val3.i.i.i.i, 37615111088864757497645281250640612379
  br i1 %i.ag, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2c3b65e88bdca921E.exit.i", label %bb.f, !prof !58

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %.loopexit84, !prof !47

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.am = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.an = add i64 %.sroa.01.0.i.i.i.i, %i.am
  br label %bb.e

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2c3b65e88bdca921E.exit.i": ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !6005, !nonnull !45, !noundef !45 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !6005, !nonnull !45, !align !48, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6005
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !45, !noalias !6005, !nonnull !45
  invoke void %i.at(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.ap)
          to label %.noexc unwind label %bb.i, !inline_history !5965

.noexc:                                           ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2c3b65e88bdca921E.exit.i"
  %i.au = load i128, ptr %i.b, align 16, !noalias !6005, !noundef !45
  %i.av = icmp eq i128 %i.au, 37615111088864757497645281250640612379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6005
  br i1 %i.av, label %_ZN18tracing_subscriber8registry10extensions15ExtensionsInner3get17h358ad3045967ec03E.exit, label %.loopexit84

.thread:                                          ; preds = %bb.aj, %bb.bh, %.body, %bb.i
  %.pn77 = phi { ptr, i32 } [ %i.az, %bb.i ], [ %.pn75, %.body ], [ %.pn75, %bb.bh ], [ %i.dd, %bb.aj ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.aw = atomicrmw sub ptr %i.p, i32 1 release, align 4
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  %i.ay = and i32 %i.ax, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.ay, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.h, label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17hb0dfebf2ab5a23a9E.exit", !prof !72

bb.h:                                             ; preds = %.thread
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.p, i32 noundef %i.ax)
          to label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17hb0dfebf2ab5a23a9E.exit" unwind label %bb.ai

bb.i:                                             ; preds = %bb.bc, %bb.bb, %bb.az, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2c3b65e88bdca921E.exit.i", %bb.bg, %.thread59, %.loopexit84, %_ZN18tracing_subscriber8registry10extensions15ExtensionsInner3get17h358ad3045967ec03E.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN18tracing_subscriber8registry10extensions15ExtensionsInner3get17h358ad3045967ec03E.exit: ; preds = %.noexc
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bb, ptr %i.c, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bd, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.548.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bb, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.bd, ptr %i.bf, align 8
  invoke fastcc void @_ZN10serde_json2de10from_trait17haa2c801b85f724fbE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.k unwind label %bb.i

.loopexit84:                                      ; preds = %._crit_edge.i.i.i, %.noexc, %bb.c
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @296, i64 noundef 59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #43
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %.loopexit84
  unreachable

bb.k:                                             ; preds = %_ZN18tracing_subscriber8registry10extensions15ExtensionsInner3get17h358ad3045967ec03E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bg = load i64, ptr %i.g, align 8, !range !86, !noundef !45 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, -9223372036854775803
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !45, !align !48, !noundef !45
  store ptr %i.bj, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h7d77ede19b413bdfE", ptr %.sroa.456.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6015
  store ptr @0, ptr %i.a, align 8, !noalias !6016
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.48.0..sroa_idx, align 8, !noalias !6016
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.59.0..sroa_idx, align 8, !noalias !6016
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx10, align 8, !noalias !6016
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx, align 8, !noalias !6016
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.ao unwind label %bb.an

bb.m:                                             ; preds = %bb.k
  %i.bk = icmp sgt i64 %i.bg, -1                  ; 2 uses
  br i1 %i.bk, label %bb.n, label %_ZN10serde_json3ser9Formatter16begin_object_key17h8d5031118521dd11E.exit.thread.i.i

bb.n:                                             ; preds = %bb.m
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 8 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.537.0.copyload = load i64, ptr %.sroa.537.0..sroa_idx, align 8 ; 2 uses
  %i.bl = icmp eq i64 %.sroa.537.0.copyload, 0
  br i1 %i.bl, label %bb.s, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i: ; preds = %bb.n
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.436.0.copyload = load ptr, ptr %.sroa.436.0..sroa_idx, align 8, !nonnull !45, !noundef !45
  %i.bm = shl i64 %.sroa.537.0.copyload, 3
  %.not232 = and i64 %i.bm, -16
  %i.bn = xor i64 %.not232, -16
  %i.bo = getelementptr inbounds i8, ptr %.sroa.436.0.copyload, i64 %i.bn
  call void @mi_free(ptr noundef nonnull %i.bo) #38, !noalias !6017
  br label %bb.s

_ZN10serde_json3ser9Formatter16begin_object_key17h8d5031118521dd11E.exit.thread.i.i: ; preds = %bb.m
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !6018, !noalias !6019
  %i.bp = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17habb299c3513606fdE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 1)
          to label %.noexc100 unwind label %bb.aj ; 2 uses

.noexc100:                                        ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h8d5031118521dd11E.exit.thread.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %.invoke

bb.o:                                             ; preds = %.noexc100
  %i.bq = invoke fastcc noundef ptr @_ZN10serde_json3ser27format_escaped_str_contents17h63266e07201ee5a9E(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @299, i64 noundef 5)
          to label %.noexc101 unwind label %bb.aj ; 2 uses

.noexc101:                                        ; preds = %bb.o
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not7.i.i.i.i.i.i, label %_ZN10serde_json3ser18format_escaped_str17h4809ffb8043e5c36E.exit.i.i.i.i.i, label %.invoke

_ZN10serde_json3ser18format_escaped_str17h4809ffb8043e5c36E.exit.i.i.i.i.i: ; preds = %.noexc101
  %i.br = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17habb299c3513606fdE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 1)
          to label %.noexc102 unwind label %bb.aj ; 2 uses

.noexc102:                                        ; preds = %_ZN10serde_json3ser18format_escaped_str17h4809ffb8043e5c36E.exit.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %.invoke, !prof !60

bb.p:                                             ; preds = %.noexc102
  %i.bs = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17habb299c3513606fdE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 1)
          to label %.noexc104 unwind label %bb.aj ; 2 uses

.noexc104:                                        ; preds = %bb.p
  %.not.i5.i = icmp eq ptr %i.bs, null
  br i1 %.not.i5.i, label %bb.q, label %.invoke, !prof !58

.invoke:                                          ; preds = %.noexc104, %.noexc100, %.noexc101, %.noexc102
  %i.bt = phi ptr [ %i.bq, %.noexc101 ], [ %i.bp, %.noexc100 ], [ %i.br, %.noexc102 ], [ %i.bs, %.noexc104 ]
  %i.bu = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.bt)
          to label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h822fb1469d15ad6aE.exit.thread unwind label %bb.aj

bb.q:                                             ; preds = %.noexc104
  %i.bv = invoke fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hdc5e9e4a6c86ac43E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.g, ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h822fb1469d15ad6aE.exit unwind label %bb.aj ; 2 uses

.body:                                            ; preds = %bb.aw, %bb.bf, %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", %bb.y
  %.sroa.039.0 = phi i1 [ true, %bb.y ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit" ], [ true, %bb.aw ], [ %i.bk, %bb.r ], [ true, %bb.bf ]
  %.pn75 = phi { ptr, i32 } [ %.pn, %bb.y ], [ %.pn73, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit" ], [ %i.dk, %bb.aw ], [ %i.bz, %bb.r ], [ %i.eb, %bb.bf ] ; 2 uses
  %i.bw = load i64, ptr %i.g, align 8, !range !86, !noundef !45 ; 2 uses
  %i.bx = icmp ne i64 %i.bw, -9223372036854775803
  %or.cond6 = and i1 %.sroa.039.0, %i.bx
  %i.by = icmp slt i64 %i.bw, 0
  %or.cond87.not = and i1 %i.by, %or.cond6
  br i1 %or.cond87.not, label %bb.bh, label %.thread

bb.r:                                             ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h822fb1469d15ad6aE.exit.thread, %bb.am, %"_ZN4core3ptr77drop_in_place$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$17h1c908874a5dea84aE.exit", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit.thread"
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.n, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  %i.ca = icmp ult i64 %.sroa.3.0.copyload, 88686269585142076
  call void @llvm.assume(i1 %i.ca)
  %.idx = mul nuw nsw i64 %.sroa.3.0.copyload, 104
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.2.0.copyload, ptr %i.i, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.bg, ptr %.sroa.630.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.cb, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.cc = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.cc, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit.preheader"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit.preheader": ; preds = %bb.s
  %.sroa.450.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.450, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 104 ; 9 uses
  %.sroa.031.0.copyload.peel = load i64, ptr %.sroa.2.0.copyload, align 8, !noalias !6020 ; 8 uses
  %.not65.peel = icmp eq i64 %.sroa.031.0.copyload.peel, -9223372036854775808
  br i1 %.not65.peel, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit.thread", label %_ZN10serde_json3ser9Formatter16begin_object_key17h8d5031118521dd11E.exit.thread.i.i115.peel

_ZN10serde_json3ser9Formatter16begin_object_key17h8d5031118521dd11E.exit.thread.i.i115.peel: ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit.preheader"
  %.sroa.633.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 24
  %.sroa.532.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.450)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.450, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.532.0..sroa_idx.peel, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.450.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.633.0..sroa_idx.peel, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.450, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.450)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.031.0.copyload.peel, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  %.val93.peel = load ptr, ptr %.sroa.8.0..sroa_idx18, align 8, !nonnull !45, !noundef !45 ; 7 uses
  %.val94.peel = load i64, ptr %i.ce, align 8
  %i.cg = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17habb299c3513606fdE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 1)
          to label %.noexc122.peel unwind label %.loopexit.loopexit.split-lp, !inline_history !5984 ; 2 uses

.noexc122.peel:                                   ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h8d5031118521dd11E.exit.thread.i.i115.peel
  %.not.i.i.i.i.i.i116.peel = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i116.peel, label %bb.t, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h1172b2f605ffc9a7E.exit.i"

bb.t:                                             ; preds = %.noexc122.peel
  %i.ch = invoke fastcc noundef ptr @_ZN10serde_json3ser27format_escaped_str_contents17h63266e07201ee5a9E(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val93.peel, i64 noundef %.val94.peel)
          to label %.noexc123.peel unwind label %.loopexit.loopexit.split-lp, !inline_history !5984 ; 2 uses

.noexc123.peel:                                   ; preds = %bb.t
  %.not7.i.i.i.i.i.i117.peel = icmp eq ptr %i.ch, null
  br i1 %.not7.i.i.i.i.i.i117.peel, label %_ZN10serde_json3ser18format_escaped_str17h4809ffb8043e5c36E.exit.i.i.i.i.i118.peel, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h1172b2f605ffc9a7E.exit.i"

_ZN10serde_json3ser18format_escaped_str17h4809ffb8043e5c36E.exit.i.i.i.i.i118.peel: ; preds = %.noexc123.peel
  %i.ci = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17habb299c3513606fdE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 1)
          to label %.noexc124.peel unwind label %.loopexit.loopexit.split-lp, !inline_history !5984 ; 2 uses

.noexc124.peel:                                   ; preds = %_ZN10serde_json3ser18format_escaped_str17h4809ffb8043e5c36E.exit.i.i.i.i.i118.peel
  %.not.i.i.i.i.i119.peel = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i119.peel, label %bb.u, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h1172b2f605ffc9a7E.exit.i", !prof !60

bb.u:                                             ; preds = %.noexc124.peel
  %i.cj = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17habb299c3513606fdE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 1)
          to label %.noexc126.peel unwind label %.loopexit.loopexit.split-lp, !inline_history !5984 ; 2 uses

.noexc126.peel:                                   ; preds = %bb.u
  %.not.i7.i.peel = icmp eq ptr %i.cj, null
  br i1 %.not.i7.i.peel, label %bb.v, label %.loopexit152, !prof !58

bb.v:                                             ; preds = %.noexc126.peel
  %i.ck = invoke fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hdc5e9e4a6c86ac43E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cd, ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hf800ea71196a65d6E.exit.peel unwind label %.loopexit.loopexit.split-lp, !inline_history !5984 ; 2 uses

_ZN10serde_core3ser12SerializeMap15serialize_entry17hf800ea71196a65d6E.exit.peel: ; preds = %bb.v
  %.not67.peel = icmp eq ptr %i.ck, null
  br i1 %.not67.peel, label %bb.w, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hf800ea71196a65d6E.exit.thread.loopexit

bb.w:                                             ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17hf800ea71196a65d6E.exit.peel
  %i.cl = icmp eq i64 %.sroa.031.0.copyload.peel, 0
  br i1 %i.cl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i132.peel", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @mi_free(ptr noundef nonnull %.val93.peel) #38, !noalias !6021
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i132.peel"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i132.peel": ; preds = %bb.x, %bb.w
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.cd)
          to label %"_ZN4core3ptr77drop_in_place$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$17h1c908874a5dea84aE.exit134.peel" unwind label %.loopexit79.loopexit.split-lp

"_ZN4core3ptr77drop_in_place$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$17h1c908874a5dea84aE.exit134.peel": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i132.peel"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.cm = icmp eq i64 %.sroa.3.0.copyload, 1
  br i1 %i.cm, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit"

bb.y:                                             ; preds = %.loopexit79, %.loopexit.split-lp80, %bb.ad
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ad ], [ %lpad.phi154, %.loopexit79 ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h2c29e092b801fb80E"(ptr noalias noundef align 8 dereferenceable(32) %i.i) #44
          to label %.body unwind label %bb.ai

.loopexit79.loopexit:                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i132"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit79

.loopexit79.loopexit.split-lp:                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i132.peel"
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit79

.loopexit79:                                      ; preds = %.loopexit79.loopexit.split-lp, %.loopexit79.loopexit
  %.lcssa143 = phi ptr [ %i.co, %.loopexit79.loopexit ], [ %i.cf, %.loopexit79.loopexit.split-lp ]
  %lpad.phi154 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit79.loopexit ], [ %lpad.loopexit.split-lp153, %.loopexit79.loopexit.split-lp ]
  store ptr %.lcssa143, ptr %.sroa.529.0..sroa_idx, align 8
  br label %bb.y

.loopexit.split-lp80:                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i"
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit": ; preds = %"_ZN4core3ptr77drop_in_place$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$17h1c908874a5dea84aE.exit134.peel", %"_ZN4core3ptr77drop_in_place$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$17h1c908874a5dea84aE.exit134"
  %i.cn = phi ptr [ %i.co, %"_ZN4core3ptr77drop_in_place$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$17h1c908874a5dea84aE.exit134" ], [ %i.cf, %"_ZN4core3ptr77drop_in_place$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$17h1c908874a5dea84aE.exit134.peel" ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104 ; 11 uses
  %.sroa.031.0.copyload = load i64, ptr %i.cn, align 8, !noalias !6020 ; 9 uses
  %.not65 = icmp eq i64 %.sroa.031.0.copyload, -9223372036854775808
  br i1 %.not65, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit.thread", label %_ZN10serde_json3ser9Formatter16begin_object_key17h8d5031118521dd11E.exit.i.i111

_ZN10serde_json3ser9Formatter16begin_object_key17h8d5031118521dd11E.exit.i.i111: ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60593024d4cd2eb9E.exit"
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.450)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.450, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.532.0..sroa_idx, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@"_ZN11meilisearch9analytics17segment_analytics7Segment3run28_$u7b$$u7b$closure$u7d$$u7d$17haa84738755907543E":bb.a
  %.phi.trans.insert.i.i.i.i115.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.pre1.i.i.i.i116.i = load i64, ptr %.phi.trans.insert.i.i.i.i115.i, align 8, !noalias !9592
  br label %bb.ao

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i106.i": ; preds = %bb.am
  %i.en = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc117.i unwind label %bb.an ; 2 uses

.noexc117.i:                                      ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i106.i"
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = extractvalue { i64, i64 } %i.en, 1      ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !noalias !9593
  store i8 1, ptr %i.dy, align 8, !noalias !9593
  br label %bb.ao

bb.an:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i106.i"
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit161.i"

bb.ao:                                            ; preds = %.noexc117.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i113.i
  %.pre-phi2.i.i107.i = phi i64 [ %.pre1.i.i.i.i116.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i113.i ], [ %i.ep, %.noexc117.i ]
  %i.es = phi i64 [ %.pre.i.i.i.i114.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i113.i ], [ %i.eo, %.noexc117.i ] ; 2 uses
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.dx, align 8, !noalias !9592
  store i64 0, ptr %i.am, align 8, !alias.scope !9590, !noalias !9577
  %.sroa.4.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i108.i, align 8, !alias.scope !9590, !noalias !9577
  %.sroa.5.0..sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i109.i, align 8, !alias.scope !9590, !noalias !9577
  %.sroa.6.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i110.i, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !9577
  %.sroa.7.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i64 %i.es, ptr %.sroa.7.0..sroa_idx.i111.i, align 8, !alias.scope !9590, !noalias !9577
  %.sroa.8.0..sroa_idx.i112.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i64 %.pre-phi2.i.i107.i, ptr %.sroa.8.0..sroa_idx.i112.i, align 8, !alias.scope !9590, !noalias !9577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9577
  call void @llvm.experimental.noalias.scope.decl(metadata !9594)
  call void @llvm.experimental.noalias.scope.decl(metadata !9595)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !9596
  %i.eu = call noundef ptr @mi_malloc_aligned(i64 noundef range(i64 0, 8) 7, i64 noundef range(i64 1, 9) 1) #38, !noalias !9596 ; 5 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 0, 8) 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2139) #43
          to label %.noexc121.i unwind label %bb.aq

.noexc121.i:                                      ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9577
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit131.i"

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.eu, ptr noundef nonnull readonly align 1 dereferenceable(7) @433, i64 range(i64 0, 8) 7, i1 false), !noalias !9597
  store i64 7, ptr %i.ak, align 8, !alias.scope !9598, !noalias !9599
  %.sroa.4.0..sroa_idx.i.i119.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.eu, ptr %.sroa.4.0..sroa_idx.i.i119.i, align 8, !alias.scope !9598, !noalias !9599
  %.sroa.5.0..sroa_idx.i.i120.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 7, ptr %.sroa.5.0..sroa_idx.i.i120.i, align 8, !alias.scope !9598, !noalias !9599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9577
  %i.ex = icmp slt i64 %.5.i.i, 0
  br i1 %i.ex, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.ar
  %i.ey = icmp eq i64 %.5.i.i, 0                  ; 3 uses
  br i1 %i.ey, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.thread.i, label %bb.as

bb.as:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !9600
  %i.ez = call noundef ptr @mi_malloc_aligned(i64 noundef %.5.i.i, i64 noundef range(i64 1, 9) 1) #38, !noalias !9600 ; 4 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.as ], [ 0, %bb.ar ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2139) #43
          to label %.noexc125.i unwind label %bb.cf

.noexc125.i:                                      ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr nonnull readonly align 1 %..i.i, i64 %.5.i.i, i1 false), !noalias !9601
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !9602
  %i.fb = call noundef ptr @mi_malloc_aligned(i64 noundef %.5.i.i, i64 noundef range(i64 1, 9) 1) #38, !noalias !9602 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.av, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.thread.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2139) #43
          to label %.noexc126.i unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit158.i"

.noexc126.i:                                      ; preds = %bb.av
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit158.i": ; preds = %bb.av
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9577
  call void @mi_free(ptr noundef nonnull %i.eu) #38, !noalias !9603
  br label %bb.ce

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.thread.i: ; preds = %bb.au, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i350.i = phi ptr [ %i.ez, %bb.au ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ %i.fb, %bb.au ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.10.0.i.i.i.i350.i, i64 %.5.i.i, i1 false), !noalias !9604
  store i64 -9223372036854775805, ptr %i.aj, align 8, !alias.scope !9605, !noalias !9606
  %.sroa.7299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.5.i.i, ptr %.sroa.7299.0..sroa_idx.i, align 8, !alias.scope !9605, !noalias !9606
  %.sroa.9300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.9300.0..sroa_idx.i, align 8, !alias.scope !9605, !noalias !9606
  %.sroa.10301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.5.i.i, ptr %.sroa.10301.0..sroa_idx.i, align 8, !alias.scope !9605, !noalias !9606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9607
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h662b4cd7dfae2bd4E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.aj)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.thread.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9577
  br label %bb.ce

bb.ax:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.thread.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.ff, i64 72, i1 false), !noalias !9608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9577
  %i.fg = load i64, ptr %i.al, align 8, !range !86, !alias.scope !9609, !noalias !9577, !noundef !45
  %i.fh = icmp eq i64 %i.fg, -9223372036854775803
  br i1 %i.fh, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.al)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i" unwind label %bb.bb

bb.az:                                            ; preds = %bb.ce, %bb.bb
  %.sroa.10.0.i.i.i.i351.i = phi ptr [ %.sroa.10.0.i.i.i.i350.i, %bb.bb ], [ %.sroa.10.0.i.i.i.i352358.i, %bb.ce ]
  %.pn31.i = phi { ptr, i32 } [ %i.fi, %bb.bb ], [ %.pn29360.i, %bb.ce ] ; 2 uses
  br i1 %i.ey, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit131.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i.i351.i) #38, !noalias !9610
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit131.i"

bb.bb:                                            ; preds = %bb.ay
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i": ; preds = %bb.ay, %bb.ax
  br i1 %i.ey, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit134.i", label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i"
  call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i.i350.i) #38, !noalias !9611
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit134.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit134.i": ; preds = %bb.bc, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %i.am, i64 72, i1 false), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9612
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h662b4cd7dfae2bd4E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.an)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit134.i"
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9577
  br label %bb.ak

bb.be:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit134.i"
  %i.fk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.fk, i64 72, i1 false), !noalias !9613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !9577
  %i.fl = load i64, ptr %i.ap, align 8, !range !86, !alias.scope !9614, !noalias !9577, !noundef !45
  %i.fm = icmp eq i64 %i.fl, -9223372036854775803
  br i1 %i.fm, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit138.i", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ap)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit138.i" unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.ak
  %.pn40.i = phi { ptr, i32 } [ %i.fs, %bb.bh ], [ %.pn37.pn.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9577
  call void @llvm.experimental.noalias.scope.decl(metadata !9615)
  call void @llvm.experimental.noalias.scope.decl(metadata !9616)
  call void @llvm.experimental.noalias.scope.decl(metadata !9617)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.val1.i.i.i98 = load i64, ptr %i.fn, align 8, !alias.scope !9618, !noundef !45 ; 2 uses
  %i.fo = icmp eq i64 %.val1.i.i.i98, 0
  br i1 %i.fo, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i102", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i99

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i99: ; preds = %bb.bg
  %.val.i.i.i100 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !9618, !nonnull !45, !noundef !45
  %i.fp = shl i64 %.val1.i.i.i98, 3
  %.not19 = and i64 %i.fp, -16
  %i.fq = xor i64 %.not19, -16
  %i.fr = getelementptr inbounds i8, ptr %.val.i.i.i100, i64 %i.fq
  call void @mi_free(ptr noundef nonnull %i.fr) #38, !noalias !9618, !inline_history !10
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i102"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i102": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i99, %bb.bg
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.aq)
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit104" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !109

bb.bh:                                            ; preds = %bb.bf
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit138.i": ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i64 72, i1 false), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !9577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9577
  %i.ft = load ptr, ptr %i.cv, align 8, !noalias !9577, !nonnull !45, !align !48, !noundef !45 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1024 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9619)
  call void @llvm.experimental.noalias.scope.decl(metadata !9620)
  %i.fv = load i64, ptr %i.fu, align 8, !range !99, !alias.scope !9620, !noalias !9619, !noundef !45 ; 2 uses
  %i.fw = xor i64 %i.fv, -9223372036854775808
  %i.fx = icmp slt i64 %i.fv, 0
  %i.fy = select i1 %i.fx, i64 %i.fw, i64 2
  switch i64 %i.fy, label %bb.bi [
    i64 0, label %bb.bj
    i64 1, label %bb.bk
    i64 2, label %bb.bl
  ]

bb.bi:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit138.i"
  unreachable

bb.bj:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit138.i"
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 1032
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1331)
          to label %.noexc141.i unwind label %bb.bp

.noexc141.i:                                      ; preds = %bb.bj
  store i64 -9223372036854775808, ptr %i.ai, align 8, !alias.scope !9619, !noalias !9621
  br label %bb.br

bb.bk:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit138.i"
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 1032
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1331)
          to label %.noexc142.i unwind label %bb.bp

.noexc142.i:                                      ; preds = %bb.bk
  store i64 -9223372036854775807, ptr %i.ai, align 8, !alias.scope !9619, !noalias !9621
  br label %bb.br

bb.bl:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit138.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9622
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1331)
          to label %.noexc143.i unwind label %bb.bp

.noexc143.i:                                      ; preds = %bb.bl
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 1048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9622
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1331)
          to label %bb.bo unwind label %bb.bm, !noalias !9619

bb.bm:                                            ; preds = %.noexc143.i
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9623)
  %.val.i.i139.i = load i64, ptr %i.u, align 8, !alias.scope !9623, !noalias !9622
  %i.gf = icmp eq i64 %.val.i.i139.i, 0
  br i1 %i.gf, label %.body144.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i.i140.i = load ptr, ptr %i.gg, align 8, !alias.scope !9623, !noalias !9622, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val1.i.i140.i) #38, !noalias !9624
  br label %.body144.i

bb.bo:                                            ; preds = %.noexc143.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !9621
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !9621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9622
  br label %bb.br

bb.bp:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body144.i

.body144.i:                                       ; preds = %bb.bp, %bb.bn, %bb.bm
  %eh.lpad-body145.i = phi { ptr, i32 } [ %i.gi, %bb.bp ], [ %i.ge, %bb.bn ], [ %i.ge, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9577
  %i.gj = load i64, ptr %i.ar, align 8, !range !86, !alias.scope !9625, !noalias !9577, !noundef !45
  %i.gk = icmp eq i64 %i.gj, -9223372036854775803
  br i1 %i.gk, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit147.i", label %bb.bq

bb.bq:                                            ; preds = %.body144.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ar)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit147.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bo, %.noexc142.i, %.noexc141.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9577
  %i.gl = load ptr, ptr %i.cv, align 8, !noalias !9577, !nonnull !45, !align !48, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9577
  store i8 0, ptr %i.cw, align 2, !noalias !9577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %i.av, i64 88, i1 false), !noalias !9577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9577
  %.val99.i = load ptr, ptr %i.da, align 8, !noalias !9577, !nonnull !45, !noundef !45
  %i.gm = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  invoke void @_ZN15index_scheduler14IndexScheduler8features17h511146f65b299aceE(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(address) dereferenceable(16) %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.gm)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9577
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$meilisearch..routes..Stats$GT$17h92eb2b6b5cd64fd5E"(ptr noalias noundef align 8 dereferenceable(88) %i.av) #44
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !alias.scope !9626, !noalias !9577
  invoke void @_ZN11meilisearch9analytics17segment_analytics7Segment14compute_traits17h10fd6353fd87e1adE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(856) %i.gl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.ag, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.af)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9577
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9577
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9628
  invoke void @"_ZN65_$LT$segment..message..User$u20$as$u20$core..default..Default$GT$7default17he4c2cbc8b66cc036E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s)
          to label %.noexc149.i unwind label %bb.bz

.noexc149.i:                                      ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9628
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !9628
  %i.gr = load i8, ptr %i.dy, align 8, !range !52, !noalias !9629, !noundef !45
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i: ; preds = %.noexc149.i
  %.pre.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !9630
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !9630
  br label %.thread439.i

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i": ; preds = %.noexc149.i
  %i.gt = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.bx, !noalias !9627 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i"
  %i.gu = extractvalue { i64, i64 } %i.gt, 0
  %i.gv = extractvalue { i64, i64 } %i.gt, 1      ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.gv, ptr %i.gw, align 8, !noalias !9631
  store i8 1, ptr %i.dy, align 8, !noalias !9631
  br label %.thread439.i

bb.bw:                                            ; preds = %bb.bx
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !9627
  unreachable

bb.bx:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i"
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.r) #44
          to label %bb.by unwind label %bb.bw, !noalias !9627

bb.by:                                            ; preds = %bb.bx
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E"(ptr noalias noundef align 8 dereferenceable(48) %i.s) #44, !noalias !9627
  br label %.body150.i

bb.bz:                                            ; preds = %bb.bv
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body150.i

.body150.i:                                       ; preds = %bb.bz, %bb.by
  %eh.lpad-body151.i = phi { ptr, i32 } [ %i.gz, %bb.bz ], [ %i.gy, %bb.by ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.ah) #44
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread439.i:                                     ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i
  %.pre-phi15.i.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i ], [ %i.gv, %.noexc.i.i ]
  %i.ha = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i ], [ %i.gu, %.noexc.i.i ] ; 2 uses
  %i.hb = add i64 %i.ha, 1
  store i64 %i.hb, ptr %i.dx, align 8, !noalias !9630
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 4360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !9577
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 4408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hd, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !noalias !9577
  %.sroa.3.0..sroa_idx.i148.i = getelementptr inbounds nuw i8, ptr %0, i64 4631
  store i8 1, ptr %.sroa.3.0..sroa_idx.i148.i, align 1, !alias.scope !9627, !noalias !9577
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 4480
  store i64 -9223372036854775803, ptr %i.he, align 8, !alias.scope !9627, !noalias !9577
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 2 uses
  store i64 -9223372036854775803, ptr %i.hf, align 8, !alias.scope !9627, !noalias !9577
  store i64 0, ptr %i.gq, align 8, !alias.scope !9627, !noalias !9577
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4296
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !9627, !noalias !9577
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4304
  store i64 0, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !9627, !noalias !9577
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !9577
  %.sroa.710.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4344
  store i64 %i.ha, ptr %.sroa.710.0..sroa_idx.i.i, align 8, !alias.scope !9627, !noalias !9577
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4352
  store i64 %.pre-phi15.i.i, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !alias.scope !9627, !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9628
  %i.hg = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hg, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false), !noalias !9577
  %i.hh = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hh, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false), !noalias !9577
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.hj = getelementptr inbounds nuw i8, ptr %i.as, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false), !noalias !9577
  %i.hk = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hk, ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i64 72, i1 false), !noalias !9577
  %i.hl = getelementptr inbounds nuw i8, ptr %i.as, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hl, ptr noundef nonnull align 8 dereferenceable(72) %i.hf, i64 72, i1 false), !noalias !9577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.gq, i64 72, i1 false), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9577
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.hm, ptr noundef nonnull align 8 dereferenceable(352) %i.as, i64 352, i1 false), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3064
  store ptr %i.dw, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !9577
  %.sroa.9296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4264 ; 2 uses
  store i8 0, ptr %.sroa.9296.0..sroa_idx.i, align 8, !noalias !9577
  br label %bb.cp

.body172.i:                                       ; preds = %.body167.i, %bb.fe, %bb.fa
  %i.hn = phi ptr [ %i.nc, %bb.fe ], [ %i.ql, %.body167.i ], [ %i.nc, %bb.fa ] ; 2 uses
  %i.ho = phi ptr [ %i.nd, %bb.fe ], [ %i.qm, %.body167.i ], [ %i.nd, %bb.fa ] ; 2 uses
  %.pn51.i = phi { ptr, i32 } [ %i.nk, %bb.fe ], [ %.pn49.i, %.body167.i ], [ %i.nj, %bb.fa ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 4360
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E"(ptr noalias noundef align 8 dereferenceable(48) %i.hp) #44
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4408
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.hq) #44
          to label %bb.ga unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2f69a1aee2f289E.exit.i.i.i.i.i", %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i102", %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i", %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i", %bb.ld, %bb.lb, %bb.kn, %bb.kf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit272.i", %bb.jw, %bb.js, %.body265.i, %bb.gg, %bb.ge, %bb.gd, %bb.gb, %.body167.i, %bb.fj, %bb.cl, %bb.cd, %bb.cb, %.body172.i, %.body150.i, %bb.bs, %bb.bq, %bb.x
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body88

.body88:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.kl, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.cj
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.ca:                                            ; preds = %.body150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9577
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E"(ptr noalias noundef align 8 dereferenceable(48) %i.ai) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9577
  %i.hr = load i64, ptr %i.ar, align 8, !range !86, !alias.scope !9632, !noalias !9577, !noundef !45
  %i.hs = icmp eq i64 %i.hr, -9223372036854775803
  br i1 %i.hs, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit153.i", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ar)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit153.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit153.i": ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i": ; preds = %bb.gb, %bb.ga, %bb.fn, %bb.fk, %bb.fj, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit147.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit155.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit153.i"
  %i.ht = phi ptr [ %i.nc, %bb.fn ], [ %i.cu, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit147.i" ], [ %i.nc, %bb.fk ], [ %i.cu, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit153.i" ], [ %i.cu, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit155.i" ], [ %i.nc, %bb.fj ], [ %i.hn, %bb.gb ], [ %i.hn, %bb.ga ]
  %i.hu = phi ptr [ %i.nd, %bb.fn ], [ %i.cv, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit147.i" ], [ %i.nd, %bb.fk ], [ %i.cv, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit153.i" ], [ %i.cv, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit155.i" ], [ %i.nd, %bb.fj ], [ %i.ho, %bb.gb ], [ %i.ho, %bb.ga ]
  %.pn55.i = phi { ptr, i32 } [ %i.oh, %bb.fn ], [ %.pn43.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit147.i" ], [ %i.oa, %bb.fk ], [ %eh.lpad-body151.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit153.i" ], [ %.pn45369.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit155.i" ], [ %i.oa, %bb.fj ], [ %.pn51.i, %bb.gb ], [ %.pn51.i, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !9577
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bu, %bb.bs
  %.pn45369.i = phi { ptr, i32 } [ %i.go, %bb.bs ], [ %i.gp, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9577
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E"(ptr noalias noundef align 8 dereferenceable(48) %i.ai) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9577
  %i.hv = load i64, ptr %i.ar, align 8, !range !86, !alias.scope !9633, !noalias !9577, !noundef !45
  %i.hw = icmp eq i64 %i.hv, -9223372036854775803
  br i1 %i.hw, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit155.i", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ar)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit155.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit155.i": ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit147.i": ; preds = %bb.bq, %.body144.i, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit104"
  %.pn43.i = phi { ptr, i32 } [ %.pn40.pn.i, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit104" ], [ %eh.lpad-body145.i, %bb.bq ], [ %eh.lpad-body145.i, %.body144.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i"

bb.ce:                                            ; preds = %bb.aw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit158.i"
  %.pn29360.i = phi { ptr, i32 } [ %i.fd, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit158.i" ], [ %i.fe, %bb.aw ]
  %.sroa.10.0.i.i.i.i352358.i = phi ptr [ %i.ez, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit158.i" ], [ %.sroa.10.0.i.i.i.i350.i, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9577
  br label %bb.az

bb.cf:                                            ; preds = %bb.at
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9577
  call void @mi_free(ptr noundef nonnull %i.eu) #38, !noalias !9634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9577
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit131.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit131.i": ; preds = %bb.cf, %bb.ba, %bb.az, %bb.aq
  %.pn33.pn.i = phi { ptr, i32 } [ %i.ew, %bb.aq ], [ %.pn31.i, %bb.ba ], [ %i.hx, %bb.cf ], [ %.pn31.i, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9577
  call void @llvm.experimental.noalias.scope.decl(metadata !9635)
  call void @llvm.experimental.noalias.scope.decl(metadata !9636)
  call void @llvm.experimental.noalias.scope.decl(metadata !9637)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.val1.i.i.i = load i64, ptr %i.hy, align 8, !alias.scope !9638, !noundef !45 ; 2 uses
  %i.hz = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.hz, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit131.i"
  %.val.i.i.i96 = load ptr, ptr %.sroa.6.0..sroa_idx.i110.i, align 8, !alias.scope !9638, !nonnull !45, !noundef !45
  %i.ia = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.ia, -16
  %i.ib = xor i64 %.not, -16
  %i.ic = getelementptr inbounds i8, ptr %.val.i.i.i96, i64 %i.ib
  call void @mi_free(ptr noundef nonnull %i.ic) #38, !noalias !9638, !inline_history !10
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit131.i"
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.am)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit161.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !109

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit161.i": ; preds = %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i", %bb.an
  %.pn33.pn.pn.i = phi { ptr, i32 } [ %i.er, %bb.an ], [ %.pn33.pn.i, %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9577
  call void @mi_free(ptr noundef nonnull %i.ei) #38, !noalias !9639
  br label %bb.ak

bb.cg:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i", %bb.ad
  %i.id = phi ptr [ %i.ht, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i" ], [ %i.cu, %bb.ad ] ; 2 uses
  %i.ie = phi ptr [ %i.hu, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i" ], [ %i.cv, %bb.ad ] ; 2 uses
  %.pn55.pn.i = phi { ptr, i32 } [ %.pn55.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i" ], [ %i.ds, %bb.ad ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 2482 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 2, !range !52, !noalias !9577, !noundef !45
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.gd, label %bb.gc

bb.ch:                                            ; preds = %bb.ge, %bb.gc, %bb.fs, %bb.z
  %i.ii = phi ptr [ %i.oi, %bb.fs ], [ %i.id, %bb.gc ], [ %i.id, %bb.ge ], [ %i.cu, %bb.z ]
  %i.ij = phi ptr [ %i.oj, %bb.fs ], [ %i.ie, %bb.gc ], [ %i.ie, %bb.ge ], [ %i.cv, %bb.z ]
  %.pn59.i = phi { ptr, i32 } [ %i.ot, %bb.fs ], [ %.pn55.pn.i, %bb.gc ], [ %.pn55.pn.i, %bb.ge ], [ %i.dn, %bb.z ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9640)
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !range !56, !alias.scope !9641, !noundef !45
  %i.in = icmp eq i64 %i.im, 2
  br i1 %i.in, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i", label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$meilisearch_auth..SearchRules$GT$17h51377b2c85561c7aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.il)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i" unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$meilisearch_auth..SearchRules$GT$17h51377b2c85561c7aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.ik) #44
          to label %.body88 unwind label %bb.ck

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i": ; preds = %bb.ci, %bb.ch
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$meilisearch_auth..SearchRules$GT$17h51377b2c85561c7aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.ik)
          to label %.body181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.cj
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !9640
  unreachable

"_ZN4core3ptr82drop_in_place$LT$actix_web..data..Data$LT$meilisearch_auth..AuthController$GT$$GT$17hfc3485ab499de03bE.exit.i": ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !9577
  call void @llvm.experimental.noalias.scope.decl(metadata !9642)
  call void @llvm.experimental.noalias.scope.decl(metadata !9643)
  call void @llvm.experimental.noalias.scope.decl(metadata !9644)
  %i.iq = load ptr, ptr %i.ax, align 8, !alias.scope !9645, !noalias !9577, !nonnull !45, !noundef !45
  %i.ir = atomicrmw sub ptr %i.iq, i64 1 release, align 8, !noalias !9645
  %i.is = icmp eq i64 %i.ir, 1
  br i1 %i.is, label %bb.cl, label %"_ZN4core3ptr81drop_in_place$LT$actix_web..data..Data$LT$index_scheduler..IndexScheduler$GT$$GT$17hb0eaf4f47822e8cdE.exit163.i"

bb.cl:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$actix_web..data..Data$LT$meilisearch_auth..AuthController$GT$$GT$17hfc3485ab499de03bE.exit.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h97cd345f4c1367bfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %"_ZN4core3ptr81drop_in_place$LT$actix_web..data..Data$LT$index_scheduler..IndexScheduler$GT$$GT$17hb0eaf4f47822e8cdE.exit163.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr81drop_in_place$LT$actix_web..data..Data$LT$index_scheduler..IndexScheduler$GT$$GT$17hb0eaf4f47822e8cdE.exit163.i": ; preds = %bb.cl, %"_ZN4core3ptr82drop_in_place$LT$actix_web..data..Data$LT$meilisearch_auth..AuthController$GT$$GT$17hfc3485ab499de03bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !9577
  br label %.body181.i

.body181.i:                                       ; preds = %bb.kh, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h169b8c53bf006047E.exit.i.i.i.i", %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i", %.body277.i, %bb.fv, %bb.ft, %bb.fq, %"_ZN4core3ptr81drop_in_place$LT$actix_web..data..Data$LT$index_scheduler..IndexScheduler$GT$$GT$17hb0eaf4f47822e8cdE.exit163.i"
  %i.it = phi ptr [ %i.ol, %bb.ft ], [ %i.adz, %.body277.i ], [ %i.ol, %bb.fq ], [ %i.pu, %bb.fv ], [ %i.cu, %"_ZN4core3ptr81drop_in_place$LT$actix_web..data..Data$LT$index_scheduler..IndexScheduler$GT$$GT$17hb0eaf4f47822e8cdE.exit163.i" ], [ %i.ii, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i" ], [ %i.aau, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h169b8c53bf006047E.exit.i.i.i.i" ], [ %i.aau, %bb.kh ] ; 2 uses
  %i.iu = phi ptr [ %i.om, %bb.ft ], [ %i.aea, %.body277.i ], [ %i.om, %bb.fq ], [ %i.pv, %bb.fv ], [ %i.cv, %"_ZN4core3ptr81drop_in_place$LT$actix_web..data..Data$LT$index_scheduler..IndexScheduler$GT$$GT$17hb0eaf4f47822e8cdE.exit163.i" ], [ %i.ij, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i" ], [ %i.aav, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h169b8c53bf006047E.exit.i.i.i.i" ], [ %i.aav, %bb.kh ] ; 2 uses
  %.pn88.pn.pn.pn.i = phi { ptr, i32 } [ %i.ou, %bb.ft ], [ %.pn65.i, %.body277.i ], [ %i.or, %bb.fq ], [ %i.po, %bb.fv ], [ %i.dj, %"_ZN4core3ptr81drop_in_place$LT$actix_web..data..Data$LT$index_scheduler..IndexScheduler$GT$$GT$17hb0eaf4f47822e8cdE.exit163.i" ], [ %.pn59.i, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i" ], [ %.pn83.pn.pn.pn.i, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h169b8c53bf006047E.exit.i.i.i.i" ], [ %.pn83.pn.pn.pn.i, %bb.kh ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 2483 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !range !52, !noalias !9577, !noundef !45
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.lc, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$meilisearch_auth..AuthController$GT$$GT$17h3d84dd8e142ad0b7E.exit.i"

bb.cm:                                            ; preds = %bb.q
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434) #43
          to label %.noexc65 unwind label %bb.le

.noexc65:                                         ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.q
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434) #43
          to label %.noexc66 unwind label %bb.le

.noexc66:                                         ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !9577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !9577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !9577
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 4264 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !51, !noalias !9646
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 3 uses
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %._crit_edge223
    i8 1, label %bb.dm
    i8 2, label %bb.dn
    i8 3, label %bb.do
  ]

._crit_edge223:                                   ; preds = %bb.co
  %.phi.trans.insert224 = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %.pre225 = load ptr, ptr %.phi.trans.insert224, align 8, !noalias !9646
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge223, %.thread439.i
  %i.iz = phi ptr [ %i.cu, %.thread439.i ], [ %i.ct, %._crit_edge223 ] ; 4 uses
  %i.ja = phi ptr [ %i.cv, %.thread439.i ], [ %i.cs, %._crit_edge223 ] ; 4 uses
  %i.jb = phi ptr [ %i.dw, %.thread439.i ], [ %.pre225, %._crit_edge223 ] ; 6 uses
  %i.jc = phi ptr [ %.sroa.9296.0..sroa_idx.i, %.thread439.i ], [ %.phi.trans.insert.i, %._crit_edge223 ] ; 4 uses
  %i.jd = phi ptr [ %i.hm, %.thread439.i ], [ %i.iy, %._crit_edge223 ] ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 4265 ; 2 uses
  store i8 0, ptr %i.je, align 1, !noalias !9646
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  store ptr %i.jb, ptr %i.jf, align 8, !noalias !9646
  %i.jg = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.jg, ptr noundef nonnull align 8 dereferenceable(352) %i.jd, i64 352, i1 false), !noalias !9646
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9647)
  store i64 0, ptr %i.l, align 8, !noalias !9648
  %.sink.i.sroa.gep19.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 344
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 136
  %i.jj = load i8, ptr %i.ji, align 8, !range !52, !alias.scope !9647, !noalias !9649, !noundef !45
  %i.jk = trunc nuw i8 %i.jj to i1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.l, i64 351
  %i.jm = load i8, ptr %i.jl, align 1, !range !52, !noalias !9648
  %.not.not.i.i.i = icmp ne i8 %i.jm, 0
  %or.cond.not.i.i.i = select i1 %i.jk, i1 %.not.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cs, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9648
  invoke fastcc void @_ZN10serde_json3ser6to_vec17ha0a9bb32ca7cb575E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %i.l)
          to label %bb.ct unwind label %bb.de, !noalias !9650

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9648
  invoke fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.n)
          to label %bb.cs unwind label %bb.de, !noalias !9650

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep19.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !noalias !9648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9648
  br label %bb.cq

bb.ct:                                            ; preds = %bb.cq
  %i.jn = load i64, ptr %i.m, align 8, !range !102, !noalias !9648, !noundef !45 ; 2 uses
  %i.jo = icmp eq i64 %i.jn, -9223372036854775808
  %i.jp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !9648 ; 3 uses
  br i1 %i.jo, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9648
  br label %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit.i.i.i"

bb.cv:                                            ; preds = %bb.ct
  %.sroa.613.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.613.0.copyload.i.i.i = load i64, ptr %.sroa.613.0..sroa_idx.i.i.i, align 8, !noalias !9648 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9648
  %i.jr = icmp sgt i64 %.sroa.613.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.jr)
  %i.js = icmp eq i64 %i.jn, 0
  br i1 %i.js, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jq) ]
  call void @mi_free(ptr noundef nonnull %i.jq) #38, !noalias !9650
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i": ; preds = %bb.cw, %bb.cv
  %i.jt = icmp samesign ugt i64 %.sroa.613.0.copyload.i.i.i, 32768
  br i1 %i.jt, label %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit.i.i.i", label %bb.cx

bb.cx:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i"
  %i.ju = add nuw nsw i64 %.sroa.613.0.copyload.i.i.i, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jb, i64 128 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !9647, !noalias !9649, !noundef !45
  %i.jx = add i64 %i.ju, %i.jw                    ; 2 uses
  store i64 %i.jx, ptr %i.jv, align 8, !alias.scope !9647, !noalias !9649
  %i.jy = icmp ugt i64 %i.jx, 512000
  br i1 %i.jy, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
end_hunk_1
begin_hunk_2_@"_ZN11meilisearch9analytics17segment_analytics7Segment3run28_$u7b$$u7b$closure$u7d$$u7d$17haa84738755907543E":bb.a
  switch i64 %i.nf, label %bb.fc [
    i64 3, label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit.i"
    i64 0, label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit.i"
    i64 1, label %bb.fd
  ]

bb.fc:                                            ; preds = %bb.fb
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Error$GT$17h2cd339c170e43267E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ni)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit.i" unwind label %bb.fa

bb.fd:                                            ; preds = %bb.fb
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_json..error..ErrorCode$GT$17hfdb6f07995d5840dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.nh)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit.i.i.i" unwind label %bb.fe, !noalias !9665

bb.fe:                                            ; preds = %bb.fd
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.nh) #38, !noalias !9665
  br label %.body172.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit.i.i.i": ; preds = %bb.fd
  call void @mi_free(ptr noundef nonnull %i.nh) #38, !noalias !9665
  br label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit.i"

"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit.i": ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit.i.i.i", %bb.fc, %bb.fb, %bb.fb
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 4360 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9666)
  %i.nm = load i64, ptr %i.nl, align 8, !range !99, !alias.scope !9666, !noalias !9577, !noundef !45 ; 3 uses
  %i.nn = xor i64 %i.nm, -9223372036854775808
  %i.no = icmp slt i64 %i.nm, 0
  %i.np = select i1 %i.no, i64 %i.nn, i64 2
  switch i64 %i.np, label %bb.ff [
    i64 0, label %bb.fh
    i64 1, label %bb.fi
  ]

bb.ff:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !9667)
  %i.nq = icmp eq i64 %i.nm, 0
  br i1 %i.nq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i175.i", label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %.val1.i.i174.i = load ptr, ptr %i.nr, align 8, !alias.scope !9668, !noalias !9577, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val1.i.i174.i) #38, !noalias !9668
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i175.i"

bb.fh:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit.i"
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %.val.i1.i.i = load i64, ptr %i.ns, align 8, !alias.scope !9669, !noalias !9577
  %i.nt = icmp eq i64 %.val.i1.i.i, 0
  br i1 %i.nt, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i.i"

bb.fi:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit.i"
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %.val.i4.i.i = load i64, ptr %i.nu, align 8, !alias.scope !9670, !noalias !9577
  %i.nv = icmp eq i64 %.val.i4.i.i, 0
  br i1 %i.nv, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i175.i", %bb.fi, %bb.fh
  %.sink13.i.i = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i175.i" ], [ 16, %bb.fh ], [ 16, %bb.fi ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.sink13.i.i
  %.val1.i11.i.i = load ptr, ptr %i.nw, align 8, !alias.scope !9666, !noalias !9577, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val1.i11.i.i) #38, !noalias !9666
  br label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i175.i": ; preds = %bb.fg, %bb.ff
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %.val.i10.i.i = load i64, ptr %i.nx, align 8, !alias.scope !9671, !noalias !9577
  %i.ny = icmp eq i64 %.val.i10.i.i, 0
  br i1 %i.ny, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i.i"

"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i175.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i.i", %bb.fi, %bb.fh
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 4408
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.nz)
          to label %bb.fl unwind label %bb.fk

bb.fj:                                            ; preds = %bb.fk
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ob)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fk:                                            ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit.i"
  %i.oa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !range !86, !alias.scope !9672, !noalias !9577, !noundef !45
  %i.od = icmp eq i64 %i.oc, -9223372036854775803
  br i1 %i.od, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i", label %bb.fj

bb.fl:                                            ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit.i"
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !range !86, !alias.scope !9673, !noalias !9577, !noundef !45
  %i.og = icmp eq i64 %i.of, -9223372036854775803
  br i1 %i.og, label %bb.ab, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.oe)
          to label %bb.ab unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i"

.thread.i:                                        ; preds = %bb.ab, %bb.aa
  %i.oi = phi ptr [ %i.nc, %bb.ab ], [ %i.cu, %bb.aa ] ; 2 uses
  %i.oj = phi ptr [ %i.nd, %bb.ab ], [ %i.cv, %bb.aa ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 2488
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$meilisearch..routes..Stats$C$meilisearch_types..error..ResponseError$GT$$GT$17h2babee6288fb2931E"(ptr noalias noundef align 8 dereferenceable(104) %i.ok)
          to label %bb.fo unwind label %bb.fs

bb.fo:                                            ; preds = %.thread.i, %bb.ab
  %i.ol = phi ptr [ %i.oi, %.thread.i ], [ %i.nc, %bb.ab ] ; 3 uses
  %i.om = phi ptr [ %i.oj, %.thread.i ], [ %i.nd, %bb.ab ] ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9674)
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !range !56, !alias.scope !9675, !noalias !9577, !noundef !45
  %i.oq = icmp eq i64 %i.op, 2
  br i1 %i.oq, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i.i", label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$meilisearch_auth..SearchRules$GT$17h51377b2c85561c7aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.oo)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i.i" unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$meilisearch_auth..SearchRules$GT$17h51377b2c85561c7aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.on) #44
          to label %.body181.i unwind label %bb.fr

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i.i": ; preds = %bb.fp, %bb.fo
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$meilisearch_auth..SearchRules$GT$17h51377b2c85561c7aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.on)
          to label %"_ZN4core3ptr49drop_in_place$LT$meilisearch_auth..AuthFilter$GT$17h4a7bddc82574fc25E.exit.i" unwind label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !9674
  unreachable

bb.fs:                                            ; preds = %.thread.i
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ft:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i.i.i", %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i.i"
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %.body181.i

"_ZN4core3ptr49drop_in_place$LT$meilisearch_auth..AuthFilter$GT$17h4a7bddc82574fc25E.exit.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$meilisearch_auth..SearchRules$GT$$GT$17h1d1891f46d99e012E.exit.i.i"
  %i.ov = load ptr, ptr %i.om, align 8, !noalias !9577, !nonnull !45, !align !48, !noundef !45 ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 1080 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9676)
  call void @llvm.experimental.noalias.scope.decl(metadata !9677)
  %i.ox = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16 ; 2 uses
  %i.oz = load i8, ptr %i.oy, align 8, !range !52, !noalias !9678, !noundef !45
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr49drop_in_place$LT$meilisearch_auth..AuthFilter$GT$17h4a7bddc82574fc25E.exit.i"
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ox, align 8, !noalias !9679
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %.pre1.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !9679
  br label %bb.fu

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$meilisearch_auth..AuthFilter$GT$17h4a7bddc82574fc25E.exit.i"
  %i.pb = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc186.i unwind label %bb.ft ; 2 uses

.noexc186.i:                                      ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha3cc336d5feaf555E.exit.i.i.i.i.i.i"
  %i.pc = extractvalue { i64, i64 } %i.pb, 0
  %i.pd = extractvalue { i64, i64 } %i.pb, 1      ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  store i64 %i.pd, ptr %i.pe, align 8, !noalias !9680
  store i8 1, ptr %i.oy, align 8, !noalias !9680
  br label %bb.fu

bb.fu:                                            ; preds = %.noexc186.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi2.i.i183.i = phi i64 [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i ], [ %i.pd, %.noexc186.i ]
  %i.pf = phi i64 [ %.pre.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h75088166343159feE.exit_crit_edge.i.i.i.i.i.i ], [ %i.pc, %.noexc186.i ] ; 2 uses
  %i.pg = add i64 %i.pf, 1
  store i64 %i.pg, ptr %i.ox, align 8, !noalias !9679
  %.sroa.0305.0.copyload.i = load ptr, ptr %i.ow, align 8, !alias.scope !9681, !nonnull !45, !noundef !45 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 1088
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !9681 ; 4 uses
  %.sroa.3306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 1104
  %.sroa.3306.0.copyload.i = load i64, ptr %.sroa.3306.0..sroa_idx.i, align 8, !alias.scope !9681 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ow, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !9676
  store i64 %i.pf, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9677, !noalias !9676
  %.sroa.5.0..sroa_idx.i185.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 1120
  store i64 %.pre-phi2.i.i183.i, ptr %.sroa.5.0..sroa_idx.i185.i, align 8, !alias.scope !9677, !noalias !9676
  %.val13.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0305.0.copyload.i, align 16, !noalias !9682
  %i.ph = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.ph, label %bb.fw, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %bb.fu
  %i.pi = mul i64 %.sroa.2.0.copyload.i, 104
  %i.pj = and i64 %i.pi, -16                      ; 2 uses
  %i.pk = add i64 %.sroa.2.0.copyload.i, 129
  %i.pl = add i64 %i.pk, %i.pj
  %i.pm = sub i64 -112, %i.pj
  %i.pn = getelementptr inbounds i8, ptr %.sroa.0305.0.copyload.i, i64 %i.pm
  br label %bb.fw

bb.fv:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2f69a1aee2f289E.exit.i.i.i.i.i.i"
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.body181.i

bb.fw:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %bb.fu
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.pl, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %bb.fu ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.pn, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %bb.fu ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %bb.fu ]
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0305.0.copyload.i, i64 16
  %i.pq = icmp sgt <16 x i8> %.val13.i.i.i.i.i, splat (i8 -1)
  %i.pr = getelementptr i8, ptr %.sroa.0305.0.copyload.i, i64 %.sroa.2.0.copyload.i
  %i.ps = getelementptr i8, ptr %i.pr, i64 1
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 4672
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.pt, align 8, !noalias !9577
  %.sroa.7308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4680
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.7308.0..sroa_idx.i, align 8, !noalias !9577
  %.sroa.8309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4688
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.8309.0..sroa_idx.i, align 8, !noalias !9577
  %.sroa.9310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4696
  store ptr %.sroa.0305.0.copyload.i, ptr %.sroa.9310.0..sroa_idx.i, align 8, !noalias !9577
  %.sroa.10311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4704
  store ptr %i.pp, ptr %.sroa.10311.0..sroa_idx.i, align 8, !noalias !9577
  %.sroa.11312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4712
  store ptr %i.ps, ptr %.sroa.11312.0..sroa_idx.i, align 8, !noalias !9577
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4720
  store <16 x i1> %i.pq, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !9577
  %.sroa.13313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4728
  store i64 %.sroa.3306.0.copyload.i, ptr %.sroa.13313.0..sroa_idx.i, align 8, !noalias !9577
  br label %bb.fx

bb.fx:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17hd595f91f2dccb7cfE.exit.i", %bb.fw
  %i.pu = phi ptr [ %i.qu, %"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17hd595f91f2dccb7cfE.exit.i" ], [ %i.ol, %bb.fw ] ; 13 uses
  %i.pv = phi ptr [ %i.qv, %"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17hd595f91f2dccb7cfE.exit.i" ], [ %i.om, %bb.fw ] ; 15 uses
  %i.pw = phi i64 [ %.pre407.i, %"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17hd595f91f2dccb7cfE.exit.i" ], [ %.sroa.3306.0.copyload.i, %bb.fw ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 4672
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 2488
  call void @llvm.experimental.noalias.scope.decl(metadata !9683)
  call void @llvm.experimental.noalias.scope.decl(metadata !9684)
  call void @llvm.experimental.noalias.scope.decl(metadata !9685)
  call void @llvm.experimental.noalias.scope.decl(metadata !9686)
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 2 uses
  %i.qa = icmp eq i64 %i.pw, 0
  br i1 %i.qa, label %.thread440.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 4696 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9687)
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 4720 ; 3 uses
  %i.qd = load i16, ptr %i.qc, align 8, !alias.scope !9688, !noalias !9689, !noundef !45 ; 2 uses
  %.not13.i.i.i.i = icmp eq i16 %i.qd, 0
  %.promoted.i.i.i.i = load ptr, ptr %i.qb, align 8, !alias.scope !9688, !noalias !9689 ; 2 uses
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1259a25342eb3e9bE.exit.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.fy
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 4704 ; 2 uses
  %.promoted15.i.i.i.i = load ptr, ptr %i.qe, align 8, !alias.scope !9688, !noalias !9689
  br label %bb.fz

._crit_edge.i.i.i.i:                              ; preds = %bb.fz
  store ptr %i.qj, ptr %i.qe, align 8, !alias.scope !9688, !noalias !9689
  store ptr %i.qi, ptr %i.qb, align 8, !alias.scope !9688, !noalias !9689
  br label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1259a25342eb3e9bE.exit.i"

bb.fz:                                            ; preds = %bb.fz, %.lr.ph.i.i.i.i
  %i.qf = phi ptr [ %.promoted15.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.qj, %bb.fz ] ; 2 uses
  %i.qg = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.qi, %bb.fz ]
  %.val911.i.i.i.i = load <16 x i8>, ptr %i.qf, align 16, !noalias !9690
  %i.qh = icmp sgt <16 x i8> %.val911.i.i.i.i, splat (i8 -1)
  %i.qi = getelementptr inbounds i8, ptr %i.qg, i64 -1664 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.qh to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.fz, label %._crit_edge.i.i.i.i

.thread440.i:                                     ; preds = %bb.fx
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 2511
  store i8 1, ptr %i.qk, align 1, !alias.scope !9691, !noalias !9692
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h169b8c53bf006047E.exit.i.i.i.i.i"

.body167.i:                                       ; preds = %bb.ex, %bb.dj
  %i.ql = phi ptr [ %i.kr, %bb.dj ], [ %i.ct, %bb.ex ]
  %i.qm = phi ptr [ %i.ks, %bb.dj ], [ %i.cs, %bb.ex ]
  %i.qn = phi ptr [ %i.ku, %bb.dj ], [ %i.iy, %bb.ex ]
  %.pn49.i = phi { ptr, i32 } [ %.pn27.i.i, %bb.dj ], [ %i.nb, %bb.ex ]
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$segment..auto_batcher..AutoBatcher..push$LT$segment..message..Identify$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h850f620bc32974ddE"(ptr noundef nonnull align 8 %i.qn) #44
          to label %.body172.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ga:                                            ; preds = %.body172.i
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !range !86, !alias.scope !9693, !noalias !9577, !noundef !45
  %i.qq = icmp eq i64 %i.qp, -9223372036854775803
  br i1 %i.qq, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i", label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.qo)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit177.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gc:                                            ; preds = %bb.gd, %bb.cg
  store i8 0, ptr %i.if, align 2, !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !9577
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8, !range !102, !noalias !9577, !noundef !45
  %i.qt = icmp eq i64 %i.qs, -9223372036854775808
  br i1 %i.qt, label %bb.ch, label %bb.ge

bb.gd:                                            ; preds = %bb.cg
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$meilisearch..routes..Stats$GT$17h92eb2b6b5cd64fd5E"(ptr noalias noundef align 8 dereferenceable(88) %i.av) #44
          to label %bb.gc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ge:                                            ; preds = %bb.gc
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$meilisearch..routes..Stats$C$meilisearch_types..error..ResponseError$GT$$GT$17h2babee6288fb2931E"(ptr noalias noundef align 8 dereferenceable(104) %i.qr) #44
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gf:                                            ; preds = %bb.jo, %bb.t
  %i.qu = phi ptr [ %i.pu, %bb.jo ], [ %i.ct, %bb.t ] ; 4 uses
  %i.qv = phi ptr [ %i.pv, %bb.jo ], [ %i.cs, %bb.t ] ; 3 uses
  %.sroa.8315.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.jo ], [ undef, %bb.t ] ; 2 uses
  %.sroa.0314.0.i = phi ptr [ %.sroa.78.0.copyload.i, %bb.jo ], [ undef, %bb.t ] ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 3 uses
  %i.qx = invoke fastcc { i64, ptr } @"_ZN7segment12auto_batcher11AutoBatcher4push28_$u7b$$u7b$closure$u7d$$u7d$17hd91a76e5bd329054E"(ptr noundef nonnull align 8 %i.qw, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.gh unwind label %bb.gg     ; 2 uses

bb.gg:                                            ; preds = %bb.gf
  %i.qy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$segment..auto_batcher..AutoBatcher..push$LT$segment..message..Track$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1e1f315d4194f880E"(ptr noundef nonnull align 8 %i.qw) #44
          to label %.body198.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gh:                                            ; preds = %bb.gf
  %i.qz = extractvalue { i64, ptr } %i.qx, 0      ; 3 uses
  %i.ra = icmp eq i64 %i.qz, 4
  br i1 %i.ra, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9577
  br label %bb.lf

bb.gj:                                            ; preds = %bb.gh
  %i.rb = extractvalue { i64, ptr } %i.qx, 1      ; 4 uses
  store i64 %i.qz, ptr %i.ac, align 8, !noalias !9577
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.rb, ptr %i.rc, align 8, !noalias !9577
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$segment..auto_batcher..AutoBatcher..push$LT$segment..message..Track$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1e1f315d4194f880E"(ptr noundef nonnull align 8 %i.qw)
          to label %bb.gl unwind label %bb.gk

.body198.i:                                       ; preds = %bb.go, %bb.gk, %bb.gg
  %.pn79.i = phi { ptr, i32 } [ %i.rh, %bb.go ], [ %i.qy, %bb.gg ], [ %i.rg, %bb.gk ]
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 2760
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E"(ptr noalias noundef align 8 dereferenceable(48) %i.rd) #44
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 2664
  call void @llvm.experimental.noalias.scope.decl(metadata !9694)
  %.val.i270.i = load i64, ptr %i.re, align 8, !alias.scope !9694, !noalias !9577
  %i.rf = icmp eq i64 %.val.i270.i, 0
  br i1 %i.rf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit272.i", label %bb.ke

bb.gk:                                            ; preds = %bb.gm, %bb.gj
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %.body198.i

bb.gl:                                            ; preds = %bb.gj
  switch i64 %i.qz, label %bb.gm [
    i64 3, label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit200.i"
    i64 0, label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit200.i"
    i64 1, label %bb.gn
  ]

bb.gm:                                            ; preds = %bb.gl
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Error$GT$17h2cd339c170e43267E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.rc)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit200.i" unwind label %bb.gk

bb.gn:                                            ; preds = %bb.gl
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_json..error..ErrorCode$GT$17hfdb6f07995d5840dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.rb)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit.i.i196.i" unwind label %bb.go, !noalias !9695

bb.go:                                            ; preds = %bb.gn
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.rb) #38, !noalias !9695
  br label %.body198.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit.i.i196.i": ; preds = %bb.gn
  call void @mi_free(ptr noundef nonnull %i.rb) #38, !noalias !9695
  br label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit200.i"

"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$GT$17h3529172d7a30e858E.exit200.i": ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit.i.i196.i", %bb.gm, %bb.gl, %bb.gl
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 2760 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9696)
  %i.rk = load i64, ptr %i.rj, align 8, !range !99, !alias.scope !9696, !noalias !9577, !noundef !45 ; 3 uses
  %i.rl = xor i64 %i.rk, -9223372036854775808
  %i.rm = icmp slt i64 %i.rk, 0
  %i.rn = select i1 %i.rm, i64 %i.rl, i64 2
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr123drop_in_place$LT$smallvec..SmallVec$LT$$u5b$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$u3b$$u20$4$u5d$$GT$$GT$17h84e774a21a74edc2E":bb.a

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !21840
  unreachable

"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4cc0f4244c78f56dE.exit.i.i": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17h307b2f1d4d2657aaE.exit8.i.i.i.i", %bb.i
  tail call void @mi_free(ptr noundef nonnull %i.v) #38, !noalias !21840
  br label %common.resume.i

"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h85531570a4cf2142E.exit.i": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17h307b2f1d4d2657aaE.exit.i.i.i.i", %bb.g
  tail call void @mi_free(ptr noundef nonnull %i.v) #38, !noalias !21840
  br label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb9126b7b62fb34d5E.exit"

"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb9126b7b62fb34d5E.exit": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17h307b2f1d4d2657aaE.exit.i.i", %bb.b, %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h85531570a4cf2142E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$17h677130d5ecff7219E"(ptr %.0.val, i8 %.8.val) unnamed_addr #3 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf845671c4de04c5E.exit", !prof !47

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.0.val)
  br label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf845671c4de04c5E.exit"

"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf845671c4de04c5E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr124drop_in_place$LT$segment..auto_batcher..AutoBatcher..push$LT$segment..message..Identify$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h850f620bc32974ddE"(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.b = load i8, ptr %i.a, align 8, !range !51, !noundef !45
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit"
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$segment..message..Identify$GT$17h714ba88a2eed6d61E"(ptr noalias noundef align 8 dereferenceable(352) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1545
  %i.d = load i8, ptr %i.c, align 1, !range !51, !noundef !45
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.d, label %"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit"

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %.val.i = load ptr, ptr %i.e, align 8           ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 1528
  %.val1.i = load ptr, ptr %i.f, align 8, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.g = load ptr, ptr %.val1.i, align 8, !invariant.load !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !46, !invariant.load !45
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr214drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$u2b$core..marker..Send$GT$$GT$$GT$17h2ec135c692203d31E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @mi_free(ptr noundef nonnull %.val.i) #38
  br label %"_ZN4core3ptr214drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$u2b$core..marker..Send$GT$$GT$$GT$17h2ec135c692203d31E.exit.i"

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !46, !invariant.load !45
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.g
  tail call void @mi_free(ptr noundef nonnull %.val.i) #38
  br label %.body.i

.body.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE"(ptr noalias noundef align 8 dereferenceable(384) %i.p) #44
          to label %bb.n unwind label %bb.p

"_ZN4core3ptr214drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$u2b$core..marker..Send$GT$$GT$$GT$17h2ec135c692203d31E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store i8 0, ptr %i.q, align 8
  br label %"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit"

"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit": ; preds = %"_ZN4core3ptr214drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$segment..errors..Error$GT$$u2b$core..marker..Send$GT$$GT$$GT$17h2ec135c692203d31E.exit.i", %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.s = load i64, ptr %i.r, align 8, !range !90, !alias.scope !21848, !noundef !45
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 6 uses
  switch i64 %i.s, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
  ]

bb.h:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit"
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Alias$GT$17h2a5c613215ce57ebE"(ptr noalias noundef readonly align 8 dereferenceable(304) %i.t)
          to label %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit" unwind label %bb.o

bb.i:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit"
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$segment..message..Identify$GT$17h714ba88a2eed6d61E"(ptr noalias noundef readonly align 8 dereferenceable(352) %i.t)
          to label %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit" unwind label %bb.o

bb.j:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit"
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Track$GT$17h31364b4c3b54ff88E"(ptr noalias noundef readonly align 8 dereferenceable(376) %i.t)
          to label %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit" unwind label %bb.o

bb.k:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit"
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..Page$GT$17hb4390d47cf0a3befE"(ptr noalias noundef readonly align 8 dereferenceable(376) %i.t)
          to label %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit" unwind label %bb.o

bb.l:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$segment..message..Screen$GT$17h38fe621c009e0303E"(ptr noalias noundef readonly align 8 dereferenceable(376) %i.t)
          to label %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit" unwind label %bb.o

bb.m:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$segment..auto_batcher..AutoBatcher..flush..$u7b$$u7b$closure$u7d$$u7d$$GT$17h551564d076210adaE.exit"
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Group$GT$17h4c949908d8dccacfE"(ptr noalias noundef readonly align 8 dereferenceable(376) %i.t)
          to label %"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit" unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %.body.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.o ], [ %i.k, %.body.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1553
  store i8 0, ptr %i.u, align 1
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit": ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1553
  store i8 0, ptr %i.w, align 1
  br label %common.ret

bb.p:                                             ; preds = %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !102, !noundef !45
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21857)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !21858, !noundef !45 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21858, !nonnull !45, !noundef !45
  %i.f = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.f, -16
  %i.g = xor i64 %.not, -16
  %i.h = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.g
  tail call void @mi_free(ptr noundef nonnull %i.h) #38, !noalias !21858, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit": ; preds = %bb.c, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %0), !inline_history !35
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr125drop_in_place$LT$h2..proto..streams..streams..Inner..recv_headers$LT$bytes..bytes..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h55f35149a09c9828E"(ptr noalias noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17h1ed777fd0a4abf6dE"(ptr noalias noundef nonnull align 8 dereferenceable(288) %0)
          to label %"_ZN4core3ptr48drop_in_place$LT$h2..frame..headers..Headers$GT$17h897982626da2c670E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$h2..frame..headers..Pseudo$GT$17h3a9c35b309f464f6E"(ptr noalias noundef align 8 dereferenceable(160) %i.b) #44
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr48drop_in_place$LT$h2..frame..headers..Headers$GT$17h897982626da2c670E.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$h2..frame..headers..Pseudo$GT$17h3a9c35b309f464f6E"(ptr noalias noundef align 8 dereferenceable(160) %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr126drop_in_place$LT$tracing_subscriber..fmt..fmt_layer..FormattedFields$LT$tracing_subscriber..fmt..format..DefaultFields$GT$$GT$17hb60400b188eefe3aE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21861)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !21861
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !21861, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !21861
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr127drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$actix_web..helpers..MutWriter$LT$bytes..bytes_mut..BytesMut$GT$$GT$$GT$17h31736cc0123abae1E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !45 ; 5 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.val to i64
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit"
    i64 3, label %bb.c
    i64 0, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit"
    i64 1, label %bb.d
  ], !prof !53

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.e)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit"

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !21864 ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !21864, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !45, !noalias !21864 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !21864

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !46, !invariant.load !45, !noalias !21864
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !21864
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !46, !invariant.load !45, !noalias !21864
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.g
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !21864
  br label %bb.h

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.g
  tail call void @mi_free(ptr noundef nonnull %i.f) #38, !noalias !21864
  resume { ptr, i32 } %i.l

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.f
  tail call void @mi_free(ptr noundef nonnull %i.f) #38, !noalias !21864
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit": ; preds = %bb.a, %bb.b, %bb.b, %bb.c, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr127drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17hf867585b4444c35dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21873)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.0.idx12.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i, %.backedge.i ] ; 2 uses
  %.sroa.7.011.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i ] ; 2 uses
  %.sroa.0.0.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx12.i
  %.sroa.0.0.add.i = add nuw nsw i64 %.sroa.0.0.idx12.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.011.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i, align 8, !alias.scope !21873, !noundef !45 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.011.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21874)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i", %bb.c
  %.sroa.0.011.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.011.i.i.i ; 3 uses
  %i.f = add nuw i64 %.sroa.0.011.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21876)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i8, ptr %i.g, align 1, !range !52, !alias.scope !21877, !noalias !21873, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !21877, !noalias !21873
  %i.k = icmp ne i64 %.val.i.i.i.i.i, 0
  %or.cond.not.i.i.i.i.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.d, label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21877, !noalias !21873, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i) #38, !noalias !21878
  br label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i"

"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i": ; preds = %bb.d, %.lr.ph.i.i.i
  %i.m = icmp eq i64 %i.f, %i.d
  br i1 %i.m, label %"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i", label %.lr.ph.i.i.i

"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i": ; preds = %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i"
  tail call void @mi_free(ptr noundef nonnull %i.b) #38, !noalias !21873
  br label %.backedge.i

.backedge.i:                                      ; preds = %"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i", %bb.b
  %i.n = icmp eq i64 %.sroa.0.0.add.i, 504
  br i1 %i.n, label %"_ZN76_$LT$thread_local..ThreadLocal$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab9cf23d18453cdaE.exit", label %bb.b

"_ZN76_$LT$thread_local..ThreadLocal$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab9cf23d18453cdaE.exit": ; preds = %.backedge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr128drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$$GT$17hb1196e0c92340069E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !52, !noundef !45
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
end_hunk_3
begin_hunk_4_@"_ZN4core3ptr291drop_in_place$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$17h2ebb648e6e7051a0E":bb.a
  br i1 %i.r, label %bb.e, label %.thread.i.i.i

.thread3.i.i.i:                                   ; preds = %bb.c
  %i.s = icmp eq ptr %i.m, null
  br i1 %i.s, label %.thread4.i.i.i, label %.thread.i.i.i

.thread4.i.i.i:                                   ; preds = %.thread3.i.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !23716
  br label %bb.i

.thread.i.i.i:                                    ; preds = %.thread3.i.i.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store atomic ptr %i.k, ptr %i.t monotonic, align 8, !noalias !23716
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.k, ptr %i.b, align 8, !alias.scope !23716
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i.i.i
  %i.u = phi ptr [ %i.e, %.thread.i.i.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 %i.i, ptr %i.v, align 8, !noalias !23716
  br label %bb.i

bb.g:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !noalias !23714
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %.body.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.f, %.thread4.i.i.i
  %i.z = phi ptr [ %i.u, %bb.f ], [ null, %.thread4.i.i.i ]
  %i.aa = getelementptr inbounds i8, ptr %i.e, i64 -16
  invoke fastcc void @"_ZN12futures_util6stream17futures_unordered27FuturesUnordered$LT$Fut$GT$12release_task17h7e733192a371ee47E"(ptr noundef nonnull %i.aa)
          to label %bb.b unwind label %bb.g, !noalias !23714

.body.i:                                          ; preds = %bb.g
  %i.ab = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !23717
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %.body

bb.j:                                             ; preds = %.body.i
  fence acquire
  invoke fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h04198ab7a0a17303E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.l

"_ZN110_$LT$futures_util..stream..futures_unordered..FuturesUnordered$LT$Fut$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37bb5c415cfd88f0E.exit.i": ; preds = %bb.b
  %i.ad = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !23718
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %"_ZN4core3ptr354drop_in_place$LT$futures_util..stream..futures_unordered..FuturesUnordered$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$17h276b9dd28ff81b5fE.exit"

bb.k:                                             ; preds = %"_ZN110_$LT$futures_util..stream..futures_unordered..FuturesUnordered$LT$Fut$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37bb5c415cfd88f0E.exit.i"
  fence acquire
  invoke fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h04198ab7a0a17303E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr354drop_in_place$LT$futures_util..stream..futures_unordered..FuturesUnordered$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$17h276b9dd28ff81b5fE.exit" unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !23712
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.w, %bb.j ], [ %i.w, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr231drop_in_place$LT$alloc..collections..binary_heap..BinaryHeap$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h7301eb37a6dd0f33E"(ptr noalias noundef align 8 dereferenceable(24) %0) #44
          to label %bb.o unwind label %bb.n

"_ZN4core3ptr354drop_in_place$LT$futures_util..stream..futures_unordered..FuturesUnordered$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$17h276b9dd28ff81b5fE.exit": ; preds = %"_ZN110_$LT$futures_util..stream..futures_unordered..FuturesUnordered$LT$Fut$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37bb5c415cfd88f0E.exit.i", %bb.k
  tail call fastcc void @"_ZN4core3ptr231drop_in_place$LT$alloc..collections..binary_heap..BinaryHeap$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h7301eb37a6dd0f33E"(ptr noalias noundef align 8 dereferenceable(24) %0)
  ret void

bb.n:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr295drop_in_place$LT$$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$u20$as$u20$actix_http..body..message_body..MessageBody$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1ecf01a76eeb27caE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$actix_http..encoding..encoder..ContentEncoder$GT$17hd1b0977dfa47563cE"(ptr noalias noundef align 8 dereferenceable(136) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23728)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !23729, !nonnull !45, !align !48, !noundef !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !noalias !23729, !nonnull !45, !noundef !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !23729, !noundef !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23729, !noundef !45
  invoke void %i.e(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h, i64 noundef %i.j)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit" unwind label %bb.d, !inline_history !76

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23731)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !23732, !nonnull !45, !align !48, !noundef !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !23732, !nonnull !45, !noundef !45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23732, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23732, !noundef !45
  tail call void %i.n(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.s), !inline_history !1
  ret void

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr298drop_in_place$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$meilisearch..routes..indexes..IndexStats$GT$$GT$17hcbf6bdafcce1d24cE"(ptr nofree readonly captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23762)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  %.val19.i.i = load i64, ptr %i.c, align 8, !range !102, !alias.scope !23762, !noundef !45
  %switch.i.i = icmp sgt i64 %.val19.i.i, 0
  br i1 %switch.i.i, label %bb.b, label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit.i.i"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 112
  %.val20.i.i = load ptr, ptr %i.d, align 8, !alias.scope !23762, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val20.i.i) #38, !noalias !23763
  br label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit.i.i"

"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit.i.i": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %.val15.i.i = load i64, ptr %i.e, align 8, !range !102, !alias.scope !23762, !noundef !45
  %switch27.i.i = icmp sgt i64 %.val15.i.i, 0
  br i1 %switch27.i.i, label %bb.c, label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit22.i.i"

bb.c:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  %.val16.i.i = load ptr, ptr %i.f, align 8, !alias.scope !23762, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val16.i.i) #38, !noalias !23764
  br label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit22.i.i"

"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit22.i.i": ; preds = %bb.c, %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit.i.i"
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  %.val11.i.i = load i64, ptr %i.g, align 8, !range !102, !alias.scope !23762, !noundef !45
  %switch28.i.i = icmp sgt i64 %.val11.i.i, 0
  br i1 %switch28.i.i, label %bb.d, label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit24.i.i"

bb.d:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit22.i.i"
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !23762, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val12.i.i) #38, !noalias !23765
  br label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit24.i.i"

"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit24.i.i": ; preds = %bb.d, %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit22.i.i"
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 176
  %.val.i.i = load i64, ptr %i.i, align 8, !range !102, !alias.scope !23762, !noundef !45
  %switch29.i.i = icmp sgt i64 %.val.i.i, 0
  br i1 %switch29.i.i, label %bb.e, label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit26.i.i"

bb.e:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit24.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 184
  %.val8.i.i = load ptr, ptr %i.j, align 8, !alias.scope !23762, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val8.i.i) #38, !noalias !23766
  br label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit26.i.i"

"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit26.i.i": ; preds = %bb.e, %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit24.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23769)
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %.val1.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !23770, !noundef !45 ; 2 uses
  %i.m = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit26.i.i"
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %.val.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !23770, !nonnull !45, !noundef !45
  %i.o = shl i64 %.val1.i.i.i.i.i, 3
  %.not = and i64 %i.o, -16
  %i.p = xor i64 %.not, -16
  %i.q = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.p
  tail call void @mi_free(ptr noundef nonnull %i.q) #38, !noalias !23770, !inline_history !10
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i.i.i"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i, %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit26.i.i"
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.k)
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i" unwind label %bb.f, !inline_history !109

bb.f:                                             ; preds = %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i.i.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 208
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$GT$17hb8dfb65feff7506aE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.s) #44
          to label %bb.k unwind label %bb.j

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i": ; preds = %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit.i.i.i"
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23773
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !23773 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i"
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 224
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !23773
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 216
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !23773 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !23774, !noalias !23775
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !23774, !noalias !23775
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !23774, !noalias !23775
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !23774, !noalias !23775
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !23774, !noalias !23775
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !23774, !noalias !23775
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i.i.i.i": ; preds = %bb.g, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i"
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i" ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i, %bb.g ], [ 0, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i" ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !23774, !noalias !23775
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.u, align 8, !alias.scope !23774, !noalias !23775
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.v, align 8, !alias.scope !23774, !noalias !23775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23776
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h0f14957f4f1c27edE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !23773
  %i.w = load ptr, ptr %i.a, align 8, !noalias !23776, !noundef !45 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not5.i.i.i.i.i.i, label %"_ZN280_$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h16199b260c0820c9E.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i.i.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.x = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !23776
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23777)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !23777, !noalias !23776
  %i.aa = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !23777, !noalias !23776, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i) #38, !noalias !23778
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i.i.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23776
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h0f14957f4f1c27edE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !23773
  %i.ac = load ptr, ptr %i.a, align 8, !noalias !23776, !noundef !45 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN280_$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h16199b260c0820c9E.exit", label %bb.h

bb.j:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !23762
  unreachable

bb.k:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.r

"_ZN280_$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h16199b260c0820c9E.exit": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23773
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr301drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6328ddd4f19a7239E"(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #3 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a582d3fbd2783aE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$17h221a0c1b9db191ddE.exit.i.i", %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %"_ZN4core3ptr70drop_in_place$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$17h221a0c1b9db191ddE.exit.i.i" ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !45
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr70drop_in_place$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$17h221a0c1b9db191ddE.exit.i.i"

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23796)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !23797, !noundef !45 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %"_ZN4core3ptr70drop_in_place$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$17h221a0c1b9db191ddE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23801)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !23802, !nonnull !45, !noundef !45
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !23802, !noundef !45
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !23802, !noundef !45
  tail call void %i.l(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.o, i64 noundef %i.q), !inline_history !23793
  br label %"_ZN4core3ptr70drop_in_place$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$17h221a0c1b9db191ddE.exit.i.i"

"_ZN4core3ptr70drop_in_place$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$17h221a0c1b9db191ddE.exit.i.i": ; preds = %bb.d, %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a582d3fbd2783aE.exit", label %bb.b

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a582d3fbd2783aE.exit": ; preds = %"_ZN4core3ptr70drop_in_place$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$17h221a0c1b9db191ddE.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr302drop_in_place$LT$actix_service..transform..ApplyTransformFutureState$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17hcf8aca56bf8c5e92E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !45
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23827)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23829)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !23830, !nonnull !45, !noundef !45 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !23830, !noundef !45
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !noalias !23830
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core3ptr122drop_in_place$LT$alloc..rc..Rc$LT$$LP$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$RP$$GT$$GT$17h8c98a9670f4e6b90E.exit.i"

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h957bb650cb34643aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr122drop_in_place$LT$alloc..rc..Rc$LT$$LP$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$RP$$GT$$GT$17h8c98a9670f4e6b90E.exit.i" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr189drop_in_place$LT$actix_service..transform..ApplyTransformFutureState$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$GT$17h2c400d2a2dfe6e45E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #44
          to label %common.resume unwind label %bb.k

"_ZN4core3ptr122drop_in_place$LT$alloc..rc..Rc$LT$$LP$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$RP$$GT$$GT$17h8c98a9670f4e6b90E.exit.i": ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23831)
  %i.j = load i64, ptr %i.c, align 8, !range !98, !alias.scope !23832, !noundef !45 ; 2 uses
  %i.k = icmp eq i64 %i.j, -9223372036854775806
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %"_ZN4core3ptr122drop_in_place$LT$alloc..rc..Rc$LT$$LP$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$RP$$GT$$GT$17h8c98a9670f4e6b90E.exit.i"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !23832 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.m, align 8, !alias.scope !23832, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.n = load ptr, ptr %.val1.i.i, align 8, !invariant.load !45, !noalias !23831 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr43drop_in_place$LT$actix_router..url..Url$GT$17h096ef8ec0cca2c58E":bb.a
"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit": ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$geojson..errors..Error$GT$17h01c97df653d6666cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25257, !noundef !45 ; 4 uses
  %i.b = icmp ne i64 %i.a, 16
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -8
  %.inv = icmp samesign ult i64 %i.a, 8
  %i.d = select i1 %.inv, i64 8, i64 %i.c
  switch i64 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 5, label %bb.e
    i64 6, label %bb.k
    i64 8, label %bb.m
    i64 9, label %bb.x
    i64 10, label %bb.z
    i64 11, label %bb.ab
    i64 12, label %bb.ac
    i64 13, label %bb.ad
    i64 14, label %bb.ae
    i64 15, label %bb.ag
    i64 16, label %bb.ah
    i64 18, label %bb.aj
    i64 19, label %bb.al
  ]

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit": ; preds = %bb.am, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit11", %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.y, %bb.x, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i19.i", %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E.exit.i", %bb.l, %bb.k, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i", %bb.f, %bb.e, %bb.e, %bb.al, %bb.ag, %bb.ad, %bb.ac, %bb.ab, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit", %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.e)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.f)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.g)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25258)
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !25258, !nonnull !45, !noundef !45 ; 4 uses
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"
    i64 3, label %bb.f
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"
    i64 1, label %bb.g
  ], !prof !53

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ult ptr %.val.i, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.k)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.val.i, i64 -1    ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !25258 ; 5 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !25258, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.n = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !45, !noalias !25258 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.n(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.i unwind label %bb.j, !noalias !25258

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !46, !invariant.load !45, !noalias !25258
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i) #38, !noalias !25258
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i"

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !46, !invariant.load !45, !noalias !25258
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %common.resume.sink.split, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i": ; preds = %bb.j
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i) #38, !noalias !25258
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.aa
  %.val.i8.sink = phi ptr [ %.val.i8, %bb.aa ], [ %i.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.l, %bb.j ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bg, %bb.aa ], [ %i.r, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i" ], [ %i.r, %bb.j ]
  tail call void @mi_free(ptr noundef nonnull %.val.i8.sink) #38, !noalias !45
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %.pn4.i, %bb.t ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.i
  tail call void @mi_free(ptr noundef nonnull %i.l) #38, !noalias !25258
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25259)
  %.val.i1 = load i64, ptr %i.v, align 8, !alias.scope !25259
  %i.w = icmp eq i64 %.val.i1, 0
  br i1 %i.w, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.x, align 8, !alias.scope !25259, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !25259
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25260)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val.i2 = load i64, ptr %i.y, align 8, !range !102, !alias.scope !25260, !noundef !45
  %switch.i = icmp sgt i64 %.val.i2, 0
  br i1 %switch.i, label %bb.n, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val6.i = load ptr, ptr %i.z, align 8, !alias.scope !25260, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val6.i) #38, !noalias !25260
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit.i"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit.i": ; preds = %bb.n, %bb.m
  %i.aa = icmp eq i64 %i.a, 7
  br i1 %i.aa, label %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$geojson..geometry..Geometry$GT$$GT$17h85532d728e69571dE.exit12.i", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit.i"
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$geojson..geometry..Geometry$GT$17hd9dcde55ca0c77f0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(320) %0)
          to label %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$geojson..geometry..Geometry$GT$$GT$17h85532d728e69571dE.exit12.i" unwind label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val10.i = load ptr, ptr %i.ab, align 8, !alias.scope !25260, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val10.i) #38, !noalias !25261
  br label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit.i"

bb.q:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val9.i = load i64, ptr %i.ad, align 8, !range !99, !alias.scope !25260, !noundef !45
  %switch21.i.a = icmp sgt i64 %.val9.i, 0
  br i1 %switch21.i.a, label %bb.p, label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit.i"

"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$geojson..geometry..Geometry$GT$$GT$17h85532d728e69571dE.exit12.i": ; preds = %bb.o, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val7.i = load i64, ptr %i.ae, align 8, !range !99, !alias.scope !25260, !noundef !45
  %switch22.i = icmp sgt i64 %.val7.i, 0
  br i1 %switch22.i, label %bb.r, label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit13.i"

bb.r:                                             ; preds = %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$geojson..geometry..Geometry$GT$$GT$17h85532d728e69571dE.exit12.i"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !25260, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val8.i) #38, !noalias !25262
  br label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit13.i"

"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit.i": ; preds = %bb.q, %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.ag) #44
          to label %bb.t unwind label %bb.w

"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit13.i": ; preds = %bb.r, %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$geojson..geometry..Geometry$GT$$GT$17h85532d728e69571dE.exit12.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25263)
  %i.ai = load i64, ptr %i.ah, align 8, !range !102, !alias.scope !25264, !noundef !45
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %i.aj, label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E.exit.i", label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit13.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25267)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1.i.i.i.i.i3 = load i64, ptr %i.ak, align 8, !alias.scope !25268, !noundef !45 ; 2 uses
  %i.al = icmp eq i64 %.val1.i.i.i.i.i3, 0
  br i1 %i.al, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i.i.i.i.i4 = load ptr, ptr %i.am, align 8, !alias.scope !25268, !nonnull !45, !noundef !45
  %i.an = shl i64 %.val1.i.i.i.i.i3, 3
  %.not = and i64 %i.an, -16
  %i.ao = xor i64 %.not, -16
  %i.ap = getelementptr inbounds i8, ptr %.val.i.i.i.i.i4, i64 %i.ao
  tail call void @mi_free(ptr noundef nonnull %i.ap) #38, !noalias !25268, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i, %bb.s
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ah)
          to label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E.exit.i" unwind label %bb.u

bb.t:                                             ; preds = %bb.u, %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit.i"
  %.pn4.i = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.ac, %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit.i" ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.aq) #44
          to label %common.resume unwind label %bb.w

bb.u:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i"
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E.exit.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i.i", %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit13.i"
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25269)
  %i.at = load i64, ptr %i.as, align 8, !range !102, !alias.scope !25270, !noundef !45
  %i.au = icmp eq i64 %i.at, -9223372036854775808
  br i1 %i.au, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit", label %bb.v

bb.v:                                             ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25273)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val1.i.i.i.i15.i = load i64, ptr %i.av, align 8, !alias.scope !25274, !noundef !45 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i.i.i.i15.i, 0
  br i1 %i.aw, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i19.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i16.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i16.i: ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val.i.i.i.i17.i = load ptr, ptr %i.ax, align 8, !alias.scope !25274, !nonnull !45, !noundef !45
  %i.ay = shl i64 %.val1.i.i.i.i15.i, 3
  %.not24 = and i64 %i.ay, -16
  %i.az = xor i64 %.not24, -16
  %i.ba = getelementptr inbounds i8, ptr %.val.i.i.i.i17.i, i64 %i.az
  tail call void @mi_free(ptr noundef nonnull %i.ba) #38, !noalias !25274, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i19.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i19.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i16.i, %bb.v
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.as), !inline_history !35
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.w:                                             ; preds = %bb.t, %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hc31e968aafeffaceE.exit.i"
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !25260
  unreachable

bb.x:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25275)
  %.val.i5 = load i64, ptr %i.bc, align 8, !alias.scope !25275
  %i.bd = icmp eq i64 %.val.i5, 0
  br i1 %i.bd, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i6 = load ptr, ptr %i.be, align 8, !alias.scope !25275, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i6) #38, !noalias !25275
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.z:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25276)
  %.val.i8 = load ptr, ptr %i.bf, align 8, !alias.scope !25276, !nonnull !45, !noundef !45 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_json..error..ErrorCode$GT$17hfdb6f07995d5840dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.val.i8)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit" unwind label %bb.aa, !noalias !25276

bb.aa:                                            ; preds = %bb.z
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit": ; preds = %bb.z
  tail call void @mi_free(ptr noundef nonnull %.val.i8) #38, !noalias !25276
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.ab:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.bh)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.ac:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.bi)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.ad:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.bj)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.ae:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25277)
  %.val.i9 = load i64, ptr %i.bk, align 8, !alias.scope !25277
  %i.bl = icmp eq i64 %.val.i9, 0
  br i1 %i.bl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit11", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i10 = load ptr, ptr %i.bm, align 8, !alias.scope !25277, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i10) #38, !noalias !25277
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit11"

bb.ag:                                            ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.bn)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.ah:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25278)
  %.val.i12 = load i64, ptr %i.bo, align 8, !alias.scope !25278
  %i.bp = icmp eq i64 %.val.i12, 0
  br i1 %i.bp, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i13 = load ptr, ptr %i.bq, align 8, !alias.scope !25278, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i13) #38, !noalias !25278
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.aj:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25279)
  %.val.i15 = load i64, ptr %i.br, align 8, !alias.scope !25279
  %i.bs = icmp eq i64 %.val.i15, 0
  br i1 %i.bs, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i16 = load ptr, ptr %i.bt, align 8, !alias.scope !25279, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i16) #38, !noalias !25279
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

bb.al:                                            ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.bu)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit11": ; preds = %bb.af, %bb.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25280)
  %.val.i21 = load i64, ptr %i.bv, align 8, !alias.scope !25280
  %i.bw = icmp eq i64 %.val.i21, 0
  br i1 %i.bw, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit", label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit11"
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i22 = load ptr, ptr %i.bx, align 8, !alias.scope !25280, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i22) #38, !noalias !25280
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$h2..share..FlowControl$GT$17h597be70a197ee82bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN86_$LT$h2..proto..streams..streams..OpaqueStreamRef$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a194b6c50aa2afaE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25292)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !25293, !nonnull !45, !noundef !45
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !25294
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %"_ZN4core3ptr118drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$h2..proto..streams..streams..Inner$GT$$GT$$GT$17h9145b9a1dd656828E.exit.i"

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h908edc0efbc45525E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr118drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$h2..proto..streams..streams..Inner$GT$$GT$$GT$17h9145b9a1dd656828E.exit.i" unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25296)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !25297, !nonnull !45, !noundef !45
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !25298
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %"_ZN4core3ptr65drop_in_place$LT$h2..proto..streams..streams..OpaqueStreamRef$GT$17h0d3cf377b0638ab1E.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h908edc0efbc45525E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %"_ZN4core3ptr65drop_in_place$LT$h2..proto..streams..streams..OpaqueStreamRef$GT$17h0d3cf377b0638ab1E.exit"

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr118drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$h2..proto..streams..streams..Inner$GT$$GT$$GT$17h9145b9a1dd656828E.exit.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr65drop_in_place$LT$h2..proto..streams..streams..OpaqueStreamRef$GT$17h0d3cf377b0638ab1E.exit": ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17h00fe6d3a76a52d34E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25319)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !25319
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !25319, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !25319
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25320)
  %.val.i7 = load i64, ptr %i.c, align 8, !alias.scope !25320
  %i.d = icmp eq i64 %.val.i7, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit9", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i8 = load ptr, ptr %i.e, align 8, !alias.scope !25320, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i8) #38, !noalias !25320
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit9"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit9": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_5
begin_hunk_6_@"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17h00fe6d3a76a52d34E":bb.a
"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i": ; preds = %bb.d, %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25327)
  %.val.i4.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !25328, !noalias !25321
  %i.o = icmp eq i64 %.val.i4.i.i.i.i, 0
  br i1 %i.o, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i"
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.val1.i5.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !25328, !noalias !25321, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i5.i.i.i.i) #38, !noalias !25329
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i": ; preds = %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i"
  %i.q = icmp eq i64 %i.k, %.val1.i11
  br i1 %i.q, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit9"
  %.val2.i = load i64, ptr %i.f, align 8, !range !46, !alias.scope !25321, !noundef !45
  %i.r = icmp eq i64 %.val2.i, 0
  br i1 %i.r, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i"
  tail call void @mi_free(ptr noundef nonnull %.val.i10) #38, !noalias !25321
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit": ; preds = %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25330)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i12 = load ptr, ptr %i.t, align 8, !alias.scope !25330, !nonnull !45, !noundef !45 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i13 = load i64, ptr %i.u, align 8, !alias.scope !25330, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25331)
  %i.v = icmp eq i64 %.val1.i13, 0
  br i1 %i.v, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i", label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i" ], [ 0, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit" ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val.i12, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.x = add nuw i64 %.sroa.0.010.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25332)
  %.val.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !25333, !noalias !25330
  %i.y = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.y, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !25333, !noalias !25330, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i) #38, !noalias !25334
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i": ; preds = %bb.g, %.lr.ph.i.i.i14
  %i.aa = icmp eq i64 %i.x, %.val1.i13
  br i1 %i.aa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i", label %.lr.ph.i.i.i14

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i", %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit"
  %.val2.i15 = load i64, ptr %i.s, align 8, !range !46, !alias.scope !25330, !noundef !45
  %i.ab = icmp eq i64 %.val2.i15, 0
  br i1 %i.ab, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h1c272ced5d1addd1E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i"
  tail call void @mi_free(ptr noundef nonnull %.val.i12) #38, !noalias !25330
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h1c272ced5d1addd1E.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h1c272ced5d1addd1E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i", %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..Page$GT$17hb4390d47cf0a3befE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25361)
  %i.b = load i64, ptr %i.a, align 8, !range !99, !alias.scope !25361, !noundef !45 ; 3 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25362)
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !25363, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !25363
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i1.i = load i64, ptr %i.h, align 8, !alias.scope !25364
  %i.i = icmp eq i64 %.val.i1.i, 0
  br i1 %i.i, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i4.i = load i64, ptr %i.j, align 8, !alias.scope !25365
  %i.k = icmp eq i64 %.val.i4.i, 0
  br i1 %i.k, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %bb.e, %bb.d
  %.sink13.i = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i" ], [ 16, %bb.d ], [ 16, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink13.i
  %.val1.i11.i = load ptr, ptr %i.l, align 8, !alias.scope !25361, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i11.i) #38, !noalias !25361
  br label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i": ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i10.i = load i64, ptr %i.m, align 8, !alias.scope !25366
  %i.n = icmp eq i64 %.val.i10.i, 0
  br i1 %i.n, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i", %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25367)
  %.val.i8 = load i64, ptr %0, align 8, !alias.scope !25367
  %i.o = icmp eq i64 %.val.i8, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i9 = load ptr, ptr %i.p, align 8, !alias.scope !25367, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i9) #38, !noalias !25367
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10": ; preds = %bb.f, %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.s)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" unwind label %bb.o

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !86, !alias.scope !25368, !noundef !45
  %i.u = icmp eq i64 %i.t, -9223372036854775803
  br i1 %i.u, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", label %bb.g

bb.i:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !86, !alias.scope !25369, !noundef !45
  %i.x = icmp eq i64 %i.w, -9223372036854775803
  br i1 %i.x, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.v)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12" unwind label %bb.l

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit": ; preds = %bb.h, %bb.g, %bb.l
  %.pn4 = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.r, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !86, !alias.scope !25370, !noundef !45
  %i.aa = icmp eq i64 %i.z, -9223372036854775803
  br i1 %i.aa, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.y)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14" unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12": ; preds = %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !86, !alias.scope !25371, !noundef !45
  %i.ae = icmp eq i64 %i.ad, -9223372036854775803
  br i1 %i.ae, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ac)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16" unwind label %bb.n

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", %bb.k, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %.pn4, %bb.k ], [ %.pn4, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE"(ptr noalias noundef align 8 dereferenceable(72) %i.af) #44
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25374)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !25375, !noundef !45 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !25375, !nonnull !45, !noundef !45
  %i.ak = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.ak, -16
  %i.al = xor i64 %.not, -16
  %i.am = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.al
  tail call void @mi_free(ptr noundef nonnull %i.am) #38, !noalias !25375, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.an), !inline_history !35
  ret void

bb.o:                                             ; preds = %bb.k, %bb.g, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.p:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !99, !noundef !45 ; 3 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 2
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25384)
  %i.e = icmp eq i64 %i.a, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !25384, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !25384
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i1 = load i64, ptr %i.g, align 8, !alias.scope !25385
  %i.h = icmp eq i64 %.val.i1, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split"

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i4 = load i64, ptr %i.i, align 8, !alias.scope !25386
  %i.j = icmp eq i64 %.val.i4, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split": ; preds = %bb.e, %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
  %.sink13 = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit" ], [ 16, %bb.d ], [ 16, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  %.val1.i11 = load ptr, ptr %i.k, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i11) #38, !noalias !45
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", %bb.e, %bb.d
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i10 = load i64, ptr %i.l, align 8, !alias.scope !25387
  %i.m = icmp eq i64 %.val.i10, 0
  br i1 %i.m, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E"(ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25392)
  %i.d = load i64, ptr %.0.val, align 8, !range !56, !alias.scope !25392, !noalias !25393, !noundef !45
  %.not.i = icmp eq i64 %i.d, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  tail call void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !25393
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !25393
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN7tracing4span4Span7do_exit17hc2730092610d316bE.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !25392, !noalias !25393, !align !48, !noundef !45 ; 3 uses
  %.not4.i = icmp eq ptr %i.i, null
  br i1 %.not4.i, label %_ZN7tracing4span4Span7do_exit17hc2730092610d316bE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25394
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !25393, !nonnull !45, !align !55, !noundef !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noalias !25393, !noundef !45
  store ptr %i.k, ptr %i.a, align 8, !noalias !25394
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !25394
  store ptr %i.a, ptr %i.b, align 8, !noalias !25394
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !25394
  store ptr @2094, ptr %i.c, align 8, !noalias !25394
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.o, align 8, !noalias !25394
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.p, align 8, !noalias !25394
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.q, align 8, !noalias !25394
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.r, align 8, !noalias !25394
  call fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2095, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25394
  br label %_ZN7tracing4span4Span7do_exit17hc2730092610d316bE.exit

_ZN7tracing4span4Span7do_exit17hc2730092610d316bE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr441drop_in_place$LT$alloc..sync..ArcInner$LT$std..sync..poison..rwlock..RwLock$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$17h97972de942df4efcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25401)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25403)
  tail call fastcc void @"_ZN4core3ptr65drop_in_place$LT$tracing_subscriber..filter..targets..Targets$GT$17h3d44c41881441530E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(488) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !25404, !align !55, !noundef !45 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %.val1.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !25404 ; 4 uses
  %i.d = icmp eq ptr %.val.i.i.i, null
  br i1 %i.d, label %"_ZN4core3ptr412drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17hfebeebe8fa183d90E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.e = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !45, !noalias !25404 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.e(ptr noundef nonnull %.val.i.i.i)
          to label %bb.d unwind label %bb.e, !noalias !25404

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !46, !invariant.load !45, !noalias !25404
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN4core3ptr412drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17hfebeebe8fa183d90E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.d
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i) #38, !noalias !25404
  br label %"_ZN4core3ptr412drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17hfebeebe8fa183d90E.exit"

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !46, !invariant.load !45, !noalias !25404
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b284c45ee3e47a4E.exit5.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.e
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i) #38, !noalias !25404
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b284c45ee3e47a4E.exit5.i.i.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b284c45ee3e47a4E.exit5.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.e
  resume { ptr, i32 } %i.i

"_ZN4core3ptr412drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$17hfebeebe8fa183d90E.exit": ; preds = %bb.a, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr442drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$u20$as$u20$actix_http..body..message_body..MessageBody$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h915f9640646f4c8cE"(ptr noundef nonnull align 128 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25436)
  %i.b = load ptr, ptr %i.a, align 32, !alias.scope !25437, !noundef !45 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %"_ZN4core3ptr73drop_in_place$LT$tokio..runtime..blocking..schedule..BlockingSchedule$GT$17hb7dbc012a7dbb067E.exit.i", label %bb.b
end_hunk_6
begin_hunk_7_@"_ZN4core3ptr44drop_in_place$LT$cellulite..error..Error$GT$17h9a93173b584fcad6E":bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25451)
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !25451
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !25451, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !25451
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.h, %bb.g, %bb.c, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$geojson..errors..Error$GT$$GT$17h4c55af76cf71a2c2E.exit", %bb.d, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17h7453b9d76065adbfE"(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.i, align 8, !nonnull !45, !noundef !45 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$geojson..errors..Error$GT$17h01c97df653d6666cE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %.val)
          to label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$geojson..errors..Error$GT$$GT$17h4c55af76cf71a2c2E.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  resume { ptr, i32 } %i.j

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$geojson..errors..Error$GT$$GT$17h4c55af76cf71a2c2E.exit": ; preds = %bb.e
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25452)
  %.val.i1 = load i64, ptr %i.k, align 8, !alias.scope !25452
  %i.l = icmp eq i64 %.val.i1, 0
  br i1 %i.l, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i2 = load ptr, ptr %i.m, align 8, !alias.scope !25452, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i2) #38, !noalias !25452
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr44drop_in_place$LT$h2..proto..error..Error$GT$17h0cf9e2b75e959fcbE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !57, !noundef !45
  switch i8 %i.a, label %bb.b [
    i8 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit"
    i8 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.b, align 8, !range !102, !noundef !45
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.c, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit"

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1) #38, !noalias !25459
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25461)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !25462, !nonnull !45, !align !48, !noundef !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !25462, !nonnull !45, !noundef !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !25462, !noundef !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !25462, !noundef !45
  tail call void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l), !inline_history !1
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Alias$GT$17h2a5c613215ce57ebE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25487)
  %i.b = load i64, ptr %i.a, align 8, !range !99, !alias.scope !25487, !noundef !45 ; 3 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25488)
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !25489, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !25489
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i1.i = load i64, ptr %i.h, align 8, !alias.scope !25490
  %i.i = icmp eq i64 %.val.i1.i, 0
  br i1 %i.i, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i4.i = load i64, ptr %i.j, align 8, !alias.scope !25491
  %i.k = icmp eq i64 %.val.i4.i, 0
  br i1 %i.k, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %bb.e, %bb.d
  %.sink13.i = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i" ], [ 16, %bb.d ], [ 16, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink13.i
  %.val1.i11.i = load ptr, ptr %i.l, align 8, !alias.scope !25487, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i11.i) #38, !noalias !25487
  br label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i": ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i10.i = load i64, ptr %i.m, align 8, !alias.scope !25492
  %i.n = icmp eq i64 %.val.i10.i, 0
  br i1 %i.n, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i", %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25493)
  %.val.i6 = load i64, ptr %0, align 8, !alias.scope !25493
  %i.o = icmp eq i64 %.val.i6, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit8", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i7 = load ptr, ptr %i.p, align 8, !alias.scope !25493, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i7) #38, !noalias !25493
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit8"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit8": ; preds = %bb.f, %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !86, !alias.scope !25494, !noundef !45
  %i.s = icmp eq i64 %i.r, -9223372036854775803
  br i1 %i.s, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit10", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit8"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.q)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit10" unwind label %bb.i

bb.h:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.u)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12" unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !86, !alias.scope !25495, !noundef !45
  %i.w = icmp eq i64 %i.v, -9223372036854775803
  br i1 %i.w, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", label %bb.h

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit10": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit8", %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !range !86, !alias.scope !25496, !noundef !45
  %i.z = icmp eq i64 %i.y, -9223372036854775803
  br i1 %i.z, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit10"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.x)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14" unwind label %bb.k

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12": ; preds = %bb.i, %bb.h, %bb.k
  %.pn4 = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %i.t, %bb.h ], [ %i.t, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE"(ptr noalias noundef align 8 dereferenceable(72) %i.aa) #44
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit10", %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25499)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !25500, !noundef !45 ; 2 uses
  %i.ad = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ad, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !25500, !nonnull !45, !noundef !45
  %i.af = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.af, -16
  %i.ag = xor i64 %.not, -16
  %i.ah = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.ag
  tail call void @mi_free(ptr noundef nonnull %i.ah) #38, !noalias !25500, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ai), !inline_history !35
  ret void

bb.l:                                             ; preds = %bb.h, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12"
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.m:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12"
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Group$GT$17h4c949908d8dccacfE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25527)
  %i.b = load i64, ptr %i.a, align 8, !range !99, !alias.scope !25527, !noundef !45 ; 3 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25528)
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !25529, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !25529
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i1.i = load i64, ptr %i.h, align 8, !alias.scope !25530
  %i.i = icmp eq i64 %.val.i1.i, 0
  br i1 %i.i, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i4.i = load i64, ptr %i.j, align 8, !alias.scope !25531
  %i.k = icmp eq i64 %.val.i4.i, 0
  br i1 %i.k, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %bb.e, %bb.d
  %.sink13.i = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i" ], [ 16, %bb.d ], [ 16, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink13.i
  %.val1.i11.i = load ptr, ptr %i.l, align 8, !alias.scope !25527, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i11.i) #38, !noalias !25527
  br label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i": ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i10.i = load i64, ptr %i.m, align 8, !alias.scope !25532
  %i.n = icmp eq i64 %.val.i10.i, 0
  br i1 %i.n, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i", %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25533)
  %.val.i8 = load i64, ptr %0, align 8, !alias.scope !25533
  %i.o = icmp eq i64 %.val.i8, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i9 = load ptr, ptr %i.p, align 8, !alias.scope !25533, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i9) #38, !noalias !25533
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10": ; preds = %bb.f, %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.s)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" unwind label %bb.o

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !86, !alias.scope !25534, !noundef !45
  %i.u = icmp eq i64 %i.t, -9223372036854775803
  br i1 %i.u, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", label %bb.g

bb.i:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !86, !alias.scope !25535, !noundef !45
  %i.x = icmp eq i64 %i.w, -9223372036854775803
  br i1 %i.x, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.v)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12" unwind label %bb.l

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit": ; preds = %bb.h, %bb.g, %bb.l
  %.pn4 = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.r, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !86, !alias.scope !25536, !noundef !45
  %i.aa = icmp eq i64 %i.z, -9223372036854775803
  br i1 %i.aa, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.y)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14" unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12": ; preds = %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !86, !alias.scope !25537, !noundef !45
  %i.ae = icmp eq i64 %i.ad, -9223372036854775803
  br i1 %i.ae, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ac)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16" unwind label %bb.n

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", %bb.k, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %.pn4, %bb.k ], [ %.pn4, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE"(ptr noalias noundef align 8 dereferenceable(72) %i.af) #44
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25540)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !25541, !noundef !45 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !25541, !nonnull !45, !noundef !45
  %i.ak = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.ak, -16
  %i.al = xor i64 %.not, -16
  %i.am = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.al
  tail call void @mi_free(ptr noundef nonnull %i.am) #38, !noalias !25541, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.an), !inline_history !35
  ret void

bb.o:                                             ; preds = %bb.k, %bb.g, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.p:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Track$GT$17h31364b4c3b54ff88E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25568)
  %i.b = load i64, ptr %i.a, align 8, !range !99, !alias.scope !25568, !noundef !45 ; 3 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25569)
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !25570, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !25570
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i1.i = load i64, ptr %i.h, align 8, !alias.scope !25571
  %i.i = icmp eq i64 %.val.i1.i, 0
  br i1 %i.i, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i4.i = load i64, ptr %i.j, align 8, !alias.scope !25572
  %i.k = icmp eq i64 %.val.i4.i, 0
  br i1 %i.k, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %bb.e, %bb.d
  %.sink13.i = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i" ], [ 16, %bb.d ], [ 16, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink13.i
  %.val1.i11.i = load ptr, ptr %i.l, align 8, !alias.scope !25568, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i11.i) #38, !noalias !25568
  br label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i": ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i10.i = load i64, ptr %i.m, align 8, !alias.scope !25573
  %i.n = icmp eq i64 %.val.i10.i, 0
  br i1 %i.n, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i", %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25574)
  %.val.i8 = load i64, ptr %0, align 8, !alias.scope !25574
  %i.o = icmp eq i64 %.val.i8, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i9 = load ptr, ptr %i.p, align 8, !alias.scope !25574, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i9) #38, !noalias !25574
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10": ; preds = %bb.f, %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.s)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" unwind label %bb.o

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !86, !alias.scope !25575, !noundef !45
  %i.u = icmp eq i64 %i.t, -9223372036854775803
  br i1 %i.u, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", label %bb.g

bb.i:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !86, !alias.scope !25576, !noundef !45
  %i.x = icmp eq i64 %i.w, -9223372036854775803
  br i1 %i.x, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.v)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12" unwind label %bb.l

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit": ; preds = %bb.h, %bb.g, %bb.l
  %.pn4 = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.r, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !86, !alias.scope !25577, !noundef !45
  %i.aa = icmp eq i64 %i.z, -9223372036854775803
  br i1 %i.aa, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.y)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14" unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12": ; preds = %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !86, !alias.scope !25578, !noundef !45
  %i.ae = icmp eq i64 %i.ad, -9223372036854775803
  br i1 %i.ae, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ac)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16" unwind label %bb.n

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", %bb.k, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %.pn4, %bb.k ], [ %.pn4, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE"(ptr noalias noundef align 8 dereferenceable(72) %i.af) #44
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25581)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !25582, !noundef !45 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !25582, !nonnull !45, !noundef !45
  %i.ak = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.ak, -16
  %i.al = xor i64 %.not, -16
  %i.am = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.al
  tail call void @mi_free(ptr noundef nonnull %i.am) #38, !noalias !25582, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.an), !inline_history !35
  ret void

bb.o:                                             ; preds = %bb.k, %bb.g, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.p:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr454drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$$GT$17hd0651dd58a63930bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !45, !noundef !45 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !45 ; 4 uses
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88a167ed3de49ca5E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val5
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88a167ed3de49ca5E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [200 x i8], ptr %.val4, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr431drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$17h2a8767f7010fc518E"(ptr noalias noundef align 8 dereferenceable(200) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val5
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val5
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [200 x i8], ptr %.val4, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr431drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$17h2a8767f7010fc518E"(ptr noalias noundef align 8 dereferenceable(200) %i.k) #44
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !46, !noundef !45
  %i.m = icmp eq i64 %.val2, 0
  br i1 %i.m, label %"_ZN4core3ptr461drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$$GT$17h55d1853467e32eb5E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  tail call void @mi_free(ptr noundef nonnull %.val4) #38
  br label %"_ZN4core3ptr461drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$$GT$17h55d1853467e32eb5E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88a167ed3de49ca5E.exit": ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !46, !noundef !45
  %i.n = icmp eq i64 %.val, 0
  br i1 %i.n, label %"_ZN4core3ptr461drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$$GT$17h55d1853467e32eb5E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88a167ed3de49ca5E.exit"
  tail call void @mi_free(ptr noundef nonnull %.val4) #38
  br label %"_ZN4core3ptr461drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$$GT$17h55d1853467e32eb5E.exit6"

"_ZN4core3ptr461drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$$GT$17h55d1853467e32eb5E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88a167ed3de49ca5E.exit", %bb.g
  ret void

"_ZN4core3ptr461drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$$GT$17h55d1853467e32eb5E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr45drop_in_place$LT$actix_http..error..Error$GT$17hef662a418f23c1e7E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !45, !noundef !45 ; 4 uses
  %.val.i = load ptr, ptr %.val, align 8, !align !55, !noundef !45 ; 4 uses
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load ptr, ptr %i.a, align 8          ; 4 uses
  %i.b = icmp eq ptr %.val.i, null
  br i1 %i.b, label %"_ZN4core3ptr75drop_in_place$LT$alloc..boxed..Box$LT$actix_http..error..ErrorInner$GT$$GT$17hb715cfcee341d19cE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.c = load ptr, ptr %.val1.i, align 8, !invariant.load !45 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !46, !invariant.load !45
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN4core3ptr75drop_in_place$LT$alloc..boxed..Box$LT$actix_http..error..ErrorInner$GT$$GT$17hb715cfcee341d19cE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.d
  tail call void @mi_free(ptr noundef nonnull %.val.i) #38
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..boxed..Box$LT$actix_http..error..ErrorInner$GT$$GT$17hb715cfcee341d19cE.exit"

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !46, !invariant.load !45
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.e
  tail call void @mi_free(ptr noundef nonnull %.val.i) #38
  br label %bb.f

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.e
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  resume { ptr, i32 } %i.g

"_ZN4core3ptr75drop_in_place$LT$alloc..boxed..Box$LT$actix_http..error..ErrorInner$GT$$GT$17hb715cfcee341d19cE.exit": ; preds = %bb.a, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr45drop_in_place$LT$meilisearch..option..Opt$GT$17h0bd9afaf887215e2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(856) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val39 = load i64, ptr %i.a, align 8
  %i.b = icmp eq i64 %.val39, 0
  br i1 %i.b, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val40 = load ptr, ptr %i.c, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val40) #38
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit": ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25595)
  %.val.i89 = load i64, ptr %i.d, align 8, !alias.scope !25595
  %i.e = icmp eq i64 %.val.i89, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit91", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i90 = load ptr, ptr %i.f, align 8, !alias.scope !25595, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i90) #38, !noalias !25595
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit91"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit91": ; preds = %bb.c, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val49 = load i64, ptr %i.g, align 8, !range !102, !noundef !45
  %switch = icmp sgt i64 %.val49, 0
  br i1 %switch, label %bb.d, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit92"

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit91"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val50 = load ptr, ptr %i.h, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val50) #38, !noalias !25596
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit92"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit92": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit91", %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25597)
  %.val.i96 = load i64, ptr %i.i, align 8, !alias.scope !25597
  %i.j = icmp eq i64 %.val.i96, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit98", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit92"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i97 = load ptr, ptr %i.k, align 8, !alias.scope !25597, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i97) #38, !noalias !25597
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit98"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit98": ; preds = %bb.e, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit92"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val53 = load i64, ptr %i.l, align 8, !range !102, !noundef !45
  %switch122 = icmp sgt i64 %.val53, 0
  br i1 %switch122, label %bb.f, label %"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17h67a28c95c9d4c511E.exit99"

end_hunk_7
begin_hunk_8_@"_ZN4core3ptr45drop_in_place$LT$meilisearch..option..Opt$GT$17h0bd9afaf887215e2E":bb.a
  tail call void @mi_free(ptr noundef nonnull %.val36) #38
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit112"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit112": ; preds = %bb.m, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit110"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.val61 = load i64, ptr %i.ac, align 8, !range !102, !noundef !45
  %switch129 = icmp sgt i64 %.val61, 0
  br i1 %switch129, label %bb.n, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit114"

bb.n:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit112"
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.val62 = load ptr, ptr %i.ad, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val62) #38
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit114"

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit114": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit112", %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val = load i64, ptr %i.ae, align 8
  %i.af = icmp eq i64 %.val, 0
  br i1 %i.af, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit116", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit114"
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val32 = load ptr, ptr %i.ag, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val32) #38
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit116"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit116": ; preds = %bb.o, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit114"
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val41 = load i64, ptr %i.ah, align 8, !range !102, !noundef !45
  %switch130 = icmp sgt i64 %.val41, 0
  br i1 %switch130, label %bb.p, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit118"

bb.p:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit116"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 504
  %.val42 = load ptr, ptr %i.ai, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val42) #38, !noalias !25600
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit118"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit118": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h7e141bc39c20267eE.exit116", %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val85 = load i64, ptr %i.aj, align 8
  %i.ak = icmp eq i64 %.val85, 0
  br i1 %i.ak, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$cidr..cidr..any..AnyIpCidr$GT$$GT$17h68886c2d226c5f87E.exit119", label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit118"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val86 = load ptr, ptr %i.al, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val86) #38
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$cidr..cidr..any..AnyIpCidr$GT$$GT$17h68886c2d226c5f87E.exit119"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$cidr..cidr..any..AnyIpCidr$GT$$GT$17h68886c2d226c5f87E.exit119": ; preds = %bb.q, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit118"
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520
  tail call fastcc void @"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$meilisearch..option..S3SnapshotOpts$GT$$GT$17hb9f81fb2a36fe525E"(ptr noalias noundef align 8 dereferenceable(224) %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.val57 = load i64, ptr %i.an, align 8, !range !102, !noundef !45
  %switch131 = icmp sgt i64 %.val57, 0
  br i1 %switch131, label %bb.r, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit121"

bb.r:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$cidr..cidr..any..AnyIpCidr$GT$$GT$17h68886c2d226c5f87E.exit119"
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 752
  %.val58 = load ptr, ptr %i.ao, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val58) #38
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit121"

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h4935e016df2c531aE.exit121": ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$cidr..cidr..any..AnyIpCidr$GT$$GT$17h68886c2d226c5f87E.exit119", %bb.r
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr45drop_in_place$LT$segment..message..Screen$GT$17h38fe621c009e0303E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25627)
  %i.b = load i64, ptr %i.a, align 8, !range !99, !alias.scope !25627, !noundef !45 ; 3 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25628)
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !25629, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !25629
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i1.i = load i64, ptr %i.h, align 8, !alias.scope !25630
  %i.i = icmp eq i64 %.val.i1.i, 0
  br i1 %i.i, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i4.i = load i64, ptr %i.j, align 8, !alias.scope !25631
  %i.k = icmp eq i64 %.val.i4.i, 0
  br i1 %i.k, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %bb.e, %bb.d
  %.sink13.i = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i" ], [ 16, %bb.d ], [ 16, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink13.i
  %.val1.i11.i = load ptr, ptr %i.l, align 8, !alias.scope !25627, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i11.i) #38, !noalias !25627
  br label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i": ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i10.i = load i64, ptr %i.m, align 8, !alias.scope !25632
  %i.n = icmp eq i64 %.val.i10.i, 0
  br i1 %i.n, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i", %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25633)
  %.val.i8 = load i64, ptr %0, align 8, !alias.scope !25633
  %i.o = icmp eq i64 %.val.i8, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i9 = load ptr, ptr %i.p, align 8, !alias.scope !25633, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i9) #38, !noalias !25633
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10": ; preds = %bb.f, %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.s)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" unwind label %bb.o

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !86, !alias.scope !25634, !noundef !45
  %i.u = icmp eq i64 %i.t, -9223372036854775803
  br i1 %i.u, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", label %bb.g

bb.i:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit10"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !86, !alias.scope !25635, !noundef !45
  %i.x = icmp eq i64 %i.w, -9223372036854775803
  br i1 %i.x, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.v)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12" unwind label %bb.l

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit": ; preds = %bb.h, %bb.g, %bb.l
  %.pn4 = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.r, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !86, !alias.scope !25636, !noundef !45
  %i.aa = icmp eq i64 %i.z, -9223372036854775803
  br i1 %i.aa, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.y)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14" unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12": ; preds = %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !86, !alias.scope !25637, !noundef !45
  %i.ae = icmp eq i64 %i.ad, -9223372036854775803
  br i1 %i.ae, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ac)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16" unwind label %bb.n

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", %bb.k, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %.pn4, %bb.k ], [ %.pn4, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE"(ptr noalias noundef align 8 dereferenceable(72) %i.af) #44
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit12", %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25640)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !25641, !noundef !45 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !25641, !nonnull !45, !noundef !45
  %i.ak = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.ak, -16
  %i.al = xor i64 %.not, -16
  %i.am = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.al
  tail call void @mi_free(ptr noundef nonnull %i.am) #38, !noalias !25641, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit16", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.an), !inline_history !35
  ret void

bb.o:                                             ; preds = %bb.k, %bb.g, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.p:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit14"
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !45, !noundef !45 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_json..error..ErrorCode$GT$17hfdb6f07995d5840dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.val)
          to label %"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$serde_json..error..ErrorImpl$GT$$GT$17h10c5dbcc685ac39aE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  resume { ptr, i32 } %i.a

"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$serde_json..error..ErrorImpl$GT$$GT$17h10c5dbcc685ac39aE.exit": ; preds = %bb.a
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !91, !noundef !45 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 5
  switch i64 %i.d, label %bb.b [
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
    i64 1, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
    i64 2, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
    i64 3, label %bb.c
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25655)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !25656, !noundef !45 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !25656, !nonnull !45, !noundef !45
  %i.h = shl i64 %.val1.i.i, 3
  %.not = and i64 %i.h, -16
  %i.i = xor i64 %.not, -16
  %i.j = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.i
  tail call void @mi_free(ptr noundef nonnull %i.j) #38, !noalias !25656
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i, %bb.b
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0), !inline_history !25646
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.k, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h01e7b88835ca44fdE.exit", %bb.d, %bb.c, %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit", %bb.a, %bb.a, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25657)
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !25657
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !25657, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !25657
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25658)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !25658, !nonnull !45, !noundef !45 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !25658, !noundef !45 ; 4 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h01e7b88835ca44fdE.exit", label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.t = icmp eq i64 %i.v, %i.r
  br i1 %i.t, label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h01e7b88835ca44fdE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i4 = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.0.0.i.i4
  %i.v = add i64 %.sroa.0.0.i.i4, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.u)
          to label %bb.f unwind label %bb.h, !noalias !25658, !inline_history !25651

bb.g:                                             ; preds = %.lr.ph6
  %i.w = add i64 %.sroa.0.1.i.i5, 1               ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.r
  br i1 %i.x, label %.body, label %.lr.ph6

bb.h:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.v, %i.r
  br i1 %i.z, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i5 = phi i64 [ %i.w, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.0.1.i.i5
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.aa) #44
          to label %bb.g unwind label %bb.i, !noalias !25658, !inline_history !25651

bb.i:                                             ; preds = %.lr.ph6
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !25658, !inline_history !25651
  unreachable

.body:                                            ; preds = %bb.g, %bb.h
  %.val2.i = load i64, ptr %i.n, align 8, !range !46, !alias.scope !25659, !noundef !45
  %i.ac = icmp eq i64 %.val2.i, 0
  br i1 %i.ac, label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit3", label %bb.j

bb.j:                                             ; preds = %.body
  tail call void @mi_free(ptr noundef nonnull %i.p) #38
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit3"

"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit3": ; preds = %bb.j, %.body
  resume { ptr, i32 } %i.y

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h01e7b88835ca44fdE.exit": ; preds = %bb.f, %bb.e
  %.val.i1 = load i64, ptr %i.n, align 8, !range !46, !alias.scope !25659, !noundef !45
  %i.ad = icmp eq i64 %.val.i1, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h01e7b88835ca44fdE.exit"
  tail call void @mi_free(ptr noundef nonnull %i.p) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h337a56b7bbb91d00E"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !45 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !46, !invariant.load !45
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3a6c0bdb6809001E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @mi_free(ptr noundef nonnull %.0.val) #38
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3a6c0bdb6809001E.exit"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3a6c0bdb6809001E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !46, !invariant.load !45
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3a6c0bdb6809001E.exit5", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4": ; preds = %bb.d
  tail call void @mi_free(ptr noundef nonnull %.0.val) #38
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3a6c0bdb6809001E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3a6c0bdb6809001E.exit5": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4", %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$candle_core..error..Error$GT$17hb21cdda5e9fc5532E"(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !132, !noundef !45 ; 4 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775793
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 15
  switch i64 %i.e, label %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit" [
    i64 3, label %bb.b
    i64 4, label %bb.d
    i64 5, label %bb.f
    i64 6, label %bb.h
    i64 7, label %bb.j
    i64 8, label %bb.l
    i64 9, label %bb.n
    i64 10, label %bb.p
    i64 11, label %bb.r
    i64 14, label %bb.t
    i64 15, label %bb.v
    i64 17, label %bb.x
    i64 19, label %bb.z
    i64 26, label %bb.ae
    i64 27, label %bb.ag
    i64 28, label %bb.ak
    i64 30, label %bb.am
    i64 31, label %bb.ao
    i64 33, label %bb.ax
    i64 34, label %bb.az
    i64 35, label %bb.bf
    i64 37, label %bb.bw
    i64 38, label %bb.ca
    i64 39, label %bb.ce
    i64 40, label %bb.cf
    i64 41, label %bb.cg
    i64 42, label %bb.ch
  ]

"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit": ; preds = %bb.cz, %bb.cy, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i149", %bb.cv, %bb.cs, %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hda59561339f2986dE.exit108", %bb.cq, %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit84", %bb.cp, %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit83", %bb.co, %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit80", %bb.cn, %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit79", %bb.cm, %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit129", %bb.cj, %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit76", %bb.ci, %bb.ch, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i103", %bb.by, %bb.bv, %bb.bu, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit8.i", %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i99", %bb.bn, %bb.bm, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h18449629bd6e4a0cE.exit.i", %bb.bf, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i", %bb.ba, %bb.az, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.av, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i", %bb.aq, %bb.ap, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.ai, %bb.af, %bb.ae, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.g, %bb.f, %bb.c, %bb.b, %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$std..backtrace..Backtrace$GT$$GT$17he073261bfc3f1ffaE.exit", %"_ZN4core3ptr90drop_in_place$LT$alloc..boxed..Box$LT$candle_core..error..MatMulUnexpectedStriding$GT$$GT$17h1c74a4220d9ceab7E.exit", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val59 = load i64, ptr %i.f, align 8
  %i.g = icmp eq i64 %.val59, 0
  br i1 %i.g, label %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val60 = load ptr, ptr %i.h, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val60) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit"

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val57 = load i64, ptr %i.i, align 8
  %i.j = icmp eq i64 %.val57, 0
  br i1 %i.j, label %"_ZN4core3ptr46drop_in_place$LT$candle_core..shape..Shape$GT$17hd81d5eacc4815a29E.exit76", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val58 = load ptr, ptr %i.k, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val58) #38
end_hunk_8
begin_hunk_9_@"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h527d3b11f425badaE":bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc59de82033cb534eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17hce94e18727db8990E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr333drop_in_place$LT$regex_lite..pool..Pool$LT$regex_lite..pikevm..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_lite..pikevm..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17hcfea52fd1423afadE"(ptr noalias noundef align 8 dereferenceable(48) %i.e) #44
          to label %bb.e unwind label %bb.d

"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17hce94e18727db8990E.exit": ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr333drop_in_place$LT$regex_lite..pool..Pool$LT$regex_lite..pikevm..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_lite..pikevm..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17hcfea52fd1423afadE"(ptr noalias noundef align 8 dereferenceable(48) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$segment..batcher..Batcher$GT$17hb4446580bd4d66aeE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$segment..message..BatchMessage$GT$$GT$17h0591d6be491c094aE"(ptr noalias noundef align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !86, !alias.scope !26001, !noundef !45
  %i.d = icmp eq i64 %i.c, -9223372036854775803
  br i1 %i.d, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.b)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !86, !alias.scope !26002, !noundef !45
  %i.g = icmp eq i64 %i.f, -9223372036854775803
  br i1 %i.g, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit1", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.e)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit1"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit1": ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit": ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$segment..http..HttpClient$GT$17h81ab060365f5f193E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26015)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !26016, !nonnull !45, !noundef !45
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !26016
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hbffd8efda1c2d7caE.exit"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdf70c345470b3176E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hbffd8efda1c2d7caE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26017)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !26017
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !26017, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !26017
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hbffd8efda1c2d7caE.exit": ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26018)
  %.val.i1 = load i64, ptr %0, align 8, !alias.scope !26018
  %i.h = icmp eq i64 %.val.i1, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hbffd8efda1c2d7caE.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i2 = load ptr, ptr %i.i, align 8, !alias.scope !26018, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i2) #38, !noalias !26018
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3": ; preds = %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hbffd8efda1c2d7caE.exit", %bb.e
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$segment..message..Message$GT$17h58a1ad25436b14bcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !66, !noundef !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
    i64 5, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26035)
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$segment..message..BatchMessage$GT$$GT$17h0591d6be491c094aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(240) %i.b)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !86, !alias.scope !26036, !noundef !45
  %i.f = icmp eq i64 %i.e, -9223372036854775803
  br i1 %i.f, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.d)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i" unwind label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !86, !alias.scope !26037, !noundef !45
  %i.i = icmp eq i64 %i.h, -9223372036854775803
  br i1 %i.i, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit5.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.g)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit5.i" unwind label %bb.h

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i": ; preds = %bb.h, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.c, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !86, !alias.scope !26038, !noundef !45
  %i.l = icmp eq i64 %i.k, -9223372036854775803
  br i1 %i.l, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.j)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7.i" unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit5.i": ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !86, !alias.scope !26039, !noundef !45
  %i.p = icmp eq i64 %i.o, -9223372036854775803
  br i1 %i.p, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9.i", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit5.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.n)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9.i" unwind label %bb.j

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7.i": ; preds = %bb.j, %bb.g, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i"
  %.pn2.i = phi { ptr, i32 } [ %i.r, %bb.j ], [ %.pn.i, %bb.g ], [ %.pn.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit.i" ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.q) #44
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7.i"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9.i": ; preds = %bb.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit5.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26042)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !26043, !noundef !45 ; 2 uses
  %i.t = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.t, label %"_ZN4core3ptr44drop_in_place$LT$segment..message..Batch$GT$17hc01538795f8af0f0E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9.i"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !26043, !nonnull !45, !noundef !45
  %i.v = shl i64 %.val1.i.i.i.i, 3
  %.not = and i64 %i.v, -16
  %i.w = xor i64 %.not, -16
  %i.x = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.w
  tail call void @mi_free(ptr noundef nonnull %i.x) #38, !noalias !26043, !inline_history !10
  br label %"_ZN4core3ptr44drop_in_place$LT$segment..message..Batch$GT$17hc01538795f8af0f0E.exit"

bb.k:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7.i", %bb.g, %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !26035
  unreachable

bb.l:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7.i"
  resume { ptr, i32 } %.pn2.i

"_ZN4core3ptr44drop_in_place$LT$segment..message..Batch$GT$17hc01538795f8af0f0E.exit": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.z), !inline_history !35
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$segment..message..Identify$GT$17h714ba88a2eed6d61E"(ptr noalias noundef align 8 dereferenceable(352) %i.b)
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Track$GT$17h31364b4c3b54ff88E"(ptr noalias noundef align 8 dereferenceable(376) %i.b)
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$segment..message..Page$GT$17hb4390d47cf0a3befE"(ptr noalias noundef align 8 dereferenceable(376) %i.b)
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$segment..message..Screen$GT$17h38fe621c009e0303E"(ptr noalias noundef align 8 dereferenceable(376) %i.b)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Group$GT$17h4c949908d8dccacfE"(ptr noalias noundef align 8 dereferenceable(376) %i.b)
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr44drop_in_place$LT$segment..message..Alias$GT$17h2a5c613215ce57ebE"(ptr noalias noundef align 8 dereferenceable(304) %i.b)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %"_ZN4core3ptr44drop_in_place$LT$segment..message..Batch$GT$17hc01538795f8af0f0E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h2c29e092b801fb80E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26058)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !26059, !nonnull !45, !noundef !45 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !26059, !nonnull !45, !noundef !45 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26060)
  %i.h = icmp eq ptr %.val2.i.i.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.i.i", label %.lr.ph

.body.i.i.i:                                      ; preds = %bb.d, %.body.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !26059, !noundef !45
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr226drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$alloc..alloc..Global$GT$$GT$17h25bcdbfbc5938a4cE.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.body.i.i.i
  %i.l = load ptr, ptr %0, align 8, !alias.scope !26059, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %i.l) #38, !noalias !26059
  br label %"_ZN4core3ptr226drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$alloc..alloc..Global$GT$$GT$17h25bcdbfbc5938a4cE.exit.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i"
  %i.m = icmp eq i64 %i.o, %i.g
  br i1 %i.m, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i1 = phi i64 [ %i.o, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.0.i.i.i.i1 ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i.i.i1, 1   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26061)
  %.val.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !26062, !noalias !26059
  %i.p = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !26062, !noalias !26059, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i) #38, !noalias !26063, !inline_history !26054
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i": ; preds = %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.r)
          to label %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i.i.i" unwind label %.body.i.i.i.i, !noalias !26059, !inline_history !26055

bb.d:                                             ; preds = %.lr.ph3
  %i.s = add i64 %.sroa.0.1.i.i.i.i2, 1           ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.g
  br i1 %i.t, label %.body.i.i.i, label %.lr.ph3

.body.i.i.i.i:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i"
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.o, %i.g
  br i1 %i.v, label %.body.i.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %.body.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i.i2 = phi i64 [ %i.s, %bb.d ], [ %i.o, %.body.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.1.i.i.i.i2
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E"(ptr noalias noundef readonly align 8 dereferenceable(104) %i.w) #44
          to label %bb.d unwind label %bb.e, !noalias !26059, !inline_history !26054

bb.e:                                             ; preds = %.lr.ph3
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !26064, !inline_history !26054
  unreachable

"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i.i.i", %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !26059, !noundef !45
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %"_ZN4core3ptr106drop_in_place$LT$indexmap..map..iter..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h2ea3ff1565405b3bE.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.i.i"
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !26059, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %i.ab) #38, !noalias !26059
  br label %"_ZN4core3ptr106drop_in_place$LT$indexmap..map..iter..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h2ea3ff1565405b3bE.exit"

"_ZN4core3ptr226drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$alloc..alloc..Global$GT$$GT$17h25bcdbfbc5938a4cE.exit.i.i.i": ; preds = %bb.b, %.body.i.i.i
  resume { ptr, i32 } %i.u

"_ZN4core3ptr106drop_in_place$LT$indexmap..map..iter..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h2ea3ff1565405b3bE.exit": ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.i.i", %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17h52b739769209123dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26089)
  %i.b = load i64, ptr %0, align 8, !range !56, !alias.scope !26089, !noundef !45
  %switch.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i, label %"_ZN4core3ptr42drop_in_place$LT$std..backtrace..Inner$GT$17h895a408ea3f9fc9dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26091)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !26092, !noundef !45
  switch i32 %i.e, label %bb.c [
    i32 3, label %.sink.split.i.i.i
    i32 2, label %"_ZN4core3ptr42drop_in_place$LT$std..backtrace..Inner$GT$17h895a408ea3f9fc9dE.exit"
    i32 0, label %.sink.split.i.i.i
  ], !prof !64

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26092
  store ptr @2134, ptr %i.a, align 8, !noalias !26092
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !26092
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8, !noalias !26092
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !26092
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8, !noalias !26092
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2136) #43, !noalias !26092
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.b, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26094)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !26095, !nonnull !45, !noundef !45 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !26095, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26096)
  %i.l = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.l, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h945fc44c86cd974aE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i, %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h8cbafda5964bafe8E.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ %i.n, %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h8cbafda5964bafe8E.exit.i.i.i.i.i.i" ], [ 0, %.sink.split.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i ; 3 uses
  %i.n = add nuw i64 %.sroa.0.07.i.i.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26097)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26098)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !26099, !noalias !26095, !nonnull !45, !noundef !45 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !26099, !noalias !26095, !noundef !45 ; 2 uses
end_hunk_9
begin_hunk_10_@"_ZN4core3ptr47drop_in_place$LT$meilisearch..routes..Stats$GT$17h92eb2b6b5cd64fd5E"
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$meilisearch..routes..Stats$GT$17h92eb2b6b5cd64fd5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val5 = load i64, ptr %0, align 8, !range !102, !noundef !45
  %switch = icmp sgt i64 %.val5, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.a, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val6) #38, !noalias !26297
  br label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit"

"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit": ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.b, align 8, !range !102, !noundef !45
  %switch9 = icmp sgt i64 %.val, 0
  br i1 %switch9, label %bb.c, label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit8"

bb.c:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit"
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val2) #38, !noalias !26298
  br label %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit8"

"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit8": ; preds = %"_ZN4core3ptr55drop_in_place$LT$meilisearch..routes..indexes..Size$GT$17h141452c7e57ce00cE.exit", %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @"_ZN4core3ptr133drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch..routes..indexes..IndexStats$GT$$GT$17h888ba934e7341101E"(ptr noalias noundef align 8 dereferenceable(24) %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$milli..asc_desc..SortError$GT$17h243a1bb8eb44362cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !90, !noundef !45
  switch i64 %i.a, label %bb.b [
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !26309
  %i.c = icmp eq i64 %.val.i, 0
  br i1 %i.c, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.sink.split": ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i11 = load ptr, ptr %i.d, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i11) #38, !noalias !45
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.sink.split", %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i1 = load i64, ptr %i.e, align 8, !alias.scope !26310
  %i.f = icmp eq i64 %.val.i1, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.sink.split"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i4 = load i64, ptr %i.g, align 8, !alias.scope !26311
  %i.h = icmp eq i64 %.val.i4, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.sink.split"

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i7 = load i64, ptr %i.i, align 8, !alias.scope !26312
  %i.j = icmp eq i64 %.val.i7, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.sink.split"

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i10 = load i64, ptr %i.k, align 8, !alias.scope !26313
  %i.l = icmp eq i64 %.val.i10, 0
  br i1 %i.l, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.sink.split"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$segment..message..Identify$GT$17h714ba88a2eed6d61E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26338)
  %i.b = load i64, ptr %i.a, align 8, !range !99, !alias.scope !26338, !noundef !45 ; 3 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26339)
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !26340, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !26340
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i1.i = load i64, ptr %i.h, align 8, !alias.scope !26341
  %i.i = icmp eq i64 %.val.i1.i, 0
  br i1 %i.i, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i4.i = load i64, ptr %i.j, align 8, !alias.scope !26342
  %i.k = icmp eq i64 %.val.i4.i, 0
  br i1 %i.k, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %bb.e, %bb.d
  %.sink13.i = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i" ], [ 16, %bb.d ], [ 16, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink13.i
  %.val1.i11.i = load ptr, ptr %i.l, align 8, !alias.scope !26338, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i11.i) #38, !noalias !26338
  br label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i": ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i10.i = load i64, ptr %i.m, align 8, !alias.scope !26343
  %i.n = icmp eq i64 %.val.i10.i, 0
  br i1 %i.n, label %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i"

"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit3.sink.split.i", %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef align 8 dereferenceable(72) %i.o)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.q)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" unwind label %bb.n

bb.g:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !86, !alias.scope !26344, !noundef !45
  %i.s = icmp eq i64 %i.r, -9223372036854775803
  br i1 %i.s, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", label %bb.f

bb.h:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$segment..message..User$GT$17he2ddd14c07ea43b1E.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !86, !alias.scope !26345, !noundef !45
  %i.v = icmp eq i64 %i.u, -9223372036854775803
  br i1 %i.v, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.t)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7" unwind label %bb.k

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit": ; preds = %bb.g, %bb.f, %bb.k
  %.pn2 = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.p, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !86, !alias.scope !26346, !noundef !45
  %i.y = icmp eq i64 %i.x, -9223372036854775803
  br i1 %i.y, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.w)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9" unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7": ; preds = %bb.h, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !86, !alias.scope !26347, !noundef !45
  %i.ac = icmp eq i64 %i.ab, -9223372036854775803
  br i1 %i.ac, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit11", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.aa)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit11" unwind label %bb.m

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit", %bb.j, %bb.m
  %.pn4 = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %.pn2, %bb.j ], [ %.pn2, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit" ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE"(ptr noalias noundef align 8 dereferenceable(72) %0) #44
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit11": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit7", %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26350)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !26351, !noundef !45 ; 2 uses
  %i.af = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.af, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit11"
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !26351, !nonnull !45, !noundef !45
  %i.ah = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.ah, -16
  %i.ai = xor i64 %.not, -16
  %i.aj = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.ai
  tail call void @mi_free(ptr noundef nonnull %i.aj) #38, !noalias !26351, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit11", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %0), !inline_history !35
  ret void

bb.n:                                             ; preds = %bb.j, %bb.f, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9"
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.o:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h437a88b599b93c96E.exit9"
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr488drop_in_place$LT$tokio..runtime..task..harness..poll_future..$u7b$$u7b$closure$u7d$$u7d$..Guard$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$u20$as$u20$actix_http..body..message_body..MessageBody$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h5b049e3ff584950bE"(ptr %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26354
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !62, !noalias !26354, !noundef !45
  %i.e = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.d)
          to label %bb.b unwind label %bb.e, !noalias !26354

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8, !noalias !26354
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr388drop_in_place$LT$tokio..runtime..task..core..Stage$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$u20$as$u20$actix_http..body..message_body..MessageBody$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h489db1943a94c2f6E"(ptr noalias noundef align 8 dereferenceable(176) %i.f)
          to label %"_ZN133_$LT$tokio..runtime..task..harness..poll_future..$u7b$$u7b$closure$u7d$$u7d$..Guard$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8a9f055ef0cda17E.exit" unwind label %bb.c, !noalias !26354

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 176, i1 false)
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i.i unwind label %bb.d, !noalias !26354

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

.thread.i.i:                                      ; preds = %bb.e, %bb.c
  %.pn6.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn6.i.i

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr388drop_in_place$LT$tokio..runtime..task..core..Stage$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$u20$as$u20$actix_http..body..message_body..MessageBody$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h489db1943a94c2f6E"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.b) #44
          to label %.thread.i.i unwind label %bb.d

"_ZN133_$LT$tokio..runtime..task..harness..poll_future..$u7b$$u7b$closure$u7d$$u7d$..Guard$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8a9f055ef0cda17E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 176, i1 false)
  call void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !26354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$geojson..geometry..Geometry$GT$17hd9dcde55ca0c77f0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.a, align 8, !range !102, !noundef !45
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val2) #38
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit": ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26407)
  %i.c = load i64, ptr %0, align 8, !range !66, !alias.scope !26407, !noundef !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  switch i64 %i.c, label %bb.c [
    i64 0, label %bb.i
    i64 1, label %bb.k
    i64 2, label %bb.m
    i64 3, label %bb.o
    i64 4, label %bb.r
    i64 5, label %bb.u
  ]

bb.c:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26408)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !26409, !nonnull !45, !noundef !45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26409, !noundef !45 ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$geojson..geometry..Geometry$GT$$GT$17hbe4c3fef188befceE.exit.i", label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.h
  br i1 %i.j, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$geojson..geometry..Geometry$GT$$GT$17hbe4c3fef188befceE.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i12 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.0.0.i.i.i12
  %i.l = add i64 %.sroa.0.0.i.i.i12, 1            ; 4 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$geojson..geometry..Geometry$GT$17hd9dcde55ca0c77f0E"(ptr noalias noundef align 8 dereferenceable(128) %i.k)
          to label %bb.d unwind label %bb.f, !noalias !26409, !inline_history !26359

bb.e:                                             ; preds = %.lr.ph14
  %i.m = add i64 %.sroa.0.1.i.i.i13, 1            ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %.body.i, label %.lr.ph14

bb.f:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.l, %i.h
  br i1 %i.p, label %.body.i, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i13 = phi i64 [ %i.m, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.0.1.i.i.i13
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$geojson..geometry..Geometry$GT$17hd9dcde55ca0c77f0E"(ptr noalias noundef align 8 dereferenceable(128) %i.q) #44
          to label %bb.e unwind label %bb.g, !noalias !26409, !inline_history !26359

bb.g:                                             ; preds = %.lr.ph14
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !26409, !inline_history !26359
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.f
  %.val2.i.i = load i64, ptr %i.d, align 8, !range !46, !alias.scope !26410, !noundef !45
  %i.s = icmp eq i64 %.val2.i.i, 0
  br i1 %i.s, label %.body, label %bb.h

bb.h:                                             ; preds = %.body.i
  tail call void @mi_free(ptr noundef nonnull %i.f) #38, !noalias !26407, !inline_history !26362
  br label %.body

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$geojson..geometry..Geometry$GT$$GT$17hbe4c3fef188befceE.exit.i": ; preds = %bb.d, %bb.c
  %.val.i.i = load i64, ptr %i.d, align 8, !range !46, !alias.scope !26410, !noundef !45
  %i.t = icmp eq i64 %.val.i.i, 0
  br i1 %i.t, label %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit", label %"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$geojson..geometry..Geometry$GT$$GT$17hae8eba0f03c28fe9E.exit.sink.split.i"

bb.i:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit"
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !26407
  %i.u = icmp eq i64 %.val.i, 0
  br i1 %i.u, label %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !26407, !nonnull !45, !noundef !45
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$geojson..geometry..Geometry$GT$$GT$17hae8eba0f03c28fe9E.exit.sink.split.i"

bb.k:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26411)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i2.i = load ptr, ptr %i.w, align 8, !alias.scope !26412, !nonnull !45, !noundef !45 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i3.i = load i64, ptr %i.x, align 8, !alias.scope !26412, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26413)
  %i.y = icmp eq i64 %.val1.i3.i, 0
  br i1 %i.y, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.aa, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i" ], [ 0, %bb.k ] ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val.i2.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.aa = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !26413, !noalias !26412
  %i.ab = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !26413, !noalias !26412, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val9.i.i.i.i) #38, !noalias !26414, !inline_history !26362
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i": ; preds = %bb.l, %.lr.ph.i.i.i.i
  %i.ad = icmp eq i64 %i.aa, %.val1.i3.i
  br i1 %i.ad, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i", %bb.k
  %.val2.i4.i = load i64, ptr %i.d, align 8, !range !46, !alias.scope !26412, !noundef !45
  %i.ae = icmp eq i64 %.val2.i4.i, 0
  br i1 %i.ae, label %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit", label %"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$geojson..geometry..Geometry$GT$$GT$17hae8eba0f03c28fe9E.exit.sink.split.i"

bb.m:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit"
end_hunk_10
begin_hunk_11_@"_ZN4core3ptr48drop_in_place$LT$geojson..geometry..Geometry$GT$17hd9dcde55ca0c77f0E":bb.a
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.ax = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !26424, !noalias !26425
  %i.ay = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !26424, !noalias !26425, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val9.i.i.i.i.i.i.i) #38, !noalias !26426, !inline_history !26362
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i": ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i
  %i.ba = icmp eq i64 %i.ax, %.val1.i.i.i.i.i
  br i1 %i.ba, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i17.i
  %.val2.i.i.i.i.i = load i64, ptr %i.ar, align 8, !range !46, !alias.scope !26423, !noalias !26420, !noundef !45
  %i.bb = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.bb, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i"
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i) #38, !noalias !26425, !inline_history !26362
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i": ; preds = %bb.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i"
  %i.bc = icmp eq i64 %i.as, %.val1.i16.i
  br i1 %i.bc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i", label %.lr.ph.i.i.i17.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i": ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i", %bb.o
  %.val2.i18.i = load i64, ptr %i.d, align 8, !range !46, !alias.scope !26420, !noundef !45
  %i.bd = icmp eq i64 %.val2.i18.i, 0
  br i1 %i.bd, label %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit", label %"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$geojson..geometry..Geometry$GT$$GT$17hae8eba0f03c28fe9E.exit.sink.split.i"

bb.r:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26427)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i19.i = load ptr, ptr %i.be, align 8, !alias.scope !26428, !nonnull !45, !noundef !45 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i20.i = load i64, ptr %i.bf, align 8, !alias.scope !26428, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26429)
  %i.bg = icmp eq i64 %.val1.i20.i, 0
  br i1 %i.bg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i33.i", label %.lr.ph.i.i.i21.i

.lr.ph.i.i.i21.i:                                 ; preds = %bb.r, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i32.i"
  %.sroa.0.07.i.i.i22.i = phi i64 [ %i.bi, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i32.i" ], [ 0, %bb.r ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.val.i19.i, i64 %.sroa.0.07.i.i.i22.i ; 3 uses
  %i.bi = add nuw i64 %.sroa.0.07.i.i.i22.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26430)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val.i.i.i.i23.i = load ptr, ptr %i.bj, align 8, !alias.scope !26431, !noalias !26428, !nonnull !45, !noundef !45 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.val1.i.i.i.i24.i = load i64, ptr %i.bk, align 8, !alias.scope !26431, !noalias !26428, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26432)
  %i.bl = icmp eq i64 %.val1.i.i.i.i24.i, 0
  br i1 %i.bl, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i30.i", label %.lr.ph.i.i.i.i.i.i25.i

.lr.ph.i.i.i.i.i.i25.i:                           ; preds = %.lr.ph.i.i.i21.i, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i29.i"
  %.sroa.0.011.i.i.i.i.i.i26.i = phi i64 [ %i.bn, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i29.i" ], [ 0, %.lr.ph.i.i.i21.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i23.i, i64 %.sroa.0.011.i.i.i.i.i.i26.i ; 2 uses
  %i.bn = add nuw i64 %.sroa.0.011.i.i.i.i.i.i26.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i27.i = load i64, ptr %i.bm, align 8, !alias.scope !26432, !noalias !26433
  %i.bo = icmp eq i64 %.val8.i.i.i.i.i.i27.i, 0
  br i1 %i.bo, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i29.i", label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i25.i
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %.val9.i.i.i.i.i.i28.i = load ptr, ptr %i.bp, align 8, !alias.scope !26432, !noalias !26433, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val9.i.i.i.i.i.i28.i) #38, !noalias !26434, !inline_history !26362
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i29.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i29.i": ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i25.i
  %i.bq = icmp eq i64 %i.bn, %.val1.i.i.i.i24.i
  br i1 %i.bq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i30.i", label %.lr.ph.i.i.i.i.i.i25.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i30.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i29.i", %.lr.ph.i.i.i21.i
  %.val2.i.i.i.i31.i = load i64, ptr %i.bh, align 8, !range !46, !alias.scope !26431, !noalias !26428, !noundef !45
  %i.br = icmp eq i64 %.val2.i.i.i.i31.i, 0
  br i1 %i.br, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i32.i", label %bb.t

bb.t:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i30.i"
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i23.i) #38, !noalias !26433, !inline_history !26362
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i32.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i32.i": ; preds = %bb.t, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i30.i"
  %i.bs = icmp eq i64 %i.bi, %.val1.i20.i
  br i1 %i.bs, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i33.i", label %.lr.ph.i.i.i21.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i33.i": ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i32.i", %bb.r
  %.val2.i34.i = load i64, ptr %i.d, align 8, !range !46, !alias.scope !26428, !noundef !45
  %i.bt = icmp eq i64 %.val2.i34.i, 0
  br i1 %i.bt, label %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit", label %"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$geojson..geometry..Geometry$GT$$GT$17hae8eba0f03c28fe9E.exit.sink.split.i"

bb.u:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h73a0f51c58e6faa0E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26435)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i36.i = load ptr, ptr %i.bu, align 8, !alias.scope !26436, !nonnull !45, !noundef !45 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i37.i = load i64, ptr %i.bv, align 8, !alias.scope !26436, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26437)
  %i.bw = icmp eq i64 %.val1.i37.i, 0
  br i1 %i.bw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfcd7853bf8783cfaE.exit.i.i", label %.lr.ph.i.i.i38.i

.lr.ph.i.i.i38.i:                                 ; preds = %bb.u, %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$17h924e5a897305a222E.exit.i.i.i.i"
  %.sroa.0.07.i.i.i39.i = phi i64 [ %i.by, %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$17h924e5a897305a222E.exit.i.i.i.i" ], [ 0, %bb.u ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.val.i36.i, i64 %.sroa.0.07.i.i.i39.i ; 3 uses
  %i.by = add nuw i64 %.sroa.0.07.i.i.i39.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26438)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.val.i.i.i.i40.i = load ptr, ptr %i.bz, align 8, !alias.scope !26439, !noalias !26436, !nonnull !45, !noundef !45 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.val1.i.i.i.i41.i = load i64, ptr %i.ca, align 8, !alias.scope !26439, !noalias !26436, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26440)
  %i.cb = icmp eq i64 %.val1.i.i.i.i41.i, 0
  br i1 %i.cb, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i42.i

.lr.ph.i.i.i.i.i.i42.i:                           ; preds = %.lr.ph.i.i.i38.i, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.cd, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i38.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i40.i, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 3 uses
  %i.cd = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26441)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !26442, !noalias !26443, !nonnull !45, !noundef !45 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !26442, !noalias !26443, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26444)
  %i.cg = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i42.i, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i.i.i.i42.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ci = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !26444, !noalias !26445
  %i.cj = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cj, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr i8, ptr %i.ch, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !26444, !noalias !26445, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i) #38, !noalias !26446, !inline_history !26362
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cl = icmp eq i64 %i.ci, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.cl, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h6c921e9819d93b73E.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i42.i
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !range !46, !alias.scope !26442, !noalias !26443, !noundef !45
  %i.cm = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.cm, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i.i.i.i"
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #38, !noalias !26445, !inline_history !26362
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i.i.i.i": ; preds = %bb.w, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i.i.i.i.i.i.i"
  %i.cn = icmp eq i64 %i.cd, %.val1.i.i.i.i41.i
  br i1 %i.cn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i42.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h6ae101fc38e8ac36E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i38.i
  %.val2.i.i.i.i43.i = load i64, ptr %i.bx, align 8, !range !46, !alias.scope !26439, !noalias !26436, !noundef !45
  %i.co = icmp eq i64 %.val2.i.i.i.i43.i, 0
  br i1 %i.co, label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$17h924e5a897305a222E.exit.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i.i.i.i"
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i40.i) #38, !noalias !26443, !inline_history !26362
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$17h924e5a897305a222E.exit.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$17h924e5a897305a222E.exit.i.i.i.i": ; preds = %bb.x, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i.i.i.i"
  %i.cp = icmp eq i64 %i.by, %.val1.i37.i
  br i1 %i.cp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfcd7853bf8783cfaE.exit.i.i", label %.lr.ph.i.i.i38.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfcd7853bf8783cfaE.exit.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$17h924e5a897305a222E.exit.i.i.i.i", %bb.u
  %.val2.i44.i = load i64, ptr %i.d, align 8, !range !46, !alias.scope !26436, !noundef !45
  %i.cq = icmp eq i64 %.val2.i44.i, 0
  br i1 %i.cq, label %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit", label %"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$geojson..geometry..Geometry$GT$$GT$17hae8eba0f03c28fe9E.exit.sink.split.i"

"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$geojson..geometry..Geometry$GT$$GT$17hae8eba0f03c28fe9E.exit.sink.split.i": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfcd7853bf8783cfaE.exit.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i33.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i12.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i", %bb.j, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$geojson..geometry..Geometry$GT$$GT$17hbe4c3fef188befceE.exit.i"
  %.val.i36.sink.i = phi ptr [ %.val.i19.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i33.i" ], [ %.val.i15.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i" ], [ %.val.i5.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i12.i" ], [ %.val.i2.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i" ], [ %i.f, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$geojson..geometry..Geometry$GT$$GT$17hbe4c3fef188befceE.exit.i" ], [ %.val1.i, %bb.j ], [ %.val.i36.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfcd7853bf8783cfaE.exit.i.i" ]
  tail call void @mi_free(ptr noundef nonnull %.val.i36.sink.i) #38, !noalias !26407, !inline_history !26362
  br label %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit"

.body:                                            ; preds = %.body.i, %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E"(ptr noalias noundef align 8 dereferenceable(72) %i.cr) #44
          to label %bb.aa unwind label %bb.z

"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$geojson..geometry..Geometry$GT$$GT$17hae8eba0f03c28fe9E.exit.sink.split.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfcd7853bf8783cfaE.exit.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i33.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1705d8069cc12421E.exit.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i12.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7633c4eb0c7527afE.exit.i.i", %bb.i, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$geojson..geometry..Geometry$GT$$GT$17hbe4c3fef188befceE.exit.i"
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26447)
  %i.ct = load i64, ptr %i.cs, align 8, !range !102, !alias.scope !26447, !noundef !45
  %i.cu = icmp eq i64 %i.ct, -9223372036854775808
  br i1 %i.cu, label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E.exit", label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26450)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !26451, !noundef !45 ; 2 uses
  %i.cw = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.cw, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !26451, !nonnull !45, !noundef !45
  %i.cy = shl i64 %.val1.i.i.i.i, 3
  %.not = and i64 %i.cy, -16
  %i.cz = xor i64 %.not, -16
  %i.da = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.cz
  tail call void @mi_free(ptr noundef nonnull %i.da) #38, !noalias !26451, !inline_history !10
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i, %bb.y
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.cs), !inline_history !35
  br label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E.exit"

"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E.exit": ; preds = %"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17h882d048fa46d0af3E.exit", %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit.i"
  ret void

bb.z:                                             ; preds = %.body
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.aa:                                            ; preds = %.body
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$h2..frame..headers..Headers$GT$17h897982626da2c670E"(ptr noalias noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17h1ed777fd0a4abf6dE"(ptr noalias noundef nonnull align 8 dereferenceable(272) %0)
          to label %"_ZN4core3ptr52drop_in_place$LT$h2..frame..headers..HeaderBlock$GT$17h199903cd2f6445dfE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$h2..frame..headers..Pseudo$GT$17h3a9c35b309f464f6E"(ptr noalias noundef align 8 dereferenceable(160) %i.b) #44
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr52drop_in_place$LT$h2..frame..headers..HeaderBlock$GT$17h199903cd2f6445dfE.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$h2..frame..headers..Pseudo$GT$17h3a9c35b309f464f6E"(ptr noalias noundef align 8 dereferenceable(160) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$h2..hpack..decoder..Decoder$GT$17h24ce0cbc42712273E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26460)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !26461, !noundef !45 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !26461 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hfa455540cc58724dE.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !26461 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.val1.i.i.i, %.val.i.i.i
  %i.f = select i1 %.not.i.i.i.i, i64 0, i64 %.val.i.i.i
  %.sroa.0.0.i.i.i.i = sub nuw i64 %.val1.i.i.i, %i.f ; 4 uses
  %i.g = sub i64 %.val.i.i.i, %.sroa.0.0.i.i.i.i  ; 2 uses
  %.not11.i.i.i.i = icmp ult i64 %i.g, %i.c
  br i1 %.not11.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = sub nuw i64 %i.c, %i.g
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hfa455540cc58724dE.exit.i.i.i"

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %.sroa.0.0.i.i.i.i, %i.c
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hfa455540cc58724dE.exit.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hfa455540cc58724dE.exit.i.i.i": ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.08.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.d ], [ %.sroa.0.0.i.i.i.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.sroa.59.0.i.i.i = phi i64 [ %i.i, %bb.d ], [ %.val.i.i.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !26461, !nonnull !45, !noundef !45 ; 6 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %.sroa.08.0.i.i.i ; 2 uses
  %i.m = sub i64 %.sroa.59.0.i.i.i, %.sroa.08.0.i.i.i ; 3 uses
  %i.n = icmp eq i64 %.sroa.59.0.i.i.i, %.sroa.08.0.i.i.i
  br i1 %i.n, label %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i.preheader", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.o = icmp eq i64 %i.r, %i.m
  br i1 %i.o, label %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i.preheader", label %.lr.ph

"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i.preheader": ; preds = %bb.e, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hfa455540cc58724dE.exit.i.i.i"
  %i.p = icmp eq i64 %.sroa.11.0.i.i.i, 0
  br i1 %i.p, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09a66ce51736376dE.exit.i.i", label %.lr.ph11

.lr.ph:                                           ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hfa455540cc58724dE.exit.i.i.i", %bb.e
  %.sroa.0.0.i6.i.i.i7 = phi i64 [ %i.r, %bb.e ], [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hfa455540cc58724dE.exit.i.i.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %.sroa.0.0.i6.i.i.i7
  %i.r = add i64 %.sroa.0.0.i6.i.i.i7, 1          ; 4 uses
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$h2..hpack..header..Header$GT$17h79e344e3b0fbe53aE"(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %bb.e unwind label %bb.g, !noalias !26461

bb.f:                                             ; preds = %.lr.ph9
  %i.s = add i64 %.sroa.0.1.i.i.i.i8, 1           ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.m
  br i1 %i.t, label %.body.i.i.i, label %.lr.ph9

bb.g:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.r, %i.m
  br i1 %i.v, label %.body.i.i.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i.i8 = phi i64 [ %i.s, %bb.f ], [ %i.r, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %.sroa.0.1.i.i.i.i8
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$h2..hpack..header..Header$GT$17h79e344e3b0fbe53aE"(ptr noalias noundef align 8 dereferenceable(72) %i.w) #44
          to label %bb.f unwind label %bb.h, !noalias !26461

bb.h:                                             ; preds = %.lr.ph9
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !26461
  unreachable

.body.i.i.i:                                      ; preds = %bb.f, %bb.g
  invoke fastcc void @"_ZN4core3ptr162drop_in_place$LT$$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..Dropper$LT$h2..hpack..header..Header$GT$$GT$17h3b61636bd6482227E"(ptr nonnull %i.k, i64 %.sroa.11.0.i.i.i) #44
          to label %.body.i.i unwind label %bb.l, !noalias !26461

"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i": ; preds = %.lr.ph11
  %i.y = icmp eq i64 %i.aa, %.sroa.11.0.i.i.i
  br i1 %i.y, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09a66ce51736376dE.exit.i.i", label %.lr.ph11

.lr.ph11:                                         ; preds = %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i.preheader", %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i10 = phi i64 [ %i.aa, %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i" ], [ 0, %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i.preheader" ] ; 2 uses
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %.sroa.0.0.i.i.i.i.i.i10
  %i.aa = add i64 %.sroa.0.0.i.i.i.i.i.i10, 1     ; 4 uses
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$h2..hpack..header..Header$GT$17h79e344e3b0fbe53aE"(ptr noalias noundef align 8 dereferenceable(72) %i.z)
          to label %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i" unwind label %bb.j, !noalias !26461

bb.i:                                             ; preds = %.lr.ph13
  %i.ab = add i64 %.sroa.0.1.i.i.i.i.i.i12, 1     ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %.sroa.11.0.i.i.i
  br i1 %i.ac, label %.body.i.i, label %.lr.ph13

bb.j:                                             ; preds = %.lr.ph11
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.aa, %.sroa.11.0.i.i.i
  br i1 %i.ae, label %.body.i.i, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i.i.i.i.i12 = phi i64 [ %i.ab, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %.sroa.0.1.i.i.i.i.i.i12
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$h2..hpack..header..Header$GT$17h79e344e3b0fbe53aE"(ptr noalias noundef align 8 dereferenceable(72) %i.af) #44
          to label %bb.i unwind label %bb.k, !noalias !26461

bb.k:                                             ; preds = %.lr.ph13
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !26461
  unreachable

bb.l:                                             ; preds = %.body.i.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !26461
  unreachable

.body.i.i:                                        ; preds = %bb.i, %bb.j, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %.body.i.i.i ], [ %i.ad, %bb.j ], [ %i.ad, %bb.i ]
  %i.ai = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ai, label %.body, label %bb.m

bb.m:                                             ; preds = %.body.i.i
  tail call void @mi_free(ptr noundef nonnull %i.k) #38, !noalias !26462
  br label %.body

"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09a66ce51736376dE.exit.i.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i", %"_ZN4core3ptr56drop_in_place$LT$$u5b$h2..hpack..header..Header$u5d$$GT$17hcb51fe8adc6be3c7E.exit.i.i.i.preheader"
  %i.aj = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.aj, label %"_ZN4core3ptr46drop_in_place$LT$h2..hpack..decoder..Table$GT$17hdb3497155a3df7b8E.exit", label %bb.n

bb.n:                                             ; preds = %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09a66ce51736376dE.exit.i.i"
  tail call void @mi_free(ptr noundef nonnull %i.k) #38, !noalias !26462
  br label %"_ZN4core3ptr46drop_in_place$LT$h2..hpack..decoder..Table$GT$17hdb3497155a3df7b8E.exit"

.body:                                            ; preds = %.body.i.i, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit" unwind label %bb.o

"_ZN4core3ptr46drop_in_place$LT$h2..hpack..decoder..Table$GT$17hdb3497155a3df7b8E.exit": ; preds = %bb.n, %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09a66ce51736376dE.exit.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_11
begin_hunk_12_@"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$GT$17hb8dfb65feff7506aE":bb.a
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !30897, !noalias !30898
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !30897, !noalias !30898
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !30897, !noalias !30898
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !30897, !noalias !30898
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i": ; preds = %bb.b, %bb.a
  %.sink23.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink23.i.i, ptr %i.b, align 8, !alias.scope !30897, !noalias !30898
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i, ptr %i.c, align 8, !alias.scope !30897, !noalias !30898
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %i.d, align 8, !alias.scope !30897, !noalias !30898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30899
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h0f14957f4f1c27edE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !30896
  %i.e = load ptr, ptr %i.a, align 8, !noalias !30899, !noundef !45 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04c9879cede0a3f3E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i"
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i", %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.k, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !30899
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.23.0.copyload.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30900)
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !30900, !noalias !30899
  %i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.i, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !30900, !noalias !30899, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i) #38, !noalias !30901
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i": ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30899
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h0f14957f4f1c27edE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !30896
  %i.k = load ptr, ptr %i.a, align 8, !noalias !30899, !noundef !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04c9879cede0a3f3E.exit", label %bb.c

"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04c9879cede0a3f3E.exit": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h56b6bf7844adb80eE.exit.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98acc66db26fa222E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30896
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$17hf11e267797a17507E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !45
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30919)
  %i.d = load i64, ptr %i.c, align 8, !range !56, !alias.scope !30920, !noundef !45
  switch i64 %i.d, label %bb.c [
    i64 0, label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit"
    i64 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !30920 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !30920, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.g = load ptr, ptr %.val1.i.i, align 8, !invariant.load !45, !noalias !30920 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.f, !noalias !30920

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !46, !invariant.load !45, !noalias !30920
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.val.i.i) #38, !noalias !30920
  br label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit"

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !46, !invariant.load !45, !noalias !30920
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.f, %bb.l
  %.val.i.i1.sink = phi ptr [ %.val.i.i1, %bb.l ], [ %.val.i.i, %bb.f ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.k, %bb.f ]
  tail call void @mi_free(ptr noundef nonnull %.val.i.i1.sink) #38, !noalias !45
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.ae, %bb.l ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30922)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !30923, !nonnull !45, !align !48, !noundef !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !30923, !nonnull !45, !noundef !45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !30923, !noundef !45
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !30923, !noundef !45
  tail call void %i.r(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i64 noundef %i.w), !inline_history !5
  br label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit"

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30925)
  %i.x = load i64, ptr %i.c, align 8, !range !56, !alias.scope !30926, !noundef !45
  switch i64 %i.x, label %bb.i [
    i64 0, label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit"
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i1 = load ptr, ptr %i.y, align 8, !alias.scope !30926 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i2 = load ptr, ptr %i.z, align 8, !alias.scope !30926, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.aa = load ptr, ptr %.val1.i.i2, align 8, !invariant.load !45, !noalias !30926 ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i1) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i1)
          to label %bb.k unwind label %bb.l, !noalias !30926

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !46, !invariant.load !45, !noalias !30926
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i6"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i6": ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i1) ]
  tail call void @mi_free(ptr noundef nonnull %.val.i.i1) #38, !noalias !30926
  br label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit"

bb.l:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !46, !invariant.load !45, !noalias !30926
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %common.resume.sink.split

bb.m:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30928)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !30929, !nonnull !45, !align !48, !noundef !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !30929, !nonnull !45, !noundef !45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !30929, !noundef !45
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !30929, !noundef !45
  tail call void %i.al(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef %i.ao, i64 noundef %i.aq), !inline_history !5
  br label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit"

"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h4abf3190172daaceE.exit": ; preds = %bb.m, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i6", %bb.k, %bb.h, %bb.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30937)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !30938, !noundef !45 ; 2 uses
  %i.b = icmp eq i64 %.val1.i.i, 0
  br i1 %i.b, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !30938, !nonnull !45, !noundef !45
  %i.d = shl i64 %.val1.i.i, 3
  %.not = and i64 %i.d, -16
  %i.e = xor i64 %.not, -16
  %i.f = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.e
  tail call void @mi_free(ptr noundef nonnull %i.f) #38, !noalias !30938, !inline_history !30934
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0858f1ff0f5a2af9E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %0), !inline_history !30935
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr982drop_in_place$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$GT$17h0a55fafb8a5054ffE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31001)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !31002, !nonnull !45, !noundef !45 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !31002, !noundef !45
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !noalias !31002
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit"

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h83a314a90446d6daE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !31003, !noundef !45
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17hd3d4caa3dba4a253E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit" unwind label %bb.aa

"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit": ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !31004, !noundef !45
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit12", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit"
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17hd3d4caa3dba4a253E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.i)
          to label %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit12" unwind label %bb.g

"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit": ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31006)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !31007, !nonnull !45, !noundef !45 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !31007, !noundef !45
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !noalias !31007
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit"

bb.f:                                             ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit"
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h7008d446501a7b04E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.l)
          to label %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit" unwind label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit"

"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit12": ; preds = %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit", %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31009)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !31010, !nonnull !45, !noundef !45 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !31010, !noundef !45
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !noalias !31010
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit15"

bb.h:                                             ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit12"
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h7008d446501a7b04E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.r)
          to label %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit15" unwind label %bb.j

"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit", %bb.f, %bb.j
  %.pn2 = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %.pn, %bb.f ], [ %.pn, %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit" ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31012)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !31013, !nonnull !45, !noundef !45 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !31013, !noundef !45
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !noalias !31013
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit"

bb.i:                                             ; preds = %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit"
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hca75c16064d5de1aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.w)
          to label %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit" unwind label %bb.aa

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit"

"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit15": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h606997ec73180b90E.exit12", %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31015)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !31016, !nonnull !45, !noundef !45 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !31016, !noundef !45
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !noalias !31016
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit18"

bb.k:                                             ; preds = %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit15"
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hca75c16064d5de1aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ac)
          to label %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit18" unwind label %bb.n

"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit": ; preds = %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit", %bb.i, %bb.n
  %.pn4 = phi { ptr, i32 } [ %i.an, %bb.n ], [ %.pn2, %bb.i ], [ %.pn2, %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit" ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31017)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !31017, !noundef !45 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit"
  %i.ak = load i64, ptr %i.ai, align 8, !noalias !31018, !noundef !45
  %i.al = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.al, ptr %i.ai, align 8, !noalias !31018
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.m, label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit"

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23cf1d30feee96e4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit" unwind label %bb.aa

bb.n:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit"

"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit18": ; preds = %"_ZN4core3ptr359drop_in_place$LT$alloc..rc..Rc$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h47c9ba9ad68f4976E.exit15", %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31019)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !31019, !noundef !45 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit21", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit18"
  %i.ar = load i64, ptr %i.ap, align 8, !noalias !31020, !noundef !45
  %i.as = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.as, ptr %i.ap, align 8, !noalias !31020
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.p, label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit21"

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23cf1d30feee96e4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit21" unwind label %bb.r

"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit": ; preds = %bb.l, %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit", %bb.m, %bb.r
  %.pn6 = phi { ptr, i32 } [ %i.az, %bb.r ], [ %.pn4, %bb.m ], [ %.pn4, %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit" ], [ %.pn4, %bb.l ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31022)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !31023, !nonnull !45, !noundef !45 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !31023, !noundef !45
  %i.ax = add i64 %i.aw, -1                       ; 2 uses
  store i64 %i.ax, ptr %i.av, align 8, !noalias !31023
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit"

bb.q:                                             ; preds = %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3069c76db93285fbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit" unwind label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit"

"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit21": ; preds = %bb.o, %"_ZN4core3ptr162drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$$GT$$GT$17h3480a2c203e8944dE.exit18", %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31025)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !31026, !nonnull !45, !noundef !45 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !31026, !noundef !45
  %i.bd = add i64 %i.bc, -1                       ; 2 uses
  store i64 %i.bd, ptr %i.bb, align 8, !noalias !31026
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.s, label %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit24"

bb.s:                                             ; preds = %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit21"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3069c76db93285fbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit24" unwind label %bb.t

"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit": ; preds = %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit", %bb.q, %bb.t
  %.pn8 = phi { ptr, i32 } [ %i.bg, %bb.t ], [ %.pn6, %bb.q ], [ %.pn6, %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit" ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$actix_router..resource..ResourceDef$GT$$GT$$GT$17h8784a791a79c79d3E"(ptr noalias noundef align 8 dereferenceable(32) %i.bf) #44
          to label %common.resume unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit"

"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit24": ; preds = %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit21", %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31027)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31029)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !31030, !nonnull !45, !noundef !45 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !31030, !noundef !45 ; 4 uses
  %i.bk = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.bk, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6c730cd39f65c3d9E.exit.i.i.i", label %.lr.ph

bb.u:                                             ; preds = %.lr.ph
  %i.bl = icmp eq i64 %i.bn, %.val1.i.i.i
  br i1 %i.bl, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6c730cd39f65c3d9E.exit.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit24", %bb.u
  %.sroa.0.0.i.i.i.i.i26 = phi i64 [ %i.bn, %bb.u ], [ 0, %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit24" ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [152 x i8], ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i.i26
  %i.bn = add i64 %.sroa.0.0.i.i.i.i.i26, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17h888e2c636a884af5E"(ptr noalias noundef align 8 dereferenceable(152) %i.bm)
          to label %bb.u unwind label %bb.w, !noalias !31030

bb.v:                                             ; preds = %.lr.ph28
  %i.bo = add i64 %.sroa.0.1.i.i.i.i.i27, 1       ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %.val1.i.i.i
  br i1 %i.bp, label %.body.i.i.i, label %.lr.ph28

bb.w:                                             ; preds = %.lr.ph
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %i.bn, %.val1.i.i.i
  br i1 %i.br, label %.body.i.i.i, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.w, %bb.v
  %.sroa.0.1.i.i.i.i.i27 = phi i64 [ %i.bo, %bb.v ], [ %i.bn, %bb.w ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [152 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i27
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17h888e2c636a884af5E"(ptr noalias noundef align 8 dereferenceable(152) %i.bs) #44
          to label %bb.v unwind label %bb.x, !noalias !31030

bb.x:                                             ; preds = %.lr.ph28
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !31030
  unreachable

.body.i.i.i:                                      ; preds = %bb.v, %bb.w
  %.val4.i.i.i = load i64, ptr %i.bh, align 8, !range !46, !alias.scope !31030, !noundef !45
  %i.bu = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.bu, label %common.resume, label %bb.y

bb.y:                                             ; preds = %.body.i.i.i
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i) #38, !noalias !31030
  br label %common.resume

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6c730cd39f65c3d9E.exit.i.i.i": ; preds = %bb.u, %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit24"
  %.val2.i.i.i = load i64, ptr %i.bh, align 8, !range !46, !alias.scope !31030, !noundef !45
  %i.bv = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bv, label %"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$actix_router..resource..ResourceDef$GT$$GT$$GT$17h8784a791a79c79d3E.exit", label %bb.z

bb.z:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6c730cd39f65c3d9E.exit.i.i.i"
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i) #38, !noalias !31030
  br label %"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$actix_router..resource..ResourceDef$GT$$GT$$GT$17h8784a791a79c79d3E.exit"

common.resume:                                    ; preds = %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit", %.body.i.i.i, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bq, %.body.i.i.i ], [ %i.bq, %bb.y ], [ %.pn8, %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$actix_router..resource..ResourceDef$GT$$GT$$GT$17h8784a791a79c79d3E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6c730cd39f65c3d9E.exit.i.i.i", %bb.z
  ret void

bb.aa:                                            ; preds = %bb.q, %bb.m, %bb.i, %bb.f, %bb.d, %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit"
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h00ef09d73cf7b48fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.a, align 8, !noundef !45 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17he0bc62b0db664c01E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8, !nonnull !45, !noundef !45
  %i.d = shl i64 %.val1, 3
  %.not = and i64 %i.d, -16
  %i.e = xor i64 %.not, -16
  %i.f = getelementptr inbounds i8, ptr %.val, i64 %i.e
  tail call void @mi_free(ptr noundef nonnull %i.f) #38
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17he0bc62b0db664c01E.exit"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17he0bc62b0db664c01E.exit": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i, %bb.a
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr99drop_in_place$LT$actix_http..h2..HandshakeWithTimeout$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17hf76b4e871f86a9b7E"(ptr noalias noundef nonnull align 8 dereferenceable(1128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$h2..server..Handshaking$LT$tokio..net..tcp..stream..TcpStream$C$bytes..bytes..Bytes$GT$$GT$17hb468604377a9318bE"(ptr noalias noundef align 8 dereferenceable(952) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.c) #44
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr84drop_in_place$LT$h2..server..Handshake$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h4e9fb1ddf02e5889E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.b, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %.val1 = load ptr, ptr %i.g, align 8, !align !48, !noundef !45
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$$GT$17h87087c25bb5b98b8E"(ptr %.val1) #44
          to label %common.resume unwind label %bb.h

"_ZN4core3ptr84drop_in_place$LT$h2..server..Handshake$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h4e9fb1ddf02e5889E.exit": ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %.val = load ptr, ptr %i.h, align 8, !align !48, !noundef !45 ; 4 uses
  %i.i = icmp eq ptr %.val, null
  br i1 %i.i, label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$$GT$17h87087c25bb5b98b8E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr84drop_in_place$LT$h2..server..Handshake$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h4e9fb1ddf02e5889E.exit"
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17h10bdc9bbf70139ccE"(ptr noundef nonnull align 8 %.val)
          to label %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i" unwind label %bb.g

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  br label %common.resume

"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i": ; preds = %bb.f
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  br label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$$GT$17h87087c25bb5b98b8E.exit"

"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$$GT$17h87087c25bb5b98b8E.exit": ; preds = %"_ZN4core3ptr84drop_in_place$LT$h2..server..Handshake$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h4e9fb1ddf02e5889E.exit", %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i"
  ret void

bb.h:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$17h5623d44f32d0d113E"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !45 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !46, !invariant.load !45
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd20ac6a2d20e3f66E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @mi_free(ptr noundef nonnull %.0.val) #38
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd20ac6a2d20e3f66E.exit"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd20ac6a2d20e3f66E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !46, !invariant.load !45
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd20ac6a2d20e3f66E.exit5", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4": ; preds = %bb.d
  tail call void @mi_free(ptr noundef nonnull %.0.val) #38
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd20ac6a2d20e3f66E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd20ac6a2d20e3f66E.exit5": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4", %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr99drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..streams..Inner$GT$$GT$17he31f0f29d265bd64E"(ptr %.0.val, i8 %.8.val) unnamed_addr #3 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe2bf46fe975e44bE.exit", !prof !47

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.0.val)
  br label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe2bf46fe975e44bE.exit"

"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe2bf46fe975e44bE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hfb1e61c0e3c4d18eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hf939b14827d1bb6fE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf37471ee1ae23b53E.exit.i.i"
  %i.c = phi i64 [ %i.aq, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf37471ee1ae23b53E.exit.i.i" ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf37471ee1ae23b53E.exit.i.i" ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !31057, !noundef !45 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e3ac53228def2d5E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e3ac53228def2d5E.exit12.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !31057, !noundef !45
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e3ac53228def2d5E.exit14.i.i.i.i.i", label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e3ac53228def2d5E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e3ac53228def2d5E.exit12.i.i.i.i.i"
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !31057, !noundef !45
end_hunk_12
begin_hunk_13_@"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8cbda1919bca6ec4E":bb.a
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.0.0.i13
  %.sroa.015.0.copyload.i17 = load i16, ptr %i.bq, align 1, !alias.scope !39564
  %i.br = zext i16 %.sroa.015.0.copyload.i17 to i64
  %i.bs = shl nuw nsw i64 %.sroa.0.0.i13, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.011.0.i12
  %i.bv = or disjoint i64 %.sroa.0.0.i13, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.011.0.i12, %bb.m ] ; 2 uses
  %.sroa.0.1.i15 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.0.0.i13, %bb.m ] ; 3 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.1.i15, %i.ag
  br i1 %i.bw, label %bb.p, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.0.1.i15, %.sroa.04.0.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !39564, !noundef !45
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.0.1.i15, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.011.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19: ; preds = %bb.o, %bb.p
  %.sroa.011.2.i16 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.011.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i16, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted24, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.04.020 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.020
  %.sroa.08.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.08.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.08.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.04.020, 8            ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72d9b7697f38631E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !39574, !noalias !39575, !noundef !45 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.split5

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

.split5:                                          ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

.split:                                           ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit": ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

.split6:                                          ; preds = %.split5, %.split, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !45, !noalias !39576, !nonnull !45
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2032, i64 noundef 2), !noalias !39576, !inline_history !39570
  br i1 %i.m, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %bb.c

bb.c:                                             ; preds = %.split6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !alias.scope !39577, !noalias !39578, !noundef !45 ; 2 uses
  %i.p = and i32 %i.o, 33554432
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.o, 67108864
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

bb.g:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4": ; preds = %bb.g, %bb.f, %bb.e, %.split6, %.split5, %.split, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ true, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit" ], [ true, %.split6 ], [ true, %.split ], [ true, %.split5 ], [ %i.u, %bb.f ], [ %i.v, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h15ee634df99e6a27E"(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h2293b590ed749aaaE"(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3f09ee0973c53766E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h67aada7327e2efb1E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !45, !nonnull !45
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hdb4f672457e046a6E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.021 = alloca [96 x i8], align 8          ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39673)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !39673, !noalias !39672, !noundef !45 ; 8 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !alias.scope !39672, !noalias !39673 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !39672, !noalias !39673 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !39673
  %i.k = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.k, label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i: ; preds = %bb.b
  %i.l = shl i64 %.sroa.4.0.copyload.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %.not154 = and i64 %i.l, -16
  %i.m = xor i64 %.not154, -16
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.m
  tail call void @mi_free(ptr noundef nonnull %i.n) #38, !noalias !39674
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit"

bb.c:                                             ; preds = %bb.i, %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.x, 0
  br i1 %i.p, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !39672, !noalias !39673, !nonnull !45, !noundef !45
  %i.r = add i64 %i.x, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false), !noalias !39674
  %i.s = icmp ult i64 %i.x, 8
  %i.t = add i64 %i.x, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i.i = select i1 %i.s, i64 %i.x, i64 %i.v
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !39672, !noalias !39673, !noundef !45 ; 8 uses
  %.not.i = icmp eq i64 %i.x, %i.i
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.f, align 8, !alias.scope !39675, !noalias !39676
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %i.i, 1                          ; 3 uses
  %or.cond.i.i4.i = icmp ugt i64 %i.y, 2305843009213693950
  br i1 %or.cond.i.i4.i, label %bb.h, label %bb.g, !prof !87

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw i64 %i.y, 3
  %i.aa = add nuw i64 %i.z, 8
  %i.ab = and i64 %i.aa, -16                      ; 3 uses
  %i.ac = add nsw i64 %i.i, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = icmp ugt i64 %i.ad, 9223372036854775792
  %or.cond.i.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i.i, label %bb.h, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i5.i, !prof !92

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i5.i: ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39677
  %i.ag = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !39677 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.c, !noalias !39674 ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i

bb.i:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i5.i
  %i.al = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ad)
          to label %.noexc6.i unwind label %bb.c, !noalias !39674 ; 2 uses

.noexc6.i:                                        ; preds = %bb.i
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i

bb.j:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i5.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  %i.ap = icmp ult i64 %i.i, 8
  %i.aq = lshr i64 %i.y, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.09.0.i.i = select i1 %i.ap, i64 %i.i, i64 %i.ar
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i

bb.k:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i, %._crit_edge.i
  %i.as = phi i64 [ %i.i, %._crit_edge.i ], [ %.sroa.412.0.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i ], [ %.sroa.412.0.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i ]
  %i.at = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.sroa.011.0.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i ], [ %.sroa.011.0.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39679)
  %i.au = load ptr, ptr %i.g, align 8, !alias.scope !39676, !noalias !39675, !nonnull !45, !noundef !45 ; 5 uses
  %i.av = add i64 %i.as, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %i.au, i64 %i.av, i1 false), !noalias !39680
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !39676, !noalias !39675, !noundef !45 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %.val13.i.i.i = load <16 x i8>, ptr %i.au, align 16, !noalias !39681
  %i.az = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bc = ptrtoint ptr %i.au to i64
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.sroa.012.024.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.sroa.012.1.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.6.023.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.813.022.i.i = phi i16 [ %i.ba, %.lr.ph.i.i ], [ %i.bl, %.loopexit.i.i ] ; 2 uses
  %.sroa.1014.021.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %i.bo, %.loopexit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.813.022.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %i.bd = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %.sroa.6.023.i.i, %bb.l ] ; 2 uses
  %i.be = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.sroa.012.024.i.i, %bb.l ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.bd, align 16, !noalias !39682
  %i.bf = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.bf to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.l
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.023.i.i, %bb.l ], [ %i.bh, %.lr.ph.i.i.i ]
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.024.i.i, %bb.l ], [ %i.bg, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.813.022.i.i, %bb.l ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bi = add i16 %.lcssa.i.i.i, -1
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = and i16 %i.bi, %.lcssa.i.i.i
  %i.bm = sub nsw i64 0, %i.bk
  %i.bn = getelementptr inbounds [8 x i8], ptr %.sroa.012.1.i.i, i64 %i.bm ; 2 uses
  %i.bo = add i64 %.sroa.1014.021.i.i, -1         ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !39683, !noalias !39680, !noundef !45
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bc, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  store i64 %i.bq, ptr %i.bw, align 8, !noalias !39680
  %i.bx = icmp eq i64 %i.bo, 0
  br i1 %i.bx, label %.loopexit.i, label %bb.l

_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i: ; preds = %bb.j, %.noexc6.i, %.noexc.i
  %.sroa.7.0.i = phi i64 [ %i.ak, %.noexc.i ], [ %i.an, %.noexc6.i ], [ %.sroa.09.0.i.i, %bb.j ]
  %.sroa.412.0.i = phi i64 [ %i.aj, %.noexc.i ], [ %i.am, %.noexc6.i ], [ %i.i, %bb.j ] ; 3 uses
  %.sroa.011.0.i = phi ptr [ null, %.noexc.i ], [ null, %.noexc6.i ], [ %i.ao, %bb.j ] ; 3 uses
  %i.by = load ptr, ptr %i.f, align 8, !alias.scope !39672, !noalias !39673, !nonnull !45, !noundef !45
  store ptr %.sroa.011.0.i, ptr %i.f, align 8, !alias.scope !39672, !noalias !39673
  store i64 %.sroa.412.0.i, ptr %i.w, align 8, !alias.scope !39672, !noalias !39673
  %.sroa.3.0..sroa.08.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.7.0.i, ptr %.sroa.3.0..sroa.08.0.10.sroa_idx.i, align 8, !alias.scope !39672, !noalias !39673
  %.sroa.414.0..sroa.08.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.414.0..sroa.08.0.10.sroa_idx.i, align 8, !alias.scope !39672, !noalias !39673
  %i.bz = icmp eq i64 %i.x, 0
  br i1 %i.bz, label %bb.k, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i: ; preds = %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h3b9301694f7edaa8E.exit.i
  %i.ca = shl i64 %i.x, 3
  %.not153 = and i64 %i.ca, -16
  %i.cb = xor i64 %.not153, -16
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  tail call void @mi_free(ptr noundef nonnull %i.cc) #38, !noalias !39674
  br label %bb.k

.loopexit.i:                                      ; preds = %.loopexit.i.i, %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ax, ptr %i.cd, align 8, !alias.scope !39675, !noalias !39676
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !39676, !noalias !39675, !noundef !45
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cf, ptr %i.cg, align 8, !alias.scope !39675, !noalias !39676
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit"

common.resume81:                                  ; preds = %bb.r, %.body.i.i, %bb.aa, %bb.m, %bb.ac, %.body
  %common.resume81.op = phi { ptr, i32 } [ %i.el, %bb.aa ], [ %i.o, %bb.m ], [ %eh.lpad-body.i, %.body ], [ %i.ep, %bb.ac ], [ %i.dl, %.body.i.i ], [ %i.dl, %bb.r ]
  resume { ptr, i32 } %common.resume81.op

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.ch = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %bb.c ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ci, align 8, !alias.scope !39672, !noalias !39673
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ch, ptr %i.cj, align 8, !alias.scope !39672, !noalias !39673
  br label %common.resume81

"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit": ; preds = %bb.b, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i, %.loopexit.i
  %i.ck = load i64, ptr %0, align 8, !range !46, !noundef !45
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !45 ; 12 uses
  %i.cn = icmp ult i64 %i.cm, 88686269585142076
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = icmp samesign ult i64 %i.ck, %i.cm
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit"
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !45 ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 88686269585142076
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = sub nsw i64 %i.cm, %i.cq
  tail call fastcc void @"_ZN8indexmap5inner17Core$LT$K$C$V$GT$15reserve_entries17h4bf27c1e01d5462aE"(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.cs)
  br label %bb.o

bb.o:                                             ; preds = %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit", %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39684)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !39684, !noalias !39685, !nonnull !45, !noundef !45 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39686)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !39686, !noalias !39687, !noundef !45 ; 4 uses
  %i.cx = icmp ugt i64 %i.cm, %i.cw
  br i1 %i.cx, label %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge", label %bb.p

"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge": ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre108 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !39686, !noalias !39687
  br label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread"

bb.p:                                             ; preds = %bb.o
  %i.cy = sub nuw i64 %i.cw, %i.cm                ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !39686, !noalias !39687, !nonnull !45, !noundef !45 ; 3 uses
  %i.db = getelementptr inbounds nuw [104 x i8], ptr %i.da, i64 %i.cm ; 2 uses
  store i64 %i.cm, ptr %i.cv, align 8, !alias.scope !39686, !noalias !39687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39688), !noalias !39684
  %i.dc = icmp eq i64 %i.cw, %i.cm
  br i1 %i.dc, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread", label %.lr.ph150

"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"
  %i.dd = icmp eq i64 %i.df, %i.cy
  br i1 %i.dd, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread", label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.p, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i"
  %.sroa.0.0.i.i149 = phi i64 [ %i.df, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i" ], [ 0, %bb.p ] ; 2 uses
  %i.de = getelementptr inbounds nuw [104 x i8], ptr %i.db, i64 %.sroa.0.0.i.i149 ; 3 uses
  %i.df = add i64 %.sroa.0.0.i.i149, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39689), !noalias !39684
  %.val.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !39690, !noalias !39691
  %i.dg = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i", label %bb.q

bb.q:                                             ; preds = %.lr.ph150
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !39690, !noalias !39691, !nonnull !45, !noundef !45
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i) #38, !noalias !39692, !inline_history !39603
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i": ; preds = %bb.q, %.lr.ph150
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.di)
          to label %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i" unwind label %.body.i.i, !noalias !39691, !inline_history !39604

bb.r:                                             ; preds = %.lr.ph152
  %i.dj = add i64 %.sroa.0.1.i.i151, 1            ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.cy
  br i1 %i.dk, label %common.resume81, label %.lr.ph152

.body.i.i:                                        ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = icmp eq i64 %i.df, %i.cy
  br i1 %i.dm, label %common.resume81, label %.lr.ph152

.lr.ph152:                                        ; preds = %.body.i.i, %bb.r
  %.sroa.0.1.i.i151 = phi i64 [ %i.dj, %bb.r ], [ %i.df, %.body.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [104 x i8], ptr %i.db, i64 %.sroa.0.1.i.i151
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E"(ptr noalias noundef readonly align 8 dereferenceable(104) %i.dn) #44
          to label %bb.r unwind label %bb.s, !noalias !39691, !inline_history !39603

bb.s:                                             ; preds = %.lr.ph152
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !39693, !inline_history !39603
  unreachable

"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread": ; preds = %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i", %bb.p, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge"
  %i.dp = phi ptr [ %.pre108, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge" ], [ %i.da, %bb.p ], [ %i.da, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i" ] ; 2 uses
  %i.dq = phi i64 [ %i.cw, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge" ], [ %i.cm, %bb.p ], [ %i.cm, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i" ] ; 7 uses
  %.idx29 = mul nuw nsw i64 %i.dq, 104
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx29
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread"
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit"
  %.sroa.0.0.i3.i38 = phi i64 [ %i.eq, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit" ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [104 x i8], ptr %i.dp, i64 %.sroa.0.0.i3.i38 ; 3 uses
  %i.dw = getelementptr inbounds nuw [104 x i8], ptr %i.cu, i64 %.sroa.0.0.i3.i38 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39695)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !39695, !noalias !39696, !noundef !45
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store i64 %i.dy, ptr %i.dz, align 8, !alias.scope !39694, !noalias !39697
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$10clone_from17h3b1113510cb58582E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1475), !noalias !39698, !inline_history !39608
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !39699
  call void @llvm.experimental.noalias.scope.decl(metadata !39700)
  call void @llvm.experimental.noalias.scope.decl(metadata !39701)
  %i.ec = load i64, ptr %i.eb, align 8, !range !91, !alias.scope !39701, !noalias !39702, !noundef !45 ; 2 uses
  %i.ed = xor i64 %i.ec, -9223372036854775808
  %i.ee = icmp slt i64 %i.ec, 0
  %i.ef = select i1 %i.ee, i64 %i.ed, i64 5
  switch i64 %i.ef, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %bb.z
  ]

bb.t:                                             ; preds = %.lr.ph
  unreachable

bb.u:                                             ; preds = %.lr.ph
  store i64 -9223372036854775808, ptr %i.e, align 8, !alias.scope !39700, !noalias !39703
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.v:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.eb, i64 72, i1 false), !alias.scope !39704, !noalias !39705
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.w:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.eb, i64 72, i1 false), !alias.scope !39704, !noalias !39705
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.x:                                             ; preds = %.lr.ph
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402), !noalias !39705, !inline_history !39615
  store i64 -9223372036854775805, ptr %i.e, align 8, !alias.scope !39700, !noalias !39703
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.y:                                             ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !39706, !noalias !39707, !nonnull !45, !noundef !45
  %i.ek = load i64, ptr %i.eh, align 8, !alias.scope !39706, !noalias !39707, !noundef !45
  call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd8d25ff8c983adfeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ej, i64 noundef %i.ek), !noalias !39703, !inline_history !39615
  store i64 -9223372036854775804, ptr %i.e, align 8, !alias.scope !39700, !noalias !39703
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.z:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !39708), !noalias !39705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !39709
  store i64 0, ptr %i.b, align 8, !noalias !39709
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !39709
end_hunk_13
