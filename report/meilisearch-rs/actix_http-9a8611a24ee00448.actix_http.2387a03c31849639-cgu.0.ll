Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN3std2io5Write9write_all17hfa7febf594b8b493E:bb.a

bb.di:                                            ; preds = %bb.dg
  %i.rr = load i64, ptr %i.co, align 8, !alias.scope !4940, !noundef !20
  %i.rs = icmp eq i64 %i.rr, 0
  br i1 %i.rs, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.dk, %bb.di, %bb.dg
  %.pre-phi84.i.i.i.i = phi i64 [ %i.rf, %bb.di ], [ %i.rf, %bb.dg ], [ %.pre83.i.i.i.i, %bb.dk ]
  %.pre-phi.i.i.i.i = phi i64 [ %i.rg, %bb.di ], [ %i.rg, %bb.dg ], [ %.pre82.i.i.i.i, %bb.dk ]
  %.val127.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !4940, !nonnull !20, !align !28, !noundef !20
  %.val128.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !4940, !noundef !20 ; 4 uses
  %i.rt = load i64, ptr %i.cb, align 8, !alias.scope !4940, !noundef !20 ; 4 uses
  %i.ru = icmp ugt i64 %i.rt, %.val128.i.i.i.i
  br i1 %i.ru, label %bb.dm, label %bb.dl, !prof !29

bb.dk:                                            ; preds = %bb.di
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h3499bb64ed6cc43fE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba, ptr noalias noundef align 4 dereferenceable(4) %i.ar, ptr noalias noundef align 4 dereferenceable(4) %i.ap), !noalias !4946
  %.pre.i.i.i.i = load i32, ptr %i.ar, align 4, !noalias !4939
  %.pre80.i.i.i.i = load i32, ptr %i.ap, align 4, !noalias !4939
  %.pre82.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre83.i.i.i.i = zext i32 %.pre80.i.i.i.i to i64
  br label %bb.dj

bb.dl:                                            ; preds = %bb.dj
  %.val192.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !4940, !noundef !20 ; 4 uses
  %i.rv = load i64, ptr %i.cj, align 8, !alias.scope !4940, !noundef !20 ; 4 uses
  %i.rw = icmp ugt i64 %i.rv, %.val192.i.i.i.i
  br i1 %i.rw, label %bb.do, label %bb.dn, !prof !29

bb.dm:                                            ; preds = %bb.dj
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.rt, i64 noundef %.val128.i.i.i.i, i64 noundef %.val128.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1197) #46, !noalias !4946
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %.val191.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !4940, !nonnull !20, !align !27, !noundef !20
  %i.rx = load i64, ptr %i.cn, align 8, !alias.scope !4940, !noundef !20
  %i.ry = getelementptr inbounds nuw i8, ptr %.val127.i.i.i.i, i64 %i.rt
  %i.rz = sub nuw i64 %.val128.i.i.i.i, %i.rt
  %i.sa = sub nuw i64 %.val192.i.i.i.i, %i.rv
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %.val191.i.i.i.i, i64 %i.rv
  call fastcc void @_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17he5bf28e56e3e77a2E(i64 noundef %.pre-phi.i.i.i.i, i64 noundef %.pre-phi84.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ry, i64 noundef %i.rz, i64 noundef %i.rd, i64 noundef %i.rx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba, ptr noalias noundef nonnull align 4 %i.cp, ptr noalias noundef align 8 dereferenceable(8) %i.co, ptr noalias noundef nonnull align 4 %i.sb, i64 noundef %i.sa, ptr noalias noundef align 8 dereferenceable(8) %i.cj, ptr noalias noundef align 8 dereferenceable(8) %i.cq)
  %i.sc = call noundef i64 @_ZN6brotli3enc6encode16MaxMetablockSize17hd5d2080980d19f9bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu), !noalias !4946 ; 2 uses
  %i.sd = lshr i64 %i.sc, 3                       ; 2 uses
  %i.se = load i64, ptr %i.bf, align 8, !alias.scope !4940, !noundef !20
  %i.sf = load i64, ptr %i.bo, align 8, !alias.scope !4940, !noundef !20
  %i.sg = sub i64 %i.se, %i.sf
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba)
  %i.sh = load i32, ptr %i.bh, align 8, !alias.scope !4940, !noundef !20
  %i.si = and i32 %i.sh, 63
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = shl nuw i64 1, %i.sj
  %i.sl = add i64 %i.sg, %i.sk
  %.not121.i.i.i.i = icmp ugt i64 %i.sl, %i.sc    ; 2 uses
  %i.sm = load i32, ptr %i.bd, align 8, !alias.scope !4940, !noundef !20
  %i.sn = icmp slt i32 %i.sm, 4
  br i1 %i.sn, label %.split.i.i.i.i, label %bb.dp

bb.do:                                            ; preds = %bb.dl
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.rv, i64 noundef %.val192.i.i.i.i, i64 noundef %.val192.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1196) #46, !noalias !4946
  unreachable

.split.i.i.i.i:                                   ; preds = %bb.dn
  %i.so = load i64, ptr %i.cq, align 8, !alias.scope !4940, !noundef !20 ; 2 uses
  %i.sp = load i64, ptr %i.cj, align 8, !alias.scope !4940, !noundef !20
  %i.sq = add i64 %i.sp, %i.so
  %i.sr = icmp ugt i64 %i.sq, 12286
  %i.ss = or i1 %.not121.i.i.i.i, %i.sr
  br i1 %i.ss, label %bb.dq, label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  br i1 %.not121.i.i.i.i, label %bb.dq, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.dp
  %.pre81.i.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !4940
  br label %bb.dr

bb.dq:                                            ; preds = %bb.ds, %bb.dr, %bb.dp, %.split.i.i.i.i
  %i.st = load i64, ptr %i.co, align 8, !alias.scope !4940, !noundef !20 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.st, 0
  br i1 %.not.i.i.i.i, label %bb.ea, label %bb.dx

bb.dr:                                            ; preds = %._crit_edge.i.i.i.i, %.split.i.i.i.i
  %i.su = phi i64 [ %.pre81.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.so, %.split.i.i.i.i ]
  %i.sv = icmp ult i64 %i.su, %i.sd
  br i1 %i.sv, label %bb.ds, label %bb.dq

bb.ds:                                            ; preds = %bb.dr
  %i.sw = load i64, ptr %i.cj, align 8, !alias.scope !4940, !noundef !20
  %i.sx = icmp ult i64 %i.sw, %i.sd
  br i1 %i.sx, label %bb.dt, label %bb.dq

bb.dt:                                            ; preds = %bb.ds
  %i.sy = load i64, ptr %i.bg, align 8, !alias.scope !4955, !noundef !20 ; 2 uses
  %i.sz = trunc i64 %i.sy to i32                  ; 3 uses
  %i.ta = icmp ugt i64 %i.sy, 3221225471
  %i.tb = and i32 %i.sz, 1073741823
  %i.tc = and i32 %i.sz, 1073741824
  %reass.sub.i16.i.i = sub nsw i32 %i.tb, %i.tc
  %i.td = xor i32 %reass.sub.i16.i.i, -2147483648
  %.sroa.0.0.i17.i.i = select i1 %i.ta, i32 %i.td, i32 %i.sz
  %i.te = load i64, ptr %i.bf, align 8, !alias.scope !4955, !noundef !20 ; 3 uses
  %i.tf = trunc i64 %i.te to i32                  ; 3 uses
  %i.tg = icmp ugt i64 %i.te, 3221225471
  %i.th = and i32 %i.tf, 1073741823
  %i.ti = and i32 %i.tf, 1073741824
  %reass.sub5.i.i.i = sub nsw i32 %i.th, %i.ti
  %i.tj = xor i32 %reass.sub5.i.i.i, -2147483648
  %.sroa.02.0.i.i.i = select i1 %i.tg, i32 %i.tj, i32 %i.tf
  store i64 %i.te, ptr %i.bg, align 8, !alias.scope !4955
  %i.tk = icmp ult i32 %.sroa.02.0.i.i.i, %.sroa.0.0.i17.i.i
  br i1 %i.tk, label %bb.du, label %bb.ij

bb.du:                                            ; preds = %bb.dt
  %i.tl = load i64, ptr %i.ba, align 8, !range !69, !alias.scope !4940, !noundef !20
  switch i64 %i.tl, label %default.unreachable [
    i64 0, label %bb.ij
    i64 10, label %bb.dw
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 5, label %bb.dv
    i64 6, label %bb.dv
    i64 7, label %bb.dv
    i64 8, label %bb.dv
    i64 9, label %bb.dv
  ], !prof !76

default.unreachable:                              ; preds = %bb.iy, %bb.hw, %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.du, %bb.du, %bb.du, %bb.du, %bb.du
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"

bb.dw:                                            ; preds = %bb.du
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit": ; preds = %bb.du, %bb.du, %bb.du, %bb.du, %bb.dv, %bb.dw
  %.sink.i10 = phi i64 [ 56, %bb.dw ], [ 24, %bb.du ], [ 24, %bb.du ], [ 24, %bb.du ], [ 24, %bb.du ], [ 40, %bb.dv ]
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink.i10
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  store i32 0, ptr %i.tn, align 8
  br label %bb.ij

bb.dx:                                            ; preds = %bb.dq
  %.val190.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !4940, !noundef !20 ; 2 uses
  %i.to = load i64, ptr %i.cj, align 8, !alias.scope !4940, !noundef !20 ; 3 uses
  %i.tp = icmp ult i64 %i.to, %.val190.i.i.i.i
  br i1 %i.tp, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %.val189.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !4940, !nonnull !20, !align !27, !noundef !20
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %.val189.i.i.i.i, i64 %i.to
  call void @_ZN6brotli3enc7command7Command11init_insert17hcc78d94f9f80b580E(ptr noalias noundef nonnull align 4 dereferenceable(16) %i.tq, i64 noundef %i.st), !noalias !4946
  %i.tr = load i64, ptr %i.co, align 8, !alias.scope !4940, !noundef !20
  %i.ts = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !4940
  %i.tt = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.tr, i64 1
  %i.tu = add <2 x i64> %i.ts, %i.tt
  store <2 x i64> %i.tu, ptr %i.cj, align 8, !alias.scope !4940
  store i64 0, ptr %i.co, align 8, !alias.scope !4940
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.to, i64 noundef %.val190.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1189) #46, !noalias !4946
  unreachable

bb.ea:                                            ; preds = %bb.dy, %bb.dq
  %i.tv = load i64, ptr %i.bf, align 8, !alias.scope !4940, !noundef !20 ; 2 uses
  %i.tw = load i64, ptr %i.bo, align 8, !alias.scope !4940, !noundef !20 ; 5 uses
  %i.tx = icmp eq i64 %i.tv, %i.tw
  br i1 %i.tx, label %bb.ij, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.val126.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !4940, !noundef !20 ; 4 uses
  %i.ty = load i64, ptr %i.cb, align 8, !alias.scope !4940, !noundef !20 ; 4 uses
  %i.tz = icmp ugt i64 %i.ty, %.val126.i.i.i.i
  br i1 %i.tz, label %bb.hq, label %bb.ec, !prof !29

bb.ec:                                            ; preds = %bb.eb
  %.val125.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !4940, !nonnull !20, !align !28, !noundef !20
  %i.ua = sub i64 %i.tv, %i.tw
  %i.ub = sub nuw i64 %.val126.i.i.i.i, %i.ty     ; 24 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.val125.i.i.i.i, i64 %i.ty ; 19 uses
  %i.ud = and i64 %i.ua, 4294967295               ; 12 uses
  %i.ue = load i8, ptr %i.cd, align 1, !alias.scope !4940, !noundef !20 ; 3 uses
  %i.uf = load i8, ptr %i.ce, align 8, !alias.scope !4940, !noundef !20 ; 3 uses
  %i.ug = load i64, ptr %i.cq, align 8, !alias.scope !4940, !noundef !20
  %i.uh = load i64, ptr %i.cj, align 8, !alias.scope !4940, !noundef !20 ; 19 uses
  %.val187.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !4940, !nonnull !20, !align !27, !noundef !20 ; 12 uses
  %.val188.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !4940, !noundef !20 ; 14 uses
  %.val.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !4940, !nonnull !20, !align !28, !noundef !20 ; 44 uses
  %.val124.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !4940, !noundef !20 ; 44 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4956)
  call void @llvm.experimental.noalias.scope.decl(metadata !4957)
  call void @llvm.experimental.noalias.scope.decl(metadata !4958)
  call void @llvm.experimental.noalias.scope.decl(metadata !4959)
  call void @llvm.experimental.noalias.scope.decl(metadata !4960)
  call void @llvm.experimental.noalias.scope.decl(metadata !4961)
  call void @llvm.experimental.noalias.scope.decl(metadata !4962)
  %i.ui = load i8, ptr %i.by, align 8, !range !37, !alias.scope !4963, !noundef !20
  %3 = trunc nuw i8 %i.ui to i1
  %i.uj = load i8, ptr %i.bx, align 4, !range !37, !alias.scope !4963
  %4 = trunc nuw i8 %i.uj to i1
  %or.cond.i.i.i.i.i = select i1 %3, i1 true, i1 %4
  %or.cond.not.i.i.i.i.i = xor i1 %or.cond.i.i.i.i.i, true
  %i.uk = load i8, ptr %i.be, align 2, !range !37, !alias.scope !4963
  %i.ul = trunc nuw i8 %i.uk to i1
  %or.cond25.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i, i1 %i.ul, i1 false, !prof !43
  br i1 %or.cond25.i.i.i.i.i, label %bb.ed, label %bb.ee, !prof !43

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1171, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1172) #46, !noalias !4964
  unreachable

bb.ee:                                            ; preds = %bb.ec
  %i.um = trunc i64 %i.tw to i32                  ; 3 uses
  %i.un = icmp ugt i64 %i.tw, 3221225471
  %i.uo = and i32 %i.um, 1073741823
  %i.up = and i32 %i.um, 1073741824
  %reass.sub.i201.i.i.i.i = sub nsw i32 %i.uo, %i.up
  %i.uq = xor i32 %reass.sub.i201.i.i.i.i, -2147483648
  %.sroa.012.0.i.i.i.i.i = select i1 %i.un, i32 %i.uq, i32 %i.um ; 7 uses
  %i.ur = zext nneg i8 %i.ro to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bu, i64 112, i1 false), !noalias !4966
  %i.us = icmp eq i64 %i.ud, 0
  br i1 %i.us, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN6brotli3enc6encode28WriteEmptyLastBlocksInternal17hbf27001cc1f7fee1E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef %.val124.i.i.i.i), !noalias !4967
  br label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.ut = call noundef zeroext i1 @_ZN6brotli3enc6encode15should_compress17he8a685b155995016E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.rd, i64 noundef %i.tw, i64 noundef range(i64 0, 4294967296) %i.ud, i64 noundef %i.ug, i64 noundef %i.uh), !noalias !4964
  br i1 %i.ut, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !alias.scope !4968
  %i.uu = zext i32 %.sroa.012.0.i.i.i.i.i to i64
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h40db7eb2cc54e912E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef %i.uu, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i64 noundef range(i64 0, 4294967296) %i.ud, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef %.val124.i.i.i.i, i1 noundef zeroext false)
  br label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.uv = load i64, ptr %i.aq, align 8, !alias.scope !4961, !noalias !4939, !noundef !20 ; 2 uses
  %i.uw = lshr i64 %i.uv, 3                       ; 3 uses
  %i.ux = add nuw nsw i64 %i.uw, 1                ; 3 uses
  %i.uy = icmp ult i64 %i.ux, %.val124.i.i.i.i
  br i1 %i.uy, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.uz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ux ; 2 uses
  %i.va = load i8, ptr %i.uz, align 1, !alias.scope !4962, !noalias !4946, !noundef !20
  %i.vb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.uw ; 2 uses
  %i.vc = load i8, ptr %i.vb, align 1, !alias.scope !4962, !noalias !4946, !noundef !20
  %i.vd = load i32, ptr %i.bd, align 8, !alias.scope !4963, !noundef !20 ; 4 uses
  %i.ve = icmp slt i32 %i.vd, 3
  br i1 %i.ve, label %bb.em, label %bb.el

bb.ek:                                            ; preds = %bb.ei
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ux, i64 noundef %.val124.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1173) #46, !noalias !4964
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.vf = icmp eq i32 %i.vd, 3
  br i1 %i.vf, label %bb.ey, label %bb.ex

bb.em:                                            ; preds = %bb.ej
  %i.vg = zext i32 %.sroa.012.0.i.i.i.i.i to i64  ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4969)
  call void @llvm.experimental.noalias.scope.decl(metadata !4970)
  call void @llvm.experimental.noalias.scope.decl(metadata !4971)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4972
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.vg, i64 noundef range(i64 1, 4294967296) %i.ud, i64 noundef range(i64 0, 4294967296) %i.rd), !noalias !4973
  %i.vh = load ptr, ptr %i.aj, align 8, !noalias !4972, !nonnull !20, !align !28, !noundef !20
  %i.vi = load i64, ptr %i.ep, align 8, !noalias !4972, !noundef !20
  %i.vj = load ptr, ptr %i.eq, align 8, !noalias !4972, !nonnull !20, !align !28, !noundef !20
  %i.vk = load i64, ptr %i.er, align 8, !noalias !4972, !noundef !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4972
  %i.vl = load i8, ptr %i.ee, align 1, !range !37, !alias.scope !4974, !noundef !20
  %i.vm = trunc nuw i8 %i.vl to i1
  br i1 %i.vm, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.eq, %bb.em
  %i.vn = load i32, ptr %i.eo, align 8, !alias.scope !4974, !noundef !20
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext false, i64 noundef range(i64 1, 4294967296) %i.ud, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  %i.vo = icmp ult i64 %i.uh, 129
  br i1 %i.vo, label %bb.es, label %bb.er

bb.eo:                                            ; preds = %bb.em
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.uh, %.val188.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ep, label %bb.eq, !prof !29

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4972
  store ptr @230, ptr %i.v, align 8, !noalias !4972
  %i.vp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.vp, align 8, !noalias !4972
  %i.vq = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.vq, align 8, !noalias !4972
  %i.vr = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.vr, align 8, !noalias !4972
  %i.vs = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.vs, align 8, !noalias !4972
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @966) #46, !noalias !4973
  unreachable

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4972
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !noalias !4972
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store i64 0, ptr %.sroa.612.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store i32 1, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store ptr inttoptr (i64 4 to ptr), ptr %i.es, align 8, !noalias !4972
  store i64 0, ptr %i.et, align 8, !noalias !4972
  store ptr inttoptr (i64 1 to ptr), ptr %i.eu, align 8, !noalias !4972
  store i64 0, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store i64 0, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store i32 1, ptr %.sroa.717.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store ptr inttoptr (i64 1 to ptr), ptr %i.ev, align 8, !noalias !4972
  store i64 0, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.521.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store i64 0, ptr %.sroa.622.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store i32 1, ptr %.sroa.723.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4972
  store ptr inttoptr (i64 4 to ptr), ptr %i.ew, align 8, !noalias !4972
  store i64 0, ptr %i.ex, align 8, !noalias !4972
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4fb20e584b6a31bbE(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.vh, i64 noundef %i.vi, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.vj, i64 noundef %i.vk, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !4976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4972
  br label %bb.en

bb.er:                                            ; preds = %bb.en
  %i.vt = zext i32 %i.vn to i64
  %i.vu = add nsw i64 %i.vt, -1
  %i.vv = lshr i64 %i.vu, 1
  %i.vw = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.vv, i1 false)
  %i.vx = sub nuw nsw i64 65, %i.vw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ae, i8 0, i64 1032, i1 false), !noalias !4972
  store float 3.402000e+38, ptr %i.ez, align 8, !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ad, i8 0, i64 2824, i1 false), !noalias !4972
  store float 3.402000e+38, ptr %i.fb, align 8, !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ac, i8 0, i64 2184, i1 false), !noalias !4972
  store float 3.402000e+38, ptr %i.fd, align 8, !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ab, i8 0, i64 256, i1 false), !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.aa, i8 0, i64 512, i1 false), !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.z, i8 0, i64 704, i1 false), !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.y, i8 0, i64 1408, i1 false), !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.x, i8 0, i64 140, i1 false), !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.w, i8 0, i64 280, i1 false), !noalias !4972
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.vg, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.ac), !noalias !4975
  %i.vy = load i64, ptr %i.ey, align 8, !noalias !4972, !noundef !20
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ae, i64 noundef 256, i64 noundef %i.vy, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ab, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.aa, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  %i.vz = load i64, ptr %i.fa, align 8, !noalias !4972, !noundef !20
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ad, i64 noundef 704, i64 noundef %i.vz, i64 noundef 10, ptr noalias noundef nonnull align 1 %i.z, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.y, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  %i.wa = load i64, ptr %i.fc, align 8, !noalias !4972, !noundef !20
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ac, i64 noundef 544, i64 noundef %i.wa, i64 noundef %i.vx, ptr noalias noundef nonnull align 1 %i.x, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.vg, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.aa, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.y, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4972
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

bb.es:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ag, i8 0, i64 256, i1 false), !noalias !4972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.af, i8 0, i64 512, i1 false), !noalias !4972
  %.not26.i.i.i.i.i.i = icmp eq i64 %i.uh, 0
  br i1 %.not26.i.i.i.i.i.i, label %._crit_edge14.i.i.i.i.i.i, label %.lr.ph13.i.i.i.i.i.i

.lr.ph13.i.i.i.i.i.i:                             ; preds = %bb.es, %._crit_edge.i.i.i.i.i.i
  %.sroa.027.111.i.i.i.i.i.i = phi i64 [ %.sroa.027.1.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 1, %bb.es ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i.i = phi i64 [ %i.wl, %._crit_edge.i.i.i.i.i.i ], [ %i.vg, %bb.es ] ; 2 uses
  %.sroa.05.09.i.i.i.i.i.i = phi i64 [ %i.wi, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.es ]
  %.sroa.027.08.i.i.i.i.i.i = phi i64 [ %.sroa.027.111.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.es ] ; 3 uses
  %i.wb = icmp ult i64 %.sroa.027.08.i.i.i.i.i.i, %.val188.i.i.i.i
  br i1 %i.wb, label %bb.et, label %bb.eu

._crit_edge14.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i, %bb.es
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.es ], [ %i.wi, %._crit_edge.i.i.i.i.i.i ]
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ah, i64 noundef 256, i64 noundef %.sroa.05.0.lcssa.i.i.i.i.i.i, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ag, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.af, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  call void @_ZN6brotli3enc17brotli_bit_stream29StoreStaticCommandHuffmanTree17h94fc581fe61dfd4aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreStaticDistanceHuffmanTree17h4a629285af6547ffE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.vg, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.af, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticCommandCodeDepth17hc2b64d4d0d432e21E, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants22kStaticCommandCodeBits17h79c541a1c5f86137E, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants24kStaticDistanceCodeDepth17hdb40a6d6b71ad0daE, i64 noundef 64, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticDistanceCodeBits17h6ce7b4025b69c8d0E, i64 noundef 64, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !4975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4972
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

bb.et:                                            ; preds = %.lr.ph13.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@"_ZN6brotli3enc17brotli_bit_stream27MetaBlockSplit$LT$Alloc$GT$7destroy17hefb4cf136a193463E":bb.a
  br i1 %i.p, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i2", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i1"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i1": ; preds = %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.m, i64 noundef %i.o, i64 noundef 1) #45, !noalias !9552
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i2"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i2": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i1", %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9552, !nonnull !20, !align !27, !noundef !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !9552, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.q, align 8, !alias.scope !9552
  store i64 0, ptr %i.s, align 8, !alias.scope !9552
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit4", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i3"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i3": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i2"
  %i.v = shl nuw nsw i64 %i.t, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.r, i64 noundef %i.v, i64 noundef 4) #45, !noalias !9552
  br label %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit4"

"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit4": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i2", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i3"
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !9552
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9553)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !9553, !nonnull !20, !align !28, !noundef !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !9553, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8, !alias.scope !9553
  store i64 0, ptr %i.z, align 8, !alias.scope !9553
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i6", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5": ; preds = %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit4"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.y, i64 noundef %i.aa, i64 noundef 1) #45, !noalias !9553
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i6"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i6": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5", %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit4"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !9553, !nonnull !20, !align !27, !noundef !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !9553, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ac, align 8, !alias.scope !9553
  store i64 0, ptr %i.ae, align 8, !alias.scope !9553
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit8", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i6"
  %i.ah = shl nuw nsw i64 %i.af, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ad, i64 noundef %i.ah, i64 noundef 4) #45, !noalias !9553
  br label %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit8"

"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit8": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i6", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !alias.scope !9553
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !20, !align !27, !noundef !20
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit8"
  %i.ao = shl nuw nsw i64 %i.am, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ak, i64 noundef %i.ao, i64 noundef 4) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit": ; preds = %"_ZN6brotli3enc11block_split23BlockSplit$LT$Alloc$GT$7destroy17h182f3c2f87369063E.exit8", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !20, !align !27, !noundef !20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.aq, align 8
  store i64 0, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit10", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i9"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i9": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit"
  %i.av = shl nuw nsw i64 %i.at, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ar, i64 noundef %i.av, i64 noundef 4) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit10"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit10": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i9"
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !20, !align !31, !noundef !20
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.az, align 8
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i11"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i11": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit10"
  %i.bc = mul nuw nsw i64 %i.ba, 1040
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ay, i64 noundef %i.bc, i64 noundef 8) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit10", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i11"
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !20, !align !31, !noundef !20
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8
  store i64 0, ptr %i.bg, align 8
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i12"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i12": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"
  %i.bj = mul nuw nsw i64 %i.bh, 2832
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.bf, i64 noundef %i.bj, i64 noundef 8) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i12"
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !20, !align !31, !noundef !20
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bn, align 8
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i13"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i13": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit"
  %i.bq = mul nuw nsw i64 %i.bo, 2192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.bm, i64 noundef %i.bq, i64 noundef 8) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i13"
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.br, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h40db7eb2cc54e912E(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10, i1 noundef zeroext %11) unnamed_addr #0 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 22 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %6, i64 noundef %4)
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !align !28, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !20, !align !28, !noundef !20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !20 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream38BrotliStoreUncompressedMetaBlockHeader17hc8eba3681d24f8e1E(i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.k = load i64, ptr %8, align 8, !noundef !20  ; 2 uses
  %i.l = lshr i64 %i.k, 3                         ; 4 uses
  %i.m = add i64 %i.l, %i.f                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %.not22 = icmp ugt i64 %i.m, %10
  %or.cond = or i1 %i.n, %.not22
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.l, i64 noundef %i.m, i64 noundef %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @985) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.d, i64 %i.f, i1 false), !alias.scope !9560
  %i.p = shl i64 %i.f, 3
  %i.q = add i64 %i.k, %i.p                       ; 3 uses
  store i64 %i.q, ptr %8, align 8
  %i.r = lshr i64 %i.q, 3                         ; 4 uses
  %i.s = add i64 %i.r, %i.j                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %.not23 = icmp ugt i64 %i.s, %10
  %or.cond24 = or i1 %i.t, %.not23
  br i1 %or.cond24, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @984) #46
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.h, i64 %i.j, i1 false), !alias.scope !9561
  %i.v = shl i64 %i.j, 3
  %i.w = add i64 %i.q, %i.v                       ; 2 uses
  store i64 %i.w, ptr %8, align 8
  call void @_ZN6brotli3enc17brotli_bit_stream29BrotliWriteBitsPrepareStorage17h3e3bbade587d8cacE(i64 noundef %i.w, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 97
  %i.y = load i8, ptr %i.x, align 1, !range !37, !noundef !20
  %12 = trunc nuw i8 %i.y to i1
  %.not = xor i1 %12, true
  %brmerge = or i1 %11, %.not
  br i1 %brmerge, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.z = trunc i64 %6 to i32
  store i32 %i.z, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %.sroa.75.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %.sroa.710.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 1, ptr %.sroa.716.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.af, align 8
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4fb20e584b6a31bbE(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @983, ptr noalias noundef align 8 dereferenceable(8) %7, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %5, i8 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h8d70584a2b236bb4E(ptr noalias noundef nonnull align 1 %0, i1 noundef zeroext %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11, i1 noundef zeroext %12) unnamed_addr #0 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 22 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef %7, i64 noundef %5)
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !align !28, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !20, !align !28, !noundef !20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !20 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream38BrotliStoreUncompressedMetaBlockHeader17hc8eba3681d24f8e1E(i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.k = load i64, ptr %9, align 8, !noundef !20  ; 2 uses
  %i.l = lshr i64 %i.k, 3                         ; 4 uses
  %i.m = add i64 %i.l, %i.f                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %.not22 = icmp ugt i64 %i.m, %11
  %or.cond = or i1 %i.n, %.not22
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.l, i64 noundef %i.m, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @985) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.d, i64 %i.f, i1 false), !alias.scope !9568
  %i.p = shl i64 %i.f, 3
  %i.q = add i64 %i.k, %i.p                       ; 3 uses
  store i64 %i.q, ptr %9, align 8
  %i.r = lshr i64 %i.q, 3                         ; 4 uses
  %i.s = add i64 %i.r, %i.j                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %.not23 = icmp ugt i64 %i.s, %11
  %or.cond24 = or i1 %i.t, %.not23
  br i1 %or.cond24, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @984) #46
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.h, i64 %i.j, i1 false), !alias.scope !9569
  %i.v = shl i64 %i.j, 3
  %i.w = add i64 %i.q, %i.v                       ; 2 uses
  store i64 %i.w, ptr %9, align 8
  call void @_ZN6brotli3enc17brotli_bit_stream29BrotliWriteBitsPrepareStorage17h3e3bbade587d8cacE(i64 noundef %i.w, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 97
  %i.y = load i8, ptr %i.x, align 1, !range !37, !noundef !20
  %13 = trunc nuw i8 %i.y to i1
  %.not = xor i1 %13, true
  %brmerge = or i1 %12, %.not
  br i1 %brmerge, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.g
  br i1 %1, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.z = trunc i64 %7 to i32
  store i32 %i.z, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %.sroa.75.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %.sroa.710.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 1, ptr %.sroa.716.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.af, align 8
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4564c46130fee7a0E(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @983, ptr noalias noundef align 8 dereferenceable(8) %8, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i8 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.f
  ret void

bb.i:                                             ; preds = %bb.f
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 256, 705) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef nonnull align 1 %4, i64 noundef range(i64 140, 705) %5, ptr noalias noundef nonnull align 2 %6, i64 noundef range(i64 140, 705) %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge:                                      ; preds = %bb.bf
  %i.c = icmp ult i64 %.sroa.0.1, 2
  br i1 %i.c, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %bb.bf
  %exitcond.not = icmp eq i64 %i.fr, %1
  br i1 %exitcond.not, label %bb.bd, label %.lr.ph.preheader

bb.b:                                             ; preds = %._crit_edge
  %.not.not = icmp samesign ult i64 %.sroa.010.0137458, %5
  br i1 %.not.not, label %._crit_edge144, label %bb.c, !prof !64

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 4, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.d = trunc i64 %3 to i8
  %i.e = load i64, ptr %i.a, align 8, !noundef !20 ; 7 uses
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.d, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.f = icmp ult i64 %i.e, %5
  br i1 %i.f, label %bb.az, label %bb.ba

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fr, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1006) #46
  unreachable

._crit_edge144:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %4, i8 0, i64 %i.fr, i1 false)
  %i.g = shl nuw nsw i64 %i.fr, 1                 ; 13 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 20 uses
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9580
  %i.j = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 4) #45, !noalias !9580 ; 28 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN6brotli3enc14combined_alloc8alloc_if17h63db6b6a0d847169E.exit

bb.d:                                             ; preds = %._crit_edge144
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !9581
  unreachable

_ZN6brotli3enc14combined_alloc8alloc_if17h63db6b6a0d847169E.exit: ; preds = %._crit_edge144
  %i.l = add nsw i64 %i.i, -8                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.l, i1 false), !noalias !9582
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.l
  store i64 0, ptr %scevgep.i.i, align 4, !noalias !9582
  %.first_iter = icmp samesign ult i64 %.sroa.010.0137458, %1
  %i.m = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  br label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h63db6b6a0d847169E.exit, %bb.n
  %.sroa.024.0 = phi i32 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17h63db6b6a0d847169E.exit ], [ %i.az, %bb.n ] ; 3 uses
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.aw
  %.sroa.027.0146 = phi i32 [ %.sroa.027.2, %bb.aw ], [ 0, %.lr.ph148.preheader ] ; 3 uses
  %.sroa.037.0145 = phi i64 [ %i.n, %bb.aw ], [ %i.fr, %.lr.ph148.preheader ]
  %i.n = add nsw i64 %.sroa.037.0145, -1          ; 5 uses
  br i1 %.first_iter, label %bb.av, label %.invoke

._crit_edge149:                                   ; preds = %bb.aw
  %i.o = add i32 %.sroa.027.2, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.p = sext i32 %.sroa.027.2 to i64             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9583)
  %i.q = icmp ult i32 %.sroa.027.2, 13
  br i1 %i.q, label %.preheader.split.i, label %bb.e

.preheader.split.i:                               ; preds = %._crit_edge149
  %i.r = icmp samesign ugt i32 %.sroa.027.2, 1
  br i1 %i.r, label %.lr.ph66.i, label %.loopexit42

bb.e:                                             ; preds = %._crit_edge149
  %i.s = icmp ult i32 %.sroa.027.2, 57
  %i.t = select i1 %i.s, i64 2, i64 0
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge63.i, %bb.e
  %indvars.iv.i = phi i64 [ %i.t, %bb.e ], [ %indvars.iv.next.i, %._crit_edge63.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc14entropy_encode20SortHuffmanTreeItems4gaps17ha345c21f8c53bdffE, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !9583, !noundef !20 ; 5 uses
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %.lr.ph62.preheader.i, label %._crit_edge63.i

.lr.ph62.preheader.i:                             ; preds = %bb.f
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.h) ; 2 uses
  br label %.lr.ph62.i

._crit_edge63.i:                                  ; preds = %bb.h, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond82.not.i, label %.loopexit42, label %bb.f

.lr.ph62.i:                                       ; preds = %bb.h, %.lr.ph62.preheader.i
  %.sroa.025.060.i = phi i64 [ %i.x, %bb.h ], [ %i.v, %.lr.ph62.preheader.i ] ; 4 uses
  %i.x = add i64 %.sroa.025.060.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.025.060.i, %umax.i
  br i1 %exitcond.not.i, label %.invoke, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph62.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.025.060.i
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !9583 ; 2 uses
  %.sroa.038.0.extract.trunc.i = trunc i64 %i.z to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.015.057.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.025.060.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = sub nuw i64 %.sroa.015.057.i, %i.v      ; 6 uses
  %.not26 = icmp ugt i64 %i.aa, %i.g
  br i1 %.not26, label %.invoke, label %bb.g

._crit_edge.i:                                    ; preds = %bb.i, %bb.g
  %.sroa.015.0.lcssa.ph.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.015.057.i, %bb.g ] ; 3 uses
  %.not27 = icmp ugt i64 %.sroa.015.0.lcssa.ph.i, %i.g
  br i1 %.not27, label %.invoke, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %.val35.i = load i32, ptr %i.ab, align 4, !alias.scope !9583, !noundef !20
  %i.ac = icmp ugt i32 %.val35.i, %.sroa.038.0.extract.trunc.i
  br i1 %i.ac, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.0.lcssa.ph.i
  store i64 %i.z, ptr %i.ad, align 4, !alias.scope !9583
  %exitcond80.not.i = icmp eq i64 %i.x, %i.p
  br i1 %exitcond80.not.i, label %._crit_edge63.i, label %.lr.ph62.i

bb.i:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2_@"_ZN81_$LT$actix_http..h1..codec.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h4b3e861ef0b8a524E":.peel.begin
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !12528, !noundef !20
  %i.m = and i8 %i.e, %i.j
  %i.n = load ptr, ptr %.lcssa56.peel, align 8, !noalias !12528, !nonnull !20, !align !28, !noundef !20
  %i.o = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.l)
  br i1 %i.o, label %_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.ap, %bb.h ], [ %i.m, %bb.a ] ; 9 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 5 uses
  %i.p = icmp ult i64 %.sroa.7.0.i, 3
  br i1 %i.p, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.q = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.q, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12527
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %.sroa.7.0.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val.i.i = load i8, ptr %i.t, align 8, !noalias !12528, !noundef !20 ; 4 uses
  %i.u = and i8 %.val.i.i, %i.e
  %i.v = icmp eq i8 %i.u, %.val.i.i
  %i.w = and i8 %.val.i.i, %.sroa.13.0.i
  %i.x = icmp ne i8 %i.w, 0
  %or.cond.i.i = and i1 %i.x, %i.v
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.s, 3
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.y = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %i.s ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.7.0.i, 2          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.i.1 = load i8, ptr %i.aa, align 8, !noalias !12528, !noundef !20 ; 4 uses
  %i.ab = and i8 %.val.i.i.1, %i.e
  %i.ac = icmp eq i8 %i.ab, %.val.i.i.1
  %i.ad = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ae = icmp ne i8 %i.ad, 0
  %or.cond.i.i.1 = and i1 %i.ae, %i.ac
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.z, 3
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr @1468, i64 %i.z ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.7.0.i, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val.i.i.2 = load i8, ptr %i.ah, align 8, !noalias !12528, !noundef !20 ; 4 uses
  %i.ai = and i8 %.val.i.i.2, %i.e
  %i.aj = icmp eq i8 %i.ai, %.val.i.i.2
  %i.ak = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.al = icmp ne i8 %i.ak, 0
  %or.cond.i.i.2 = and i1 %i.al, %i.aj
  br i1 %or.cond.i.i.2, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ] ; 2 uses
  %.lcssa = phi i64 [ %i.s, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.split.i.i.1 ], [ %i.ag, %.lr.ph.split.i.i.2 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !12528, !noundef !20
  %i.ao = xor i8 %.val.i.i.lcssa, -1
  %i.ap = and i8 %.sroa.13.0.i, %i.ao
  %i.aq = load ptr, ptr %.lcssa56, align 8, !noalias !12528, !nonnull !20, !align !28, !noundef !20
  %i.ar = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1477, i64 noundef 3)
  br i1 %i.ar, label %_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.2.peel, %.backedge.i.i, %.backedge.i.i.1
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.2 ], [ %i.e, %.lr.ph.split.i.i.2.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.1 ], [ false, %.lr.ph.split.i.i.2 ], [ true, %.lr.ph.split.i.i.2.peel ], [ false, %.backedge.i.i ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12527
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !12527
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1477, i64 noundef 3)
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.at = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1476, i64 noundef 2)
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12527
  store ptr %i.d, ptr %i.c, align 8, !noalias !12530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12530
  store ptr %i.c, ptr %i.b, align 8, !noalias !12530
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h1c07ef27057e1eafE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !12530
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !12531, !noalias !12532, !nonnull !20, !noundef !20
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !12531, !noalias !12532, !nonnull !20, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12533
  store ptr @145, ptr %i.a, align 8, !noalias !12530
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !12530
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !12530
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !12530
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !12530
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12527
  br i1 %i.av, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12527
  br label %_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit

bb.h:                                             ; preds = %bb.b
  %i.aw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aq, i64 noundef %i.an)
  br i1 %i.aw, label %_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit, label %.peel.newph, !llvm.loop !12526

_ZN8bitflags6parser9to_writer17hfba52ccb135d91b7E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$actix_http..h1..payload..Payload$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hb6c300d4d5267b39E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca [39 x i8], align 1          ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !20, !noundef !20 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !20
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.s, !prof !30

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8
  %.val = load ptr, ptr %2, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12556)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12557)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !12558, !noundef !20 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.thread.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.i": ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !12558, !noundef !20 ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !range !32, !alias.scope !12558, !noundef !20 ; 3 uses
  %.not.i.i = icmp ult i64 %i.l, %i.m
  %i.n = select i1 %.not.i.i, i64 0, i64 %i.m
  %.sroa.0.0.i.i = sub nuw i64 %i.l, %i.n
  store i64 %.sroa.0.0.i.i, ptr %i.j, align 8, !alias.scope !12558
  %i.o = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !12558
  %i.p = icmp ult i64 %i.o, %i.m
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !12558, !nonnull !20, !noundef !20
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.s, align 8, !noalias !12559 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1.i, null
  br i1 %.not.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.thread.i", label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12560
  store ptr %.sroa.0.0.copyload1.i, ptr %i.a, align 8, !noalias !12560
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2.i, i64 24, i1 false), !noalias !12560
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noalias !12560, !noundef !20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !12556, !noundef !20
  %i.x = sub i64 %i.w, %i.u                       ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !12556
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %i.z = icmp ult i64 %i.x, 32768                 ; 2 uses
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %i.y, align 1, !alias.scope !12556
  %.not5.i = xor i1 %i.z, true
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ac = load i8, ptr %i.ab, align 8, !range !37, !alias.scope !12556
  %3 = trunc nuw i8 %i.ac to i1
  %or.cond.i = select i1 %.not5.i, i1 true, i1 %3
  br i1 %or.cond.i, label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i, label %bb.e

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.thread.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.i", %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.03.0.copyload.i = load i8, ptr %i.ad, align 8, !alias.scope !12556 ; 2 uses
  store i8 11, ptr %i.ad, align 8, !alias.scope !12556
  %.not17.i = icmp eq i8 %.sroa.03.0.copyload.i, 11
  br i1 %.not17.i, label %bb.l, label %bb.k

_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i: ; preds = %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i.i", %bb.f, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12561)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !12562, !align !31, !noundef !20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !12562
  store ptr null, ptr %i.ae, align 8, !alias.scope !12562
  %.not.i19.i = icmp eq ptr %i.af, null
  br i1 %.not.i19.i, label %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !12563, !nonnull !20, !noundef !20
  invoke void %i.aj(ptr noundef %i.ah)
          to label %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit.i unwind label %bb.i, !noalias !12560, !inline_history !12542

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12564)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !12565, !align !31, !noundef !20 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %.not.i20.i = icmp eq ptr %i.al, null
  %.pre.i.i = load ptr, ptr %.val, align 8, !noalias !12566 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre1.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !12566 ; 3 uses
  br i1 %.not.i20.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %bb.e
  %i.an = load ptr, ptr %.pre.i.i, align 8, !noalias !12566, !nonnull !20, !noundef !20
  %i.ao = invoke { ptr, ptr } %i.an(ptr noundef %.pre1.i.i)
          to label %.noexc21.i unwind label %bb.i, !noalias !12560, !inline_history !12545 ; 2 uses

.noexc21.i:                                       ; preds = %.thread.i.i
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ao, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i.i"

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.am, align 8, !alias.scope !12565, !noundef !20 ; 2 uses
  %i.as = icmp ne ptr %.pre1.i.i, %i.ar
  %i.at = icmp ne ptr %.pre.i.i, %i.al
  %or.cond.i.i = or i1 %i.at, %i.as
  br i1 %or.cond.i.i, label %bb.g, label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %.pre.i.i, align 8, !noalias !12566, !nonnull !20, !noundef !20
  %i.av = invoke { ptr, ptr } %i.au(ptr noundef %.pre1.i.i)
          to label %.noexc22.i unwind label %bb.i, !noalias !12560, !inline_history !12545 ; 2 uses

.noexc22.i:                                       ; preds = %bb.g
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 3 uses
  %i.ax = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !12566, !nonnull !20, !noundef !20
  invoke void %i.az(ptr noundef %i.ar)
          to label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i.i" unwind label %bb.h, !noalias !12566, !inline_history !0

bb.h:                                             ; preds = %.noexc22.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aw, ptr %i.ak, align 8, !alias.scope !12565
  store ptr %i.ax, ptr %i.am, align 8, !alias.scope !12565
  br label %.body.i

"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i.i": ; preds = %.noexc22.i, %.noexc21.i
  %i.bb = phi ptr [ %i.aq, %.noexc21.i ], [ %i.ax, %.noexc22.i ]
  %i.bc = phi ptr [ %i.ap, %.noexc21.i ], [ %i.aw, %.noexc22.i ]
  store ptr %i.bc, ptr %i.ak, align 8, !alias.scope !12565
  store ptr %i.bb, ptr %i.am, align 8, !alias.scope !12565
  br label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i

bb.i:                                             ; preds = %bb.g, %.thread.i.i, %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.ba, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12568)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !12569, !nonnull !20, !noundef !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bh = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !12570, !noalias !12560, !noundef !20
  invoke void %i.bf(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bh, i64 noundef %i.u)
          to label %bb.v unwind label %bb.j, !noalias !12560, !inline_history !38

_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit.i: ; preds = %bb.d, %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit.i
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !12560
  store i8 11, ptr %0, align 8, !alias.scope !12555
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.i, i64 39, i1 false), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12560
  br label %bb.u

bb.j:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !12560
  unreachable

bb.k:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.thread.i"
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.0..sroa_idx.i, i64 39, i1 false), !alias.scope !12560
  store i8 %.sroa.03.0.copyload.i, ptr %0, align 8, !alias.scope !12555
  br label %bb.u

bb.l:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hd3a7fc5399015439E.exit.thread.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bk = load i8, ptr %i.bj, align 8, !range !37, !alias.scope !12556, !noundef !20
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  store i8 1, ptr %i.bm, align 1, !alias.scope !12556
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12571)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !12572, !align !31, !noundef !20 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %.not.i24.i = icmp eq ptr %i.bo, null
  %.pre.i25.i = load ptr, ptr %.val, align 8, !noalias !12573 ; 3 uses
  %.phi.trans.insert.i26.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre1.i27.i = load ptr, ptr %.phi.trans.insert.i26.i, align 8, !noalias !12573 ; 3 uses
  br i1 %.not.i24.i, label %.thread.i31.i, label %bb.n

.thread.i31.i:                                    ; preds = %bb.m
  %i.bq = load ptr, ptr %.pre.i25.i, align 8, !noalias !12573, !nonnull !20, !noundef !20
  %i.br = invoke { ptr, ptr } %i.bq(ptr noundef %.pre1.i27.i)
          to label %.noexc unwind label %bb.t, !inline_history !12552 ; 2 uses

.noexc:                                           ; preds = %.thread.i31.i
  %i.bs = extractvalue { ptr, ptr } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { ptr, ptr } %i.br, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i30.i"

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bp, align 8, !alias.scope !12572, !noundef !20 ; 2 uses
  %i.bv = icmp ne ptr %.pre1.i27.i, %i.bu
  %i.bw = icmp ne ptr %.pre.i25.i, %i.bo
  %or.cond.i28.i = or i1 %i.bw, %i.bv
  br i1 %or.cond.i28.i, label %bb.o, label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit32.i

bb.o:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %.pre.i25.i, align 8, !noalias !12573, !nonnull !20, !noundef !20
  %i.by = invoke { ptr, ptr } %i.bx(ptr noundef %.pre1.i27.i)
          to label %.noexc5 unwind label %bb.t, !inline_history !12552 ; 2 uses

.noexc5:                                          ; preds = %bb.o
  %i.bz = extractvalue { ptr, ptr } %i.by, 0      ; 3 uses
  %i.ca = extractvalue { ptr, ptr } %i.by, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !12573, !nonnull !20, !noundef !20
  invoke void %i.cc(ptr noundef %i.bu)
          to label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i30.i" unwind label %bb.p, !noalias !12573, !inline_history !0

bb.p:                                             ; preds = %.noexc5
  %i.cd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bz, ptr %i.bn, align 8, !alias.scope !12572
  store ptr %i.ca, ptr %i.bp, align 8, !alias.scope !12572
  br label %bb.v

"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i30.i": ; preds = %.noexc5, %.noexc
  %i.ce = phi ptr [ %i.bt, %.noexc ], [ %i.ca, %.noexc5 ]
  %i.cf = phi ptr [ %i.bs, %.noexc ], [ %i.bz, %.noexc5 ]
  store ptr %i.cf, ptr %i.bn, align 8, !alias.scope !12572
  store ptr %i.ce, ptr %i.bp, align 8, !alias.scope !12572
  br label %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit32.i

_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit32.i: ; preds = %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$17h568f55af7e93b3e9E.exit.i30.i", %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12574)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !12575, !align !31, !noundef !20 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !12575
  store ptr null, ptr %i.cg, align 8, !alias.scope !12575
  %.not.i33.i = icmp eq ptr %i.ch, null
  br i1 %.not.i33.i, label %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit34.i, label %bb.q

bb.q:                                             ; preds = %_ZN10actix_http2h17payload5Inner8register17hc8e689070eaf2c53E.exit32.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !12576, !nonnull !20, !noundef !20
  invoke void %i.cl(ptr noundef %i.cj)
          to label %_ZN10actix_http2h17payload5Inner7wake_io17h2fd40e0a0b772e87E.exit34.i unwind label %bb.t, !inline_history !12552

end_hunk_2
