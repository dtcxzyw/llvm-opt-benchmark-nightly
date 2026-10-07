Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang.nickel_lang.dfb3fb7377f01560-cgu.0?download=true
inline.NumInlined: 7487
inline.NumDeleted: 3530
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h254c10ece6235347E":bb.a
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
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.r = load i64, ptr %i.l, align 8, !range !25, !alias.scope !465, !noundef !11
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17ha615ae0e5e96fe46E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.t = load ptr, ptr %i.p, align 8, !alias.scope !467, !noundef !11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17ha615ae0e5e96fe46E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.t, align 8, !noalias !468, !noundef !11
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !noalias !468
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17ha615ae0e5e96fe46E.exit"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17ha615ae0e5e96fe46E.exit" unwind label %bb.ab

bb.h:                                             ; preds = %bb.c
  %i.x = load i8, ptr %i.k, align 8, !range !27, !noundef !11
  switch i8 %i.x, label %bb.i [
    i8 6, label %bb.j
    i8 7, label %bb.n
  ]

bb.i:                                             ; preds = %bb.ad, %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit", %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit36", %bb.n, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load <2 x ptr>, ptr %i.m, align 16
  store <2 x ptr> %i.z, ptr %i.y, align 8
  %i.aa = load i64, ptr %i.l, align 8, !range !25, !noundef !11
  %i.ab = load ptr, ptr %i.p, align 8
  %i.ac = call noundef nonnull ptr @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3add17h1f5d73ab6a0e0d6aE"(ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.aa, ptr %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !11, !align !18, !noundef !11
  %.val27 = load ptr, ptr %i.ae, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val27, i64 16 ; 6 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !11 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #41
          to label %.noexc28 unwind label %.body.thread68

.noexc28:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = add nuw nsw i64 %i.ag, 1
  store i64 %i.ai, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val27, i64 24
  %i.ak = invoke noundef ptr @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData4deps17h8d46754d77d437e4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj)
          to label %bb.o unwind label %bb.m       ; 5 uses

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load i64, ptr %i.af, align 8, !noundef !11
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.af, align 8
  br label %.body.thread

bb.n:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !11, !align !18, !noundef !11 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !28, !noundef !11 ; 2 uses
  %i.ar = icmp ne i64 %i.aq, -9223372036854775756
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.aq, -9223372036854775760
  br i1 %i.as, label %bb.ac, label %bb.i

bb.o:                                             ; preds = %bb.l
  %i.at = load i64, ptr %i.af, align 8, !noundef !11
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.af, align 8
  store ptr %i.ak, ptr %i.j, align 8
  %i.av = icmp eq ptr %i.ak, null
  br i1 %i.av, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit", label %bb.r

bb.p:                                             ; preds = %bb.r
  br i1 %i.bb, label %bb.q, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit"

bb.q:                                             ; preds = %bb.p
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit" unwind label %.body.thread68

bb.r:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !11
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = load i64, ptr %i.ak, align 8, !noalias !11, !noundef !11
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.ak, align 8, !noalias !11
  %i.bb = icmp eq i64 %i.ba, 0                    ; 2 uses
  br i1 %i.ay, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  br i1 %i.bb, label %bb.t, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit36"

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit36" unwind label %.body.thread68

"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit36": ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bc = load i64, ptr %i.l, align 8, !range !25, !noundef !11
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %bb.i

bb.u:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit36"
  %i.be = invoke { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue14try_into_thunk17h51e7db5559e1bd4bE(ptr noundef nonnull %0)
          to label %bb.v unwind label %.body.thread68 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bf = extractvalue { i64, ptr } %i.be, 0
  %i.bg = extractvalue { i64, ptr } %i.be, 1      ; 6 uses
  %i.bh = trunc nuw i64 %i.bf to i1
  br i1 %i.bh, label %bb.w, label %bb.aa, !prof !17

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !469
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  store ptr %i.bg, ptr %i.f, align 8, !noalias !469
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @419, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #41
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #43
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
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17ha615ae0e5e96fe46E"(ptr noalias noundef align 8 dereferenceable(16) %i.l)
          to label %bb.bg unwind label %bb.ab

bb.ab:                                            ; preds = %bb.g, %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17ha0108cd9000b45dcE.exit": ; preds = %bb.o, %bb.p, %bb.q
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
  br label %6

6:                                                ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h89fcabcf54d12b3cE.exit.i.i", %bb.ae
  %.sroa.03.0.i14.i.i = phi ptr [ %.sroa.03.0.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h89fcabcf54d12b3cE.exit.i.i" ], [ %i.m, %bb.ae ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03.0.i14.i.i, null
  br i1 %.not.i.i.i, label %bb.an, label %bb.af

bb.af:                                            ; preds = %6
  %i.bn = load ptr, ptr %.sroa.03.0.i14.i.i, align 8, !noalias !470, !nonnull !11, !noundef !11 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i14.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !470, !noundef !11 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bp, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.03.0.i.i.i = select i1 %.not4.i.i.i, ptr null, ptr %i.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !474, !noalias !475, !noundef !11
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h89fcabcf54d12b3cE.exit.i.i", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !474, !noalias !475, !noundef !11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !474, !noalias !475, !noundef !11
  %i.bx = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hacae9d906e4b76acE(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i), !noalias !476 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.by = lshr i64 %i.bx, 57
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !479, !noalias !480, !noundef !11 ; 2 uses
  %i.cc = load ptr, ptr %i.bu, align 8, !alias.scope !479, !noalias !480, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bz, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.ct, %bb.aj ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bx, %bb.ag ], [ %i.cu, %bb.aj ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !481 ; 2 uses
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
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.cm, align 4, !noalias !482, !noundef !11
  %i.cn = icmp eq i32 %.sroa.6.0.copyload, %.val3.i.i.i.i.i.i.i
  br i1 %i.cn, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h591aefa7665e425dE.exit.i.i.i.i.i", label %bb.ai, !prof !13

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ai, %bb.ah
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = icmp eq i16 %i.cp, 0
  br i1 %i.cq, label %bb.aj, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h591aefa7665e425dE.exit.i.i.i.i.i", !prof !17

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cr = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.cs = and i16 %i.cr, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ct = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.cu = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ct
  br label %bb.ah

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h591aefa7665e425dE.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %7 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ null, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %7, null
  %8 = getelementptr inbounds i8, ptr %7, i64 -16
  %.sroa.0.1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %8
  br label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h89fcabcf54d12b3cE.exit.i.i"

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h89fcabcf54d12b3cE.exit.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h591aefa7665e425dE.exit.i.i.i.i.i", %bb.af
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h591aefa7665e425dE.exit.i.i.i.i.i" ], [ null, %bb.af ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  %9 = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8 ; 2 uses
  %.not711.i.i = icmp eq ptr %9, null
  %.not7.i.i = or i1 %.not.i.i.i.i, %.not711.i.i
  br i1 %.not7.i.i, label %6, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h6f0b4a767b6b595eE.exit"

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h6f0b4a767b6b595eE.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h89fcabcf54d12b3cE.exit.i.i"
  %.val = load ptr, ptr %9, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.cv = ptrtoint ptr %.val to i64
  %i.cw = and i64 %i.cv, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.cw, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.ak
    i64 0, label %bb.al
  ], !prof !16

bb.ak:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h6f0b4a767b6b595eE.exit"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc37 unwind label %.body.thread68

.noexc37:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h6f0b4a767b6b595eE.exit"
  %i.cx = load i64, ptr %.val, align 8, !noundef !11 ; 3 uses
  %i.cy = and i64 %i.cx, 72057594037927935        ; 3 uses
  %i.cz = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  %i.db = and i64 %i.cx, 1080863910568919040
  %i.dc = icmp ult i64 %i.cx, 864691128455135232
  call void @llvm.assume(i1 %i.dc)
  %i.dd = or i64 %i.da, %i.db
  store i64 %i.dd, ptr %.val, align 8
  %i.de = icmp eq i64 %i.cy, 72057594037927935
  br i1 %i.de, label %bb.am, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !17

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @746, ptr %i.e, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.di, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc38 unwind label %.body.thread68

.noexc38:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dj = load i64, ptr %i.l, align 8, !range !25, !noundef !11
  %i.dk = load ptr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !483
  store ptr %0, ptr %i.d, align 8, !noalias !483
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dm = load <2 x ptr>, ptr %i.m, align 16
  store <2 x ptr> %i.dm, ptr %i.dl, align 8, !noalias !483
  %i.dn = call noundef nonnull ptr @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3add17h1f5d73ab6a0e0d6aE"(ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.dj, ptr %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.al, %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h6f0b4a767b6b595eE.exit"
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
  %i.du = load ptr, ptr %i.m, align 16, !nonnull !11, !noundef !11 ; 2 uses
  store <2 x ptr> %i.dt, ptr %i.dr, align 8
  %i.dv = load i64, ptr %i.l, align 8, !range !25, !noundef !11
  %i.dw = load ptr, ptr %i.p, align 8
  store i64 %i.dv, ptr %i.h, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.dy = ptrtoint ptr %0 to i64
  %i.dz = and i64 %i.dy, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.dz, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit.i" [
    i64 2, label %bb.ao
    i64 0, label %bb.ap
  ], !prof !16

bb.ao:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc.i unwind label %bb.at, !noalias !484

.noexc.i:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !485
  store ptr %0, ptr %i.c, align 8, !noalias !485
  %i.ea = load i64, ptr %0, align 8, !noalias !486, !noundef !11 ; 3 uses
  %i.eb = and i64 %i.ea, 72057594037927935
  %i.ec = add nsw i64 %i.eb, -1                   ; 3 uses
  %i.ed = and i64 %i.ea, 1080863910568919040
  %i.ee = icmp ult i64 %i.ea, 864691128455135232
  call void @llvm.assume(i1 %i.ee)
  %i.ef = or i64 %i.ec, %i.ed
  store i64 %i.ef, ptr %0, align 8, !noalias !486
  %i.eg = icmp ugt i64 %i.ec, 72057594037927935
  br i1 %i.eg, label %bb.ar, label %bb.aq, !prof !17

bb.aq:                                            ; preds = %bb.ap
  %i.eh = icmp eq i64 %i.ec, 0
  br i1 %i.eh, label %bb.as, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i"

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !486
  store ptr @746, ptr %i.b, align 8, !noalias !486
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ei, align 8, !noalias !486
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ej, align 8, !noalias !486
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ek, align 8, !noalias !486
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.el, align 8, !noalias !486
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc2.i unwind label %bb.at, !noalias !484

.noexc2.i:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i" unwind label %bb.at, !noalias !484

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i": ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !485
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit.i"

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ao
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E"(ptr noalias noundef align 8 dereferenceable(16) %i.dr) #43
          to label %.body.i unwind label %bb.bf

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i", %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.en = load i64, ptr %i.du, align 8, !noalias !488, !noundef !11
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  store i64 %i.eo, ptr %i.du, align 8, !noalias !488
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.au, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i"

bb.au:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i" unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.er = load ptr, ptr %i.ds, align 8, !alias.scope !490, !noundef !11 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.body.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.et = load i64, ptr %i.er, align 8, !noalias !491, !noundef !11
  %i.eu = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.eu, ptr %i.er, align 8, !noalias !491
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.ax, label %.body.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %.body.i unwind label %bb.ba

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i": ; preds = %bb.au, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.ew = load ptr, ptr %i.ds, align 8, !alias.scope !493, !noundef !11 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i", label %bb.ay

bb.ay:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i"
  %i.ey = load i64, ptr %i.ew, align 8, !noalias !494, !noundef !11
  %i.ez = add i64 %i.ey, -1                       ; 2 uses
  store i64 %i.ez, ptr %i.ew, align 8, !noalias !494
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.az, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i"

bb.az:                                            ; preds = %bb.ay
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i" unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

.body.i:                                          ; preds = %bb.bb, %bb.ax, %bb.aw, %bb.av, %bb.at
  %.pn.i = phi { ptr, i32 } [ %i.em, %bb.at ], [ %i.fc, %bb.bb ], [ %i.eq, %bb.ax ], [ %i.eq, %bb.aw ], [ %i.eq, %bb.av ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17ha615ae0e5e96fe46E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h) #43
          to label %.body.thread63.thread unwind label %bb.bf

bb.bb:                                            ; preds = %bb.az
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i": ; preds = %bb.az, %bb.ay, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.fd = load i64, ptr %i.h, align 8, !range !25, !alias.scope !496, !noundef !11
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdb3c5929512aee8fE.exit", label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.ff = load ptr, ptr %i.dx, align 8, !alias.scope !498, !noundef !11 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i40, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdb3c5929512aee8fE.exit", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !499, !noundef !11
  %i.fh = add i64 %i.fg, -1                       ; 2 uses
  store i64 %i.fh, ptr %i.ff, align 8, !noalias !499
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.be, label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdb3c5929512aee8fE.exit"

bb.be:                                            ; preds = %bb.bd
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dx)
  br label %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdb3c5929512aee8fE.exit"

bb.bf:                                            ; preds = %.body.i, %bb.at
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdb3c5929512aee8fE.exit": ; preds = %bb.be, %bb.bd, %bb.bc, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit": ; preds = %bb.bm, %bb.bt, %"_ZN4core3ptr223drop_in_place$LT$$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdb3c5929512aee8fE.exit", %bb.an, %bb.i, %bb.bs, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i49", %bb.bl, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i"
end_hunk_0
begin_hunk_1_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c2f9ef9f1271ac2E":bb.a
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !894
  unreachable

bb.ap:                                            ; preds = %bb.aj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.gp, %bb.aj ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.val3.i.i.i.i.i.i, %bb.aj ] ; 2 uses
  %i.gv = icmp samesign ule i64 %.val3.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gv)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 8 %.val.i7.i.i.i.i.i, i64 %i.gl, i1 false), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !891
  %i.gw = load ptr, ptr %i.br, align 8, !alias.scope !858, !noalias !859, !nonnull !11, !align !23, !noundef !11 ; 2 uses
  %i.gx = load i64, ptr %i.bs, align 8, !alias.scope !858, !noalias !859, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !898
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.av, align 8, !noalias !898
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !898
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !898
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !898
  store i64 %.val3.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !898
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !898
  store i32 %i.gk, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4, !noalias !898
  store ptr %i.gh, ptr %.sroa.88.0..sroa_idx.i.i.i.i, align 8, !noalias !898
  store ptr %i.gw, ptr %.sroa.99.0..sroa_idx.i.i.i.i, align 8, !noalias !898
  store i64 %i.gx, ptr %.sroa.1010.0..sroa_idx.i.i.i.i, align 8, !noalias !898
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !901
  invoke void @_ZN14regex_automata4util8captures8Captures4iter17h5ada3b58a888dec5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i.i)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !902

.noexc.i.i.i.i.i:                                 ; preds = %bb.ap
  store ptr %i.gw, ptr %i.ai, align 8, !noalias !901
  store i64 %i.gx, ptr %i.bu, align 8, !noalias !901
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  br label %bb.aq

bb.aq:                                            ; preds = %.backedge164, %.noexc.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !905
  invoke void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %.noexc1.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !902

.noexc1.i.i.i.i.i:                                ; preds = %bb.aq
  %i.gy = load i64, ptr %i.ah, align 8, !range !31, !noalias !905, !noundef !11
  switch i64 %i.gy, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1399724ee6cdd79E.exit.i.i.i.i.i.i.i.i" [
    i64 2, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8d1e98a236f0a30E.exit.i.i.i.i"
    i64 0, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1399724ee6cdd79E.exit.thread.i.i.i.i.i.i.i.i"
  ]

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1399724ee6cdd79E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !905
  br label %.backedge164

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1399724ee6cdd79E.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  %i.gz = load i64, ptr %i.bu, align 8, !alias.scope !906, !noalias !907, !noundef !11
  %i.ha = load ptr, ptr %i.ai, align 8, !alias.scope !906, !noalias !907, !nonnull !11, !align !23, !noundef !11
  %i.hb = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !908
  store ptr %i.ha, ptr %i.ag, align 8, !noalias !909
  store i64 %i.gz, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !910
  store <2 x i64> %i.hb, ptr %.sroa.610.8..sroa.5.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !910
  %i.hc = invoke noundef zeroext i1 @_ZN16nickel_lang_core4term6string29grapheme_cluster_preservation5regex36does_match_start_and_end_on_boundary17h8d2dadd5ade1752cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %.noexc2.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !902

.noexc2.i.i.i.i.i:                                ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1399724ee6cdd79E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !908
  br i1 %i.hc, label %.backedge164, label %bb.as

.backedge164:                                     ; preds = %.noexc2.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1399724ee6cdd79E.exit.thread.i.i.i.i.i.i.i.i"
  br label %bb.aq

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1399724ee6cdd79E.exit.i.i.i.i.i.i.i.i", %bb.aq
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.ap
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h90d9ab274ca5f58dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av) #43
          to label %common.resume unwind label %bb.ax, !noalias !902

bb.as:                                            ; preds = %.noexc2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !901
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.hd = load ptr, ptr %.sroa.88.0..sroa_idx.i.i.i.i, align 8, !alias.scope !916, !noalias !917, !nonnull !11, !noundef !11
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !918
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.at, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i.i.i.i"

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.88.0..sroa_idx.i.i.i.i)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i.i.i.i" unwind label %bb.au, !noalias !902

bb.au:                                            ; preds = %bb.at
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !919, !noalias !917 ; 2 uses
  %i.hh = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.hh, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !919, !noalias !917, !nonnull !11, !noundef !11
  %i.hi = shl nuw i64 %.val2.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !902
  br label %common.resume

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i.i.i.i": ; preds = %bb.at, %bb.as
  %.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !919, !noalias !917 ; 2 uses
  %i.hj = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.hj, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8d1e98a236f0a30E.exit.thread.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i.i.i.i"
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !919, !noalias !917, !nonnull !11, !noundef !11
  %i.hk = shl nuw i64 %.val.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !902
  br label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8d1e98a236f0a30E.exit.thread.i.i.i.i"

bb.ax:                                            ; preds = %bb.ar
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !902
  unreachable

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8d1e98a236f0a30E.exit.thread.i.i.i.i": ; preds = %bb.aw, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !898
  br label %bb.ay

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8d1e98a236f0a30E.exit.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !901
  %.sroa.015.0.copyload.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !920, !noalias !898 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i.i.i.i, i64 64, i1 false), !alias.scope !920, !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !898
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.015.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8d1e98a236f0a30E.exit.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8d1e98a236f0a30E.exit.thread.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i.i)
  br label %bb.b

bb.az:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8d1e98a236f0a30E.exit.i.i.i.i"
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.i.i.i.i, i64 64, i1 false), !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i.i)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.015.0.copyload.i.i.i.i, ptr %i.aw, align 8, !noalias !921
  %.val.i = load ptr, ptr %i.hm, align 8, !alias.scope !851, !noalias !922 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.hq = load i32, ptr %i.hp, align 8, !range !32, !alias.scope !925, !noalias !926, !noundef !11
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.hs = load i32, ptr %i.hr, align 4, !alias.scope !925, !noalias !926
  %i.ht = trunc nuw i32 %i.hq to i1
  br i1 %i.ht, label %bb.ba, label %bb.bl

bb.ba:                                            ; preds = %bb.az
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !925, !noalias !926, !nonnull !11, !noundef !11
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !927, !noundef !11 ; 3 uses
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
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !925, !noalias !926, !noundef !11 ; 2 uses
  %.not63.i.i.i = icmp ult i64 %.sroa.057.0.i.i.i, %i.if
  %i.ig = load ptr, ptr %i.id, align 8, !alias.scope !925, !noalias !926, !nonnull !11 ; 2 uses
  br i1 %.not63.i.i.i, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.057.0.i.i.i
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !927, !noundef !11 ; 6 uses
  %.not.i.i.i = icmp ne i64 %i.ii, 0
  %.not64.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i, %i.if
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not64.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.058.0.i.i.i
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !927, !noundef !11 ; 6 uses
  %.not60.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not60.i.i.i, label %bb.bl, label %bb.bk

.body.i.i:                                        ; preds = %bb.cf, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bea96e48a27bcd9E.exit.i.i", %.body.i.i.i.i.i.i, %bb.bq, %bb.bp, %bb.bp, %bb.bj
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.je, %bb.bq ], [ %i.iw, %bb.bj ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.je, %bb.bp ], [ %i.je, %bb.bp ], [ %.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bea96e48a27bcd9E.exit.i.i" ], [ %.pn.i.i, %bb.cf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !929), !noalias !930
  %i.il = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !931), !noalias !930
  call void @llvm.experimental.noalias.scope.decl(metadata !932), !noalias !930
  call void @llvm.experimental.noalias.scope.decl(metadata !933), !noalias !930
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !934, !noalias !935, !nonnull !11, !noundef !11
  %i.in = atomicrmw sub ptr %i.im, i64 1 release, align 8, !noalias !936
  %i.io = icmp eq i64 %i.in, 1
  br i1 %i.io, label %bb.bf, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i"

bb.bf:                                            ; preds = %.body.i.i
  fence acquire, !noalias !930
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.il)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i" unwind label %bb.bg, !noalias !937

bb.bg:                                            ; preds = %bb.bf
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !938, !noalias !935 ; 2 uses
  %i.iq = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.iq, label %.body.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val3.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !938, !noalias !935, !nonnull !11, !noundef !11
  %i.is = shl nuw i64 %.val2.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !937
  br label %.body.i

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i": ; preds = %bb.bf, %.body.i.i
  %.val.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !938, !noalias !935 ; 2 uses
  %i.it = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.it, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i"
  %i.iu = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val1.i.i.i = load ptr, ptr %i.iu, align 8, !alias.scope !938, !noalias !935, !nonnull !11, !noundef !11
  %i.iv = shl nuw i64 %.val.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !937
  br label %common.resume

bb.bj:                                            ; preds = %bb.bn, %bb.bl, %bb.bk
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bk:                                            ; preds = %bb.be
  %i.ix = add i64 %i.ii, -1                       ; 8 uses
  %i.iy = add i64 %i.ik, -1                       ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !923, !noalias !935, !nonnull !11, !align !23, !noundef !11 ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.jc = load i64, ptr %i.jb, align 8, !alias.scope !923, !noalias !935, !noundef !11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !939
  invoke void @_ZN14regex_automata4util8captures8Captures4iter17h5ada3b58a888dec5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ho)
          to label %bb.bn unwind label %bb.bj, !noalias !937

bb.bl:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @308) #41
          to label %bb.bm unwind label %bb.bj, !noalias !937

bb.bm:                                            ; preds = %bb.ct, %.loopexit24.i.i, %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !939
  store ptr %i.ja, ptr %i.ac, align 8, !alias.scope !941, !noalias !942
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.jc, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !941, !noalias !942
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store i64 1, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !941, !noalias !942
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !945
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea313f6e58729f94E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %.noexc.i.i unwind label %bb.bj, !noalias !937

.noexc.i.i:                                       ; preds = %bb.bn
  %i.jd = load i64, ptr %i.aa, align 8, !range !33, !noalias !945, !noundef !11 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jd, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !945
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
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !946
  br label %.body.i.i

bb.br:                                            ; preds = %.noexc.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !945 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !945
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.jf, align 8, !alias.scope !947, !noalias !948, !nonnull !11, !noundef !11
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.val5.i.i.i.i.i.i.i.i = load ptr, ptr %i.jg, align 8, !alias.scope !947, !noalias !948, !nonnull !11, !noundef !11
  %i.jh = ptrtoint ptr %.val5.i.i.i.i.i.i.i.i to i64
  %i.ji = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.jj = sub nuw i64 %i.jh, %i.ji
  %i.jk = lshr exact i64 %i.jj, 4
  %i.jl = load i64, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !947, !noalias !948, !noundef !11
  %i.jm = call i64 @llvm.usub.sat.i64(i64 %i.jk, i64 %i.jl) ; 2 uses
  %i.jn = call i64 @llvm.umax.i64(i64 %i.jm, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.jn, 1 ; 2 uses
  %i.jo = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.jm, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bt, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.br
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !949
  %i.jq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jo, i64 noundef range(i64 1, 9) 8) #40, !noalias !949 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.bs ], [ 0, %bb.br ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.jo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @411) #41
          to label %.noexc.i.i.i.i.i3.i unwind label %bb.bp, !noalias !950

.noexc.i.i.i.i.i3.i:                              ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.jq, %bb.bs ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.bs ] ; 3 uses
  %i.js = icmp samesign ult i64 %i.jn, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.js)
  store i64 %i.jd, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !950
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !950
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !950
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.ab, align 8, !noalias !945
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !945
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !951
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !956
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea313f6e58729f94E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !950

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.bu
  %i.jt = load i64, ptr %i.y, align 8, !range !33, !noalias !956, !noundef !11 ; 2 uses
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
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !956 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !956
  %i.ka = icmp samesign ult i64 %i.jy, 384307168202282326
  call void @llvm.assume(i1 %i.ka)
  %i.kb = load i64, ptr %i.ab, align 8, !range !34, !alias.scope !957, !noalias !958, !noundef !11
  %i.kc = icmp eq i64 %i.jy, %i.kb
  br i1 %i.kc, label %bb.by, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h08b2d9a490653bcbE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h08b2d9a490653bcbE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h08b2d9a490653bcbE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.bv
end_hunk_1
begin_hunk_2_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c2f9ef9f1271ac2E":bb.a
  store i64 %i.kt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !939
  %i.ku = getelementptr inbounds nuw i8, ptr %i.af, i64 200 ; 2 uses
  store i64 0, ptr %i.ku, align 8, !noalias !939
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
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
  %i.lb = load i64, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !967, !noalias !968, !noundef !11
  %i.lc = sub i64 %i.la, %i.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i), !noalias !969
  %i.ld = icmp eq i64 %i.lc, %i.ix
  br i1 %i.ld, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !970
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !972
  %i.le = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #40, !noalias !972 ; 3 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.cc, label %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h961154761729eb9fE.exit.i.i.i.i.i", !prof !17

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #41
          to label %.noexc61.i.i unwind label %.loopexit.split-lp.i.i, !noalias !937

.noexc61.i.i:                                     ; preds = %bb.cc
  unreachable

"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h961154761729eb9fE.exit.i.i.i.i.i": ; preds = %bb.cb
  store i64 %i.kz, ptr %i.le, align 8, !noalias !972
  store i64 1, ptr %i.x, align 8, !alias.scope !973, !noalias !970
  store ptr %i.le, ptr %i.kw, align 8, !alias.scope !973, !noalias !970
  store i64 1, ptr %i.kx, align 8, !alias.scope !973, !noalias !970
  invoke void @"_ZN12malachite_nz7natural10conversion10from_limbs48_$LT$impl$u20$malachite_nz..natural..Natural$GT$20from_owned_limbs_asc17he0a178d1730e0898E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc62.i.i unwind label %.loopexit.i.i, !noalias !937

.noexc62.i.i:                                     ; preds = %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h961154761729eb9fE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) @38, i64 24, i1 false), !noalias !974
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.0.i.i.i.i.i.i, align 8, !noalias !974 ; 4 uses
  %.not.i.i.i.i2.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i2.i, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %.noexc62.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i), !noalias !969
  %i.lg = add i64 %i.kz, 1                        ; 2 uses
  store i64 %i.lg, ptr %i.ku, align 8, !alias.scope !966, !noalias !975
  %i.lh = invoke fastcc ptr @"_ZN100_$LT$unicode_segmentation..grapheme..Graphemes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h23989c0c124e9c8bE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af)
          to label %.noexc63.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc63.i.i:                                     ; preds = %bb.cd
  %.not.i.i59.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i59.i.i, label %.loopexit24.i.i, label %bb.ca

"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E.exit.i": ; preds = %bb.cp, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hba259a8ed3dfe9bfE.exit.i.i", %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %i.mb, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hba259a8ed3dfe9bfE.exit.i.i" ], [ %i.mb, %bb.cp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !976), !noalias !930
  %i.li = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.li, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bea96e48a27bcd9E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E.exit.i", %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hdb046a74ed652c93E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.lk, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hdb046a74ed652c93E.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E.exit.i" ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.615.0.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.lk = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.lj, align 8, !range !35, !alias.scope !976, !noalias !977, !noundef !11 ; 2 uses
  %switch.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i, 0
  br i1 %switch.i.i.i.i, label %bb.ce, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hdb046a74ed652c93E.exit.i.i.i.i"

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ll = getelementptr i8, ptr %i.lj, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.ll, align 8, !alias.scope !976, !noalias !977, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !978
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hdb046a74ed652c93E.exit.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hdb046a74ed652c93E.exit.i.i.i.i": ; preds = %bb.ce, %.lr.ph.i.i.i.i
  %i.lm = icmp eq i64 %i.lk, %.sroa.8.0.i
  br i1 %i.lm, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bea96e48a27bcd9E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bea96e48a27bcd9E.exit.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hdb046a74ed652c93E.exit.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E.exit.i"
  %i.ln = icmp eq i64 %.sroa.013.0.i, 0
  br i1 %i.ln, label %.body.i.i, label %bb.cf

bb.cf:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bea96e48a27bcd9E.exit.i.i"
  %i.lo = mul nuw i64 %.sroa.013.0.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.615.0.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !977
  br label %.body.i.i

.loopexit.i.i:                                    ; preds = %bb.cd, %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h961154761729eb9fE.exit.i.i.i.i.i"
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E.exit.i"

.loopexit.split-lp.i.i:                           ; preds = %bb.bz, %.loopexit24.i.i, %bb.cc
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E.exit.i"

.loopexit24.i.i:                                  ; preds = %.noexc63.i.i, %.noexc60.i.i
  store i64 -9223372036854775807, ptr %i.ad, align 8, !noalias !921
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$malachite_q..Rational$GT$$GT$17he0a356877b3170e5E"(ptr noalias noundef align 8 dereferenceable(56) %i.ad), !noalias !922
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @309, i64 noundef 72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #41
          to label %bb.bm unwind label %.loopexit.split-lp.i.i, !noalias !937

bb.cg:                                            ; preds = %.noexc62.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hn, ptr noundef nonnull align 8 dereferenceable(40) %i.lp, i64 40, i1 false), !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i), !noalias !969
  %.sroa.319.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i8 1, ptr %.sroa.319.0..sroa_idx.i.i.i, align 8, !noalias !921
  %.sroa.519.8.copyload.i = load ptr, ptr %i.hn, align 8, !noalias !921 ; 3 uses
  %.sroa.720.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.721.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.721.8.copyload.i = load i64, ptr %.sroa.721.8..sroa_idx.i, align 8, !noalias !921 ; 2 uses
  %i.lq = load <2 x i64>, ptr %.sroa.720.8..sroa_idx.i, align 8, !noalias !921
  %.sroa.822.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.822.8.copyload.i = load ptr, ptr %.sroa.822.8..sroa_idx.i, align 8, !noalias !921 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !939
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
  %i.lv = load i8, ptr %i.lu, align 1, !alias.scope !979, !noalias !937, !noundef !11
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
  %i.lz = load i8, ptr %i.ly, align 1, !alias.scope !979, !noalias !937, !noundef !11
  %i.ma = icmp sgt i8 %i.lz, -65
  br i1 %i.ma, label %bb.cq, label %bb.ct

bb.cn:                                            ; preds = %bb.ct, %bb.cs
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i.i = icmp sgt i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %switch.i.i, label %bb.co, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hba259a8ed3dfe9bfE.exit.i.i"

bb.co:                                            ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.519.8.copyload.i) ]
  %i.mc = shl nuw i64 %.sroa.0.0.copyload1.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.519.8.copyload.i, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !980
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hba259a8ed3dfe9bfE.exit.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hba259a8ed3dfe9bfE.exit.i.i": ; preds = %bb.co, %bb.cn
  %switch8.i.i = icmp sgt i64 %.sroa.721.8.copyload.i, 0
  br i1 %switch8.i.i, label %bb.cp, label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E.exit.i"

bb.cp:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hba259a8ed3dfe9bfE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.822.8.copyload.i) ]
  %i.md = shl nuw i64 %.sroa.721.8.copyload.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.822.8.copyload.i, i64 noundef %i.md, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !980
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E.exit.i"

bb.cq:                                            ; preds = %bb.cm, %.split7.i.i.i, %bb.cj
  %i.me = sub nuw i64 %i.ik, %i.ii                ; 10 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ix
  %i.mg = icmp slt i64 %i.me, 0
  br i1 %i.mg, label %bb.cs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.cq
  %1 = icmp eq i64 %i.ik, %i.ii
  br i1 %1, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !981
  %i.mh = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.me, i64 noundef range(i64 1, 9) 1) #40, !noalias !981 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.cr ], [ 0, %bb.cq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.me, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc65.i.i unwind label %bb.cn, !noalias !937

.noexc65.i.i:                                     ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cm, %.split7.i.i.i, %bb.ck, %.split.i.i.i, %bb.cg
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ja, i64 noundef %i.jc, i64 noundef %i.ix, i64 noundef %i.iy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #41
          to label %bb.bm unwind label %bb.cn, !noalias !937

bb.cu:                                            ; preds = %bb.cr, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.mh, %bb.cr ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.mf, i64 %i.me, i1 false), !noalias !982
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.mj = load ptr, ptr %i.hu, align 8, !alias.scope !988, !noalias !935, !nonnull !11, !noundef !11
  %i.mk = atomicrmw sub ptr %i.mj, i64 1 release, align 8, !noalias !989
  %i.ml = icmp eq i64 %i.mk, 1
  br i1 %i.ml, label %bb.cv, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i"

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i" unwind label %bb.cw, !noalias !937

bb.cw:                                            ; preds = %bb.cv
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !990, !noalias !935 ; 2 uses
  %i.mn = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.mn, label %common.resume, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.val3.i.i.i.i = load ptr, ptr %i.id, align 8, !alias.scope !990, !noalias !935, !nonnull !11, !noundef !11
  %i.mo = shl nuw i64 %.val2.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.mo, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !937
  br label %common.resume

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i": ; preds = %bb.cv, %bb.cu
  %.val.i.i66.i.i = load i64, ptr %i.ho, align 8, !alias.scope !990, !noalias !935 ; 2 uses
  %i.mp = icmp eq i64 %.val.i.i66.i.i, 0
  br i1 %i.mp, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i"
  %.val1.i.i67.i.i = load ptr, ptr %i.id, align 8, !alias.scope !990, !noalias !935, !nonnull !11, !noundef !11
  %i.mq = shl nuw i64 %.val.i.i66.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i, i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !937
  br label %bb.cz

.body.i:                                          ; preds = %bb.bh, %bb.bg
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !937
  unreachable

bb.cz:                                            ; preds = %bb.cy, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h5cf49c94b1f22c34E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !921
  %.sroa.1415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.me, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.me, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  store i64 %.sroa.013.0.i, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %.sroa.615.0.i, ptr %.sroa.78.0..sroa_idx, align 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %.sroa.8.0.i, ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 4 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.910.0..sroa_idx, align 8
  %.sroa.1011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %.sroa.519.8.copyload.i, ptr %.sroa.1011.0..sroa_idx, align 8
  %.sroa.1112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store <2 x i64> %i.lq, ptr %.sroa.1112.0..sroa_idx, align 8
  %.sroa.1314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr %.sroa.822.8.copyload.i, ptr %.sroa.1314.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !991
  %i.mr = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 8, !range !12, !noalias !992, !noundef !11
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i: ; preds = %bb.cz
  %.pre.i.i.i = load i64, ptr %i.mr, align 8, !noalias !993
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !993
  br label %bb.dc

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i": ; preds = %bb.cz
  %i.mv = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i unwind label %bb.db, !noalias !991 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i"
  %i.mw = extractvalue { i64, i64 } %i.mv, 0
  %i.mx = extractvalue { i64, i64 } %i.mv, 1      ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 %i.mx, ptr %i.my, align 8, !noalias !994
  store i8 1, ptr %i.ms, align 8, !noalias !994
  br label %bb.dc

bb.da:                                            ; preds = %.body.thread.i, %bb.db
  %.pn.i = phi { ptr, i32 } [ %i.na, %bb.db ], [ %eh.lpad-body33.i, %.body.thread.i ] ; 2 uses
  %.sroa.03.0.i = phi i8 [ %.sroa.01.1.i, %bb.db ], [ %.sroa.03.2.lpad-body30.i, %.body.thread.i ]
  %.sroa.02.0.i = phi i8 [ %.sroa.01.1.i, %bb.db ], [ %.sroa.02.2.lpad-body31.i, %.body.thread.i ]
  %.sroa.01.0.i = phi i8 [ %.sroa.01.1.i, %bb.db ], [ %.sroa.01.2.lpad-body32.i, %.body.thread.i ]
  %i.mz = trunc nuw i8 %.sroa.03.0.i to i1
  %2 = icmp ne i64 %i.ik, %i.ii
  %or.cond.not = and i1 %2, %i.mz
  br i1 %or.cond.not, label %bb.fy, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit.i"

bb.db:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit34.i", %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i"
  %.sroa.01.1.i = phi i8 [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit34.i" ], [ 1, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i" ] ; 3 uses
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.dc:                                            ; preds = %.noexc.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i
  %.pre-phi60.i = phi i64 [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i ], [ %i.mx, %.noexc.i ]
  %i.nb = phi i64 [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i ], [ %i.mw, %.noexc.i ] ; 2 uses
  %i.nc = add i64 %i.nb, 1
  store i64 %i.nc, ptr %i.mr, align 8, !noalias !993
  store i64 0, ptr %i.w, align 8, !alias.scope !995, !noalias !991
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !995, !noalias !991
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !995, !noalias !991
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !991
  %i.nd = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 %i.nb, ptr %i.nd, align 8, !alias.scope !995, !noalias !991
  %i.ne = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i64 %.pre-phi60.i, ptr %i.ne, align 8, !alias.scope !995, !noalias !991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !991
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @187, i64 noundef 7)
          to label %bb.dd unwind label %.body.thread35.i, !noalias !991

.body.thread35.i:                                 ; preds = %bb.di, %bb.dt, %bb.fq, %bb.fw, %bb.fv, %bb.fs, %bb.fp, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit21.i", %bb.dz, %bb.dy, %bb.dv, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i", %bb.do, %bb.dn, %bb.dk, %bb.dc
  %.sroa.03.2.ph.i = phi i8 [ 0, %bb.fv ], [ 0, %bb.fs ], [ 0, %bb.dk ], [ 1, %bb.dc ], [ 0, %bb.di ], [ 0, %bb.do ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i" ], [ 0, %bb.dn ], [ 0, %bb.dt ], [ 0, %bb.dz ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit21.i" ], [ 0, %bb.dy ], [ 0, %bb.dv ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ 0, %bb.fw ]
  %.sroa.02.2.ph.i = phi i8 [ 0, %bb.fv ], [ 0, %bb.fs ], [ 1, %bb.dk ], [ 1, %bb.dc ], [ 1, %bb.di ], [ 1, %bb.do ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i" ], [ 1, %bb.dn ], [ 0, %bb.dt ], [ 0, %bb.dz ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit21.i" ], [ 0, %bb.dy ], [ 0, %bb.dv ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ 0, %bb.fw ]
  %.sroa.01.2.ph.i = phi i8 [ 0, %bb.fv ], [ 0, %bb.fs ], [ 1, %bb.dk ], [ 1, %bb.dc ], [ 1, %bb.di ], [ 1, %bb.do ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i" ], [ 1, %bb.dn ], [ 1, %bb.dt ], [ 1, %bb.dz ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit21.i" ], [ 1, %bb.dy ], [ 1, %bb.dv ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ 0, %bb.fw ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !996
  %i.nf = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #40, !noalias !996 ; 7 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.dg, label %bb.di, !prof !17

bb.de:                                            ; preds = %bb.dg
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %3 = icmp eq i64 %i.ik, %i.ii
  br i1 %3, label %.body.thread.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !997
  br label %.body.thread.i

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !996
  store ptr @130, ptr %i.o, align 8, !noalias !996
  %i.ni = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.ni, align 8, !noalias !996
  %i.nj = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.nj, align 8, !noalias !996
  %i.nk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.nk, align 8, !noalias !996
  %i.nl = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.nl, align 8, !noalias !996
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.dh unwind label %bb.de, !noalias !996

bb.dh:                                            ; preds = %bb.dg
  unreachable

bb.di:                                            ; preds = %bb.dd
  store i64 216172782113783809, ptr %i.nf, align 8, !noalias !996
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 -1, ptr %i.nm, align 8, !noalias !996
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store i64 %i.me, ptr %i.nn, align 8, !noalias !991
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.3.0..sroa_idx3.i, align 8, !noalias !991
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i64 %i.me, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !991
  %i.no = invoke fastcc ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h92220eef6c75b625E"(ptr noalias noundef align 8 dereferenceable(72) %i.w, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.v, ptr noundef nonnull %i.nf)
          to label %._crit_edge138 unwind label %.body.thread35.i ; 5 uses

._crit_edge138:                                   ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !991
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i", label %bb.dj

bb.dj:                                            ; preds = %._crit_edge138
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = and i64 %i.nq, 3
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.nr, i64 2)
  switch i64 %..i.i.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i" [
    i64 2, label %bb.dk
    i64 0, label %bb.dl
  ], !prof !16

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc7.i unwind label %.body.thread35.i, !noalias !991

.noexc7.i:                                        ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !998
  store ptr %i.no, ptr %i.n, align 8, !noalias !998
  %i.ns = load i64, ptr %i.no, align 8, !noalias !999, !noundef !11 ; 3 uses
  %i.nt = and i64 %i.ns, 72057594037927935
  %i.nu = add nsw i64 %i.nt, -1                   ; 3 uses
  %i.nv = and i64 %i.ns, 1080863910568919040
  %i.nw = icmp ult i64 %i.ns, 864691128455135232
  call void @llvm.assume(i1 %i.nw)
  %i.nx = or i64 %i.nu, %i.nv
  store i64 %i.nx, ptr %i.no, align 8, !noalias !999
  %i.ny = icmp ugt i64 %i.nu, 72057594037927935
  br i1 %i.ny, label %bb.dn, label %bb.dm, !prof !17

bb.dm:                                            ; preds = %bb.dl
  %i.nz = icmp eq i64 %i.nu, 0
  br i1 %i.nz, label %bb.do, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i.i"

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !999
  store ptr @746, ptr %i.m, align 8, !noalias !999
  %i.oa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.oa, align 8, !noalias !999
  %i.ob = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ob, align 8, !noalias !999
  %i.oc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.oc, align 8, !noalias !999
  %i.od = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.od, align 8, !noalias !999
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc8.i unwind label %.body.thread35.i, !noalias !991

.noexc8.i:                                        ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %bb.dm
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i.i" unwind label %.body.thread35.i, !noalias !991

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i.i": ; preds = %bb.do, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !998
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i.i", %bb.dj, %._crit_edge138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !991
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @188, i64 noundef 5)
          to label %bb.dp unwind label %.body.thread35.i, !noalias !991

bb.dp:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !1000
  %i.oe = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40, !noalias !1000 ; 5 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.dr, label %bb.dt, !prof !17

bb.dq:                                            ; preds = %bb.dr
  %i.og = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %.sroa.910.0..sroa_idx) #43
  br label %.body.thread.i

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1000
  store ptr @130, ptr %i.l, align 8, !noalias !1000
  %i.oh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.oh, align 8, !noalias !1000
  %i.oi = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.oi, align 8, !noalias !1000
  %i.oj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.oj, align 8, !noalias !1000
  %i.ok = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.ok, align 8, !noalias !1000
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.ds unwind label %bb.dq, !noalias !1000

bb.ds:                                            ; preds = %bb.dr
  unreachable

bb.dt:                                            ; preds = %bb.dp
  store i64 1, ptr %i.oe, align 8, !noalias !1000
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i32 -1, ptr %i.ol, align 8, !noalias !1000
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.om, ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.910.0..sroa_idx, i64 56, i1 false)
  %i.on = invoke fastcc ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h92220eef6c75b625E"(ptr noalias noundef align 8 dereferenceable(72) %i.w, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.u, ptr noundef nonnull %i.oe)
          to label %._crit_edge136 unwind label %.body.thread35.i ; 5 uses

._crit_edge136:                                   ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !991
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit21.i", label %bb.du

bb.du:                                            ; preds = %._crit_edge136
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = and i64 %i.op, 3
  %..i.i.i16.i = call i64 @llvm.umin.i64(i64 %i.oq, i64 2)
  switch i64 %..i.i.i16.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit21.i" [
    i64 2, label %bb.dv
    i64 0, label %bb.dw
  ], !prof !16

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc18.i unwind label %.body.thread35.i, !noalias !991

.noexc18.i:                                       ; preds = %bb.dv
  unreachable

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1001
  store ptr %i.on, ptr %i.k, align 8, !noalias !1001
  %i.or = load i64, ptr %i.on, align 8, !noalias !1002, !noundef !11 ; 3 uses
  %i.os = and i64 %i.or, 72057594037927935
  %i.ot = add nsw i64 %i.os, -1                   ; 3 uses
  %i.ou = and i64 %i.or, 1080863910568919040
  %i.ov = icmp ult i64 %i.or, 864691128455135232
  call void @llvm.assume(i1 %i.ov)
  %i.ow = or i64 %i.ot, %i.ou
  store i64 %i.ow, ptr %i.on, align 8, !noalias !1002
  %i.ox = icmp ugt i64 %i.ot, 72057594037927935
  br i1 %i.ox, label %bb.dy, label %bb.dx, !prof !17

bb.dx:                                            ; preds = %bb.dw
  %i.oy = icmp eq i64 %i.ot, 0
  br i1 %i.oy, label %bb.dz, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i17.i"

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1002
  store ptr @746, ptr %i.j, align 8, !noalias !1002
  %i.oz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.oz, align 8, !noalias !1002
  %i.pa = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.pa, align 8, !noalias !1002
  %i.pb = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.pb, align 8, !noalias !1002
  %i.pc = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.pc, align 8, !noalias !1002
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc19.i unwind label %.body.thread35.i, !noalias !991

.noexc19.i:                                       ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.dx
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
end_hunk_2
begin_hunk_3_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a0cb47b911d73e3E":bb.a
  %i.hv = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.hv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i.i.i", label %.lr.ph393

bb.cj:                                            ; preds = %.lr.ph393
  %i.hw = icmp eq i64 %i.hy, %.val1.i.i.i
  br i1 %i.hw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i.i.i", label %.lr.ph393

.lr.ph393:                                        ; preds = %bb.ci, %bb.cj
  %.sroa.0.0.i.i.i.i.i392 = phi i64 [ %i.hy, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i.i392
  %i.hy = add i64 %.sroa.0.0.i.i.i.i.i392, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h600ec85b63b96106E"(ptr noalias noundef align 8 dereferenceable(160) %i.hx)
          to label %bb.cj unwind label %bb.cl, !noalias !1893

bb.ck:                                            ; preds = %.lr.ph395
  %i.hz = add i64 %.sroa.0.1.i.i.i.i.i394, 1      ; 2 uses
  %i.ia = icmp eq i64 %i.hz, %.val1.i.i.i
  br i1 %i.ia, label %.body.i2.i.i, label %.lr.ph395

bb.cl:                                            ; preds = %.lr.ph393
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ic = icmp eq i64 %i.hy, %.val1.i.i.i
  br i1 %i.ic, label %.body.i2.i.i, label %.lr.ph395

.lr.ph395:                                        ; preds = %bb.cl, %bb.ck
  %.sroa.0.1.i.i.i.i.i394 = phi i64 [ %i.hz, %bb.ck ], [ %i.hy, %bb.cl ] ; 2 uses
  %i.id = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i394
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h600ec85b63b96106E"(ptr noalias noundef align 8 dereferenceable(160) %i.id) #43
          to label %bb.ck unwind label %bb.cm, !noalias !1893

bb.cm:                                            ; preds = %.lr.ph395
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !1893
  unreachable

.body.i2.i.i:                                     ; preds = %bb.ck, %bb.cl
  %.val4.i.i.i = load i64, ptr %i.ax, align 8, !range !34, !alias.scope !1892, !noalias !1832, !noundef !11 ; 2 uses
  %i.if = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.if, label %.body.i.i, label %bb.cn

bb.cn:                                            ; preds = %.body.i2.i.i
  %i.ig = mul nuw i64 %.val4.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ig, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1893
  br label %.body.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i.i.i": ; preds = %bb.cj, %bb.ci
  %.val2.i.i.i = load i64, ptr %i.ax, align 8, !range !34, !alias.scope !1892, !noalias !1832, !noundef !11 ; 2 uses
  %i.ih = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ih, label %common.resume.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i.i.i"
  %i.ii = mul nuw i64 %.val2.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !1893
  br label %common.resume.i.i.i.i

.thread145.i.i.i.i.i:                             ; preds = %bb.ae, %bb.ab
  %.sroa.028.1.lpad-body.i.i.i.i.i = phi i1 [ %.sroa.028.1.i.i.i.i.i, %bb.ab ], [ false, %bb.ae ]
  %eh.lpad-body51.i.i.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.ab ], [ %i.dd, %bb.ae ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hd4c8d61ef97f7f62E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ah) #43
          to label %bb.cp unwind label %bb.aa, !noalias !1833

.critedge.i.i.i.i.i:                              ; preds = %bb.cp
  br i1 %.sroa.028.1.lpad-body.i.i.i.i.i, label %bb.cq, label %.critedge42.thread.i.i.i.i.i

bb.cp:                                            ; preds = %.thread145.i.i.i.i.i
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #43
          to label %.critedge.i.i.i.i.i unwind label %bb.aa, !noalias !1832

bb.cq:                                            ; preds = %.critedge.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hd4c8d61ef97f7f62E"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i) #43
          to label %bb.cr unwind label %bb.aa, !noalias !1833

bb.cr:                                            ; preds = %bb.cq
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #43
          to label %.critedge42.thread.i.i.i.i.i unwind label %bb.aa, !noalias !1832

.noexc94.i.i.i.i.i:                               ; preds = %bb.ct, %bb.cs, %.critedge42.thread.i.i.i.i.i
  br i1 %.sroa.09.1138.i.i.i.i.i, label %.thread178.i.i.i.i.i, label %.thread188.i.i.i.i.i

.critedge42.thread.i.i.i.i.i:                     ; preds = %bb.cr, %.critedge.i.i.i.i.i, %.body68.i.i.i.i.i, %.critedge42.i.i.i.i.i
  %.pn.pn140.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i, %.critedge42.i.i.i.i.i ], [ %eh.lpad-body51.i.i.i.i.i, %bb.cr ], [ %eh.lpad-body51.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %eh.lpad-body69.i.i.i.i.i, %.body68.i.i.i.i.i ] ; 2 uses
  %.sroa.09.1138.i.i.i.i.i = phi i1 [ true, %.critedge42.i.i.i.i.i ], [ false, %bb.cr ], [ false, %.critedge.i.i.i.i.i ], [ false, %.body68.i.i.i.i.i ]
  %.sroa.016.2136.i.i.i.i.i = phi i8 [ %.sroa.016.2.i.i.i.i.i, %.critedge42.i.i.i.i.i ], [ 1, %bb.cr ], [ 1, %.critedge.i.i.i.i.i ], [ 1, %.body68.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  %i.ij = load ptr, ptr %i.as, align 8, !alias.scope !1896, !noalias !1832, !noundef !11 ; 3 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %.noexc94.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.critedge42.thread.i.i.i.i.i
  %i.il = load i64, ptr %i.ij, align 8, !noalias !1897, !noundef !11
  %i.im = add i64 %i.il, -1                       ; 2 uses
  store i64 %i.im, ptr %i.ij, align 8, !noalias !1897
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.ct, label %.noexc94.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %.noexc94.i.i.i.i.i unwind label %bb.aa, !noalias !1832

bb.cu:                                            ; preds = %.thread178.i.i.i.i.i
  %i.io = load ptr, ptr %i.ag, align 8, !noalias !1832, !noundef !11
  %.not205.i.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not205.i.i.i.i.i, label %.thread188.i.i.i.i.i, label %bb.cv

.thread178.i.i.i.i.i:                             ; preds = %.noexc94.i.i.i.i.i, %.critedge42.i.i.i.i.i
  %.sroa.016.2135187.i.i.i.i.i = phi i8 [ %.sroa.016.2136.i.i.i.i.i, %.noexc94.i.i.i.i.i ], [ %.sroa.016.2.i.i.i.i.i, %.critedge42.i.i.i.i.i ] ; 2 uses
  %.pn.pn139183.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn140.i.i.i.i.i, %.noexc94.i.i.i.i.i ], [ %.pn.pn.i.i.i.i.i, %.critedge42.i.i.i.i.i ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hd4c8d61ef97f7f62E"(ptr noalias noundef align 8 dereferenceable(24) %i.w) #43
          to label %bb.cu unwind label %bb.aa, !noalias !1832

.thread188.i.i.i.i.i:                             ; preds = %bb.cv, %bb.cu, %.noexc94.i.i.i.i.i
  %.pn.pn139182195.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn139183.i.i.i.i.i, %bb.cu ], [ %.pn.pn139183.i.i.i.i.i, %bb.cv ], [ %.pn.pn140.i.i.i.i.i, %.noexc94.i.i.i.i.i ] ; 2 uses
  %.sroa.09.1137184194.i.i.i.i.i = phi i1 [ true, %bb.cu ], [ true, %bb.cv ], [ false, %.noexc94.i.i.i.i.i ]
  %.sroa.016.2135186193.i.i.i.i.i = phi i8 [ %.sroa.016.2135187.i.i.i.i.i, %bb.cu ], [ %.sroa.016.2135187.i.i.i.i.i, %bb.cv ], [ %.sroa.016.2136.i.i.i.i.i, %.noexc94.i.i.i.i.i ]
  %i.ip = trunc nuw i8 %.sroa.016.2135186193.i.i.i.i.i to i1
  br i1 %i.ip, label %bb.cw, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit97.i.i.i.i.i"

bb.cv:                                            ; preds = %bb.cu
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #43
          to label %.thread188.i.i.i.i.i unwind label %bb.aa, !noalias !1832

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit97.i.i.i.i.i": ; preds = %bb.cy, %bb.cx, %bb.cw, %.thread188.i.i.i.i.i
  br i1 %.sroa.09.1137184194.i.i.i.i.i, label %bb.cz, label %common.resume.i.i.i.i

bb.cw:                                            ; preds = %.thread188.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  %i.iq = load ptr, ptr %i.aq, align 8, !alias.scope !1900, !noalias !1832, !noundef !11 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit97.i.i.i.i.i", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.is = load i64, ptr %i.iq, align 8, !noalias !1901, !noundef !11
  %i.it = add i64 %i.is, -1                       ; 2 uses
  store i64 %i.it, ptr %i.iq, align 8, !noalias !1901
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %bb.cy, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit97.i.i.i.i.i"

bb.cy:                                            ; preds = %bb.cx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit97.i.i.i.i.i" unwind label %bb.aa, !noalias !1832

bb.cz:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit97.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hd4c8d61ef97f7f62E"(ptr noalias noundef align 8 dereferenceable(24) %i.ax) #43
          to label %common.resume.i.i.i.i unwind label %bb.aa, !noalias !1832

"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17hedb696ed9ac2f9d6E.exit.i.i.i.i": ; preds = %bb.bx, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i89.i.i.i.i.i", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit81.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1832
  br i1 %.sroa.0.2.i.i.i.i, label %bb.da, label %bb.de

bb.da:                                            ; preds = %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17hedb696ed9ac2f9d6E.exit.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2.i.i.i.i) ]
  %i.iv = icmp eq ptr %.sroa.6.2.i.i.i.i, null
  br i1 %i.iv, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1820, !noalias !1903, !align !18, !noundef !11 ; 4 uses
  %i.iw = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.iw, label %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h213c1803373530a5E.exit.i.i.i.i.i", label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %.val.i.i.i.i.i)
          to label %"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17h71ed835ec00701f5E.exit.i.i.i.i.i.i" unwind label %.body.i4.i.i.i.i, !noalias !1904

.body.i4.i.i.i.i:                                 ; preds = %bb.dc
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 392, i64 noundef 8) #40, !noalias !1904
  store ptr %.sroa.9.2.i.i.i.i, ptr %i.z, align 8, !alias.scope !1820, !noalias !1903
  br label %common.resume.i.i.i.i

"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17h71ed835ec00701f5E.exit.i.i.i.i.i.i": ; preds = %bb.dc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 392, i64 noundef 8) #40, !noalias !1904
  br label %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h213c1803373530a5E.exit.i.i.i.i.i"

bb.dd:                                            ; preds = %bb.da
  store ptr %.sroa.6.2.i.i.i.i, ptr %.sroa.4.i.i.i, align 8, !alias.scope !1905, !noalias !1906
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h440995b95f8802b1E.exit"

"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h213c1803373530a5E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17h71ed835ec00701f5E.exit.i.i.i.i.i.i", %bb.db
  store ptr %.sroa.9.2.i.i.i.i, ptr %i.z, align 8, !alias.scope !1820, !noalias !1903
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h440995b95f8802b1E.exit"

bb.de:                                            ; preds = %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17hedb696ed9ac2f9d6E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1828
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i.i)
  %i.iy = icmp eq ptr %i.bd, %i.ad
  br i1 %i.iy, label %"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hfefcc35c8a17b2abE.exit", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h440995b95f8802b1E.exit": ; preds = %bb.dd, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h213c1803373530a5E.exit.i.i.i.i.i"
  %.sink4.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.75.i.i.i, %bb.dd ], [ %.sroa.4.i.i.i, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h213c1803373530a5E.exit.i.i.i.i.i" ]
  %.8.val1.sink.i.i.i.i.i = phi ptr [ %.sroa.9.2.i.i.i.i, %bb.dd ], [ null, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h213c1803373530a5E.exit.i.i.i.i.i" ]
  store ptr %.8.val1.sink.i.i.i.i.i, ptr %.sink4.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1905, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1828
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i = load ptr, ptr %.sroa.4.i.i.i, align 8, !alias.scope !1907, !noalias !1908, !noundef !11
  %.sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.0..sroa.75.i.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i.i.i = load ptr, ptr %.sroa.75.i.i.i, align 8, !alias.scope !1907, !noalias !1908
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i.i)
  %i.iz = insertvalue { ptr, ptr } poison, ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, 0
  br label %"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hfefcc35c8a17b2abE.exit"

"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hfefcc35c8a17b2abE.exit": ; preds = %bb.de, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h440995b95f8802b1E.exit", %bb.a
  %.7 = phi ptr [ %.sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.0..sroa.75.i.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h440995b95f8802b1E.exit" ], [ undef, %bb.a ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i" ], [ undef, %bb.de ]
  %i.ja = phi { ptr, ptr } [ %i.iz, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h440995b95f8802b1E.exit" ], [ { ptr null, ptr poison }, %bb.a ], [ { ptr null, ptr poison }, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i" ], [ { ptr null, ptr poison }, %bb.de ]
  %i.jb = insertvalue { ptr, ptr } %i.ja, ptr %.7, 1
  ret { ptr, ptr } %i.jb
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, ptr } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8777de615c4fe7f7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2004, !nonnull !11, !align !18, !noundef !11 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2011, !noalias !2012, !noundef !11 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %.loopexit69.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2016, !noalias !2017, !nonnull !11, !noundef !11 ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.loopexit69.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %bb.g
  %i.k = phi ptr [ %i.l, %bb.g ], [ %i.g, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8, !alias.scope !2016, !noalias !2017
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2018
  call fastcc void @"_ZN16nickel_lang_core4term6record10RecordData17iter_without_opts28_$u7b$$u7b$closure$u7d$$u7d$17hcbea3562b7c51e3dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k), !noalias !2019
  %i.n = load i64, ptr %i.c, align 8, !range !25, !noalias !2018, !noundef !11
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !2018 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2018 ; 2 uses
  %i.q = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, null
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i) ]
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2020, !noalias !2021, !align !18, !noundef !11 ; 4 uses
  %i.r = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.r, label %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17h86781ed49489a946E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %.val.i.i.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7e60810c49bd95a9E.exit.i.i.i.i.i.i.i.i.i.i.i" unwind label %.body.i.i.i.i.i.i.i.i.i.i, !noalias !2022

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i.i.i16.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i15.sink.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i15.i.i.i.i, %.body.i.i.i.i.i.i16.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i10.sink.i.i.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.i.i10.i.i.i.i, %.body.i.i.i.i.i.i16.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ]
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.az, %.body.i.i.i.i.i.i16.i.i.i.i ], [ %i.ak, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %.body.i.i.i.i.i.i.i.i.i.i ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i15.sink.i.i.i.i, i64 noundef 384, i64 noundef 8) #40, !noalias !2023
  store ptr %.sroa.01.0.copyload.i.i.i.i10.sink.i.i.i.i, ptr %i.e, align 8, !alias.scope !2020, !noalias !2024
  resume { ptr, i32 } %common.resume.op.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7e60810c49bd95a9E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef 384, i64 noundef 8) #40, !noalias !2022
  br label %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i to i64
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i = trunc i64 %i.t to i32
  br label %bb.h

"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7e60810c49bd95a9E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.d
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !2020, !noalias !2021
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2018
  %i.u = icmp eq ptr %i.l, %i.i
  br i1 %i.u, label %.loopexit69.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i", %bb.f
  %.sroa.4.1.ph.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i, %bb.f ], [ undef, %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2018
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1ea7fcd363c97127E.exit"

.loopexit69.i.i.i.i:                              ; preds = %bb.g, %bb.b, %bb.a
  store ptr null, ptr %i.f, align 8, !alias.scope !2011, !noalias !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  %i.v = load i64, ptr %0, align 8, !range !25, !alias.scope !2027, !noalias !2028, !noundef !11
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.loopexit69.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2031, !noalias !2032 ; 3 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2031, !noalias !2032 ; 4 uses
  store ptr null, ptr %i.x, align 8, !alias.scope !2031, !noalias !2032
  %.not20.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i, null
  br i1 %.not20.i.i.i.i.i.i, label %bb.o, label %.lr.ph.split.us.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !2033, !noalias !2034
  store ptr %.promoted.i.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !2033, !noalias !2034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  %i.ab = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.z
  br i1 %i.ab, label %.loopexit.us.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.us.i.i.i.i.i.i

.lr.ph.i.i.i.i.us.i.i.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %bb.j
  %i.ac = phi ptr [ %i.ad, %bb.j ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 3 uses
  store ptr %i.ad, ptr %i.f, align 8, !alias.scope !2038, !noalias !2039
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2040
  call fastcc void @"_ZN16nickel_lang_core4term6record10RecordData17iter_without_opts28_$u7b$$u7b$closure$u7d$$u7d$17hcbea3562b7c51e3dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac), !noalias !2041
  %i.af = load i64, ptr %i.b, align 8, !range !25, !noalias !2040, !noundef !11
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %.split.us.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2040
  %i.ah = icmp eq ptr %i.ad, %i.z
  br i1 %i.ah, label %.loopexit.us.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.us.i.i.i.i.i.i

.loopexit.us.i.i.i.i.i.i:                         ; preds = %bb.j, %.lr.ph.split.us.i.i.i.i.i.i
  store ptr null, ptr %i.x, align 8, !alias.scope !2031, !noalias !2032
  br label %bb.o

.split.us.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !2040 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !2040 ; 2 uses
  %i.ai = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i, null
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.split.us.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i) ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2020, !noalias !2042, !align !18, !noundef !11 ; 4 uses
  %i.aj = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.aj, label %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17h86781ed49489a946E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7e60810c49bd95a9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2043

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7e60810c49bd95a9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 384, i64 noundef 8) #40, !noalias !2043
  br label %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %.split.us.i.i.i.i.i.i
  %i.al = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i to i64
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.al to i32
  br label %bb.n

"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h7e60810c49bd95a9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.pre.i.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !2020, !noalias !2042
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.m
  %.sroa.4.1.ph.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ undef, %"_ZN4core3ptr186drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$$GT$17h0532cb46aafb8f72E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2040
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1ea7fcd363c97127E.exit"

bb.o:                                             ; preds = %.loopexit.us.i.i.i.i.i.i, %bb.i, %.loopexit69.i.i.i.i
  store ptr null, ptr %i.f, align 8, !alias.scope !2011, !noalias !2012
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !2011, !noalias !2012, !noundef !11 ; 3 uses
  %.not2.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not2.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1ea7fcd363c97127E.exit.thread", label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn17h515314caca87f827E":bb.a
  %i.aik = trunc nuw i8 %.sroa.0265.0 to i1
  br i1 %i.aik, label %.body892.thread, label %bb.mh

bb.mr:                                            ; preds = %bb.ow, %bb.ov, %bb.os, %bb.nw, %bb.nv, %bb.mp, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895.thread"
  %.sroa.0265.1 = phi i8 [ 1, %bb.nw ], [ %.sroa.0265.5, %bb.ow ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895.thread" ], [ 1, %bb.mp ], [ %.sroa.0265.5, %bb.ov ], [ 1, %bb.nv ], [ %.sroa.0265.5, %bb.os ]
  %i.ail = landingpad { ptr, i32 }
          cleanup
  br label %.body892

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit894": ; preds = %bb.mo, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i889", %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.experimental.noalias.scope.decl(metadata !15237)
  %i.aim = icmp eq i64 %.sroa.572.0.copyload, 1
  br i1 %i.aim, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895": ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit894"
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 64 ; 2 uses
  store ptr %i.ain, ptr %i.gl, align 8, !alias.scope !15237, !noalias !15238
  %.sroa.076.0.copyload77 = load ptr, ptr %i.ahp, align 8, !noalias !15237 ; 14 uses
  %.not405 = icmp eq ptr %.sroa.076.0.copyload77, null
  br i1 %.not405, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895.thread", label %bb.ms, !prof !26

bb.ms:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895"
  %.sroa.678.0..sroa.4.0.copyload.i59468.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 40
  store ptr %.sroa.076.0.copyload77, ptr %i.dq, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.678.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.678.0..sroa.4.0.copyload.i59468.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store ptr %.sroa.076.0.copyload77, ptr %i.dr, align 8
  %i.aio = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.aip = load i32, ptr %i.aio, align 8, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !15239)
  call void @llvm.experimental.noalias.scope.decl(metadata !15240)
  call void @llvm.experimental.noalias.scope.decl(metadata !15241)
  %i.aiq = load ptr, ptr %.sroa.678.0..sroa_idx, align 8, !alias.scope !15242, !nonnull !11, !noundef !11 ; 2 uses
  %i.air = load i64, ptr %i.aiq, align 8, !noalias !15242, !noundef !11
  %i.ais = add i64 %i.air, -1                     ; 2 uses
  store i64 %i.ais, ptr %i.aiq, align 8, !noalias !15242
  %i.ait = icmp eq i64 %i.ais, 0
  br i1 %i.ait, label %bb.mt, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i896"

bb.mt:                                            ; preds = %bb.ms
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.678.0..sroa_idx)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i896" unwind label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.aiu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15243)
  %i.aiw = load ptr, ptr %i.aiv, align 8, !alias.scope !15244, !noundef !11 ; 3 uses
  %i.aix = icmp eq ptr %i.aiw, null
  br i1 %i.aix, label %.body899.thread, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.aiy = load i64, ptr %i.aiw, align 8, !noalias !15245, !noundef !11
  %i.aiz = add i64 %i.aiy, -1                     ; 2 uses
  store i64 %i.aiz, ptr %i.aiw, align 8, !noalias !15245
  %i.aja = icmp eq i64 %i.aiz, 0
  br i1 %i.aja, label %bb.mw, label %.body899.thread

bb.mw:                                            ; preds = %bb.mv
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aiv)
          to label %.body899.thread unwind label %bb.mz

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i896": ; preds = %bb.mt, %bb.ms
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15246)
  %i.ajc = load ptr, ptr %i.ajb, align 8, !alias.scope !15247, !noundef !11 ; 3 uses
  %i.ajd = icmp eq ptr %i.ajc, null
  br i1 %i.ajd, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit901", label %bb.mx

bb.mx:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i896"
  %i.aje = load i64, ptr %i.ajc, align 8, !noalias !15248, !noundef !11
  %i.ajf = add i64 %i.aje, -1                     ; 2 uses
  store i64 %i.ajf, ptr %i.ajc, align 8, !noalias !15248
  %i.ajg = icmp eq i64 %i.ajf, 0
  br i1 %i.ajg, label %bb.my, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit901"

bb.my:                                            ; preds = %bb.mx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ajb)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit901" unwind label %bb.na

bb.mz:                                            ; preds = %bb.mw
  %i.ajh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895.thread": ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit894", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit895"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #41
          to label %bb.s unwind label %bb.mr

.body899:                                         ; preds = %bb.na, %bb.pe, %.body939
  %.sroa.0265.2 = phi i8 [ %.sroa.0265.6, %.body939 ], [ %.sroa.0265.6520, %bb.pe ], [ %.sroa.0265.3, %bb.na ] ; 2 uses
  %.sroa.0263.0 = phi i8 [ %.sroa.0263.4, %.body939 ], [ %.sroa.0263.4521, %bb.pe ], [ %.sroa.0263.1, %bb.na ]
  %.pn416 = phi { ptr, i32 } [ %.pn414, %.body939 ], [ %.pn414522, %bb.pe ], [ %i.ajj, %bb.na ] ; 2 uses
  %i.aji = trunc nuw i8 %.sroa.0263.0 to i1
  br i1 %i.aji, label %.body899.thread, label %.body892

bb.na:                                            ; preds = %bb.oq, %bb.op, %bb.om, %bb.ns, %bb.nr, %bb.no, %bb.my, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902.thread"
  %.sroa.0265.3 = phi i8 [ 1, %bb.ns ], [ %.sroa.0265.5, %bb.oq ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902.thread" ], [ 1, %bb.my ], [ 1, %bb.no ], [ 1, %bb.nr ], [ %.sroa.0265.5, %bb.om ], [ %.sroa.0265.5, %bb.op ]
  %.sroa.0263.1 = phi i8 [ 1, %bb.ns ], [ %.sroa.0263.3, %bb.oq ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902.thread" ], [ 1, %bb.my ], [ 1, %bb.no ], [ 1, %bb.nr ], [ %.sroa.0263.3, %bb.om ], [ %.sroa.0263.3, %bb.op ]
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  br label %.body899

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit901": ; preds = %bb.mx, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i896", %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.experimental.noalias.scope.decl(metadata !15249)
  %i.ajk = icmp eq i64 %.sroa.572.0.copyload, 2
  br i1 %i.ajk, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902": ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit901"
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 96
  store ptr %i.ajl, ptr %i.gl, align 8, !alias.scope !15249, !noalias !15250
  %.sroa.079.0.copyload = load ptr, ptr %i.ain, align 8, !noalias !15249 ; 11 uses
  %.sroa.782.0..sroa.4.0.copyload.i59469.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 88
  %.sroa.782.0.copyload = load i32, ptr %.sroa.782.0..sroa.4.0.copyload.i59469.sroa_idx, align 8, !noalias !15249
  %.not406 = icmp eq ptr %.sroa.079.0.copyload, null
  br i1 %.not406, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902.thread", label %bb.nb, !prof !26

bb.nb:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902"
  %.sroa.580.0..sroa.4.0.copyload.i59469.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store ptr %.sroa.079.0.copyload, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.ajn = load <2 x ptr>, ptr %.sroa.580.0..sroa.4.0.copyload.i59469.sroa_idx, align 8, !noalias !15249
  store <2 x ptr> %i.ajn, ptr %i.do, align 16
  %i.ajo = ptrtoint ptr %.sroa.073.0.copyload74 to i64
  %i.ajp = and i64 %i.ajo, 3
  %..i903 = call i64 @llvm.umin.i64(i64 %i.ajp, i64 2) ; 2 uses
  switch i64 %..i903, label %bb.ne [
    i64 2, label %.invoke802
    i64 0, label %bb.nc
  ], !prof !16

bb.nc:                                            ; preds = %bb.nb
  %i.ajq = load i64, ptr %.sroa.073.0.copyload74, align 8, !noundef !11 ; 2 uses
  %i.ajr = icmp ult i64 %i.ajq, 864691128455135232
  call void @llvm.assume(i1 %i.ajr)
  %.mask.i904 = and i64 %i.ajq, 1080863910568919040
  %i.ajs = icmp eq i64 %.mask.i904, 648518346341351424
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.073.0.copyload74, i64 16
  br i1 %i.ajs, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hfd1d10cbd6033c39E.exit908, label %bb.ne

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902.thread": ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit901", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdf51712467564160E.exit902"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #41
          to label %bb.s unwind label %bb.na

.thread515:                                       ; preds = %bb.nl
  %lpad.thr_comm.split-lp483 = landingpad { ptr, i32 }
          cleanup
  br label %bb.pe

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hfd1d10cbd6033c39E.exit908: ; preds = %bb.nc
  %i.aju = ptrtoint ptr %.sroa.076.0.copyload77 to i64
  %i.ajv = and i64 %i.aju, 3
  %..i909 = call i64 @llvm.umin.i64(i64 %i.ajv, i64 2)
  switch i64 %..i909, label %bb.nf [
    i64 2, label %.invoke802
    i64 0, label %bb.nd
  ], !prof !16

.invoke802:                                       ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hfd1d10cbd6033c39E.exit908, %bb.nb
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.cont803 unwind label %bb.pd

.cont803:                                         ; preds = %.invoke802
  unreachable

bb.nd:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hfd1d10cbd6033c39E.exit908
  %i.ajw = load i64, ptr %.sroa.076.0.copyload77, align 8, !noundef !11 ; 2 uses
  %i.ajx = icmp ult i64 %i.ajw, 864691128455135232
  call void @llvm.assume(i1 %i.ajx)
  %.mask.i910 = and i64 %i.ajw, 1080863910568919040
  %i.ajy = icmp eq i64 %.mask.i910, 432345564227567616
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.076.0.copyload77, i64 16
  br i1 %i.ajy, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hbf6e968b43ef2526E.exit914, label %bb.nf

bb.ne:                                            ; preds = %bb.nc, %bb.nb
  invoke fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hbb08a286ed159c0fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr %i.fk, ptr nonnull %i.fj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 10, i64 noundef 1, i32 noundef %i.ahr, ptr noundef nonnull %.sroa.073.0.copyload74)
          to label %bb.oc unwind label %bb.pd

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hbf6e968b43ef2526E.exit914: ; preds = %bb.nd
  %i.aka = invoke { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue9as_record17h694af076ba4246c4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dp)
          to label %bb.ng unwind label %bb.pd     ; 2 uses

bb.nf:                                            ; preds = %bb.nd, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hfd1d10cbd6033c39E.exit908
  invoke fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hbb08a286ed159c0fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr %i.fk, ptr nonnull %i.fj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @156, i64 noundef 5, i64 noundef 2, i32 noundef %i.aip, ptr noundef nonnull %.sroa.076.0.copyload77)
          to label %bb.oc unwind label %bb.pd

bb.ng:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hbf6e968b43ef2526E.exit914
  %i.akb = extractvalue { i64, ptr } %i.aka, 0
  %i.akc = extractvalue { i64, ptr } %i.aka, 1    ; 2 uses
  %i.akd = trunc nuw i64 %i.akb to i1
  br i1 %i.akd, label %bb.nh, label %2

bb.nh:                                            ; preds = %bb.ng
  %.not409 = icmp eq ptr %i.akc, null
  br i1 %.not409, label %.thread502, label %bb.ni

2:                                                ; preds = %bb.ng
  invoke fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hbb08a286ed159c0fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr %i.fk, ptr nonnull %i.fj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @165, i64 noundef 6, i64 noundef 3, i32 noundef %.sroa.782.0.copyload, ptr noundef nonnull %.sroa.079.0.copyload)
          to label %bb.oc unwind label %bb.pd

bb.ni:                                            ; preds = %bb.nh
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 72
  %i.akf = load ptr, ptr %i.ake, align 8, !noundef !11 ; 3 uses
  %.not411 = icmp eq ptr %i.akf, null
  br i1 %.not411, label %.thread502, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.akg = load i32, ptr %i.ajt, align 8, !noundef !11
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 200
  %i.aki = load i32, ptr %i.akh, align 8, !noundef !11
  %i.akj = icmp eq i32 %i.akg, %i.aki
  br i1 %i.akj, label %bb.nk, label %.thread502

bb.nk:                                            ; preds = %bb.nj
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akf, i64 192
  %.val = load ptr, ptr %i.akk, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.akl = invoke fastcc noundef nonnull ptr @"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E"(ptr nonnull %.val)
          to label %bb.nm unwind label %bb.pd     ; 0 uses

.thread502:                                       ; preds = %bb.ni, %bb.nh, %bb.nj
  %i.akm = invoke fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h164c4c855afd21aaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ajz)
          to label %bb.nl unwind label %bb.pd

bb.nl:                                            ; preds = %.thread502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  %i.akn = load <2 x ptr>, ptr %i.do, align 16
  store <2 x ptr> %i.akn, ptr %i.dn, align 16
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.akm, ptr %i.ako, align 8
  store ptr null, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr239drop_in_place$LT$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_opn..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3dce526789786113E"(ptr noalias noundef align 8 dereferenceable(16) %i.dn)
          to label %bb.nn unwind label %.thread515

bb.nm:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store ptr %.val, ptr %0, align 8
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
  ], !prof !16

bb.no:                                            ; preds = %bb.nn
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc918 unwind label %bb.na

.noexc918:                                        ; preds = %bb.no
  unreachable

bb.np:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !15251
  store ptr %.sroa.079.0.copyload, ptr %i.ae, align 8, !noalias !15251
  %i.aks = load i64, ptr %.sroa.079.0.copyload, align 8, !noalias !15252, !noundef !11 ; 3 uses
  %i.akt = and i64 %i.aks, 72057594037927935
  %i.aku = add nsw i64 %i.akt, -1                 ; 3 uses
  %i.akv = and i64 %i.aks, 1080863910568919040
  %i.akw = icmp ult i64 %i.aks, 864691128455135232
  call void @llvm.assume(i1 %i.akw)
  %i.akx = or i64 %i.aku, %i.akv
  store i64 %i.akx, ptr %.sroa.079.0.copyload, align 8, !noalias !15252
  %i.aky = icmp ugt i64 %i.aku, 72057594037927935
  br i1 %i.aky, label %bb.nr, label %bb.nq, !prof !17

bb.nq:                                            ; preds = %bb.np
  %i.akz = icmp eq i64 %i.aku, 0
  br i1 %i.akz, label %bb.ns, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i917"

bb.nr:                                            ; preds = %bb.np
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !15252
  store ptr @746, ptr %i.ad, align 8, !noalias !15252
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.ala, align 8, !noalias !15252
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr null, ptr %i.alb, align 8, !noalias !15252
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.alc, align 8, !noalias !15252
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.ald, align 8, !noalias !15252
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc919 unwind label %bb.na

.noexc919:                                        ; preds = %bb.nr
  unreachable

bb.ns:                                            ; preds = %bb.nq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i917" unwind label %bb.na

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i917": ; preds = %bb.ns, %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15251
  br label %bb.nt

bb.nt:                                            ; preds = %bb.nn, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i917"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15253
  store ptr %.sroa.076.0.copyload77, ptr %i.ac, align 8, !noalias !15253
  %i.ale = load i64, ptr %.sroa.076.0.copyload77, align 8, !noalias !15254, !noundef !11 ; 3 uses
  %i.alf = and i64 %i.ale, 72057594037927935
  %i.alg = add nsw i64 %i.alf, -1                 ; 3 uses
  %i.alh = and i64 %i.ale, 1080863910568919040
  %i.ali = icmp ult i64 %i.ale, 864691128455135232
  call void @llvm.assume(i1 %i.ali)
  %i.alj = or i64 %i.alg, %i.alh
  store i64 %i.alj, ptr %.sroa.076.0.copyload77, align 8, !noalias !15254
  %i.alk = icmp ugt i64 %i.alg, 72057594037927935
  br i1 %i.alk, label %bb.nv, label %bb.nu, !prof !17

bb.nu:                                            ; preds = %bb.nt
  %i.all = icmp eq i64 %i.alg, 0
  br i1 %i.all, label %bb.nw, label %bb.nx

bb.nv:                                            ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15254
  store ptr @746, ptr %i.ab, align 8, !noalias !15254
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 1, ptr %i.alm, align 8, !noalias !15254
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr null, ptr %i.aln, align 8, !noalias !15254
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.alo, align 8, !noalias !15254
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %i.alp, align 8, !noalias !15254
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc926 unwind label %bb.mr

.noexc926:                                        ; preds = %bb.nv
  unreachable

bb.nw:                                            ; preds = %bb.nu
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.nx unwind label %bb.mr

bb.nx:                                            ; preds = %bb.nu, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !15255
  store ptr %.sroa.073.0.copyload74, ptr %i.aa, align 8, !noalias !15255
  %i.alq = load i64, ptr %.sroa.073.0.copyload74, align 8, !noalias !15256, !noundef !11 ; 3 uses
  %i.alr = and i64 %i.alq, 72057594037927935
  %i.als = add nsw i64 %i.alr, -1                 ; 3 uses
  %i.alt = and i64 %i.alq, 1080863910568919040
  %i.alu = icmp ult i64 %i.alq, 864691128455135232
  call void @llvm.assume(i1 %i.alu)
  %i.alv = or i64 %i.als, %i.alt
  store i64 %i.alv, ptr %.sroa.073.0.copyload74, align 8, !noalias !15256
  %i.alw = icmp ugt i64 %i.als, 72057594037927935
  br i1 %i.alw, label %bb.nz, label %bb.ny, !prof !17

bb.ny:                                            ; preds = %bb.nx
  %i.alx = icmp eq i64 %i.als, 0
  br i1 %i.alx, label %bb.oa, label %bb.ob

bb.nz:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !15256
  br label %.invoke791

bb.oa:                                            ; preds = %bb.ny
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.ob unwind label %bb.mi

bb.ob:                                            ; preds = %bb.oa, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call fastcc void @"_ZN4core3ptr136drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$GT$17hef7c718d4524b05fE"(ptr noalias noundef align 8 dereferenceable(32) %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.tt

bb.oc:                                            ; preds = %bb.ne, %bb.nf, %2
  %.sroa.0265.5 = phi i8 [ 1, %bb.nf ], [ 1, %2 ], [ 0, %bb.ne ] ; 11 uses
  %.sroa.0263.3 = phi i8 [ 0, %bb.nf ], [ 1, %2 ], [ 1, %bb.ne ] ; 8 uses
  %.sroa.0261.1 = phi i8 [ 1, %bb.nf ], [ 0, %2 ], [ 1, %bb.ne ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15257)
  call void @llvm.experimental.noalias.scope.decl(metadata !15258)
  call void @llvm.experimental.noalias.scope.decl(metadata !15259)
  %i.aly = load ptr, ptr %i.do, align 16, !alias.scope !15260, !nonnull !11, !noundef !11 ; 2 uses
  %i.alz = load i64, ptr %i.aly, align 8, !noalias !15260, !noundef !11
  %i.ama = add i64 %i.alz, -1                     ; 2 uses
  store i64 %i.ama, ptr %i.aly, align 8, !noalias !15260
  %i.amb = icmp eq i64 %i.ama, 0
  br i1 %i.amb, label %bb.od, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i936"

bb.od:                                            ; preds = %bb.oc
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.do)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i936" unwind label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.amc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15261)
  %i.amd = load ptr, ptr %i.ajm, align 8, !alias.scope !15262, !noundef !11 ; 3 uses
end_hunk_4
begin_hunk_5_@"_ZN76_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..clone..Clone$GT$5clone17hdd3551ea46b2b5fbE":bb.a
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hcad49f42aa1deb9aE.exit: ; preds = %bb.f, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  store ptr %i.w, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.aa, align 8, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.ab, align 8, !noundef !11
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h585f44d6fbcf04ffE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val4, i64 %.val5)
          to label %bb.k unwind label %bb.h

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit": ; preds = %bb.i, %bb.h, %bb.j
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #43
          to label %bb.m unwind label %bb.l

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hcad49f42aa1deb9aE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br i1 %.not2, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.w, align 8, !noalias !24765, !noundef !11
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.w, align 8, !noalias !24765
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.j, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit"

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit" unwind label %bb.l

bb.k:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hcad49f42aa1deb9aE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.w, ptr %i.ah, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.l:                                             ; preds = %bb.j, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit"
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.m:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17hcc00de8639df78bdE.exit"
  resume { ptr, i32 } %i.ac
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
  %i.e = load i32, ptr %1, align 8, !range !70, !noundef !11
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
  %i.g = load i32, ptr %i.f, align 4, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load i64, ptr %i.i, align 8, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h524fcf8a90b444b6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr nonnull %.val10, i64 %.val11)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.k, align 4
  store i32 0, ptr %0, align 8
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val9 = load i64, ptr %i.o, align 8, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h524fcf8a90b444b6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr nonnull %.val, i64 %.val9)
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
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706)
          to label %bb.ae unwind label %bb.ad

bb.k:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val13 = load i64, ptr %i.t, align 8, !noundef !11 ; 5 uses
  %i.u = mul i64 %.val13, 20                      ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.val13, 461168601842738790
  br i1 %or.cond.i.i.i.i.i, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.k
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb740f8ff4b54027dE.exit", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24783
  %i.w = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 4) #40, !noalias !24783 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb740f8ff4b54027dE.exit"

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41, !noalias !24784
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb740f8ff4b54027dE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.l
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.w, %bb.l ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.val13, %bb.l ] ; 2 uses
  %i.y = icmp samesign ule i64 %.val13, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.y)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i, ptr nonnull readonly align 4 %.val12, i64 %i.u, i1 false), !noalias !24785
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
  %i.ac = load i32, ptr %i.ab, align 4, !range !32, !noundef !11
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
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706)
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
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706)
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
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  store i32 22, ptr %0, align 8
  br label %bb.ac

bb.aa:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706)
          to label %bb.ak unwind label %bb.aj

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb740f8ff4b54027dE.exit", %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.d, align 8, !range !34, !alias.scope !24786, !noundef !11 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i, 0
  br i1 %i.at, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit.sink.split"

bb.ae:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !32, !noundef !11
  %i.aw = trunc nuw i32 %i.av to i1
  br i1 %i.aw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.0.0 = phi i32 [ 1, %bb.af ], [ 0, %bb.ae ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0, ptr %i.az, align 4
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  store i32 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit.sink.split": ; preds = %bb.ad, %bb.aj
  %.sink20.sroa.phi = phi ptr [ %.sink20.sroa.gep, %bb.aj ], [ %.sink20.sroa.gep21, %bb.ad ]
  %.val.i.i14.sink = phi i64 [ %.val.i.i14, %bb.aj ], [ %.val.i.i, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.be, %bb.aj ], [ %i.as, %bb.ad ]
  %.val1.i.i15 = load ptr, ptr %.sink20.sroa.phi, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i15, i64 noundef %.val.i.i14.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !11
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit.sink.split", %bb.aj, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.be, %bb.aj ], [ %i.as, %bb.ad ], [ %.pn.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit.sink.split" ]
  resume { ptr, i32 } %.pn

bb.ah:                                            ; preds = %bb.n
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.55.0..sroa_idx, i64 12, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.n, %bb.ah
  %.sroa.03.0 = phi i32 [ 1, %bb.ah ], [ 0, %bb.n ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i64 28, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bc, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.03.0, ptr %i.bd, align 4
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.55.0..sroa_idx6, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55, i64 12, i1 false)
  store i32 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  br label %bb.ac

bb.aj:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i14 = load i64, ptr %i.b, align 8, !range !34, !alias.scope !24787, !noundef !11 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i14, 0
  br i1 %i.bf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit.sink.split"

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
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8061fa8af05b5d3dE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @707, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hef45812f4e007287E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @707, i64 noundef 11)
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
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [72 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [72 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [360 x i8], align 8              ; 4 uses
  %i.au = alloca [152 x i8], align 8              ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = load i64, ptr %1, align 8, !range !45, !noundef !11 ; 3 uses
  %i.ax = icmp ne i64 %i.aw, 20
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nsw i64 %i.aw, -19
  %i.az = icmp samesign ugt i64 %i.aw, 18
  %i.ba = select i1 %i.az, i64 %i.ay, i64 1
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink.i.sroa.gep123 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink.i.sroa.gep124 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sink.i.sroa.gep125 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sink.i.sroa.gep126 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink.i.sroa.gep127 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink.i.sroa.gep129 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sink.i.sroa.gep130 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sink.i.sroa.gep131 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sink.i.sroa.gep132 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sink.i.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sink.i.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sink.i.sroa.gep136 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sink.i.sroa.gep137 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sink.i.sroa.gep138 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sink.i.sroa.gep139 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sink.i.sroa.gep140 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink.i.sroa.gep141 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sink.i.sroa.gep143 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sink.i.sroa.gep144 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink.i.sroa.gep145 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sink.i.sroa.gep146 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sink.i.sroa.gep147 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sink.i.sroa.gep148 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  switch i64 %i.ba, label %bb.b [
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
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !11 ; 6 uses
  %.not8 = icmp eq ptr %i.bd, null
  br i1 %.not8, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit70", label %bb.cm

bb.d:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call fastcc void @"_ZN84_$LT$nickel_lang_core..term..record..FieldMetadata$u20$as$u20$core..clone..Clone$GT$5clone17hf594023765471878E"(ptr noalias noundef align 8 captures(address) dereferenceable(360) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(360) %1)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, ptr noundef nonnull align 8 dereferenceable(20) %i.be, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %i.at, i64 360, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bi = load <2 x i32>, ptr %i.bf, align 4
  store <2 x i32> %i.bi, ptr %i.bh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.cs

bb.e:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
          to label %bb.cw unwind label %bb.cv

bb.f:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
          to label %bb.de unwind label %bb.dd

bb.g:                                             ; preds = %bb.a
end_hunk_5
