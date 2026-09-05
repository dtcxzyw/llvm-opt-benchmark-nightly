Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.02?download=true
inline.NumInlined: 5944
inline.NumDeleted: 3301
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4anki13import_export4text6import7Context20import_foreign_notes17h582269a5dafb5ec3E:bb.a
  %.sroa.9.0..sroa_idx.i.i137 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.au, i64 168 ; 14 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.an, i64 112 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.fz = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ga = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.gc = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i138 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ge = getelementptr inbounds nuw i8, ptr %i.an, i64 100
  %i.gf = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.gg = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.gh = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.gi = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.gl = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.gm = getelementptr inbounds nuw i8, ptr %i.al, i64 100
  %i.gn = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.au, i64 72 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.au, i64 120 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aj, i64 120 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.gz = getelementptr inbounds nuw i8, ptr %i.au, i64 184
  %i.ha = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.hb = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.hd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx115.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0..sroa_idx116.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.4.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.5.0..sroa_idx.i65.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.hj = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 8 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.8125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 145
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit"

.body.thread:                                     ; preds = %.body119.loopexit, %.body119.loopexit.split-lp, %bb.eh, %bb.ei, %bb.iz, %bb.ja, %bb.jc, %bb.jd, %.body34.i, %bb.kn, %.thread120.i, %bb.ko, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit.i", %bb.la, %bb.ak, %.body, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit163", %.body.thread207, %bb.b
  %.pn105 = phi { ptr, i32 } [ %i.hs, %bb.b ], [ %.pn204, %.body.thread207 ], [ %i.acf, %bb.la ], [ %lpad.thr_comm.split-lp, %.body ], [ %eh.lpad-body120228, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit163" ], [ %i.yv, %bb.ja ], [ %i.lc, %bb.ak ], [ %.pn.i125, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit.i" ], [ %.pn36.pn.pn.pn.i.i, %bb.jd ], [ %.pn59106123.i, %.thread120.i ], [ %.pn16.i, %bb.kn ], [ %.pn16.i, %.body34.i ], [ %.pn59106123.i, %bb.ko ], [ %.pn36.pn.pn.pn.i.i, %bb.jc ], [ %i.yv, %bb.iz ], [ %i.tv, %bb.eh ], [ %i.tv, %bb.ei ], [ %lpad.loopexit286, %.body119.loopexit ], [ %lpad.loopexit.split-lp287, %.body119.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..import_export..text..ForeignNote$GT$$GT$17h745f2f28eb20aae1E"(ptr noalias noundef align 8 dereferenceable(32) %i.cp) #32
          to label %bb.d unwind label %bb.kx

bb.b:                                             ; preds = %bb.le
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit.lr.ph", %.backedge
  %i.ht = phi ptr [ %i.dk, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit.lr.ph" ], [ %i.hu, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4618)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 144 ; 3 uses
  store ptr %i.hu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4618, !noalias !4619
  %.sroa.0.0.copyload168 = load i64, ptr %i.ht, align 8, !noalias !4618 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload168, -9223372036854775808
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit.thread", label %bb.c

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit"
  %.sroa.9.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store i64 %.sroa.0.0.copyload168, ptr %i.co, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9.0..sroa_idx169, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  invoke void @"_ZN4anki8progress20Incrementor$LT$F$GT$9increment17hcc5472560b332133E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cn, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %bb.h unwind label %.body.thread211.loopexit

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit", %.backedge, %bb.a
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..import_export..text..ForeignNote$GT$$GT$17h745f2f28eb20aae1E"(ptr noalias noundef align 8 dereferenceable(32) %i.cp)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %.body.thread
  %.pn107 = phi { ptr, i32 } [ %i.hv, %bb.e ], [ %.pn105, %.body.thread ]
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$anki_proto..import_export..import_response..Log$GT$17h64124cd345b2d21fE"(ptr noalias noundef align 8 dereferenceable(200) %i.cq) #32
          to label %bb.lg unwind label %bb.kx

bb.e:                                             ; preds = %bb.ld, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit.thread"
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a37a7567bcf47feE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.cq, i64 200, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.lf, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  ret void

.body.thread211.loopexit:                         ; preds = %select.unfold.i, %bb.c, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread207

.body.thread211.loopexit.split-lp:                ; preds = %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread207

.body:                                            ; preds = %bb.ah, %.thread, %bb.kv
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.h:                                             ; preds = %bb.c
  %i.hw = load i64, ptr %i.cn, align 8, !range !33, !noundef !14
  %.not96 = icmp eq i64 %i.hw, -9223372036854775773
  br i1 %.not96, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.hx, ptr noundef nonnull align 8 dereferenceable(112) %i.cn, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.le

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %i.hy = load ptr, ptr %i.do, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.hz = load i64, ptr %i.dp, align 8, !noundef !14
  %.not97 = icmp eq i64 %i.hz, 0
  br i1 %.not97, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ia = load i64, ptr %i.hy, align 8, !range !21, !noundef !14
  %.not98 = icmp eq i64 %i.ia, -9223372036854775808
  br i1 %.not98, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %bb.ag, %bb.j, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !4620)
  call void @llvm.experimental.noalias.scope.decl(metadata !4621)
  call void @llvm.experimental.noalias.scope.decl(metadata !4622)
  call void @llvm.experimental.noalias.scope.decl(metadata !4623)
  %i.ib = load i64, ptr %i.ds, align 8, !alias.scope !4624, !noalias !4625, !noundef !14
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %select.unfold.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.id = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h520ade15b1c409f2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %.noexc unwind label %.body.thread211.loopexit ; 3 uses

.noexc:                                           ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !4626)
  call void @llvm.experimental.noalias.scope.decl(metadata !4627)
  call void @llvm.experimental.noalias.scope.decl(metadata !4628)
  %i.ie = lshr i64 %i.id, 57
  %i.if = trunc nuw nsw i64 %i.ie to i8
  %i.ig = load i64, ptr %i.du, align 8, !alias.scope !4629, !noalias !4630, !noundef !14 ; 4 uses
  %i.ih = load ptr, ptr %i.dr, align 8, !alias.scope !4629, !noalias !4630, !nonnull !14, !noundef !14 ; 5 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.if, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ii = load i64, ptr %i.dq, align 8, !range !21, !alias.scope !4631, !noalias !4632
  %.fr50.i.i.i = freeze i64 %i.ii
  %.not.i.i.i = icmp eq i64 %.fr50.i.i.i, -9223372036854775808
  %i.ij = load i64, ptr %i.dv, align 8, !alias.scope !4631, !noalias !4632 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !4631, !noalias !4632 ; 2 uses
  %.val.i.i.i.i.cast.i.i.i = inttoptr i64 %i.ij to ptr
  br i1 %.not.i.i.i, label %.split.i.i.i, label %.split.us44.i.i.i

.split.us44.i.i.i:                                ; preds = %.noexc, %11
  %.sroa.9.0.i.us.i.i.i = phi i64 [ %12, %11 ], [ 0, %.noexc ]
  %.pn.us.i.i.i = phi i64 [ %13, %11 ], [ %i.id, %.noexc ]
  %.sroa.01.0.i.us.i.i.i = and i64 %.pn.us.i.i.i, %i.ig ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.01.0.i.us.i.i.i
  %.sroa.0.0.copyload.i27.us.i.i.i = load <16 x i8>, ptr %i.ik, align 1, !noalias !4633 ; 2 uses
  %i.il = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.im = bitcast <16 x i1> %i.il to i16          ; 2 uses
  %.not.i.not33.us.i.i.i = icmp eq i16 %i.im, 0
  br i1 %.not.i.not33.us.i.i.i, label %._crit_edge.split.us.us.i.i.i, label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.split.us44.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.us.us.i.i.i"
  %.sroa.06.0.i34.us.us.i.i.i = phi i16 [ %i.iz, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.us.us.i.i.i" ], [ %i.im, %.split.us44.i.i.i ] ; 3 uses
  %i.in = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.us.us.i.i.i, i1 true)
  %i.io = zext nneg i16 %i.in to i64
  %i.ip = add i64 %.sroa.01.0.i.us.i.i.i, %i.io
  %i.iq = and i64 %i.ip, %i.ig
  %i.ir = sub nsw i64 0, %i.iq                    ; 2 uses
  %i.is = getelementptr inbounds [32 x i8], ptr %i.ih, i64 %i.ir ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !4634), !noalias !4635
  call void @llvm.experimental.noalias.scope.decl(metadata !4636), !noalias !4635
  call void @llvm.experimental.noalias.scope.decl(metadata !4637), !noalias !4635
  %i.iu = load i64, ptr %i.it, align 8, !range !21, !alias.scope !4638, !noalias !4639, !noundef !14
  %.not51.i.i.i = icmp eq i64 %i.iu, -9223372036854775808
  br i1 %.not51.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.us.us.i.i.i", label %bb.n, !prof !4640

bb.n:                                             ; preds = %.lr.ph.us.i.i.i
  %i.iv = getelementptr inbounds i8, ptr %i.is, i64 -16
  %.val4.i.i.i.i.us.us.i.i.i = load i64, ptr %i.iv, align 8, !alias.scope !4638, !noalias !4639, !noundef !14
  %.not.i.i.i.i.i.i.us.us.i.i.i = icmp eq i64 %.val2.i.i.i.i.i.i.i, %.val4.i.i.i.i.us.us.i.i.i
  br i1 %.not.i.i.i.i.i.i.us.us.i.i.i, label %.split.us.us.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.us.us.i.i.i", !prof !4641

.split.us.us.i.i.i:                               ; preds = %bb.n
  %i.iw = getelementptr inbounds i8, ptr %i.is, i64 -24
  %.val3.i.i.i.i.us.us.i.i.i = load ptr, ptr %i.iw, align 8, !alias.scope !4638, !noalias !4639, !nonnull !14, !noundef !14
  %bcmp.i.i.i.i.i.i.us.us.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.cast.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.us.us.i.i.i, i64 %.val2.i.i.i.i.i.i.i), !alias.scope !4642, !noalias !4643
  %i.ix = icmp eq i32 %bcmp.i.i.i.i.i.i.us.us.i.i.i, 0
  br i1 %i.ix, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0c04a3a66f4ef0d2E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.us.us.i.i.i", !prof !4644

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.us.us.i.i.i": ; preds = %.split.us.us.i.i.i, %bb.n, %.lr.ph.us.i.i.i
  %i.iy = add i16 %.sroa.06.0.i34.us.us.i.i.i, -1
  %i.iz = and i16 %i.iy, %.sroa.06.0.i34.us.us.i.i.i ; 2 uses
  %.not.i.not.us.us.i.i.i = icmp eq i16 %i.iz, 0
  br i1 %.not.i.not.us.us.i.i.i, label %._crit_edge.split.us.us.i.i.i, label %.lr.ph.us.i.i.i

._crit_edge.split.us.us.i.i.i:                    ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.us.us.i.i.i", %.split.us44.i.i.i
  %8 = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i, splat (i8 -1)
  %9 = bitcast <16 x i1> %8 to i16
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %select.unfold.i, !prof !19

11:                                               ; preds = %._crit_edge.split.us.us.i.i.i
  %12 = add i64 %.sroa.9.0.i.us.i.i.i, 16         ; 2 uses
  %13 = add i64 %.sroa.01.0.i.us.i.i.i, %12
  br label %.split.us44.i.i.i

.split.i.i.i:                                     ; preds = %.noexc, %bb.o
  %.sroa.9.0.i.i.i.i = phi i64 [ %i.ju, %bb.o ], [ 0, %.noexc ]
  %.pn.i.i.i = phi i64 [ %i.jv, %bb.o ], [ %i.id, %.noexc ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.ig ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.ja, align 1, !noalias !4633 ; 2 uses
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %.not.i.not33.i.i.i = icmp eq i16 %i.jc, 0
  br i1 %.not.i.not33.i.i.i, label %._crit_edge.split.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.i.i.i"
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.jt, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.i.i.i" ], [ %i.jc, %.split.i.i.i ] ; 3 uses
  %i.jd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.je = zext nneg i16 %i.jd to i64
  %i.jf = add i64 %.sroa.01.0.i.i.i.i, %i.je
  %i.jg = and i64 %i.jf, %i.ig
  %i.jh = sub nsw i64 0, %i.jg                    ; 2 uses
  %i.ji = getelementptr inbounds [32 x i8], ptr %i.ih, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !4634), !noalias !4635
  call void @llvm.experimental.noalias.scope.decl(metadata !4636), !noalias !4635
  call void @llvm.experimental.noalias.scope.decl(metadata !4637), !noalias !4635
  %i.jk = load i64, ptr %i.jj, align 8, !range !21, !alias.scope !4638, !noalias !4639, !noundef !14
  %i.jl = icmp eq i64 %i.jk, -9223372036854775808
  br i1 %i.jl, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.i.i.i", !prof !4641

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.jm = getelementptr inbounds i8, ptr %i.ji, i64 -24
  %i.jn = load i64, ptr %i.jm, align 8, !alias.scope !4638, !noalias !4639, !noundef !14
  %i.jo = icmp eq i64 %i.ij, %i.jn
  br i1 %i.jo, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0c04a3a66f4ef0d2E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.i.i.i", !prof !4644

._crit_edge.split.i.i.i:                          ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.i.i.i", %.split.i.i.i
  %i.jp = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.jq = bitcast <16 x i1> %i.jp to i16
  %i.jr = icmp eq i16 %i.jq, 0
  br i1 %i.jr, label %bb.o, label %select.unfold.i, !prof !19

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.thread.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.i.i.i", %.lr.ph.i.i.i
  %i.js = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.jt = and i16 %i.js, %.sroa.06.0.i34.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.jt, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.split.i.i.i, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %._crit_edge.split.i.i.i
  %i.ju = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.jv = add i64 %.sroa.01.0.i.i.i.i, %i.ju
  br label %.split.i.i.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0c04a3a66f4ef0d2E.exit.i": ; preds = %.split.us.us.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.i.i.i"
  %.pre-phi.i.i = phi i64 [ %i.jh, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3de96602e7bad486E.exit.i.i.i" ], [ %i.ir, %.split.us.us.i.i.i ]
  %i.jw = getelementptr inbounds [32 x i8], ptr %i.ih, i64 %.pre-phi.i.i
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -8 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !4645, !noundef !14 ; 2 uses
  %.not26.i = icmp eq ptr %i.jy, null
  br i1 %.not26.i, label %.thread, label %bb.ae

select.unfold.i:                                  ; preds = %._crit_edge.split.us.us.i.i.i, %._crit_edge.split.i.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !4646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !4646
  %i.jz = load ptr, ptr %i.dx, align 8, !alias.scope !4620, !noalias !4647, !nonnull !14, !align !15, !noundef !14
  invoke void @"_ZN4anki13import_export4text6import46_$LT$impl$u20$anki..collection..Collection$GT$22notetype_by_name_or_id17h837f38b9577ab5fdE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.jz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %.noexc109 unwind label %.body.thread211.loopexit

.noexc109:                                        ; preds = %select.unfold.i
  %i.ka = load i64, ptr %i.cc, align 8, !range !33, !noalias !4646, !noundef !14 ; 2 uses
  %.not23.i = icmp eq i64 %i.ka, -9223372036854775773
  %i.kb = load ptr, ptr %i.dy, align 8, !noalias !4646 ; 5 uses
  br i1 %.not23.i, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.noexc109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !4646
  store ptr %i.kb, ptr %i.cd, align 8, !noalias !4646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !4646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !4646
  %i.kc = load i64, ptr %i.dq, align 8, !range !21, !alias.scope !4621, !noalias !4648, !noundef !14
  %.not24.i = icmp eq i64 %i.kc, -9223372036854775808
  br i1 %.not24.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !4646
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %bb.w unwind label %bb.t, !noalias !4645

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !4648
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %bb.r
  %.not25.i = icmp eq ptr %i.kb, null
  br i1 %.not25.i, label %bb.y, label %bb.x

bb.t:                                             ; preds = %bb.ac, %bb.y, %bb.q
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4649)
  %i.ke = load ptr, ptr %i.cd, align 8, !alias.scope !4649, !noalias !4646, !noundef !14 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %.body.thread207, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kg = atomicrmw sub ptr %i.ke, i64 1 release, align 8, !noalias !4650
  %i.kh = icmp eq i64 %i.kg, 1
  br i1 %i.kh, label %bb.v, label %.body.thread207

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h1ae294f526e4d3f9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %.body.thread207 unwind label %bb.ad, !noalias !4645

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !noalias !4646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !4646
  br label %bb.s

bb.x:                                             ; preds = %bb.s
  %i.ki = atomicrmw add ptr %i.kb, i64 1 monotonic, align 8, !noalias !4645
  %i.kj = icmp slt i64 %i.ki, 0
  br i1 %i.kj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %i.kk = invoke { i64, ptr } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h331a706b927d5882E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca, ptr noundef %i.kb)
          to label %bb.aa unwind label %bb.t, !noalias !4645 ; 2 uses

bb.z:                                             ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.kl = extractvalue { i64, ptr } %i.kk, 0      ; 2 uses
  %i.km = extractvalue { i64, ptr } %i.kk, 1      ; 3 uses
  store i64 %i.kl, ptr %i.cb, align 8, !noalias !4646
  store ptr %i.km, ptr %i.dz, align 8, !noalias !4646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !4646
  %i.kn = icmp eq i64 %i.kl, 0
  %i.ko = icmp eq ptr %i.km, null
  %or.cond.i = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %or.cond.i, label %bb.an, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kp = atomicrmw sub ptr %i.km, i64 1 release, align 8, !noalias !4651
  %i.kq = icmp eq i64 %i.kp, 1
  br i1 %i.kq, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h1ae294f526e4d3f9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %bb.an unwind label %bb.t, !noalias !4645

bb.ad:                                            ; preds = %bb.v
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !4645
  unreachable

bb.ae:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0c04a3a66f4ef0d2E.exit.i"
  %i.ks = atomicrmw add ptr %i.jy, i64 1 monotonic, align 8, !noalias !4645
  %i.kt = icmp slt i64 %i.ks, 0
  br i1 %i.kt, label %bb.af, label %.thread220

.thread220:                                       ; preds = %bb.ae
  %i.ku = load ptr, ptr %i.jx, align 8, !noalias !4645, !nonnull !14, !noundef !14
  br label %bb.ao

bb.af:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.k
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.kw = load i64, ptr %i.kv, align 8, !noundef !14 ; 2 uses
  %i.kx = icmp sgt i64 %i.kw, -1
  call void @llvm.assume(i1 %i.kx)
  %i.ky = icmp eq i64 %i.kw, 0
  br i1 %i.ky, label %bb.ah, label %bb.l

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.cl, ptr noundef nonnull align 8 dereferenceable(144) %i.co, i64 144, i1 false)
  invoke fastcc void @_ZN4anki13import_export4text11ForeignNote13into_log_note17hc01542ae0a787ae5E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cm, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.cl)
          to label %bb.ai unwind label %.body

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %i.kz = load i64, ptr %.sroa.564.0..sroa_idx, align 8, !alias.scope !4652, !noalias !4653, !noundef !14 ; 3 uses
  %i.la = load i64, ptr %i.dg, align 8, !range !20, !alias.scope !4652, !noalias !4653, !noundef !14
  %i.lb = icmp eq i64 %i.kz, %i.la
  br i1 %i.lb, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h808c57a5ff527365E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %bb.am unwind label %bb.ak, !noalias !4653

bb.ak:                                            ; preds = %bb.aj
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$anki_proto..import_export..import_response..Note$GT$17hc3182a6ae0a97e83E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cm) #32
          to label %.body.thread unwind label %bb.al
end_hunk_0
