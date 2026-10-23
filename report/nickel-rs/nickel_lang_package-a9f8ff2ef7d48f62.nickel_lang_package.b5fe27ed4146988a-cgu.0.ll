Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17hd01d0d5410e01830E":bb.a
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %i.r = load i64, ptr %i.l, align 8, !range !58, !alias.scope !1120, !noundef !41
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h96f8c0526ac7fcf7E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.t = load ptr, ptr %i.p, align 8, !alias.scope !1122, !noundef !41 ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h96f8c0526ac7fcf7E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.t, align 8, !noalias !1123, !noundef !41
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !noalias !1123
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h96f8c0526ac7fcf7E.exit"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h96f8c0526ac7fcf7E.exit" unwind label %bb.ab

bb.h:                                             ; preds = %bb.c
  %i.x = load i8, ptr %i.k, align 8, !range !60, !noundef !41
  switch i8 %i.x, label %bb.i [
    i8 6, label %bb.j
    i8 7, label %bb.n
  ]

bb.i:                                             ; preds = %bb.ad, %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit", %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit36", %bb.n, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load <2 x ptr>, ptr %i.m, align 16
  store <2 x ptr> %i.z, ptr %i.y, align 8
  %i.aa = load i64, ptr %i.l, align 8, !range !58, !noundef !41
  %i.ab = load ptr, ptr %i.p, align 8
  %i.ac = call noundef nonnull ptr @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3add17h1f5d73ab6a0e0d6aE"(ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.aa, ptr %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !41, !align !42, !noundef !41
  %.val = load ptr, ptr %i.ae, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !41 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #73
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
  %i.am = load i64, ptr %i.af, align 8, !noundef !41
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.af, align 8
  br label %.body.thread

bb.n:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !41, !align !42, !noundef !41 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !61, !noundef !41 ; 2 uses
  %i.ar = icmp ne i64 %i.aq, -9223372036854775756
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.aq, -9223372036854775760
  br i1 %i.as, label %bb.ac, label %bb.i

bb.o:                                             ; preds = %bb.l
  %i.at = load i64, ptr %i.af, align 8, !noundef !41
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.af, align 8
  store ptr %i.ak, ptr %i.j, align 8
  %i.av = icmp eq ptr %i.ak, null
  br i1 %i.av, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit", label %bb.r

bb.p:                                             ; preds = %bb.r
  br i1 %i.bb, label %bb.q, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit"

bb.q:                                             ; preds = %bb.p
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit" unwind label %.body.thread68

bb.r:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !41
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = load i64, ptr %i.ak, align 8, !noalias !41, !noundef !41
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.ak, align 8, !noalias !41
  %i.bb = icmp eq i64 %i.ba, 0                    ; 2 uses
  br i1 %i.ay, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  br i1 %i.bb, label %bb.t, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit36"

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit36" unwind label %.body.thread68

"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit36": ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bc = load i64, ptr %i.l, align 8, !range !58, !noundef !41
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %bb.i

bb.u:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit36"
  %i.be = invoke { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue14try_into_thunk17h51e7db5559e1bd4bE(ptr noundef nonnull %0)
          to label %bb.v unwind label %.body.thread68 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bf = extractvalue { i64, ptr } %i.be, 0
  %i.bg = extractvalue { i64, ptr } %i.be, 1      ; 6 uses
  %i.bh = trunc nuw i64 %i.bf to i1
  br i1 %i.bh, label %bb.w, label %bb.aa, !prof !44

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1124
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  store ptr %i.bg, ptr %i.f, align 8, !noalias !1124
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1204, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #73
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #75
          to label %.body.thread unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h96f8c0526ac7fcf7E"(ptr noalias noundef align 8 dereferenceable(16) %i.l)
          to label %bb.bg unwind label %bb.ab

bb.ab:                                            ; preds = %bb.g, %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h256ad7e36b570dd8E.exit": ; preds = %bb.o, %bb.p, %bb.q
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

bb.af:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h633366e4a2fd09c5E.exit.i.i", %bb.ae
  %.sroa.03.0.i1720.i.i = phi ptr [ %i.m, %bb.ae ], [ %i.bq, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h633366e4a2fd09c5E.exit.i.i" ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.03.0.i1720.i.i, align 8, !noalias !1125, !nonnull !41, !noundef !41 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1720.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !1125, !noundef !41 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bp, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1129, !noalias !1130, !noundef !41
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h633366e4a2fd09c5E.exit.i.i", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !1129, !noalias !1130, !noundef !41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !1129, !noalias !1130, !noundef !41
  %i.bx = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h847847344d22429cE(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i), !noalias !1131 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.by = lshr i64 %i.bx, 57
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1134, !noalias !1130, !noundef !41 ; 2 uses
  %i.cc = load ptr, ptr %i.bu, align 8, !alias.scope !1134, !noalias !1130, !nonnull !41, !noundef !41 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bz, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.ct, %bb.aj ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bx, %bb.ag ], [ %i.cu, %bb.aj ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !1135 ; 2 uses
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
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.cm, align 4, !noalias !1136, !noundef !41
  %i.cn = icmp eq i32 %.sroa.6.0.copyload, %.val3.i.i.i.i.i.i.i
  br i1 %i.cn, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h57d09b37ab89b71fE.exit", label %bb.ai, !prof !48

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ai, %bb.ah
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = icmp eq i16 %i.cp, 0
  br i1 %i.cq, label %bb.aj, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h633366e4a2fd09c5E.exit.i.i", !prof !44

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cr = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.cs = and i16 %i.cr, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ct = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.cu = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ct
  br label %bb.ah

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h633366e4a2fd09c5E.exit.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.af
  br i1 %.not4.i.i.i, label %bb.an, label %bb.af

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h57d09b37ab89b71fE.exit": ; preds = %.lr.ph.i.i.i.i.i.i
  %6 = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %.val27 = load ptr, ptr %6, align 8, !nonnull !41, !noundef !41 ; 4 uses
  %i.cv = ptrtoint ptr %.val27 to i64
  %i.cw = and i64 %i.cv, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.cw, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.ak
    i64 0, label %bb.al
  ], !prof !51

bb.ak:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h57d09b37ab89b71fE.exit"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc37 unwind label %.body.thread68

.noexc37:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h57d09b37ab89b71fE.exit"
  %i.cx = load i64, ptr %.val27, align 8, !noundef !41 ; 3 uses
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
  br i1 %i.de, label %bb.am, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !44

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @2427, ptr %i.e, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.di, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc38 unwind label %.body.thread68

.noexc38:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h633366e4a2fd09c5E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dj = load i64, ptr %i.l, align 8, !range !58, !noundef !41
  %i.dk = load ptr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1137
  store ptr %0, ptr %i.d, align 8, !noalias !1137
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dm = load <2 x ptr>, ptr %i.m, align 16
  store <2 x ptr> %i.dm, ptr %i.dl, align 8, !noalias !1137
  %i.dn = call noundef nonnull ptr @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3add17h1f5d73ab6a0e0d6aE"(ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.dj, ptr %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.al, %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h57d09b37ab89b71fE.exit"
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
  %i.du = load ptr, ptr %i.m, align 16, !nonnull !41, !noundef !41 ; 2 uses
  store <2 x ptr> %i.dt, ptr %i.dr, align 8
  %i.dv = load i64, ptr %i.l, align 8, !range !58, !noundef !41
  %i.dw = load ptr, ptr %i.p, align 8
  store i64 %i.dv, ptr %i.h, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.dy = ptrtoint ptr %0 to i64
  %i.dz = and i64 %i.dy, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.dz, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit.i" [
    i64 2, label %bb.ao
    i64 0, label %bb.ap
  ], !prof !51

bb.ao:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc.i unwind label %bb.at, !noalias !1138

.noexc.i:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1139
  store ptr %0, ptr %i.c, align 8, !noalias !1139
  %i.ea = load i64, ptr %0, align 8, !noalias !1140, !noundef !41 ; 3 uses
  %i.eb = and i64 %i.ea, 72057594037927935
  %i.ec = add nsw i64 %i.eb, -1                   ; 3 uses
  %i.ed = and i64 %i.ea, 1080863910568919040
  %i.ee = icmp ult i64 %i.ea, 864691128455135232
  call void @llvm.assume(i1 %i.ee)
  %i.ef = or i64 %i.ec, %i.ed
  store i64 %i.ef, ptr %0, align 8, !noalias !1140
  %i.eg = icmp ugt i64 %i.ec, 72057594037927935
  br i1 %i.eg, label %bb.ar, label %bb.aq, !prof !44

bb.aq:                                            ; preds = %bb.ap
  %i.eh = icmp eq i64 %i.ec, 0
  br i1 %i.eh, label %bb.as, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i"

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1140
  store ptr @2427, ptr %i.b, align 8, !noalias !1140
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ei, align 8, !noalias !1140
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ej, align 8, !noalias !1140
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ek, align 8, !noalias !1140
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.el, align 8, !noalias !1140
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc2.i unwind label %bb.at, !noalias !1138

.noexc2.i:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i" unwind label %bb.at, !noalias !1138

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i": ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1139
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit.i"

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ao
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E"(ptr noalias noundef align 8 dereferenceable(16) %i.dr) #75
          to label %.body.i unwind label %bb.bf

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i", %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.en = load i64, ptr %i.du, align 8, !noalias !1142, !noundef !41
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  store i64 %i.eo, ptr %i.du, align 8, !noalias !1142
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.au, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i.i"

bb.au:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i.i" unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %i.er = load ptr, ptr %i.ds, align 8, !alias.scope !1144, !noundef !41 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.body.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.et = load i64, ptr %i.er, align 8, !noalias !1145, !noundef !41
  %i.eu = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.eu, ptr %i.er, align 8, !noalias !1145
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.ax, label %.body.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %.body.i unwind label %bb.ba

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i.i": ; preds = %bb.au, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.ew = load ptr, ptr %i.ds, align 8, !alias.scope !1147, !noundef !41 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit.i", label %bb.ay

bb.ay:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i.i"
  %i.ey = load i64, ptr %i.ew, align 8, !noalias !1148, !noundef !41
  %i.ez = add i64 %i.ey, -1                       ; 2 uses
  store i64 %i.ez, ptr %i.ew, align 8, !noalias !1148
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.az, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit.i"

bb.az:                                            ; preds = %bb.ay
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit.i" unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

.body.i:                                          ; preds = %bb.bb, %bb.ax, %bb.aw, %bb.av, %bb.at
  %.pn.i = phi { ptr, i32 } [ %i.em, %bb.at ], [ %i.fc, %bb.bb ], [ %i.eq, %bb.ax ], [ %i.eq, %bb.aw ], [ %i.eq, %bb.av ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17h96f8c0526ac7fcf7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h) #75
          to label %.body.thread63.thread unwind label %bb.bf

bb.bb:                                            ; preds = %bb.az
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit.i": ; preds = %bb.az, %bb.ay, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.fd = load i64, ptr %i.h, align 8, !range !58, !alias.scope !1150, !noundef !41
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h65664b5b1f43c019E.exit", label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.ff = load ptr, ptr %i.dx, align 8, !alias.scope !1152, !noundef !41 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i40, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h65664b5b1f43c019E.exit", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !1153, !noundef !41
  %i.fh = add i64 %i.fg, -1                       ; 2 uses
  store i64 %i.fh, ptr %i.ff, align 8, !noalias !1153
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.be, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h65664b5b1f43c019E.exit"

bb.be:                                            ; preds = %bb.bd
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dx)
  br label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h65664b5b1f43c019E.exit"

bb.bf:                                            ; preds = %.body.i, %bb.at
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h65664b5b1f43c019E.exit": ; preds = %bb.be, %bb.bd, %bb.bc, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit": ; preds = %bb.bm, %bb.bt, %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h65664b5b1f43c019E.exit", %bb.an, %bb.i, %bb.bs, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i49", %bb.bl, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i"
end_hunk_0
