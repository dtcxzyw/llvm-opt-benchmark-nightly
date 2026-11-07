Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h1ffb83e9093e8629E":bb.a
.noexc33:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h5b0dc2473512f3c5E"(ptr noalias noundef readonly align 8 dereferenceable(280) %i.ae)
          to label %common.resume unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.bm:                                            ; preds = %bb.bi
  %i.ic = add i64 %i.hx, %.sroa.0.2106            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.hy, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hd88cf5c09ac7a2acE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.hy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.id = load i64, ptr %i.m, align 8, !noundef !152
  %i.ie = icmp eq i64 %i.id, 0
  %i.if = load i64, ptr %i.o, align 8
  %i.ig = icmp eq i64 %i.if, 32
  %or.cond57 = select i1 %i.ie, i1 %i.ig, i1 false
  br i1 %or.cond57, label %.loopexit, label %bb.ba

bb.bn:                                            ; preds = %bb.bh
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h61e4f82127a312b9E"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #86
          to label %common.resume unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h21878b1a8f14bad3E"(ptr noalias noundef nonnull align 8 dereferenceable(344) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %1, i8 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !14479 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [272 x i8], align 8               ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [296 x i8], align 8               ; 7 uses
  %i.m = alloca [296 x i8], align 8               ; 9 uses
  %i.n = alloca [272 x i8], align 8               ; 6 uses
  %i.o = icmp eq i8 %2, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !152 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !152 ; 4 uses
  %.not21 = icmp eq i64 %i.s, %i.q
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.u = xor i64 %i.q, -1
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.s
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.u ; 3 uses
  %.not22121 = icmp eq ptr %i.w, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not22121 ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader124, label %bb.be

.preheader124:                                    ; preds = %bb.bf, %bb.c
  %i.x = phi i64 [ %i.s, %bb.c ], [ %.pre154, %bb.bf ]
  %i.y = phi i64 [ %i.q, %bb.c ], [ %.pre, %bb.bf ]
  %.sroa.0.2.ph = phi i64 [ 0, %bb.c ], [ %i.gi, %bb.bf ] ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq i64 %i.x, 32
  %or.cond119138 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond119138, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader124
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.ae = add i8 %2, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.514.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.715.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.413.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.bh

bb.d:                                             ; preds = %bb.b
  %i.al = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hd10db9d3b346db9fE"(ptr noalias noundef align 8 dereferenceable(8) %i.w) ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !range !171, !noundef !152
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.e, label %bb.f, !prof !154

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #82
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 272 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !152 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 264 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !152 ; 2 uses
  %i.at = sub i64 %i.aq, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 32
  br i1 %i.au, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit", label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.f
  %i.av = sub i64 32, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph142, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit"
  %.pre155232 = phi i64 [ %i.aq, %.lr.ph142 ], [ %i.cj, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit" ] ; 2 uses
  %.sroa.4.0141 = phi i64 [ %i.av, %.lr.ph142 ], [ %i.bc, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit" ]
  %i.bc = add i64 %.sroa.4.0141, -1               ; 2 uses
  %i.bd = load i64, ptr %0, align 8, !range !171, !alias.scope !14480, !noalias !14481, !noundef !152
  %i.be = load ptr, ptr %i.aw, align 8, !alias.scope !14480, !noalias !14481
  store i64 0, ptr %0, align 8, !alias.scope !14480, !noalias !14481
  %i.bf = trunc nuw i64 %i.bd to i1
  br i1 %i.bf, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.ay, align 8, !alias.scope !14482, !noalias !14481, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14483)
  %i.bh = load i64, ptr %i.ba, align 8, !alias.scope !14483, !noalias !14481, !noundef !152
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = tail call fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ax), !noalias !14484, !inline_history !14376 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i66, label %"._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge", label %bb.j

"._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge": ; preds = %bb.i
  %.pre155.pre = load i64, ptr %i.ap, align 8
  br label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit"

bb.j:                                             ; preds = %bb.i
  %i.bk = load i64, ptr %i.ba, align 8, !noalias !14485, !noundef !152
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.ba, align 8, !noalias !14485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14487), !noalias !14481
  %i.bm = load ptr, ptr %i.az, align 8, !alias.scope !14487, !noalias !14488, !nonnull !152, !align !156, !noundef !152
  %i.bn = load ptr, ptr %i.bb, align 8, !alias.scope !14487, !noalias !14488, !nonnull !152, !align !170, !noundef !152
  %i.bo = load i8, ptr %i.bn, align 1, !range !160, !noalias !14489, !noundef !152
  %i.bp = trunc nuw i8 %i.bo to i1
  call fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17hb60107827bc5d69cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.bj, ptr noalias noundef align 8 dereferenceable(8) %i.bm, i1 noundef zeroext %i.bp), !noalias !14490, !inline_history !14386
  %.sroa.087.0.copyload = load i32, ptr %i.e, align 8, !noalias !14486
  %.sroa.589.0.copyload = load ptr, ptr %.sroa.589.0..sroa_idx, align 8, !noalias !14486 ; 3 uses
  %i.bq = trunc nuw i32 %.sroa.087.0.copyload to i1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.790.0.copyload = load i64, ptr %.sroa.790.0..sroa_idx, align 8, !noalias !14486
  %.sroa.488.0.copyload = load i32, ptr %.sroa.488.0..sroa_idx, align 4, !noalias !14486
  store i32 %.sroa.488.0.copyload, ptr %i.bg, align 4, !noalias !14491
  %.sroa.48.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store ptr %.sroa.589.0.copyload, ptr %.sroa.48.0..8.val.sroa_idx.i.i, align 4, !noalias !14491
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i64 %.sroa.790.0.copyload, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 4, !noalias !14491
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i"

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.589.0.copyload) ]
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i": ; preds = %bb.l, %bb.k
  %.sroa.4.1.i9.i = phi ptr [ null, %bb.k ], [ %.sroa.589.0.copyload, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14486
  %.pre155.pre229.pre = load i64, ptr %i.ap, align 8
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i", %bb.g
  %.pre155.pre229 = phi i64 [ %.pre155.pre229.pre, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i" ], [ %.pre155232, %bb.g ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %.sroa.4.1.i9.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i" ], [ %i.be, %bb.g ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit", label %bb.m

bb.m:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.sroa.0.0.i, ptr %i.k, align 8, !noalias !14492
  %i.br = load i64, ptr %i.ar, align 8, !alias.scope !14492, !noundef !152 ; 5 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = icmp eq i64 %.pre155.pre229, 32         ; 2 uses
  %or.cond.i = select i1 %i.bs, i1 %i.bt, i1 false, !prof !187
  br i1 %or.cond.i, label %bb.o, label %bb.n, !prof !187

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp eq i64 %i.br, %.pre155.pre229
  br i1 %i.bu, label %bb.t, label %bb.s

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14492
  store ptr @1493, ptr %i.j, align 8, !noalias !14492
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.bv, align 8, !noalias !14492
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.bw, align 8, !noalias !14492
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8, !noalias !14492
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.by, align 8, !noalias !14492
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1494) #82
          to label %bb.q unwind label %bb.p, !noalias !14492

bb.p:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #86
          to label %common.resume unwind label %bb.r, !noalias !14492

bb.q:                                             ; preds = %bb.o
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !14492
  unreachable

common.resume:                                    ; preds = %bb.bs, %bb.bp, %bb.bc, %.body.i, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.fv, %bb.bc ], [ %i.bz, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %i.ha, %bb.bp ], [ %i.hh, %bb.bs ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.n
  br i1 %i.bt, label %bb.u, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit"

bb.t:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !alias.scope !14492
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit"

bb.u:                                             ; preds = %bb.s
  %.not.i33 = icmp eq i64 %i.br, 32
  br i1 %.not.i33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.cb = phi i64 [ %i.cf, %bb.w ], [ 0, %bb.u ]  ; 2 uses
  store i64 %i.cb, ptr %i.ap, align 8, !alias.scope !14492
  store i64 0, ptr %i.ar, align 8, !alias.scope !14492
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit"

bb.w:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.br
  %i.cd = shl i64 %i.br, 3
  %i.ce = sub i64 256, %i.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.ao, ptr nonnull align 8 %i.cc, i64 %i.ce, i1 false), !alias.scope !14492
  %.pre.i = load i64, ptr %i.ar, align 8, !alias.scope !14492
  %i.cf = sub i64 32, %.pre.i
  br label %bb.v

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit": ; preds = %bb.s, %bb.t, %bb.v
  %i.cg = phi i64 [ %i.cb, %bb.v ], [ %.pre155.pre229, %bb.s ], [ 0, %bb.t ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cg
  store ptr %.sroa.0.0.i, ptr %i.ch, align 8, !alias.scope !14492
  %i.ci = load i64, ptr %i.ap, align 8, !alias.scope !14492, !noundef !152
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.ap, align 8, !alias.scope !14492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ck = icmp eq i64 %i.bc, 0
  br i1 %i.ck, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit", label %bb.g

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit": ; preds = %bb.h, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit", %"._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge"
  %.pre155 = phi i64 [ %.pre155.pre, %"._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge" ], [ %.pre155232, %bb.h ], [ %i.cj, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit" ], [ %.pre155.pre229, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit" ]
  %.pre156 = load i64, ptr %i.ar, align 8
  br label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit"

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit": ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit", %bb.f
  %i.cl = phi i64 [ %.pre156, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit" ], [ %i.as, %bb.f ]
  %i.cm = phi i64 [ %.pre155, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit" ], [ %i.aq, %bb.f ]
  %i.cn = add i64 %i.cl, %i.at
  %i.co = sub i64 %i.cm, %i.cn
  %.pre157 = load i64, ptr %i.p, align 8
  %.pre158 = load i64, ptr %i.r, align 8
  br label %.preheader

.preheader:                                       ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit", %bb.b
  %i.cp = phi i64 [ %i.s, %bb.b ], [ %.pre158, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit" ]
  %i.cq = phi i64 [ %i.q, %bb.b ], [ %.pre157, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit" ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.co, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit" ] ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = icmp eq i64 %i.cp, 32
  %or.cond146 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond146, label %.loopexit, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 264 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph148, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hbdcc548bf05883b4E.exit24"
  %.sroa.0.0147 = phi i64 [ %.sroa.0.0.ph, %.lr.ph148 ], [ %i.fy, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hbdcc548bf05883b4E.exit24" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14493)
  %i.dd = load i64, ptr %0, align 8, !range !171, !alias.scope !14493, !noundef !152
  %i.de = trunc nuw i64 %i.dd to i1
  br i1 %i.de, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exitthread-pre-split", label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit": ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14494)
  %i.df = load ptr, ptr %i.cz, align 8, !alias.scope !14494, !noalias !14493, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  %i.dg = load i64, ptr %i.db, align 8, !alias.scope !14495, !noalias !14493, !noundef !152
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hc20857bf3ee61392E.exit", label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit"
  %i.di = tail call fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ct), !noalias !14496, !inline_history !14398 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hc20857bf3ee61392E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = load i64, ptr %i.db, align 8, !alias.scope !14494, !noalias !14497, !noundef !152
  %i.dk = add i64 %i.dj, -1
  store i64 %i.dk, ptr %i.db, align 8, !alias.scope !14494, !noalias !14497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14499), !noalias !14500
  %i.dl = load ptr, ptr %i.da, align 8, !alias.scope !14501, !noalias !14502, !nonnull !152, !align !156, !noundef !152
  %i.dm = load ptr, ptr %i.dc, align 8, !alias.scope !14501, !noalias !14502, !nonnull !152, !align !170, !noundef !152
  %i.dn = load i8, ptr %i.dm, align 1, !range !160, !noalias !14503, !noundef !152
  %i.do = trunc nuw i8 %i.dn to i1
  call fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17hb60107827bc5d69cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.di, ptr noalias noundef align 8 dereferenceable(8) %i.dl, i1 noundef zeroext %i.do), !noalias !14504, !inline_history !14408
  %.sroa.012.0.copyload.i = load i32, ptr %i.d, align 8, !noalias !14498
  %.sroa.514.0.copyload.i = load ptr, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !14498 ; 3 uses
  %i.dp = trunc nuw i32 %.sroa.012.0.copyload.i to i1
  br i1 %i.dp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.715.0.copyload.i = load i64, ptr %.sroa.715.0..sroa_idx.i, align 8, !noalias !14498
  %.sroa.413.0.copyload.i = load i32, ptr %.sroa.413.0..sroa_idx.i, align 4, !noalias !14498
  store i32 %.sroa.413.0.copyload.i, ptr %i.df, align 4, !noalias !14505
  %.sroa.48.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %.sroa.514.0.copyload.i, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i, align 4, !noalias !14505
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i64 %.sroa.715.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 4, !noalias !14505
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i.i"

bb.ab:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.copyload.i) ], !noalias !14493
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i.i": ; preds = %bb.ab, %bb.aa
  %.sroa.4.1.i.i.i = phi ptr [ null, %bb.aa ], [ %.sroa.514.0.copyload.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14498
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hc20857bf3ee61392E.exit"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hc20857bf3ee61392E.exit": ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit", %bb.y, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i.i"
  %.sroa.0.0.i185 = phi ptr [ %.sroa.4.1.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h84c32649075a509bE.exit.i.i" ], [ null, %bb.y ], [ null, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit" ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !14493
  store ptr %.sroa.0.0.i185, ptr %i.cu, align 8, !alias.scope !14493
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exitthread-pre-split": ; preds = %bb.x
  %.pr = load ptr, ptr %i.cu, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exitthread-pre-split", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hc20857bf3ee61392E.exit"
  %i.dq = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exitthread-pre-split" ], [ %.sroa.0.0.i185, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hc20857bf3ee61392E.exit" ]
  %.not23.not = icmp eq ptr %i.dq, null
  br i1 %.not23.not, label %.loopexit, label %bb.ac
end_hunk_0
begin_hunk_1_@"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h755d79ae274bbcf8E":bb.a
.noexc27:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h5b0dc2473512f3c5E"(ptr noalias noundef readonly align 8 dereferenceable(280) %i.ad)
          to label %common.resume unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.bm:                                            ; preds = %bb.bi
  %i.is = add i64 %i.in, %.sroa.0.2170            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.io, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hd88cf5c09ac7a2acE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.it = load i64, ptr %i.m, align 8, !noundef !152
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = load i64, ptr %i.o, align 8
  %i.iw = icmp eq i64 %i.iv, 32
  %or.cond98 = select i1 %i.iu, i1 %i.iw, i1 false
  br i1 %or.cond98, label %.loopexit108, label %bb.bf

bb.bn:                                            ; preds = %bb.bh
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h61e4f82127a312b9E"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #86
          to label %common.resume unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h786c6ccadf066618E"(ptr noalias noundef nonnull align 8 dereferenceable(344) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %1, i8 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !16118 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [272 x i8], align 8               ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [296 x i8], align 8               ; 7 uses
  %i.m = alloca [296 x i8], align 8               ; 9 uses
  %i.n = alloca [272 x i8], align 8               ; 6 uses
  %i.o = icmp eq i8 %2, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !152 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !152 ; 4 uses
  %.not21 = icmp eq i64 %i.s, %i.q
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.u = xor i64 %i.q, -1
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.s
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.u ; 3 uses
  %.not22121 = icmp eq ptr %i.w, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not22121 ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader124, label %bb.be

.preheader124:                                    ; preds = %bb.bf, %bb.c
  %i.x = phi i64 [ %i.s, %bb.c ], [ %.pre154, %bb.bf ]
  %i.y = phi i64 [ %i.q, %bb.c ], [ %.pre, %bb.bf ]
  %.sroa.0.2.ph = phi i64 [ 0, %bb.c ], [ %i.gi, %bb.bf ] ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq i64 %i.x, 32
  %or.cond119138 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond119138, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader124
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.ae = add i8 %2, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.514.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.715.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.413.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.bh

bb.d:                                             ; preds = %bb.b
  %i.al = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hd10db9d3b346db9fE"(ptr noalias noundef align 8 dereferenceable(8) %i.w) ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !range !171, !noundef !152
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.e, label %bb.f, !prof !154

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #82
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 272 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !152 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 264 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !152 ; 2 uses
  %i.at = sub i64 %i.aq, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 32
  br i1 %i.au, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit", label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.f
  %i.av = sub i64 32, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph142, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit"
  %.pre155232 = phi i64 [ %i.aq, %.lr.ph142 ], [ %i.cj, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit" ] ; 2 uses
  %.sroa.4.0141 = phi i64 [ %i.av, %.lr.ph142 ], [ %i.bc, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit" ]
  %i.bc = add i64 %.sroa.4.0141, -1               ; 2 uses
  %i.bd = load i64, ptr %0, align 8, !range !171, !alias.scope !16119, !noalias !16120, !noundef !152
  %i.be = load ptr, ptr %i.aw, align 8, !alias.scope !16119, !noalias !16120
  store i64 0, ptr %0, align 8, !alias.scope !16119, !noalias !16120
  %i.bf = trunc nuw i64 %i.bd to i1
  br i1 %i.bf, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.ay, align 8, !alias.scope !16121, !noalias !16120, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16122)
  %i.bh = load i64, ptr %i.ba, align 8, !alias.scope !16122, !noalias !16120, !noundef !152
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = tail call fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ax), !noalias !16123, !inline_history !16015 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i66, label %"._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge", label %bb.j

"._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge": ; preds = %bb.i
  %.pre155.pre = load i64, ptr %i.ap, align 8
  br label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit"

bb.j:                                             ; preds = %bb.i
  %i.bk = load i64, ptr %i.ba, align 8, !noalias !16124, !noundef !152
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.ba, align 8, !noalias !16124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16126), !noalias !16120
  %i.bm = load ptr, ptr %i.az, align 8, !alias.scope !16126, !noalias !16127, !nonnull !152, !align !156, !noundef !152
  %i.bn = load ptr, ptr %i.bb, align 8, !alias.scope !16126, !noalias !16127, !nonnull !152, !align !170, !noundef !152
  %i.bo = load i8, ptr %i.bn, align 1, !range !160, !noalias !16128, !noundef !152
  %i.bp = trunc nuw i8 %i.bo to i1
  call fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h184be7d634046403E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.bj, ptr noalias noundef align 8 dereferenceable(8) %i.bm, i1 noundef zeroext %i.bp), !noalias !16129, !inline_history !16025
  %.sroa.087.0.copyload = load i32, ptr %i.e, align 8, !noalias !16125
  %.sroa.589.0.copyload = load ptr, ptr %.sroa.589.0..sroa_idx, align 8, !noalias !16125 ; 3 uses
  %i.bq = trunc nuw i32 %.sroa.087.0.copyload to i1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.790.0.copyload = load i64, ptr %.sroa.790.0..sroa_idx, align 8, !noalias !16125
  %.sroa.488.0.copyload = load i32, ptr %.sroa.488.0..sroa_idx, align 4, !noalias !16125
  store i32 %.sroa.488.0.copyload, ptr %i.bg, align 4, !noalias !16130
  %.sroa.48.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store ptr %.sroa.589.0.copyload, ptr %.sroa.48.0..8.val.sroa_idx.i.i, align 4, !noalias !16130
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i64 %.sroa.790.0.copyload, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 4, !noalias !16130
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i"

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.589.0.copyload) ]
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i": ; preds = %bb.l, %bb.k
  %.sroa.4.1.i9.i = phi ptr [ null, %bb.k ], [ %.sroa.589.0.copyload, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16125
  %.pre155.pre229.pre = load i64, ptr %i.ap, align 8
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i", %bb.g
  %.pre155.pre229 = phi i64 [ %.pre155.pre229.pre, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i" ], [ %.pre155232, %bb.g ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %.sroa.4.1.i9.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i" ], [ %i.be, %bb.g ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit", label %bb.m

bb.m:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.sroa.0.0.i, ptr %i.k, align 8, !noalias !16131
  %i.br = load i64, ptr %i.ar, align 8, !alias.scope !16131, !noundef !152 ; 5 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = icmp eq i64 %.pre155.pre229, 32         ; 2 uses
  %or.cond.i = select i1 %i.bs, i1 %i.bt, i1 false, !prof !187
  br i1 %or.cond.i, label %bb.o, label %bb.n, !prof !187

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp eq i64 %i.br, %.pre155.pre229
  br i1 %i.bu, label %bb.t, label %bb.s

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16131
  store ptr @1493, ptr %i.j, align 8, !noalias !16131
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.bv, align 8, !noalias !16131
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.bw, align 8, !noalias !16131
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8, !noalias !16131
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.by, align 8, !noalias !16131
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1494) #82
          to label %bb.q unwind label %bb.p, !noalias !16131

bb.p:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #86
          to label %common.resume unwind label %bb.r, !noalias !16131

bb.q:                                             ; preds = %bb.o
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !16131
  unreachable

common.resume:                                    ; preds = %bb.bs, %bb.bp, %bb.bc, %.body.i, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.fv, %bb.bc ], [ %i.bz, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %i.ha, %bb.bp ], [ %i.hh, %bb.bs ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.n
  br i1 %i.bt, label %bb.u, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit"

bb.t:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !alias.scope !16131
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit"

bb.u:                                             ; preds = %bb.s
  %.not.i33 = icmp eq i64 %i.br, 32
  br i1 %.not.i33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.cb = phi i64 [ %i.cf, %bb.w ], [ 0, %bb.u ]  ; 2 uses
  store i64 %i.cb, ptr %i.ap, align 8, !alias.scope !16131
  store i64 0, ptr %i.ar, align 8, !alias.scope !16131
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit"

bb.w:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.br
  %i.cd = shl i64 %i.br, 3
  %i.ce = sub i64 256, %i.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.ao, ptr nonnull align 8 %i.cc, i64 %i.ce, i1 false), !alias.scope !16131
  %.pre.i = load i64, ptr %i.ar, align 8, !alias.scope !16131
  %i.cf = sub i64 32, %.pre.i
  br label %bb.v

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit": ; preds = %bb.s, %bb.t, %bb.v
  %i.cg = phi i64 [ %i.cb, %bb.v ], [ %.pre155.pre229, %bb.s ], [ 0, %bb.t ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cg
  store ptr %.sroa.0.0.i, ptr %i.ch, align 8, !alias.scope !16131
  %i.ci = load i64, ptr %i.ap, align 8, !alias.scope !16131, !noundef !152
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.ap, align 8, !alias.scope !16131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ck = icmp eq i64 %i.bc, 0
  br i1 %i.ck, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit", label %bb.g

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit": ; preds = %bb.h, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit", %"._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge"
  %.pre155 = phi i64 [ %.pre155.pre, %"._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge" ], [ %.pre155232, %bb.h ], [ %i.cj, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit" ], [ %.pre155.pre229, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit" ]
  %.pre156 = load i64, ptr %i.ar, align 8
  br label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit"

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit": ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit", %bb.f
  %i.cl = phi i64 [ %.pre156, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit" ], [ %i.as, %bb.f ]
  %i.cm = phi i64 [ %.pre155, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit" ], [ %i.aq, %bb.f ]
  %i.cn = add i64 %i.cl, %i.at
  %i.co = sub i64 %i.cm, %i.cn
  %.pre157 = load i64, ptr %i.p, align 8
  %.pre158 = load i64, ptr %i.r, align 8
  br label %.preheader

.preheader:                                       ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit", %bb.b
  %i.cp = phi i64 [ %i.s, %bb.b ], [ %.pre158, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit" ]
  %i.cq = phi i64 [ %i.q, %bb.b ], [ %.pre157, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit" ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.co, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit" ] ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = icmp eq i64 %i.cp, 32
  %or.cond146 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond146, label %.loopexit, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 264 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph148, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hbdcc548bf05883b4E.exit24"
  %.sroa.0.0147 = phi i64 [ %.sroa.0.0.ph, %.lr.ph148 ], [ %i.fy, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hbdcc548bf05883b4E.exit24" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16132)
  %i.dd = load i64, ptr %0, align 8, !range !171, !alias.scope !16132, !noundef !152
  %i.de = trunc nuw i64 %i.dd to i1
  br i1 %i.de, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exitthread-pre-split", label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit": ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16133)
  %i.df = load ptr, ptr %i.cz, align 8, !alias.scope !16133, !noalias !16132, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  %i.dg = load i64, ptr %i.db, align 8, !alias.scope !16134, !noalias !16132, !noundef !152
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0350112bad443ad3E.exit", label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit"
  %i.di = tail call fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ct), !noalias !16135, !inline_history !16037 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0350112bad443ad3E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = load i64, ptr %i.db, align 8, !alias.scope !16133, !noalias !16136, !noundef !152
  %i.dk = add i64 %i.dj, -1
  store i64 %i.dk, ptr %i.db, align 8, !alias.scope !16133, !noalias !16136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16138), !noalias !16139
  %i.dl = load ptr, ptr %i.da, align 8, !alias.scope !16140, !noalias !16141, !nonnull !152, !align !156, !noundef !152
  %i.dm = load ptr, ptr %i.dc, align 8, !alias.scope !16140, !noalias !16141, !nonnull !152, !align !170, !noundef !152
  %i.dn = load i8, ptr %i.dm, align 1, !range !160, !noalias !16142, !noundef !152
  %i.do = trunc nuw i8 %i.dn to i1
  call fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h184be7d634046403E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.di, ptr noalias noundef align 8 dereferenceable(8) %i.dl, i1 noundef zeroext %i.do), !noalias !16143, !inline_history !16047
  %.sroa.012.0.copyload.i = load i32, ptr %i.d, align 8, !noalias !16137
  %.sroa.514.0.copyload.i = load ptr, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !16137 ; 3 uses
  %i.dp = trunc nuw i32 %.sroa.012.0.copyload.i to i1
  br i1 %i.dp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.715.0.copyload.i = load i64, ptr %.sroa.715.0..sroa_idx.i, align 8, !noalias !16137
  %.sroa.413.0.copyload.i = load i32, ptr %.sroa.413.0..sroa_idx.i, align 4, !noalias !16137
  store i32 %.sroa.413.0.copyload.i, ptr %i.df, align 4, !noalias !16144
  %.sroa.48.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %.sroa.514.0.copyload.i, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i, align 4, !noalias !16144
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i64 %.sroa.715.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 4, !noalias !16144
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i.i"

bb.ab:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.copyload.i) ], !noalias !16132
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i.i": ; preds = %bb.ab, %bb.aa
  %.sroa.4.1.i.i.i = phi ptr [ null, %bb.aa ], [ %.sroa.514.0.copyload.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16137
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0350112bad443ad3E.exit"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0350112bad443ad3E.exit": ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit", %bb.y, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i.i"
  %.sroa.0.0.i185 = phi ptr [ %.sroa.4.1.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h430b22e4289f920bE.exit.i.i" ], [ null, %bb.y ], [ null, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hfbd9b3543c053dd6E.exit" ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !16132
  store ptr %.sroa.0.0.i185, ptr %i.cu, align 8, !alias.scope !16132
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exitthread-pre-split": ; preds = %bb.x
  %.pr = load ptr, ptr %i.cu, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exitthread-pre-split", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0350112bad443ad3E.exit"
  %i.dq = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exitthread-pre-split" ], [ %.sroa.0.0.i185, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0350112bad443ad3E.exit" ]
  %.not23.not = icmp eq ptr %i.dq, null
  br i1 %.not23.not, label %.loopexit, label %bb.ac
end_hunk_1
begin_hunk_2_@"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h184be7d634046403E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !37156
  store i32 3, ptr %i.q, align 4, !noalias !37156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !37156
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 312 ; 12 uses
  store i64 %i.df, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !37157
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 320 ; 5 uses
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !37157
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 328 ; 5 uses
  store ptr %i.bb, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !37157
  call void @llvm.experimental.noalias.scope.decl(metadata !37158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37159
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !37160), !noalias !37161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.o, i8 0, i64 17, i1 false), !noalias !37162
  call void @llvm.experimental.noalias.scope.decl(metadata !37163)
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 336 ; 4 uses
  store ptr %i.q, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !37164, !noalias !37154
  store i64 0, ptr %i.n, align 8, !alias.scope !37165, !noalias !37154
  call void @llvm.experimental.noalias.scope.decl(metadata !37166)
  call void @llvm.experimental.noalias.scope.decl(metadata !37167)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37168), !noalias !37154
  %i.dk = icmp eq i64 %.sroa.4133.sroa.5.0.copyload, %.sroa.4133.sroa.4.0.copyload
  br i1 %i.dk, label %.thread536, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.dg)
          to label %.noexc523 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36924 ; 2 uses

.noexc523:                                        ; preds = %bb.t
  %.not.i.i.i509 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i509, label %.thread536, label %bb.u

bb.u:                                             ; preds = %.noexc523
  %i.dm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37169, !noalias !37170, !noundef !152
  %i.dn = add i64 %i.dm, -1
  store i64 %i.dn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37169, !noalias !37170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37171
  call void @llvm.experimental.noalias.scope.decl(metadata !37172), !noalias !37173
  %i.do = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !37174, !noalias !37175, !nonnull !152, !align !156, !noundef !152
  %i.dp = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !37174, !noalias !37175, !nonnull !152, !align !170, !noundef !152
  %i.dq = load i8, ptr %i.dp, align 1, !range !160, !noalias !37176, !noundef !152
  %i.dr = trunc nuw i8 %i.dq to i1
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h184be7d634046403E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.dl, ptr noalias noundef align 8 dereferenceable(8) %i.do, i1 noundef zeroext %i.dr)
          to label %.noexc524 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36924

.noexc524:                                        ; preds = %bb.u
  %.sroa.011.0.copyload.i.i510 = load i32, ptr %i.b, align 8, !noalias !37171
  %.sroa.513.0..sroa_idx.i.i511 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.513.0.copyload.i.i512 = load ptr, ptr %.sroa.513.0..sroa_idx.i.i511, align 8, !noalias !37171 ; 3 uses
  %i.ds = trunc nuw i32 %.sroa.011.0.copyload.i.i510 to i1
  br i1 %i.ds, label %.thread539, label %bb.w

.thread539:                                       ; preds = %.noexc524
  %.sroa.714.0..sroa_idx.i.i517 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.714.0.copyload.i.i518 = load i64, ptr %.sroa.714.0..sroa_idx.i.i517, align 8, !noalias !37171
  %.sroa.412.0..sroa_idx.i.i519 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.412.0.copyload.i.i520 = load i32, ptr %.sroa.412.0..sroa_idx.i.i519, align 4, !noalias !37171
  store i32 %.sroa.412.0.copyload.i.i520, ptr %i.q, align 4, !noalias !37177
  %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i521 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %.sroa.513.0.copyload.i.i512, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i521, align 4, !noalias !37177
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i522 = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i64 %.sroa.714.0.copyload.i.i518, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i522, align 4, !noalias !37177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37171
  store i64 1, ptr %i.n, align 8, !alias.scope !37166, !noalias !37154
  store ptr null, ptr %i.dj, align 8, !alias.scope !37166, !noalias !37154
  br label %bb.v

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i", %bb.ay, %bb.y
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.y ], [ %i.fx, %bb.ay ], [ %i.fx, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i" ], [ %lpad.loopexit.split-lp623, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr722drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..traverse$LT$nickel_lang_core..transform..transform_no_free_vars..$u7b$$u7b$closure$u7d$$u7d$$C$nickel_lang_core..typ..UnboundTypeVariableError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$nickel_lang_core..typ..UnboundTypeVariableError$GT$$GT$$GT$$GT$17h45da14696e6ee22cE"(ptr noalias noundef align 8 dereferenceable(344) %i.n) #86
          to label %.body.i.i.i unwind label %bb.bs, !noalias !37154, !inline_history !36939

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %bb.ar, %bb.ae, %bb.ad, %bb.bo, %bb.bn, %bb.br, %bb.an, %bb.aj, %bb.u, %bb.t, %bb.ak
  %lpad.loopexit.split-lp623 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.thread536:                                       ; preds = %.noexc523, %bb.s
  store i64 1, ptr %i.n, align 8, !alias.scope !37166, !noalias !37154
  store ptr null, ptr %i.dj, align 8, !alias.scope !37166, !noalias !37154
  br label %bb.v

bb.v:                                             ; preds = %.thread539, %.thread536, %bb.aa
  %.sroa.513.0..sroa_idx.i.i494 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.714.0..sroa_idx.i.i500 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.412.0..sroa_idx.i.i502 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.714.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.ab

bb.w:                                             ; preds = %.noexc524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i.i512) ], !noalias !37154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37171
  store i64 1, ptr %i.n, align 8, !alias.scope !37166, !noalias !37154
  store ptr %.sroa.513.0.copyload.i.i512, ptr %i.dj, align 8, !alias.scope !37166, !noalias !37154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !37154
  store i64 1, ptr %i.m, align 8, !noalias !37154
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.dt, align 8, !noalias !37154
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %i.du, align 8, !noalias !37154
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !37162
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !37178, !inline_history !36942
  %i.dv = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !37178, !inline_history !36942 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.x, label %bb.aa, !prof !162

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #82
          to label %.noexc5.i unwind label %bb.y, !noalias !37162, !inline_history !36942

.noexc5.i:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h5b0dc2473512f3c5E"(ptr noalias noundef readonly align 8 dereferenceable(280) %i.du)
          to label %.body.i.i.i.i unwind label %bb.z, !noalias !37162, !inline_history !36942

bb.z:                                             ; preds = %bb.y
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !37154, !inline_history !36939
  unreachable

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dv, ptr noundef nonnull align 8 dereferenceable(296) %i.m, i64 296, i1 false), !noalias !37154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !37154
  store ptr %i.dv, ptr %i.o, align 8, !alias.scope !37160, !noalias !37159
  br label %bb.v

bb.ab:                                            ; preds = %.backedge, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !37179)
  call void @llvm.experimental.noalias.scope.decl(metadata !37180)
  %i.dz = load i64, ptr %i.n, align 8, !range !171, !alias.scope !37179, !noalias !37154, !noundef !152
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508thread-pre-split", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !37181), !noalias !37154
  %i.eb = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !37182, !noalias !37154, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  %i.ec = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37183, !noalias !37154, !noundef !152
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i498", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.dg)
          to label %.noexc506 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36924 ; 2 uses

.noexc506:                                        ; preds = %bb.ad
  %.not.i.i.i492 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i492, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i498", label %bb.ae

bb.ae:                                            ; preds = %.noexc506
  %i.ef = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37184, !noalias !37185, !noundef !152
  %i.eg = add i64 %i.ef, -1
  store i64 %i.eg, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37184, !noalias !37185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37186
  call void @llvm.experimental.noalias.scope.decl(metadata !37187), !noalias !37188
  %i.eh = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !37189, !noalias !37190, !nonnull !152, !align !156, !noundef !152
  %i.ei = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !37189, !noalias !37190, !nonnull !152, !align !170, !noundef !152
  %i.ej = load i8, ptr %i.ei, align 1, !range !160, !noalias !37191, !noundef !152
  %i.ek = trunc nuw i8 %i.ej to i1
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h184be7d634046403E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.ee, ptr noalias noundef align 8 dereferenceable(8) %i.eh, i1 noundef zeroext %i.ek)
          to label %.noexc507 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36924

.noexc507:                                        ; preds = %bb.ae
  %.sroa.011.0.copyload.i.i493 = load i32, ptr %i.c, align 8, !noalias !37186
  %.sroa.513.0.copyload.i.i495 = load ptr, ptr %.sroa.513.0..sroa_idx.i.i494, align 8, !noalias !37186 ; 3 uses
  %i.el = trunc nuw i32 %.sroa.011.0.copyload.i.i493 to i1
  br i1 %i.el, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc507
  %.sroa.714.0.copyload.i.i501 = load i64, ptr %.sroa.714.0..sroa_idx.i.i500, align 8, !noalias !37186
  %.sroa.412.0.copyload.i.i503 = load i32, ptr %.sroa.412.0..sroa_idx.i.i502, align 4, !noalias !37186
  store i32 %.sroa.412.0.copyload.i.i503, ptr %i.eb, align 4, !noalias !37192
  %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i504 = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store ptr %.sroa.513.0.copyload.i.i495, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i504, align 4, !noalias !37192
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i505 = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i64 %.sroa.714.0.copyload.i.i501, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i505, align 4, !noalias !37192
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i496"

bb.ag:                                            ; preds = %.noexc507
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i.i495) ], !noalias !37154
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i496"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i496": ; preds = %bb.ag, %bb.af
  %.sroa.4.1.i.i.i.i.i497 = phi ptr [ null, %bb.af ], [ %.sroa.513.0.copyload.i.i495, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37186
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i498"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i498": ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i496", %.noexc506, %bb.ac
  %.sroa.0.0.i23.i.i499 = phi ptr [ null, %.noexc506 ], [ %.sroa.4.1.i.i.i.i.i497, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i496" ], [ null, %bb.ac ] ; 2 uses
  store i64 1, ptr %i.n, align 8, !alias.scope !37179, !noalias !37154
  store ptr %.sroa.0.0.i23.i.i499, ptr %i.dj, align 8, !alias.scope !37179, !noalias !37154
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508thread-pre-split": ; preds = %bb.ab
  %.pr = load ptr, ptr %i.dj, align 8, !noalias !37193
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508thread-pre-split", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i498"
  %i.em = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508thread-pre-split" ], [ %.sroa.0.0.i23.i.i499, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i498" ]
  %.not7.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not7.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508"
  %i.en = load ptr, ptr %i.o, align 8, !alias.scope !37160, !noalias !37159, !noundef !152
  %.not8.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not8.i.i.i.i, label %bb.ak, label %bb.aj, !prof !154

bb.ai:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit508"
  invoke fastcc void @"_ZN4core3ptr722drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..traverse$LT$nickel_lang_core..transform..transform_no_free_vars..$u7b$$u7b$closure$u7d$$u7d$$C$nickel_lang_core..typ..UnboundTypeVariableError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$nickel_lang_core..typ..UnboundTypeVariableError$GT$$GT$$GT$$GT$17h45da14696e6ee22cE"(ptr noalias noundef align 8 dereferenceable(344) %i.n)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5ca217d3b406b543E.exit.i" unwind label %bb.bt, !noalias !37159, !inline_history !36939

bb.aj:                                            ; preds = %bb.ah
  %i.eo = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hd10db9d3b346db9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37194, !inline_history !36939 ; 4 uses

bb.ak:                                            ; preds = %bb.ah
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #82
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37154, !inline_history !36939

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.ep = load i64, ptr %i.eo, align 8, !range !171, !noalias !37154, !noundef !152
  %i.eq = trunc nuw i64 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
  br i1 %i.eq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.es = load i8, ptr %i.di, align 8, !alias.scope !37160, !noalias !37159, !noundef !152
  %i.et = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h786c6ccadf066618E"(ptr noalias noundef align 8 dereferenceable(344) %i.n, ptr noalias noundef align 8 dereferenceable(272) %i.er, i8 noundef %i.es)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37154, !inline_history !36939

bb.ao:                                            ; preds = %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 272 ; 5 uses
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !37154, !noundef !152 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 264 ; 6 uses
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !37154, !noundef !152 ; 2 uses
  %i.ey = sub i64 %i.ev, %i.ex                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37195)
  %i.ez = icmp eq i64 %i.ey, 32
  br i1 %i.ez, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao
  %i.fa = sub i64 32, %i.ey
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i", %.lr.ph.i
  %.pre.pre45.i = phi i64 [ %i.ev, %.lr.ph.i ], [ %i.gv, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i" ]
  %.sroa.425.035.i = phi i64 [ %i.fa, %.lr.ph.i ], [ %i.fb, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i" ]
  %i.fb = add i64 %.sroa.425.035.i, -1            ; 2 uses
  %i.fc = load i64, ptr %i.n, align 8, !range !171, !alias.scope !37196, !noalias !37197, !noundef !152
  %i.fd = load ptr, ptr %i.dj, align 8, !alias.scope !37196, !noalias !37197
  store i64 0, ptr %i.n, align 8, !alias.scope !37196, !noalias !37197
  %i.fe = trunc nuw i64 %i.fc to i1
  br i1 %i.fe, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !37198)
  %i.ff = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !37199, !noalias !37162, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  %i.fg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37200, !noalias !37162, !noundef !152
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i_crit_edge.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.dg)
          to label %.noexc490 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36981 ; 2 uses

.noexc490:                                        ; preds = %bb.ar
  %.not.i.i488 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i488, label %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i_crit_edge.i", label %bb.as

bb.as:                                            ; preds = %.noexc490
  %i.fj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37198, !noalias !37201, !noundef !152
  %i.fk = add i64 %i.fj, -1
  store i64 %i.fk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37198, !noalias !37201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37202
  call void @llvm.experimental.noalias.scope.decl(metadata !37203), !noalias !37204
  %i.fl = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !37205, !noalias !37206, !nonnull !152, !align !156, !noundef !152
  %i.fm = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !37205, !noalias !37206, !nonnull !152, !align !170, !noundef !152
  %i.fn = load i8, ptr %i.fm, align 1, !range !160, !noalias !37207, !noundef !152
  %i.fo = trunc nuw i8 %i.fn to i1
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h184be7d634046403E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.fi, ptr noalias noundef align 8 dereferenceable(8) %i.fl, i1 noundef zeroext %i.fo)
          to label %.noexc491 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36981

.noexc491:                                        ; preds = %bb.as
  %.sroa.011.0.copyload.i489 = load i32, ptr %i.d, align 8, !noalias !37202
  %.sroa.513.0.copyload.i = load ptr, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !37202 ; 3 uses
  %i.fp = trunc nuw i32 %.sroa.011.0.copyload.i489 to i1
  br i1 %i.fp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc491
  %.sroa.714.0.copyload.i = load i64, ptr %.sroa.714.0..sroa_idx.i, align 8, !noalias !37202
  %.sroa.412.0.copyload.i = load i32, ptr %.sroa.412.0..sroa_idx.i, align 4, !noalias !37202
  store i32 %.sroa.412.0.copyload.i, ptr %i.ff, align 4, !noalias !37208
  %.sroa.48.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store ptr %.sroa.513.0.copyload.i, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i.i, align 4, !noalias !37208
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i64 %.sroa.714.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i, align 4, !noalias !37208
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i"

bb.au:                                            ; preds = %.noexc491
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i) ], !noalias !37162
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i": ; preds = %bb.au, %bb.at
  %.sroa.4.1.i.i.i.i = phi ptr [ null, %bb.at ], [ %.sroa.513.0.copyload.i, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37202
  br label %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i_crit_edge.i"

"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i_crit_edge.i": ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i", %.noexc490, %bb.aq
  %.sroa.0.0.i23.i = phi ptr [ null, %.noexc490 ], [ %.sroa.4.1.i.i.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i" ], [ null, %bb.aq ]
  %.pre.pre.pre.i = load i64, ptr %i.eu, align 8, !noalias !37154
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i.i": ; preds = %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i_crit_edge.i", %bb.ap
  %.pre.pre.i = phi i64 [ %.pre.pre.pre.i, %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i_crit_edge.i" ], [ %.pre.pre45.i, %bb.ap ] ; 4 uses
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i23.i, %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i_crit_edge.i" ], [ %i.fd, %bb.ap ] ; 6 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %.pre40.pre42.i = load i64, ptr %i.ew, align 8, !noalias !37154 ; 6 uses
  br i1 %.not.i.i, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.i", label %bb.av

bb.av:                                            ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !37209), !noalias !37193
  %i.fq = icmp eq i64 %.pre40.pre42.i, 0
  %i.fr = icmp eq i64 %.pre.pre.i, 32             ; 2 uses
  %or.cond.i.i.i = select i1 %i.fq, i1 %i.fr, i1 false, !prof !187
  br i1 %or.cond.i.i.i, label %bb.ax, label %bb.aw, !prof !187

bb.aw:                                            ; preds = %bb.av
  %i.fs = icmp eq i64 %.pre40.pre42.i, %.pre.pre.i
  br i1 %i.fs, label %bb.bh, label %bb.bg

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37210
  store ptr @1493, ptr %i.l, align 8, !noalias !37210
  %i.ft = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.ft, align 8, !noalias !37210
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.fu, align 8, !noalias !37210
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fv, align 8, !noalias !37210
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.fw, align 8, !noalias !37210
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1494) #82
          to label %bb.be unwind label %bb.ay, !noalias !37211, !inline_history !36998

bb.ay:                                            ; preds = %bb.ax
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.fz = and i64 %i.fy, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fz, i64 2)
  switch i64 %..i.i.i, label %.body.i.i.i.i [
    i64 2, label %bb.az
    i64 0, label %bb.ba
  ], !prof !157

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.noexc6.i unwind label %bb.bf, !noalias !37162, !inline_history !36999

.noexc6.i:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37212
  store ptr %.sroa.0.0.i.i.i, ptr %i.k, align 8, !noalias !37212
  %i.ga = load i64, ptr %.sroa.0.0.i.i.i, align 8, !noalias !37213, !noundef !152 ; 3 uses
  %i.gb = and i64 %i.ga, 72057594037927935
  %i.gc = add nsw i64 %i.gb, -1                   ; 3 uses
  %i.gd = and i64 %i.ga, 1080863910568919040
  %i.ge = icmp ult i64 %i.ga, 864691128455135232
  call void @llvm.assume(i1 %i.ge), !noalias !37214
  %i.gf = or i64 %i.gc, %i.gd
  store i64 %i.gf, ptr %.sroa.0.0.i.i.i, align 8, !noalias !37213
  %i.gg = icmp ugt i64 %i.gc, 72057594037927935
  br i1 %i.gg, label %bb.bc, label %bb.bb, !prof !154

bb.bb:                                            ; preds = %bb.ba
  %i.gh = icmp eq i64 %i.gc, 0
  br i1 %i.gh, label %bb.bd, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i"

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !37213
  store ptr @2796, ptr %i.j, align 8, !noalias !37213
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.gi, align 8, !noalias !37213
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.gj, align 8, !noalias !37213
  %i.gk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gk, align 8, !noalias !37213
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.gl, align 8, !noalias !37213
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc7.i unwind label %bb.bf, !noalias !37162, !inline_history !36999

.noexc7.i:                                        ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bb
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #84
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i" unwind label %bb.bf, !noalias !37162, !inline_history !36999

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i": ; preds = %bb.bd, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37212
  br label %.body.i.i.i.i

bb.be:                                            ; preds = %bb.ax
  unreachable

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.az
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !37211, !inline_history !36998
  unreachable

bb.bg:                                            ; preds = %bb.aw
  br i1 %i.fr, label %bb.bi, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i"

bb.bh:                                            ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i8 0, i64 16, i1 false), !alias.scope !37215, !noalias !37154
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i"

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i.i = icmp eq i64 %.pre40.pre42.i, 32
  br i1 %.not.i.i.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.gn = phi i64 [ %i.gr, %bb.bk ], [ 0, %bb.bi ] ; 2 uses
  store i64 %i.gn, ptr %i.eu, align 8, !alias.scope !37215, !noalias !37154
  store i64 0, ptr %i.ew, align 8, !alias.scope !37215, !noalias !37154
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i"

bb.bk:                                            ; preds = %bb.bi
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.pre40.pre42.i
  %i.gp = shl i64 %.pre40.pre42.i, 3
  %i.gq = sub i64 256, %i.gp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.er, ptr nonnull align 8 %i.go, i64 %i.gq, i1 false), !alias.scope !37215, !noalias !37154
  %.pre.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !37215, !noalias !37154
  %i.gr = sub i64 32, %.pre.i.i.i
  br label %bb.bj

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i": ; preds = %bb.bj, %bb.bh, %bb.bg
  %i.gs = phi i64 [ %i.gn, %bb.bj ], [ %.pre.pre.i, %bb.bg ], [ 0, %bb.bh ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gs
  store ptr %.sroa.0.0.i.i.i, ptr %i.gt, align 8, !alias.scope !37215, !noalias !37154
  %i.gu = load i64, ptr %i.eu, align 8, !alias.scope !37215, !noalias !37154, !noundef !152
  %i.gv = add i64 %i.gu, 1                        ; 3 uses
  store i64 %i.gv, ptr %i.eu, align 8, !alias.scope !37215, !noalias !37154
  %i.gw = icmp eq i64 %i.fb, 0
  br i1 %i.gw, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge.i", label %bb.ap

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge.i": ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i"
  %.pre40.pre.i = load i64, ptr %i.ew, align 8, !noalias !37154
  br label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.i"

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge.i", %bb.ao
  %i.gx = phi i64 [ %i.ex, %bb.ao ], [ %.pre40.pre.i, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge.i" ], [ %.pre40.pre42.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i.i" ]
  %i.gy = phi i64 [ %i.ev, %bb.ao ], [ %i.gv, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.loopexit_crit_edge.i" ], [ %.pre.pre.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8f8571fb722d7e53E.exit.i.i" ]
  %i.gz = add i64 %i.gx, %i.ey
  %i.ha = sub i64 %i.gy, %i.gz
  br label %bb.bl

bb.bl:                                            ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.i", %bb.an
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ha, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hf9491d079520e389E.exit.i" ], [ %i.et, %bb.an ]
  %i.hb = load i64, ptr %i.dh, align 8, !alias.scope !37160, !noalias !37159, !noundef !152
  %i.hc = add i64 %i.hb, %.sroa.03.0.i.i.i.i
  store i64 %i.hc, ptr %i.dh, align 8, !alias.scope !37160, !noalias !37159
  call void @llvm.experimental.noalias.scope.decl(metadata !37216)
  call void @llvm.experimental.noalias.scope.decl(metadata !37217)
  %i.hd = load i64, ptr %i.n, align 8, !range !171, !alias.scope !37216, !noalias !37154, !noundef !152
  %i.he = trunc nuw i64 %i.hd to i1
  br i1 %i.he, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exitthread-pre-split", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !37218), !noalias !37154
  %i.hf = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !37219, !noalias !37154, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  %i.hg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37220, !noalias !37154, !noundef !152
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hi = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.dg)
          to label %.noexc486 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36924 ; 2 uses

.noexc486:                                        ; preds = %bb.bn
  %.not.i.i.i485 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i485, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i", label %bb.bo

bb.bo:                                            ; preds = %.noexc486
  %i.hj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37221, !noalias !37222, !noundef !152
  %i.hk = add i64 %i.hj, -1
  store i64 %i.hk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37221, !noalias !37222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37223
  call void @llvm.experimental.noalias.scope.decl(metadata !37224), !noalias !37225
  %i.hl = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !37226, !noalias !37227, !nonnull !152, !align !156, !noundef !152
  %i.hm = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !37226, !noalias !37227, !nonnull !152, !align !170, !noundef !152
  %i.hn = load i8, ptr %i.hm, align 1, !range !160, !noalias !37228, !noundef !152
  %i.ho = trunc nuw i8 %i.hn to i1
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h184be7d634046403E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.hi, ptr noalias noundef align 8 dereferenceable(8) %i.hl, i1 noundef zeroext %i.ho)
          to label %.noexc487 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36924

.noexc487:                                        ; preds = %bb.bo
  %.sroa.011.0.copyload.i.i = load i32, ptr %i.e, align 8, !noalias !37223
  %.sroa.513.0.copyload.i.i = load ptr, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !37223 ; 3 uses
  %i.hp = trunc nuw i32 %.sroa.011.0.copyload.i.i to i1
  br i1 %i.hp, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.noexc487
  %.sroa.714.0.copyload.i.i = load i64, ptr %.sroa.714.0..sroa_idx.i.i, align 8, !noalias !37223
  %.sroa.412.0.copyload.i.i = load i32, ptr %.sroa.412.0..sroa_idx.i.i, align 4, !noalias !37223
  store i32 %.sroa.412.0.copyload.i.i, ptr %i.hf, align 4, !noalias !37229
  %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store ptr %.sroa.513.0.copyload.i.i, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i, align 4, !noalias !37229
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i64 %.sroa.714.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i, align 4, !noalias !37229
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i"

bb.bq:                                            ; preds = %.noexc487
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i.i) ], !noalias !37154
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i": ; preds = %bb.bq, %bb.bp
  %.sroa.4.1.i.i.i.i.i = phi ptr [ null, %bb.bp ], [ %.sroa.513.0.copyload.i.i, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37223
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i": ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i", %.noexc486, %bb.bm
  %.sroa.0.0.i23.i.i = phi ptr [ null, %.noexc486 ], [ %.sroa.4.1.i.i.i.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he6b94ad57b1ea276E.exit.i.i.i" ], [ null, %bb.bm ] ; 2 uses
  store i64 1, ptr %i.n, align 8, !alias.scope !37216, !noalias !37154
  store ptr %.sroa.0.0.i23.i.i, ptr %i.dj, align 8, !alias.scope !37216, !noalias !37154
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exitthread-pre-split": ; preds = %bb.bl
  %.pr542 = load ptr, ptr %i.dj, align 8, !noalias !37193
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exitthread-pre-split", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i"
  %i.hq = phi ptr [ %.pr542, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exitthread-pre-split" ], [ %.sroa.0.0.i23.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9653430c7d2dd7c4E.exit.i" ]
  %.not9.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.br

bb.br:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17h3a19d98a10368d10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37194, !inline_history !36939

.backedge:                                        ; preds = %bb.br, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3b40d28dd3d731a1E.exit"
  br label %bb.ab

bb.bs:                                            ; preds = %.body.i.i.i.i
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !37154, !inline_history !36939
  unreachable

bb.bt:                                            ; preds = %bb.ai
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bt, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.hs, %bb.bt ], [ %.pn.i.i.i.i, %.body.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37230), !noalias !37161
  call void @llvm.experimental.noalias.scope.decl(metadata !37231), !noalias !37161
  %i.ht = load ptr, ptr %i.o, align 8, !alias.scope !37232, !noalias !37159, !noundef !152 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %.body, label %bb.bu

bb.bu:                                            ; preds = %.body.i.i.i
  %i.hv = load i64, ptr %i.ht, align 8, !noalias !37233, !noundef !152
  %i.hw = add i64 %i.hv, -1                       ; 2 uses
  store i64 %i.hw, ptr %i.ht, align 8, !noalias !37233
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.bv, label %.body

bb.bv:                                            ; preds = %bb.bu
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.bw, !noalias !37159, !inline_history !37038

bb.bw:                                            ; preds = %bb.bv
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !37159, !inline_history !37039
  unreachable

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5ca217d3b406b543E.exit.i": ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !37154
  %.sroa.011.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !37234 ; 3 uses
  %.sroa.413.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.hz = load <2 x i64>, ptr %i.dh, align 8, !noalias !37234
  %.sroa.413.0.copyload.i = load i64, ptr %i.dh, align 8, !noalias !37234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !37159
  store i64 %.sroa.011.0.copyload.i, ptr %i.p, align 8, !noalias !37235
  store <2 x i64> %i.hz, ptr %.sroa.413.0..sroa_idx14.i, align 8, !noalias !37235
  %i.ia = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %i.ia, align 8, !alias.scope !37158, !noalias !37236
  %i.ib = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %.sroa.413.0.copyload.i, ptr %i.ib, align 8, !alias.scope !37158, !noalias !37236
  %i.ic = load i32, ptr %i.q, align 4, !range !200, !noalias !37156, !noundef !152
  %.not.not.i.i477 = icmp eq i32 %i.ic, 3
  %i.id = inttoptr i64 %.sroa.011.0.copyload.i to ptr ; 2 uses
  br i1 %.not.not.i.i477, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5ca217d3b406b543E.exit.i"
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ie, ptr noundef nonnull align 4 dereferenceable(20) %i.q, i64 20, i1 false), !noalias !37237
  %i.if = icmp eq i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.if, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ig = load i64, ptr %i.id, align 8, !noalias !37238, !noundef !152
  %i.ih = add i64 %i.ig, -1                       ; 2 uses
  store i64 %i.ih, ptr %i.id, align 8, !noalias !37238
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.p)
          to label %bb.ca unwind label %bb.cc, !inline_history !36942

bb.ca:                                            ; preds = %bb.bx, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !37156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37156
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ij, ptr noundef nonnull align 4 dereferenceable(20) %i.ie, i64 20, i1 false)
  store i32 1, ptr %0, align 8
  call void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h6a9555eefb45e542E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %bb.ek

bb.cb:                                            ; preds = %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5ca217d3b406b543E.exit.i"
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ik, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !37237
  store i32 0, ptr %i.ag, align 8, !alias.scope !37239, !noalias !37240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !37156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37156
  %i.il = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue5array17h650af8dba8a4cfcfE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ik, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aq, i32 noundef %.sroa.0.0.i)
  br label %bb.dr

bb.cc:                                            ; preds = %bb.bz, %bb.q
  %lpad.thr_comm330 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i.i, %bb.bu, %bb.bv, %bb.cc
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm330, %bb.cc ], [ %eh.lpad-body.i.i.i, %bb.bv ], [ %eh.lpad-body.i.i.i, %bb.bu ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h6a9555eefb45e542E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq) #86
          to label %.thread unwind label %bb.cd

bb.cd:                                            ; preds = %bb.ej, %bb.da, %bb.en, %bb.em, %bb.eo, %bb.el, %.body
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit: ; preds = %bb.l
  %i.in = trunc i64 %i.by to i32                  ; 2 uses
  %i.io = add i32 %i.in, -1
  %i.ip = icmp ult i32 %i.io, 17
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = icmp eq i32 %i.in, 17
  br i1 %i.iq, label %bb.dr, label %_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit.thread: ; preds = %bb.l, %_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !152, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void %i.is(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.at, ptr noundef nonnull %.sroa.2.0.copyload)
  %i.it = load i64, ptr %i.at, align 8, !range !175, !noundef !152 ; 3 uses
  %.not180 = icmp eq i64 %i.it, -9223372036854775808
  br i1 %.not180, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit.thread
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4128.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 %i.it, ptr %i.au, align 8
  %.sroa.0257.sroa.4.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx15, align 8 ; 4 uses
  %.sroa.0257.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.0257.sroa.5.0.copyload = load i64, ptr %.sroa.0257.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.5259.0.copyload = load i64, ptr %.sroa.5259.0..sroa_idx, align 8 ; 4 uses
  %i.iu = icmp eq i64 %.sroa.5259.0.copyload, 0
  br i1 %i.iu, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfa9a1b10e1be13a5E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.ce
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.4258.0.copyload = load ptr, ptr %.sroa.4258.0..sroa_idx, align 8, !nonnull !152, !noundef !152
  %i.iv = shl i64 %.sroa.5259.0.copyload, 3
  %i.iw = icmp slt i64 %.sroa.5259.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.iw)
  %i.ix = and i64 %i.iv, -16                      ; 2 uses
  %i.iy = add i64 %i.ix, 16                       ; 2 uses
  %i.iz = add nsw i64 %.sroa.5259.0.copyload, 17
  %i.ja = add i64 %i.iz, %i.iy                    ; 3 uses
  %i.jb = icmp uge i64 %i.ja, %i.iy
  call void @llvm.assume(i1 %i.jb)
  %i.jc = icmp ult i64 %i.ja, 9223372036854775793
  call void @llvm.assume(i1 %i.jc)
  %i.jd = sub nuw nsw i64 -16, %i.ix
  %i.je = getelementptr inbounds i8, ptr %.sroa.4258.0.copyload, i64 %i.jd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.je, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !37241
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfa9a1b10e1be13a5E.exit.i.i"

bb.cf:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.invoke

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfa9a1b10e1be13a5E.exit.i.i": ; preds = %bb.ce, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0257.sroa.4.0.copyload) ]
  %i.jf = icmp ult i64 %.sroa.0257.sroa.5.0.copyload, 128102389400760776
  call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0257.sroa.4.0.copyload, i64 %.sroa.0257.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !37242
  store i32 3, ptr %i.u, align 8, !noalias !37242
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  store ptr %.sroa.0257.sroa.4.0.copyload, ptr %i.s, align 8
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.0257.sroa.4.0.copyload, ptr %.sroa.4296.0..sroa_idx, align 8
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.it, ptr %.sroa.5297.0..sroa_idx, align 8
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.jg, ptr %.sroa.6298.0..sroa_idx, align 8
  %.sroa.7299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %2, ptr %.sroa.7299.0..sroa_idx, align 8
  %.sroa.8300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.bb, ptr %.sroa.8300.0..sroa_idx, align 8
  %.sroa.9301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
end_hunk_2
begin_hunk_3_@"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17hb60107827bc5d69cE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38897
  store i32 3, ptr %i.q, align 4, !noalias !38897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !38897
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 312 ; 12 uses
  store i64 %i.da, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !38898
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 320 ; 5 uses
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !38898
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 328 ; 5 uses
  store ptr %i.ba, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !38898
  call void @llvm.experimental.noalias.scope.decl(metadata !38899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !38900
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !38901), !noalias !38902
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.o, i8 0, i64 17, i1 false), !noalias !38903
  call void @llvm.experimental.noalias.scope.decl(metadata !38904)
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 336 ; 4 uses
  store ptr %i.q, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !38905, !noalias !38895
  store i64 0, ptr %i.n, align 8, !alias.scope !38906, !noalias !38895
  call void @llvm.experimental.noalias.scope.decl(metadata !38907)
  call void @llvm.experimental.noalias.scope.decl(metadata !38908)
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38909), !noalias !38895
  %i.df = icmp eq i64 %.sroa.4133.sroa.5.0.copyload, %.sroa.4133.sroa.4.0.copyload
  br i1 %i.df, label %.thread547, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.db)
          to label %.noexc534 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38662 ; 2 uses

.noexc534:                                        ; preds = %bb.s
  %.not.i.i.i520 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i520, label %.thread547, label %bb.t

bb.t:                                             ; preds = %.noexc534
  %i.dh = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38910, !noalias !38911, !noundef !152
  %i.di = add i64 %i.dh, -1
  store i64 %i.di, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38910, !noalias !38911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38912
  call void @llvm.experimental.noalias.scope.decl(metadata !38913), !noalias !38914
  %i.dj = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !38915, !noalias !38916, !nonnull !152, !align !156, !noundef !152
  %i.dk = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !38915, !noalias !38916, !nonnull !152, !align !170, !noundef !152
  %i.dl = load i8, ptr %i.dk, align 1, !range !160, !noalias !38917, !noundef !152
  %i.dm = trunc nuw i8 %i.dl to i1
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17hb60107827bc5d69cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.dg, ptr noalias noundef align 8 dereferenceable(8) %i.dj, i1 noundef zeroext %i.dm)
          to label %.noexc535 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38662

.noexc535:                                        ; preds = %bb.t
  %.sroa.011.0.copyload.i.i521 = load i32, ptr %i.b, align 8, !noalias !38912
  %.sroa.513.0..sroa_idx.i.i522 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.513.0.copyload.i.i523 = load ptr, ptr %.sroa.513.0..sroa_idx.i.i522, align 8, !noalias !38912 ; 3 uses
  %i.dn = trunc nuw i32 %.sroa.011.0.copyload.i.i521 to i1
  br i1 %i.dn, label %.thread550, label %bb.v

.thread550:                                       ; preds = %.noexc535
  %.sroa.714.0..sroa_idx.i.i528 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.714.0.copyload.i.i529 = load i64, ptr %.sroa.714.0..sroa_idx.i.i528, align 8, !noalias !38912
  %.sroa.412.0..sroa_idx.i.i530 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.412.0.copyload.i.i531 = load i32, ptr %.sroa.412.0..sroa_idx.i.i530, align 4, !noalias !38912
  store i32 %.sroa.412.0.copyload.i.i531, ptr %i.q, align 4, !noalias !38918
  %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i532 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %.sroa.513.0.copyload.i.i523, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i532, align 4, !noalias !38918
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i533 = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i64 %.sroa.714.0.copyload.i.i529, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i533, align 4, !noalias !38918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38912
  store i64 1, ptr %i.n, align 8, !alias.scope !38907, !noalias !38895
  store ptr null, ptr %i.de, align 8, !alias.scope !38907, !noalias !38895
  br label %bb.u

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i", %bb.ax, %bb.x
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ds, %bb.x ], [ %i.fs, %bb.ax ], [ %i.fs, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i" ], [ %lpad.loopexit.split-lp636, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr722drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..traverse$LT$nickel_lang_core..transform..transform_no_free_vars..$u7b$$u7b$closure$u7d$$u7d$$C$nickel_lang_core..typ..UnboundTypeVariableError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$nickel_lang_core..typ..UnboundTypeVariableError$GT$$GT$$GT$$GT$17h407bc6f40900e9d9E"(ptr noalias noundef align 8 dereferenceable(344) %i.n) #86
          to label %.body.i.i.i unwind label %bb.br, !noalias !38895, !inline_history !38677

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.aq, %bb.ad, %bb.ac, %bb.bn, %bb.bm, %bb.bq, %bb.am, %bb.ai, %bb.t, %bb.s, %bb.aj
  %lpad.loopexit.split-lp636 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.thread547:                                       ; preds = %.noexc534, %bb.r
  store i64 1, ptr %i.n, align 8, !alias.scope !38907, !noalias !38895
  store ptr null, ptr %i.de, align 8, !alias.scope !38907, !noalias !38895
  br label %bb.u

bb.u:                                             ; preds = %.thread550, %.thread547, %bb.z
  %.sroa.513.0..sroa_idx.i.i505 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.714.0..sroa_idx.i.i511 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.412.0..sroa_idx.i.i513 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.714.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.aa

bb.v:                                             ; preds = %.noexc535
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i.i523) ], !noalias !38895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38912
  store i64 1, ptr %i.n, align 8, !alias.scope !38907, !noalias !38895
  store ptr %.sroa.513.0.copyload.i.i523, ptr %i.de, align 8, !alias.scope !38907, !noalias !38895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !38895
  store i64 1, ptr %i.m, align 8, !noalias !38895
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.do, align 8, !noalias !38895
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %i.dp, align 8, !noalias !38895
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !38903
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !38919, !inline_history !38680
  %i.dq = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !38919, !inline_history !38680 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.w, label %bb.z, !prof !162

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #82
          to label %.noexc5.i unwind label %bb.x, !noalias !38903, !inline_history !38680

.noexc5.i:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h5b0dc2473512f3c5E"(ptr noalias noundef readonly align 8 dereferenceable(280) %i.dp)
          to label %.body.i.i.i.i unwind label %bb.y, !noalias !38903, !inline_history !38680

bb.y:                                             ; preds = %bb.x
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !38895, !inline_history !38677
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dq, ptr noundef nonnull align 8 dereferenceable(296) %i.m, i64 296, i1 false), !noalias !38895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !38895
  store ptr %i.dq, ptr %i.o, align 8, !alias.scope !38901, !noalias !38900
  br label %bb.u

bb.aa:                                            ; preds = %.backedge, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !38920)
  call void @llvm.experimental.noalias.scope.decl(metadata !38921)
  %i.du = load i64, ptr %i.n, align 8, !range !171, !alias.scope !38920, !noalias !38895, !noundef !152
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519thread-pre-split", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !38922), !noalias !38895
  %i.dw = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !38923, !noalias !38895, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  %i.dx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38924, !noalias !38895, !noundef !152
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i509", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.db)
          to label %.noexc517 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38662 ; 2 uses

.noexc517:                                        ; preds = %bb.ac
  %.not.i.i.i503 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i503, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i509", label %bb.ad

bb.ad:                                            ; preds = %.noexc517
  %i.ea = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38925, !noalias !38926, !noundef !152
  %i.eb = add i64 %i.ea, -1
  store i64 %i.eb, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38925, !noalias !38926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38927
  call void @llvm.experimental.noalias.scope.decl(metadata !38928), !noalias !38929
  %i.ec = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !38930, !noalias !38931, !nonnull !152, !align !156, !noundef !152
  %i.ed = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !38930, !noalias !38931, !nonnull !152, !align !170, !noundef !152
  %i.ee = load i8, ptr %i.ed, align 1, !range !160, !noalias !38932, !noundef !152
  %i.ef = trunc nuw i8 %i.ee to i1
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17hb60107827bc5d69cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.dz, ptr noalias noundef align 8 dereferenceable(8) %i.ec, i1 noundef zeroext %i.ef)
          to label %.noexc518 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38662

.noexc518:                                        ; preds = %bb.ad
  %.sroa.011.0.copyload.i.i504 = load i32, ptr %i.c, align 8, !noalias !38927
  %.sroa.513.0.copyload.i.i506 = load ptr, ptr %.sroa.513.0..sroa_idx.i.i505, align 8, !noalias !38927 ; 3 uses
  %i.eg = trunc nuw i32 %.sroa.011.0.copyload.i.i504 to i1
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc518
  %.sroa.714.0.copyload.i.i512 = load i64, ptr %.sroa.714.0..sroa_idx.i.i511, align 8, !noalias !38927
  %.sroa.412.0.copyload.i.i514 = load i32, ptr %.sroa.412.0..sroa_idx.i.i513, align 4, !noalias !38927
  store i32 %.sroa.412.0.copyload.i.i514, ptr %i.dw, align 4, !noalias !38933
  %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i515 = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store ptr %.sroa.513.0.copyload.i.i506, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i515, align 4, !noalias !38933
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i516 = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i64 %.sroa.714.0.copyload.i.i512, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i516, align 4, !noalias !38933
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i507"

bb.af:                                            ; preds = %.noexc518
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i.i506) ], !noalias !38895
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i507"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i507": ; preds = %bb.af, %bb.ae
  %.sroa.4.1.i.i.i.i.i508 = phi ptr [ null, %bb.ae ], [ %.sroa.513.0.copyload.i.i506, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38927
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i509"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i509": ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i507", %.noexc517, %bb.ab
  %.sroa.0.0.i23.i.i510 = phi ptr [ null, %.noexc517 ], [ %.sroa.4.1.i.i.i.i.i508, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i507" ], [ null, %bb.ab ] ; 2 uses
  store i64 1, ptr %i.n, align 8, !alias.scope !38920, !noalias !38895
  store ptr %.sroa.0.0.i23.i.i510, ptr %i.de, align 8, !alias.scope !38920, !noalias !38895
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519thread-pre-split": ; preds = %bb.aa
  %.pr = load ptr, ptr %i.de, align 8, !noalias !38934
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519thread-pre-split", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i509"
  %i.eh = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519thread-pre-split" ], [ %.sroa.0.0.i23.i.i510, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i509" ]
  %.not7.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not7.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519"
  %i.ei = load ptr, ptr %i.o, align 8, !alias.scope !38901, !noalias !38900, !noundef !152
  %.not8.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not8.i.i.i.i, label %bb.aj, label %bb.ai, !prof !154

bb.ah:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit519"
  invoke fastcc void @"_ZN4core3ptr722drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..traverse$LT$nickel_lang_core..transform..transform_no_free_vars..$u7b$$u7b$closure$u7d$$u7d$$C$nickel_lang_core..typ..UnboundTypeVariableError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$nickel_lang_core..typ..UnboundTypeVariableError$GT$$GT$$GT$$GT$17h407bc6f40900e9d9E"(ptr noalias noundef align 8 dereferenceable(344) %i.n)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h4a603c575fd8459aE.exit.i" unwind label %bb.bs, !noalias !38900, !inline_history !38677

bb.ai:                                            ; preds = %bb.ag
  %i.ej = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hd10db9d3b346db9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !38935, !inline_history !38677 ; 4 uses

bb.aj:                                            ; preds = %bb.ag
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #82
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !38895, !inline_history !38677

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.ek = load i64, ptr %i.ej, align 8, !range !171, !noalias !38895, !noundef !152
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  br i1 %i.el, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.en = load i8, ptr %i.dd, align 8, !alias.scope !38901, !noalias !38900, !noundef !152
  %i.eo = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h21878b1a8f14bad3E"(ptr noalias noundef align 8 dereferenceable(344) %i.n, ptr noalias noundef align 8 dereferenceable(272) %i.em, i8 noundef %i.en)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !38895, !inline_history !38677

bb.an:                                            ; preds = %bb.al
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 272 ; 5 uses
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !38895, !noundef !152 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 264 ; 6 uses
  %i.es = load i64, ptr %i.er, align 8, !noalias !38895, !noundef !152 ; 2 uses
  %i.et = sub i64 %i.eq, %i.es                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38936)
  %i.eu = icmp eq i64 %i.et, 32
  br i1 %i.eu, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.an
  %i.ev = sub i64 32, %i.et
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i", %.lr.ph.i
  %.pre.pre45.i = phi i64 [ %i.eq, %.lr.ph.i ], [ %i.gq, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i" ]
  %.sroa.425.035.i = phi i64 [ %i.ev, %.lr.ph.i ], [ %i.ew, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i" ]
  %i.ew = add i64 %.sroa.425.035.i, -1            ; 2 uses
  %i.ex = load i64, ptr %i.n, align 8, !range !171, !alias.scope !38937, !noalias !38938, !noundef !152
  %i.ey = load ptr, ptr %i.de, align 8, !alias.scope !38937, !noalias !38938
  store i64 0, ptr %i.n, align 8, !alias.scope !38937, !noalias !38938
  %i.ez = trunc nuw i64 %i.ex to i1
  br i1 %i.ez, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !38939)
  %i.fa = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !38940, !noalias !38903, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  %i.fb = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38941, !noalias !38903, !noundef !152
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i_crit_edge.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fd = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.db)
          to label %.noexc501 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38719 ; 2 uses

.noexc501:                                        ; preds = %bb.aq
  %.not.i.i499 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i499, label %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i_crit_edge.i", label %bb.ar

bb.ar:                                            ; preds = %.noexc501
  %i.fe = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38939, !noalias !38942, !noundef !152
  %i.ff = add i64 %i.fe, -1
  store i64 %i.ff, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38939, !noalias !38942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38943
  call void @llvm.experimental.noalias.scope.decl(metadata !38944), !noalias !38945
  %i.fg = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !38946, !noalias !38947, !nonnull !152, !align !156, !noundef !152
  %i.fh = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !38946, !noalias !38947, !nonnull !152, !align !170, !noundef !152
  %i.fi = load i8, ptr %i.fh, align 1, !range !160, !noalias !38948, !noundef !152
  %i.fj = trunc nuw i8 %i.fi to i1
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17hb60107827bc5d69cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.fd, ptr noalias noundef align 8 dereferenceable(8) %i.fg, i1 noundef zeroext %i.fj)
          to label %.noexc502 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38719

.noexc502:                                        ; preds = %bb.ar
  %.sroa.011.0.copyload.i500 = load i32, ptr %i.d, align 8, !noalias !38943
  %.sroa.513.0.copyload.i = load ptr, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !38943 ; 3 uses
  %i.fk = trunc nuw i32 %.sroa.011.0.copyload.i500 to i1
  br i1 %i.fk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc502
  %.sroa.714.0.copyload.i = load i64, ptr %.sroa.714.0..sroa_idx.i, align 8, !noalias !38943
  %.sroa.412.0.copyload.i = load i32, ptr %.sroa.412.0..sroa_idx.i, align 4, !noalias !38943
  store i32 %.sroa.412.0.copyload.i, ptr %i.fa, align 4, !noalias !38949
  %.sroa.48.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store ptr %.sroa.513.0.copyload.i, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i.i, align 4, !noalias !38949
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i64 %.sroa.714.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i, align 4, !noalias !38949
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i"

bb.at:                                            ; preds = %.noexc502
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i) ], !noalias !38903
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i": ; preds = %bb.at, %bb.as
  %.sroa.4.1.i.i.i.i = phi ptr [ null, %bb.as ], [ %.sroa.513.0.copyload.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38943
  br label %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i_crit_edge.i"

"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i_crit_edge.i": ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i", %.noexc501, %bb.ap
  %.sroa.0.0.i23.i = phi ptr [ null, %.noexc501 ], [ %.sroa.4.1.i.i.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i" ], [ null, %bb.ap ]
  %.pre.pre.pre.i = load i64, ptr %i.ep, align 8, !noalias !38895
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i.i": ; preds = %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i_crit_edge.i", %bb.ao
  %.pre.pre.i = phi i64 [ %.pre.pre.pre.i, %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i_crit_edge.i" ], [ %.pre.pre45.i, %bb.ao ] ; 4 uses
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i23.i, %"._ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i_crit_edge.i" ], [ %i.ey, %bb.ao ] ; 6 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %.pre40.pre42.i = load i64, ptr %i.er, align 8, !noalias !38895 ; 6 uses
  br i1 %.not.i.i, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.i", label %bb.au

bb.au:                                            ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !38950), !noalias !38934
  %i.fl = icmp eq i64 %.pre40.pre42.i, 0
  %i.fm = icmp eq i64 %.pre.pre.i, 32             ; 2 uses
  %or.cond.i.i.i = select i1 %i.fl, i1 %i.fm, i1 false, !prof !187
  br i1 %or.cond.i.i.i, label %bb.aw, label %bb.av, !prof !187

bb.av:                                            ; preds = %bb.au
  %i.fn = icmp eq i64 %.pre40.pre42.i, %.pre.pre.i
  br i1 %i.fn, label %bb.bg, label %bb.bf

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !38951
  store ptr @1493, ptr %i.l, align 8, !noalias !38951
  %i.fo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.fo, align 8, !noalias !38951
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.fp, align 8, !noalias !38951
  %i.fq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fq, align 8, !noalias !38951
  %i.fr = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.fr, align 8, !noalias !38951
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1494) #82
          to label %bb.bd unwind label %bb.ax, !noalias !38952, !inline_history !38736

bb.ax:                                            ; preds = %bb.aw
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.fu = and i64 %i.ft, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fu, i64 2)
  switch i64 %..i.i.i, label %.body.i.i.i.i [
    i64 2, label %bb.ay
    i64 0, label %bb.az
  ], !prof !157

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.noexc6.i unwind label %bb.be, !noalias !38903, !inline_history !38737

.noexc6.i:                                        ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38953
  store ptr %.sroa.0.0.i.i.i, ptr %i.k, align 8, !noalias !38953
  %i.fv = load i64, ptr %.sroa.0.0.i.i.i, align 8, !noalias !38954, !noundef !152 ; 3 uses
  %i.fw = and i64 %i.fv, 72057594037927935
  %i.fx = add nsw i64 %i.fw, -1                   ; 3 uses
  %i.fy = and i64 %i.fv, 1080863910568919040
  %i.fz = icmp ult i64 %i.fv, 864691128455135232
  call void @llvm.assume(i1 %i.fz), !noalias !38955
  %i.ga = or i64 %i.fx, %i.fy
  store i64 %i.ga, ptr %.sroa.0.0.i.i.i, align 8, !noalias !38954
  %i.gb = icmp ugt i64 %i.fx, 72057594037927935
  br i1 %i.gb, label %bb.bb, label %bb.ba, !prof !154

bb.ba:                                            ; preds = %bb.az
  %i.gc = icmp eq i64 %i.fx, 0
  br i1 %i.gc, label %bb.bc, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i"

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !38954
  store ptr @2796, ptr %i.j, align 8, !noalias !38954
  %i.gd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.gd, align 8, !noalias !38954
  %i.ge = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.ge, align 8, !noalias !38954
  %i.gf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gf, align 8, !noalias !38954
  %i.gg = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.gg, align 8, !noalias !38954
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc7.i unwind label %bb.be, !noalias !38903, !inline_history !38737

.noexc7.i:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.ba
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #84
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i" unwind label %bb.be, !noalias !38903, !inline_history !38737

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i": ; preds = %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !38953
  br label %.body.i.i.i.i

bb.bd:                                            ; preds = %bb.aw
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.bb, %bb.ay
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !38952, !inline_history !38736
  unreachable

bb.bf:                                            ; preds = %bb.av
  br i1 %i.fm, label %bb.bh, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i"

bb.bg:                                            ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false), !alias.scope !38956, !noalias !38895
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i"

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i.i = icmp eq i64 %.pre40.pre42.i, 32
  br i1 %.not.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.gi = phi i64 [ %i.gm, %bb.bj ], [ 0, %bb.bh ] ; 2 uses
  store i64 %i.gi, ptr %i.ep, align 8, !alias.scope !38956, !noalias !38895
  store i64 0, ptr %i.er, align 8, !alias.scope !38956, !noalias !38895
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i"

bb.bj:                                            ; preds = %bb.bh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.pre40.pre42.i
  %i.gk = shl i64 %.pre40.pre42.i, 3
  %i.gl = sub i64 256, %i.gk
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.em, ptr nonnull align 8 %i.gj, i64 %i.gl, i1 false), !alias.scope !38956, !noalias !38895
  %.pre.i.i.i = load i64, ptr %i.er, align 8, !alias.scope !38956, !noalias !38895
  %i.gm = sub i64 32, %.pre.i.i.i
  br label %bb.bi

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i": ; preds = %bb.bi, %bb.bg, %bb.bf
  %i.gn = phi i64 [ %i.gi, %bb.bi ], [ %.pre.pre.i, %bb.bf ], [ 0, %bb.bg ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.gn
  store ptr %.sroa.0.0.i.i.i, ptr %i.go, align 8, !alias.scope !38956, !noalias !38895
  %i.gp = load i64, ptr %i.ep, align 8, !alias.scope !38956, !noalias !38895, !noundef !152
  %i.gq = add i64 %i.gp, 1                        ; 3 uses
  store i64 %i.gq, ptr %i.ep, align 8, !alias.scope !38956, !noalias !38895
  %i.gr = icmp eq i64 %i.ew, 0
  br i1 %i.gr, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge.i", label %bb.ao

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge.i": ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i.i"
  %.pre40.pre.i = load i64, ptr %i.er, align 8, !noalias !38895
  br label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.i"

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge.i", %bb.an
  %i.gs = phi i64 [ %i.es, %bb.an ], [ %.pre40.pre.i, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge.i" ], [ %.pre40.pre42.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i.i" ]
  %i.gt = phi i64 [ %i.eq, %bb.an ], [ %i.gq, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hc1ac3730869ad8ceE.exit.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.loopexit_crit_edge.i" ], [ %.pre.pre.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cbbb3116cb816d4E.exit.i.i" ]
  %i.gu = add i64 %i.gs, %i.et
  %i.gv = sub i64 %i.gt, %i.gu
  br label %bb.bk

bb.bk:                                            ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.i", %bb.am
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.gv, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h726a0816a95b428aE.exit.i" ], [ %i.eo, %bb.am ]
  %i.gw = load i64, ptr %i.dc, align 8, !alias.scope !38901, !noalias !38900, !noundef !152
  %i.gx = add i64 %i.gw, %.sroa.03.0.i.i.i.i
  store i64 %i.gx, ptr %i.dc, align 8, !alias.scope !38901, !noalias !38900
  call void @llvm.experimental.noalias.scope.decl(metadata !38957)
  call void @llvm.experimental.noalias.scope.decl(metadata !38958)
  %i.gy = load i64, ptr %i.n, align 8, !range !171, !alias.scope !38957, !noalias !38895, !noundef !152
  %i.gz = trunc nuw i64 %i.gy to i1
  br i1 %i.gz, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exitthread-pre-split", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !38959), !noalias !38895
  %i.ha = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !38960, !noalias !38895, !nonnull !152, !align !183, !noundef !152 ; 3 uses
  %i.hb = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38961, !noalias !38895, !noundef !152
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hd = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h271d528b9b5ccdbfE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.db)
          to label %.noexc497 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38662 ; 2 uses

.noexc497:                                        ; preds = %bb.bm
  %.not.i.i.i496 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i496, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i", label %bb.bn

bb.bn:                                            ; preds = %.noexc497
  %i.he = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38962, !noalias !38963, !noundef !152
  %i.hf = add i64 %i.he, -1
  store i64 %i.hf, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38962, !noalias !38963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38964
  call void @llvm.experimental.noalias.scope.decl(metadata !38965), !noalias !38966
  %i.hg = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !38967, !noalias !38968, !nonnull !152, !align !156, !noundef !152
  %i.hh = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !38967, !noalias !38968, !nonnull !152, !align !170, !noundef !152
  %i.hi = load i8, ptr %i.hh, align 1, !range !160, !noalias !38969, !noundef !152
  %i.hj = trunc nuw i8 %i.hi to i1
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17hb60107827bc5d69cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.hd, ptr noalias noundef align 8 dereferenceable(8) %i.hg, i1 noundef zeroext %i.hj)
          to label %.noexc498 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38662

.noexc498:                                        ; preds = %bb.bn
  %.sroa.011.0.copyload.i.i = load i32, ptr %i.e, align 8, !noalias !38964
  %.sroa.513.0.copyload.i.i = load ptr, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !38964 ; 3 uses
  %i.hk = trunc nuw i32 %.sroa.011.0.copyload.i.i to i1
  br i1 %i.hk, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc498
  %.sroa.714.0.copyload.i.i = load i64, ptr %.sroa.714.0..sroa_idx.i.i, align 8, !noalias !38964
  %.sroa.412.0.copyload.i.i = load i32, ptr %.sroa.412.0..sroa_idx.i.i, align 4, !noalias !38964
  store i32 %.sroa.412.0.copyload.i.i, ptr %i.ha, align 4, !noalias !38970
  %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store ptr %.sroa.513.0.copyload.i.i, ptr %.sroa.48.0..8.val.sroa_idx.i.i.i.i.i, align 4, !noalias !38970
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i64 %.sroa.714.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i, align 4, !noalias !38970
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i"

bb.bp:                                            ; preds = %.noexc498
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.copyload.i.i) ], !noalias !38895
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i": ; preds = %bb.bp, %bb.bo
  %.sroa.4.1.i.i.i.i.i = phi ptr [ null, %bb.bo ], [ %.sroa.513.0.copyload.i.i, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38964
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i": ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i", %.noexc497, %bb.bl
  %.sroa.0.0.i23.i.i = phi ptr [ null, %.noexc497 ], [ %.sroa.4.1.i.i.i.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha6c6c3edd3f88ceeE.exit.i.i.i" ], [ null, %bb.bl ] ; 2 uses
  store i64 1, ptr %i.n, align 8, !alias.scope !38957, !noalias !38895
  store ptr %.sroa.0.0.i23.i.i, ptr %i.de, align 8, !alias.scope !38957, !noalias !38895
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exitthread-pre-split": ; preds = %bb.bk
  %.pr553 = load ptr, ptr %i.de, align 8, !noalias !38934
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exitthread-pre-split", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i"
  %i.hl = phi ptr [ %.pr553, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exitthread-pre-split" ], [ %.sroa.0.0.i23.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25945f5829587a6dE.exit.i" ]
  %.not9.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.bq

bb.bq:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17h3a19d98a10368d10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !38935, !inline_history !38677

.backedge:                                        ; preds = %bb.bq, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h042b747ed521df33E.exit"
  br label %bb.aa

bb.br:                                            ; preds = %.body.i.i.i.i
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !38895, !inline_history !38677
  unreachable

bb.bs:                                            ; preds = %bb.ah
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bs, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.hn, %bb.bs ], [ %.pn.i.i.i.i, %.body.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38971), !noalias !38902
  call void @llvm.experimental.noalias.scope.decl(metadata !38972), !noalias !38902
  %i.ho = load ptr, ptr %i.o, align 8, !alias.scope !38973, !noalias !38900, !noundef !152 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %.body, label %bb.bt

bb.bt:                                            ; preds = %.body.i.i.i
  %i.hq = load i64, ptr %i.ho, align 8, !noalias !38974, !noundef !152
  %i.hr = add i64 %i.hq, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.ho, align 8, !noalias !38974
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.bu, label %.body

bb.bu:                                            ; preds = %bb.bt
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.bv, !noalias !38900, !inline_history !38776

bb.bv:                                            ; preds = %bb.bu
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !38900, !inline_history !38777
  unreachable

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h4a603c575fd8459aE.exit.i": ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !38895
  %.sroa.011.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !38975 ; 3 uses
  %.sroa.413.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.hu = load <2 x i64>, ptr %i.dc, align 8, !noalias !38975
  %.sroa.413.0.copyload.i = load i64, ptr %i.dc, align 8, !noalias !38975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !38900
  store i64 %.sroa.011.0.copyload.i, ptr %i.p, align 8, !noalias !38976
  store <2 x i64> %i.hu, ptr %.sroa.413.0..sroa_idx14.i, align 8, !noalias !38976
  %i.hv = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %i.hv, align 8, !alias.scope !38899, !noalias !38977
  %i.hw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %.sroa.413.0.copyload.i, ptr %i.hw, align 8, !alias.scope !38899, !noalias !38977
  %i.hx = load i32, ptr %i.q, align 4, !range !200, !noalias !38897, !noundef !152
  %.not.not.i.i488 = icmp eq i32 %i.hx, 3
  %i.hy = inttoptr i64 %.sroa.011.0.copyload.i to ptr ; 2 uses
  br i1 %.not.not.i.i488, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h4a603c575fd8459aE.exit.i"
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hz, ptr noundef nonnull align 4 dereferenceable(20) %i.q, i64 20, i1 false), !noalias !38978
  %i.ia = icmp eq i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.ia, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ib = load i64, ptr %i.hy, align 8, !noalias !38979, !noundef !152
  %i.ic = add i64 %i.ib, -1                       ; 2 uses
  store i64 %i.ic, ptr %i.hy, align 8, !noalias !38979
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.p)
          to label %bb.bz unwind label %bb.cb, !inline_history !38680

bb.bz:                                            ; preds = %bb.bw, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !38897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !38897
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ie, ptr noundef nonnull align 4 dereferenceable(20) %i.hz, i64 20, i1 false)
  store i32 1, ptr %0, align 8
  call void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h6a9555eefb45e542E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %bb.g

bb.ca:                                            ; preds = %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h4a603c575fd8459aE.exit.i"
  %i.if = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.if, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !38978
  store i32 0, ptr %i.ag, align 8, !alias.scope !38980, !noalias !38981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !38897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !38897
  %i.ig = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue5array17h650af8dba8a4cfcfE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.if, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aq, i32 noundef %.sroa.0.0.i197)
  br label %bb.dq

bb.cb:                                            ; preds = %bb.by, %bb.p
  %lpad.thr_comm339 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i.i, %bb.bt, %bb.bu, %bb.cb
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm339, %bb.cb ], [ %eh.lpad-body.i.i.i, %bb.bu ], [ %eh.lpad-body.i.i.i, %bb.bt ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h6a9555eefb45e542E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq) #86
          to label %.thread unwind label %bb.cc

bb.cc:                                            ; preds = %bb.ej, %bb.cz, %bb.em, %bb.el, %bb.en, %bb.ek, %.body
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit: ; preds = %bb.k
  %i.ii = trunc i64 %i.bt to i32                  ; 2 uses
  %i.ij = add i32 %i.ii, -1
  %i.ik = icmp ult i32 %i.ij, 17
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = icmp eq i32 %i.ii, 17
  br i1 %i.il, label %bb.dq, label %_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit.thread: ; preds = %bb.k, %_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit
  %i.im = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !nonnull !152, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void %i.in(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.at, ptr noundef nonnull %.sroa.2.0.copyload)
  %i.io = load i64, ptr %i.at, align 8, !range !175, !noundef !152 ; 3 uses
  %.not180 = icmp eq i64 %i.io, -9223372036854775808
  br i1 %.not180, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit.thread
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4128.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 %i.io, ptr %i.au, align 8
  %.sroa.0265.sroa.4.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx15, align 8 ; 4 uses
  %.sroa.0265.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.0265.sroa.5.0.copyload = load i64, ptr %.sroa.0265.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.5267.0.copyload = load i64, ptr %.sroa.5267.0..sroa_idx, align 8 ; 4 uses
  %i.ip = icmp eq i64 %.sroa.5267.0.copyload, 0
  br i1 %i.ip, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0c1b6b8d1cdecd1aE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.cd
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.4266.0.copyload = load ptr, ptr %.sroa.4266.0..sroa_idx, align 8, !nonnull !152, !noundef !152
  %i.iq = shl i64 %.sroa.5267.0.copyload, 3
  %i.ir = icmp slt i64 %.sroa.5267.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.ir)
  %i.is = and i64 %i.iq, -16                      ; 2 uses
  %i.it = add i64 %i.is, 16                       ; 2 uses
  %i.iu = add nsw i64 %.sroa.5267.0.copyload, 17
  %i.iv = add i64 %i.iu, %i.it                    ; 3 uses
  %i.iw = icmp uge i64 %i.iv, %i.it
  call void @llvm.assume(i1 %i.iw)
  %i.ix = icmp ult i64 %i.iv, 9223372036854775793
  call void @llvm.assume(i1 %i.ix)
  %i.iy = sub nuw nsw i64 -16, %i.is
  %i.iz = getelementptr inbounds i8, ptr %.sroa.4266.0.copyload, i64 %i.iy
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !38982
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0c1b6b8d1cdecd1aE.exit.i.i"

bb.ce:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue22is_inline_empty_record17hebfc6fc05e035571E.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.invoke

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0c1b6b8d1cdecd1aE.exit.i.i": ; preds = %bb.cd, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0265.sroa.4.0.copyload) ]
  %i.ja = icmp ult i64 %.sroa.0265.sroa.5.0.copyload, 128102389400760776
  call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0265.sroa.4.0.copyload, i64 %.sroa.0265.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !38983
  store i32 3, ptr %i.u, align 8, !noalias !38983
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  store ptr %.sroa.0265.sroa.4.0.copyload, ptr %i.s, align 8
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.0265.sroa.4.0.copyload, ptr %.sroa.4305.0..sroa_idx, align 8
  %.sroa.5306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.io, ptr %.sroa.5306.0..sroa_idx, align 8
  %.sroa.6307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.jb, ptr %.sroa.6307.0..sroa_idx, align 8
  %.sroa.7308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %2, ptr %.sroa.7308.0..sroa_idx, align 8
  %.sroa.8309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.ba, ptr %.sroa.8309.0..sroa_idx, align 8
  %.sroa.9310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
end_hunk_3
begin_hunk_4_@"_ZN16nickel_lang_core4eval11contract_eq15type_eq_bounded28_$u7b$$u7b$closure$u7d$$u7d$17hf4cbdc8519ef091fE":bb.a
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bo, -16                      ; 2 uses
  %i.br = add i64 %i.bq, 16                       ; 2 uses
  %i.bs = add nsw i64 %.val1.i.i2, 17
  %i.bt = add i64 %i.bs, %i.br                    ; 3 uses
  %i.bu = icmp uge i64 %i.bt, %i.br
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp ult i64 %i.bt, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = sub nuw nsw i64 -16, %i.bq
  %i.bx = getelementptr inbounds i8, ptr %.val.i.i4, i64 %i.bw
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !40676
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17haeb06ef2c20ac75eE.exit.i.i5"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17haeb06ef2c20ac75eE.exit.i.i5": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i3, %"_ZN4core3ptr126drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$$RF$nickel_lang_core..typ..Type$GT$$GT$17hf65a7930a2afbdfbE.exit"
  %.val2.i.i6 = load i64, ptr %1, align 8, !alias.scope !40676 ; 2 uses
  %i.by = icmp eq i64 %.val2.i.i6, 0
  br i1 %i.by, label %"_ZN4core3ptr126drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$$RF$nickel_lang_core..typ..Type$GT$$GT$17hf65a7930a2afbdfbE.exit8", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17haeb06ef2c20ac75eE.exit.i.i5"
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i7 = load ptr, ptr %i.bz, align 8, !alias.scope !40676, !nonnull !152, !noundef !152
  %i.ca = mul nuw i64 %.val2.i.i6, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i7, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !40676
  br label %"_ZN4core3ptr126drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$$RF$nickel_lang_core..typ..Type$GT$$GT$17hf65a7930a2afbdfbE.exit8"

"_ZN4core3ptr126drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$$RF$nickel_lang_core..typ..Type$GT$$GT$17hf65a7930a2afbdfbE.exit8": ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17haeb06ef2c20ac75eE.exit.i.i5", %bb.i
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN16nickel_lang_core4eval11contract_eq19contract_eq_bounded17h7e63f4260e7f4aa0E(ptr noalias noundef nonnull align 1 dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !40789 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = alloca [112 x i8], align 8               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40791)
  %i.l = load ptr, ptr %1, align 8, !alias.scope !40790, !nonnull !152, !noundef !152 ; 14 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.n = and i64 %i.m, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 2) ; 2 uses
  switch i64 %..i, label %bb.c [
    i64 2, label %bb.b
    i64 0, label %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit
  ], !prof !157

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82, !noalias !40792
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %3, align 8, !alias.scope !40791, !nonnull !152, !noundef !152 ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.12.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 2)
  switch i64 %.12.i, label %.split [
    i64 2, label %bb.d
    i64 0, label %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread
  ], !prof !157

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82, !noalias !40792
  unreachable

.split:                                           ; preds = %bb.c
  %i.r = trunc i64 %i.m to i32                    ; 2 uses
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 17
  tail call void @llvm.assume(i1 %i.t)
  %i.u = trunc i64 %i.p to i32                    ; 2 uses
  %i.v = add i32 %i.u, -1
  %i.w = icmp ult i32 %i.v, 17
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i32 %i.r, %i.u
  br i1 %i.x, label %bb.ap, label %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit: ; preds = %bb.a
  %i.y = load ptr, ptr %3, align 8, !alias.scope !40791, !nonnull !152, !noundef !152 ; 3 uses
  %i.z = icmp eq ptr %i.l, %i.y
  br i1 %i.z, label %bb.ap, label %.thread

_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread: ; preds = %bb.av, %.split206.thread, %bb.c, %.split206, %.split, %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6ptr_eq17hdacffd6a1b7c9a9aE.exit"
  %i.aa = phi ptr [ %i.bs, %bb.av ], [ %i.bs, %.split206.thread ], [ %i.o, %bb.c ], [ %i.bs, %.split206 ], [ %i.o, %.split ], [ %i.bs, %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6ptr_eq17hdacffd6a1b7c9a9aE.exit" ] ; 6 uses
  switch i64 %..i, label %bb.f [
    i64 2, label %bb.e
    i64 0, label %.thread
  ], !prof !40793

bb.e:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82, !noalias !40794
  unreachable

bb.f:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread
  %i.ab = trunc i64 %i.m to i32                   ; 2 uses
  %i.ac = add i32 %i.ab, -1
  %i.ad = icmp ult i32 %i.ac, 17
  tail call void @llvm.assume(i1 %i.ad)
  switch i32 %i.ab, label %bb.g [
    i32 1, label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit
    i32 5, label %bb.s
    i32 9, label %bb.t
    i32 13, label %bb.u
    i32 17, label %bb.v
  ]

.thread:                                          ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit, %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread
  %i.ae = phi ptr [ %i.y, %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit ], [ %i.aa, %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread ] ; 12 uses
  %i.af = load i64, ptr %i.l, align 8, !noalias !40794, !noundef !152 ; 2 uses
  %i.ag = lshr i64 %i.af, 56
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = icmp ult i64 %i.af, 864691128455135232
  tail call void @llvm.assume(i1 %i.ai)
  switch i8 %i.ah, label %default.unreachable.i [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.r
  ]

default.unreachable.i:                            ; preds = %.thread
  unreachable

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.i:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.j:                                             ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.k:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.l:                                             ; preds = %.thread
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.m:                                             ; preds = %.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.n:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.o:                                             ; preds = %.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.p:                                             ; preds = %.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.q:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.r:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.s:                                             ; preds = %bb.f
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.t:                                             ; preds = %bb.f
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.u:                                             ; preds = %bb.f
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

bb.v:                                             ; preds = %bb.f
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit

_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit: ; preds = %.thread, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %i.au = phi ptr [ %i.aa, %bb.f ], [ %i.aa, %bb.s ], [ %i.aa, %bb.t ], [ %i.aa, %bb.u ], [ %i.aa, %bb.v ], [ %i.ae, %bb.h ], [ %i.ae, %bb.i ], [ %i.ae, %bb.j ], [ %i.ae, %bb.k ], [ %i.ae, %bb.r ], [ %i.ae, %bb.l ], [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %i.ae, %bb.o ], [ %i.ae, %bb.p ], [ %i.ae, %bb.q ], [ %i.ae, %.thread ] ; 13 uses
  %.sroa.5.0 = phi ptr [ undef, %bb.f ], [ undef, %bb.s ], [ undef, %bb.t ], [ null, %bb.u ], [ null, %bb.v ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ], [ %i.al, %bb.j ], [ %i.am, %bb.k ], [ %i.at, %bb.r ], [ %i.an, %bb.l ], [ %i.ao, %bb.m ], [ %i.ap, %bb.n ], [ %i.aq, %bb.o ], [ %i.ar, %bb.p ], [ %i.as, %bb.q ], [ %1, %.thread ] ; 46 uses
  %.sroa.2.0 = phi i8 [ undef, %bb.f ], [ 1, %bb.s ], [ 0, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.r ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %bb.p ], [ undef, %bb.q ], [ undef, %.thread ]
  %cond = phi i1 [ false, %bb.f ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.r ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ true, %.thread ] ; 2 uses
  %i.av = phi i1 [ false, %bb.f ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.v ], [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.r ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %.thread ]
  %i.aw = phi i1 [ false, %bb.f ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.r ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %.thread ]
  %.sink.i = phi i8 [ 0, %bb.f ], [ 1, %bb.s ], [ 1, %bb.t ], [ 3, %bb.u ], [ 4, %bb.v ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 13, %bb.r ], [ 7, %bb.l ], [ 8, %bb.m ], [ 9, %bb.n ], [ 10, %bb.o ], [ 11, %bb.p ], [ 12, %bb.q ], [ 6, %.thread ] ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 3
  %..i105 = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 2)
  switch i64 %..i105, label %bb.x [
    i64 2, label %bb.w
    i64 0, label %bb.y
  ], !prof !157

bb.w:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82, !noalias !40795
  unreachable

bb.x:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  %i.ba = add i32 %i.az, -1
  %i.bb = icmp ult i32 %i.ba, 17
  tail call void @llvm.assume(i1 %i.bb)
  switch i32 %i.az, label %bb.z [
    i32 1, label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
    i32 5, label %bb.al
    i32 9, label %bb.am
    i32 13, label %bb.an
    i32 17, label %bb.ao
  ]

bb.y:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit
  %i.bc = load i64, ptr %i.au, align 8, !noalias !40795, !noundef !152 ; 2 uses
  %i.bd = lshr i64 %i.bc, 56
  %i.be = trunc nuw nsw i64 %i.bd to i8
  %i.bf = icmp ult i64 %i.bc, 864691128455135232
  tail call void @llvm.assume(i1 %i.bf)
  switch i8 %i.be, label %default.unreachable.i107 [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
    i8 4, label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
    i8 5, label %bb.ae
    i8 6, label %bb.af
    i8 7, label %bb.ag
    i8 8, label %bb.ah
    i8 9, label %bb.ai
    i8 10, label %bb.aj
    i8 11, label %bb.ak
  ]

default.unreachable.i107:                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ab:                                            ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ac:                                            ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ad:                                            ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ae:                                            ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.af:                                            ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ag:                                            ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ah:                                            ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ai:                                            ; preds = %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.aj:                                            ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ak:                                            ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.al:                                            ; preds = %bb.x
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.am:                                            ; preds = %bb.x
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.an:                                            ; preds = %bb.x
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

bb.ao:                                            ; preds = %bb.x
  br label %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108

_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108: ; preds = %bb.y, %bb.x, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.sroa.13.0 = phi ptr [ undef, %bb.x ], [ undef, %bb.al ], [ undef, %bb.am ], [ null, %bb.an ], [ null, %bb.ao ], [ %i.bg, %bb.aa ], [ %i.bh, %bb.ab ], [ %i.bi, %bb.ac ], [ %i.bj, %bb.ad ], [ %i.bq, %bb.ak ], [ %i.bk, %bb.ae ], [ %i.bl, %bb.af ], [ %i.bm, %bb.ag ], [ %i.bn, %bb.ah ], [ %i.bo, %bb.ai ], [ %i.bp, %bb.aj ], [ %3, %bb.y ] ; 48 uses
  %.sroa.10.0 = phi i8 [ undef, %bb.x ], [ 1, %bb.al ], [ 0, %bb.am ], [ undef, %bb.an ], [ undef, %bb.ao ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ undef, %bb.ac ], [ undef, %bb.ad ], [ undef, %bb.ak ], [ undef, %bb.ae ], [ undef, %bb.af ], [ undef, %bb.ag ], [ undef, %bb.ah ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.y ]
  %i.br = phi i1 [ false, %bb.x ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.an ], [ false, %bb.ao ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.ac ], [ false, %bb.ad ], [ false, %bb.ak ], [ true, %bb.ae ], [ false, %bb.af ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.y ]
  %.sink.i106 = phi i8 [ 0, %bb.x ], [ 1, %bb.al ], [ 1, %bb.am ], [ 3, %bb.an ], [ 4, %bb.ao ], [ 2, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.ac ], [ 5, %bb.ad ], [ 13, %bb.ak ], [ 7, %bb.ae ], [ 8, %bb.af ], [ 9, %bb.ag ], [ 10, %bb.ah ], [ 11, %bb.ai ], [ 12, %bb.aj ], [ 6, %bb.y ] ; 9 uses
  switch i8 %.sink.i, label %bb.aw [
    i8 0, label %bb.ax
    i8 1, label %bb.ay
    i8 3, label %bb.az
    i8 4, label %bb.ba
    i8 7, label %bb.bb
    i8 9, label %bb.bc
    i8 11, label %bb.bd
    i8 13, label %bb.be
  ]

bb.ap:                                            ; preds = %.split, %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit
  %i.bs = phi ptr [ %i.o, %.split ], [ %i.y, %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit ] ; 4 uses
  %.val96 = load ptr, ptr %2, align 8             ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val97 = load ptr, ptr %i.bt, align 8, !noundef !152 ; 2 uses
  %.val98 = load ptr, ptr %4, align 8             ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val99 = load ptr, ptr %i.bu, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.val97, null
  %i.bv = icmp eq ptr %.val99, null               ; 2 uses
  br i1 %.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.bv, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.as, %bb.ap
  %.sroa.01.0.in.i = phi i1 [ %i.bz, %bb.as ], [ %i.bv, %bb.ap ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val96) ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.val96, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !152
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.au, label %.split206

bb.as:                                            ; preds = %bb.aq
  %i.bz = icmp eq ptr %.val97, %.val99
  br label %bb.ar

bb.at:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val96) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val96, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !152
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.av, label %.split206.thread

bb.au:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.val98, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !152
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6ptr_eq17hdacffd6a1b7c9a9aE.exit", label %.split206

.split206.thread:                                 ; preds = %bb.av, %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98) ]
  br label %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread

.split206:                                        ; preds = %bb.au, %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98) ]
  %i.cg = icmp eq ptr %.val96, %.val98
  %i.ch = select i1 %.sroa.01.0.in.i, i1 %i.cg, i1 false
  br i1 %i.ch, label %.critedge, label %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread

bb.av:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val98, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !152
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread, label %.split206.thread

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6ptr_eq17hdacffd6a1b7c9a9aE.exit": ; preds = %bb.au
  br i1 %.sroa.01.0.in.i, label %.critedge, label %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit.thread

bb.aw:                                            ; preds = %bb.by, %thread-pre-split, %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  switch i8 %.sink.i106, label %bb.de [
    i8 6, label %bb.df
    i8 7, label %bb.dg
  ]

bb.ax:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  switch i8 %.sink.i106, label %bb.de [
    i8 0, label %bb.bf
    i8 6, label %bb.df
    i8 7, label %bb.dg
  ]

bb.ay:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  switch i8 %.sink.i106, label %bb.de [
    i8 1, label %bb.bg
    i8 6, label %bb.df
    i8 7, label %bb.dg
  ]

bb.az:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  switch i8 %.sink.i106, label %bb.de [
    i8 3, label %bb.bh
    i8 6, label %bb.df
    i8 7, label %bb.dg
  ]

bb.ba:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  switch i8 %.sink.i106, label %bb.de [
    i8 4, label %bb.bt
    i8 6, label %bb.df
    i8 7, label %bb.dg
  ]

bb.bb:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  %.pr.pre = load i64, ptr %.sroa.5.0, align 8    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %5 = icmp ne i64 %.pr.pre, -9223372036854775756
  tail call void @llvm.assume(i1 %5)
  %cond258 = icmp eq i64 %.pr.pre, -9223372036854775760 ; 2 uses
  br i1 %i.br, label %bb.by, label %thread-pre-split

bb.bc:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  switch i8 %.sink.i106, label %bb.de [
    i8 9, label %bb.cw
    i8 6, label %bb.df
    i8 7, label %bb.dg
  ]

bb.bd:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  switch i8 %.sink.i106, label %bb.de [
    i8 11, label %bb.dc
    i8 6, label %bb.df
    i8 7, label %bb.dg
  ]

bb.be:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E.exit108
  switch i8 %.sink.i106, label %bb.de [
    i8 13, label %bb.dd
    i8 6, label %bb.df
    i8 7, label %bb.dg
  ]

bb.bf:                                            ; preds = %bb.bo, %bb.du, %bb.ax, %.thread226, %.split215, %bb.gg, %bb.gf, %bb.ge, %bb.fv, %bb.gd, %bb.gc, %bb.gb, %bb.fu, %.thread213, %bb.fp, %.thread222, %bb.fs, %bb.ft, %bb.fz, %bb.ff, %bb.fd, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.es, %bb.eq, %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %bb.ep, %bb.fb, %bb.fc, %bb.dt, %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit112, %bb.da, %bb.cx, %bb.cy, %thread-pre-split.thread, %bb.bw, %bb.bv, %bb.bp, %bb.bk, %bb.bj, %bb.fg, %bb.fe, %bb.ez, %bb.et, %bb.fa, %bb.fi, %bb.er, %.thread218, %bb.db, %.thread210, %bb.bx, %bb.bq, %.critedge76, %.critedge74, %bb.ds, %bb.dd, %bb.dc, %bb.cz, %bb.cd, %bb.bg
  %.sroa.0.0 = phi i8 [ %.sroa.0.7, %.critedge74 ], [ 0, %bb.ff ], [ 0, %bb.fu ], [ 0, %.thread213 ], [ %.sroa.0.8, %.critedge76 ], [ 0, %bb.da ], [ %i.kh, %bb.ds ], [ 1, %_ZN16nickel_lang_core4eval5value11NickelValue7phys_eq17ha5a6e0f532bb4614E.exit112 ], [ %i.mr, %.thread218 ], [ 0, %bb.dt ], [ %i.ny, %bb.er ], [ 0, %bb.ei ], [ %i.of, %bb.et ], [ 0, %bb.eq ], [ %i.pi, %bb.ez ], [ 0, %bb.es ], [ %i.pm, %bb.fa ], [ %i.qb, %bb.fe ], [ 0, %bb.eu ], [ %i.qk, %bb.fg ], [ 0, %bb.fd ], [ %.sroa.0.6, %bb.fi ], [ %i.ie, %bb.dd ], [ %i.cn, %bb.bg ], [ %i.dq, %bb.bq ], [ 1, %bb.bj ], [ 1, %bb.ax ], [ %i.ea, %bb.bx ], [ 1, %bb.bv ], [ 0, %bb.du ], [ %.sroa.0.1, %bb.cd ], [ 0, %bb.bw ], [ %i.hj, %.thread210 ], [ %i.hy, %bb.db ], [ 0, %bb.cx ], [ 0, %thread-pre-split.thread ], [ %i.hr, %bb.cz ], [ %i.ic, %bb.dc ], [ 0, %bb.bk ], [ 0, %bb.bp ], [ 0, %bb.cy ], [ 0, %bb.fc ], [ 0, %bb.fb ], [ 0, %bb.ep ], [ 0, %bb.eo ], [ 0, %bb.en ], [ 0, %bb.em ], [ 0, %bb.el ], [ 0, %bb.ek ], [ 0, %bb.ej ], [ 0, %bb.ey ], [ 0, %bb.ex ], [ 0, %bb.ew ], [ 0, %bb.ev ], [ 0, %bb.fz ], [ 0, %bb.ft ], [ 0, %bb.fs ], [ 0, %.thread222 ], [ 0, %bb.fp ], [ %i.tv, %bb.gd ], [ 0, %bb.gc ], [ 0, %bb.gb ], [ %i.uh, %bb.gg ], [ 0, %bb.gf ], [ 0, %bb.ge ], [ 0, %bb.fv ], [ 1, %.split215 ], [ 0, %bb.bo ], [ 0, %.thread226 ]
  %i.cl = trunc nuw i8 %.sroa.0.0 to i1
  br label %.critedge

bb.bg:                                            ; preds = %bb.ay
  %i.cm = icmp eq i8 %.sroa.2.0, %.sroa.10.0
  %i.cn = zext i1 %i.cm to i8
  br label %bb.bf

bb.bh:                                            ; preds = %bb.az
  %.not55 = icmp eq ptr %.sroa.5.0, null
  %.not56 = icmp eq ptr %.sroa.13.0, null         ; 2 uses
  br i1 %.not55, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not56, label %.thread226, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  br i1 %.not56, label %bb.bf, label %.thread226

bb.bk:                                            ; preds = %bb.bi
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 56
  %i.cp = load i64, ptr %i.co, align 8, !noundef !152
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !152 ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 56 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !152
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 48 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !152
  %i.cx = sub i64 %i.cu, %i.cw
  %i.cy = icmp eq i64 %i.cs, %i.cx
  br i1 %i.cy, label %bb.bl, label %bb.bf

bb.bl:                                            ; preds = %bb.bk
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$16iter_starting_at17h302c953887bdcd7bE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da, i64 noundef %i.cr)
  %.sroa.0183.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5184.0.copyload = load ptr, ptr %.sroa.5184.0..sroa_idx, align 8 ; 3 uses
  %i.db = load i64, ptr %i.ct, align 8, !noundef !152
  %i.dc = load i64, ptr %i.cv, align 8, !noundef !152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$16iter_starting_at17h302c953887bdcd7bE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz, i64 noundef %i.dc)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40797)
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.8.16..sroa.6.0..sroa_idx6.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.cs, ptr %.sroa.8.16..sroa.6.0..sroa_idx6.i.sroa_idx, align 8, !alias.scope !40798
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40800)
  store i64 %.sroa.0183.0.copyload, ptr %i.k, align 8, !alias.scope !40801
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5184.0.copyload, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !40801
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i64 %i.dd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !40802
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !alias.scope !40803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 8
  %i.dg = invoke fastcc noundef zeroext i1 @_ZN4core4iter6traits8iterator8Iterator8try_fold17hd829db7216fb8d3bE(ptr noalias noundef align 8 dereferenceable(112) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..zip..Zip$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h83268c7b7019ddfcE"(ptr noalias noundef align 8 dereferenceable(112) %i.k) #86
  br label %common.resume259

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..zip..Zip$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h83268c7b7019ddfcE"(ptr noalias noundef align 8 dereferenceable(112) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.dg, label %bb.bf, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noundef !152 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 57646075230342349
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp eq i64 %i.dj, 0
  br i1 %i.dl, label %bb.bq, label %bb.bf

bb.bq:                                            ; preds = %bb.bp
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !152 ; 2 uses
  %i.do = icmp ult i64 %i.dn, 57646075230342349
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = icmp eq i64 %i.dn, 0
  %i.dq = zext i1 %i.dp to i8
  br label %bb.bf

common.resume259:                                 ; preds = %bb.ef, %bb.eg, %bb.bn, %bb.bs, %bb.br, %bb.fx, %bb.fn, %bb.do, %bb.ch, %common.resume.i
  %common.resume259.op = phi { ptr, i32 } [ %i.hf, %common.resume.i ], [ %i.ml, %bb.eg ], [ %i.mg, %bb.ef ], [ %i.rx, %bb.fn ], [ %i.te, %bb.fx ], [ %.pn63, %bb.do ], [ %i.dh, %bb.bn ], [ %.pn, %bb.ch ], [ %i.dr, %bb.br ], [ %i.dr, %bb.bs ]
  resume { ptr, i32 } %common.resume259.op

bb.br:                                            ; preds = %bb.bl
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = icmp eq i64 %.sroa.0183.0.copyload, 0
  br i1 %i.ds, label %common.resume259, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dt = shl nuw i64 %.sroa.0183.0.copyload, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5184.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5184.0.copyload, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) 8) #83
  br label %common.resume259

bb.bt:                                            ; preds = %bb.ba
  %.not52 = icmp eq ptr %.sroa.5.0, null
  %.not53 = icmp eq ptr %.sroa.13.0, null         ; 2 uses
  br i1 %.not52, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %.not53, label %.thread226, label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  br i1 %.not53, label %bb.bf, label %.thread226

bb.bw:                                            ; preds = %bb.bu
  %i.du = tail call fastcc noundef zeroext i1 @_ZN16nickel_lang_core4eval11contract_eq6map_eq17h8d3a686477b4a29cE(ptr noalias noundef align 1 dereferenceable(1) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.5.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.13.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
  br i1 %i.du, label %bb.bx, label %bb.bf

bb.bx:                                            ; preds = %bb.bw
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 80
  %i.dw = load i8, ptr %i.dv, align 8, !range !160, !noundef !152
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 80
  %i.dy = load i8, ptr %i.dx, align 8, !range !160, !noundef !152
  %i.dz = icmp eq i8 %i.dw, %i.dy
  %i.ea = zext i1 %i.dz to i8
  br label %bb.bf

bb.by:                                            ; preds = %bb.bb
  br i1 %cond258, label %bb.bz, label %bb.aw

thread-pre-split:                                 ; preds = %bb.bb
  br i1 %cond258, label %thread-pre-split.thread, label %bb.aw

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0) ]
  %i.eb = load i64, ptr %.sroa.13.0, align 8, !range !177, !noundef !152 ; 2 uses
  %i.ec = icmp ne i64 %i.eb, -9223372036854775756
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp eq i64 %i.eb, -9223372036854775760
  br i1 %i.ed, label %bb.ca, label %thread-pre-split.thread

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 24
  %i.ef = load i32, ptr %i.ee, align 8, !noundef !152 ; 2 uses
  store i32 %i.ef, ptr %i.i, align 4
  %i.eg = call fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17he670d6d1163e43d6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 24
  %i.ei = load i32, ptr %i.eh, align 8, !noundef !152 ; 2 uses
  store i32 %i.ei, ptr %i.h, align 4
  %i.ej = call fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17he670d6d1163e43d6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h) ; 2 uses
  %.not48 = icmp eq ptr %i.eg, null
  %.not49 = icmp eq ptr %i.ej, null               ; 2 uses
  br i1 %.not48, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %.not49, label %bb.cd, label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %i.ek = icmp eq i32 %i.ef, %i.ei
  %spec.select = and i1 %i.ek, %.not49
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.cl
  %.sroa.0.1.shrunk = phi i1 [ %i.ez, %bb.cl ], [ false, %bb.cb ], [ %spec.select, %bb.cc ]
  %.sroa.0.1 = zext i1 %.sroa.0.1.shrunk to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bf

bb.ce:                                            ; preds = %bb.cb
  %i.el = load i8, ptr %0, align 1, !noundef !152 ; 2 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.critedge

bb.cg:                                            ; preds = %bb.ce
  %i.en = add i8 %i.el, -1
  store i8 %i.en, ptr %0, align 1
  %.val81 = load ptr, ptr %i.eg, align 8, !nonnull !152, !noundef !152
  %i.eo = tail call fastcc { ptr, ptr } @_ZN16nickel_lang_core4eval5cache4lazy5Thunk6borrow17h91f474e29b46217cE(ptr nonnull %.val81) ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.eo, 1      ; 6 uses
  %.val80 = load ptr, ptr %i.ej, align 8, !nonnull !152, !noundef !152
  %i.eq = invoke fastcc { ptr, ptr } @_ZN16nickel_lang_core4eval5cache4lazy5Thunk6borrow17h91f474e29b46217cE(ptr nonnull %.val80)
          to label %bb.cj unwind label %bb.ci     ; 2 uses

bb.ch:                                            ; preds = %bb.ck, %bb.ci
  %.pn = phi { ptr, i32 } [ %i.et, %bb.ci ], [ %i.fa, %bb.ck ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.er = load i64, ptr %i.ep, align 8, !noundef !152
  %i.es = add i64 %i.er, -1
  store i64 %i.es, ptr %i.ep, align 8
  br label %common.resume259

bb.ci:                                            ; preds = %bb.cg
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cj:                                            ; preds = %bb.cg
  %i.eu = extractvalue { ptr, ptr } %i.eo, 0      ; 3 uses
  %i.ev = extractvalue { ptr, ptr } %i.eq, 0      ; 2 uses
  %i.ew = extractvalue { ptr, ptr } %i.eq, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = invoke fastcc noundef zeroext i1 @_ZN16nickel_lang_core4eval11contract_eq19contract_eq_bounded17h7e63f4260e7f4aa0E(ptr noalias noundef align 1 dereferenceable(1) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  %i.fb = load i64, ptr %i.ew, align 8, !noundef !152
  %i.fc = add i64 %i.fb, -1
  store i64 %i.fc, ptr %i.ew, align 8
  br label %bb.ch

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  %i.fd = load i64, ptr %i.ew, align 8, !noundef !152
  %i.fe = add i64 %i.fd, -1
  store i64 %i.fe, ptr %i.ew, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.ff = load i64, ptr %i.ep, align 8, !noundef !152
  %i.fg = add i64 %i.ff, -1
  store i64 %i.fg, ptr %i.ep, align 8
  br label %bb.cd

thread-pre-split.thread:                          ; preds = %bb.bz, %thread-pre-split
  %i.fh = load i8, ptr %0, align 1, !noundef !152 ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.bf, label %bb.cm

bb.cm:                                            ; preds = %thread-pre-split.thread
  %i.fj = add i8 %i.fh, -1
  store i8 %i.fj, ptr %0, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 24
  %i.fl = load i32, ptr %i.fk, align 8, !noundef !152 ; 2 uses
  store i32 %i.fl, ptr %i.g, align 4
  br label %bb.cn

bb.cn:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h559f9a5e63cb23e3E.exit.i.i", %bb.cm
  %.sroa.03.0.i1720.i.i = phi ptr [ %2, %bb.cm ], [ %i.fp, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h559f9a5e63cb23e3E.exit.i.i" ] ; 2 uses
  %i.fm = load ptr, ptr %.sroa.03.0.i1720.i.i, align 8, !noalias !40804, !nonnull !152, !noundef !152 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1720.i.i, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !40804, !noundef !152 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fo, null
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40807)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !40808, !noalias !40809, !noundef !152
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h559f9a5e63cb23e3E.exit.i.i", label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !40808, !noalias !40809, !noundef !152
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.fv, align 8, !alias.scope !40808, !noalias !40809, !noundef !152
  %i.fw = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h30bbdea1b81a5b58E(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !40810 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40812)
  %i.fx = lshr i64 %i.fw, 57
  %i.fy = trunc nuw nsw i64 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !40813, !noalias !40809, !noundef !152 ; 2 uses
  %i.gb = load ptr, ptr %i.ft, align 8, !alias.scope !40813, !noalias !40809, !nonnull !152, !noundef !152 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.fy, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cr, %bb.co
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.co ], [ %i.gs, %bb.cr ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.fw, %bb.co ], [ %i.gt, %bb.cr ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.gc, align 1, !noalias !40814 ; 2 uses
  %i.gd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.ge = bitcast <16 x i1> %i.gd to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.ge, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cp, %bb.cq
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.gr, %bb.cq ], [ %i.ge, %bb.cp ] ; 3 uses
  %i.gf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.gg = zext nneg i16 %i.gf to i64
  %i.gh = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.gg
  %i.gi = and i64 %i.gh, %i.ga
  %i.gj = sub nsw i64 0, %i.gi
  %i.gk = getelementptr inbounds [16 x i8], ptr %i.gb, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -16
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.gl, align 4, !noalias !40815, !noundef !152
  %i.gm = icmp eq i32 %i.fl, %.val3.i.i.i.i.i.i.i
  br i1 %i.gm, label %bb.cs, label %bb.cq, !prof !161

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.cq, %bb.cp
  %i.gn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.go = bitcast <16 x i1> %i.gn to i16
  %i.gp = icmp eq i16 %i.go, 0
  br i1 %i.gp, label %bb.cr, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h559f9a5e63cb23e3E.exit.i.i", !prof !154

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gq = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.gr = and i16 %i.gq, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.gr, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.cr:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gs = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.gt = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.gs
  br label %bb.cp

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h559f9a5e63cb23e3E.exit.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.cn
  br i1 %.not4.i.i.i, label %.thread210, label %bb.cn

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gu = getelementptr inbounds i8, ptr %i.gk, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40816)
  %.val.i258 = load ptr, ptr %i.gu, align 8, !alias.scope !40816, !nonnull !152, !noundef !152 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i258, i64 16 ; 6 uses
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !40817, !noundef !152 ; 2 uses
  %i.gx = icmp ult i64 %i.gw, 9223372036854775807
end_hunk_4
