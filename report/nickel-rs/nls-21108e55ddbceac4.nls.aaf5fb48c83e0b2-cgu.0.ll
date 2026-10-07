Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@"_ZN16nickel_lang_core7program17Program$LT$EC$GT$20eval_full_for_export17h22b6287959355729E":bb.a
  br i1 %i.aco, label %.body, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.acp = load i64, ptr %i.acn, align 8, !noalias !35545, !noundef !44
  %i.acq = add i64 %i.acp, -1                     ; 2 uses
  store i64 %i.acq, ptr %i.acn, align 8, !noalias !35545
  %i.acr = icmp eq i64 %i.acq, 0
  br i1 %i.acr, label %bb.lh, label %.body

bb.lh:                                            ; preds = %bb.lg
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i)
          to label %.body unwind label %bb.lk, !noalias !35538

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i.i": ; preds = %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i_crit_edge.i", %bb.ld
  %i.acs = phi ptr [ %.pre.i, %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i_crit_edge.i" ], [ %i.aci, %bb.ld ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35546)
  %i.act = icmp eq ptr %i.acs, null
  br i1 %i.act, label %bb.lo, label %bb.li

bb.li:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i.i"
  %i.acu = load i64, ptr %i.acs, align 8, !noalias !35547, !noundef !44
  %i.acv = add i64 %i.acu, -1                     ; 2 uses
  store i64 %i.acv, ptr %i.acs, align 8, !noalias !35547
  %i.acw = icmp eq i64 %i.acv, 0
  br i1 %i.acw, label %bb.lj, label %bb.lo

bb.lj:                                            ; preds = %bb.li
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i)
          to label %bb.lo unwind label %bb.lm

bb.lk:                                            ; preds = %bb.lh
  %i.acx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !35538
  unreachable

bb.ll:                                            ; preds = %bb.lc
  %i.acy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !35538
  unreachable

bb.lm:                                            ; preds = %bb.lj, %.noexc.i.i23
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.thread.i.i, %bb.kz, %bb.lc, %bb.lf, %bb.lg, %bb.lh, %bb.lm
  %eh.lpad-body = phi { ptr, i32 } [ %i.acz, %bb.lm ], [ %i.aby, %bb.kz ], [ %i.abx, %.body.thread.i.i ], [ %i.acm, %bb.lf ], [ %i.acm, %bb.lh ], [ %i.acm, %bb.lg ], [ %i.ach, %bb.lc ]
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$17h0af201ad9c8813a9E"(ptr noalias noundef align 8 dereferenceable(72) %i.cy) #77
          to label %common.resume unwind label %bb.lq

bb.ln:                                            ; preds = %bb.ky
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.abv, i64 noundef 392, i64 noundef 8) #66, !noalias !35536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  store i64 0, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abw, ptr %.sroa.417.0..sroa_idx, align 8
  call fastcc void @"_ZN4core3ptr148drop_in_place$LT$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$17h0af201ad9c8813a9E"(ptr noalias noundef align 8 dereferenceable(72) %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lj, %bb.li, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.acg, ptr %i.ada, align 8
  store i64 7, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr148drop_in_place$LT$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$17h0af201ad9c8813a9E"(ptr noalias noundef align 8 dereferenceable(72) %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.lp

bb.lp:                                            ; preds = %bb.kw, %bb.ln, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  ret void

bb.lq:                                            ; preds = %bb.lr, %.body
  %i.adb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.lr:                                            ; preds = %bb.kx
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17haf00ed2c0fe3d677E"(ptr noalias noundef align 8 dereferenceable(24) %i.cz) #77
          to label %common.resume unwind label %bb.lq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN16nickel_lang_core9serialize100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$11deserialize17hf5bd992e2385d997E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [40 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [48 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 4 uses
  %i.ah = alloca [88 x i8], align 8               ; 4 uses
  %i.ai = alloca [20 x i8], align 4               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [72 x i8], align 8               ; 14 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35855)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 40 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !35856, !noalias !35857, !noundef !44 ; 11 uses
  %.promoted.i48 = load i64, ptr %i.ay, align 8, !alias.scope !35855, !noalias !35858 ; 2 uses
  %i.bb = icmp ult i64 %.promoted.i48, %i.ba
  br i1 %i.bb, label %.lr.ph.i, label %.loopexit271

.lr.ph.i:                                         ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !35856, !noalias !35857, !nonnull !44, !align !57, !noundef !44 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.be = phi i64 [ %.promoted.i48, %.lr.ph.i ], [ %i.bh, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35860)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !35861, !noundef !44 ; 2 uses
  switch i8 %i.bg, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bh = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bh, ptr %i.ay, align 8, !alias.scope !35862, !noalias !35858
  %exitcond.not.i49 = icmp eq i64 %i.bh, %i.ba
  br i1 %exitcond.not.i49, label %.loopexit271, label %bb.b

.loopexit271:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !35854
  store i64 5, ptr %i.ax, align 8, !noalias !35854
  %i.bi = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h0a14d9ae1e318286E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax), !inline_history !35561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !35854
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.d:                                             ; preds = %bb.b
  %i.bj = add i8 %i.bg, -48
  %or.cond8.i = icmp ult i8 %i.bj, 10
  br i1 %or.cond8.i, label %bb.ec, label %bb.eb, !prof !104

bb.e:                                             ; preds = %bb.b
  %i.bk = add i64 %i.be, 1                        ; 4 uses
  store i64 %i.bk, ptr %i.ay, align 8, !alias.scope !35863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35864)
  %umax.i40 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bk) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35866)
  %exitcond.not.i42.not = icmp ult i64 %i.bk, %i.ba
  br i1 %exitcond.not.i42.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i46"

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !35867, !noundef !44
  %i.bn = add i64 %i.be, 2                        ; 3 uses
  store i64 %i.bn, ptr %i.ay, align 8, !alias.scope !35868, !noalias !35869
  %.not.i43 = icmp eq i8 %i.bm, 117
  br i1 %.not.i43, label %bb.g, label %bb.k, !prof !73

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35871)
  %exitcond.not.i42.1 = icmp eq i64 %i.bn, %umax.i40
  br i1 %exitcond.not.i42.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i46", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !35872, !noundef !44
  %i.bq = add i64 %i.be, 3                        ; 3 uses
  store i64 %i.bq, ptr %i.ay, align 8, !alias.scope !35873, !noalias !35869
  %.not.i43.1 = icmp eq i8 %i.bp, 108
  br i1 %.not.i43.1, label %bb.i, label %bb.k, !prof !73

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35875)
  %exitcond.not.i42.2 = icmp eq i64 %i.bq, %umax.i40
  br i1 %exitcond.not.i42.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i46", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noalias !35876, !noundef !44
  %i.bt = add i64 %i.be, 4
  store i64 %i.bt, ptr %i.ay, align 8, !alias.scope !35877, !noalias !35869
  %.not.i43.2 = icmp eq i8 %i.bs, 108
  br i1 %.not.i43.2, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit", label %bb.k, !prof !73

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i46": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35878
  store i64 5, ptr %i.q, align 8, !noalias !35878
  %i.bu = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hfa5e12b07cde97b5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !35879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !35878
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35878
  store i64 9, ptr %i.p, align 8, !noalias !35878
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hfa5e12b07cde97b5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !35879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !35878
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.l:                                             ; preds = %bb.b
  %i.bw = add i64 %i.be, 1                        ; 4 uses
  store i64 %i.bw, ptr %i.ay, align 8, !alias.scope !35880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35881)
  %umax.i31 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bw) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35883)
  %exitcond.not.i33.not = icmp ult i64 %i.bw, %i.ba
  br i1 %exitcond.not.i33.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i37"

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !35884, !noundef !44
  %i.bz = add i64 %i.be, 2                        ; 3 uses
  store i64 %i.bz, ptr %i.ay, align 8, !alias.scope !35885, !noalias !35886
  %.not.i34 = icmp eq i8 %i.by, 114
  br i1 %.not.i34, label %bb.n, label %bb.r, !prof !73

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35888)
  %exitcond.not.i33.1 = icmp eq i64 %i.bz, %umax.i31
  br i1 %exitcond.not.i33.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i37", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !35889, !noundef !44
  %i.cc = add i64 %i.be, 3                        ; 3 uses
  store i64 %i.cc, ptr %i.ay, align 8, !alias.scope !35890, !noalias !35886
  %.not.i34.1 = icmp eq i8 %i.cb, 117
  br i1 %.not.i34.1, label %bb.p, label %bb.r, !prof !73

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35892)
  %exitcond.not.i33.2 = icmp eq i64 %i.cc, %umax.i31
  br i1 %exitcond.not.i33.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i37", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !35893, !noundef !44
  %i.cf = add i64 %i.be, 4
  store i64 %i.cf, ptr %i.ay, align 8, !alias.scope !35894, !noalias !35886
  %.not.i34.2 = icmp eq i8 %i.ce, 101
  br i1 %.not.i34.2, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit", label %bb.r, !prof !73

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i37": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35895
  store i64 5, ptr %i.s, align 8, !noalias !35895
  %i.cg = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hfa5e12b07cde97b5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !35896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !35895
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !35895
  store i64 9, ptr %i.r, align 8, !noalias !35895
  %i.ch = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hfa5e12b07cde97b5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !35896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !35895
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.s:                                             ; preds = %bb.b
  %i.ci = add i64 %i.be, 1                        ; 4 uses
  store i64 %i.ci, ptr %i.ay, align 8, !alias.scope !35897
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35898)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ci) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35900)
  %exitcond.not.i.not = icmp ult i64 %i.ci, %i.ba
  br i1 %exitcond.not.i.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !35901, !noundef !44
  %i.cl = add i64 %i.be, 2                        ; 3 uses
  store i64 %i.cl, ptr %i.ay, align 8, !alias.scope !35902, !noalias !35903
  %.not.i27 = icmp eq i8 %i.ck, 97
  br i1 %.not.i27, label %bb.u, label %bb.aa, !prof !73

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35905)
  %exitcond.not.i.1 = icmp eq i64 %i.cl, %umax.i
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !35906, !noundef !44
  %i.co = add i64 %i.be, 3                        ; 3 uses
  store i64 %i.co, ptr %i.ay, align 8, !alias.scope !35907, !noalias !35903
  %.not.i27.1 = icmp eq i8 %i.cn, 108
  br i1 %.not.i27.1, label %bb.w, label %bb.aa, !prof !73

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35909)
  %exitcond.not.i.2 = icmp eq i64 %i.co, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !35910, !noundef !44
  %i.cr = add i64 %i.be, 4                        ; 3 uses
  store i64 %i.cr, ptr %i.ay, align 8, !alias.scope !35911, !noalias !35903
  %.not.i27.2 = icmp eq i8 %i.cq, 115
  br i1 %.not.i27.2, label %bb.y, label %bb.aa, !prof !73

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35913)
  %exitcond.not.i.3 = icmp eq i64 %i.cr, %umax.i
  br i1 %exitcond.not.i.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !35914, !noundef !44
  %i.cu = add i64 %i.be, 5
  store i64 %i.cu, ptr %i.ay, align 8, !alias.scope !35915, !noalias !35903
  %.not.i27.3 = icmp eq i8 %i.ct, 101
  br i1 %.not.i27.3, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit", label %bb.aa, !prof !73

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !35916
  store i64 5, ptr %i.u, align 8, !noalias !35916
  %i.cv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hfa5e12b07cde97b5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !35917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !35916
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35916
  store i64 9, ptr %i.t, align 8, !noalias !35916
  %i.cw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hfa5e12b07cde97b5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !35917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !35916
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.ab:                                            ; preds = %bb.b
  %i.cx = add i64 %i.be, 1
  store i64 %i.cx, ptr %i.ay, align 8, !alias.scope !35918
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hdf14e6e325da043bE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false), !inline_history !35561
  %i.cy = load i64, ptr %i.aw, align 8, !range !92, !noundef !44
  %i.cz = icmp eq i64 %i.cy, 3
  br i1 %i.cz, label %bb.af, label %bb.ag

bb.ac:                                            ; preds = %bb.b
  %i.da = add i64 %i.be, 1
  store i64 %i.da, ptr %i.ay, align 8, !alias.scope !35919
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.db, align 8, !alias.scope !35854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !35854
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h6b1e41533d5d0d0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(56) %0), !inline_history !35561
  %i.dc = load i64, ptr %i.au, align 8, !range !71, !noalias !35854, !noundef !44
  %i.dd = icmp eq i64 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !35854 ; 3 uses
  br i1 %i.dd, label %bb.ai, label %bb.aj

bb.ad:                                            ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 8, !alias.scope !35854, !noundef !44
  %i.di = add i8 %i.dh, -1                        ; 2 uses
  store i8 %i.di, ptr %i.dg, align 8, !alias.scope !35854
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.ar, label %bb.as, !prof !49

bb.ae:                                            ; preds = %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.dl = load i8, ptr %i.dk, align 8, !alias.scope !35854, !noundef !44
  %i.dm = add i8 %i.dl, -1                        ; 2 uses
  store i8 %i.dm, ptr %i.dk, align 8, !alias.scope !35854
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.cb, label %bb.cc, !prof !49

bb.af:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !44, !align !50, !noundef !44
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.ag:                                            ; preds = %bb.ab
  %i.dq = call fastcc { i64, ptr } @_ZN10serde_json2de12ParserNumber5visit17hb1737b16349b22a0E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %i.aw) ; 2 uses
  %i.dr = extractvalue { i64, ptr } %i.dq, 0
  %i.ds = extractvalue { i64, ptr } %i.dq, 1      ; 3 uses
  %i.dt = trunc nuw i64 %i.dr to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  br i1 %i.dt, label %bb.ah, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit", !prof !49

bb.ah:                                            ; preds = %bb.ag
  %i.du = tail call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfe844347d0590023E(ptr noalias noundef nonnull align 8 %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.ai:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !35854
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.aj:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !35854 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dv = icmp slt i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.dv, label %bb.al, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.aj
  %i.dw = icmp eq i64 %.sroa.4.0.copyload.i, 0    ; 2 uses
  br i1 %i.dw, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i", label %bb.ak

bb.ak:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !35920
  %i.dx = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #66, !noalias !35920 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.al, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i"

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.ak ], [ 0, %bb.aj ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75, !noalias !35921
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i": ; preds = %bb.ak, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.dx, %bb.ak ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.df, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !35922
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !35923
  %i.dz = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #66, !noalias !35923 ; 7 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ao, label %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h8430fe579c1411dcE.exit", !prof !49

bb.am:                                            ; preds = %bb.ao
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dw, label %common.resume577, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !35924
  br label %common.resume577

bb.ao:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35923
  store ptr @363, ptr %i.b, align 8, !noalias !35923
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ec, align 8, !noalias !35923
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ed, align 8, !noalias !35923
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ee, align 8, !noalias !35923
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ef, align 8, !noalias !35923
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.ap unwind label %bb.am, !noalias !35923

bb.ap:                                            ; preds = %bb.ao
  unreachable

common.resume577:                                 ; preds = %bb.bz, %bb.ea, %.body.i.thread, %bb.bc, %bb.bb, %.thread201, %bb.df, %bb.de, %bb.dv, %.body, %bb.am, %bb.an
  %common.resume577.op = phi { ptr, i32 } [ %i.eb, %bb.am ], [ %i.eb, %bb.an ], [ %i.kq, %bb.de ], [ %i.mb, %bb.dv ], [ %i.hn, %bb.bz ], [ %i.fj, %bb.bb ], [ %eh.lpad-body, %.body ], [ %i.mm, %bb.ea ], [ %eh.lpad-body.i144, %.body.i.thread ], [ %i.fj, %bb.bc ], [ %.pn.i4205, %.thread201 ], [ %i.kq, %bb.df ]
  resume { ptr, i32 } %common.resume577.op

"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h8430fe579c1411dcE.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i"
  store i64 216172782113783809, ptr %i.dz, align 8, !noalias !35923
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 -1, ptr %i.eg, align 8, !noalias !35923
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %i.eh, align 8, !noalias !35925
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !35925
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !35925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !35854
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

end_hunk_0
begin_hunk_1_@_ZN4core4iter6traits8iterator8Iterator8find_map17hb291ecabd4d54a34E:bb.a
  %i.k = phi ptr [ %.promoted, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i.lr.ph" ], [ %i.l, %bb.l ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93051), !noalias !93052
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !93048, !noalias !93049
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !93053 ; 5 uses
  %.not.i4 = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775808
  br i1 %.not.i4, label %"_ZN4core3ptr108drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$17h2b2ef479273bd9beE.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i"
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.63.0.copyload.i = load i32, ptr %.sroa.63.0..sroa_idx.i, align 8, !noalias !93053
  %.sroa.9.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !93054, !nonnull !44, !noundef !44 ; 4 uses
  %.sroa.9.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.9.sroa.6.0.copyload = load i64, ptr %.sroa.9.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !noalias !93054 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93055
  %i.m = icmp ult i64 %.sroa.9.sroa.6.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m), !noalias !93056
  %i.n = shl nuw i64 %.sroa.9.sroa.6.0.copyload, 4 ; 2 uses
  %i.o = icmp samesign ugt i64 %.sroa.9.sroa.6.0.copyload, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %.sroa.9.sroa.6.0.copyload, 0
  br i1 %i.p, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !93057, !inline_history !93018
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #66, !noalias !93057, !inline_history !93018 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.c
  %i.s = add nuw nsw i64 %.sroa.9.sroa.6.0.copyload, 2305843009213693951
  %i.t = and i64 %i.s, 2305843009213693951        ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp samesign ult i64 %i.t, 3
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.u, 4611686018427387900
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #75
          to label %.noexc.i.i.i.i.i.i unwind label %bb.f, !noalias !93058, !inline_history !93018

.noexc.i.i.i.i.i.i:                               ; preds = %bb.d
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.w = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.x = phi ptr [ %.sroa.9.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.y = load ptr, ptr %i.x, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  store ptr %i.y, ptr %i.aa, align 8, !noalias !93060
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %i.ab, align 8, !noalias !93061
  %i.ac = load ptr, ptr %i.z, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ac, ptr %i.af, align 8, !noalias !93060
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.ag, align 8, !noalias !93061
  %i.ah = load ptr, ptr %i.ad, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ah, ptr %i.ak, align 8, !noalias !93060
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 0, ptr %i.al, align 8, !noalias !93061
  %i.am = load ptr, ptr %i.ai, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr %i.am, ptr %i.ap, align 8, !noalias !93060
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store i64 0, ptr %i.aq, align 8, !noalias !93061
  %i.ar = add nuw nsw i64 %i.w, 4                 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ar, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init122 = phi ptr [ %.sroa.9.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.an, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod124 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod124)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.as = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.at = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init122, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.au = load ptr, ptr %i.at, align 8, !noalias !93059, !nonnull !44, !align !50, !noundef !44
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.as ; 2 uses
  store ptr %i.au, ptr %i.aw, align 8, !noalias !93060
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 0, ptr %i.ax, align 8, !noalias !93061
  %i.ay = add nuw nsw i64 %i.as, 1                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !93043

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i.i87 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.9.sroa.6.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.9.sroa.6.0.copyload, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %.sroa.10.0.i.i.i.i.i.i.i86 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.q, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.val6.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ar, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.az, label %_ZN4core4iter6traits8iterator8Iterator7collect17h8e26fa24a91651fdE.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = shl nuw i64 %.sroa.0.0.copyload.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !93062, !inline_history !93018
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h8e26fa24a91651fdE.exit.i

common.resume:                                    ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.f ], [ %i.bb, %bb.g ], [ %i.bf, %bb.i ], [ %i.bf, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.bc, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = shl nuw i64 %.sroa.0.0.copyload.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !93063, !inline_history !93018
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17h8e26fa24a91651fdE.exit.i: ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.be = load i64, ptr %i.j, align 8, !noalias !93064, !noundef !44
  invoke fastcc void @_ZN3nls8requests7symbols18def_pieces_symbols17h95cc32790c568455E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(856) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h, i32 noundef %.sroa.63.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i.i.i86, i64 noundef %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.be)
          to label %bb.j unwind label %bb.h, !noalias !93065, !inline_history !93018

bb.h:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h8e26fa24a91651fdE.exit.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i.i87, 0
  br i1 %i.bg, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i.i87, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i86, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !93064, !inline_history !93018
  br label %common.resume

bb.j:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h8e26fa24a91651fdE.exit.i
  %i.bi = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i.i87, 0
  br i1 %i.bi, label %"_ZN3nls8requests7symbols14record_symbols28_$u7b$$u7b$closure$u7d$$u7d$17hffeb7b5f6866d3fbE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i.i87, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i86, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !93064, !inline_history !93018
  br label %"_ZN3nls8requests7symbols14record_symbols28_$u7b$$u7b$closure$u7d$$u7d$17hffeb7b5f6866d3fbE.exit"

"_ZN3nls8requests7symbols14record_symbols28_$u7b$$u7b$closure$u7d$$u7d$17hffeb7b5f6866d3fbE.exit": ; preds = %bb.j, %bb.k
  %i.bk = load i64, ptr %i.a, align 8, !range !70, !noalias !93055, !noundef !44 ; 2 uses
  %.not.i3 = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not.i3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN3nls8requests7symbols14record_symbols28_$u7b$$u7b$closure$u7d$$u7d$17hffeb7b5f6866d3fbE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93055
  %i.bl = icmp eq ptr %i.l, %i.c
  br i1 %i.bl, label %"_ZN4core3ptr108drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$17h2b2ef479273bd9beE.exit", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i"

bb.m:                                             ; preds = %"_ZN3nls8requests7symbols14record_symbols28_$u7b$$u7b$closure$u7d$$u7d$17hffeb7b5f6866d3fbE.exit"
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.578.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.425.0..sroa_idx, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93055
  br label %"_ZN4core3ptr108drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$17h2b2ef479273bd9beE.exit"

"_ZN4core3ptr108drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$lsp_types..document_symbols..DocumentSymbol$GT$$GT$17h2b2ef479273bd9beE.exit": ; preds = %bb.l, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i", %bb.a, %bb.m
  %.lcssa95.sink = phi i64 [ %i.bk, %bb.m ], [ -9223372036854775808, %bb.a ], [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2144e16acfd173E.exit.i" ], [ -9223372036854775808, %bb.l ]
  store i64 %.lcssa95.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN4core4iter6traits8iterator8Iterator8try_fold17hf5f397e1439191f1E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !93076, !noundef !44 ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8, !alias.scope !93076 ; 3 uses
  %.val2.i.i = load ptr, ptr %0, align 8, !nonnull !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !nonnull !44
  %umax = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %.promoted)
  %exitcond.not17.not = icmp ult i64 %.promoted, %i.c
  br i1 %exitcond.not17.not, label %.lr.ph, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread"

bb.b:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit"
  %exitcond.not = icmp eq i64 %i.f, %umax
  br i1 %exitcond.not, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread.loopexit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.f, %bb.b ], [ %.promoted, %bb.a ] ; 5 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !93076
  %i.g = getelementptr inbounds nuw [160 x i8], ptr %.val2.i.i, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !93077, !noalias !93078, !noundef !44 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit", label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread.loopexit"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit": ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.n = tail call noundef zeroext i1 @_ZN16nickel_lang_core4eval11contract_eq11contract_eq17he6c330c435fcc7dcE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.n, label %bb.b, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread.loopexit"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread.loopexit": ; preds = %bb.b, %.lr.ph, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit"
  %.lcssa.ph = phi i64 [ %i.e, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit" ], [ %i.e, %.lr.ph ], [ %i.f, %bb.b ]
  %i.o = icmp ult i64 %.lcssa.ph, %i.c
  br label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread.loopexit", %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.o, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h027beda9eeb0c1ecE.exit.thread.loopexit" ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17heeb6afacebb2cb20E(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !70, !noundef !44 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93086)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !93087, !noundef !44 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i": ; preds = %bb.b
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !93087
  %i.h = tail call fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h475e57f9373884e3E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i._crit_edge", label %bb.c

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i._crit_edge": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i"
  %.val.pre = load i64, ptr %0, align 8, !range !70
  br label %bb.h

bb.c:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !93088 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i.i = load i32, ptr %i.j, align 8, !alias.scope !93088
  %.val4.i.i = load ptr, ptr %i.h, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.k = ptrtoint ptr %.val4.i.i to i64
  %i.l = and i64 %i.k, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2)
  switch i64 %..i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h87c758f185e9878dE.exit [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !54

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %.val4.i.i, align 8, !noundef !44 ; 3 uses
  %i.n = and i64 %i.m, 72057594037927935          ; 3 uses
  %i.o = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  %i.q = and i64 %i.m, 1080863910568919040
  %i.r = icmp ult i64 %i.m, 864691128455135232
  tail call void @llvm.assume(i1 %i.r)
  %i.s = or i64 %i.p, %i.q
  store i64 %i.s, ptr %.val4.i.i, align 8
  %i.t = icmp eq i64 %i.n, 72057594037927935
  br i1 %i.t, label %bb.f, label %_ZN4core3ops8function6FnOnce9call_once17h87c758f185e9878dE.exit, !prof !49

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93088
  store ptr @2307, ptr %i.b, align 8, !noalias !93088
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.u, align 8, !noalias !93088
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.v, align 8, !noalias !93088
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !93088
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.x, align 8, !noalias !93088
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
  unreachable

_ZN4core3ops8function6FnOnce9call_once17h87c758f185e9878dE.exit: ; preds = %bb.c, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !44
  %i.ac = getelementptr inbounds nuw [160 x i8], ptr %i.z, i64 %i.ab
  %i.ad = tail call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17h63f738ca9f4efae3E(ptr noundef nonnull %.val4.i.i, ptr noundef nonnull %i.z, ptr noundef %i.ac, i32 noundef %.val3.i.i)
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69bc26eb9594eae6E.exit", %_ZN4core3ops8function6FnOnce9call_once17h87c758f185e9878dE.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ad, %_ZN4core3ops8function6FnOnce9call_once17h87c758f185e9878dE.exit ], [ null, %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69bc26eb9594eae6E.exit" ]
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i._crit_edge", %bb.b
  %.val = phi i64 [ %.val.pre, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1475e9d363ba5e2cE.exit.i.i._crit_edge" ], [ %i.c, %bb.b ] ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.i, label %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69bc26eb9594eae6E.exit"

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.ae, align 8, !nonnull !44, !noundef !44
  %i.af = shl nuw i64 %.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69bc26eb9594eae6E.exit"

"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69bc26eb9594eae6E.exit": ; preds = %bb.h, %bb.i
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core5clone5Clone10clone_from17h3f52dce1b619830bE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93110)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !93111, !noalias !93112, !noundef !44 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN79_$LT$hashbrown..table..HashTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbc0fe8eafe2c4f8dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %bb.c, !prof !79

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17                     ; 2 uses
  %i.j = add i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %bb.d, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i, !prof !69

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !93113
  %i.m = tail call noalias noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !93113 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h1a78b920beaca913E.exit.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93113
  store ptr @2484, ptr %i.a, align 8, !noalias !93113
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.o, align 8, !noalias !93113
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.p, align 8, !noalias !93113
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !93113
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.r, align 8, !noalias !93113
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2486) #75, !noalias !93113
  unreachable

bb.e:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef %i.j) #75, !noalias !93113
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h1a78b920beaca913E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93114)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !93115, !noalias !93116, !nonnull !44, !noundef !44 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.s, ptr nonnull align 1 %i.t, i64 %i.i, i1 false), !noalias !93117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93118)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !93119, !noalias !93120, !noundef !44 ; 3 uses
end_hunk_1
