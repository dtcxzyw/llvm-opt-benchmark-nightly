Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_utils-90b9802b57eaafeb.nickel_lang_utils.bc94d49b1cb31a83-cgu.0?download=true
inline.NumInlined: 8202
inline.NumDeleted: 3888
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h5b1004cc67eb92fcE":bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  store ptr %5, ptr %i.p, align 8
  %i.q = invoke noundef zeroext i1 @_ZN16nickel_lang_core4eval5value11NickelValue11is_constant17hd3edc4628acef653E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.b unwind label %.body.thread68

.body.thread68:                                   ; preds = %bb.q, %bb.a, %bb.u, %bb.t, %bb.k, %bb.am, %bb.c, %bb.ac, %bb.ak
  %.sroa.018.0.ph = phi i1 [ true, %bb.ak ], [ true, %bb.ac ], [ true, %bb.c ], [ true, %bb.am ], [ true, %bb.k ], [ true, %bb.t ], [ false, %bb.u ], [ true, %bb.a ], [ true, %bb.q ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.h unwind label %.body.thread68

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.r = load i64, ptr %i.l, align 8, !range !29, !alias.scope !477, !noundef !15
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h2f4ca8b1e7df57f5E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.t = load ptr, ptr %i.p, align 8, !alias.scope !479, !noundef !15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h2f4ca8b1e7df57f5E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.t, align 8, !noalias !480, !noundef !15
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !noalias !480
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h2f4ca8b1e7df57f5E.exit"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h2f4ca8b1e7df57f5E.exit" unwind label %bb.ab

bb.h:                                             ; preds = %bb.c
  %i.x = load i8, ptr %i.k, align 8, !range !31, !noundef !15
  switch i8 %i.x, label %bb.i [
    i8 6, label %bb.j
    i8 7, label %bb.n
  ]

bb.i:                                             ; preds = %bb.ad, %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit", %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit36", %bb.n, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load <2 x ptr>, ptr %i.m, align 16
  store <2 x ptr> %i.z, ptr %i.y, align 8
  %i.aa = load i64, ptr %i.l, align 8, !range !29, !noundef !15
  %i.ab = load ptr, ptr %i.p, align 8
  %i.ac = call noundef nonnull ptr @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3add17h1f5d73ab6a0e0d6aE"(ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.aa, ptr %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit"

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !15, !align !22, !noundef !15
  %.val = load ptr, ptr %i.ae, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !15 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #41
          to label %.noexc28 unwind label %.body.thread68

.noexc28:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = add nuw nsw i64 %i.ag, 1
  store i64 %i.ai, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ak = invoke noundef ptr @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData4deps17h8d46754d77d437e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj)
          to label %bb.o unwind label %bb.m       ; 5 uses

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load i64, ptr %i.af, align 8, !noundef !15
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.af, align 8
  br label %.body.thread

bb.n:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !15, !align !22, !noundef !15 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !32, !noundef !15 ; 2 uses
  %i.ar = icmp ne i64 %i.aq, -9223372036854775756
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.aq, -9223372036854775760
  br i1 %i.as, label %bb.ac, label %bb.i

bb.o:                                             ; preds = %bb.l
  %i.at = load i64, ptr %i.af, align 8, !noundef !15
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.af, align 8
  store ptr %i.ak, ptr %i.j, align 8
  %i.av = icmp eq ptr %i.ak, null
  br i1 %i.av, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit", label %bb.r

bb.p:                                             ; preds = %bb.r
  br i1 %i.bb, label %bb.q, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit"

bb.q:                                             ; preds = %bb.p
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit" unwind label %.body.thread68

bb.r:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !15
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = load i64, ptr %i.ak, align 8, !noalias !15, !noundef !15
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.ak, align 8, !noalias !15
  %i.bb = icmp eq i64 %i.ba, 0                    ; 2 uses
  br i1 %i.ay, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  br i1 %i.bb, label %bb.t, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit36"

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit36" unwind label %.body.thread68

"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit36": ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bc = load i64, ptr %i.l, align 8, !range !29, !noundef !15
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %bb.i

bb.u:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit36"
  %i.be = invoke { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue14try_into_thunk17h51e7db5559e1bd4bE(ptr noundef nonnull %0)
          to label %bb.v unwind label %.body.thread68 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bf = extractvalue { i64, ptr } %i.be, 0
  %i.bg = extractvalue { i64, ptr } %i.be, 1      ; 6 uses
  %i.bh = trunc nuw i64 %i.bf to i1
  br i1 %i.bh, label %bb.w, label %bb.aa, !prof !21

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  store ptr %i.bg, ptr %i.f, align 8, !noalias !481
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @487, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #41
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #43
          to label %.body.thread unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h2f4ca8b1e7df57f5E"(ptr noalias noundef align 8 dereferenceable(16) %i.l)
          to label %bb.bg unwind label %bb.ab

bb.ab:                                            ; preds = %bb.g, %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17hce689bb8997259d7E.exit": ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.i

bb.ac:                                            ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bm = invoke noundef zeroext i1 @_ZN18nickel_lang_parser10identifier8LocIdent12is_generated17h51cf7083bff5817cE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.bl)
          to label %bb.ad unwind label %.body.thread68

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bm, label %bb.ae, label %bb.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %.sroa.6.0.copyload, ptr %i.i, align 4
  br label %bb.af

bb.af:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h391873f47d44b7a7E.exit.i.i", %bb.ae
  %.sroa.03.0.i1720.i.i = phi ptr [ %i.m, %bb.ae ], [ %i.bq, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h391873f47d44b7a7E.exit.i.i" ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.03.0.i1720.i.i, align 8, !noalias !482, !nonnull !15, !noundef !15 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1720.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !482, !noundef !15 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bp, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !486, !noalias !487, !noundef !15
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h391873f47d44b7a7E.exit.i.i", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !486, !noalias !487, !noundef !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !486, !noalias !487, !noundef !15
  %i.bx = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h574b63fb3d3dc548E(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i), !noalias !488 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.by = lshr i64 %i.bx, 57
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !491, !noalias !492, !noundef !15 ; 2 uses
  %i.cc = load ptr, ptr %i.bu, align 8, !alias.scope !491, !noalias !492, !nonnull !15, !noundef !15 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bz, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.ct, %bb.aj ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bx, %bb.ag ], [ %i.cu, %bb.aj ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !493 ; 2 uses
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %bb.ai
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.cs, %bb.ai ], [ %i.cf, %bb.ah ] ; 3 uses
  %i.cg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ch
  %i.cj = and i64 %i.ci, %i.cb
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -16
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.cm, align 4, !noalias !494, !noundef !15
  %i.cn = icmp eq i32 %.sroa.6.0.copyload, %.val3.i.i.i.i.i.i.i
  br i1 %i.cn, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h49907955feed55a0E.exit", label %bb.ai, !prof !17

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ai, %bb.ah
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = icmp eq i16 %i.cp, 0
  br i1 %i.cq, label %bb.aj, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h391873f47d44b7a7E.exit.i.i", !prof !21

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cr = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.cs = and i16 %i.cr, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ct = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.cu = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ct
  br label %bb.ah

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h391873f47d44b7a7E.exit.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.af
  br i1 %.not4.i.i.i, label %bb.an, label %bb.af

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h49907955feed55a0E.exit": ; preds = %.lr.ph.i.i.i.i.i.i
  %6 = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %.val27 = load ptr, ptr %6, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.cv = ptrtoint ptr %.val27 to i64
  %i.cw = and i64 %i.cv, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.cw, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.ak
    i64 0, label %bb.al
  ], !prof !20

bb.ak:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h49907955feed55a0E.exit"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc37 unwind label %.body.thread68

.noexc37:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h49907955feed55a0E.exit"
  %i.cx = load i64, ptr %.val27, align 8, !noundef !15 ; 3 uses
  %i.cy = and i64 %i.cx, 72057594037927935        ; 3 uses
  %i.cz = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  %i.db = and i64 %i.cx, 1080863910568919040
  %i.dc = icmp ult i64 %i.cx, 864691128455135232
  call void @llvm.assume(i1 %i.dc)
  %i.dd = or i64 %i.da, %i.db
  store i64 %i.dd, ptr %.val27, align 8
  %i.de = icmp eq i64 %i.cy, 72057594037927935
  br i1 %i.de, label %bb.am, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !21

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @825, ptr %i.e, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.di, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc38 unwind label %.body.thread68

.noexc38:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h391873f47d44b7a7E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dj = load i64, ptr %i.l, align 8, !range !29, !noundef !15
  %i.dk = load ptr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !495
  store ptr %0, ptr %i.d, align 8, !noalias !495
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dm = load <2 x ptr>, ptr %i.m, align 16
  store <2 x ptr> %i.dm, ptr %i.dl, align 8, !noalias !495
  %i.dn = call noundef nonnull ptr @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3add17h1f5d73ab6a0e0d6aE"(ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.dj, ptr %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.al, %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h49907955feed55a0E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06, i64 16, i1 false)
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx9, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %0, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.dt = load <2 x ptr>, ptr %i.m, align 16
  %i.du = load ptr, ptr %i.m, align 16, !nonnull !15, !noundef !15 ; 2 uses
  store <2 x ptr> %i.dt, ptr %i.dr, align 8
  %i.dv = load i64, ptr %i.l, align 8, !range !29, !noundef !15
  %i.dw = load ptr, ptr %i.p, align 8
  store i64 %i.dv, ptr %i.h, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.dy = ptrtoint ptr %0 to i64
  %i.dz = and i64 %i.dy, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.dz, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit.i" [
    i64 2, label %bb.ao
    i64 0, label %bb.ap
  ], !prof !20

bb.ao:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc.i unwind label %bb.at, !noalias !496

.noexc.i:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !497
  store ptr %0, ptr %i.c, align 8, !noalias !497
  %i.ea = load i64, ptr %0, align 8, !noalias !498, !noundef !15 ; 3 uses
  %i.eb = and i64 %i.ea, 72057594037927935
  %i.ec = add nsw i64 %i.eb, -1                   ; 3 uses
  %i.ed = and i64 %i.ea, 1080863910568919040
  %i.ee = icmp ult i64 %i.ea, 864691128455135232
  call void @llvm.assume(i1 %i.ee)
  %i.ef = or i64 %i.ec, %i.ed
  store i64 %i.ef, ptr %0, align 8, !noalias !498
  %i.eg = icmp ugt i64 %i.ec, 72057594037927935
  br i1 %i.eg, label %bb.ar, label %bb.aq, !prof !21

bb.aq:                                            ; preds = %bb.ap
  %i.eh = icmp eq i64 %i.ec, 0
  br i1 %i.eh, label %bb.as, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i"

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !498
  store ptr @825, ptr %i.b, align 8, !noalias !498
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ei, align 8, !noalias !498
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ej, align 8, !noalias !498
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ek, align 8, !noalias !498
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.el, align 8, !noalias !498
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc2.i unwind label %bb.at, !noalias !496

.noexc2.i:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i" unwind label %bb.at, !noalias !496

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i": ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !497
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit.i"

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ao
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE"(ptr noalias noundef align 8 dereferenceable(16) %i.dr) #43
          to label %.body.i unwind label %bb.bf

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i", %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.en = load i64, ptr %i.du, align 8, !noalias !500, !noundef !15
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  store i64 %i.eo, ptr %i.du, align 8, !noalias !500
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.au, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i"

bb.au:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i" unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.er = load ptr, ptr %i.ds, align 8, !alias.scope !502, !noundef !15 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.body.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.et = load i64, ptr %i.er, align 8, !noalias !503, !noundef !15
  %i.eu = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.eu, ptr %i.er, align 8, !noalias !503
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.ax, label %.body.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %.body.i unwind label %bb.ba

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i": ; preds = %bb.au, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.ew = load ptr, ptr %i.ds, align 8, !alias.scope !505, !noundef !15 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i", label %bb.ay

bb.ay:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i"
  %i.ey = load i64, ptr %i.ew, align 8, !noalias !506, !noundef !15
  %i.ez = add i64 %i.ey, -1                       ; 2 uses
  store i64 %i.ez, ptr %i.ew, align 8, !noalias !506
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.az, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i"

bb.az:                                            ; preds = %bb.ay
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i" unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

.body.i:                                          ; preds = %bb.bb, %bb.ax, %bb.aw, %bb.av, %bb.at
  %.pn.i = phi { ptr, i32 } [ %i.em, %bb.at ], [ %i.fc, %bb.bb ], [ %i.eq, %bb.ax ], [ %i.eq, %bb.aw ], [ %i.eq, %bb.av ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h2f4ca8b1e7df57f5E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h) #43
          to label %.body.thread63.thread unwind label %bb.bf

bb.bb:                                            ; preds = %bb.az
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i": ; preds = %bb.az, %bb.ay, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.fd = load i64, ptr %i.h, align 8, !range !29, !alias.scope !508, !noundef !15
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd98648bde9eac8e8E.exit", label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.ff = load ptr, ptr %i.dx, align 8, !alias.scope !510, !noundef !15 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i40, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd98648bde9eac8e8E.exit", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !511, !noundef !15
  %i.fh = add i64 %i.fg, -1                       ; 2 uses
  store i64 %i.fh, ptr %i.ff, align 8, !noalias !511
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.be, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd98648bde9eac8e8E.exit"

bb.be:                                            ; preds = %bb.bd
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dx)
  br label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd98648bde9eac8e8E.exit"

bb.bf:                                            ; preds = %.body.i, %bb.at
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd98648bde9eac8e8E.exit": ; preds = %bb.be, %bb.bd, %bb.bc, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit"

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit": ; preds = %bb.bm, %bb.bt, %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd98648bde9eac8e8E.exit", %bb.an, %bb.i, %bb.bs, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i49", %bb.bl, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i"
end_hunk_0
begin_hunk_1_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724459146df81c2eE":bb.a
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !977
  unreachable

bb.ap:                                            ; preds = %bb.aj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.gp, %bb.aj ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.val3.i.i.i.i.i.i, %bb.aj ] ; 2 uses
  %i.gv = icmp samesign ule i64 %.val3.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gv)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 8 %.val.i7.i.i.i.i.i, i64 %i.gl, i1 false), !noalias !980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !974
  %i.gw = load ptr, ptr %i.br, align 8, !alias.scope !941, !noalias !942, !nonnull !15, !align !27, !noundef !15 ; 2 uses
  %i.gx = load i64, ptr %i.bs, align 8, !alias.scope !941, !noalias !942, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !981
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.av, align 8, !noalias !981
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !981
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !981
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !981
  store i64 %.val3.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !981
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !981
  store i32 %i.gk, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4, !noalias !981
  store ptr %i.gh, ptr %.sroa.88.0..sroa_idx.i.i.i.i, align 8, !noalias !981
  store ptr %i.gw, ptr %.sroa.99.0..sroa_idx.i.i.i.i, align 8, !noalias !981
  store i64 %i.gx, ptr %.sroa.1010.0..sroa_idx.i.i.i.i, align 8, !noalias !981
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !984
  invoke void @_ZN14regex_automata4util8captures8Captures4iter17h5ada3b58a888dec5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i.i)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !985

.noexc.i.i.i.i.i:                                 ; preds = %bb.ap
  store ptr %i.gw, ptr %i.ai, align 8, !noalias !984
  store i64 %i.gx, ptr %i.bu, align 8, !noalias !984
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  br label %bb.aq

bb.aq:                                            ; preds = %.backedge163, %.noexc.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !988
  invoke void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %.noexc1.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !985

.noexc1.i.i.i.i.i:                                ; preds = %bb.aq
  %i.gy = load i64, ptr %i.ah, align 8, !range !34, !noalias !988, !noundef !15
  switch i64 %i.gy, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab878055e7d8af00E.exit.i.i.i.i.i.i.i.i" [
    i64 2, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hb206cdcac1e34e79E.exit.i.i.i.i"
    i64 0, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab878055e7d8af00E.exit.thread.i.i.i.i.i.i.i.i"
  ]

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab878055e7d8af00E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !988
  br label %.backedge163

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab878055e7d8af00E.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  %i.gz = load i64, ptr %i.bu, align 8, !alias.scope !989, !noalias !990, !noundef !15
  %i.ha = load ptr, ptr %i.ai, align 8, !alias.scope !989, !noalias !990, !nonnull !15, !align !27, !noundef !15
  %i.hb = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !991
  store ptr %i.ha, ptr %i.ag, align 8, !noalias !992
  store i64 %i.gz, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !993
  store <2 x i64> %i.hb, ptr %.sroa.610.8..sroa.5.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !993
  %i.hc = invoke noundef zeroext i1 @_ZN16nickel_lang_core4term6string29grapheme_cluster_preservation5regex36does_match_start_and_end_on_boundary17h8d2dadd5ade1752cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %.noexc2.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !985

.noexc2.i.i.i.i.i:                                ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab878055e7d8af00E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !991
  br i1 %i.hc, label %.backedge163, label %bb.as

.backedge163:                                     ; preds = %.noexc2.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab878055e7d8af00E.exit.thread.i.i.i.i.i.i.i.i"
  br label %bb.aq

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab878055e7d8af00E.exit.i.i.i.i.i.i.i.i", %bb.aq
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.ap
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6385a43bff7274f2E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av) #43
          to label %common.resume unwind label %bb.ax, !noalias !985

bb.as:                                            ; preds = %.noexc2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !984
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.hd = load ptr, ptr %.sroa.88.0..sroa_idx.i.i.i.i, align 8, !alias.scope !999, !noalias !1000, !nonnull !15, !noundef !15
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !1001
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.at, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i.i.i.i"

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.88.0..sroa_idx.i.i.i.i)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i.i.i.i" unwind label %bb.au, !noalias !985

bb.au:                                            ; preds = %bb.at
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1002, !noalias !1000 ; 2 uses
  %i.hh = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.hh, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1002, !noalias !1000, !nonnull !15, !noundef !15
  %i.hi = shl nuw i64 %.val2.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !985
  br label %common.resume

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i.i.i.i": ; preds = %bb.at, %bb.as
  %.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1002, !noalias !1000 ; 2 uses
  %i.hj = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.hj, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hb206cdcac1e34e79E.exit.thread.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i.i.i.i"
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1002, !noalias !1000, !nonnull !15, !noundef !15
  %i.hk = shl nuw i64 %.val.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !985
  br label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hb206cdcac1e34e79E.exit.thread.i.i.i.i"

bb.ax:                                            ; preds = %bb.ar
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !985
  unreachable

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hb206cdcac1e34e79E.exit.thread.i.i.i.i": ; preds = %bb.aw, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !981
  br label %bb.ay

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hb206cdcac1e34e79E.exit.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !984
  %.sroa.015.0.copyload.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !1003, !noalias !981 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i.i.i.i, i64 64, i1 false), !alias.scope !1003, !noalias !981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !981
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.015.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hb206cdcac1e34e79E.exit.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hb206cdcac1e34e79E.exit.thread.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i.i)
  br label %bb.b

bb.az:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hb206cdcac1e34e79E.exit.i.i.i.i"
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.i.i.i.i, i64 64, i1 false), !noalias !1004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i.i)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.015.0.copyload.i.i.i.i, ptr %i.aw, align 8, !noalias !1004
  %.val.i = load ptr, ptr %i.hm, align 8, !alias.scope !934, !noalias !1005 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.hq = load i32, ptr %i.hp, align 8, !range !37, !alias.scope !1008, !noalias !1009, !noundef !15
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.hs = load i32, ptr %i.hr, align 4, !alias.scope !1008, !noalias !1009
  %i.ht = trunc nuw i32 %i.hq to i1
  br i1 %i.ht, label %bb.ba, label %bb.bl

bb.ba:                                            ; preds = %bb.az
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !1008, !noalias !1009, !nonnull !15, !noundef !15
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !1010, !noundef !15 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 1152921504606846976
  call void @llvm.assume(i1 %i.hy)
  %i.hz = icmp eq i64 %i.hx, 1
  br i1 %i.hz, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ia = zext i32 %i.hs to i64                   ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.hx, %i.ia
  %i.ib = shl nuw nsw i64 %i.ia, 1                ; 2 uses
  %i.ic = or disjoint i64 %i.ib, 1
  br i1 %.not.i.i.i.i, label %bb.bc, label %bb.bl

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.057.0.i.i.i = phi i64 [ 0, %bb.ba ], [ %i.ib, %bb.bb ] ; 2 uses
  %.sroa.058.0.i.i.i = phi i64 [ 1, %bb.ba ], [ %i.ic, %bb.bb ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !1008, !noalias !1009, !noundef !15 ; 2 uses
  %.not63.i.i.i = icmp ult i64 %.sroa.057.0.i.i.i, %i.if
  %i.ig = load ptr, ptr %i.id, align 8, !alias.scope !1008, !noalias !1009, !nonnull !15 ; 2 uses
  br i1 %.not63.i.i.i, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.057.0.i.i.i
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !1010, !noundef !15 ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.ii, 0
  %.not64.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i, %i.if
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not64.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.058.0.i.i.i
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !1010, !noundef !15 ; 4 uses
  %.not60.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not60.i.i.i, label %bb.bl, label %bb.bk

.body.i.i:                                        ; preds = %bb.cf, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h717f22c93c62487dE.exit.i.i", %.body.i.i.i.i.i.i, %bb.bq, %bb.bp, %bb.bp, %bb.bj
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.je, %bb.bq ], [ %i.iw, %bb.bj ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.je, %bb.bp ], [ %i.je, %bb.bp ], [ %.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h717f22c93c62487dE.exit.i.i" ], [ %.pn.i.i, %bb.cf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012), !noalias !1013
  %i.il = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1014), !noalias !1013
  call void @llvm.experimental.noalias.scope.decl(metadata !1015), !noalias !1013
  call void @llvm.experimental.noalias.scope.decl(metadata !1016), !noalias !1013
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !1017, !noalias !1018, !nonnull !15, !noundef !15
  %i.in = atomicrmw sub ptr %i.im, i64 1 release, align 8, !noalias !1019
  %i.io = icmp eq i64 %i.in, 1
  br i1 %i.io, label %bb.bf, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i"

bb.bf:                                            ; preds = %.body.i.i
  fence acquire, !noalias !1013
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.il)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i" unwind label %bb.bg, !noalias !1020

bb.bg:                                            ; preds = %bb.bf
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !1021, !noalias !1018 ; 2 uses
  %i.iq = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.iq, label %.body.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val3.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !1021, !noalias !1018, !nonnull !15, !noundef !15
  %i.is = shl nuw i64 %.val2.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1020
  br label %.body.i

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i": ; preds = %bb.bf, %.body.i.i
  %.val.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !1021, !noalias !1018 ; 2 uses
  %i.it = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.it, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i"
  %i.iu = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val1.i.i.i = load ptr, ptr %i.iu, align 8, !alias.scope !1021, !noalias !1018, !nonnull !15, !noundef !15
  %i.iv = shl nuw i64 %.val.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1020
  br label %common.resume

bb.bj:                                            ; preds = %bb.bn, %bb.bl, %bb.bk
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bk:                                            ; preds = %bb.be
  %i.ix = add i64 %i.ii, -1                       ; 8 uses
  %i.iy = add i64 %i.ik, -1                       ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !1006, !noalias !1018, !nonnull !15, !align !27, !noundef !15 ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.jc = load i64, ptr %i.jb, align 8, !alias.scope !1006, !noalias !1018, !noundef !15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1022
  invoke void @_ZN14regex_automata4util8captures8Captures4iter17h5ada3b58a888dec5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ho)
          to label %bb.bn unwind label %bb.bj, !noalias !1020

bb.bl:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #41
          to label %bb.bm unwind label %bb.bj, !noalias !1020

bb.bm:                                            ; preds = %bb.ct, %.loopexit24.i.i, %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1022
  store ptr %i.ja, ptr %i.ac, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.jc, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store i64 1, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !1024, !noalias !1025
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1028
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h714204ee06a99b24E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %.noexc.i.i unwind label %bb.bj, !noalias !1020

.noexc.i.i:                                       ; preds = %bb.bn
  %i.jd = load i64, ptr %i.aa, align 8, !range !38, !noalias !1028, !noundef !15 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jd, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1028
  br label %bb.bz

bb.bp:                                            ; preds = %bb.bt
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %i.jd, label %bb.bq [
    i64 -9223372036854775808, label %.body.i.i
    i64 0, label %.body.i.i
  ]

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !1029
  br label %.body.i.i

bb.br:                                            ; preds = %.noexc.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1028 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !1028
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.jf, align 8, !alias.scope !1030, !noalias !1031, !nonnull !15, !noundef !15
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.val5.i.i.i.i.i.i.i.i = load ptr, ptr %i.jg, align 8, !alias.scope !1030, !noalias !1031, !nonnull !15, !noundef !15
  %i.jh = ptrtoint ptr %.val5.i.i.i.i.i.i.i.i to i64
  %i.ji = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.jj = sub nuw i64 %i.jh, %i.ji
  %i.jk = lshr exact i64 %i.jj, 4
  %i.jl = load i64, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !1030, !noalias !1031, !noundef !15
  %i.jm = call i64 @llvm.usub.sat.i64(i64 %i.jk, i64 %i.jl) ; 2 uses
  %i.jn = call i64 @llvm.umax.i64(i64 %i.jm, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.jn, 1 ; 2 uses
  %i.jo = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.jm, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bt, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.br
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !1032
  %i.jq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jo, i64 noundef range(i64 1, 9) 8) #40, !noalias !1032 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.bs ], [ 0, %bb.br ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.jo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @474) #41
          to label %.noexc.i.i.i.i.i3.i unwind label %bb.bp, !noalias !1033

.noexc.i.i.i.i.i3.i:                              ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.jq, %bb.bs ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.bs ] ; 3 uses
  %i.js = icmp samesign ult i64 %i.jn, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.js)
  store i64 %i.jd, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !1033
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1033
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1033
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.ab, align 8, !noalias !1028
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1028
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !1034
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1039
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h714204ee06a99b24E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !1033

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.bu
  %i.jt = load i64, ptr %i.y, align 8, !range !38, !noalias !1039, !noundef !15 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i64 %i.jt, -9223372036854775807
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.loopexit12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc6.i.i.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  br label %bb.bv

bb.bv:                                            ; preds = %.noexc7.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.jx = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kd, %.noexc7.i.i.i.i.i.i ]
  %i.jy = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kf, %.noexc7.i.i.i.i.i.i ] ; 5 uses
  %i.jz = phi i64 [ %i.jt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kg, %.noexc7.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1039 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1039
  %i.ka = icmp samesign ult i64 %i.jy, 384307168202282326
  call void @llvm.assume(i1 %i.ka)
  %i.kb = load i64, ptr %i.ab, align 8, !range !39, !alias.scope !1040, !noalias !1041, !noundef !15
  %i.kc = icmp eq i64 %i.jy, %i.kb
  br i1 %i.kc, label %bb.by, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h50d4bb08a66c6436E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h50d4bb08a66c6436E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h50d4bb08a66c6436E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.bv
end_hunk_1
begin_hunk_2_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724459146df81c2eE":bb.a
  store i64 %i.kt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1022
  %i.ku = getelementptr inbounds nuw i8, ptr %i.af, i64 200 ; 2 uses
  store i64 0, ptr %i.ku, align 8, !noalias !1022
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %i.kv = invoke fastcc ptr @"_ZN100_$LT$unicode_segmentation..grapheme..Graphemes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h23989c0c124e9c8bE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af)
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.i.i ; 2 uses

.noexc60.i.i:                                     ; preds = %bb.bz
  %.not.i29.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i29.i.i.i, label %.loopexit24.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc60.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.0.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i, i64 24
  br label %bb.ca

bb.ca:                                            ; preds = %.noexc63.i.i, %.lr.ph.i.i.i
  %i.ky = phi ptr [ %i.kv, %.lr.ph.i.i.i ], [ %i.lh, %.noexc63.i.i ]
  %i.kz = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.lg, %.noexc63.i.i ] ; 2 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = load i64, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !1050, !noalias !1051, !noundef !15
  %i.lc = sub i64 %i.la, %i.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i), !noalias !1052
  %i.ld = icmp eq i64 %i.lc, %i.ix
  br i1 %i.ld, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1053
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !1055
  %i.le = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #40, !noalias !1055 ; 3 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.cc, label %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8a0e25909226fc67E.exit.i.i.i.i.i", !prof !21

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #41
          to label %.noexc61.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1020

.noexc61.i.i:                                     ; preds = %bb.cc
  unreachable

"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8a0e25909226fc67E.exit.i.i.i.i.i": ; preds = %bb.cb
  store i64 %i.kz, ptr %i.le, align 8, !noalias !1055
  store i64 1, ptr %i.x, align 8, !alias.scope !1056, !noalias !1053
  store ptr %i.le, ptr %i.kw, align 8, !alias.scope !1056, !noalias !1053
  store i64 1, ptr %i.kx, align 8, !alias.scope !1056, !noalias !1053
  invoke void @"_ZN12malachite_nz7natural10conversion10from_limbs48_$LT$impl$u20$malachite_nz..natural..Natural$GT$20from_owned_limbs_asc17he0a178d1730e0898E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc62.i.i unwind label %.loopexit.i.i, !noalias !1020

.noexc62.i.i:                                     ; preds = %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8a0e25909226fc67E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) @62, i64 24, i1 false), !noalias !1057
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.0.i.i.i.i.i.i, align 8, !noalias !1057 ; 4 uses
  %.not.i.i.i.i2.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i2.i, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %.noexc62.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i), !noalias !1052
  %i.lg = add i64 %i.kz, 1                        ; 2 uses
  store i64 %i.lg, ptr %i.ku, align 8, !alias.scope !1049, !noalias !1058
  %i.lh = invoke fastcc ptr @"_ZN100_$LT$unicode_segmentation..grapheme..Graphemes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h23989c0c124e9c8bE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af)
          to label %.noexc63.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc63.i.i:                                     ; preds = %bb.cd
  %.not.i.i59.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i59.i.i, label %.loopexit24.i.i, label %bb.ca

"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit.i": ; preds = %bb.cp, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i", %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %i.mb, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i" ], [ %i.mb, %bb.cp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1059), !noalias !1013
  %i.li = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.li, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h717f22c93c62487dE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit.i", %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17ha22cbc8b59a0d0b1E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.lk, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17ha22cbc8b59a0d0b1E.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit.i" ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.615.0.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.lk = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.lj, align 8, !range !33, !alias.scope !1059, !noalias !1060, !noundef !15 ; 2 uses
  %switch.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i, 0
  br i1 %switch.i.i.i.i, label %bb.ce, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17ha22cbc8b59a0d0b1E.exit.i.i.i.i"

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ll = getelementptr i8, ptr %i.lj, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.ll, align 8, !alias.scope !1059, !noalias !1060, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !1061
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17ha22cbc8b59a0d0b1E.exit.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17ha22cbc8b59a0d0b1E.exit.i.i.i.i": ; preds = %bb.ce, %.lr.ph.i.i.i.i
  %i.lm = icmp eq i64 %i.lk, %.sroa.8.0.i
  br i1 %i.lm, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h717f22c93c62487dE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h717f22c93c62487dE.exit.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17ha22cbc8b59a0d0b1E.exit.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit.i"
  %i.ln = icmp eq i64 %.sroa.013.0.i, 0
  br i1 %i.ln, label %.body.i.i, label %bb.cf

bb.cf:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h717f22c93c62487dE.exit.i.i"
  %i.lo = mul nuw i64 %.sroa.013.0.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.615.0.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1060
  br label %.body.i.i

.loopexit.i.i:                                    ; preds = %bb.cd, %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8a0e25909226fc67E.exit.i.i.i.i.i"
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit.i"

.loopexit.split-lp.i.i:                           ; preds = %bb.bz, %.loopexit24.i.i, %bb.cc
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit.i"

.loopexit24.i.i:                                  ; preds = %.noexc63.i.i, %.noexc60.i.i
  store i64 -9223372036854775807, ptr %i.ad, align 8, !noalias !1004
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$malachite_q..Rational$GT$$GT$17ha728db285dc1275cE"(ptr noalias noundef align 8 dereferenceable(56) %i.ad), !noalias !1005
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @331, i64 noundef 72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #41
          to label %bb.bm unwind label %.loopexit.split-lp.i.i, !noalias !1020

bb.cg:                                            ; preds = %.noexc62.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hn, ptr noundef nonnull align 8 dereferenceable(40) %i.lp, i64 40, i1 false), !noalias !1004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i), !noalias !1052
  %.sroa.319.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i8 1, ptr %.sroa.319.0..sroa_idx.i.i.i, align 8, !noalias !1004
  %.sroa.519.8.copyload.i = load ptr, ptr %i.hn, align 8, !noalias !1004 ; 3 uses
  %.sroa.720.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.721.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.721.8.copyload.i = load i64, ptr %.sroa.721.8..sroa_idx.i, align 8, !noalias !1004 ; 2 uses
  %i.lq = load <2 x i64>, ptr %.sroa.720.8..sroa_idx.i, align 8, !noalias !1004
  %.sroa.822.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.822.8.copyload.i = load ptr, ptr %.sroa.822.8..sroa_idx.i, align 8, !noalias !1004 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1022
  %.not.i64.i.i = icmp ugt i64 %i.ix, %i.iy
  br i1 %.not.i64.i.i, label %bb.ct, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lr = icmp eq i64 %i.ix, 0
  br i1 %i.lr, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not5.i.i.i = icmp ult i64 %i.ix, %i.jc
  br i1 %.not5.i.i.i, label %bb.ck, label %.split.i.i.i

bb.cj:                                            ; preds = %bb.ck, %.split.i.i.i, %bb.ch
  %i.ls = icmp eq i64 %i.iy, 0
  br i1 %i.ls, label %bb.cq, label %bb.cl

.split.i.i.i:                                     ; preds = %bb.ci
  %i.lt = icmp eq i64 %i.ix, %i.jc
  br i1 %i.lt, label %bb.cj, label %bb.ct

bb.ck:                                            ; preds = %bb.ci
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ix
  %i.lv = load i8, ptr %i.lu, align 1, !alias.scope !1062, !noalias !1020, !noundef !15
  %i.lw = icmp sgt i8 %i.lv, -65
  br i1 %i.lw, label %bb.cj, label %bb.ct

bb.cl:                                            ; preds = %bb.cj
  %.not6.i.i.i = icmp ult i64 %i.iy, %i.jc
  br i1 %.not6.i.i.i, label %bb.cm, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.cl
  %i.lx = icmp eq i64 %i.iy, %i.jc
  br i1 %i.lx, label %bb.cq, label %bb.ct

bb.cm:                                            ; preds = %bb.cl
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iy
  %i.lz = load i8, ptr %i.ly, align 1, !alias.scope !1062, !noalias !1020, !noundef !15
  %i.ma = icmp sgt i8 %i.lz, -65
  br i1 %i.ma, label %bb.cq, label %bb.ct

bb.cn:                                            ; preds = %bb.ct, %bb.cs
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i.i = icmp sgt i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %switch.i.i, label %bb.co, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i"

bb.co:                                            ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.519.8.copyload.i) ]
  %i.mc = shl nuw i64 %.sroa.0.0.copyload1.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.519.8.copyload.i, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1063
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i": ; preds = %bb.co, %bb.cn
  %switch8.i.i = icmp sgt i64 %.sroa.721.8.copyload.i, 0
  br i1 %switch8.i.i, label %bb.cp, label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit.i"

bb.cp:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.822.8.copyload.i) ]
  %i.md = shl nuw i64 %.sroa.721.8.copyload.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.822.8.copyload.i, i64 noundef %i.md, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1063
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit.i"

bb.cq:                                            ; preds = %bb.cm, %.split7.i.i.i, %bb.cj
  %i.me = sub nuw i64 %i.ik, %i.ii                ; 10 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ix
  %i.mg = icmp slt i64 %i.me, 0
  br i1 %i.mg, label %bb.cs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.cq
  %1 = icmp ne i64 %i.ik, %i.ii                   ; 3 uses
  br i1 %1, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !1064
  %i.mh = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.me, i64 noundef range(i64 1, 9) 1) #40, !noalias !1064 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.cr ], [ 0, %bb.cq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.me, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @847) #41
          to label %.noexc65.i.i unwind label %bb.cn, !noalias !1020

.noexc65.i.i:                                     ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cm, %.split7.i.i.i, %bb.ck, %.split.i.i.i, %bb.cg
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ja, i64 noundef %i.jc, i64 noundef %i.ix, i64 noundef %i.iy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41
          to label %bb.bm unwind label %bb.cn, !noalias !1020

bb.cu:                                            ; preds = %bb.cr, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.mh, %bb.cr ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.mf, i64 %i.me, i1 false), !noalias !1065
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.mj = load ptr, ptr %i.hu, align 8, !alias.scope !1071, !noalias !1018, !nonnull !15, !noundef !15
  %i.mk = atomicrmw sub ptr %i.mj, i64 1 release, align 8, !noalias !1072
  %i.ml = icmp eq i64 %i.mk, 1
  br i1 %i.ml, label %bb.cv, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i"

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i" unwind label %bb.cw, !noalias !1020

bb.cw:                                            ; preds = %bb.cv
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !1073, !noalias !1018 ; 2 uses
  %i.mn = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.mn, label %common.resume, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.val3.i.i.i.i = load ptr, ptr %i.id, align 8, !alias.scope !1073, !noalias !1018, !nonnull !15, !noundef !15
  %i.mo = shl nuw i64 %.val2.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.mo, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1020
  br label %common.resume

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i": ; preds = %bb.cv, %bb.cu
  %.val.i.i66.i.i = load i64, ptr %i.ho, align 8, !alias.scope !1073, !noalias !1018 ; 2 uses
  %i.mp = icmp eq i64 %.val.i.i66.i.i, 0
  br i1 %i.mp, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i"
  %.val1.i.i67.i.i = load ptr, ptr %i.id, align 8, !alias.scope !1073, !noalias !1018, !nonnull !15, !noundef !15
  %i.mq = shl nuw i64 %.val.i.i66.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i, i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1020
  br label %bb.cz

.body.i:                                          ; preds = %bb.bh, %bb.bg
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !1020
  unreachable

bb.cz:                                            ; preds = %bb.cy, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h09f13b4d4e4a5217E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1004
  %.sroa.1414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.me, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.me, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  store i64 %.sroa.013.0.i, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %.sroa.615.0.i, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %.sroa.8.0.i, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 4 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.99.0..sroa_idx, align 8
  %.sroa.1010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %.sroa.519.8.copyload.i, ptr %.sroa.1010.0..sroa_idx, align 8
  %.sroa.1111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store <2 x i64> %i.lq, ptr %.sroa.1111.0..sroa_idx, align 8
  %.sroa.1313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr %.sroa.822.8.copyload.i, ptr %.sroa.1313.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1074
  %i.mr = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 8, !range !16, !noalias !1075, !noundef !15
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i: ; preds = %bb.cz
  %.pre.i.i.i = load i64, ptr %i.mr, align 8, !noalias !1076
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1076
  br label %bb.dc

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i": ; preds = %bb.cz
  %i.mv = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i unwind label %bb.db, !noalias !1074 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i"
  %i.mw = extractvalue { i64, i64 } %i.mv, 0
  %i.mx = extractvalue { i64, i64 } %i.mv, 1      ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 %i.mx, ptr %i.my, align 8, !noalias !1077
  store i8 1, ptr %i.ms, align 8, !noalias !1077
  br label %bb.dc

bb.da:                                            ; preds = %.body.thread.i, %bb.db
  %.pn.i = phi { ptr, i32 } [ %i.na, %bb.db ], [ %eh.lpad-body33.i, %.body.thread.i ] ; 2 uses
  %.sroa.03.0.i = phi i8 [ %.sroa.01.1.i, %bb.db ], [ %.sroa.03.2.lpad-body30.i, %.body.thread.i ]
  %.sroa.02.0.i = phi i8 [ %.sroa.01.1.i, %bb.db ], [ %.sroa.02.2.lpad-body31.i, %.body.thread.i ]
  %.sroa.01.0.i = phi i8 [ %.sroa.01.1.i, %bb.db ], [ %.sroa.01.2.lpad-body32.i, %.body.thread.i ]
  %i.mz = trunc nuw i8 %.sroa.03.0.i to i1
  %or.cond.not = and i1 %1, %i.mz
  br i1 %or.cond.not, label %bb.fy, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17hb8a22ca3735ae8adE.exit.i"

bb.db:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit37.i", %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i"
  %.sroa.01.1.i = phi i8 [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit37.i" ], [ 1, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i" ] ; 3 uses
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.dc:                                            ; preds = %.noexc.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i
  %.pre-phi60.i = phi i64 [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i ], [ %i.mx, %.noexc.i ]
  %i.nb = phi i64 [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i ], [ %i.mw, %.noexc.i ] ; 2 uses
  %i.nc = add i64 %i.nb, 1
  store i64 %i.nc, ptr %i.mr, align 8, !noalias !1076
  store i64 0, ptr %i.w, align 8, !alias.scope !1078, !noalias !1074
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1078, !noalias !1074
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !1078, !noalias !1074
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !1074
  %i.nd = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 %i.nb, ptr %i.nd, align 8, !alias.scope !1078, !noalias !1074
  %i.ne = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i64 %.pre-phi60.i, ptr %i.ne, align 8, !alias.scope !1078, !noalias !1074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1074
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @212, i64 noundef 7)
          to label %bb.dd unwind label %.body.thread35.i, !noalias !1074

.body.thread35.i:                                 ; preds = %bb.di, %bb.dt, %bb.fq, %bb.fw, %bb.fv, %bb.fs, %bb.fp, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit24.i", %bb.dz, %bb.dy, %bb.dv, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i", %bb.do, %bb.dn, %bb.dk, %bb.dc
  %.sroa.03.2.ph.i = phi i8 [ 0, %bb.fv ], [ 0, %bb.fs ], [ 0, %bb.dk ], [ 1, %bb.dc ], [ 0, %bb.di ], [ 0, %bb.do ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i" ], [ 0, %bb.dn ], [ 0, %bb.dt ], [ 0, %bb.dz ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit24.i" ], [ 0, %bb.dy ], [ 0, %bb.dv ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ 0, %bb.fw ]
  %.sroa.02.2.ph.i = phi i8 [ 0, %bb.fv ], [ 0, %bb.fs ], [ 1, %bb.dk ], [ 1, %bb.dc ], [ 1, %bb.di ], [ 1, %bb.do ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i" ], [ 1, %bb.dn ], [ 0, %bb.dt ], [ 0, %bb.dz ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit24.i" ], [ 0, %bb.dy ], [ 0, %bb.dv ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ 0, %bb.fw ]
  %.sroa.01.2.ph.i = phi i8 [ 0, %bb.fv ], [ 0, %bb.fs ], [ 1, %bb.dk ], [ 1, %bb.dc ], [ 1, %bb.di ], [ 1, %bb.do ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i" ], [ 1, %bb.dn ], [ 1, %bb.dt ], [ 1, %bb.dz ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit24.i" ], [ 1, %bb.dy ], [ 1, %bb.dv ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ 0, %bb.fw ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !1079
  %i.nf = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #40, !noalias !1079 ; 7 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.dg, label %bb.di, !prof !21

bb.de:                                            ; preds = %bb.dg
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %1, label %bb.df, label %.body.thread.i

bb.df:                                            ; preds = %bb.de
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !1080
  br label %.body.thread.i

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1079
  store ptr @155, ptr %i.o, align 8, !noalias !1079
  %i.ni = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.ni, align 8, !noalias !1079
  %i.nj = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.nj, align 8, !noalias !1079
  %i.nk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.nk, align 8, !noalias !1079
  %i.nl = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.nl, align 8, !noalias !1079
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #41
          to label %bb.dh unwind label %bb.de, !noalias !1079

bb.dh:                                            ; preds = %bb.dg
  unreachable

bb.di:                                            ; preds = %bb.dd
  store i64 216172782113783809, ptr %i.nf, align 8, !noalias !1079
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 -1, ptr %i.nm, align 8, !noalias !1079
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store i64 %i.me, ptr %i.nn, align 8, !noalias !1074
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.3.0..sroa_idx3.i, align 8, !noalias !1074
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i64 %i.me, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !1074
  %i.no = invoke fastcc ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17hb196c641598233beE"(ptr noalias noundef align 8 dereferenceable(72) %i.w, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.v, ptr noundef nonnull %i.nf)
          to label %._crit_edge137 unwind label %.body.thread35.i ; 5 uses

._crit_edge137:                                   ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1074
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i", label %bb.dj

bb.dj:                                            ; preds = %._crit_edge137
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = and i64 %i.nq, 3
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.nr, i64 2)
  switch i64 %..i.i.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i" [
    i64 2, label %bb.dk
    i64 0, label %bb.dl
  ], !prof !20

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc10.i unwind label %.body.thread35.i, !noalias !1074

.noexc10.i:                                       ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1081
  store ptr %i.no, ptr %i.n, align 8, !noalias !1081
  %i.ns = load i64, ptr %i.no, align 8, !noalias !1082, !noundef !15 ; 3 uses
  %i.nt = and i64 %i.ns, 72057594037927935
  %i.nu = add nsw i64 %i.nt, -1                   ; 3 uses
  %i.nv = and i64 %i.ns, 1080863910568919040
  %i.nw = icmp ult i64 %i.ns, 864691128455135232
  call void @llvm.assume(i1 %i.nw)
  %i.nx = or i64 %i.nu, %i.nv
  store i64 %i.nx, ptr %i.no, align 8, !noalias !1082
  %i.ny = icmp ugt i64 %i.nu, 72057594037927935
  br i1 %i.ny, label %bb.dn, label %bb.dm, !prof !21

bb.dm:                                            ; preds = %bb.dl
  %i.nz = icmp eq i64 %i.nu, 0
  br i1 %i.nz, label %bb.do, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i"

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1082
  store ptr @825, ptr %i.m, align 8, !noalias !1082
  %i.oa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.oa, align 8, !noalias !1082
  %i.ob = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ob, align 8, !noalias !1082
  %i.oc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.oc, align 8, !noalias !1082
  %i.od = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.od, align 8, !noalias !1082
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc11.i unwind label %.body.thread35.i, !noalias !1074

.noexc11.i:                                       ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %bb.dm
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i" unwind label %.body.thread35.i, !noalias !1074

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i": ; preds = %bb.do, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1081
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i", %bb.dj, %._crit_edge137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1074
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 5)
          to label %bb.dp unwind label %.body.thread35.i, !noalias !1074

bb.dp:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !1083
  %i.oe = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40, !noalias !1083 ; 5 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.dr, label %bb.dt, !prof !21

bb.dq:                                            ; preds = %bb.dr
  %i.og = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %.sroa.99.0..sroa_idx) #43
  br label %.body.thread.i

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1083
  store ptr @155, ptr %i.l, align 8, !noalias !1083
  %i.oh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.oh, align 8, !noalias !1083
  %i.oi = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.oi, align 8, !noalias !1083
  %i.oj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.oj, align 8, !noalias !1083
  %i.ok = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.ok, align 8, !noalias !1083
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #41
          to label %bb.ds unwind label %bb.dq, !noalias !1083

bb.ds:                                            ; preds = %bb.dr
  unreachable

bb.dt:                                            ; preds = %bb.dp
  store i64 1, ptr %i.oe, align 8, !noalias !1083
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i32 -1, ptr %i.ol, align 8, !noalias !1083
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.om, ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.99.0..sroa_idx, i64 56, i1 false)
  %i.on = invoke fastcc ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17hb196c641598233beE"(ptr noalias noundef align 8 dereferenceable(72) %i.w, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.u, ptr noundef nonnull %i.oe)
          to label %._crit_edge135 unwind label %.body.thread35.i ; 5 uses

._crit_edge135:                                   ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1074
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit24.i", label %bb.du

bb.du:                                            ; preds = %._crit_edge135
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = and i64 %i.op, 3
  %..i.i.i19.i = call i64 @llvm.umin.i64(i64 %i.oq, i64 2)
  switch i64 %..i.i.i19.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE.exit24.i" [
    i64 2, label %bb.dv
    i64 0, label %bb.dw
  ], !prof !20

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc21.i unwind label %.body.thread35.i, !noalias !1074

.noexc21.i:                                       ; preds = %bb.dv
  unreachable

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1084
  store ptr %i.on, ptr %i.k, align 8, !noalias !1084
  %i.or = load i64, ptr %i.on, align 8, !noalias !1085, !noundef !15 ; 3 uses
  %i.os = and i64 %i.or, 72057594037927935
  %i.ot = add nsw i64 %i.os, -1                   ; 3 uses
  %i.ou = and i64 %i.or, 1080863910568919040
  %i.ov = icmp ult i64 %i.or, 864691128455135232
  call void @llvm.assume(i1 %i.ov)
  %i.ow = or i64 %i.ot, %i.ou
  store i64 %i.ow, ptr %i.on, align 8, !noalias !1085
  %i.ox = icmp ugt i64 %i.ot, 72057594037927935
  br i1 %i.ox, label %bb.dy, label %bb.dx, !prof !21

bb.dx:                                            ; preds = %bb.dw
  %i.oy = icmp eq i64 %i.ot, 0
  br i1 %i.oy, label %bb.dz, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i20.i"

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1085
  store ptr @825, ptr %i.j, align 8, !noalias !1085
  %i.oz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.oz, align 8, !noalias !1085
  %i.pa = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.pa, align 8, !noalias !1085
  %i.pb = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.pb, align 8, !noalias !1085
  %i.pc = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.pc, align 8, !noalias !1085
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc22.i unwind label %.body.thread35.i, !noalias !1074

.noexc22.i:                                       ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.dx
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
end_hunk_2
begin_hunk_3_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e5d62906326e8bE":bb.a
  %i.hu = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.hu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he78a4bd1df902309E.exit.i.i.i", label %.lr.ph489

bb.cj:                                            ; preds = %.lr.ph489
  %i.hv = icmp eq i64 %i.hx, %.val1.i.i.i
  br i1 %i.hv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he78a4bd1df902309E.exit.i.i.i", label %.lr.ph489

.lr.ph489:                                        ; preds = %bb.ci, %bb.cj
  %.sroa.0.0.i.i.i.i.i488 = phi i64 [ %i.hx, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i.i488
  %i.hx = add i64 %.sroa.0.0.i.i.i.i.i488, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17ha0bf32c63a61b098E"(ptr noalias noundef align 8 dereferenceable(160) %i.hw)
          to label %bb.cj unwind label %bb.cl, !noalias !1854

bb.ck:                                            ; preds = %.lr.ph491
  %i.hy = add i64 %.sroa.0.1.i.i.i.i.i490, 1      ; 2 uses
  %i.hz = icmp eq i64 %i.hy, %.val1.i.i.i
  br i1 %i.hz, label %.body.i2.i.i, label %.lr.ph491

bb.cl:                                            ; preds = %.lr.ph489
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ib = icmp eq i64 %i.hx, %.val1.i.i.i
  br i1 %i.ib, label %.body.i2.i.i, label %.lr.ph491

.lr.ph491:                                        ; preds = %bb.cl, %bb.ck
  %.sroa.0.1.i.i.i.i.i490 = phi i64 [ %i.hy, %bb.ck ], [ %i.hx, %bb.cl ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i490
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17ha0bf32c63a61b098E"(ptr noalias noundef align 8 dereferenceable(160) %i.ic) #43
          to label %bb.ck unwind label %bb.cm, !noalias !1854

bb.cm:                                            ; preds = %.lr.ph491
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !1854
  unreachable

.body.i2.i.i:                                     ; preds = %bb.ck, %bb.cl
  %.val4.i.i.i = load i64, ptr %i.aw, align 8, !range !39, !alias.scope !1853, !noalias !1793, !noundef !15 ; 2 uses
  %i.ie = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.ie, label %.body.i.i, label %bb.cn

bb.cn:                                            ; preds = %.body.i2.i.i
  %i.if = mul nuw i64 %.val4.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1854
  br label %.body.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he78a4bd1df902309E.exit.i.i.i": ; preds = %bb.cj, %bb.ci
  %.val2.i.i.i = load i64, ptr %i.aw, align 8, !range !39, !alias.scope !1853, !noalias !1793, !noundef !15 ; 2 uses
  %i.ig = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ig, label %common.resume.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he78a4bd1df902309E.exit.i.i.i"
  %i.ih = mul nuw i64 %.val2.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1854
  br label %common.resume.i.i.i.i

.thread156.i.i.i.i.i:                             ; preds = %bb.ae, %bb.ab
  %.sroa.028.1.lpad-body.i.i.i.i.i = phi i1 [ %.sroa.028.1.i.i.i.i.i, %bb.ab ], [ false, %bb.ae ]
  %eh.lpad-body52.i.i.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.ab ], [ %i.dc, %bb.ae ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ag) #43
          to label %bb.cp unwind label %bb.aa, !noalias !1794

.critedge.i.i.i.i.i:                              ; preds = %bb.cp
  br i1 %.sroa.028.1.lpad-body.i.i.i.i.i, label %bb.cq, label %.critedge42.thread.i.i.i.i.i

bb.cp:                                            ; preds = %.thread156.i.i.i.i.i
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #43
          to label %.critedge.i.i.i.i.i unwind label %bb.aa, !noalias !1793

bb.cq:                                            ; preds = %.critedge.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i) #43
          to label %bb.cr unwind label %bb.aa, !noalias !1794

bb.cr:                                            ; preds = %bb.cq
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #43
          to label %.critedge42.thread.i.i.i.i.i unwind label %bb.aa, !noalias !1793

.noexc95.i.i.i.i.i:                               ; preds = %bb.ct, %bb.cs, %.critedge42.thread.i.i.i.i.i
  br i1 %.sroa.09.1149.i.i.i.i.i, label %.thread189.i.i.i.i.i, label %.thread199.i.i.i.i.i

.critedge42.thread.i.i.i.i.i:                     ; preds = %bb.cr, %.critedge.i.i.i.i.i, %.body69.i.i.i.i.i, %.critedge42.i.i.i.i.i
  %.pn.pn151.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i, %.critedge42.i.i.i.i.i ], [ %eh.lpad-body52.i.i.i.i.i, %bb.cr ], [ %eh.lpad-body52.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %eh.lpad-body70.i.i.i.i.i, %.body69.i.i.i.i.i ] ; 2 uses
  %.sroa.09.1149.i.i.i.i.i = phi i1 [ true, %.critedge42.i.i.i.i.i ], [ false, %bb.cr ], [ false, %.critedge.i.i.i.i.i ], [ false, %.body69.i.i.i.i.i ]
  %.sroa.016.2147.i.i.i.i.i = phi i8 [ %.sroa.016.2.i.i.i.i.i, %.critedge42.i.i.i.i.i ], [ 1, %bb.cr ], [ 1, %.critedge.i.i.i.i.i ], [ 1, %.body69.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %i.ii = load ptr, ptr %i.ar, align 8, !alias.scope !1857, !noalias !1793, !noundef !15 ; 3 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %.noexc95.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.critedge42.thread.i.i.i.i.i
  %i.ik = load i64, ptr %i.ii, align 8, !noalias !1858, !noundef !15
  %i.il = add i64 %i.ik, -1                       ; 2 uses
  store i64 %i.il, ptr %i.ii, align 8, !noalias !1858
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.ct, label %.noexc95.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %.noexc95.i.i.i.i.i unwind label %bb.aa, !noalias !1793

bb.cu:                                            ; preds = %.thread189.i.i.i.i.i
  %i.in = load ptr, ptr %i.af, align 8, !noalias !1793, !noundef !15
  %.not216.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not216.i.i.i.i.i, label %.thread199.i.i.i.i.i, label %bb.cv

.thread189.i.i.i.i.i:                             ; preds = %.noexc95.i.i.i.i.i, %.critedge42.i.i.i.i.i
  %.sroa.016.2146198.i.i.i.i.i = phi i8 [ %.sroa.016.2147.i.i.i.i.i, %.noexc95.i.i.i.i.i ], [ %.sroa.016.2.i.i.i.i.i, %.critedge42.i.i.i.i.i ] ; 2 uses
  %.pn.pn150194.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn151.i.i.i.i.i, %.noexc95.i.i.i.i.i ], [ %.pn.pn.i.i.i.i.i, %.critedge42.i.i.i.i.i ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #43
          to label %bb.cu unwind label %bb.aa, !noalias !1793

.thread199.i.i.i.i.i:                             ; preds = %bb.cv, %bb.cu, %.noexc95.i.i.i.i.i
  %.pn.pn150193206.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn150194.i.i.i.i.i, %bb.cu ], [ %.pn.pn150194.i.i.i.i.i, %bb.cv ], [ %.pn.pn151.i.i.i.i.i, %.noexc95.i.i.i.i.i ] ; 2 uses
  %.sroa.09.1148195205.i.i.i.i.i = phi i1 [ true, %bb.cu ], [ true, %bb.cv ], [ false, %.noexc95.i.i.i.i.i ]
  %.sroa.016.2146197204.i.i.i.i.i = phi i8 [ %.sroa.016.2146198.i.i.i.i.i, %bb.cu ], [ %.sroa.016.2146198.i.i.i.i.i, %bb.cv ], [ %.sroa.016.2147.i.i.i.i.i, %.noexc95.i.i.i.i.i ]
  %i.io = trunc nuw i8 %.sroa.016.2146197204.i.i.i.i.i to i1
  br i1 %i.io, label %bb.cw, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit98.i.i.i.i.i"

bb.cv:                                            ; preds = %bb.cu
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af) #43
          to label %.thread199.i.i.i.i.i unwind label %bb.aa, !noalias !1793

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit98.i.i.i.i.i": ; preds = %bb.cy, %bb.cx, %bb.cw, %.thread199.i.i.i.i.i
  br i1 %.sroa.09.1148195205.i.i.i.i.i, label %bb.cz, label %common.resume.i.i.i.i

bb.cw:                                            ; preds = %.thread199.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  %i.ip = load ptr, ptr %i.ap, align 8, !alias.scope !1861, !noalias !1793, !noundef !15 ; 3 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit98.i.i.i.i.i", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ir = load i64, ptr %i.ip, align 8, !noalias !1862, !noundef !15
  %i.is = add i64 %i.ir, -1                       ; 2 uses
  store i64 %i.is, ptr %i.ip, align 8, !noalias !1862
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %bb.cy, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit98.i.i.i.i.i"

bb.cy:                                            ; preds = %bb.cx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit98.i.i.i.i.i" unwind label %bb.aa, !noalias !1793

bb.cz:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit98.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef align 8 dereferenceable(24) %i.aw) #43
          to label %common.resume.i.i.i.i unwind label %bb.aa, !noalias !1793

"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17h0ea6bdf94dd7b28bE.exit.i.i.i.i": ; preds = %bb.bx, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he78a4bd1df902309E.exit.i90.i.i.i.i.i", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit82.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1793
  br i1 %.sroa.0.2.i.i.i.i, label %bb.da, label %bb.de

bb.da:                                            ; preds = %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17h0ea6bdf94dd7b28bE.exit.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2.i.i.i.i) ]
  %i.iu = icmp eq ptr %.sroa.6.2.i.i.i.i, null
  br i1 %i.iu, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !1781, !noalias !1864, !align !22, !noundef !15 ; 4 uses
  %i.iv = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.iv, label %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17hbb7b60fe0b6fa8d7E.exit.i.i.i.i.i", label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h221047cb3d118c1eE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %.val.i.i.i.i.i)
          to label %"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17had657548add74eb0E.exit.i.i.i.i.i.i" unwind label %.body.i4.i.i.i.i, !noalias !1865

.body.i4.i.i.i.i:                                 ; preds = %bb.dc
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 392, i64 noundef 8) #40, !noalias !1865
  store ptr %.sroa.9.2.i.i.i.i, ptr %i.y, align 8, !alias.scope !1781, !noalias !1864
  br label %common.resume.i.i.i.i

"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17had657548add74eb0E.exit.i.i.i.i.i.i": ; preds = %bb.dc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 392, i64 noundef 8) #40, !noalias !1865
  br label %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17hbb7b60fe0b6fa8d7E.exit.i.i.i.i.i"

bb.dd:                                            ; preds = %bb.da
  store ptr %.sroa.6.2.i.i.i.i, ptr %.sroa.4.i.i.i, align 8, !alias.scope !1866, !noalias !1867
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4a3a586469886a13E.exit"

"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17hbb7b60fe0b6fa8d7E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17had657548add74eb0E.exit.i.i.i.i.i.i", %bb.db
  store ptr %.sroa.9.2.i.i.i.i, ptr %i.y, align 8, !alias.scope !1781, !noalias !1864
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4a3a586469886a13E.exit"

bb.de:                                            ; preds = %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17h0ea6bdf94dd7b28bE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i.i)
  %i.ix = icmp eq ptr %i.bc, %i.ac
  br i1 %i.ix, label %"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hb4675d8c259f16aeE.exit", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4a3a586469886a13E.exit": ; preds = %bb.dd, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17hbb7b60fe0b6fa8d7E.exit.i.i.i.i.i"
  %.sink4.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.75.i.i.i, %bb.dd ], [ %.sroa.4.i.i.i, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17hbb7b60fe0b6fa8d7E.exit.i.i.i.i.i" ]
  %.8.val1.sink.i.i.i.i.i = phi ptr [ %.sroa.9.2.i.i.i.i, %bb.dd ], [ null, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17hbb7b60fe0b6fa8d7E.exit.i.i.i.i.i" ]
  store ptr %.8.val1.sink.i.i.i.i.i, ptr %.sink4.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1866, !noalias !1867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1789
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i = load ptr, ptr %.sroa.4.i.i.i, align 8, !alias.scope !1868, !noalias !1869, !noundef !15
  %.sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.0..sroa.75.i.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i.i.i = load ptr, ptr %.sroa.75.i.i.i, align 8, !alias.scope !1868, !noalias !1869 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i.i)
  %i.iy = insertvalue { ptr, ptr } poison, ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.iy, ptr %.sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.0..sroa.75.i.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i.i.i, 1
  br label %"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hb4675d8c259f16aeE.exit"

"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hb4675d8c259f16aeE.exit": ; preds = %bb.de, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.i.i.i.i", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4a3a586469886a13E.exit", %bb.a
  %.7 = phi ptr [ %.sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.0..sroa.75.i.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4a3a586469886a13E.exit" ], [ undef, %bb.a ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.i.i.i.i" ], [ undef, %bb.de ]
  %i.iz = phi { ptr, ptr } [ %1, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4a3a586469886a13E.exit" ], [ { ptr null, ptr undef }, %bb.a ], [ { ptr null, ptr undef }, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.i.i.i.i" ], [ { ptr null, ptr undef }, %bb.de ]
  %i.ja = insertvalue { ptr, ptr } %i.iz, ptr %.7, 1
  ret { ptr, ptr } %i.ja
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, ptr } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5eeb8e30fb9416e2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1965, !nonnull !15, !align !22, !noundef !15 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1972, !noalias !1973, !noundef !15 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %.loopexit69.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1977, !noalias !1978, !nonnull !15, !noundef !15 ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.loopexit69.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %bb.g
  %i.k = phi ptr [ %i.l, %bb.g ], [ %i.g, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8, !alias.scope !1977, !noalias !1978
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1979
  call fastcc void @"_ZN16nickel_lang_core4term6record10RecordData17iter_without_opts28_$u7b$$u7b$closure$u7d$$u7d$17h8f37b1ce2e6b1670E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k), !noalias !1980
  %i.n = load i64, ptr %i.c, align 8, !range !29, !noalias !1979, !noundef !15
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !1979 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1979 ; 2 uses
  %i.q = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, null
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i) ]
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1981, !noalias !1982, !align !22, !noundef !15 ; 4 uses
  %i.r = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.r, label %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17h22efbb100d7bda6dE"(ptr noalias noundef nonnull align 8 dereferenceable(384) %.val.i.i.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7103c15da62e099cE.exit.i.i.i.i.i.i.i.i.i.i.i" unwind label %.body.i.i.i.i.i.i.i.i.i.i, !noalias !1983

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i.i.i16.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i15.sink.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i15.i.i.i.i, %.body.i.i.i.i.i.i16.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i10.sink.i.i.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.i.i10.i.i.i.i, %.body.i.i.i.i.i.i16.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ]
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.az, %.body.i.i.i.i.i.i16.i.i.i.i ], [ %i.ak, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %.body.i.i.i.i.i.i.i.i.i.i ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i15.sink.i.i.i.i, i64 noundef 384, i64 noundef 8) #40, !noalias !1984
  store ptr %.sroa.01.0.copyload.i.i.i.i10.sink.i.i.i.i, ptr %i.e, align 8, !alias.scope !1981, !noalias !1985
  resume { ptr, i32 } %common.resume.op.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7103c15da62e099cE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef 384, i64 noundef 8) #40, !noalias !1983
  br label %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i to i64
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i = trunc i64 %i.t to i32
  br label %bb.h

"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7103c15da62e099cE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.d
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !1981, !noalias !1982
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1979
  %i.u = icmp eq ptr %i.l, %i.i
  br i1 %i.u, label %.loopexit69.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i", %bb.f
  %.sroa.4.1.ph.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i, %bb.f ], [ undef, %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1979
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfe15ea7e49a14dffE.exit"

.loopexit69.i.i.i.i:                              ; preds = %bb.g, %bb.b, %bb.a
  store ptr null, ptr %i.f, align 8, !alias.scope !1972, !noalias !1973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  %i.v = load i64, ptr %0, align 8, !range !29, !alias.scope !1988, !noalias !1989, !noundef !15
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.loopexit69.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1992, !noalias !1993 ; 3 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1992, !noalias !1993 ; 4 uses
  store ptr null, ptr %i.x, align 8, !alias.scope !1992, !noalias !1993
  %.not20.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i, null
  br i1 %.not20.i.i.i.i.i.i, label %bb.o, label %.lr.ph.split.us.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !1994, !noalias !1995
  store ptr %.promoted.i.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !1994, !noalias !1995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %i.ab = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.z
  br i1 %i.ab, label %.loopexit.us.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.us.i.i.i.i.i.i

.lr.ph.i.i.i.i.us.i.i.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %bb.j
  %i.ac = phi ptr [ %i.ad, %bb.j ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 3 uses
  store ptr %i.ad, ptr %i.f, align 8, !alias.scope !1999, !noalias !2000
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2001
  call fastcc void @"_ZN16nickel_lang_core4term6record10RecordData17iter_without_opts28_$u7b$$u7b$closure$u7d$$u7d$17h8f37b1ce2e6b1670E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac), !noalias !2002
  %i.af = load i64, ptr %i.b, align 8, !range !29, !noalias !2001, !noundef !15
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %.split.us.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2001
  %i.ah = icmp eq ptr %i.ad, %i.z
  br i1 %i.ah, label %.loopexit.us.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.us.i.i.i.i.i.i

.loopexit.us.i.i.i.i.i.i:                         ; preds = %bb.j, %.lr.ph.split.us.i.i.i.i.i.i
  store ptr null, ptr %i.x, align 8, !alias.scope !1992, !noalias !1993
  br label %bb.o

.split.us.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !2001 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !2001 ; 2 uses
  %i.ai = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i, null
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.split.us.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i) ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1981, !noalias !2003, !align !22, !noundef !15 ; 4 uses
  %i.aj = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.aj, label %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17h22efbb100d7bda6dE"(ptr noalias noundef nonnull align 8 dereferenceable(384) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7103c15da62e099cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2004

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7103c15da62e099cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 384, i64 noundef 8) #40, !noalias !2004
  br label %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %.split.us.i.i.i.i.i.i
  %i.al = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i to i64
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.al to i32
  br label %bb.n

"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7103c15da62e099cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !1981, !noalias !2003
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.m
  %.sroa.4.1.ph.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ undef, %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h1718bf146b39b8a1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2001
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfe15ea7e49a14dffE.exit"

bb.o:                                             ; preds = %.loopexit.us.i.i.i.i.i.i, %bb.i, %.loopexit69.i.i.i.i
  store ptr null, ptr %i.f, align 8, !alias.scope !1972, !noalias !1973
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1972, !noalias !1973, !noundef !15 ; 3 uses
  %.not2.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not2.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfe15ea7e49a14dffE.exit.thread", label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4_@"_ZN16nickel_lang_core4eval5merge69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$5merge17hfdcc9d7b9761f3e8E":bb.a

bb.fh:                                            ; preds = %bb.fe, %bb.kp, %bb.fi
  %.sroa.061.4 = phi i8 [ 0, %bb.kp ], [ 1, %bb.fi ], [ 1, %bb.fe ] ; 3 uses
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fi:                                            ; preds = %bb.fe
  %i.sv = add i64 %i.sn, %i.sl
  %i.sw = add i64 %i.sv, %i.sp
  %i.sx = extractvalue { i64, i64 } %i.sq, 0
  %i.sy = extractvalue { i64, i64 } %i.sq, 1
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hefc8b000c428d777E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cq, i64 noundef %i.sw, i64 noundef %i.sx, i64 noundef %i.sy)
          to label %bb.fj unwind label %bb.fh

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17he85f7b7bd62f632aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.co)
  %.sroa.0.0.copyload.i = load i64, ptr %i.bh, align 8, !alias.scope !7019, !noalias !7020
  %.sroa.4.0..sroa_idx.i291 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i291, align 8, !alias.scope !7019, !noalias !7020, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.5.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i292, align 8, !alias.scope !7019, !noalias !7020 ; 2 uses
  %i.sz = icmp ult i64 %.sroa.5.0.copyload.i, 128102389400760776
  call void @llvm.assume(i1 %i.sz)
  %i.ta = getelementptr inbounds nuw [72 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.48.val) ]
  %i.tb = getelementptr inbounds nuw i8, ptr %.48.val, i64 712 ; 5 uses
  store ptr %.sroa.4.0.copyload.i, ptr %i.cp, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.ta, ptr %.sroa.668.0..sroa_idx, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store ptr %i.tb, ptr %i.tc, align 8
  invoke fastcc void @"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hce6ffd4987aea771E"(ptr noalias noundef align 8 dereferenceable(72) %i.cq, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cp)
          to label %bb.fl unwind label %.thread225

.thread225:                                       ; preds = %bb.kl, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread", %bb.fj, %bb.fl
  %.sroa.063.6.ph = phi i8 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread" ], [ 0, %bb.kl ], [ 1, %bb.fl ], [ 1, %bb.fj ]
  %.sroa.061.6.ph = phi i8 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread" ], [ 0, %bb.kl ], [ 0, %bb.fl ], [ 1, %bb.fj ]
  %lpad.thr_comm223 = landingpad { ptr, i32 }
          cleanup
  br label %.thread214

bb.fk:                                            ; preds = %bb.kf, %bb.kg, %bb.kh
  %lpad.thr_comm.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17he85f7b7bd62f632aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cm)
  %.sroa.0.0.copyload.i293 = load i64, ptr %i.bg, align 8, !alias.scope !7021, !noalias !7022
  %.sroa.4.0..sroa_idx.i294 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.4.0.copyload.i295 = load ptr, ptr %.sroa.4.0..sroa_idx.i294, align 8, !alias.scope !7021, !noalias !7022, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.5.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.5.0.copyload.i297 = load i64, ptr %.sroa.5.0..sroa_idx.i296, align 8, !alias.scope !7021, !noalias !7022 ; 2 uses
  %i.td = icmp ult i64 %.sroa.5.0.copyload.i297, 128102389400760776
  call void @llvm.assume(i1 %i.td)
  %i.te = getelementptr inbounds nuw [72 x i8], ptr %.sroa.4.0.copyload.i295, i64 %.sroa.5.0.copyload.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  store ptr %.sroa.4.0.copyload.i295, ptr %i.cn, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.4.0.copyload.i295, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %.sroa.0.0.copyload.i293, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.te, ptr %.sroa.676.0..sroa_idx, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr %i.tb, ptr %i.tf, align 8
  invoke fastcc void @"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hd9e4a05c68ab1a34E"(ptr noalias noundef align 8 dereferenceable(72) %i.cq, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cn)
          to label %bb.fm unwind label %.thread225

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17h3319ec847cdbde47E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cl)
  %.sroa.0.0.copyload.i298 = load i64, ptr %i.bf, align 8, !alias.scope !7023, !noalias !7024
  %.sroa.4.0..sroa_idx.i299 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.4.0.copyload.i300 = load ptr, ptr %.sroa.4.0..sroa_idx.i299, align 8, !alias.scope !7023, !noalias !7024, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.5.0..sroa_idx.i301 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.5.0.copyload.i302 = load i64, ptr %.sroa.5.0..sroa_idx.i301, align 8, !alias.scope !7023, !noalias !7024 ; 3 uses
  %i.tg = icmp ult i64 %.sroa.5.0.copyload.i302, 82351536043346213
  call void @llvm.assume(i1 %i.tg)
  %.idx = mul nuw nsw i64 %.sroa.5.0.copyload.i302, 112
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i300, i64 %.idx ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store ptr %.sroa.4.0.copyload.i300, ptr %i.ck, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 32 uses
  store ptr %.sroa.4.0.copyload.i300, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %.sroa.0.0.copyload.i298, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.th, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ti = icmp eq i64 %.sroa.5.0.copyload.i302, 0
  br i1 %i.ti, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.lr.ph": ; preds = %bb.fm
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.to = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.as, i64 280 ; 8 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ar, i64 280 ; 7 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.tu = zext i1 %i.ru to i8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.536.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 288 ; 6 uses
  %.sroa.12.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 5 uses
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 288 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 5 uses
  %.sroa.5.0..sroa_idx136.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.sroa.4141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.6.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.tw = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.4144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.6146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.as, i64 336 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ar, i64 336 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ar, i64 344
  %i.uc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ar, i64 352
  %i.ug = getelementptr inbounds nuw i8, ptr %i.as, i64 353
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ar, i64 353
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ak, i64 336
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ak, i64 344
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  %i.um = getelementptr inbounds nuw i8, ptr %i.ak, i64 353
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %i.ar, i64 304
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ar, i64 312
  %i.up = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  %i.uq = getelementptr inbounds nuw i8, ptr %i.as, i64 312
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.944.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.944.sroa.5.0..sroa.944.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.944.sroa.6.0..sroa.944.0..sroa_idx45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ur = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.promoted = load i64, ptr %i.ci, align 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit"

bb.fn:                                            ; preds = %bb.ko, %bb.km
  %i.us = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  br label %.body314

.body314:                                         ; preds = %bb.ka, %bb.kc, %bb.fn
  %eh.lpad-body315 = phi { ptr, i32 } [ %i.us, %bb.fn ], [ %.pn88152.i, %bb.kc ], [ %.pn88152.i, %bb.ka ]
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h2f92e8fdf35c4338E"(ptr noalias noundef align 8 dereferenceable(32) %i.ck) #43
          to label %.thread214 unwind label %bb.ar

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.lr.ph", %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17hf53c1ea7b27308d5E.exit"
  %.sroa.083.0.copyload1501 = phi i64 [ %.promoted, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.lr.ph" ], [ %.sroa.083.0.copyload, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17hf53c1ea7b27308d5E.exit" ]
  %i.ut = phi ptr [ %.sroa.4.0.copyload.i300, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.lr.ph" ], [ %i.uu, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17hf53c1ea7b27308d5E.exit" ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7025)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 112 ; 33 uses
  %.sroa.083.0.copyload = load i64, ptr %i.ut, align 8, !noalias !7025 ; 34 uses
  %.not142 = icmp eq i64 %.sroa.083.0.copyload, -9223372036854775808
  br i1 %.not142, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread.loopexit", label %bb.fo

bb.fo:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit"
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cj, ptr noundef nonnull align 8 dereferenceable(20) %i.uv, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.684.0..sroa_idx, i64 32, i1 false)
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %i.uw, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.ux = load ptr, ptr %i.tj, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.uy = load i64, ptr %i.tk, align 8, !noundef !15
  %i.uz = getelementptr inbounds nuw [20 x i8], ptr %i.ux, i64 %i.uy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7027)
  call void @llvm.experimental.noalias.scope.decl(metadata !7028)
  %i.va = load ptr, ptr %i.tl, align 8, !alias.scope !7027, !noalias !7029, !noundef !15
  %i.vb = load ptr, ptr %i.tm, align 8, !alias.scope !7027, !noalias !7029, !noundef !15 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !7030
  %i.vc = load ptr, ptr %i.tn, align 8, !alias.scope !7028, !noalias !7031, !noundef !15 ; 2 uses
  store ptr %i.vc, ptr %i.at, align 8, !noalias !7030
  %i.vd = load ptr, ptr %i.to, align 8, !alias.scope !7028, !noalias !7031, !noundef !15 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !7030
  invoke void @_ZN16nickel_lang_core4term6record14SharedMetadata10into_inner17hdbe618e5e4e869d7E(ptr noalias noundef nonnull sret([360 x i8]) align 8 captures(address) dereferenceable(360) %i.as, ptr noundef %i.va)
          to label %bb.fq unwind label %.thread.i, !noalias !7030

bb.fp:                                            ; preds = %bb.js, %bb.jq
  br i1 %.sroa.031.2174.i, label %bb.ju, label %bb.jt

.thread.i:                                        ; preds = %bb.fo
  %i.ve = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  br label %bb.ju

bb.fq:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !7030
  invoke void @_ZN16nickel_lang_core4term6record14SharedMetadata10into_inner17hdbe618e5e4e869d7E(ptr noalias noundef nonnull sret([360 x i8]) align 8 captures(address) dereferenceable(360) %i.ar, ptr noundef %i.vc)
          to label %bb.fs unwind label %.thread160.i, !noalias !7032

bb.fr:                                            ; preds = %bb.jm, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.thread.i"
  br i1 %.sroa.028.3270375.i, label %bb.jn, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit124.i"

.thread160.i:                                     ; preds = %bb.fq
  %i.vf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  br label %bb.jn

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !7030
  store ptr %i.vb, ptr %i.ap, align 8, !noalias !7030
  store ptr %i.vd, ptr %i.tp, align 8, !noalias !7030
  %.not.i = icmp eq ptr %i.vb, null               ; 4 uses
  %.not76.i = icmp eq ptr %i.vd, null             ; 4 uses
  br i1 %.not.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  br i1 %.not76.i, label %bb.fw, label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  br i1 %.not76.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit.i.thread", label %.thread180.i

bb.fv:                                            ; preds = %bb.ft
  %i.vg = invoke noundef zeroext i1 @"_ZN79_$LT$nickel_lang_parser..ast..MergePriority$u20$as$u20$core..cmp..PartialEq$GT$2eq17h115affa3fe6d8e65E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.tq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.tr)
          to label %bb.fx unwind label %.body.thread311.i.loopexit, !noalias !7032

bb.fw:                                            ; preds = %bb.fx, %bb.ft
  %i.vh = invoke noundef i8 @"_ZN80_$LT$nickel_lang_parser..ast..MergePriority$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h2fdca982c50c8306E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.tq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.tr)
          to label %bb.gz unwind label %.body.thread311.i.loopexit, !noalias !7032 ; 2 uses

.body.thread191.i:                                ; preds = %bb.hj, %bb.hc, %bb.hb, %bb.gq
  %.sroa.016.0.ph.i = phi i1 [ false, %bb.hj ], [ true, %bb.hc ], [ true, %bb.hb ], [ false, %bb.gq ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  br label %.body.thread.i

.body.thread311.i.loopexit:                       ; preds = %bb.fv, %bb.fw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  br label %.body.thread311.i

.body.thread311.i.loopexit.split-lp:              ; preds = %bb.he
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread311.i

.body.i303:                                       ; preds = %bb.hi, %.thread180.i
  %.sroa.016.0.ph190.ph.i = phi i1 [ false, %bb.hi ], [ true, %.thread180.i ] ; 2 uses
  %lpad.thr_comm.split-lp310.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  br i1 %.not.i, label %.body.thread.i, label %.body.thread311.i

bb.fx:                                            ; preds = %bb.fv
  br i1 %i.vg, label %bb.fy, label %bb.fw

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7030
  store ptr %i.vb, ptr %i.ad, align 8, !noalias !7033
  store ptr %i.vd, ptr %i.ac, align 8, !noalias !7033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7033
  %i.vi = invoke noundef align 8 dereferenceable_or_null(8) ptr @_ZN16nickel_lang_core4eval5value11NickelValue8as_thunk17h8ff4254c86419aa3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %.noexc.i.i unwind label %.loopexit, !noalias !7034 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.fy
  %.not.i.i.i312 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i312, label %bb.gd, label %bb.fz

bb.fz:                                            ; preds = %.noexc.i.i
  %.val.i.i.i313 = load ptr, ptr %i.vi, align 8, !noalias !7034, !nonnull !15, !noundef !15 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.val.i.i.i313, i64 16 ; 6 uses
  %i.vk = load i64, ptr %i.vj, align 8, !noalias !7034, !noundef !15 ; 2 uses
  %i.vl = icmp ult i64 %i.vk, 9223372036854775807
  br i1 %i.vl, label %bb.gb, label %bb.ga, !prof !17

bb.ga:                                            ; preds = %bb.fz
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #41
          to label %.noexc42.i.i unwind label %.loopexit.split-lp, !noalias !7034

.noexc42.i.i:                                     ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.vm = add nuw nsw i64 %i.vk, 1
  store i64 %i.vm, ptr %i.vj, align 8, !noalias !7034
  %i.vn = getelementptr inbounds nuw i8, ptr %.val.i.i.i313, i64 24
  %i.vo = invoke noundef ptr @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData4deps17h8d46754d77d437e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vn)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$4deps17h3ef8890da46ee8eaE.exit.i.i.i" unwind label %bb.gc, !noalias !7034

bb.gc:                                            ; preds = %bb.gb
  %i.vp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  %i.vq = load i64, ptr %i.vj, align 8, !noalias !7034, !noundef !15
  %i.vr = add i64 %i.vq, -1
  store i64 %i.vr, ptr %i.vj, align 8, !noalias !7034
  br label %.body.thread.i.i

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$4deps17h3ef8890da46ee8eaE.exit.i.i.i": ; preds = %bb.gb
  %i.vs = load i64, ptr %i.vj, align 8, !noalias !7034, !noundef !15
  %i.vt = add i64 %i.vs, -1
  store i64 %i.vt, ptr %i.vj, align 8, !noalias !7034
  br label %bb.ge

bb.gd:                                            ; preds = %.noexc.i.i
  %i.vu = invoke noundef ptr @_ZN16nickel_lang_core4term6record9FieldDeps5empty17hc5e775af6b97226bE()
          to label %bb.ge unwind label %.loopexit, !noalias !7034

.loopexit:                                        ; preds = %bb.fy, %bb.gd, %bb.gm
  %lpad.loopexit374 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  br label %.body.thread.i.i

.loopexit.split-lp:                               ; preds = %bb.ga
  %lpad.loopexit.split-lp375 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.ge:                                            ; preds = %bb.gd, %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$4deps17h3ef8890da46ee8eaE.exit.i.i.i"
  %i.vv = phi ptr [ %i.vo, %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$4deps17h3ef8890da46ee8eaE.exit.i.i.i" ], [ %i.vu, %bb.gd ] ; 5 uses
  store ptr %i.vv, ptr %i.aa, align 8, !noalias !7033
  %i.vw = invoke noundef align 8 dereferenceable_or_null(8) ptr @_ZN16nickel_lang_core4eval5value11NickelValue8as_thunk17h8ff4254c86419aa3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %.noexc48.i.i unwind label %.loopexit377, !noalias !7034 ; 2 uses

.noexc48.i.i:                                     ; preds = %bb.ge
  %.not.i44.i.i = icmp eq ptr %i.vw, null
  br i1 %.not.i44.i.i, label %bb.gj, label %bb.gf

bb.gf:                                            ; preds = %.noexc48.i.i
  %.val.i45.i.i = load ptr, ptr %i.vw, align 8, !noalias !7034, !nonnull !15, !noundef !15 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.val.i45.i.i, i64 16 ; 6 uses
  %i.vy = load i64, ptr %i.vx, align 8, !noalias !7034, !noundef !15 ; 2 uses
  %i.vz = icmp ult i64 %i.vy, 9223372036854775807
  br i1 %i.vz, label %bb.gh, label %bb.gg, !prof !17

bb.gg:                                            ; preds = %bb.gf
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #41
          to label %.noexc49.i.i unwind label %.loopexit.split-lp378, !noalias !7034

.noexc49.i.i:                                     ; preds = %bb.gg
  unreachable

bb.gh:                                            ; preds = %bb.gf
  %i.wa = add nuw nsw i64 %i.vy, 1
  store i64 %i.wa, ptr %i.vx, align 8, !noalias !7034
  %i.wb = getelementptr inbounds nuw i8, ptr %.val.i45.i.i, i64 24
  %i.wc = invoke noundef ptr @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData4deps17h8d46754d77d437e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wb)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$4deps17h3ef8890da46ee8eaE.exit.i46.i.i" unwind label %bb.gi, !noalias !7034

bb.gi:                                            ; preds = %bb.gh
  %i.wd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  %i.we = load i64, ptr %i.vx, align 8, !noalias !7034, !noundef !15
  %i.wf = add i64 %i.we, -1
  store i64 %i.wf, ptr %i.vx, align 8, !noalias !7034
  br label %.body50.i.i

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$4deps17h3ef8890da46ee8eaE.exit.i46.i.i": ; preds = %bb.gh
end_hunk_4
begin_hunk_5_@"_ZN16nickel_lang_core4eval5merge69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$5merge17hfdcc9d7b9761f3e8E":bb.a

bb.in:                                            ; preds = %bb.im
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h887672c85bbbd88bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit.i" unwind label %bb.ht, !noalias !7032

bb.io:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !7030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !7030
  %i.zd = load i8, ptr %i.ue, align 8, !range !16, !noalias !7030, !noundef !15
  %i.ze = trunc nuw i8 %i.zd to i1
  %i.zf = load i8, ptr %i.uf, align 8, !range !16, !noalias !7030
  %.sroa.012.0.i = select i1 %i.ze, i8 %i.zf, i8 0
  %i.zg = load i8, ptr %i.ug, align 1, !range !16, !noalias !7030, !noundef !15
  %i.zh = trunc nuw i8 %i.zg to i1
  %i.zi = load i8, ptr %i.uh, align 1, !range !16, !noalias !7030
  %.sroa.013.0.i = select i1 %i.zh, i8 1, i8 %i.zi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ui, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false), !noalias !7030
  %i.zj = load ptr, ptr %i.aj, align 8, !noalias !7030, !noundef !15
  %i.zk = load i64, ptr %i.ud, align 8, !noalias !7030
  store ptr %i.zj, ptr %i.uj, align 8, !noalias !7030
  store i64 %i.zk, ptr %i.uk, align 8, !noalias !7030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ak, ptr noundef nonnull align 8 dereferenceable(280) %i.ai, i64 280, i1 false), !noalias !7030
  store i8 %.sroa.012.0.i, ptr %i.ul, align 8, !noalias !7030
  store i8 %.sroa.013.0.i, ptr %i.um, align 1, !noalias !7030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !7030
  %i.zl = invoke noundef ptr @"_ZN139_$LT$nickel_lang_core..term..record..SharedMetadata$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..record..FieldMetadata$GT$$GT$4from17h272bc45ab9412272E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(360) %i.ak)
          to label %bb.ip unwind label %bb.ij, !noalias !7032

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !7030
  %.sroa.023.0.copyload = load i64, ptr %i.an, align 8, !noalias !7046 ; 2 uses
  %.sroa.424.0.copyload = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !noalias !7046 ; 3 uses
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8, !noalias !7046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !7030
  call void @llvm.experimental.noalias.scope.decl(metadata !7047)
  call void @llvm.experimental.noalias.scope.decl(metadata !7048)
  call void @llvm.experimental.noalias.scope.decl(metadata !7049)
  %i.zm = load ptr, ptr %i.ao, align 8, !alias.scope !7050, !noalias !7030, !nonnull !15, !noundef !15 ; 2 uses
  %i.zn = load i64, ptr %i.zm, align 8, !noalias !7051, !noundef !15
  %i.zo = add i64 %i.zn, -1                       ; 2 uses
  store i64 %i.zo, ptr %i.zm, align 8, !noalias !7051
  %i.zp = icmp eq i64 %i.zo, 0
  br i1 %i.zp, label %bb.iq, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i"

bb.iq:                                            ; preds = %bb.ip
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i" unwind label %bb.ir, !noalias !7032

bb.ir:                                            ; preds = %bb.iq
  %i.zq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !7052)
  %i.zr = load ptr, ptr %i.tv, align 8, !alias.scope !7053, !noalias !7030, !noundef !15 ; 3 uses
  %i.zs = icmp eq ptr %i.zr, null
  br i1 %i.zs, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.thread.i", label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.zt = load i64, ptr %i.zr, align 8, !noalias !7054, !noundef !15
  %i.zu = add i64 %i.zt, -1                       ; 2 uses
  store i64 %i.zu, ptr %i.zr, align 8, !noalias !7054
  %i.zv = icmp eq i64 %i.zu, 0
  br i1 %i.zv, label %bb.it, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.thread.i"

bb.it:                                            ; preds = %bb.is
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tv)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.thread.i" unwind label %bb.iw, !noalias !7032

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i": ; preds = %bb.iq, %bb.ip
  call void @llvm.experimental.noalias.scope.decl(metadata !7055)
  %i.zw = load ptr, ptr %i.tv, align 8, !alias.scope !7056, !noalias !7030, !noundef !15 ; 3 uses
  %i.zx = icmp eq ptr %i.zw, null
  br i1 %i.zx, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i", label %bb.iu

bb.iu:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i"
  %i.zy = load i64, ptr %i.zw, align 8, !noalias !7057, !noundef !15
  %i.zz = add i64 %i.zy, -1                       ; 2 uses
  store i64 %i.zz, ptr %i.zw, align 8, !noalias !7057
  %i.aaa = icmp eq i64 %i.zz, 0
  br i1 %i.aaa, label %bb.iv, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i"

bb.iv:                                            ; preds = %bb.iu
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tv)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i" unwind label %bb.hs, !noalias !7032

bb.iw:                                            ; preds = %bb.it
  %i.aab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7032
  unreachable

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i": ; preds = %bb.iv, %bb.iu, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !7030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !7030
  %i.aac = trunc nuw i8 %.sroa.019.0212.i to i1
  br i1 %i.aac, label %bb.ix, label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E.exit.i"

"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E.exit.i": ; preds = %bb.ja, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i.i", %bb.ix, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !7030
  %i.aad = trunc nuw i8 %.sroa.021.2207.i to i1
  br i1 %i.aad, label %bb.jb, label %bb.kk

bb.ix:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7058)
  %i.aae = load i64, ptr %i.tr, align 8, !range !65, !alias.scope !7058, !noalias !7030, !noundef !15 ; 4 uses
  %i.aaf = icmp ne i64 %i.aae, -9223372036854775805
  call void @llvm.assume(i1 %i.aaf)
  %i.aag = icmp ult i64 %i.aae, -9223372036854775807
  br i1 %i.aag, label %bb.iy, label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E.exit.i"

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.experimental.noalias.scope.decl(metadata !7059)
  %switch.i.i.i = icmp sgt i64 %i.aae, 0
  br i1 %switch.i.i.i, label %bb.iz, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i.i"

bb.iz:                                            ; preds = %bb.iy
  %.val5.i.i.i = load ptr, ptr %.sroa.465.0..sroa_idx.i, align 8, !alias.scope !7060, !noalias !7030, !nonnull !15, !noundef !15
  %i.aah = shl nuw i64 %i.aae, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.aah, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !7061
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i.i": ; preds = %bb.iz, %bb.iy
  %.val.i.i113.i = load i64, ptr %i.un, align 8, !range !33, !alias.scope !7060, !noalias !7030, !noundef !15 ; 2 uses
  %switch8.i.i.i = icmp sgt i64 %.val.i.i113.i, 0
  br i1 %switch8.i.i.i, label %bb.ja, label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E.exit.i"

bb.ja:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i.i"
  %.val1.i.i.i310 = load ptr, ptr %i.uo, align 8, !alias.scope !7060, !noalias !7030, !nonnull !15, !noundef !15
  %i.aai = shl nuw i64 %.val.i.i113.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i310, i64 noundef %i.aai, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !7061
  br label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E.exit.i"

bb.jb:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7062)
  %i.aaj = load i64, ptr %i.tq, align 8, !range !65, !alias.scope !7062, !noalias !7030, !noundef !15 ; 4 uses
  %i.aak = icmp ne i64 %i.aaj, -9223372036854775805
  call void @llvm.assume(i1 %i.aak)
  %i.aal = icmp ult i64 %i.aaj, -9223372036854775807
  br i1 %i.aal, label %bb.jc, label %bb.kk

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.experimental.noalias.scope.decl(metadata !7063)
  %switch.i.i114.i = icmp sgt i64 %i.aaj, 0
  br i1 %switch.i.i114.i, label %bb.jd, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i115.i"

bb.jd:                                            ; preds = %bb.jc
  %.val5.i.i119.i = load ptr, ptr %.sroa.471.0..sroa_idx.i, align 8, !alias.scope !7064, !noalias !7030, !nonnull !15, !noundef !15
  %i.aam = shl nuw i64 %i.aaj, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i119.i, i64 noundef %i.aam, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !7065
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i115.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i115.i": ; preds = %bb.jd, %bb.jc
  %.val.i.i116.i = load i64, ptr %i.up, align 8, !range !33, !alias.scope !7064, !noalias !7030, !noundef !15 ; 2 uses
  %switch8.i.i117.i = icmp sgt i64 %.val.i.i116.i, 0
  br i1 %switch8.i.i117.i, label %bb.je, label %bb.kk

bb.je:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i115.i"
  %.val1.i.i118.i = load ptr, ptr %i.uq, align 8, !alias.scope !7064, !noalias !7030, !nonnull !15, !noundef !15
  %i.aan = shl nuw i64 %.val.i.i116.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i118.i, i64 noundef %i.aan, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !7065
  br label %bb.kk

bb.jf:                                            ; preds = %bb.id
  %i.aao = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef align 8 dereferenceable(24) %i.am) #43
          to label %bb.ia unwind label %bb.ht, !noalias !7032

.thread224.i:                                     ; preds = %.thread324.i.loopexit, %.thread324.i.loopexit.split-lp, %.thread224.i.loopexit, %.thread224.i.loopexit.split-lp, %._crit_edge.i
  %.sroa.019.2252.i = phi i8 [ %.sroa.019.0212.i, %._crit_edge.i ], [ 0, %.thread224.i.loopexit ], [ 0, %.thread224.i.loopexit.split-lp ], [ %.sroa.019.0214.ph.i.ph, %.thread324.i.loopexit ], [ 1, %.thread324.i.loopexit.split-lp ]
  %.sroa.021.3250.i = phi i8 [ %.sroa.021.2207.i, %._crit_edge.i ], [ 1, %.thread224.i.loopexit ], [ 1, %.thread224.i.loopexit.split-lp ], [ %.sroa.021.2209.ph.i.ph, %.thread324.i.loopexit ], [ 0, %.thread324.i.loopexit.split-lp ]
  %.sroa.027.0246.i = phi i8 [ %.sroa.027.2.i, %._crit_edge.i ], [ 1, %.thread224.i.loopexit ], [ 1, %.thread224.i.loopexit.split-lp ], [ 1, %.thread324.i.loopexit ], [ 1, %.thread324.i.loopexit.split-lp ]
  %.sroa.028.0244.i = phi i1 [ %.sroa.028.2.i, %._crit_edge.i ], [ true, %.thread224.i.loopexit ], [ true, %.thread224.i.loopexit.split-lp ], [ true, %.thread324.i.loopexit ], [ true, %.thread324.i.loopexit.split-lp ]
  %.sroa.031.4242.i = phi i1 [ %.sroa.031.6.i, %._crit_edge.i ], [ true, %.thread224.i.loopexit ], [ true, %.thread224.i.loopexit.split-lp ], [ true, %.thread324.i.loopexit ], [ true, %.thread324.i.loopexit.split-lp ]
  %.sroa.034.4240.i = phi i1 [ false, %._crit_edge.i ], [ true, %.thread224.i.loopexit ], [ true, %.thread224.i.loopexit.split-lp ], [ true, %.thread324.i.loopexit ], [ true, %.thread324.i.loopexit.split-lp ]
  %.pn83238.i = phi { ptr, i32 } [ %.pn.pn.i, %._crit_edge.i ], [ %lpad.loopexit385, %.thread224.i.loopexit ], [ %lpad.loopexit.split-lp386, %.thread224.i.loopexit.split-lp ], [ %lpad.loopexit382, %.thread324.i.loopexit ], [ %lpad.loopexit.split-lp383, %.thread324.i.loopexit.split-lp ]
  %.sroa.0127.1236.i = phi ptr [ %.sroa.0127.0202.i, %._crit_edge.i ], [ %i.xc, %.thread224.i.loopexit ], [ %i.xc, %.thread224.i.loopexit.split-lp ], [ %.sroa.0127.0204.ph.i.ph, %.thread324.i.loopexit ], [ %i.wy, %.thread324.i.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E"(ptr noalias noundef align 8 dereferenceable(56) %i.aq) #43, !noalias !7032
  br label %bb.jh

bb.jg:                                            ; preds = %bb.jh
  br i1 %.sroa.028.0243.ph.i, label %.thread256.i, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i"

bb.jh:                                            ; preds = %.thread224.i, %._crit_edge.i
  %.sroa.019.2251.ph.i = phi i8 [ %.sroa.019.0212.i, %._crit_edge.i ], [ %.sroa.019.2252.i, %.thread224.i ] ; 2 uses
  %.sroa.021.3249.ph.i = phi i8 [ %.sroa.021.2207.i, %._crit_edge.i ], [ %.sroa.021.3250.i, %.thread224.i ] ; 2 uses
  %.sroa.027.0245.ph.i = phi i8 [ %.sroa.027.2.i, %._crit_edge.i ], [ %.sroa.027.0246.i, %.thread224.i ] ; 2 uses
  %.sroa.028.0243.ph.i = phi i1 [ %.sroa.028.2.i, %._crit_edge.i ], [ %.sroa.028.0244.i, %.thread224.i ]
  %.sroa.031.4241.ph.i = phi i1 [ %.sroa.031.6.i, %._crit_edge.i ], [ %.sroa.031.4242.i, %.thread224.i ] ; 2 uses
  %.sroa.034.4239.ph.i = phi i1 [ false, %._crit_edge.i ], [ %.sroa.034.4240.i, %.thread224.i ] ; 2 uses
  %.pn83237.ph.i = phi { ptr, i32 } [ %.pn.pn.i, %._crit_edge.i ], [ %.pn83238.i, %.thread224.i ] ; 2 uses
  %.sroa.0127.1235.ph.i = phi ptr [ %.sroa.0127.0202.i, %._crit_edge.i ], [ %.sroa.0127.1236.i, %.thread224.i ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE"(ptr %.sroa.0127.1235.ph.i) #43
          to label %bb.jg unwind label %bb.ht, !noalias !7032

.body.thread.i:                                   ; preds = %.body.thread311.i, %.body.i303, %.body.thread191.i
  %eh.lpad-body189.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread191.i ], [ %lpad.phi315.i, %.body.thread311.i ], [ %lpad.thr_comm.split-lp310.i, %.body.i303 ] ; 2 uses
  %.sroa.016.0.lpad-body188.i = phi i1 [ %.sroa.016.0.ph.i, %.body.thread191.i ], [ %.sroa.016.0.ph190314.i, %.body.thread311.i ], [ %.sroa.016.0.ph190.ph.i, %.body.i303 ]
  %i.aap = icmp ne ptr %i.vd, null
  %or.cond9.i = and i1 %i.aap, %.sroa.016.0.lpad-body188.i
  br i1 %or.cond9.i, label %bb.ji, label %.thread256.i

.body.thread311.i:                                ; preds = %.body.thread311.i.loopexit, %.body.thread311.i.loopexit.split-lp, %.body.i303
  %lpad.phi315.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp310.i, %.body.i303 ], [ %lpad.loopexit, %.body.thread311.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread311.i.loopexit.split-lp ]
  %.sroa.016.0.ph190314.i = phi i1 [ %.sroa.016.0.ph190.ph.i, %.body.i303 ], [ true, %.body.thread311.i.loopexit ], [ true, %.body.thread311.i.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #43
          to label %.body.thread.i unwind label %bb.ht, !noalias !7032

bb.ji:                                            ; preds = %.body.thread.i
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tp) #43
          to label %.thread256.i unwind label %bb.ht, !noalias !7032

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i": ; preds = %bb.jk, %bb.jj, %.thread256.i, %bb.jg
  %.sroa.019.3276.i = phi i8 [ %.sroa.019.2251.ph.i, %bb.jg ], [ %.sroa.019.3277.i, %bb.jk ], [ %.sroa.019.3277.i, %.thread256.i ], [ %.sroa.019.3277.i, %bb.jj ] ; 2 uses
  %.sroa.021.4274.i = phi i8 [ %.sroa.021.3249.ph.i, %bb.jg ], [ %.sroa.021.4275.i, %bb.jk ], [ %.sroa.021.4275.i, %.thread256.i ], [ %.sroa.021.4275.i, %bb.jj ] ; 2 uses
  %.sroa.027.5272.i = phi i8 [ %.sroa.027.0245.ph.i, %bb.jg ], [ %.sroa.027.5273.i, %bb.jk ], [ %.sroa.027.5273.i, %.thread256.i ], [ %.sroa.027.5273.i, %bb.jj ]
  %.sroa.028.3270.i = phi i1 [ false, %bb.jg ], [ true, %bb.jk ], [ true, %.thread256.i ], [ true, %bb.jj ] ; 2 uses
  %.sroa.031.7268.i = phi i1 [ %.sroa.031.4241.ph.i, %bb.jg ], [ %.sroa.031.7269.i, %bb.jk ], [ %.sroa.031.7269.i, %.thread256.i ], [ %.sroa.031.7269.i, %bb.jj ] ; 2 uses
  %.sroa.034.6266.i = phi i1 [ %.sroa.034.4239.ph.i, %bb.jg ], [ %.sroa.034.6267.i, %bb.jk ], [ %.sroa.034.6267.i, %.thread256.i ], [ %.sroa.034.6267.i, %bb.jj ] ; 2 uses
  %.pn83.pn264.i = phi { ptr, i32 } [ %.pn83237.ph.i, %bb.jg ], [ %.pn83.pn265.i, %bb.jk ], [ %.pn83.pn265.i, %.thread256.i ], [ %.pn83.pn265.i, %bb.jj ] ; 2 uses
  %i.aaq = trunc nuw i8 %.sroa.027.5272.i to i1
  br i1 %i.aaq, label %bb.jl, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.thread.i"

.thread256.i:                                     ; preds = %bb.ji, %.body.thread.i, %bb.jg, %bb.gx, %.body.i.i, %bb.gw
  %.sroa.019.3277.i = phi i8 [ %.sroa.019.2251.ph.i, %bb.jg ], [ 1, %bb.ji ], [ 1, %.body.thread.i ], [ 1, %bb.gw ], [ 1, %.body.i.i ], [ 1, %bb.gx ] ; 3 uses
  %.sroa.021.4275.i = phi i8 [ %.sroa.021.3249.ph.i, %bb.jg ], [ 1, %bb.ji ], [ 1, %.body.thread.i ], [ 1, %bb.gw ], [ 1, %.body.i.i ], [ 1, %bb.gx ] ; 3 uses
  %.sroa.027.5273.i = phi i8 [ %.sroa.027.0245.ph.i, %bb.jg ], [ 1, %bb.ji ], [ 1, %.body.thread.i ], [ 1, %bb.gw ], [ 1, %.body.i.i ], [ 1, %bb.gx ] ; 3 uses
  %.sroa.031.7269.i = phi i1 [ %.sroa.031.4241.ph.i, %bb.jg ], [ true, %bb.ji ], [ true, %.body.thread.i ], [ true, %bb.gw ], [ true, %.body.i.i ], [ true, %bb.gx ] ; 3 uses
  %.sroa.034.6267.i = phi i1 [ %.sroa.034.4239.ph.i, %bb.jg ], [ true, %bb.ji ], [ true, %.body.thread.i ], [ true, %bb.gw ], [ true, %.body.i.i ], [ true, %bb.gx ] ; 3 uses
  %.pn83.pn265.i = phi { ptr, i32 } [ %.pn83237.ph.i, %bb.jg ], [ %eh.lpad-body189.i, %bb.ji ], [ %eh.lpad-body189.i, %.body.thread.i ], [ %.pn3972.i.i, %bb.gw ], [ %.pn62.i.i, %.body.i.i ], [ %.pn3972.i.i, %bb.gx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7066)
  %i.aar = load ptr, ptr %i.ua, align 8, !alias.scope !7066, !noalias !7030, !noundef !15 ; 3 uses
  %i.aas = icmp eq ptr %i.aar, null
  br i1 %i.aas, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i", label %bb.jj

bb.jj:                                            ; preds = %.thread256.i
  %i.aat = load i64, ptr %i.aar, align 8, !noalias !7067, !noundef !15
  %i.aau = add i64 %i.aat, -1                     ; 2 uses
  store i64 %i.aau, ptr %i.aar, align 8, !noalias !7067
  %i.aav = icmp eq i64 %i.aau, 0
  br i1 %i.aav, label %bb.jk, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i"

bb.jk:                                            ; preds = %bb.jj
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h887672c85bbbd88bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ua)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i" unwind label %bb.ht, !noalias !7032

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.thread.i": ; preds = %bb.jl, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i", %bb.it, %bb.is, %bb.ir, %bb.hs
  %.pn83.pn264378.i = phi { ptr, i32 } [ %.pn83.pn264.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i" ], [ %.pn83.pn264.i, %bb.jl ], [ %lpad.thr_comm.split-lp.i, %bb.hs ], [ %i.zq, %bb.it ], [ %i.zq, %bb.is ], [ %i.zq, %bb.ir ] ; 2 uses
  %.sroa.034.6266377.i = phi i1 [ %.sroa.034.6266.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i" ], [ %.sroa.034.6266.i, %bb.jl ], [ false, %bb.hs ], [ false, %bb.it ], [ false, %bb.is ], [ false, %bb.ir ] ; 2 uses
  %.sroa.031.7268376.i = phi i1 [ %.sroa.031.7268.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i" ], [ %.sroa.031.7268.i, %bb.jl ], [ false, %bb.hs ], [ false, %bb.it ], [ false, %bb.is ], [ false, %bb.ir ] ; 2 uses
  %.sroa.028.3270375.i = phi i1 [ %.sroa.028.3270.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i" ], [ %.sroa.028.3270.i, %bb.jl ], [ false, %bb.hs ], [ false, %bb.it ], [ false, %bb.is ], [ false, %bb.ir ]
  %.sroa.027.5272374.i = phi i1 [ false, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i" ], [ true, %bb.jl ], [ false, %bb.hs ], [ false, %bb.it ], [ false, %bb.is ], [ false, %bb.ir ] ; 2 uses
  %.sroa.021.4274373.i = phi i8 [ %.sroa.021.4274.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i" ], [ %.sroa.021.4274.i, %bb.jl ], [ %.sroa.021.2207.i, %bb.hs ], [ %.sroa.021.2207.i, %bb.it ], [ %.sroa.021.2207.i, %bb.is ], [ %.sroa.021.2207.i, %bb.ir ] ; 2 uses
  %.sroa.019.3276372.i = phi i8 [ %.sroa.019.3276.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i" ], [ %.sroa.019.3276.i, %bb.jl ], [ %.sroa.019.0212.i, %bb.hs ], [ %.sroa.019.0212.i, %bb.it ], [ %.sroa.019.0212.i, %bb.is ], [ %.sroa.019.0212.i, %bb.ir ]
  %i.aaw = trunc nuw i8 %.sroa.019.3276372.i to i1
  br i1 %i.aaw, label %bb.jm, label %bb.fr

bb.jl:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.i"
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..term..TypeAnnotation$GT$17h42fd3f40e03041feE"(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.ar) #43
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.thread.i" unwind label %bb.ht, !noalias !7032

bb.jm:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit122.thread.i"
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E"(ptr noalias noundef align 8 dereferenceable(56) %i.tr) #43, !noalias !7032
  br label %bb.fr

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit124.i": ; preds = %bb.jp, %bb.jo, %bb.jn, %bb.fr
  %.sroa.021.0178.i = phi i8 [ %.sroa.021.4274373.i, %bb.fr ], [ %.sroa.021.0179.i, %bb.jp ], [ %.sroa.021.0179.i, %bb.jn ], [ %.sroa.021.0179.i, %bb.jo ]
  %.sroa.029.0176.i = phi i1 [ %.sroa.027.5272374.i, %bb.fr ], [ %.sroa.029.0177.i, %bb.jp ], [ %.sroa.029.0177.i, %bb.jn ], [ %.sroa.029.0177.i, %bb.jo ]
  %.sroa.031.2174.i = phi i1 [ %.sroa.031.7268376.i, %bb.fr ], [ %.sroa.031.2175.i, %bb.jp ], [ %.sroa.031.2175.i, %bb.jn ], [ %.sroa.031.2175.i, %bb.jo ]
  %.sroa.032.2172.i = phi i1 [ false, %bb.fr ], [ %.sroa.032.2173.i, %bb.jp ], [ %.sroa.032.2173.i, %bb.jn ], [ %.sroa.032.2173.i, %bb.jo ] ; 2 uses
  %.sroa.034.2170.i = phi i1 [ %.sroa.034.6266377.i, %bb.fr ], [ %.sroa.034.2171.i, %bb.jp ], [ %.sroa.034.2171.i, %bb.jn ], [ %.sroa.034.2171.i, %bb.jo ] ; 2 uses
  %.pn86168.i = phi { ptr, i32 } [ %.pn83.pn264378.i, %bb.fr ], [ %.pn86169.i, %bb.jp ], [ %.pn86169.i, %bb.jn ], [ %.pn86169.i, %bb.jo ] ; 2 uses
  br i1 %.sroa.029.0176.i, label %bb.jr, label %bb.jq

bb.jn:                                            ; preds = %.thread160.i, %bb.fr
  %.sroa.021.0179.i = phi i8 [ 1, %.thread160.i ], [ %.sroa.021.4274373.i, %bb.fr ] ; 3 uses
  %.sroa.029.0177.i = phi i1 [ true, %.thread160.i ], [ %.sroa.027.5272374.i, %bb.fr ] ; 3 uses
  %.sroa.031.2175.i = phi i1 [ true, %.thread160.i ], [ %.sroa.031.7268376.i, %bb.fr ] ; 3 uses
  %.sroa.032.2173.i = phi i1 [ true, %.thread160.i ], [ false, %bb.fr ] ; 3 uses
  %.sroa.034.2171.i = phi i1 [ true, %.thread160.i ], [ %.sroa.034.6266377.i, %bb.fr ] ; 3 uses
  %.pn86169.i = phi { ptr, i32 } [ %i.vf, %.thread160.i ], [ %.pn83.pn264378.i, %bb.fr ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7068)
  %i.aax = load ptr, ptr %i.ty, align 8, !alias.scope !7068, !noalias !7030, !noundef !15 ; 3 uses
  %i.aay = icmp eq ptr %i.aax, null
  br i1 %i.aay, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit124.i", label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.aaz = load i64, ptr %i.aax, align 8, !noalias !7069, !noundef !15
  %i.aba = add i64 %i.aaz, -1                     ; 2 uses
  store i64 %i.aba, ptr %i.aax, align 8, !noalias !7069
  %i.abb = icmp eq i64 %i.aba, 0
  br i1 %i.abb, label %bb.jp, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit124.i"

bb.jp:                                            ; preds = %bb.jo
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h887672c85bbbd88bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ty)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit124.i" unwind label %bb.ht, !noalias !7032

bb.jq:                                            ; preds = %bb.jr, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit124.i"
  %i.abc = trunc nuw i8 %.sroa.021.0178.i to i1
  br i1 %i.abc, label %bb.js, label %bb.fp

bb.jr:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h364a8b5d5f962ea3E.exit124.i"
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..term..TypeAnnotation$GT$17h42fd3f40e03041feE"(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.as) #43
          to label %bb.jq unwind label %bb.ht, !noalias !7032

bb.js:                                            ; preds = %bb.jq
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E"(ptr noalias noundef align 8 dereferenceable(56) %i.tq) #43, !noalias !7032
  br label %bb.fp

bb.jt:                                            ; preds = %bb.ju, %bb.fp
  %.sroa.032.0158.i = phi i1 [ %.sroa.032.0159.i, %bb.ju ], [ %.sroa.032.2172.i, %bb.fp ] ; 2 uses
  %.sroa.033.0156.i = phi i1 [ %.sroa.033.0157.i, %bb.ju ], [ false, %bb.fp ]
  %.sroa.034.0154.i = phi i1 [ %.sroa.034.0155.i, %bb.ju ], [ %.sroa.034.2170.i, %bb.fp ]
  %.pn88152.i = phi { ptr, i32 } [ %.pn88153.i, %bb.ju ], [ %.pn86168.i, %bb.fp ] ; 2 uses
  br i1 %.sroa.032.0158.i, label %bb.jw, label %bb.jv

bb.ju:                                            ; preds = %.thread.i, %bb.fp
  %.sroa.032.0159.i = phi i1 [ true, %.thread.i ], [ %.sroa.032.2172.i, %bb.fp ]
  %.sroa.033.0157.i = phi i1 [ true, %.thread.i ], [ false, %bb.fp ]
  %.sroa.034.0155.i = phi i1 [ true, %.thread.i ], [ %.sroa.034.2170.i, %bb.fp ]
  %.pn88153.i = phi { ptr, i32 } [ %i.ve, %.thread.i ], [ %.pn86168.i, %bb.fp ]
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ch) #43
          to label %bb.jt unwind label %bb.ht, !noalias !7070

bb.jv:                                            ; preds = %bb.jw, %bb.jt
  br i1 %.sroa.033.0156.i, label %bb.jx, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i"

bb.jw:                                            ; preds = %bb.jt
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE"(ptr %i.vd) #43
          to label %bb.jv unwind label %bb.ht, !noalias !7032

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i": ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jv
  br i1 %.sroa.034.0154.i, label %bb.kb, label %bb.ka

bb.jx:                                            ; preds = %bb.jv
  call void @llvm.experimental.noalias.scope.decl(metadata !7071)
  call void @llvm.experimental.noalias.scope.decl(metadata !7072)
  %i.abd = load ptr, ptr %i.at, align 8, !alias.scope !7073, !noalias !7030, !noundef !15 ; 3 uses
  %i.abe = icmp eq ptr %i.abd, null
  br i1 %i.abe, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i", label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.abf = load i64, ptr %i.abd, align 8, !noalias !7074, !noundef !15
  %i.abg = add i64 %i.abf, -1                     ; 2 uses
  store i64 %i.abg, ptr %i.abd, align 8, !noalias !7074
  %i.abh = icmp eq i64 %i.abg, 0
  br i1 %i.abh, label %bb.jz, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i"

bb.jz:                                            ; preds = %bb.jy
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i" unwind label %bb.ht, !noalias !7032

bb.ka:                                            ; preds = %bb.kb, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i"
  br i1 %.sroa.032.0158.i, label %bb.kc, label %.body314

bb.kb:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i"
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ci) #43
          to label %bb.ka unwind label %bb.ht, !noalias !7075

bb.kc:                                            ; preds = %bb.ka
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE"(ptr %i.vb) #43
          to label %.body314 unwind label %bb.ht, !noalias !7032

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread.loopexit": ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17hf53c1ea7b27308d5E.exit", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit"
  %.sroa.083.0.copyload1500 = phi i64 [ %.sroa.083.0.copyload, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17hf53c1ea7b27308d5E.exit" ], [ %.sroa.083.0.copyload1501, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit" ]
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload1500, ptr %i.ci, align 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread.loopexit", %bb.fm
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h2f92e8fdf35c4338E"(ptr noalias noundef align 8 dereferenceable(32) %i.ck)
          to label %bb.kd unwind label %.thread225

bb.kd:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.abi = getelementptr inbounds nuw i8, ptr %i.pd, i64 80
  %i.abj = load i8, ptr %i.abi, align 8, !range !16, !noundef !15
  %i.abk = trunc nuw i8 %i.abj to i1
  %i.abl = getelementptr inbounds nuw i8, ptr %i.pd, i64 81
  %i.abm = load i8, ptr %i.abl, align 1, !range !16, !noundef !15
  %i.abn = getelementptr inbounds nuw i8, ptr %i.pb, i64 81
  %i.abo = load i8, ptr %i.abn, align 1, !range !16, !noundef !15
  br i1 %i.abk, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.abp = getelementptr inbounds nuw i8, ptr %i.pb, i64 80
  %i.abq = load i8, ptr %i.abp, align 8, !range !16, !noundef !15
  %i.abr = trunc nuw i8 %i.abq to i1
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.sroa.0109.0 = phi i1 [ %i.abr, %bb.ke ], [ true, %bb.kd ]
  %i.abs = and i8 %i.abo, %i.abm
  %.sroa.0110.0 = icmp ne i8 %i.abs, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %i.cq, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i64 -9223372036854775808, ptr %i.cb, align 8
  invoke void @_ZN16nickel_lang_core4term6record10RecordData3new17h36f8e1134e0105ceE(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.cc, i1 noundef zeroext %.sroa.0109.0, i1 noundef zeroext %.sroa.0110.0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(192) %i.cb)
          to label %bb.kg unwind label %bb.fk

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store i64 0, ptr %i.ca, align 8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.abt, align 8
  %i.abu = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 0, ptr %i.abu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i64 0, ptr %i.bz, align 8
  %i.abv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.abv, align 8
  %i.abw = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 0, ptr %i.abw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 -9223372036854775808, ptr %i.by, align 8
  invoke void @_ZN16nickel_lang_core4term4Term10rec_record17h957da4f6dd4f66a4E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.by, i1 noundef zeroext true)
          to label %bb.kh unwind label %bb.fk

bb.kh:                                            ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %i.abx = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h766f2f57969bffd4E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ce, i32 noundef %.sroa.037.0)
          to label %bb.ki unwind label %bb.fk

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.val224 = load i64, ptr %i.cs, align 8         ; 2 uses
  %i.aby = icmp eq i64 %.val224, 0
  br i1 %i.aby, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h4996b6a85d34454aE.exit316", label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.abz = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val225 = load ptr, ptr %i.abz, align 8, !nonnull !15, !noundef !15
  %i.aca = mul nuw i64 %.val224, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val225, i64 noundef %i.aca, i64 noundef range(i64 1, -9223372036854775807) 4) #40
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h4996b6a85d34454aE.exit316"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h4996b6a85d34454aE.exit316": ; preds = %bb.kj, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.pl

bb.kk:                                            ; preds = %bb.je, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i.i115.i", %bb.jb, %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17h710d7e131d604138E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !7030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !7030
  %i.acb = icmp eq i64 %.sroa.023.0.copyload, -9223372036854775808
  br i1 %i.acb, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  store ptr %i.uu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7026
  store i64 %.sroa.083.0.copyload, ptr %i.ci, align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.424.0.copyload) ]
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.424.0.copyload, ptr %i.acc, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h2f92e8fdf35c4338E"(ptr noalias noundef align 8 dereferenceable(32) %i.ck)
          to label %bb.kp unwind label %.thread225

bb.km:                                            ; preds = %bb.kk
  store i64 %.sroa.023.0.copyload, ptr %i.cf, align 8
  store ptr %.sroa.424.0.copyload, ptr %.sroa.7.0..sroa_idx42, align 8
  store i64 %.sroa.625.0.copyload, ptr %.sroa.944.0..sroa_idx45, align 8
  store ptr %.sroa.0127.0202.i, ptr %.sroa.944.sroa.5.0..sroa.944.0..sroa_idx45.sroa_idx, align 8
  store ptr %i.zl, ptr %.sroa.944.sroa.6.0..sroa.944.0..sroa_idx45.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17he6ff7b7f8a5bc3d9E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.be, ptr noalias noundef align 8 dereferenceable(72) %i.cq, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.cj, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cf)
          to label %bb.kn unwind label %bb.fn

bb.kn:                                            ; preds = %bb.km
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %i.ur, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.acd = load i64, ptr %i.cg, align 8, !range !33, !alias.scope !7076, !noundef !15
  %i.ace = icmp eq i64 %i.acd, -9223372036854775808
  br i1 %i.ace, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17hf53c1ea7b27308d5E.exit", label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cg)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17hf53c1ea7b27308d5E.exit" unwind label %bb.fn

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17hf53c1ea7b27308d5E.exit": ; preds = %bb.kn, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.acf = icmp eq ptr %i.uu, %i.th
  br i1 %i.acf, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit.thread.loopexit", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82f99a31a8dc5e74E.exit"

bb.kp:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E"(ptr noalias noundef align 8 dereferenceable(72) %i.cq)
          to label %bb.kq unwind label %bb.fh

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.val = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.acg = icmp eq i64 %.val, 0
  br i1 %i.acg, label %bb.kv, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.ach = mul nuw i64 %.val, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ux, i64 noundef %i.ach, i64 noundef range(i64 1, -9223372036854775807) 4) #40
  br label %bb.kv

bb.ks:                                            ; preds = %.thread200, %bb.ed
  %.sroa.065.5 = phi i8 [ %.sroa.065.3, %bb.ed ], [ %.sroa.065.0206, %.thread200 ] ; 2 uses
  %.sroa.063.7 = phi i8 [ %.sroa.063.3, %bb.ed ], [ %.sroa.063.0207, %.thread200 ]
  %.sroa.050.10 = phi i8 [ 0, %bb.ed ], [ %.sroa.050.7208, %.thread200 ] ; 2 uses
  %.pn150 = phi { ptr, i32 } [ %.pn146, %bb.ed ], [ %.pn148209, %.thread200 ] ; 2 uses
  %i.aci = trunc nuw i8 %.sroa.063.7 to i1
  br i1 %i.aci, label %bb.lg, label %bb.ku

.thread250:                                       ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit289"
  %i.acj = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

bb.kt:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit289"
  invoke fastcc void @"_ZN4core3ptr180drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h105866bf740e906bE"(ptr noalias noundef align 8 dereferenceable(72) %i.cl)
          to label %bb.kw unwind label %.thread261

bb.ku:                                            ; preds = %bb.lg, %bb.ks
  %.sroa.065.6 = phi i8 [ %.sroa.065.5, %bb.ks ], [ %.sroa.065.5255, %bb.lg ]
  %.sroa.050.11 = phi i8 [ %.sroa.050.10, %bb.ks ], [ %.sroa.050.10256, %bb.lg ] ; 2 uses
  %.pn152 = phi { ptr, i32 } [ %.pn150, %bb.ks ], [ %.pn150257, %bb.lg ] ; 2 uses
  %i.ack = trunc nuw i8 %.sroa.065.6 to i1
  br i1 %i.ack, label %bb.lh, label %.body181

.thread261:                                       ; preds = %bb.kt
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %bb.lh

bb.kv:                                            ; preds = %bb.kq, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..merge..MergeMode$GT$17hd529ca8a441e42c3E.exit"

bb.kw:                                            ; preds = %bb.kt
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E"(ptr noalias noundef align 8 dereferenceable(72) %i.co)
          to label %.thread267 unwind label %bb.b

"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..merge..MergeMode$GT$17hd529ca8a441e42c3E.exit": ; preds = %.thread267, %bb.kx, %bb.kv
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE"(ptr noalias noundef align 8 dereferenceable(16) %i.fo)
          to label %bb.la unwind label %bb.kz

.thread267:                                       ; preds = %bb.kw, %.critedge179
  %i.acm = load i64, ptr %8, align 8, !range !33, !alias.scope !7077, !noundef !15
  %i.acn = icmp eq i64 %i.acm, -9223372036854775808
  br i1 %i.acn, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..merge..MergeMode$GT$17hd529ca8a441e42c3E.exit", label %bb.kx

bb.kx:                                            ; preds = %.thread267
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h3be2656cf071aa25E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %8)
          to label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..merge..MergeMode$GT$17hd529ca8a441e42c3E.exit" unwind label %bb.ky

"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..merge..MergeMode$GT$17hd529ca8a441e42c3E.exit427": ; preds = %bb.nu, %.thread97, %bb.qx, %bb.ky, %.body181
  %.sroa.059.4 = phi i8 [ %.sroa.059.5, %bb.ky ], [ %.sroa.059.0104, %.thread97 ], [ %.sroa.059.0, %.body181 ], [ %.sroa.059.0104, %bb.qx ], [ 1, %bb.nu ] ; 2 uses
  %.sroa.057.3 = phi i8 [ %.sroa.053.4, %bb.ky ], [ %.sroa.057.0105, %.thread97 ], [ %.sroa.057.0, %.body181 ], [ %.sroa.057.0105, %bb.qx ], [ %.sroa.057.9, %bb.nu ] ; 2 uses
end_hunk_5
begin_hunk_6_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn17h184002f51c44db6cE":bb.a
  %i.aik = trunc nuw i8 %.sroa.0265.0 to i1
  br i1 %i.aik, label %.body892.thread, label %bb.mh

bb.mr:                                            ; preds = %bb.ow, %bb.ov, %bb.os, %bb.nw, %bb.nv, %bb.mp, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895.thread"
  %.sroa.0265.1 = phi i8 [ 1, %bb.nw ], [ %.sroa.0265.5, %bb.ow ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895.thread" ], [ 1, %bb.mp ], [ %.sroa.0265.5, %bb.ov ], [ 1, %bb.nv ], [ %.sroa.0265.5, %bb.os ]
  %i.ail = landingpad { ptr, i32 }
          cleanup
  br label %.body892

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit894": ; preds = %bb.mo, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i889", %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.experimental.noalias.scope.decl(metadata !14901)
  %i.aim = icmp eq i64 %.sroa.572.0.copyload, 1
  br i1 %i.aim, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895": ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit894"
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 64 ; 2 uses
  store ptr %i.ain, ptr %i.gl, align 8, !alias.scope !14901, !noalias !14902
  %.sroa.076.0.copyload77 = load ptr, ptr %i.ahp, align 8, !noalias !14901 ; 14 uses
  %.not405 = icmp eq ptr %.sroa.076.0.copyload77, null
  br i1 %.not405, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895.thread", label %bb.ms, !prof !30

bb.ms:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895"
  %.sroa.678.0..sroa.4.0.copyload.i59468.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 40
  store ptr %.sroa.076.0.copyload77, ptr %i.dq, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.678.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.678.0..sroa.4.0.copyload.i59468.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store ptr %.sroa.076.0.copyload77, ptr %i.dr, align 8
  %i.aio = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.aip = load i32, ptr %i.aio, align 8, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !14903)
  call void @llvm.experimental.noalias.scope.decl(metadata !14904)
  call void @llvm.experimental.noalias.scope.decl(metadata !14905)
  %i.aiq = load ptr, ptr %.sroa.678.0..sroa_idx, align 8, !alias.scope !14906, !nonnull !15, !noundef !15 ; 2 uses
  %i.air = load i64, ptr %i.aiq, align 8, !noalias !14906, !noundef !15
  %i.ais = add i64 %i.air, -1                     ; 2 uses
  store i64 %i.ais, ptr %i.aiq, align 8, !noalias !14906
  %i.ait = icmp eq i64 %i.ais, 0
  br i1 %i.ait, label %bb.mt, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i896"

bb.mt:                                            ; preds = %bb.ms
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.678.0..sroa_idx)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i896" unwind label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.aiu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14907)
  %i.aiw = load ptr, ptr %i.aiv, align 8, !alias.scope !14908, !noundef !15 ; 3 uses
  %i.aix = icmp eq ptr %i.aiw, null
  br i1 %i.aix, label %.body899.thread, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.aiy = load i64, ptr %i.aiw, align 8, !noalias !14909, !noundef !15
  %i.aiz = add i64 %i.aiy, -1                     ; 2 uses
  store i64 %i.aiz, ptr %i.aiw, align 8, !noalias !14909
  %i.aja = icmp eq i64 %i.aiz, 0
  br i1 %i.aja, label %bb.mw, label %.body899.thread

bb.mw:                                            ; preds = %bb.mv
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aiv)
          to label %.body899.thread unwind label %bb.mz

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i896": ; preds = %bb.mt, %bb.ms
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14910)
  %i.ajc = load ptr, ptr %i.ajb, align 8, !alias.scope !14911, !noundef !15 ; 3 uses
  %i.ajd = icmp eq ptr %i.ajc, null
  br i1 %i.ajd, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit901", label %bb.mx

bb.mx:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i896"
  %i.aje = load i64, ptr %i.ajc, align 8, !noalias !14912, !noundef !15
  %i.ajf = add i64 %i.aje, -1                     ; 2 uses
  store i64 %i.ajf, ptr %i.ajc, align 8, !noalias !14912
  %i.ajg = icmp eq i64 %i.ajf, 0
  br i1 %i.ajg, label %bb.my, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit901"

bb.my:                                            ; preds = %bb.mx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ajb)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit901" unwind label %bb.na

bb.mz:                                            ; preds = %bb.mw
  %i.ajh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895.thread": ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit894", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit895"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #41
          to label %bb.s unwind label %bb.mr

.body899:                                         ; preds = %bb.na, %bb.pe, %.body939
  %.sroa.0265.2 = phi i8 [ %.sroa.0265.6, %.body939 ], [ %.sroa.0265.6520, %bb.pe ], [ %.sroa.0265.3, %bb.na ] ; 2 uses
  %.sroa.0263.0 = phi i8 [ %.sroa.0263.4, %.body939 ], [ %.sroa.0263.4521, %bb.pe ], [ %.sroa.0263.1, %bb.na ]
  %.pn416 = phi { ptr, i32 } [ %.pn414, %.body939 ], [ %.pn414522, %bb.pe ], [ %i.ajj, %bb.na ] ; 2 uses
  %i.aji = trunc nuw i8 %.sroa.0263.0 to i1
  br i1 %i.aji, label %.body899.thread, label %.body892

bb.na:                                            ; preds = %bb.oq, %bb.op, %bb.om, %bb.ns, %bb.nr, %bb.no, %bb.my, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902.thread"
  %.sroa.0265.3 = phi i8 [ 1, %bb.ns ], [ %.sroa.0265.5, %bb.oq ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902.thread" ], [ 1, %bb.my ], [ 1, %bb.no ], [ 1, %bb.nr ], [ %.sroa.0265.5, %bb.om ], [ %.sroa.0265.5, %bb.op ]
  %.sroa.0263.1 = phi i8 [ 1, %bb.ns ], [ %.sroa.0263.3, %bb.oq ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902.thread" ], [ 1, %bb.my ], [ 1, %bb.no ], [ 1, %bb.nr ], [ %.sroa.0263.3, %bb.om ], [ %.sroa.0263.3, %bb.op ]
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  br label %.body899

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit901": ; preds = %bb.mx, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i896", %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.experimental.noalias.scope.decl(metadata !14913)
  %i.ajk = icmp eq i64 %.sroa.572.0.copyload, 2
  br i1 %i.ajk, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902": ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit901"
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 96
  store ptr %i.ajl, ptr %i.gl, align 8, !alias.scope !14913, !noalias !14914
  %.sroa.079.0.copyload = load ptr, ptr %i.ain, align 8, !noalias !14913 ; 11 uses
  %.sroa.782.0..sroa.4.0.copyload.i59469.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 88
  %.sroa.782.0.copyload = load i32, ptr %.sroa.782.0..sroa.4.0.copyload.i59469.sroa_idx, align 8, !noalias !14913
  %.not406 = icmp eq ptr %.sroa.079.0.copyload, null
  br i1 %.not406, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902.thread", label %bb.nb, !prof !30

bb.nb:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902"
  %.sroa.580.0..sroa.4.0.copyload.i59469.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store ptr %.sroa.079.0.copyload, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.ajn = load <2 x ptr>, ptr %.sroa.580.0..sroa.4.0.copyload.i59469.sroa_idx, align 8, !noalias !14913
  store <2 x ptr> %i.ajn, ptr %i.do, align 16
  %i.ajo = ptrtoint ptr %.sroa.073.0.copyload74 to i64
  %i.ajp = and i64 %i.ajo, 3
  %..i903 = call i64 @llvm.umin.i64(i64 %i.ajp, i64 2) ; 2 uses
  switch i64 %..i903, label %bb.ne [
    i64 2, label %.invoke802
    i64 0, label %bb.nc
  ], !prof !20

bb.nc:                                            ; preds = %bb.nb
  %i.ajq = load i64, ptr %.sroa.073.0.copyload74, align 8, !noundef !15 ; 2 uses
  %i.ajr = icmp ult i64 %i.ajq, 864691128455135232
  call void @llvm.assume(i1 %i.ajr)
  %.mask.i904 = and i64 %i.ajq, 1080863910568919040
  %i.ajs = icmp eq i64 %.mask.i904, 648518346341351424
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.073.0.copyload74, i64 16
  br i1 %i.ajs, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h2a8ce56298230848E.exit908, label %bb.ne

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902.thread": ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit901", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hff0b8de45093a298E.exit902"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #41
          to label %bb.s unwind label %bb.na

.thread515:                                       ; preds = %bb.nl
  %lpad.thr_comm.split-lp483 = landingpad { ptr, i32 }
          cleanup
  br label %bb.pe

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h2a8ce56298230848E.exit908: ; preds = %bb.nc
  %i.aju = ptrtoint ptr %.sroa.076.0.copyload77 to i64
  %i.ajv = and i64 %i.aju, 3
  %..i909 = call i64 @llvm.umin.i64(i64 %i.ajv, i64 2)
  switch i64 %..i909, label %bb.nf [
    i64 2, label %.invoke802
    i64 0, label %bb.nd
  ], !prof !20

.invoke802:                                       ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h2a8ce56298230848E.exit908, %bb.nb
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.cont803 unwind label %bb.pd

.cont803:                                         ; preds = %.invoke802
  unreachable

bb.nd:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h2a8ce56298230848E.exit908
  %i.ajw = load i64, ptr %.sroa.076.0.copyload77, align 8, !noundef !15 ; 2 uses
  %i.ajx = icmp ult i64 %i.ajw, 864691128455135232
  call void @llvm.assume(i1 %i.ajx)
  %.mask.i910 = and i64 %i.ajw, 1080863910568919040
  %i.ajy = icmp eq i64 %.mask.i910, 432345564227567616
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.076.0.copyload77, i64 16
  br i1 %i.ajy, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h41f5931e5c3d2eb1E.exit914, label %bb.nf

bb.ne:                                            ; preds = %bb.nc, %bb.nb
  invoke fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h9227ee6de4e1b24eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr %i.fk, ptr nonnull %i.fj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @248, i64 noundef 10, i64 noundef 1, i32 noundef %i.ahr, ptr noundef nonnull %.sroa.073.0.copyload74)
          to label %bb.oc unwind label %bb.pd

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h41f5931e5c3d2eb1E.exit914: ; preds = %bb.nd
  %i.aka = invoke { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue9as_record17h694af076ba4246c4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dp)
          to label %bb.ng unwind label %bb.pd     ; 2 uses

bb.nf:                                            ; preds = %bb.nd, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h2a8ce56298230848E.exit908
  invoke fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h9227ee6de4e1b24eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr %i.fk, ptr nonnull %i.fj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 5, i64 noundef 2, i32 noundef %i.aip, ptr noundef nonnull %.sroa.076.0.copyload77)
          to label %bb.oc unwind label %bb.pd

bb.ng:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h41f5931e5c3d2eb1E.exit914
  %i.akb = extractvalue { i64, ptr } %i.aka, 0
  %i.akc = extractvalue { i64, ptr } %i.aka, 1    ; 2 uses
  %i.akd = trunc nuw i64 %i.akb to i1
  br i1 %i.akd, label %bb.nh, label %2

2:                                                ; preds = %bb.ng
  invoke fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h9227ee6de4e1b24eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr %i.fk, ptr nonnull %i.fj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @190, i64 noundef 6, i64 noundef 3, i32 noundef %.sroa.782.0.copyload, ptr noundef nonnull %.sroa.079.0.copyload)
          to label %bb.oc unwind label %bb.pd

bb.nh:                                            ; preds = %bb.ng
  %.not409 = icmp eq ptr %i.akc, null
  br i1 %.not409, label %.thread502, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 72
  %i.akf = load ptr, ptr %i.ake, align 8, !noundef !15 ; 3 uses
  %.not411 = icmp eq ptr %i.akf, null
  br i1 %.not411, label %.thread502, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.akg = load i32, ptr %i.ajt, align 8, !noundef !15
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 200
  %i.aki = load i32, ptr %i.akh, align 8, !noundef !15
  %i.akj = icmp eq i32 %i.akg, %i.aki
  br i1 %i.akj, label %bb.nk, label %.thread502

bb.nk:                                            ; preds = %bb.nj
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akf, i64 192
  %.val517 = load ptr, ptr %i.akk, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.akl = invoke fastcc noundef nonnull ptr @"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E"(ptr nonnull %.val517)
          to label %bb.nm unwind label %bb.pd     ; 0 uses

.thread502:                                       ; preds = %bb.ni, %bb.nh, %bb.nj
  %i.akm = invoke fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h29fb8026320a979fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ajz)
          to label %bb.nl unwind label %bb.pd

bb.nl:                                            ; preds = %.thread502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  %i.akn = load <2 x ptr>, ptr %i.do, align 16
  store <2 x ptr> %i.akn, ptr %i.dn, align 16
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.akm, ptr %i.ako, align 8
  store ptr null, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr239drop_in_place$LT$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_opn..$u7b$$u7b$closure$u7d$$u7d$$GT$17h567907bba2d2ce4fE"(ptr noalias noundef align 8 dereferenceable(16) %i.dn)
          to label %bb.nn unwind label %.thread515

bb.nm:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store ptr %.val517, ptr %0, align 8
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.akp = load <2 x ptr>, ptr %i.do, align 16
  store <2 x ptr> %i.akp, ptr %.sroa.4324.0..sroa_idx, align 8
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.akq = ptrtoint ptr %.sroa.079.0.copyload to i64
  %i.akr = and i64 %i.akq, 3
  %..i.i916 = call i64 @llvm.umin.i64(i64 %i.akr, i64 2)
  switch i64 %..i.i916, label %bb.nt [
    i64 2, label %bb.no
    i64 0, label %bb.np
  ], !prof !20

bb.no:                                            ; preds = %bb.nn
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc918 unwind label %bb.na

.noexc918:                                        ; preds = %bb.no
  unreachable

bb.np:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !14915
  store ptr %.sroa.079.0.copyload, ptr %i.ae, align 8, !noalias !14915
  %i.aks = load i64, ptr %.sroa.079.0.copyload, align 8, !noalias !14916, !noundef !15 ; 3 uses
  %i.akt = and i64 %i.aks, 72057594037927935
  %i.aku = add nsw i64 %i.akt, -1                 ; 3 uses
  %i.akv = and i64 %i.aks, 1080863910568919040
  %i.akw = icmp ult i64 %i.aks, 864691128455135232
  call void @llvm.assume(i1 %i.akw)
  %i.akx = or i64 %i.aku, %i.akv
  store i64 %i.akx, ptr %.sroa.079.0.copyload, align 8, !noalias !14916
  %i.aky = icmp ugt i64 %i.aku, 72057594037927935
  br i1 %i.aky, label %bb.nr, label %bb.nq, !prof !21

bb.nq:                                            ; preds = %bb.np
  %i.akz = icmp eq i64 %i.aku, 0
  br i1 %i.akz, label %bb.ns, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i917"

bb.nr:                                            ; preds = %bb.np
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14916
  store ptr @825, ptr %i.ad, align 8, !noalias !14916
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.ala, align 8, !noalias !14916
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr null, ptr %i.alb, align 8, !noalias !14916
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.alc, align 8, !noalias !14916
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.ald, align 8, !noalias !14916
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc919 unwind label %bb.na

.noexc919:                                        ; preds = %bb.nr
  unreachable

bb.ns:                                            ; preds = %bb.nq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i917" unwind label %bb.na

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i917": ; preds = %bb.ns, %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14915
  br label %bb.nt

bb.nt:                                            ; preds = %bb.nn, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i917"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14917
  store ptr %.sroa.076.0.copyload77, ptr %i.ac, align 8, !noalias !14917
  %i.ale = load i64, ptr %.sroa.076.0.copyload77, align 8, !noalias !14918, !noundef !15 ; 3 uses
  %i.alf = and i64 %i.ale, 72057594037927935
  %i.alg = add nsw i64 %i.alf, -1                 ; 3 uses
  %i.alh = and i64 %i.ale, 1080863910568919040
  %i.ali = icmp ult i64 %i.ale, 864691128455135232
  call void @llvm.assume(i1 %i.ali)
  %i.alj = or i64 %i.alg, %i.alh
  store i64 %i.alj, ptr %.sroa.076.0.copyload77, align 8, !noalias !14918
  %i.alk = icmp ugt i64 %i.alg, 72057594037927935
  br i1 %i.alk, label %bb.nv, label %bb.nu, !prof !21

bb.nu:                                            ; preds = %bb.nt
  %i.all = icmp eq i64 %i.alg, 0
  br i1 %i.all, label %bb.nw, label %bb.nx

bb.nv:                                            ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14918
  store ptr @825, ptr %i.ab, align 8, !noalias !14918
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 1, ptr %i.alm, align 8, !noalias !14918
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr null, ptr %i.aln, align 8, !noalias !14918
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.alo, align 8, !noalias !14918
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %i.alp, align 8, !noalias !14918
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc926 unwind label %bb.mr

.noexc926:                                        ; preds = %bb.nv
  unreachable

bb.nw:                                            ; preds = %bb.nu
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.nx unwind label %bb.mr

bb.nx:                                            ; preds = %bb.nu, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14919
  store ptr %.sroa.073.0.copyload74, ptr %i.aa, align 8, !noalias !14919
  %i.alq = load i64, ptr %.sroa.073.0.copyload74, align 8, !noalias !14920, !noundef !15 ; 3 uses
  %i.alr = and i64 %i.alq, 72057594037927935
  %i.als = add nsw i64 %i.alr, -1                 ; 3 uses
  %i.alt = and i64 %i.alq, 1080863910568919040
  %i.alu = icmp ult i64 %i.alq, 864691128455135232
  call void @llvm.assume(i1 %i.alu)
  %i.alv = or i64 %i.als, %i.alt
  store i64 %i.alv, ptr %.sroa.073.0.copyload74, align 8, !noalias !14920
  %i.alw = icmp ugt i64 %i.als, 72057594037927935
  br i1 %i.alw, label %bb.nz, label %bb.ny, !prof !21

bb.ny:                                            ; preds = %bb.nx
  %i.alx = icmp eq i64 %i.als, 0
  br i1 %i.alx, label %bb.oa, label %bb.ob

bb.nz:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14920
  br label %.invoke791

bb.oa:                                            ; preds = %bb.ny
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.ob unwind label %bb.mi

bb.ob:                                            ; preds = %bb.oa, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call fastcc void @"_ZN4core3ptr136drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$GT$17hfa57c6af283509efE"(ptr noalias noundef align 8 dereferenceable(32) %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.tt

bb.oc:                                            ; preds = %bb.ne, %bb.nf, %2
  %.sroa.0265.5 = phi i8 [ 1, %bb.nf ], [ 1, %2 ], [ 0, %bb.ne ] ; 11 uses
  %.sroa.0263.3 = phi i8 [ 0, %bb.nf ], [ 1, %2 ], [ 1, %bb.ne ] ; 8 uses
  %.sroa.0261.1 = phi i8 [ 1, %bb.nf ], [ 0, %2 ], [ 1, %bb.ne ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14921)
  call void @llvm.experimental.noalias.scope.decl(metadata !14922)
  call void @llvm.experimental.noalias.scope.decl(metadata !14923)
  %i.aly = load ptr, ptr %i.do, align 16, !alias.scope !14924, !nonnull !15, !noundef !15 ; 2 uses
  %i.alz = load i64, ptr %i.aly, align 8, !noalias !14924, !noundef !15
  %i.ama = add i64 %i.alz, -1                     ; 2 uses
  store i64 %i.ama, ptr %i.aly, align 8, !noalias !14924
  %i.amb = icmp eq i64 %i.ama, 0
  br i1 %i.amb, label %bb.od, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i936"

bb.od:                                            ; preds = %bb.oc
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.do)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i936" unwind label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.amc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14925)
  %i.amd = load ptr, ptr %i.ajm, align 8, !alias.scope !14926, !noundef !15 ; 3 uses
end_hunk_6
begin_hunk_7_@"_ZN76_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..clone..Clone$GT$5clone17hdd3551ea46b2b5fbE":bb.a
bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h6783bf1fc9e6e9edE.exit: ; preds = %bb.f, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  store ptr %i.v, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.z, align 8, !nonnull !15, !noundef !15
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6 = load i64, ptr %i.aa, align 8, !noundef !15
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1dcd63e51b7267a4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val5, i64 %.val6)
          to label %bb.k unwind label %bb.h

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit": ; preds = %bb.i, %bb.h, %bb.j
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc2a3cbdc6d3b040aE"(ptr %i.f) #43
          to label %bb.m unwind label %bb.l

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6783bf1fc9e6e9edE.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br i1 %.not2, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.v, align 8, !noalias !26313, !noundef !15
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.v, align 8, !noalias !26313
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit"

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit" unwind label %bb.l

bb.k:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6783bf1fc9e6e9edE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.l:                                             ; preds = %bb.j, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit"
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.m:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit"
  resume { ptr, i32 } %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..clone..Clone$GT$5clone17h3e614a7f7db1bc7cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.55 = alloca [12 x i8], align 4           ; 4 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = load i32, ptr %1, align 8, !range !84, !noundef !15
  %.sink20.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink20.sroa.gep21 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  switch i32 %i.e, label %default.unreachable19 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.s
    i32 16, label %bb.t
    i32 17, label %bb.u
    i32 18, label %bb.v
    i32 19, label %bb.w
    i32 20, label %bb.x
    i32 21, label %bb.y
    i32 22, label %bb.z
    i32 23, label %bb.aa
    i32 24, label %bb.ab
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load i64, ptr %i.i, align 8, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1041c0d5e7faa82fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr nonnull %.val10, i64 %.val11)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.k, align 4
  store i32 0, ptr %0, align 8
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.n, align 8, !nonnull !15, !noundef !15
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val9 = load i64, ptr %i.o, align 8, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1041c0d5e7faa82fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr nonnull %.val, i64 %.val9)
  store i32 1, ptr %0, align 8
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
          to label %bb.ae unwind label %bb.ad

bb.k:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load ptr, ptr %i.s, align 8, !nonnull !15, !noundef !15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val13 = load i64, ptr %i.t, align 8, !noundef !15 ; 5 uses
  %i.u = mul i64 %.val13, 20                      ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.val13, 461168601842738790
  br i1 %or.cond.i.i.i.i.i, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.k
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12aaabccd6b9a280E.exit", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !26331
  %i.w = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 4) #40, !noalias !26331 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12aaabccd6b9a280E.exit"

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @847) #41, !noalias !26332
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12aaabccd6b9a280E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.l
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.w, %bb.l ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.val13, %bb.l ] ; 2 uses
  %i.y = icmp samesign ule i64 %.val13, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.y)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i, ptr nonnull readonly align 4 %.val12, i64 %i.u, i1 false), !noalias !26333
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val13, ptr %.sroa.517.0..sroa_idx, align 8
  store i32 9, ptr %0, align 8
  br label %bb.ac

bb.n:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !range !37, !noundef !15 ; 2 uses
  %i.ad = trunc nuw i32 %i.ac to i1
  br i1 %i.ad, label %bb.ah, label %bb.ai

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.s:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.ag, i64 12, i1 false)
  store i32 15, ptr %0, align 8
  br label %bb.ac

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.v:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, i64 12, i1 false)
  store i32 18, ptr %0, align 8
  br label %bb.ac

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.x:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.z:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  store i32 22, ptr %0, align 8
  br label %bb.ac

bb.aa:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
          to label %bb.ak unwind label %bb.aj

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12aaabccd6b9a280E.exit", %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.d, align 8, !range !39, !alias.scope !26334, !noundef !15 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i, 0
  br i1 %i.at, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit.sink.split"

bb.ae:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !37, !noundef !15 ; 2 uses
  %i.aw = trunc nuw i32 %i.av to i1
  br i1 %i.aw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.av, ptr %i.az, align 4
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  store i32 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit.sink.split": ; preds = %bb.ad, %bb.aj
  %.sink20.sroa.phi = phi ptr [ %.sink20.sroa.gep, %bb.aj ], [ %.sink20.sroa.gep21, %bb.ad ]
  %.val.i.i14.sink = phi i64 [ %.val.i.i14, %bb.aj ], [ %.val.i.i, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.be, %bb.aj ], [ %i.as, %bb.ad ]
  %.val1.i.i15 = load ptr, ptr %.sink20.sroa.phi, align 8, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i15, i64 noundef %.val.i.i14.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !15
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit.sink.split", %bb.aj, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.be, %bb.aj ], [ %i.as, %bb.ad ], [ %.pn.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit.sink.split" ]
  resume { ptr, i32 } %.pn

bb.ah:                                            ; preds = %bb.n
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.55.0..sroa_idx, i64 12, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.n, %bb.ah
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i64 28, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bc, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ac, ptr %i.bd, align 4
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.55.0..sroa_idx6, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55, i64 12, i1 false)
  store i32 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  br label %bb.ac

bb.aj:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i14 = load i64, ptr %i.b, align 8, !range !39, !alias.scope !26335, !noundef !15 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i14, 0
  br i1 %i.bf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit.sink.split"

bb.ak:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) %i.bg, i64 12, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i32 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h81e3b0cdee3b1e2cE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @811, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hdf3ccd0122124d6cE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @811, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN77_$LT$nickel_lang_core..error..EvalErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h9fe8f424cf8fb406E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(392) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 16 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 6 uses
  %i.s = alloca [56 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 18 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 7 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [152 x i8], align 8              ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [72 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [72 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [360 x i8], align 8              ; 4 uses
  %i.at = alloca [152 x i8], align 8              ; 4 uses
  %i.au = load i64, ptr %1, align 8, !range !56, !noundef !15 ; 3 uses
  %i.av = icmp ne i64 %i.au, 20
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nsw i64 %i.au, -19
  %i.ax = icmp samesign ugt i64 %i.au, 18
  %i.ay = select i1 %i.ax, i64 %i.aw, i64 1
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink.i.sroa.gep127 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink.i.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sink.i.sroa.gep129 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sink.i.sroa.gep130 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink.i.sroa.gep131 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink.i.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sink.i.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sink.i.sroa.gep135 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sink.i.sroa.gep136 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sink.i.sroa.gep137 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sink.i.sroa.gep138 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sink.i.sroa.gep140 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sink.i.sroa.gep141 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sink.i.sroa.gep142 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sink.i.sroa.gep143 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sink.i.sroa.gep144 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink.i.sroa.gep145 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sink.i.sroa.gep147 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sink.i.sroa.gep148 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink.i.sroa.gep149 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sink.i.sroa.gep150 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sink.i.sroa.gep151 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sink.i.sroa.gep152 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  switch i64 %i.ay, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.p
    i64 8, label %bb.s
    i64 9, label %bb.t
    i64 10, label %bb.aa
    i64 11, label %bb.ab
    i64 12, label %bb.af
    i64 13, label %bb.bi
    i64 14, label %bb.bj
    i64 15, label %bb.bk
    i64 16, label %bb.bl
    i64 17, label %bb.bs
    i64 18, label %bb.by
    i64 19, label %bb.cc
    i64 20, label %bb.cg
    i64 21, label %bb.ck
    i64 22, label %bb.cl
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !15 ; 6 uses
  %.not8 = icmp eq ptr %i.bb, null
  br i1 %.not8, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit76", label %bb.cm

bb.d:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call fastcc void @"_ZN84_$LT$nickel_lang_core..term..record..FieldMetadata$u20$as$u20$core..clone..Clone$GT$5clone17hf594023765471878E"(ptr noalias noundef align 8 captures(address) dereferenceable(360) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(360) %1)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %i.as, i64 360, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bg = load <2 x i32>, ptr %i.bd, align 4
  store <2 x i32> %i.bg, ptr %i.bf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.cs

bb.e:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813)
          to label %bb.cw unwind label %bb.cv

bb.f:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813)
          to label %bb.de unwind label %bb.dd

bb.g:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
end_hunk_7
