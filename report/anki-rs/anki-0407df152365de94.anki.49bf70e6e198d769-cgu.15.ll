Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E:vector.ph
  %i.dj = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !16703, !noalias !16702, !nonnull !6, !noundef !6 ; 6 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !16703, !noalias !16702, !nonnull !6, !noundef !6 ; 6 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !16704 ; 3 uses
  %min.iters.check175 = icmp ult i64 %i.dj, 8
  br i1 %min.iters.check175, label %scalar.ph174.preheader, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.i.i.i.i.i
  %scevgep158 = getelementptr nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %scevgep159 = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %scevgep161 = getelementptr nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %scevgep162 = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %bound0163 = icmp ult ptr %scevgep158, %scevgep160
  %bound1164 = icmp ult ptr %i.br, %scevgep159
  %found.conflict165 = and i1 %bound0163, %bound1164
  %bound0166 = icmp ult ptr %scevgep158, %scevgep162
  %bound1167 = icmp ult ptr %scevgep161, %scevgep159
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %found.conflict165, %found.conflict168
  %bound0170 = icmp ult ptr %i.br, %scevgep162
  %bound1171 = icmp ult ptr %scevgep161, %scevgep160
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  br i1 %conflict.rdx173, label %scalar.ph174.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck157
  %n.vec177 = and i64 %i.dj, -4                   ; 3 uses
  %i.dk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i.i, i64 0
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %vec.phi180 = phi <2 x i64> [ %i.dk, %vector.ph176 ], [ %i.dq, %vector.body178 ]
  %vec.phi181 = phi <2 x i64> [ zeroinitializer, %vector.ph176 ], [ %i.dr, %vector.body178 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16705), !noalias !16701
  %i.dl = add i64 %index179, %.val.i.i.i.i.i      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %wide.load182 = load <2 x i8>, ptr %i.dm, align 1, !alias.scope !16706, !noalias !16707
  %wide.load183 = load <2 x i8>, ptr %i.dn, align 1, !alias.scope !16706, !noalias !16707
  %i.do = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16708), !noalias !16701
  call void @llvm.experimental.noalias.scope.decl(metadata !16709), !noalias !16701
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  store <2 x i8> %wide.load182, ptr %i.do, align 1, !alias.scope !16710, !noalias !16711
  store <2 x i8> %wide.load183, ptr %i.dp, align 1, !alias.scope !16710, !noalias !16711
  %i.dq = add <2 x i64> %vec.phi180, splat (i64 1) ; 2 uses
  %i.dr = add <2 x i64> %vec.phi181, splat (i64 1) ; 2 uses
  %index.next184 = add nuw i64 %index179, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.ds, label %middle.block185, label %vector.body178, !llvm.loop !16414

middle.block185:                                  ; preds = %vector.body178
  %bin.rdx186 = add <2 x i64> %i.dr, %i.dq
  %i.dt = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx186) ; 3 uses
  store i64 %i.dt, ptr %i.br, align 8, !alias.scope !16712, !noalias !16713
  %cmp.n187 = icmp eq i64 %i.dj, %n.vec177
  br i1 %cmp.n187, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %vector.memcheck157, %.lr.ph.i.i.i.i.i, %middle.block185
  %.ph190 = phi i64 [ %.promoted.i.i.i.i.i, %vector.memcheck157 ], [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dt, %middle.block185 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck157 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec177, %middle.block185 ] ; 4 uses
  %i.du = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  %i.dv = xor i64 %.sroa.0.011.i.i.i.i.i.ph, -1
  %i.dw = add i64 %.val8.i.i.i.i.i, %i.dv
  %xtraiter = and i64 %i.du, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph174.prol.loopexit, label %scalar.ph174.prol

scalar.ph174.prol:                                ; preds = %scalar.ph174.preheader
  %i.dx = or disjoint i64 %.sroa.0.011.i.i.i.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16705), !noalias !16701
  %i.dy = add i64 %.sroa.0.011.i.i.i.i.i.ph, %.val.i.i.i.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dy
  %.val1.i.i.i.i.i.i.i.prol = load i8, ptr %i.dz, align 1, !alias.scope !16714, !noalias !16707, !noundef !6
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dy
  call void @llvm.experimental.noalias.scope.decl(metadata !16708), !noalias !16701
  call void @llvm.experimental.noalias.scope.decl(metadata !16709), !noalias !16701
  store i8 %.val1.i.i.i.i.i.i.i.prol, ptr %i.ea, align 1, !alias.scope !16715, !noalias !16716
  %i.eb = add i64 %.ph190, 1                      ; 3 uses
  store i64 %i.eb, ptr %i.br, align 8, !noalias !16704
  br label %scalar.ph174.prol.loopexit

scalar.ph174.prol.loopexit:                       ; preds = %scalar.ph174.prol, %scalar.ph174.preheader
  %.lcssa192.unr = phi i64 [ poison, %scalar.ph174.preheader ], [ %i.eb, %scalar.ph174.prol ]
  %.unr = phi i64 [ %.ph190, %scalar.ph174.preheader ], [ %i.eb, %scalar.ph174.prol ]
  %.sroa.0.011.i.i.i.i.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i.i.ph, %scalar.ph174.preheader ], [ %i.dx, %scalar.ph174.prol ]
  %i.ec = icmp eq i64 %i.dw, %.val.i.i.i.i.i
  br i1 %i.ec, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph174.preheader.new

scalar.ph174.preheader.new:                       ; preds = %scalar.ph174.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i.i.i.i
  br label %scalar.ph174

scalar.ph174:                                     ; preds = %scalar.ph174, %scalar.ph174.preheader.new
  %i.ed = phi i64 [ %.unr, %scalar.ph174.preheader.new ], [ %i.el, %scalar.ph174 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %.sroa.0.011.i.i.i.i.i.unr, %scalar.ph174.preheader.new ], [ %i.ei, %scalar.ph174 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16705), !noalias !16701
  %i.ee = add i64 %.sroa.0.011.i.i.i.i.i, %.val.i.i.i.i.i ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.ee
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.ef, align 1, !alias.scope !16714, !noalias !16707, !noundef !6
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !16708), !noalias !16701
  call void @llvm.experimental.noalias.scope.decl(metadata !16709), !noalias !16701
  store i8 %.val1.i.i.i.i.i.i.i, ptr %i.eg, align 1, !alias.scope !16715, !noalias !16716
  %i.eh = add i64 %i.ed, 1
  store i64 %i.eh, ptr %i.br, align 8, !noalias !16704
  %i.ei = add nuw i64 %.sroa.0.011.i.i.i.i.i, 2   ; 2 uses
  %.reass = add i64 %.sroa.0.011.i.i.i.i.i, %invariant.op ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.reass
  %.val1.i.i.i.i.i.i.i.1 = load i8, ptr %i.ej, align 1, !alias.scope !16714, !noalias !16717, !noundef !6
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.reass
  call void @llvm.experimental.noalias.scope.decl(metadata !16718), !noalias !16701
  call void @llvm.experimental.noalias.scope.decl(metadata !16719), !noalias !16701
  store i8 %.val1.i.i.i.i.i.i.i.1, ptr %i.ek, align 1, !alias.scope !16720, !noalias !16716
  %i.el = add i64 %i.ed, 2                        ; 3 uses
  store i64 %i.el, ptr %i.br, align 8, !noalias !16721
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.ei, %i.dj
  br i1 %exitcond.not.i.i.i.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph174, !llvm.loop !16418

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i": ; preds = %._crit_edge.i
  %.pr.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !16698
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i": ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174, %middle.block185, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i"
  %i.em = phi i64 [ %.pr.i.i.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i" ], [ %i.dt, %middle.block185 ], [ %.lcssa192.unr, %scalar.ph174.prol.loopexit ], [ %i.el, %scalar.ph174 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16698
  %i.en = icmp ult i64 %i.em, 128
  br i1 %i.en, label %bb.a, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i", !prof !14

bb.a:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.em, i64 noundef 128) #50, !noalias !16699
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.bv, ptr noundef nonnull align 8 dereferenceable(128) %i.t, i64 128, i1 false), !noalias !16722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16698
  %i.eo = load i8, ptr %i.bq, align 16, !alias.scope !16695, !noalias !16723, !noundef !6 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.af, ptr noundef nonnull align 16 dereferenceable(160) %i.u, i64 160, i1 false), !noalias !16722
  store i8 %i.eo, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !16694, !noalias !16722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16696
  call void @llvm.experimental.noalias.scope.decl(metadata !16724)
  call void @llvm.experimental.noalias.scope.decl(metadata !16725), !noalias !16690
  call void @llvm.experimental.noalias.scope.decl(metadata !16726), !noalias !16690
  %i.ep = zext nneg i8 %i.eo to i64               ; 4 uses
  %i.eq = icmp sgt i8 %i.eo, -1
  call void @llvm.assume(i1 %i.eq), !noalias !16690
  %i.er = sub nuw nsw i64 128, %i.ep              ; 4 uses
  %i.es = icmp ult i64 %3, %i.er
  br i1 %i.es, label %bb.f, label %bb.b

bb.b:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i"
  %i.et = icmp eq i8 %i.eo, 0
  br i1 %i.et, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i", %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %3, %bb.b ], [ %i.ez, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %2, %bb.b ], [ %i.fa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 2 uses
  %i.eu = lshr i64 %.sroa.7.0.i.i.i, 7            ; 3 uses
  %i.ev = and i64 %.sroa.7.0.i.i.i, -128
  %i.ew = and i64 %.sroa.7.0.i.i.i, 127           ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.ev
  %i.ey = icmp eq i64 %i.eu, 0
  br i1 %i.ey, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i": ; preds = %bb.b
  %i.ez = sub nuw i64 %3, %i.er
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %i.er
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fb, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %i.er, i1 false), !alias.scope !16727, !noalias !16728
  %i.fc = load i128, ptr %i.bw, align 16, !alias.scope !16729, !noalias !16730, !noundef !6
  %i.fd = add i128 %i.fc, 1
  store i128 %i.fd, ptr %i.bw, align 16, !alias.scope !16729, !noalias !16730
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.bv, i64 noundef range(i64 1, 0) 1), !noalias !16731
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.fe = zext nneg i64 %i.eu to i128
  %i.ff = load i128, ptr %i.bw, align 16, !alias.scope !16732, !noalias !16733, !noundef !6
  %i.fg = add i128 %i.ff, %i.fe
  store i128 %i.fg, ptr %i.bw, align 16, !alias.scope !16732, !noalias !16733
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.eu), !noalias !16734
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.bv, ptr nonnull readonly align 1 %i.ex, i64 %i.ew, i1 false), !alias.scope !16735, !noalias !16736
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"

bb.f:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i"
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !alias.scope !16737, !noalias !16738
  %i.fi = add nuw nsw i64 %3, %i.ep
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i": ; preds = %bb.f, %bb.e
  %storemerge.in.i.i.i = phi i64 [ %i.ew, %bb.e ], [ %i.fi, %bb.f ] ; 7 uses
  %storemerge.i.i.i = trunc nuw i64 %storemerge.in.i.i.i to i8 ; 2 uses
  store i8 %storemerge.i.i.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !16739, !noalias !16740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !16693
  %i.fj = call i32 @llvm.bswap.i32(i32 %i.di)     ; 2 uses
  store i32 %i.fj, ptr %i.ae, align 4, !noalias !16693
  call void @llvm.experimental.noalias.scope.decl(metadata !16741)
  call void @llvm.experimental.noalias.scope.decl(metadata !16742), !noalias !16690
  call void @llvm.experimental.noalias.scope.decl(metadata !16743), !noalias !16690
  %7 = icmp sgt i8 %storemerge.i.i.i, -1
  call void @llvm.assume(i1 %7), !noalias !16690
  %i.fk = icmp samesign ult i64 %storemerge.in.i.i.i, 124
  br i1 %i.fk, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"
  %i.fl = sub nuw nsw i64 128, %storemerge.in.i.i.i ; 2 uses
  %i.fm = add nsw i64 %storemerge.in.i.i.i, -124  ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge.in.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.ae, i64 %i.fl, i1 false), !alias.scope !16744, !noalias !16745
  %i.fp = load i128, ptr %i.bw, align 16, !alias.scope !16746, !noalias !16747, !noundef !6
  %i.fq = add i128 %i.fp, 1
  store i128 %i.fq, ptr %i.bw, align 16, !alias.scope !16746, !noalias !16747
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.bv, i64 noundef range(i64 1, 0) 1), !noalias !16748
  %i.fr = and i64 %i.fm, -128
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.bv, ptr nonnull readonly align 1 %i.fs, i64 %i.fm, i1 false), !alias.scope !16749, !noalias !16750
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"

bb.g:                                             ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge.in.i.i.i
  store i32 %i.fj, ptr %i.ft, align 1, !alias.scope !16751, !noalias !16752
  %i.fu = add nuw nsw i64 %storemerge.in.i.i.i, 4
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i": ; preds = %bb.g, %.thread.i
  %storemerge.in.i.i11.i = phi i64 [ %i.fm, %.thread.i ], [ %i.fu, %bb.g ]
  %storemerge.i.i12.i = trunc nuw i64 %storemerge.in.i.i11.i to i8
  store i8 %storemerge.i.i12.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !16753, !noalias !16754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !16693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !16693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.q, ptr noundef nonnull align 16 dereferenceable(304) %i.af, i64 304, i1 false), !noalias !16756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.r, i8 0, i64 64, i1 false), !alias.scope !16757, !noalias !16755
  call void @llvm.experimental.noalias.scope.decl(metadata !16758), !noalias !16690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16759
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !alias.scope !16760, !noalias !16759
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE"(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.q, ptr noalias noundef nonnull align 1 dereferenceable(129) %i.bx, ptr noalias noundef align 1 dereferenceable(64) %i.p), !noalias !16761
  call void @llvm.experimental.noalias.scope.decl(metadata !16762), !noalias !16690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.p, i64 64, i1 false), !alias.scope !16763, !noalias !16764
  store i8 64, ptr %i.by, align 16, !alias.scope !16765, !noalias !16766
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE"(ptr noalias noundef align 16 dereferenceable(80) %i.bz, ptr noalias noundef nonnull align 1 dereferenceable(129) %i.bx, ptr noalias noundef nonnull align 1 dereferenceable(64) %i.r), !noalias !16767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ad, ptr noundef nonnull align 1 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !16768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16693
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h92fc9665f0656228E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ab, ptr noundef nonnull align 1 %.sroa.061.094.i, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ca)
  call void @llvm.experimental.noalias.scope.decl(metadata !16769)
  %.val.i.i = load i64, ptr %i.cb, align 8, !alias.scope !16769, !noalias !16679, !noundef !6 ; 11 uses
  %.val8.i.i = load i64, ptr %i.cc, align 8, !alias.scope !16769, !noalias !16679, !noundef !6 ; 6 uses
  %i.fv = sub i64 %.val8.i.i, %.val.i.i           ; 8 uses
  %.not.i14.i = icmp eq i64 %.val8.i.i, %.val.i.i
  br i1 %.not.i14.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %iter.check143

iter.check143:                                    ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !16770, !noalias !16679, !nonnull !6, !noundef !6 ; 7 uses
  %.val.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !16770, !noalias !16679, !nonnull !6, !noundef !6 ; 7 uses
  %min.iters.check128 = icmp ult i64 %i.fv, 4
  br i1 %min.iters.check128, label %vec.epilog.scalar.ph144.preheader, label %vector.memcheck119

vector.memcheck119:                               ; preds = %iter.check143
  %scevgep120 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep121 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val8.i.i
  %scevgep122 = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep123 = getelementptr i8, ptr %.val.i.i.i, i64 %.val8.i.i
  %bound0124 = icmp ult ptr %scevgep120, %scevgep123
  %bound1125 = icmp ult ptr %scevgep122, %scevgep121
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %vec.epilog.scalar.ph144.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %vector.memcheck119
  %min.iters.check130 = icmp ult i64 %i.fv, 32
  br i1 %min.iters.check130, label %vec.epilog.ph147, label %vector.ph131

vector.ph131:                                     ; preds = %vector.main.loop.iter.check129
  %i.fw = and i64 %i.fv, 28
  %n.vec132 = and i64 %i.fv, -32                  ; 4 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.ph131, %vector.body133
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %i.fx = add i64 %index134, %.val.i.i            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fx ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load135 = load <16 x i8>, ptr %i.fz, align 1, !alias.scope !16771, !noalias !16769
  %wide.load136 = load <16 x i8>, ptr %i.ga, align 1, !alias.scope !16771, !noalias !16769
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load137 = load <16 x i8>, ptr %i.fy, align 1, !alias.scope !16772, !noalias !16773
  %wide.load138 = load <16 x i8>, ptr %i.gb, align 1, !alias.scope !16772, !noalias !16773
  %i.gc = xor <16 x i8> %wide.load137, %wide.load135
  %i.gd = xor <16 x i8> %wide.load138, %wide.load136
  store <16 x i8> %i.gc, ptr %i.fy, align 1, !alias.scope !16772, !noalias !16773
  store <16 x i8> %i.gd, ptr %i.gb, align 1, !alias.scope !16772, !noalias !16773
  %index.next139 = add nuw i64 %index134, 32      ; 2 uses
  %i.ge = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.ge, label %middle.block140, label %vector.body133, !llvm.loop !16514

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.fv, %n.vec132
  br i1 %cmp.n141, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.iter.check145

vec.epilog.iter.check145:                         ; preds = %middle.block140
  %min.epilog.iters.check146 = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check146, label %vec.epilog.scalar.ph144.preheader, label %vec.epilog.ph147, !prof !56

vec.epilog.ph147:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check145
  %vec.epilog.resume.val142 = phi i64 [ %n.vec132, %vec.epilog.iter.check145 ], [ 0, %vector.main.loop.iter.check129 ]
  %n.vec148 = and i64 %i.fv, -4                   ; 3 uses
  br label %vec.epilog.vector.body149

vec.epilog.vector.body149:                        ; preds = %vec.epilog.vector.body149, %vec.epilog.ph147
  %index150 = phi i64 [ %vec.epilog.resume.val142, %vec.epilog.ph147 ], [ %index.next153, %vec.epilog.vector.body149 ] ; 2 uses
  %i.gf = add i64 %index150, %.val.i.i            ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gf
  %wide.load151 = load <4 x i8>, ptr %i.gh, align 1, !alias.scope !16771, !noalias !16769
  %wide.load152 = load <4 x i8>, ptr %i.gg, align 1, !alias.scope !16772, !noalias !16773
  %i.gi = xor <4 x i8> %wide.load152, %wide.load151
  store <4 x i8> %i.gi, ptr %i.gg, align 1, !alias.scope !16772, !noalias !16773
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.gj, label %vec.epilog.middle.block154, label %vec.epilog.vector.body149, !llvm.loop !16515

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body149
  %cmp.n155 = icmp eq i64 %i.fv, %n.vec148
  br i1 %cmp.n155, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph144.preheader

vec.epilog.scalar.ph144.preheader:                ; preds = %iter.check143, %vector.memcheck119, %vec.epilog.iter.check145, %vec.epilog.middle.block154
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check143 ], [ 0, %vector.memcheck119 ], [ %n.vec132, %vec.epilog.iter.check145 ], [ %n.vec148, %vec.epilog.middle.block154 ] ; 4 uses
  %i.gk = sub i64 %.val8.i.i, %.val.i.i
  %i.gl = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.gm = add i64 %.val8.i.i, %i.gl
  %xtraiter207 = and i64 %i.gk, 1
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %vec.epilog.scalar.ph144.prol.loopexit, label %vec.epilog.scalar.ph144.prol

vec.epilog.scalar.ph144.prol:                     ; preds = %vec.epilog.scalar.ph144.preheader
  %i.gn = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.go = add i64 %.sroa.0.010.i.i.ph, %.val.i.i  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.go
  %.val9.i.i.prol = load i8, ptr %i.gq, align 1, !noalias !16769, !noundef !6
  %i.gr = load i8, ptr %i.gp, align 1, !alias.scope !16774, !noalias !16769, !noundef !6
  %i.gs = xor i8 %i.gr, %.val9.i.i.prol
  store i8 %i.gs, ptr %i.gp, align 1, !alias.scope !16774, !noalias !16769
  br label %vec.epilog.scalar.ph144.prol.loopexit

vec.epilog.scalar.ph144.prol.loopexit:            ; preds = %vec.epilog.scalar.ph144.prol, %vec.epilog.scalar.ph144.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph144.preheader ], [ %i.gn, %vec.epilog.scalar.ph144.prol ]
  %i.gt = icmp eq i64 %i.gm, %.val.i.i
  br i1 %i.gt, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph144.preheader.new

vec.epilog.scalar.ph144.preheader.new:            ; preds = %vec.epilog.scalar.ph144.prol.loopexit
  %invariant.op230 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph144

vec.epilog.scalar.ph144:                          ; preds = %vec.epilog.scalar.ph144, %vec.epilog.scalar.ph144.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph144.preheader.new ], [ %i.gz, %vec.epilog.scalar.ph144 ] ; 3 uses
  %i.gu = add i64 %.sroa.0.010.i.i, %.val.i.i     ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gu
  %.val9.i.i = load i8, ptr %i.gw, align 1, !noalias !16769, !noundef !6
  %i.gx = load i8, ptr %i.gv, align 1, !alias.scope !16774, !noalias !16769, !noundef !6
  %i.gy = xor i8 %i.gx, %.val9.i.i
  store i8 %i.gy, ptr %i.gv, align 1, !alias.scope !16774, !noalias !16769
  %i.gz = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass231 = add i64 %.sroa.0.010.i.i, %invariant.op230 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass231 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass231
  %.val9.i.i.1 = load i8, ptr %i.hb, align 1, !noalias !16769, !noundef !6
  %i.hc = load i8, ptr %i.ha, align 1, !alias.scope !16774, !noalias !16769, !noundef !6
  %i.hd = xor i8 %i.hc, %.val9.i.i.1
  store i8 %i.hd, ptr %i.ha, align 1, !alias.scope !16774, !noalias !16769
  %exitcond.not.i.i.1 = icmp eq i64 %i.gz, %i.fv
  br i1 %exitcond.not.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph144, !llvm.loop !16516

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i": ; preds = %vec.epilog.scalar.ph144.prol.loopexit, %vec.epilog.scalar.ph144, %middle.block140, %vec.epilog.middle.block154, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !16693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ag, ptr noundef nonnull align 1 dereferenceable(64) %i.ad, i64 64, i1 false), !noalias !16693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !16693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !16693
  br i1 %i.ce, label %.lr.ph91.i, label %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i

.lr.ph91.i:                                       ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i"
  %.sroa.05.1.i90.i = phi i32 [ %.sroa.05.1.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i" ], [ 2, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !16693
  call void @llvm.experimental.noalias.scope.decl(metadata !16775)
  call void @llvm.experimental.noalias.scope.decl(metadata !16776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16777
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf154ea14edc61c23E"(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.ah), !noalias !16775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16778
  store i64 0, ptr %i.cf, align 8, !noalias !16778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16778
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(128) %i.bp, ptr noundef nonnull readonly %i.bq, ptr noundef nonnull %i.n, ptr noundef nonnull %i.cf), !noalias !16779
  call void @llvm.experimental.noalias.scope.decl(metadata !16780)
  %.val.i.i.i.i15.i = load i64, ptr %i.cg, align 8, !alias.scope !16780, !noalias !16781, !noundef !6 ; 10 uses
  %.val8.i.i.i.i16.i = load i64, ptr %i.ch, align 8, !alias.scope !16780, !noalias !16781, !noundef !6 ; 6 uses
  %i.he = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i ; 4 uses
end_hunk_0
