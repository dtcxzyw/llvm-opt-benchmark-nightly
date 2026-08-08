inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.xg = insertelement <8 x i16> %i.xf, i16 %i.wx, i64 6
  %i.xh = insertelement <8 x i16> %i.xg, i16 %i.wz, i64 7
  %i.xi = icmp eq <8 x i16> %i.un, %broadcast.splat
  %i.xj = icmp eq <8 x i16> %i.vl, %broadcast.splat
  %i.xk = icmp eq <8 x i16> %i.wj, %broadcast.splat
  %i.xl = icmp eq <8 x i16> %i.xh, %broadcast.splat
  %i.xm = zext <8 x i1> %i.xi to <8 x i64>
  %i.xn = zext <8 x i1> %i.xj to <8 x i64>
  %i.xo = zext <8 x i1> %i.xk to <8 x i64>
  %i.xp = zext <8 x i1> %i.xl to <8 x i64>
  %i.xq = add <8 x i64> %vec.phi, %i.xm           ; 2 uses
  %i.xr = add <8 x i64> %vec.phi1200, %i.xn       ; 2 uses
  %i.xs = add <8 x i64> %vec.phi1201, %i.xo       ; 2 uses
  %i.xt = add <8 x i64> %vec.phi1202, %i.xp       ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 2304
  %i.xu = icmp eq i64 %index.next, %n.vec
  br i1 %i.xu, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.xr, %i.xq
  %bin.rdx1209 = add <8 x i64> %i.xs, %bin.rdx
  %bin.rdx1210 = add <8 x i64> %i.xt, %bin.rdx1209
  %i.xv = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx1210) ; 3 uses
  %cmp.n = icmp eq i64 %i.tm, %n.vec
  br i1 %cmp.n, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !345

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.xv, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.tp, %vec.epilog.iter.check ], [ %i.th, %vector.main.loop.iter.check ]
  %n.vec1211 = and i64 %i.tm, 576460752303423480  ; 3 uses
  %i.xw = mul i64 %n.vec1211, 72
  %i.xx = getelementptr i8, ptr %i.th, i64 %i.xw
  %i.xy = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert1212 = insertelement <8 x i16> poison, i16 %i.sz, i64 0
  %broadcast.splat1213 = shufflevector <8 x i16> %broadcast.splatinsert1212, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1214 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1220, %vec.epilog.vector.body ]
  %vec.phi1215 = phi <8 x i64> [ %i.xy, %vec.epilog.ph ], [ %i.yz, %vec.epilog.vector.body ]
  %pointer.phi1216 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind1221, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep1217 = getelementptr i8, ptr %pointer.phi1216, <8 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504>
  %wide.gep1218 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1217, i64 48
  %wide.masked.gather1219 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep1218, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !189 ; 8 uses
  %i.xz = extractelement <8 x ptr> %wide.masked.gather1219, i64 0
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !234
  %i.yb = extractelement <8 x ptr> %wide.masked.gather1219, i64 1
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !234
  %i.yd = extractelement <8 x ptr> %wide.masked.gather1219, i64 2
  %i.ye = load i16, ptr %i.yd, align 2, !tbaa !234
  %i.yf = extractelement <8 x ptr> %wide.masked.gather1219, i64 3
  %i.yg = load i16, ptr %i.yf, align 2, !tbaa !234
  %i.yh = extractelement <8 x ptr> %wide.masked.gather1219, i64 4
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !234
  %i.yj = extractelement <8 x ptr> %wide.masked.gather1219, i64 5
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !234
  %i.yl = extractelement <8 x ptr> %wide.masked.gather1219, i64 6
  %i.ym = load i16, ptr %i.yl, align 2, !tbaa !234
  %i.yn = extractelement <8 x ptr> %wide.masked.gather1219, i64 7
  %i.yo = load i16, ptr %i.yn, align 2, !tbaa !234
  %i.yp = insertelement <8 x i16> poison, i16 %i.ya, i64 0
  %i.yq = insertelement <8 x i16> %i.yp, i16 %i.yc, i64 1
  %i.yr = insertelement <8 x i16> %i.yq, i16 %i.ye, i64 2
  %i.ys = insertelement <8 x i16> %i.yr, i16 %i.yg, i64 3
  %i.yt = insertelement <8 x i16> %i.ys, i16 %i.yi, i64 4
  %i.yu = insertelement <8 x i16> %i.yt, i16 %i.yk, i64 5
  %i.yv = insertelement <8 x i16> %i.yu, i16 %i.ym, i64 6
  %i.yw = insertelement <8 x i16> %i.yv, i16 %i.yo, i64 7
  %i.yx = icmp eq <8 x i16> %i.yw, %broadcast.splat1213
  %i.yy = zext <8 x i1> %i.yx to <8 x i64>
  %i.yz = add <8 x i64> %vec.phi1215, %i.yy       ; 2 uses
  %index.next1220 = add nuw i64 %index1214, 8     ; 2 uses
  %ptr.ind1221 = getelementptr i8, ptr %pointer.phi1216, i64 576
  %i.za = icmp eq i64 %index.next1220, %n.vec1211
  br i1 %i.za, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !346

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.zb = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.yz) ; 2 uses
  %cmp.n1222 = icmp eq i64 %i.tm, %n.vec1211
  br i1 %cmp.n1222, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.xv, %vec.epilog.iter.check ], [ %i.zb, %vec.epilog.middle.block ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.th, %iter.check ], [ %i.tp, %vec.epilog.iter.check ], [ %i.xx, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %spec.select.i.i497, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.zh, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 48
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !189
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !234
  %i.zf = icmp eq i16 %i.ze, %i.sz
  %i.zg = zext i1 %i.zf to i64
  %spec.select.i.i497 = add nuw nsw i64 %.07.i.i, %i.zg ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 72 ; 2 uses
  %.not.i.i498 = icmp eq ptr %i.zh, %i.tg
  br i1 %.not.i.i498, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit, label %.lr.ph.i.i, !llvm.loop !347

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %spec.select.i.i497.lcssa = phi i64 [ %i.zb, %vec.epilog.middle.block ], [ %i.xv, %middle.block ], [ %spec.select.i.i497, %.lr.ph.i.i ]
  %i.zi = icmp eq i64 %spec.select.i.i497.lcssa, 0
  br i1 %i.zi, label %.backedge, label %bb.bv

bb.bv:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.zj = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.zj, ptr %i.r, align 8, !tbaa !319
  %i.zk = load i64, ptr %i.s, align 64, !tbaa !64
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %bb.bw, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

bb.bw:                                            ; preds = %bb.bv
  %i.zm = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.zn = icmp ugt i64 %i.zm, 10000000
  br i1 %i.zn, label %bb.bx, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

bb.bx:                                            ; preds = %bb.bw
  %i.zo = load ptr, ptr %i.ru, align 32, !tbaa !114
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 112
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !194, !nonnull !48, !align !49 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  store i32 %.4740.ph1007, ptr %14, align 8, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.zr = load i8, ptr %i.rw, align 1, !tbaa !243, !range !221, !noundef !48
  %i.zs = trunc nuw i8 %i.zr to i1
  call void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i16 %i.sz, i1 noundef zeroext %i.zs) #33
  %i.zt = load ptr, ptr %15, align 8, !tbaa !230
  %i.zu = load i64, ptr %i.rx, align 8, !tbaa !228
  store i64 %i.zu, ptr %i.rv, align 8
  store ptr %i.zt, ptr %i.ry, align 8
  %i.zv = load i64, ptr %i.bk, align 8, !tbaa !270
  %i.zw = add i64 %i.zv, %indvars.iv.next
  store i64 %i.zw, ptr %i.rz, align 8, !tbaa !350
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zq, i64 80
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !215
  %.not.i.i499 = icmp eq ptr %i.zy, null
  br i1 %.not.i.i499, label %bb.by, label %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit

bb.by:                                            ; preds = %bb.bx
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit: ; preds = %bb.bx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zq, i64 64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zq, i64 88
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !351
  call void %i.aab(ptr noundef nonnull align 8 dereferenceable(32) %i.zz, ptr noundef nonnull align 8 dereferenceable(32) %14) #33, !inline_history !353
  %i.aac = load ptr, ptr %15, align 8, !tbaa !230 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.sa
  br i1 %i.aad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit
  %i.aae = load i64, ptr %i.sa, align 8, !tbaa !130
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aaf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bw, %bb.bv
  store ptr null, ptr %i.sb, align 8, !tbaa !254
  %i.aag = and i16 %i.sz, 63
  %i.aah = zext nneg i16 %i.aag to i64            ; 6 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 %i.aah ; 2 uses
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !330
  %i.aak = icmp ne i8 %i.aaj, 0
  %.not.i.i500 = icmp ult i16 %i.sz, -16384       ; 2 uses
  %or.cond.not.i.i501 = and i1 %.not.i.i500, %i.aak
  %i.aal = icmp slt i16 %i.sz, -16384             ; 2 uses
  %spec.select.i.i502 = or i1 %i.aal, %or.cond.not.i.i501
  %i.aam = and i16 %i.sz, 12288
  %i.aan = icmp eq i16 %i.aam, 12288              ; 2 uses
  %i.aao = or i1 %i.aan, %spec.select.i.i502      ; 2 uses
  %i.aap = lshr i16 %i.sz, 6
  %i.aaq = and i16 %i.aap, 63
  %i.aar = zext nneg i16 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !330 ; 3 uses
  %i.aau = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz) #33
  %i.aav = add nsw i32 %.4740.ph1007, -1          ; 8 uses
  %i.aaw = sub nsw i32 %4, %.0369.ph1010
  %i.aax = sext i32 %.4740.ph1007 to i64
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.aax
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !138
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !138
  %i.abc = mul nsw i32 %i.abb, %i.aaz             ; 2 uses
  %i.abd = mul nsw i32 %i.aaw, 608
  %i.abe = load i32, ptr %i.se, align 8, !tbaa !275
  %i.abf = sdiv i32 %i.abd, %i.abe
  %i.abg = mul nsw i32 %i.abc, 119
  %i.abh = sdiv i32 %i.abg, 256
  %i.abi = select i1 %i.sc, i32 0, i32 %i.abh
  %i.abj = add i32 %i.abc, 1182
  %i.abk = sub i32 %i.abj, %i.abf
  %i.abl = add i32 %i.abk, %i.abi                 ; 2 uses
  %i.abm = load i8, ptr %i.ct, align 1, !tbaa !329, !range !221, !noundef !48
  %i.abn = trunc nuw i8 %i.abm to i1
  %i.abo = add nsw i32 %i.abl, 946
  %spec.select468 = select i1 %i.abn, i32 %i.abo, i32 %i.abl ; 2 uses
  %i.abp = load i8, ptr %i.aai, align 1, !tbaa !330
  %i.abq = load atomic i64, ptr %i.rt monotonic, align 8
  %i.abr = add i64 %i.abq, 1
  store atomic i64 %i.abr, ptr %i.rt monotonic, align 8
  %i.abs = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.sf) #33 ; 2 uses
  %i.abt = extractvalue { ptr, ptr } %i.abs, 0    ; 2 uses
  %i.abu = extractvalue { ptr, ptr } %i.abs, 1
  %i.abv = load ptr, ptr %i.bd, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.abw = load ptr, ptr %i.de, align 8, !tbaa !139, !nonnull !48, !align !49
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz, ptr noundef nonnull align 8 dereferenceable(192) %8, i1 noundef zeroext %i.aau, ptr noundef nonnull align 1 dereferenceable(7) %i.abt, ptr noundef nonnull align 8 dereferenceable(416) %i.abu, ptr noundef nonnull %i.abv, ptr noundef nonnull %i.abw) #33
  %i.abx = icmp ne i8 %i.abp, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i500, %i.abx
  %spec.select.i.i.i = or i1 %i.aal, %or.cond.not.i.i.i
  %i.aby = or i1 %i.aan, %spec.select.i.i.i
  store i16 %i.sz, ptr %i.sg, align 4, !tbaa !191
  %i.abz = load i8, ptr %i.k, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aca = zext nneg i8 %i.abz to i64
  %i.acb = getelementptr inbounds nuw [4194304 x i8], ptr %i.sh, i64 %i.aca
  %i.acc = zext i1 %i.aby to i64
  %i.acd = getelementptr inbounds nuw [2097152 x i8], ptr %i.acb, i64 %i.acc
  %i.ace = load i8, ptr %i.abt, align 1, !tbaa !340
  %i.acf = zext i8 %i.ace to i64                  ; 2 uses
  %i.acg = getelementptr inbounds nuw [131072 x i8], ptr %i.acd, i64 %i.acf
  %i.ach = getelementptr inbounds nuw [2048 x i8], ptr %i.acg, i64 %i.aah
  store ptr %i.ach, ptr %i.si, align 8, !tbaa !247
  %i.aci = getelementptr inbounds nuw [131072 x i8], ptr %i.sj, i64 %i.acf
  %i.acj = getelementptr inbounds nuw [2048 x i8], ptr %i.aci, i64 %i.aah
  store ptr %i.acj, ptr %i.sk, align 8, !tbaa !251
  %i.ack = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.acl = load i8, ptr %i.ct, align 1, !tbaa !329, !range !221, !noundef !48
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.acn = load i32, ptr %i.co, align 4, !tbaa !326
  %i.aco = icmp sgt i32 %i.acn, %.0369.ph1010
  %.neg439 = select i1 %i.aco, i32 -4624, i32 -3702
  %i.acp = load i32, ptr %i.sl, align 4, !tbaa !341
  %.not438 = icmp slt i32 %i.acp, %.4740.ph1007
  %.neg441 = select i1 %.not438, i32 0, i32 %.neg440
  %.neg442 = add i32 %.neg439, %spec.select468
  %i.acq = add i32 %.neg442, %.neg441
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %.1393 = phi i32 [ %i.acq, %bb.bz ], [ %spec.select468, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit ]
  %.neg443 = mul i32 %i.zj, -73
  %i.acr = load i16, ptr %i.bg, align 8           ; 2 uses
  %.not935 = icmp eq i16 %i.acr, 0                ; 2 uses
  %i.acs = select i1 %.not935, i32 4369, i32 3372
  %i.act = select i1 %6, i32 %i.acs, i32 0
  %.reass.reass = add i32 %.neg443, %invariant.op
  %i.acu = add i32 %.reass.reass, %.1393
  %.2394 = add nsw i32 %i.acu, %i.act             ; 2 uses
  %i.acv = add nsw i32 %.2394, 1119
  %spec.select469 = select i1 %i.dd, i32 %i.acv, i32 %.2394
  %i.acw = load i32, ptr %i.so, align 8, !tbaa !324 ; 2 uses
  %i.acx = icmp sgt i32 %i.acw, 1
  %.not444 = icmp eq i32 %i.acw, 2
  %i.acy = select i1 %.not444, i32 256, i32 1280
  %i.acz = select i1 %i.acx, i32 %i.acy, i32 0
  %.4396 = add nsw i32 %spec.select469, %i.acz    ; 2 uses
  %i.ada = icmp eq i16 %i.sz, %i.acr
  %i.adb = add nsw i32 %.4396, -2151
  %.5397 = select i1 %i.ada, i32 %i.adb, i32 %.4396
  br i1 %i.aao, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.adc = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 184
  %i.ade = load i8, ptr %i.add, align 8, !tbaa !318 ; 2 uses
  %i.adf = zext i8 %i.ade to i64
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.adf
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !138
  %i.adi = mul nsw i32 %i.adh, 217
  %i.adj = sdiv i32 %i.adi, 32
  %i.adk = zext i8 %i.aat to i64
  %i.adl = getelementptr inbounds nuw [1024 x i8], ptr %i.ro, i64 %i.adk
  %i.adm = getelementptr inbounds nuw [16 x i8], ptr %i.adl, i64 %i.aah
  %i.adn = and i8 %i.ade, 7
  %i.ado = zext nneg i8 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [2 x i8], ptr %i.adm, i64 %i.ado
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.adq = zext i16 %i.sz to i64
  %i.adr = getelementptr inbounds nuw [2 x i8], ptr %i.sq, i64 %i.adq
  %i.ads = load i16, ptr %i.adr, align 2, !tbaa !132
  %i.adt = sext i16 %i.ads to i32
  %i.adu = shl nsw i32 %i.adt, 1
  %i.adv = load ptr, ptr %i.a, align 16, !tbaa !342
  %i.adw = zext i8 %i.aat to i64                  ; 2 uses
  %i.adx = getelementptr inbounds nuw [128 x i8], ptr %i.adv, i64 %i.adw
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %i.aah
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !167
  %i.aea = sext i16 %i.adz to i32
  %i.aeb = add nsw i32 %i.adu, %i.aea
  %i.aec = load ptr, ptr %i.rb, align 8, !tbaa !342
  %i.aed = getelementptr inbounds nuw [128 x i8], ptr %i.aec, i64 %i.adw
  %i.aee = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %i.aah
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink1155.in = phi ptr [ %i.aee, %bb.cc ], [ %i.adp, %bb.cb ]
  %.sink = phi i32 [ %i.aeb, %bb.cc ], [ %i.adj, %bb.cb ]
  %.sink1155 = load i16, ptr %.sink1155.in, align 2, !tbaa !191
  %i.aef = sext i16 %.sink1155 to i32
  %i.aeg = add nsw i32 %.sink, %i.aef             ; 2 uses
  store i32 %i.aeg, ptr %i.am, align 4, !tbaa !323
  %i.aeh = mul nsw i32 %i.aeg, 425
  %.neg445 = sdiv i32 %i.aeh, -4096
  %i.aei = add i32 %.neg445, %.5397               ; 3 uses
  %i.aej = icmp sgt i32 %.4740.ph1007, 1
  %i.aek = icmp ne i64 %indvars.iv, 0             ; 3 uses
  %or.cond22 = select i1 %i.aej, i1 %i.aek, i1 false
  br i1 %or.cond22, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %.neg448 = sdiv i32 %i.aei, -1024
  %i.ael = add i32 %.neg448, %i.aav
  %i.aem = add nuw nsw i32 %.4740.ph1007, 1
  %i.aen = call i32 @llvm.smin.i32(i32 %i.aem, i32 %i.ael)
  %.sroa.speculated574 = call i32 @llvm.smax.i32(i32 %i.aen, i32 1)
  %i.aeo = add nuw nsw i32 %.sroa.speculated574, 1 ; 4 uses
  %i.aep = sub nsw i32 %i.aav, %i.aeo
  store i32 %i.aep, ptr %i.ss, align 4, !tbaa !322
  %i.aeq = xor i32 %.0369.ph1010, -1              ; 2 uses
  %i.aer = sub nsw i32 0, %.0369.ph1010           ; 2 uses
  %i.aes = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.aeq, i32 noundef %i.aer, i32 noundef %i.aeo, i1 noundef zeroext true)
  %i.aet = sub nsw i32 0, %i.aes                  ; 5 uses
  store i32 0, ptr %i.ss, align 4, !tbaa !322
  %i.aeu = icmp slt i32 %.0369.ph1010, %i.aet
  br i1 %i.aeu, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  %i.aev = icmp samesign ult i32 %i.aeo, %i.aav
  %i.aew = add nsw i32 %.0746.ph1005, 50
  %i.aex = icmp slt i32 %i.aew, %i.aet
  %i.aey = select i1 %i.aev, i1 %i.aex, i1 false
  %i.aez = add nsw i32 %.0746.ph1005, 9
  %i.afa = icmp sgt i32 %i.aez, %i.aet
  %i.afb = zext i1 %i.aey to i32
  %.neg449 = sext i1 %i.afa to i32
  %i.afc = add nsw i32 %i.aav, %.neg449
  %i.afd = add nuw nsw i32 %i.afc, %i.afb         ; 3 uses
  %i.afe = icmp samesign ugt i32 %i.afd, %i.aeo
  br i1 %i.afe, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.aff = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.aeq, i32 noundef %i.aer, i32 noundef %i.afd, i1 noundef zeroext %i.sr)
  %i.afg = sub nsw i32 0, %i.aff
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.2382 = phi i32 [ %i.afg, %bb.cg ], [ %i.aet, %bb.cf ]
  %i.afh = trunc i16 %i.sz to i8
  %i.afi = and i8 %i.afh, 63
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %2, i8 noundef zeroext %i.aat, i8 noundef zeroext %i.afi, i32 noundef 1365)
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cd
  br i1 %i.aek, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %bb.ci
  %i.afj = add nsw i32 %i.aei, 1140
  %spec.select470 = select i1 %.not935, i32 %i.afj, i32 %i.aei ; 2 uses
  %i.afk = xor i32 %.0369.ph1010, -1
  %i.afl = sub nsw i32 0, %.0369.ph1010
  %i.afm = icmp sgt i32 %spec.select470, 3957
  %.neg446 = sext i1 %i.afm to i32
  %i.afn = add i32 %i.aav, %.neg446
  %i.afo = icmp sgt i32 %spec.select470, 5654
  %i.afp = icmp sgt i32 %.4740.ph1007, 3
  %i.afq = and i1 %i.afp, %i.afo
  %.neg447 = sext i1 %i.afq to i32
  %i.afr = add i32 %i.afn, %.neg447
  %i.afs = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.afk, i32 noundef %i.afl, i32 noundef %i.afr, i1 noundef zeroext %i.sr)
  %i.aft = sub nsw i32 0, %i.afs
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ce, %bb.ch, %bb.cj
  %.0744 = phi i32 [ %i.afd, %bb.ch ], [ %i.aav, %bb.ce ], [ %i.aav, %bb.cj ]
  %.4384 = phi i32 [ %.2382, %bb.ch ], [ %i.aet, %bb.ce ], [ %i.aft, %bb.cj ] ; 2 uses
  %i.afu = icmp sgt i32 %.4384, %.0369.ph1010
  br i1 %i.afu, label %.thread, label %bb.co

.thread:                                          ; preds = %bb.ci, %bb.ck
  %i.afv = phi i1 [ false, %bb.ck ], [ true, %bb.ci ]
  %.07441110 = phi i32 [ %.0744, %bb.ck ], [ %i.aav, %bb.ci ] ; 3 uses
  store ptr %7, ptr %i.sb, align 8, !tbaa !254
  store i16 0, ptr %7, align 16, !tbaa !191
  %i.afw = load i16, ptr %i.bg, align 8, !tbaa !234
  %i.afx = icmp eq i16 %i.sz, %i.afw
  br i1 %i.afx, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %.thread
  %i.afy = load i32, ptr %i.co, align 4, !tbaa !326 ; 2 uses
  %i.afz = icmp ne i32 %i.afy, 32002
  %i.aga = add i32 %i.afy, -31507
  %spec.select.i506 = icmp ult i32 %i.aga, -63013
  %or.cond905 = and i1 %i.afz, %spec.select.i506
  %i.agb = load i32, ptr %i.sl, align 4           ; 2 uses
  %i.agc = icmp sgt i32 %i.agb, 0
  %or.cond908 = select i1 %or.cond905, i1 %i.agc, i1 false
  %i.agd = icmp sgt i32 %i.agb, 1
  %or.cond911 = select i1 %or.cond908, i1 true, i1 %i.agd
  br i1 %or.cond911, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.sroa.speculated567 = call i32 @llvm.smax.i32(i32 %.07441110, i32 1)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm, %.thread
  %.1745 = phi i32 [ %.sroa.speculated567, %bb.cm ], [ %.07441110, %bb.cl ], [ %.07441110, %.thread ]
  %i.age = sub nsw i32 0, %.0369.ph1010
  %i.agf = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.st, i32 noundef %i.age, i32 noundef %.1745, i1 noundef zeroext false)
  %i.agg = sub nsw i32 0, %i.agf
  br label %bb.co

bb.co:                                            ; preds = %bb.ck, %bb.cn
  %i.agh = phi i1 [ %i.afv, %bb.cn ], [ false, %bb.ck ]
  %.5385 = phi i32 [ %i.agg, %bb.cn ], [ %.4384, %bb.ck ] ; 16 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.sf) #33
  %i.agi = load ptr, ptr %i.su, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.agj = load atomic i8, ptr %i.agi monotonic, align 8, !range !221, !noundef !48
  %i.agk = trunc nuw i8 %i.agj to i1
  br i1 %i.agk, label %.thread874, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.agl = load ptr, ptr %i.bj, align 8, !tbaa !175 ; 4 uses
  %i.agm = load ptr, ptr %i.sv, align 32, !tbaa !175 ; 3 uses
  %i.agn = ptrtoint ptr %i.agm to i64             ; 2 uses
  %i.ago = ptrtoint ptr %i.agl to i64
  %i.agp = sub i64 %i.agn, %i.ago                 ; 2 uses
  %i.agq = sdiv exact i64 %i.agp, 72
  %i.agr = ashr i64 %i.agq, 2                     ; 3 uses
  %i.ags = icmp sgt i64 %i.agr, 0
  br i1 %i.ags, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cp
  %i.agt = mul nuw nsw i64 %i.agr, 288
  %scevgep.i.i.i = getelementptr i8, ptr %i.agl, i64 %i.agt ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cu, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.agr, %.lr.ph.i.i.i ], [ %i.ahl, %bb.cu ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.agl, %.lr.ph.i.i.i ], [ %i.ahk, %bb.cu ] ; 9 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 48
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !189
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !234
  %i.agx = icmp eq i16 %i.agw, %i.sz
  br i1 %i.agx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !189
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !234
  %i.ahb = icmp eq i16 %i.aha, %i.sz
  br i1 %i.ahb, label %.loopexit.split.loop.exit42.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 192
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !189
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !234
  %i.ahf = icmp eq i16 %i.ahe, %i.sz
  br i1 %i.ahf, label %.loopexit.split.loop.exit44.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 264
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !189
  %i.ahi = load i16, ptr %i.ahh, align 2, !tbaa !234
  %i.ahj = icmp eq i16 %i.ahi, %i.sz
  br i1 %i.ahj, label %.loopexit.split.loop.exit46.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 288
  %i.ahl = add nsw i64 %.052.i.i.i, -1
  %i.ahm = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ahm, label %bb.cq, label %._crit_edge.loopexit.i.i.i, !llvm.loop !290

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.cu
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.agn, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.cp
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.agp, %bb.cp ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.agl, %bb.cp ] ; 5 uses
  %i.ahn = sdiv exact i64 %.pre-phi61.i.i.i, 72
  switch i64 %i.ahn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit [
    i64 3, label %bb.cv
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 48
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !189
  %i.ahq = load i16, ptr %i.ahp, align 2, !tbaa !234
  %i.ahr = icmp eq i16 %i.ahq, %i.sz
  br i1 %i.ahr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ahs = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 72
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.cw
  %.sroa.032.1.i.i.i = phi ptr [ %i.ahs, %bb.cw ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 48
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !189
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a

bb.du:                                            ; preds = %._crit_edge1003, %bb.dr, %bb.ds, %bb.dt
  %i.akt = icmp eq i32 %.5385, %.0746.ph1005
  br i1 %i.akt, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.aku = load i32, ptr %i.ac, align 8, !tbaa !253
  %i.akv = add nsw i32 %i.aku, 2
  %i.akw = load i32, ptr %i.sx, align 16, !tbaa !264
  %.not455 = icmp slt i32 %i.akv, %i.akw
  br i1 %.not455, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.akx = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.aky = and i64 %i.akx, 14
  %i.akz = icmp eq i64 %i.aky, 0
  br i1 %i.akz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ala = add i32 %.0746.ph1005, 31505
  %i.alb = icmp ult i32 %i.ala, 63011
  %i.alc = zext i1 %i.alb to i32
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.du
  %i.ald = phi i32 [ 0, %bb.dw ], [ 0, %bb.dv ], [ 0, %bb.du ], [ %i.alc, %bb.dx ]
  %i.ale = add nsw i32 %i.ald, %.5385             ; 2 uses
  %i.alf = icmp sgt i32 %i.ale, %.0746.ph1005
  br i1 %i.alf, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.alg = icmp sgt i32 %i.ale, %.0369.ph1010
  br i1 %i.alg, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %.not456 = icmp slt i32 %.5385, %4
  br i1 %.not456, label %bb.eb, label %.thread881

.thread881:                                       ; preds = %bb.ea
  %i.alh = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ali = load i32, ptr %i.alh, align 8, !tbaa !324
  %i.alj = add nsw i32 %i.ali, 1
  store i32 %i.alj, ptr %i.alh, align 8, !tbaa !324
  br label %.loopexit

bb.eb:                                            ; preds = %bb.ea
  %i.alk = add i32 %.4740.ph1007, -14
  %or.cond24 = icmp ult i32 %i.alk, -11
  %i.all = add i32 %.5385, -31507
  %spec.select.i512 = icmp ult i32 %i.all, -63013
  %or.cond912 = select i1 %or.cond24, i1 true, i1 %spec.select.i512
  %i.alm = add nsw i32 %.4740.ph1007, -2
  %spec.select917 = select i1 %or.cond912, i32 %.4740.ph1007, i32 %i.alm
  br label %.thread868

bb.ec:                                            ; preds = %bb.dz, %bb.dy
  %.1747 = phi i32 [ %.0746.ph1005, %bb.dy ], [ %.5385, %bb.dz ] ; 3 uses
  %i.aln = icmp ne i16 %i.sz, %.sroa.0623.0.ph1006
  %i.alo = icmp samesign ult i64 %indvars.iv, 32
  %or.cond26 = select i1 %i.aln, i1 %i.alo, i1 false
  br i1 %or.cond26, label %bb.ed, label %.thread868

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.aao, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.alp = load i64, ptr %i.d, align 8, !tbaa !315 ; 2 uses
  %i.alq = add i64 %i.alp, 1
  store i64 %i.alq, ptr %i.d, align 8, !tbaa !315
  %i.alr = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.alp
  store i16 %i.sz, ptr %i.alr, align 2, !tbaa !191
  br label %.thread868

bb.ef:                                            ; preds = %bb.ed
  %i.als = load i64, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %i.alt = add i64 %i.als, 1
  store i64 %i.alt, ptr %i.e, align 8, !tbaa !315
  %i.alu = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.als
  store i16 %i.sz, ptr %i.alu, align 2, !tbaa !191
  br label %.thread868

.thread868:                                       ; preds = %bb.eb, %bb.ee, %bb.ef, %bb.ec
  %.2748 = phi i32 [ %.1747, %bb.ec ], [ %.1747, %bb.ee ], [ %.1747, %bb.ef ], [ %.5385, %bb.eb ] ; 2 uses
  %.sroa.0623.2 = phi i16 [ %.sroa.0623.0.ph1006, %bb.ec ], [ %.sroa.0623.0.ph1006, %bb.ee ], [ %.sroa.0623.0.ph1006, %bb.ef ], [ %i.sz, %bb.eb ] ; 2 uses
  %.6742 = phi i32 [ %.4740.ph1007, %bb.ec ], [ %.4740.ph1007, %bb.ee ], [ %.4740.ph1007, %bb.ef ], [ %spec.select917, %bb.eb ] ; 2 uses
  %.3372 = phi i32 [ %.0369.ph1010, %bb.ec ], [ %.0369.ph1010, %bb.ee ], [ %.0369.ph1010, %bb.ef ], [ %.5385, %bb.eb ] ; 2 uses
  %i.alv = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not934989 = icmp eq i16 %i.alv, 0
  br i1 %.not934989, label %.loopexit, label %.lr.ph990

.loopexit.loopexit:                               ; preds = %.backedge
  %i.alw = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.thread868, %.loopexit.loopexit, %bb.br, %.thread881
  %.4740.ph978 = phi i32 [ %.4740.ph1007, %.thread881 ], [ %.4740.ph1007, %.loopexit.loopexit ], [ %.3739, %bb.br ], [ %.6742, %.thread868 ] ; 8 uses
  %.0369.ph969 = phi i32 [ %.0369.ph1010, %.thread881 ], [ %.0369.ph1010, %.loopexit.loopexit ], [ %3, %bb.br ], [ %.3372, %.thread868 ] ; 3 uses
  %.3749 = phi i32 [ %.5385, %.thread881 ], [ %.0746.ph1005, %.loopexit.loopexit ], [ -32001, %bb.br ], [ %.2748, %.thread868 ] ; 4 uses
  %.sroa.0623.3 = phi i16 [ %i.sz, %.thread881 ], [ %.sroa.0623.0.ph1006, %.loopexit.loopexit ], [ 0, %bb.br ], [ %.sroa.0623.2, %.thread868 ] ; 8 uses
  %.1390 = phi i32 [ %i.zj, %.thread881 ], [ %i.alw, %.loopexit.loopexit ], [ 0, %bb.br ], [ %i.zj, %.thread868 ] ; 2 uses
  %.not457 = icmp slt i32 %.3749, %4
  %i.alx = add i32 %.3749, -31507
  %spec.select.i513 = icmp ult i32 %i.alx, -63013
  %or.cond913 = or i1 %.not457, %spec.select.i513
  %i.aly = add i32 %.0369.ph969, -31507
  %spec.select.i514 = icmp ult i32 %i.aly, -63013
  %or.cond914 = select i1 %or.cond913, i1 true, i1 %spec.select.i514
  br i1 %or.cond914, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.loopexit
  %i.alz = mul nsw i32 %.3749, %.4740.ph978
  %i.ama = add nsw i32 %i.alz, %4
  %i.amb = add nsw i32 %.4740.ph978, 1
  %i.amc = sdiv i32 %i.ama, %i.amb
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.loopexit
  %.4750 = phi i32 [ %.3749, %.loopexit ], [ %i.amc, %bb.eg ] ; 7 uses
  %.not458 = icmp eq i32 %.1390, 0                ; 2 uses
  br i1 %.not458, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  br i1 %i.cp, label %bb.ew, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.amd = load i8, ptr %i.k, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ame = trunc nuw i8 %i.amd to i1
  br i1 %i.ame, label %bb.ek, label %.thread888

bb.ek:                                            ; preds = %bb.ej
  %i.amf = load i32, ptr %i.ac, align 8, !tbaa !253
  %i.amg = add nsw i32 %i.amf, -32000
  br label %bb.ew

bb.el:                                            ; preds = %bb.eh
  %.not940 = icmp eq i16 %.sroa.0623.3, 0
  br i1 %.not940, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.sroa.039.0.copyload = load i16, ptr %i.bg, align 8, !tbaa !191
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, ptr noundef nonnull align 64 dereferenceable(14279296) %0, i16 %.sroa.0623.3, i8 noundef zeroext %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %.4740.ph978, i16 %.sroa.039.0.copyload, i32 noundef %.1390)
  br label %bb.ew

bb.en:                                            ; preds = %bb.el
  %.not27 = xor i1 %i.o, true
  %i.amh = icmp ne i8 %i.aj, 64                   ; 2 uses
  %or.cond30 = and i1 %i.amh, %.not27
  br i1 %or.cond30, label %bb.eo, label %bb.eu

bb.eo:                                            ; preds = %bb.en
  %i.ami = getelementptr inbounds i8, ptr %2, i64 -20
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !323
  %.neg459 = sdiv i32 %i.amj, -100
  %i.amk = mul nsw i32 %.4740.ph978, 56
  %.sroa.speculated553 = call i32 @llvm.smin.i32(i32 %i.amk, i32 489)
  %i.aml = getelementptr inbounds i8, ptr %2, i64 -16
  %i.amm = load i32, ptr %i.aml, align 8, !tbaa !319
  %i.amn = icmp sgt i32 %i.amm, 8
  %i.amo = select i1 %i.amn, i32 184, i32 0
  %i.amp = load i8, ptr %i.k, align 4, !tbaa !317, !range !221, !noundef !48
  %i.amq = trunc nuw i8 %i.amp to i1
  br i1 %i.amq, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.amr = load i32, ptr %i.id, align 8, !tbaa !252
  %i.ams = add nsw i32 %i.amr, -107
  %.not460 = icmp sgt i32 %.4750, %i.ams
  %i.amt = select i1 %.not460, i32 0, i32 147
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.amu = phi i32 [ 0, %bb.eo ], [ %i.amt, %bb.ep ]
  %i.amv = getelementptr inbounds i8, ptr %2, i64 -12
  %i.amw = load i8, ptr %i.amv, align 4, !tbaa !317, !range !221, !noundef !48
  %i.amx = trunc nuw i8 %i.amw to i1
  br i1 %i.amx, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.amy = load i32, ptr %i.ii, align 8, !tbaa !252
  %i.amz = sub i32 -65, %i.amy
  %.not461 = icmp sgt i32 %.4750, %i.amz
  %i.ana = select i1 %.not461, i32 0, i32 156
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.anb = phi i32 [ 0, %bb.eq ], [ %i.ana, %bb.er ]
  %i.anc = add i32 %.sroa.speculated553, -215
  %i.and = add i32 %i.anc, %.neg459
  %i.ane = add nsw i32 %i.and, %i.amo
  %i.anf = add nsw i32 %i.ane, %i.amu
  %i.ang = add nsw i32 %i.anf, %i.anb
  %.sroa.speculated548 = call i32 @llvm.smax.i32(i32 %i.ang, i32 0)
  %i.anh = mul nsw i32 %.4740.ph978, 141
  %i.ani = call i32 @llvm.smin.i32(i32 %i.anh, i32 1438)
  %.sroa.speculated542 = add nsw i32 %i.ani, -87
  %i.anj = mul nsw i32 %.sroa.speculated548, %.sroa.speculated542 ; 3 uses
  %i.ank = getelementptr inbounds i8, ptr %2, i64 -56
  %i.anl = zext nneg i8 %i.aj to i64              ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %1, i64 %i.anl ; 2 uses
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !330
  %i.ano = mul nsw i32 %i.anj, 203
  %i.anp = sdiv i32 %i.ano, 16384
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.ank, i8 noundef zeroext %i.ann, i8 noundef zeroext %i.aj, i32 noundef %i.anp)
  %i.anq = xor i8 %i.q, 1
  %i.anr = zext i8 %i.anq to i64
  %i.ans = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.anr
  %i.ant = load i16, ptr %i.af, align 4, !tbaa !234 ; 2 uses
  %i.anu = zext i16 %i.ant to i64
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.ans, i64 %i.anu ; 2 uses
  %i.anw = mul nsw i32 %i.anj, 243
  %i.anx = sdiv i32 %i.anw, 32768
  %.sroa.speculate.load.false.sroa.speculated.i518 = call i32 @llvm.smax.i32(i32 %i.anx, i32 -7183)
  %.sroa.speculated.i519 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i518, i32 7183) ; 2 uses
  %i.any = load i16, ptr %i.anv, align 2, !tbaa !132
  %i.anz = sext i16 %i.any to i32                 ; 2 uses
  %i.aoa = add nsw i32 %.sroa.speculated.i519, %i.anz
  %i.aob = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i519, i1 true)
  %i.aoc = mul nsw i32 %i.aob, %i.anz
  %.neg.i520 = sdiv i32 %i.aoc, -7183
  %i.aod = add nsw i32 %i.aoa, %.neg.i520
  %i.aoe = trunc i32 %i.aod to i16
  store i16 %i.aoe, ptr %i.anv, align 2, !tbaa !132
  %i.aof = load i8, ptr %i.anm, align 1, !tbaa !330 ; 2 uses
  %i.aog = and i8 %i.aof, 7
  %.not462 = icmp eq i8 %i.aog, 1
  %i.aoh = and i16 %i.ant, -16384
  %.not463 = icmp eq i16 %i.aoh, 16384
  %or.cond915 = or i1 %.not463, %.not462
  br i1 %or.cond915, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aoi = load ptr, ptr %i.de, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.aoj = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aol = load i64, ptr %i.aok, align 8, !tbaa !333
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoi, i64 40
  %i.aon = load i64, ptr %i.aom, align 8, !tbaa !337
  %i.aoo = and i64 %i.aon, %i.aol
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !162
  %i.aor = getelementptr inbounds nuw [2048 x i8], ptr %i.aoq, i64 %i.aoo
  %i.aos = zext i8 %i.aof to i64
  %i.aot = getelementptr inbounds nuw [128 x i8], ptr %i.aor, i64 %i.aos
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %i.aot, i64 %i.anl ; 2 uses
  %i.aov = mul nsw i32 %i.anj, 145
  %i.aow = sdiv i32 %i.aov, 4096
  %.sroa.speculate.load.false.sroa.speculated.i521 = call i32 @llvm.smax.i32(i32 %i.aow, i32 -8192)
  %.sroa.speculated.i522 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i521, i32 8192) ; 2 uses
  %i.aox = load atomic i16, ptr %i.aou monotonic, align 2
  %i.aoy = sext i16 %i.aox to i32                 ; 2 uses
  %i.aoz = add nsw i32 %.sroa.speculated.i522, %i.aoy
  %i.apa = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i522, i1 true)
  %i.apb = mul nsw i32 %i.apa, %i.aoy
  %.neg.i523 = sdiv i32 %i.apb, -8192
  %i.apc = add nsw i32 %i.aoz, %.neg.i523
  %i.apd = trunc i32 %i.apc to i16
  store atomic i16 %i.apd, ptr %i.aou monotonic, align 2
  br label %bb.ew

bb.eu:                                            ; preds = %bb.en
  %or.cond33 = and i1 %i.o, %i.amh
  br i1 %or.cond33, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ape = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 184
  %i.apg = load i8, ptr %i.apf, align 8, !tbaa !318
  %i.aph = zext nneg i8 %i.aj to i64              ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 %i.aph
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !330
  %i.apk = zext i8 %i.apj to i64
  %i.apl = getelementptr inbounds nuw [1024 x i8], ptr %i.ro, i64 %i.apk
  %i.apm = getelementptr inbounds nuw [16 x i8], ptr %i.apl, i64 %i.aph
  %i.apn = and i8 %i.apg, 7
  %i.apo = zext nneg i8 %i.apn to i64
  %i.app = getelementptr inbounds nuw [2 x i8], ptr %i.apm, i64 %i.apo ; 2 uses
  %i.apq = load i16, ptr %i.app, align 2, !tbaa !355
  %i.apr = sext i16 %i.apq to i32                 ; 2 uses
  %i.aps = add nsw i32 %i.apr, 1012
  %i.apt = mul nsw i32 %i.apr, 23
  %.neg.i524 = sdiv i32 %i.apt, -243
  %i.apu = add nsw i32 %i.aps, %.neg.i524
  %i.apv = trunc i32 %i.apu to i16
  store i16 %i.apv, ptr %i.app, align 2, !tbaa !355
  br label %bb.ew

bb.ew:                                            ; preds = %bb.es, %bb.et, %bb.ek, %bb.ei, %bb.em, %bb.eu, %bb.ev
  %.5751 = phi i32 [ %.4750, %bb.eu ], [ %.4750, %bb.em ], [ %.0369.ph969, %bb.ei ], [ %.4750, %bb.ev ], [ %.4750, %bb.es ], [ %i.amg, %bb.ek ], [ %.4750, %bb.et ]
  %.5751.fr = freeze i32 %.5751
  %spec.select916 = call i32 @llvm.smin.i32(i32 %.5751.fr, i32 32001)
  br label %.thread888

.thread888:                                       ; preds = %bb.ew, %bb.ej
  %i.apw = phi i32 [ 0, %bb.ej ], [ %spec.select916, %bb.ew ] ; 11 uses
  %.not464 = icmp sgt i32 %i.apw, %.0369.ph969
  br i1 %.not464, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %.thread888
  %i.apx = load i8, ptr %i.ct, align 1, !tbaa !329, !range !221, !noundef !48
  %i.apy = trunc nuw i8 %i.apx to i1
  br i1 %i.apy, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.apz = getelementptr inbounds i8, ptr %2, i64 -11
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !329, !range !221, !noundef !48
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.aqb = phi i8 [ 1, %bb.ex ], [ %i.aqa, %bb.ey ]
  store i8 %i.aqb, ptr %i.ct, align 1, !tbaa !329
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.thread888
  br i1 %i.cp, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aqc = load i64, ptr %i.bk, align 8, !tbaa !270
  %.not465 = icmp eq i64 %i.aqc, 0
  br i1 %.not465, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aqd = load i32, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %i.aqe = icmp sgt i32 %i.apw, 31506
  %i.aqf = icmp slt i32 %i.apw, -31506
  %i.aqg = select i1 %i.aqf, i32 %i.aqd, i32 0
  %i.aqh = sub i32 0, %i.aqg
  %.p.i526 = select i1 %i.aqe, i32 %i.aqd, i32 %i.aqh
  %i.aqi = add i32 %.p.i526, %i.apw
  %i.aqj = load i8, ptr %i.ct, align 1, !tbaa !329, !range !221, !noundef !48
  %i.aqk = trunc nuw i8 %i.aqj to i1
  %.not466 = icmp slt i32 %i.apw, %4
  %.not941 = icmp eq i16 %.sroa.0623.3, 0
  %i.aql = select i1 %.not941, i8 1, i8 3
  %i.aqm = select i1 %.not466, i8 %i.aql, i8 2
  %i.aqn = call i32 @llvm.smin.i32(i32 %.4740.ph978, i32 239)
  %.in.sroa.speculate.load. = add nsw i32 %i.aqn, 6
  %.in.sroa.speculated = select i1 %.not458, i32 %.in.sroa.speculate.load., i32 %.4740.ph978
  %i.aqo = load ptr, ptr %i.bd, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.aqp = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.aqo) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.bc, i32 noundef %i.aqi, i1 noundef zeroext %i.aqk, i8 noundef zeroext %i.aqm, i32 noundef %.in.sroa.speculated, i16 %.sroa.0623.3, i32 noundef %.1388, i8 noundef zeroext %i.aqp) #33
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa
  %i.aqq = load i8, ptr %i.k, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aqr = trunc nuw i8 %i.aqq to i1
  br i1 %i.aqr, label %.thread874, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aqs = icmp ne i16 %.sroa.0623.3, 0           ; 3 uses
  br i1 %i.aqs, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aqt = and i16 %.sroa.0623.3, 63
  %i.aqu = zext nneg i16 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqu
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !330
  %i.aqx = icmp ne i8 %i.aqw, 0
  %.not.i528 = icmp ult i16 %.sroa.0623.3, -16384
  %or.cond.not.i = and i1 %.not.i528, %i.aqx
  %i.aqy = icmp slt i16 %.sroa.0623.3, -16384
  %spec.select.i529 = or i1 %i.aqy, %or.cond.not.i
  br i1 %spec.select.i529, label %.thread874, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.aqz = load i32, ptr %i.id, align 8, !tbaa !252 ; 2 uses
  %i.ara = icmp sle i32 %i.apw, %i.aqz
  %i.arb = xor i1 %i.aqs, %i.ara
  br i1 %i.arb, label %bb.fh, label %.thread874

bb.fh:                                            ; preds = %bb.fg
  %i.arc = sub nsw i32 %i.apw, %i.aqz
  %i.ard = mul nsw i32 %i.arc, %.4740.ph978
  %i.are = select i1 %i.aqs, i32 10, i32 8
  %i.arf = sdiv i32 %i.ard, %i.are
  %.sroa.speculate.load.false.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.arf, i32 -256)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 256)
  %.val474 = load ptr, ptr %i.de, align 8, !tbaa !139
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %2, ptr %.val474, i32 noundef %.sroa.speculated)
  br label %.thread874

.thread874:                                       ; preds = %bb.co, %bb.fd, %bb.ff, %bb.fg, %bb.fh
  %.9 = phi i32 [ %i.apw, %bb.fd ], [ %i.apw, %bb.fh ], [ %i.apw, %bb.fg ], [ %i.apw, %bb.ff ], [ 0, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.thread851

.thread851:                                       ; preds = %bb.bq, %bb.bd, %.thread865, %bb.ax, %bb.be, %.thread874
  %.10 = phi i32 [ %.9, %.thread874 ], [ %i.ln, %bb.ax ], [ %i.qq, %.thread865 ], [ %i.mm, %bb.be ], [ %i.qr, %bb.bq ], [ %i.mm, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.fi

bb.fi:                                            ; preds = %.thread851, %bb.b
  %.11 = phi i32 [ %i.c, %bb.b ], [ %.10, %.thread851 ]
  ret i32 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = load ptr, ptr %1, align 8, !tbaa !189    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.i = load ptr, ptr %0, align 8, !tbaa !189    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i, !prof !357

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 2
  br i1 %i.p, label %bb.e, label %bb.f, !prof !358

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.o, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 2
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i16, ptr %i.c, align 2, !tbaa !191
  store i16 %i.r, ptr %i.o, align 2, !tbaa !191
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #38
  br label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !190
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !192  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 2
  br i1 %i.x, label %bb.k, label %bb.l, !prof !358

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 2
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit
end_hunk_1
begin_hunk_2_@_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE:bb.a
  %i.ac = load i8, ptr %i.j, align 1, !tbaa !340
  %i.ad = zext i8 %i.ac to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [131072 x i8], ptr %i.ab, i64 %i.ad
  %i.af = getelementptr inbounds nuw [2048 x i8], ptr %i.ae, i64 %i.b
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.ai = getelementptr inbounds nuw [131072 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr inbounds nuw [2048 x i8], ptr %i.ai, i64 %i.b
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !251
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

; Function Attrs: nounwind
declare { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288)) local_unnamed_addr #5

declare void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048), i16, ptr noundef nonnull align 8 dereferenceable(192), i1 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(7), ptr noundef nonnull align 8 dereferenceable(416), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker12do_null_moveERNS_8PositionERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nofree noundef writeonly captures(none) initializes((8, 24), (28, 30)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174, !nonnull !48, !align !49
  tail call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(17) %i.b) #33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 65, ptr %i.c, align 4, !tbaa !191
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !247
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !251
  ret void
}

declare void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker9undo_moveERNS_8PositionENS_4MoveE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.a) #33
  ret void
}

declare void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker14undo_null_moveERNS_8PositionE(ptr nofree noundef nonnull readnone align 64 captures(none) dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #33
  ret void
}

declare void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEE4fillIiEEvRKT_(ptr noundef nonnull align 2 dereferenceable(16384) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 {
vector.ph:
  %i.a = load i32, ptr %1, align 4, !tbaa !138
  %i.b = trunc i32 %i.a to i16                    ; 16 uses
  %broadcast.splatinsert = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %i.c = shufflevector <32 x i16> %broadcast.splatinsert, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.c, ptr %0, align 2, !tbaa !355
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = shufflevector <32 x i16> %broadcast.splatinsert, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.e, ptr %i.d, align 2, !tbaa !355
  %broadcast.splatinsert12 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.1 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.f = shufflevector <32 x i16> %broadcast.splatinsert12, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.f, ptr %.0.ptr10.1, align 2, !tbaa !355
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.h = shufflevector <32 x i16> %broadcast.splatinsert12, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.h, ptr %i.g, align 2, !tbaa !355
  %broadcast.splatinsert20 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.2 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.i = shufflevector <32 x i16> %broadcast.splatinsert20, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.i, ptr %.0.ptr10.2, align 2, !tbaa !355
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.k = shufflevector <32 x i16> %broadcast.splatinsert20, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.k, ptr %i.j, align 2, !tbaa !355
  %broadcast.splatinsert28 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.3 = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.l = shufflevector <32 x i16> %broadcast.splatinsert28, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.l, ptr %.0.ptr10.3, align 2, !tbaa !355
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.n = shufflevector <32 x i16> %broadcast.splatinsert28, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.n, ptr %i.m, align 2, !tbaa !355
  %broadcast.splatinsert36 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.4 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.o = shufflevector <32 x i16> %broadcast.splatinsert36, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.o, ptr %.0.ptr10.4, align 2, !tbaa !355
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.q = shufflevector <32 x i16> %broadcast.splatinsert36, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.q, ptr %i.p, align 2, !tbaa !355
  %broadcast.splatinsert44 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.5 = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.r = shufflevector <32 x i16> %broadcast.splatinsert44, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.r, ptr %.0.ptr10.5, align 2, !tbaa !355
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5632
  %i.t = shufflevector <32 x i16> %broadcast.splatinsert44, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.t, ptr %i.s, align 2, !tbaa !355
  %broadcast.splatinsert52 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.6 = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.u = shufflevector <32 x i16> %broadcast.splatinsert52, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.u, ptr %.0.ptr10.6, align 2, !tbaa !355
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6656
  %i.w = shufflevector <32 x i16> %broadcast.splatinsert52, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.w, ptr %i.v, align 2, !tbaa !355
  %broadcast.splatinsert60 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.7 = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.x = shufflevector <32 x i16> %broadcast.splatinsert60, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.x, ptr %.0.ptr10.7, align 2, !tbaa !355
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.z = shufflevector <32 x i16> %broadcast.splatinsert60, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.z, ptr %i.y, align 2, !tbaa !355
  %broadcast.splatinsert68 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.8 = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.aa = shufflevector <32 x i16> %broadcast.splatinsert68, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.aa, ptr %.0.ptr10.8, align 2, !tbaa !355
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8704
  %i.ac = shufflevector <32 x i16> %broadcast.splatinsert68, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ac, ptr %i.ab, align 2, !tbaa !355
  %broadcast.splatinsert76 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.9 = getelementptr inbounds nuw i8, ptr %0, i64 9216
  %i.ad = shufflevector <32 x i16> %broadcast.splatinsert76, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ad, ptr %.0.ptr10.9, align 2, !tbaa !355
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9728
  %i.af = shufflevector <32 x i16> %broadcast.splatinsert76, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.af, ptr %i.ae, align 2, !tbaa !355
  %broadcast.splatinsert84 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.10 = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.ag = shufflevector <32 x i16> %broadcast.splatinsert84, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ag, ptr %.0.ptr10.10, align 2, !tbaa !355
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10752
  %i.ai = shufflevector <32 x i16> %broadcast.splatinsert84, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ai, ptr %i.ah, align 2, !tbaa !355
  %broadcast.splatinsert92 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.11 = getelementptr inbounds nuw i8, ptr %0, i64 11264
  %i.aj = shufflevector <32 x i16> %broadcast.splatinsert92, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.aj, ptr %.0.ptr10.11, align 2, !tbaa !355
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11776
  %i.al = shufflevector <32 x i16> %broadcast.splatinsert92, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.al, ptr %i.ak, align 2, !tbaa !355
  %broadcast.splatinsert100 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.12 = getelementptr inbounds nuw i8, ptr %0, i64 12288
  %i.am = shufflevector <32 x i16> %broadcast.splatinsert100, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.am, ptr %.0.ptr10.12, align 2, !tbaa !355
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12800
  %i.ao = shufflevector <32 x i16> %broadcast.splatinsert100, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ao, ptr %i.an, align 2, !tbaa !355
  %broadcast.splatinsert108 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.13 = getelementptr inbounds nuw i8, ptr %0, i64 13312
  %i.ap = shufflevector <32 x i16> %broadcast.splatinsert108, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ap, ptr %.0.ptr10.13, align 2, !tbaa !355
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 13824
  %i.ar = shufflevector <32 x i16> %broadcast.splatinsert108, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ar, ptr %i.aq, align 2, !tbaa !355
  %broadcast.splatinsert116 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.14 = getelementptr inbounds nuw i8, ptr %0, i64 14336
  %i.as = shufflevector <32 x i16> %broadcast.splatinsert116, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.as, ptr %.0.ptr10.14, align 2, !tbaa !355
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 14848
  %i.au = shufflevector <32 x i16> %broadcast.splatinsert116, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.au, ptr %i.at, align 2, !tbaa !355
  %broadcast.splatinsert124 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.15 = getelementptr inbounds nuw i8, ptr %0, i64 15360
  %i.av = shufflevector <32 x i16> %broadcast.splatinsert124, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.av, ptr %.0.ptr10.15, align 2, !tbaa !355
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 15872
  %i.ax = shufflevector <32 x i16> %broadcast.splatinsert124, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ax, ptr %i.aw, align 2, !tbaa !355
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -2147482466, -2147483648) i32 @_ZNK9Stockfish6Search6Worker9reductionEbiii(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(14279296) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !138
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !138
  %i.h = mul nsw i32 %i.g, %i.d                   ; 2 uses
  %i.i = mul nsw i32 %4, 608
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !275
  %i.l = sdiv i32 %i.i, %i.k
  %i.m = mul nsw i32 %i.h, 119
  %i.n = sdiv i32 %i.m, 256
  %i.o = select i1 %1, i32 0, i32 %i.n
  %i.p = add i32 %i.h, 1182
  %i.q = sub i32 %i.p, %i.l
  %i.r = add i32 %i.q, %i.o
  ret i32 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK9Stockfish6Search6Worker12elapsed_timeEv(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(14279296) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.e = sdiv i64 %i.d, 1000000
  %i.f = load i64, ptr %i.c, align 8, !tbaa !289
  %i.g = sub nsw i64 %i.e, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !169, !nonnull !48, !align !49 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sroa.0.0.copyload)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.0.copyload ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load i8, ptr %i.g, align 8, !tbaa !125
  switch i8 %i.h, label %bb.d [
    i8 -1, label %bb.b
    i8 2, label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  br label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit: ; preds = %bb.a, %bb.c
  %.0.i.i.i.in.i.i = phi ptr [ %i.i, %bb.c ], [ %i.f, %bb.a ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.n = load i8, ptr %i.m, align 4, !tbaa !171
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.j, ptr noundef nonnull align 64 dereferenceable(327680) %i.k, i32 noundef %i.q) #33
  ret i32 %i.r
}

declare noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 64 dereferenceable(2529288), ptr noundef nonnull align 64 dereferenceable(327680), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(14279296) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !363  ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !363
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 11419768 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !364  ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  %i.g = lshr i64 %i.f, 10
  %i.h = trunc i64 %i.g to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.h, i32 512)
  %i.i = select i1 %.not, i32 512, i32 %.sroa.speculated
  store i32 %i.i, ptr %i.a, align 8, !tbaa !363
  %i.j = load atomic i8, ptr @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.e, !prof !359

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime) #33
  %.not18 = icmp eq i32 %i.l, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.n = sdiv i64 %i.m, 1000000
  store i64 %i.n, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !25
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !288, !range !221, !noundef !48
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 11422208
  %.val.val.i = load ptr, ptr %i.s, align 64, !tbaa !220
  %i.t = tail call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %.val.val.i) #33
  br label %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.v = sdiv i64 %i.u, 1000000
  %i.w = load i64, ptr %i.o, align 8, !tbaa !289
  %i.x = sub nsw i64 %i.v, %i.w
  br label %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"

"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit": ; preds = %bb.f, %bb.g
  %i.y = phi i64 [ %i.t, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 11419736
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !365
  %i.ab = add nsw i64 %i.aa, %i.y                 ; 2 uses
  %i.ac = load i64, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !25
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = icmp sgt i64 %i.ad, 999
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"
  store i64 %i.ab, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !25
  tail call void @_ZN9Stockfish9dbg_printEv() #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ag = load atomic i8, ptr %i.af seq_cst, align 4, !range !221, !noundef !48
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 11421108
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !242
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 11419688
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25
  %.not.i = icmp ne i64 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11419696
  %i.ao = load i64, ptr %i.an, align 16
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = select i1 %.not.i, i1 true, i1 %i.ap
  br i1 %i.aq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call noundef i64 @_ZNK9Stockfish14TimeManagement7maximumEv(ptr noundef nonnull align 8 dereferenceable(33) %i.o) #33
  %i.as = icmp sgt i64 %i.y, %i.ar
  br i1 %i.as, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load i8, ptr %i.at, align 8, !tbaa !276, !range !221, !noundef !48
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 11419728
  %i.ax = load i64, ptr %i.aw, align 16, !tbaa !366 ; 2 uses
  %.not19 = icmp eq i64 %i.ax, 0
  %.not20 = icmp slt i64 %i.y, %i.ax
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !364
  %.not21 = icmp eq i64 %i.ay, 0
  br i1 %.not21, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 11422208
  %i.ba = load ptr, ptr %i.az, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.bb = tail call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ba) #33
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !364
  %.not22 = icmp ult i64 %i.bb, %i.bc
  br i1 %.not22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.m, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 11422208 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store atomic i8 1, ptr %i.bf seq_cst, align 1
  %i.bg = load ptr, ptr %i.bd, align 64, !tbaa !220, !nonnull !48, !align !49
  store atomic i8 1, ptr %i.bg seq_cst, align 8
  br label %bb.r

end_hunk_2
begin_hunk_3_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !762
  call void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tl, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef %i.tp)
  %i.tq = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 56
  %i.ts = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.tr, i32 noundef %i.sr, i32 noundef %i.th)
  %i.tt = sub nsw i32 0, %i.ts                    ; 2 uses
  %i.tu = icmp sle i32 %i.sq, %i.tt
  %or.cond36 = select i1 %i.tu, i1 %i.ti, i1 false
  br i1 %or.cond36, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.tv = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 56
  %i.tx = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.tw, i32 noundef %i.sr, i32 noundef %i.th, i32 noundef %.sroa.speculated933, i1 noundef zeroext %i.g)
  %i.ty = sub nsw i32 0, %i.tx
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0520 = phi i32 [ %i.ty, %bb.ct ], [ %i.tt, %bb.cs ] ; 6 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tl) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.tj) #33
  %.not592 = icmp slt i32 %.0520, %i.sq
  br i1 %.not592, label %.backedge1206, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tz = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !253 ; 2 uses
  %i.uc = icmp sgt i32 %.0520, 31506
  %i.ud = icmp slt i32 %.0520, -31506
  %i.ue = select i1 %i.ud, i32 %i.ub, i32 0
  %i.uf = sub i32 0, %i.ue
  %.p.i687 = select i1 %i.uc, i32 %i.ub, i32 %i.uf
  %i.ug = add i32 %.p.i687, %.0520
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 45
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !329, !range !221, !noundef !48
  %i.uj = trunc nuw i8 %i.ui to i1
  %i.uk = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.ul = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.uk) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef %i.ug, i1 noundef zeroext %i.uj, i8 noundef zeroext 2, i32 noundef %i.tk, i16 %i.tl, i32 noundef %.1526, i8 noundef zeroext %i.ul) #33
  %i.um = add i32 %.0520, -31507
  %spec.select.i688 = icmp ult i32 %i.um, -63013
  br i1 %spec.select.i688, label %.backedge1206, label %.thread1087

.thread1087:                                      ; preds = %bb.cv
  %.neg593 = sub i32 %.sroa.speculated819, %i.sq
  %i.un = add i32 %.neg593, %.0520
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.thread1079

._crit_edge:                                      ; preds = %.backedge1206, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.cw

bb.cw:                                            ; preds = %bb.co, %._crit_edge, %bb.cm, %bb.cn, %.thread1063
  %.31037 = phi i32 [ %.11035, %.thread1063 ], [ %.210361086, %bb.cn ], [ %.210361086, %bb.co ], [ %.210361086, %._crit_edge ], [ %.11035, %bb.cm ] ; 4 uses
  %i.uo = add nsw i32 %.sroa.speculated819, 418   ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.uq = load i8, ptr %i.up, align 8, !tbaa !336
  %i.ur = and i8 %i.uq, 2
  %.not594 = icmp eq i8 %i.ur, 0
  br i1 %.not594, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.us = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !341
  %i.uu = add nsw i32 %.31037, -4
  %.not595 = icmp slt i32 %i.ut, %i.uu
  br i1 %.not595, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.uv = load i32, ptr %i.di, align 4, !tbaa !326 ; 2 uses
  %.not596 = icmp slt i32 %i.uv, %i.uo
  %i.uw = add i32 %.sroa.speculated819, -31507
  %spec.select.i689 = icmp ult i32 %i.uw, -63013
  %or.cond1154.not1185.not1188 = or i1 %spec.select.i689, %.not596
  %i.ux = add i32 %i.uv, -31507
  %spec.select.i690 = icmp ult i32 %i.ux, -63013
  %or.cond1156 = or i1 %or.cond1154.not1185.not1188, %spec.select.i690
  br i1 %or.cond1156, label %bb.cz, label %.thread1079

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.uy = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -48
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !247
  store ptr %i.va, ptr %i.f, align 16, !tbaa !342
  %i.vb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.vc = getelementptr inbounds i8, ptr %i.uy, i64 -104
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !247
  store ptr %i.vd, ptr %i.vb, align 8, !tbaa !342
  %i.ve = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.vf = getelementptr inbounds i8, ptr %i.uy, i64 -160
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !247
  store ptr %i.vg, ptr %i.ve, align 16, !tbaa !342
  %i.vh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.vi = getelementptr inbounds i8, ptr %i.uy, i64 -216
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !247
  store ptr %i.vj, ptr %i.vh, align 8, !tbaa !342
  %i.vk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.vl = getelementptr inbounds i8, ptr %i.uy, i64 -272
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !247
  store ptr %i.vm, ptr %i.vk, align 16, !tbaa !342
  %i.vn = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.vo = getelementptr inbounds i8, ptr %i.uy, i64 -328
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !247
  store ptr %i.vp, ptr %i.vn, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.0135.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 4 uses
  %i.vs = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49
  %i.vt = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !253
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %14, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0135.0.copyload, i32 noundef %.31037, ptr noundef nonnull %0, ptr noundef nonnull %i.vq, ptr noundef nonnull %i.vr, ptr noundef nonnull %i.f, ptr noundef nonnull %i.vs, i32 noundef %i.vu) #33
  %i.vv = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not118912331255 = icmp eq i16 %i.vv, 0
  br i1 %.not118912331255, label %.outer..loopexit_crit_edge, label %.lr.ph1234.lr.ph

.lr.ph1234.lr.ph:                                 ; preds = %bb.cz
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.vy = zext i8 %i.ag to i64                    ; 3 uses
  %i.vz = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %spec.select660 = select i1 %6, i32 -2, i32 0
  %.neg625 = select i1 %i.ei, i32 4, i32 205
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 11419648 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 11421104 ; 2 uses
  %.neg1268 = select i1 %i.ei, i32 -73, i32 175
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %.neg632 = select i1 %6, i32 -1945, i32 -934
  %i.wh = select i1 %6, i32 0, i32 1024
  br label %.lr.ph1234

.lr.ph1234:                                       ; preds = %.lr.ph1234.lr.ph, %.thread1092
  %indvars.iv = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %indvars.iv.next, %.thread1092 ] ; 4 uses
  %i.wi = phi i16 [ %i.vv, %.lr.ph1234.lr.ph ], [ %i.akv, %.thread1092 ]
  %.0506.ph1260 = phi i32 [ -32001, %.lr.ph1234.lr.ph ], [ %.10516, %.thread1092 ] ; 16 uses
  %.11031.ph1258 = phi i32 [ %.sroa.speculated824, %.lr.ph1234.lr.ph ], [ %.3, %.thread1092 ] ; 23 uses
  %.41038.ph1257 = phi i32 [ %.31037, %.lr.ph1234.lr.ph ], [ %.9, %.thread1092 ] ; 25 uses
  %.sroa.0827.0.ph1256 = phi i16 [ 0, %.lr.ph1234.lr.ph ], [ %.sroa.0827.2, %.thread1092 ] ; 12 uses
  %i.wj = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %i.aku, %.thread1092 ] ; 13 uses
  %i.wk = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %i.akt, %.thread1092 ] ; 13 uses
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph1234, %.backedge
  %i.wl = phi i16 [ %i.wi, %.lr.ph1234 ], [ %i.wn, %.backedge ] ; 25 uses
  %i.wm = icmp eq i16 %i.wl, %i.cm
  br i1 %i.wm, label %.backedge, label %bb.db

.backedge:                                        ; preds = %bb.da, %bb.db
  %i.wn = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not1189 = icmp eq i16 %i.wn, 0
  br i1 %.not1189, label %..loopexit_crit_edge, label %bb.da, !llvm.loop !773

bb.db:                                            ; preds = %bb.da
  %i.wo = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wl) #33
  br i1 %i.wo, label %bb.dc, label %.backedge

bb.dc:                                            ; preds = %bb.db
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.wp = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 40
  %i.wr = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.wr, ptr %i.wq, align 8, !tbaa !319
  %i.ws = and i16 %i.wl, 63
  %i.wt = zext nneg i16 %i.ws to i64              ; 10 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 %i.wt ; 3 uses
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !330
  %i.ww = icmp ne i8 %i.wv, 0
  %.not.i.i691 = icmp ult i16 %i.wl, -16384       ; 2 uses
  %or.cond.not.i.i692 = and i1 %.not.i.i691, %i.ww
  %i.wx = icmp slt i16 %i.wl, -16384              ; 2 uses
  %spec.select.i.i693 = or i1 %i.wx, %or.cond.not.i.i692
  %i.wy = and i16 %i.wl, 12288
  %i.wz = icmp eq i16 %i.wy, 12288                ; 2 uses
  %i.xa = or i1 %i.wz, %spec.select.i.i693        ; 3 uses
  %i.xb = lshr i16 %i.wl, 6
  %i.xc = and i16 %i.xb, 63
  %i.xd = zext nneg i16 %i.xc to i64
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !330 ; 4 uses
  %i.xg = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wl) #33 ; 3 uses
  %i.xh = add nsw i32 %.41038.ph1257, -1          ; 3 uses
  %i.xi = sub nsw i32 %.sroa.speculated819, %.11031.ph1258
  %i.xj = load i8, ptr %i.b, align 1, !tbaa !313, !range !221, !noundef !48 ; 2 uses
  %i.xk = trunc nuw i8 %i.xj to i1
  %i.xl = sext i32 %.41038.ph1257 to i64
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %i.xl
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !138
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %indvars.iv.next
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !138
  %i.xq = mul nsw i32 %i.xp, %i.xn                ; 2 uses
  %i.xr = mul nsw i32 %i.xi, 608
  %i.xs = load i32, ptr %i.vx, align 8, !tbaa !275
  %i.xt = sdiv i32 %i.xr, %i.xs
  %i.xu = mul nsw i32 %i.xq, 119
  %i.xv = sdiv i32 %i.xu, 256
  %i.xw = select i1 %i.xk, i32 0, i32 %i.xv
  %i.xx = add i32 %i.xq, 1182
  %i.xy = sub i32 %i.xx, %i.xt
  %i.xz = add i32 %i.xy, %i.xw                    ; 2 uses
  %i.ya = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 45
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !329, !range !221, !noundef !48
  %i.yd = trunc nuw i8 %i.yc to i1
  %i.ye = add nsw i32 %i.xz, 946
  %spec.select655 = select i1 %i.yd, i32 %i.ye, i32 %i.xz ; 3 uses
  %i.yf = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 40
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %i.vy
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !138
  %.not597 = icmp eq i32 %i.yi, 0
  %i.yj = icmp slt i32 %.0506.ph1260, -31506
  %or.cond1157 = select i1 %.not597, i1 true, i1 %i.yj
  br i1 %or.cond1157, label %.thread1101, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yk = mul nsw i32 %.41038.ph1257, %.41038.ph1257
  %i.yl = add nuw nsw i32 %i.yk, 3
  %narrow598 = sub nuw nsw i8 2, %i.xj
  %i.ym = zext nneg i8 %narrow598 to i32
  %i.yn = udiv i32 %i.yl, %i.ym
  %i.yo = zext nneg i32 %i.yn to i64
  %.not599 = icmp samesign ult i64 %indvars.iv.next, %i.yo
  br i1 %.not599, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.neg600 = sdiv i32 %spec.select655, -1024
  %i.yp = add i32 %.neg600, %i.xh                 ; 3 uses
  %or.cond38 = or i1 %i.xg, %i.xa
  %i.yq = zext i8 %i.xf to i64                    ; 5 uses
  br i1 %or.cond38, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.yr = load i8, ptr %i.wu, align 1, !tbaa !330 ; 2 uses
  %i.ys = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.yq
  %i.yt = getelementptr inbounds nuw [16 x i8], ptr %i.ys, i64 %i.wt
  %i.yu = and i8 %i.yr, 7
  %i.yv = zext nneg i8 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %i.yv
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !355 ; 2 uses
  %i.yy = icmp sgt i32 %i.yp, 6
  %or.cond41.not = select i1 %i.xg, i1 true, i1 %i.yy
  br i1 %or.cond41.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yz = sext i16 %i.yx to i32
  %i.za = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 32
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !252
  %i.zd = mul nsw i32 %i.yp, 217
  %i.ze = zext i8 %i.yr to i64
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.ze
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !138
  %i.zh = mul nsw i32 %i.yz, 131
  %i.zi = sdiv i32 %i.zh, 1024
  %i.zj = add nsw i32 %i.zd, 232
  %i.zk = add i32 %i.zj, %i.zi
  %i.zl = add i32 %i.zk, %i.zc
  %i.zm = add i32 %i.zl, %i.zg
  %.not605 = icmp sgt i32 %i.zm, %.11031.ph1258
  br i1 %.not605, label %bb.di, label %.thread1092

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zn = mul nsw i32 %.41038.ph1257, 166
  %i.zo = sdiv i16 %i.yx, 29
  %.sext = sext i16 %i.zo to i32
  %i.zp = add nsw i32 %i.zn, %.sext
  %.sroa.speculated779 = call i32 @llvm.smax.i32(i32 %i.zp, i32 0)
  %i.zq = icmp sgt i32 %.11031.ph1258, -1
  br i1 %i.zq, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zr = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 40
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %i.vy
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !138
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.yq
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !138
  %.not606 = icmp eq i32 %i.zu, %i.zw
  br i1 %.not606, label %.thread1101, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.zx = sub nsw i32 0, %.sroa.speculated779
  %i.zy = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wl, i32 noundef %i.zx) #33
  br i1 %i.zy, label %.thread1101, label %.thread1092, !llvm.loop !773

bb.dl:                                            ; preds = %bb.df
  %i.zz = load ptr, ptr %i.f, align 16, !tbaa !342
  %i.aaa = getelementptr inbounds nuw [128 x i8], ptr %i.zz, i64 %i.yq
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %i.aaa, i64 %i.wt
  %i.aac = load i16, ptr %i.aab, align 2, !tbaa !167
  %i.aad = sext i16 %i.aac to i32
  %i.aae = load ptr, ptr %i.vb, align 8, !tbaa !342
  %i.aaf = getelementptr inbounds nuw [128 x i8], ptr %i.aae, i64 %i.yq
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.aaf, i64 %i.wt
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !167
  %i.aai = sext i16 %i.aah to i32
  %i.aaj = add nsw i32 %i.aai, %i.aad
  %i.aak = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.aal = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !333
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aak, i64 40
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !337
  %i.aaq = and i64 %i.aap, %i.aan
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !162
  %i.aat = getelementptr inbounds nuw [2048 x i8], ptr %i.aas, i64 %i.aaq
  %i.aau = getelementptr inbounds nuw [128 x i8], ptr %i.aat, i64 %i.yq
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %i.aau, i64 %i.wt
  %i.aaw = load atomic i16, ptr %i.aav monotonic, align 2
  %i.aax = sext i16 %i.aaw to i32
  %i.aay = add nsw i32 %i.aaj, %i.aax             ; 2 uses
  %i.aaz = mul nsw i32 %.41038.ph1257, -4083
  %i.aba = icmp slt i32 %i.aay, %i.aaz
  br i1 %i.aba, label %.thread1092, label %bb.dm, !llvm.loop !773

bb.dm:                                            ; preds = %bb.dl
  %i.abb = zext i16 %i.wl to i64
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.vz, i64 %i.abb
  %i.abd = load i16, ptr %i.abc, align 2, !tbaa !132
  %i.abe = sext i16 %i.abd to i32
  %i.abf = mul nsw i32 %i.abe, 69
  %i.abg = sdiv i32 %i.abf, 32
  %i.abh = add nsw i32 %i.abg, %i.aay
  %i.abi = sdiv i32 %i.abh, 3208
  %i.abj = add nsw i32 %i.abi, %i.yp              ; 3 uses
  %i.abk = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 32
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !252 ; 2 uses
  %.not1190 = icmp eq i16 %.sroa.0827.0.ph1256, 0
  %i.abn = mul nsw i32 %i.abj, 127
  %i.abo = icmp sgt i32 %i.abm, %.11031.ph1258
  %i.abp = select i1 %i.abo, i32 85, i32 0
  %i.abq = select i1 %.not1190, i32 203, i32 42
  %i.abr = add i32 %i.abq, %i.abm
  %i.abs = add i32 %i.abr, %i.abp
  %i.abt = add i32 %i.abs, %i.abn                 ; 4 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abk, i64 44
  %i.abv = load i8, ptr %i.abu, align 4, !tbaa !317, !range !221, !noundef !48
  %i.abw = trunc nuw i8 %i.abv to i1
  %i.abx = icmp sgt i32 %i.abj, 12
  %or.cond44.not = select i1 %i.abw, i1 true, i1 %i.abx
  %.not602 = icmp sgt i32 %i.abt, %.11031.ph1258
  %or.cond657 = select i1 %or.cond44.not, i1 true, i1 %.not602
  br i1 %or.cond657, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not603 = icmp sgt i32 %.0506.ph1260, %i.abt
  %i.aby = icmp sgt i32 %.0506.ph1260, 31506
  %or.cond1158 = or i1 %.not603, %i.aby
  br i1 %or.cond1158, label %.thread1092, label %bb.do, !llvm.loop !773

bb.do:                                            ; preds = %bb.dn
  %i.abz = icmp sgt i32 %i.abt, 31506
  %spec.select658 = select i1 %i.abz, i32 %.0506.ph1260, i32 %i.abt
  br label %.thread1092, !llvm.loop !773

bb.dp:                                            ; preds = %bb.dm
  %.sroa.speculated773 = call i32 @llvm.smax.i32(i32 %i.abj, i32 0) ; 2 uses
  %i.aca = mul nsw i32 %.sroa.speculated773, -25
  %i.acb = mul nsw i32 %i.aca, %.sroa.speculated773
  %i.acc = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wl, i32 noundef %i.acb) #33
  br i1 %i.acc, label %.thread1101, label %.thread1092

.thread1101:                                      ; preds = %bb.dk, %bb.dj, %bb.dp, %bb.dc
  %i.acd = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.ace = icmp ne i16 %i.wl, %i.acd
  %brmerge1160 = or i1 %i.eh, %i.ace
  %.pre1318 = load ptr, ptr %i.a, align 8, !tbaa !762 ; 10 uses
  br i1 %brmerge1160, label %.thread1106, label %bb.dq

bb.dq:                                            ; preds = %.thread1101
  %i.acf = getelementptr inbounds nuw i8, ptr %.pre1318, i64 45
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !329, !range !221, !noundef !48 ; 2 uses
  %i.ach = or disjoint i8 %i.acg, 6
  %i.aci = zext nneg i8 %i.ach to i32
  %.not607 = icmp slt i32 %.41038.ph1257, %i.aci
  br i1 %.not607, label %.thread1106, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.acj = load i32, ptr %i.di, align 4, !tbaa !326 ; 2 uses
  %i.ack = add i32 %i.acj, -31507
  %spec.select.i697 = icmp ult i32 %i.ack, -63013
  br i1 %spec.select.i697, label %.thread1106, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.acl = load i8, ptr %i.up, align 8, !tbaa !336
  %i.acm = and i8 %i.acl, 2
  %.not608 = icmp eq i8 %i.acm, 0
  br i1 %.not608, label %.thread1106, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.acn = load i32, ptr %i.wa, align 4, !tbaa !341
  %i.aco = add nsw i32 %.41038.ph1257, -3
  %.not609 = icmp slt i32 %i.acn, %i.aco
  br i1 %.not609, label %.thread1106, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.acp = call fastcc noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_112is_shufflingENS_4MoveEPNS_6Search5StackERKNS_8PositionE(i16 %i.wl, ptr noundef nonnull %.pre1318, ptr noundef nonnull align 8 dereferenceable(1048) %1)
  br i1 %i.acp, label %.thread1106, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %narrow610 = mul nuw nsw i8 %i.acg, 75
  %narrow611 = add nuw i8 %narrow610, 53
  %i.acq = zext i8 %narrow611 to i32
  %i.acr = mul nsw i32 %.41038.ph1257, %i.acq
  %.neg6121138 = udiv i32 %i.acr, 60
  %i.acs = sub nsw i32 %i.acj, %.neg6121138       ; 5 uses
  %i.act = lshr i32 %i.xh, 1
  %i.acu = getelementptr inbounds nuw i8, ptr %.pre1318, i64 30
  store i16 %i.wl, ptr %i.acu, align 2, !tbaa !191
  %i.acv = add nsw i32 %i.acs, -1
  %i.acw = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %.pre1318, i32 noundef %i.acv, i32 noundef %i.acs, i32 noundef %i.act, i1 noundef zeroext %6) ; 6 uses
  %i.acx = load ptr, ptr %i.a, align 8, !tbaa !762 ; 5 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 30
  store i16 0, ptr %i.acy, align 2, !tbaa !191
  %i.acz = icmp slt i32 %i.acw, %i.acs
  br i1 %i.acz, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.ada = load i32, ptr %i.d, align 4, !tbaa !138
  %i.adb = call i32 @llvm.abs.i32(i32 %i.ada, i1 true)
  %i.adc = udiv i32 %i.adb, 230673                ; 2 uses
  %i.add = load i16, ptr %i.wb, align 64, !tbaa !164
  %i.ade = sext i16 %i.add to i32
  %i.adf = mul nsw i32 %i.ade, 897
  %.neg617.neg = sdiv i32 %i.adf, 127649
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acx, i64 24
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !253 ; 2 uses
  %i.adi = load i32, ptr %i.wc, align 16, !tbaa !264 ; 2 uses
  %i.adj = icmp sgt i32 %i.adh, %i.adi
  %.neg618.neg = select i1 %i.adj, i32 42, i32 0
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acx, i64 45
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !329, !range !221, !noundef !48
  %narrow620 = mul nuw nsw i8 %i.adl, 90
  %i.adm = zext nneg i8 %narrow620 to i32
  %i.adn = shl nsw i32 %i.adh, 1
  %i.ado = mul nsw i32 %i.adi, 3
  %i.adp = icmp sgt i32 %i.adn, %i.ado
  %.neg621.neg = select i1 %i.adp, i32 50, i32 0
  %.neg622 = add i32 %i.acs, %.neg625
  %.neg623 = add i32 %.neg622, %i.adc
  %.neg624 = add i32 %.neg623, %.neg617.neg
  %i.adq = add i32 %.neg624, %.neg618.neg
  %i.adr = icmp slt i32 %i.acw, %i.adq
  %i.ads = select i1 %i.adr, i32 2, i32 1
  %.neg1204 = add i32 %i.acs, %.neg1268
  %.neg626 = add i32 %.neg1204, %i.adc
  %.neg627 = sub i32 %.neg626, %i.adm
  %i.adt = add i32 %.neg627, %.neg621.neg
  %i.adu = icmp slt i32 %i.acw, %i.adt
  %i.adv = zext i1 %i.adu to i32
  %i.adw = add nuw nsw i32 %i.ads, %i.adv
  %i.adx = add nuw nsw i32 %.41038.ph1257, 1
  br label %.thread1106

bb.dx:                                            ; preds = %bb.dv
  %.not613 = icmp slt i32 %i.acw, %.sroa.speculated819
  %i.ady = add nsw i32 %i.acw, -31507
  %spec.select.i698 = icmp ult i32 %i.ady, -63013
  %or.cond1162 = select i1 %.not613, i1 true, i1 %spec.select.i698
  br i1 %or.cond1162, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.adz = load i32, ptr %i.di, align 4, !tbaa !326
  %.not615 = icmp slt i32 %i.adz, %.sroa.speculated819
  %spec.select667 = select i1 %.not615, i32 %spec.select660, i32 -3
  br label %.thread1106

bb.dz:                                            ; preds = %bb.dx
  %.neg614 = mul i32 %.41038.ph1257, -100
  %i.aea = add i32 %.neg614, -400
  %.sroa.speculated766 = call i32 @llvm.smax.i32(i32 %i.aea, i32 -4000)
  %.sroa.speculated.i701 = call i32 @llvm.smin.i32(i32 %.sroa.speculated766, i32 8192) ; 2 uses
  %i.aeb = load i16, ptr %i.wb, align 64, !tbaa !164
  %i.aec = sext i16 %i.aeb to i32                 ; 2 uses
  %i.aed = add nsw i32 %.sroa.speculated.i701, %i.aec
  %i.aee = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i701, i1 true)
  %i.aef = mul nsw i32 %i.aee, %i.aec
  %.neg.i702 = sdiv i32 %i.aef, -8192
  %i.aeg = add nsw i32 %i.aed, %.neg.i702
  %i.aeh = trunc i32 %i.aeg to i16
  store i16 %i.aeh, ptr %i.wb, align 64, !tbaa !164
  br label %.thread1119

.thread1106:                                      ; preds = %.thread1101, %bb.dy, %bb.dw, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq
  %i.aei = phi ptr [ %i.acx, %bb.dw ], [ %.pre1318, %bb.dq ], [ %i.acx, %bb.dy ], [ %.pre1318, %bb.ds ], [ %.pre1318, %bb.dt ], [ %.pre1318, %bb.du ], [ %.pre1318, %.thread1101 ], [ %.pre1318, %bb.dr ] ; 5 uses
  %.61039 = phi i32 [ %i.adx, %bb.dw ], [ %.41038.ph1257, %bb.dq ], [ %.41038.ph1257, %bb.dy ], [ %.41038.ph1257, %bb.ds ], [ %.41038.ph1257, %bb.dt ], [ %.41038.ph1257, %bb.du ], [ %.41038.ph1257, %.thread1101 ], [ %.41038.ph1257, %bb.dr ] ; 10 uses
  %.2505 = phi i32 [ %i.adw, %bb.dw ], [ 0, %bb.dq ], [ %spec.select667, %bb.dy ], [ 0, %bb.ds ], [ 0, %bb.dt ], [ 0, %bb.du ], [ 0, %.thread1101 ], [ 0, %bb.dr ] ; 2 uses
  %i.aej = load i8, ptr %i.wu, align 1, !tbaa !330
  %i.aek = load atomic i64, ptr %i.wd monotonic, align 8
  %i.ael = add i64 %i.aek, 1
  store atomic i64 %i.ael, ptr %i.wd monotonic, align 8
  %i.aem = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.we) #33 ; 2 uses
  %i.aen = extractvalue { ptr, ptr } %i.aem, 0    ; 2 uses
  %i.aeo = extractvalue { ptr, ptr } %i.aem, 1
  %i.aep = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.aeq = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wl, ptr noundef nonnull align 8 dereferenceable(192) %7, i1 noundef zeroext %i.xg, ptr noundef nonnull align 1 dereferenceable(7) %i.aen, ptr noundef nonnull align 8 dereferenceable(416) %i.aeo, ptr noundef nonnull %i.aep, ptr noundef nonnull %i.aeq) #33
  %.not.i703 = icmp eq ptr %i.aei, null
  br i1 %.not.i703, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit, label %bb.ea

bb.ea:                                            ; preds = %.thread1106
  %i.aer = icmp ne i8 %i.aej, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i691, %i.aer
  %spec.select.i.i.i = or i1 %i.wx, %or.cond.not.i.i.i
  %i.aes = or i1 %i.wz, %spec.select.i.i.i
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aei, i64 28
  store i16 %i.wl, ptr %i.aet, align 4, !tbaa !191
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aei, i64 44
  %i.aev = load i8, ptr %i.aeu, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aew = zext nneg i8 %i.aev to i64
  %i.aex = getelementptr inbounds nuw [4194304 x i8], ptr %i.wf, i64 %i.aew
  %i.aey = zext i1 %i.aes to i64
  %i.aez = getelementptr inbounds nuw [2097152 x i8], ptr %i.aex, i64 %i.aey
  %i.afa = load i8, ptr %i.aen, align 1, !tbaa !340
  %i.afb = zext i8 %i.afa to i64                  ; 2 uses
  %i.afc = getelementptr inbounds nuw [131072 x i8], ptr %i.aez, i64 %i.afb
  %i.afd = getelementptr inbounds nuw [2048 x i8], ptr %i.afc, i64 %i.wt
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  store ptr %i.afd, ptr %i.afe, align 8, !tbaa !247
  %i.aff = getelementptr inbounds nuw [131072 x i8], ptr %i.wg, i64 %i.afb
  %i.afg = getelementptr inbounds nuw [2048 x i8], ptr %i.aff, i64 %i.wt
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  store ptr %i.afg, ptr %i.afh, align 8, !tbaa !251
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %.thread1106, %bb.ea
  %i.afi = add nsw i32 %.2505, %i.xh              ; 7 uses
  %i.afj = load ptr, ptr %i.a, align 8, !tbaa !762 ; 6 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 45
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !329, !range !221, !noundef !48
  %i.afm = trunc nuw i8 %i.afl to i1
  br i1 %i.afm, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.afn = load i32, ptr %i.di, align 4, !tbaa !326
  %i.afo = icmp sgt i32 %i.afn, %.11031.ph1258
  %.neg631 = select i1 %i.afo, i32 -3641, i32 -2719
  %i.afp = load i32, ptr %i.wa, align 4, !tbaa !341
  %.not630 = icmp slt i32 %i.afp, %.61039
  %.neg633 = select i1 %.not630, i32 0, i32 %.neg632
  %.neg634 = add i32 %.neg631, %spec.select655
  %i.afq = add i32 %.neg634, %.neg633
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %.1530 = phi i32 [ %i.afq, %bb.eb ], [ %spec.select655, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit ]
  %.neg635 = mul i32 %i.wr, -73
  %i.afr = load i32, ptr %i.d, align 4, !tbaa !138
  %i.afs = call i32 @llvm.abs.i32(i32 %i.afr, i1 true)
  %i.aft = udiv i32 %i.afs, 30370
  %i.afu = load i16, ptr %i.dd, align 8           ; 2 uses
  %.not1192 = icmp eq i16 %i.afu, 0               ; 2 uses
  %i.afv = select i1 %.not1192, i32 4369, i32 3372
  %i.afw = select i1 %6, i32 %i.afv, i32 0
  %i.afx = add i32 %.neg635, 714
  %i.afy = add i32 %i.afx, %.1530
  %i.afz = sub i32 %i.afy, %i.aft
  %.2531 = add nsw i32 %i.afz, %i.afw             ; 2 uses
  %i.aga = add nsw i32 %.2531, 1119
  %spec.select661 = select i1 %i.ei, i32 %i.aga, i32 %.2531
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afj, i64 104
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !324 ; 2 uses
  %i.agd = icmp sgt i32 %i.agc, 1
  %.not636 = icmp eq i32 %i.agc, 2
  %i.age = select i1 %.not636, i32 256, i32 1280
  %i.agf = add nuw nsw i32 %i.age, %i.wh
  %i.agg = select i1 %i.agd, i32 %i.agf, i32 0
  %.4533 = add nsw i32 %spec.select661, %i.agg    ; 2 uses
  %i.agh = icmp eq i16 %i.wl, %i.afu
  %i.agi = add nsw i32 %.4533, -2151
  %spec.select662 = select i1 %i.agh, i32 %i.agi, i32 %.4533
  br i1 %i.xa, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.agj = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 184
  %i.agl = load i8, ptr %i.agk, align 8, !tbaa !318 ; 2 uses
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.agm
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !138
  %i.agp = mul nsw i32 %i.ago, 217
  %i.agq = sdiv i32 %i.agp, 32
  %i.agr = zext i8 %i.xf to i64
  %i.ags = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.agr
  %i.agt = getelementptr inbounds nuw [16 x i8], ptr %i.ags, i64 %i.wt
  %i.agu = and i8 %i.agl, 7
  %i.agv = zext nneg i8 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.agt, i64 %i.agv
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.agx = zext i16 %i.wl to i64
  %i.agy = getelementptr inbounds nuw [2 x i8], ptr %i.vz, i64 %i.agx
  %i.agz = load i16, ptr %i.agy, align 2, !tbaa !132
  %i.aha = sext i16 %i.agz to i32
  %i.ahb = shl nsw i32 %i.aha, 1
  %i.ahc = load ptr, ptr %i.f, align 16, !tbaa !342
  %i.ahd = zext i8 %i.xf to i64                   ; 2 uses
  %i.ahe = getelementptr inbounds nuw [128 x i8], ptr %i.ahc, i64 %i.ahd
  %i.ahf = getelementptr inbounds nuw [2 x i8], ptr %i.ahe, i64 %i.wt
  %i.ahg = load i16, ptr %i.ahf, align 2, !tbaa !167
  %i.ahh = sext i16 %i.ahg to i32
  %i.ahi = add nsw i32 %i.ahb, %i.ahh
  %i.ahj = load ptr, ptr %i.vb, align 8, !tbaa !342
  %i.ahk = getelementptr inbounds nuw [128 x i8], ptr %i.ahj, i64 %i.ahd
  %i.ahl = getelementptr inbounds nuw [2 x i8], ptr %i.ahk, i64 %i.wt
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.sink.in = phi ptr [ %i.ahl, %bb.ee ], [ %i.agw, %bb.ed ]
  %.sink1406 = phi i32 [ %i.ahi, %bb.ee ], [ %i.agq, %bb.ed ]
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !191
  %i.ahm = sext i16 %.sink to i32
  %i.ahn = add nsw i32 %.sink1406, %i.ahm         ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.afj, i64 36
  store i32 %i.ahn, ptr %i.aho, align 4, !tbaa !323
  %i.ahp = mul nsw i32 %i.ahn, 425
  %.neg637 = sdiv i32 %i.ahp, -4096
  %i.ahq = add i32 %.neg637, %spec.select662      ; 3 uses
  br i1 %6, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ahr = add nsw i32 %.61039, 1
  %i.ahs = sdiv i32 %i.ahq, %i.ahr
  %i.aht = add nsw i32 %i.ahs, %i.ahq
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.6535 = phi i32 [ %i.aht, %bb.eg ], [ %i.ahq, %bb.ef ] ; 3 uses
  %i.ahu = icmp sgt i32 %.61039, 1
  %i.ahv = icmp ne i64 %indvars.iv, 0
  %or.cond46 = select i1 %i.ahu, i1 %i.ahv, i1 false
  br i1 %or.cond46, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %.neg640 = sdiv i32 %.6535, -1024
  %i.ahw = add i32 %.neg640, %i.afi
  %i.ahx = add nsw i32 %i.afi, 2
  %i.ahy = call i32 @llvm.smin.i32(i32 %i.ahx, i32 %i.ahw)
  %.sroa.speculated761 = call i32 @llvm.smax.i32(i32 %i.ahy, i32 1) ; 4 uses
  %i.ahz = sub nsw i32 %i.afi, %.sroa.speculated761
  %i.aia = getelementptr inbounds nuw i8, ptr %i.afj, i64 52
  store i32 %i.ahz, ptr %i.aia, align 4, !tbaa !322
  %i.aib = getelementptr inbounds nuw i8, ptr %i.afj, i64 56
  %i.aic = xor i32 %.11031.ph1258, -1             ; 2 uses
  %i.aid = sub nsw i32 0, %.11031.ph1258          ; 2 uses
  %i.aie = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.aib, i32 noundef %i.aic, i32 noundef %i.aid, i32 noundef %.sroa.speculated761, i1 noundef zeroext true)
  %i.aif = sub nsw i32 0, %i.aie                  ; 5 uses
  %i.aig = load ptr, ptr %i.a, align 8, !tbaa !762 ; 3 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 52
  store i32 0, ptr %i.aih, align 4, !tbaa !322
  %i.aii = icmp slt i32 %.11031.ph1258, %i.aif
  br i1 %i.aii, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.aij = icmp slt i32 %.sroa.speculated761, %i.afi
  %i.aik = add nsw i32 %.0506.ph1260, 50
  %i.ail = icmp slt i32 %i.aik, %i.aif
  %i.aim = select i1 %i.aij, i1 %i.ail, i1 false
  %i.ain = add nsw i32 %.0506.ph1260, 9
  %i.aio = icmp sgt i32 %i.ain, %i.aif
  %i.aip = zext i1 %i.aim to i32
  %.neg641 = sext i1 %i.aio to i32
  %i.aiq = add i32 %i.afi, %.neg641
  %i.air = add i32 %i.aiq, %i.aip                 ; 2 uses
  %i.ais = icmp sgt i32 %i.air, %.sroa.speculated761
  br i1 %i.ais, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aig, i64 56
  %i.aiu = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.ait, i32 noundef %i.aic, i32 noundef %i.aid, i32 noundef %i.air, i1 noundef zeroext %i.g)
  %i.aiv = sub nsw i32 0, %i.aiu
  %.pre1319 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aiw = phi ptr [ %.pre1319, %bb.ek ], [ %i.aig, %bb.ej ]
  %.1521 = phi i32 [ %i.aiv, %bb.ek ], [ %i.aif, %bb.ej ]
  %i.aix = trunc i16 %i.wl to i8
  %i.aiy = and i8 %i.aix, 63
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef %i.aiw, i8 noundef zeroext %i.xf, i8 noundef zeroext %i.aiy, i32 noundef 1365)
  br label %bb.en

bb.em:                                            ; preds = %bb.eh
  %i.aiz = add nsw i32 %.6535, 1140
  %spec.select663 = select i1 %.not1192, i32 %i.aiz, i32 %.6535 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.afj, i64 56
  %i.ajb = xor i32 %.11031.ph1258, -1
  %i.ajc = sub nsw i32 0, %.11031.ph1258
  %i.ajd = icmp sgt i32 %spec.select663, 3957
  %.neg638 = sext i1 %i.ajd to i32
  %i.aje = add i32 %i.afi, %.neg638
  %i.ajf = icmp sgt i32 %spec.select663, 5654
  %i.ajg = icmp sgt i32 %i.afi, 2
  %i.ajh = select i1 %i.ajf, i1 %i.ajg, i1 false
  %.neg639 = sext i1 %i.ajh to i32
  %i.aji = add i32 %i.aje, %.neg639
  %i.ajj = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.aja, i32 noundef %i.ajb, i32 noundef %i.ajc, i32 noundef %i.aji, i1 noundef zeroext %i.g)
  %i.ajk = sub nsw i32 0, %i.ajj
  br label %bb.en

bb.en:                                            ; preds = %bb.ei, %bb.el, %bb.em
  %.3523 = phi i32 [ %i.ajk, %bb.em ], [ %.1521, %bb.el ], [ %i.aif, %bb.ei ] ; 8 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wl) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.we) #33
  %i.ajl = load ptr, ptr %i.aq, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.ajm = load atomic i8, ptr %i.ajl monotonic, align 8, !range !221, !noundef !48
  %i.ajn = trunc nuw i8 %i.ajm to i1
  br i1 %i.ajn, label %.thread1119, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ajo = icmp eq i32 %.3523, %.0506.ph1260
  br i1 %i.ajo, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.ajp = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  %i.ajr = load i32, ptr %i.ajq, align 8, !tbaa !253
  %i.ajs = add nsw i32 %i.ajr, 2
  %i.ajt = load i32, ptr %i.wc, align 16, !tbaa !264
  %.not642 = icmp slt i32 %i.ajs, %i.ajt
  br i1 %.not642, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aju = load atomic i64, ptr %i.wd seq_cst, align 8
  %i.ajv = and i64 %i.aju, 14
  %i.ajw = icmp eq i64 %i.ajv, 0
  br i1 %i.ajw, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ajx = add i32 %.0506.ph1260, 31505
  %i.ajy = icmp ult i32 %i.ajx, 63011
  %i.ajz = zext i1 %i.ajy to i32
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep, %bb.eo
  %i.aka = phi i32 [ 0, %bb.eq ], [ 0, %bb.ep ], [ 0, %bb.eo ], [ %i.ajz, %bb.er ]
  %i.akb = add nsw i32 %i.aka, %.3523             ; 2 uses
  %i.akc = icmp sgt i32 %i.akb, %.0506.ph1260
  br i1 %i.akc, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.akd = icmp sgt i32 %i.akb, %.11031.ph1258
  br i1 %i.akd, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %.not643 = icmp slt i32 %.3523, %.sroa.speculated819
  br i1 %.not643, label %bb.ev, label %.thread1126

.thread1126:                                      ; preds = %bb.eu
  store i64 %i.wj, ptr %i.u, align 8
  store i64 %i.wk, ptr %i.t, align 8
  %i.ake = icmp slt i32 %.2505, 2
  %i.akf = zext i1 %i.ake to i32
  %i.akg = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 48 ; 2 uses
  %i.aki = load i32, ptr %i.akh, align 8, !tbaa !324
  %i.akj = add nsw i32 %i.aki, %i.akf
  store i32 %i.akj, ptr %i.akh, align 8, !tbaa !324
  br label %.loopexit

bb.ev:                                            ; preds = %bb.eu
  %i.akk = add i32 %.61039, -14
  %or.cond49 = icmp ult i32 %i.akk, -11
  %i.akl = add i32 %.3523, -31507
  %spec.select.i706 = icmp ult i32 %i.akl, -63013
  %or.cond1163 = select i1 %or.cond49, i1 true, i1 %spec.select.i706
  %i.akm = add nsw i32 %.61039, -2
  %spec.select1167 = select i1 %or.cond1163, i32 %.61039, i32 %i.akm
  br label %.thread1092

bb.ew:                                            ; preds = %bb.et, %bb.es
  %.7513 = phi i32 [ %.0506.ph1260, %bb.es ], [ %.3523, %bb.et ] ; 3 uses
  %i.akn = icmp ne i16 %i.wl, %.sroa.0827.0.ph1256
  %i.ako = icmp samesign ult i64 %indvars.iv, 32
  %or.cond51 = select i1 %i.akn, i1 %i.ako, i1 false
  br i1 %or.cond51, label %bb.ex, label %.thread1092

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.xa, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.akp = add i64 %i.wk, 1
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.wk
  store i16 %i.wl, ptr %i.akq, align 2, !tbaa !191
  br label %.thread1092

bb.ez:                                            ; preds = %bb.ex
  %i.akr = add i64 %i.wj, 1
  %i.aks = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.wj
  store i16 %i.wl, ptr %i.aks, align 2, !tbaa !191
  br label %.thread1092

.thread1092:                                      ; preds = %bb.ev, %bb.dh, %bb.do, %bb.dn, %bb.dp, %bb.dl, %bb.dk, %bb.ew, %bb.ez, %bb.ey
  %i.akt = phi i64 [ %i.wk, %bb.ev ], [ %i.akp, %bb.ey ], [ %i.wk, %bb.ez ], [ %i.wk, %bb.ew ], [ %i.wk, %bb.dk ], [ %i.wk, %bb.do ], [ %i.wk, %bb.dl ], [ %i.wk, %bb.dp ], [ %i.wk, %bb.dn ], [ %i.wk, %bb.dh ] ; 2 uses
  %i.aku = phi i64 [ %i.wj, %bb.ev ], [ %i.wj, %bb.ey ], [ %i.akr, %bb.ez ], [ %i.wj, %bb.ew ], [ %i.wj, %bb.dk ], [ %i.wj, %bb.do ], [ %i.wj, %bb.dl ], [ %i.wj, %bb.dp ], [ %i.wj, %bb.dn ], [ %i.wj, %bb.dh ] ; 2 uses
  %.sroa.0827.2 = phi i16 [ %i.wl, %bb.ev ], [ %.sroa.0827.0.ph1256, %bb.ey ], [ %.sroa.0827.0.ph1256, %bb.ez ], [ %.sroa.0827.0.ph1256, %bb.ew ], [ %.sroa.0827.0.ph1256, %bb.dk ], [ %.sroa.0827.0.ph1256, %bb.do ], [ %.sroa.0827.0.ph1256, %bb.dl ], [ %.sroa.0827.0.ph1256, %bb.dp ], [ %.sroa.0827.0.ph1256, %bb.dn ], [ %.sroa.0827.0.ph1256, %bb.dh ] ; 2 uses
  %.9 = phi i32 [ %spec.select1167, %bb.ev ], [ %.61039, %bb.ey ], [ %.61039, %bb.ez ], [ %.61039, %bb.ew ], [ %.41038.ph1257, %bb.dk ], [ %.41038.ph1257, %bb.do ], [ %.41038.ph1257, %bb.dl ], [ %.41038.ph1257, %bb.dp ], [ %.41038.ph1257, %bb.dn ], [ %.41038.ph1257, %bb.dh ] ; 2 uses
  %.3 = phi i32 [ %.3523, %bb.ev ], [ %.11031.ph1258, %bb.ey ], [ %.11031.ph1258, %bb.ez ], [ %.11031.ph1258, %bb.ew ], [ %.11031.ph1258, %bb.dk ], [ %.11031.ph1258, %bb.do ], [ %.11031.ph1258, %bb.dl ], [ %.11031.ph1258, %bb.dp ], [ %.11031.ph1258, %bb.dn ], [ %.11031.ph1258, %bb.dh ] ; 2 uses
  %.10516 = phi i32 [ %.3523, %bb.ev ], [ %.7513, %bb.ey ], [ %.7513, %bb.ez ], [ %.7513, %bb.ew ], [ %.0506.ph1260, %bb.dk ], [ %spec.select658, %bb.do ], [ %.0506.ph1260, %bb.dl ], [ %.0506.ph1260, %bb.dp ], [ %.0506.ph1260, %bb.dn ], [ %.0506.ph1260, %bb.dh ] ; 2 uses
  %i.akv = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not11891233 = icmp eq i16 %i.akv, 0
  br i1 %.not11891233, label %.outer..loopexit_crit_edge, label %.lr.ph1234

.outer..loopexit_crit_edge:                       ; preds = %.thread1092, %bb.cz
  %.lcssa1250 = phi i64 [ 0, %bb.cz ], [ %i.akt, %.thread1092 ]
  %.lcssa1244 = phi i64 [ 0, %bb.cz ], [ %i.aku, %.thread1092 ]
  %split = phi i16 [ 0, %bb.cz ], [ %.sroa.0827.2, %.thread1092 ]
  %split1235 = phi i32 [ %.31037, %bb.cz ], [ %.9, %.thread1092 ]
  %split1236 = phi i32 [ %.sroa.speculated824, %bb.cz ], [ %.3, %.thread1092 ]
  %split1237 = phi i32 [ 0, %bb.cz ], [ %i.wr, %.thread1092 ]
  %split1238 = phi i32 [ -32001, %bb.cz ], [ %.10516, %.thread1092 ]
  store i64 %.lcssa1244, ptr %i.u, align 8
  store i64 %.lcssa1250, ptr %i.t, align 8
  br label %.loopexit

..loopexit_crit_edge:                             ; preds = %.backedge
  %i.akw = trunc nuw nsw i64 %indvars.iv to i32
  store i64 %i.wj, ptr %i.u, align 8
  store i64 %i.wk, ptr %i.t, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.outer..loopexit_crit_edge, %..loopexit_crit_edge, %.thread1126
  %.11031.ph1225 = phi i32 [ %.11031.ph1258, %.thread1126 ], [ %.11031.ph1258, %..loopexit_crit_edge ], [ %split1236, %.outer..loopexit_crit_edge ] ; 3 uses
  %.sroa.0827.3 = phi i16 [ %i.wl, %.thread1126 ], [ %.sroa.0827.0.ph1256, %..loopexit_crit_edge ], [ %split, %.outer..loopexit_crit_edge ] ; 8 uses
  %.10 = phi i32 [ %.61039, %.thread1126 ], [ %.41038.ph1257, %..loopexit_crit_edge ], [ %split1235, %.outer..loopexit_crit_edge ] ; 8 uses
  %.1528 = phi i32 [ %i.wr, %.thread1126 ], [ %i.akw, %..loopexit_crit_edge ], [ %split1237, %.outer..loopexit_crit_edge ] ; 2 uses
  %.11517 = phi i32 [ %.3523, %.thread1126 ], [ %.0506.ph1260, %..loopexit_crit_edge ], [ %split1238, %.outer..loopexit_crit_edge ] ; 4 uses
  %.not644 = icmp slt i32 %.11517, %.sroa.speculated819
  %i.akx = add i32 %.11517, -31507
  %spec.select.i707 = icmp ult i32 %i.akx, -63013
  %or.cond1164 = or i1 %.not644, %spec.select.i707
  %i.aky = add i32 %.11031.ph1225, -31507
  %spec.select.i708 = icmp ult i32 %i.aky, -63013
  %or.cond1165 = select i1 %or.cond1164, i1 true, i1 %spec.select.i708
  br i1 %or.cond1165, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.loopexit
  %i.akz = mul nsw i32 %.11517, %.10
  %i.ala = add nsw i32 %i.akz, %.sroa.speculated819
  %i.alb = add nsw i32 %.10, 1
  %i.alc = sdiv i32 %i.ala, %i.alb
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %.loopexit
  %.12518 = phi i32 [ %.11517, %.loopexit ], [ %i.alc, %bb.fa ] ; 7 uses
  %.not645 = icmp eq i32 %.1528, 0                ; 2 uses
  br i1 %.not645, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %.pre1321 = load ptr, ptr %i.a, align 8, !tbaa !762 ; 3 uses
  br i1 %i.eh, label %.thread1133, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ald = getelementptr inbounds nuw i8, ptr %.pre1321, i64 44
  %i.ale = load i8, ptr %i.ald, align 4, !tbaa !317, !range !221, !noundef !48
  %i.alf = trunc nuw i8 %i.ale to i1
  br i1 %i.alf, label %bb.fe, label %bb.fq

bb.fe:                                            ; preds = %bb.fd
  %i.alg = getelementptr inbounds nuw i8, ptr %.pre1321, i64 24
  %i.alh = load i32, ptr %i.alg, align 8, !tbaa !253
  %i.ali = add nsw i32 %i.alh, -32000
  br label %bb.fq

bb.ff:                                            ; preds = %bb.fb
  %.not1196 = icmp eq i16 %.sroa.0827.3, 0
  br i1 %.not1196, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.alj = load ptr, ptr %i.a, align 8, !tbaa !762
  %.sroa.064.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.alj, ptr noundef nonnull align 64 dereferenceable(14279296) %0, i16 %.sroa.0827.3, i8 noundef zeroext %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %.10, i16 %.sroa.064.0.copyload, i32 noundef %.1528)
  %i.alk = getelementptr inbounds nuw i8, ptr %0, i64 11419648 ; 2 uses
  %i.all = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.alm = icmp eq i16 %.sroa.0827.3, %i.all
  %i.aln = select i1 %i.alm, i32 809, i32 -865    ; 2 uses
  %i.alo = load i16, ptr %i.alk, align 64, !tbaa !164
  %i.alp = sext i16 %i.alo to i32                 ; 2 uses
  %i.alq = add nsw i32 %i.aln, %i.alp
  %i.alr = call i32 @llvm.abs.i32(i32 %i.aln, i1 true)
  %i.als = mul nsw i32 %i.alr, %i.alp
  %.neg.i711 = sdiv i32 %i.als, -8192
  %i.alt = add nsw i32 %i.alq, %.neg.i711
  %i.alu = trunc i32 %i.alt to i16
  store i16 %i.alu, ptr %i.alk, align 64, !tbaa !164
  br label %bb.fq

bb.fh:                                            ; preds = %bb.ff
  %.not52 = xor i1 %i.ae, true
  %i.alv = icmp ne i8 %i.cg, 64                   ; 2 uses
  %or.cond55 = and i1 %i.alv, %.not52
  br i1 %or.cond55, label %bb.fi, label %bb.fo

bb.fi:                                            ; preds = %bb.fh
  %i.alw = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.alx = getelementptr inbounds i8, ptr %i.alw, i64 -20
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !323
  %.neg646 = sdiv i32 %i.aly, -100
  %i.alz = mul nsw i32 %.10, 56
  %.sroa.speculated746 = call i32 @llvm.smin.i32(i32 %i.alz, i32 489)
  %i.ama = getelementptr inbounds i8, ptr %i.alw, i64 -16
  %i.amb = load i32, ptr %i.ama, align 8, !tbaa !319
  %i.amc = icmp sgt i32 %i.amb, 8
  %i.amd = select i1 %i.amc, i32 184, i32 0
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alw, i64 44
  %i.amf = load i8, ptr %i.ame, align 4, !tbaa !317, !range !221, !noundef !48
  %i.amg = trunc nuw i8 %i.amf to i1
  br i1 %i.amg, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alw, i64 32
  %i.ami = load i32, ptr %i.amh, align 8, !tbaa !252
  %i.amj = add nsw i32 %i.ami, -107
  %.not647 = icmp sgt i32 %.12518, %i.amj
  %i.amk = select i1 %.not647, i32 0, i32 147
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aml = phi i32 [ 0, %bb.fi ], [ %i.amk, %bb.fj ]
  %i.amm = getelementptr inbounds i8, ptr %i.alw, i64 -12
  %i.amn = load i8, ptr %i.amm, align 4, !tbaa !317, !range !221, !noundef !48
  %i.amo = trunc nuw i8 %i.amn to i1
  br i1 %i.amo, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.amp = getelementptr inbounds i8, ptr %i.alw, i64 -24
  %i.amq = load i32, ptr %i.amp, align 8, !tbaa !252
  %i.amr = sub i32 -65, %i.amq
  %.not648 = icmp sgt i32 %.12518, %i.amr
  %i.ams = select i1 %.not648, i32 0, i32 156
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.amt = phi i32 [ 0, %bb.fk ], [ %i.ams, %bb.fl ]
  %i.amu = add i32 %.sroa.speculated746, -215
  %i.amv = add i32 %i.amu, %.neg646
  %i.amw = add nsw i32 %i.amv, %i.amd
  %i.amx = add nsw i32 %i.amw, %i.aml
  %i.amy = add nsw i32 %i.amx, %i.amt
  %.sroa.speculated741 = call i32 @llvm.smax.i32(i32 %i.amy, i32 0)
  %i.amz = mul nsw i32 %.10, 141
  %i.ana = call i32 @llvm.smin.i32(i32 %i.amz, i32 1438)
  %.sroa.speculated735 = add nsw i32 %i.ana, -87
  %i.anb = mul nsw i32 %.sroa.speculated741, %.sroa.speculated735 ; 3 uses
  %i.anc = getelementptr inbounds i8, ptr %i.alw, i64 -56
  %i.and = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 %i.and ; 2 uses
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !330
  %i.ang = mul nsw i32 %i.anb, 203
  %i.anh = sdiv i32 %i.ang, 16384
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.anc, i8 noundef zeroext %i.anf, i8 noundef zeroext %i.cg, i32 noundef %i.anh)
  %i.ani = xor i8 %i.ag, 1
  %i.anj = zext i8 %i.ani to i64
  %i.ank = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.anj
  %i.anl = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.anm = getelementptr inbounds i8, ptr %i.anl, i64 -28
  %i.ann = load i16, ptr %i.anm, align 2, !tbaa !234 ; 2 uses
  %i.ano = zext i16 %i.ann to i64
  %i.anp = getelementptr inbounds nuw [2 x i8], ptr %i.ank, i64 %i.ano ; 2 uses
  %i.anq = mul nsw i32 %i.anb, 243
  %i.anr = sdiv i32 %i.anq, 32768
  %.sroa.speculate.load.false.sroa.speculated.i715 = call i32 @llvm.smax.i32(i32 %i.anr, i32 -7183)
  %.sroa.speculated.i716 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i715, i32 7183) ; 2 uses
  %i.ans = load i16, ptr %i.anp, align 2, !tbaa !132
  %i.ant = sext i16 %i.ans to i32                 ; 2 uses
  %i.anu = add nsw i32 %.sroa.speculated.i716, %i.ant
  %i.anv = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i716, i1 true)
  %i.anw = mul nsw i32 %i.anv, %i.ant
  %.neg.i717 = sdiv i32 %i.anw, -7183
  %i.anx = add nsw i32 %i.anu, %.neg.i717
  %i.any = trunc i32 %i.anx to i16
  store i16 %i.any, ptr %i.anp, align 2, !tbaa !132
  %i.anz = load i8, ptr %i.ane, align 1, !tbaa !330 ; 2 uses
  %i.aoa = and i8 %i.anz, 7
  %.not649 = icmp eq i8 %i.aoa, 1
  %i.aob = and i16 %i.ann, -16384
  %.not650 = icmp eq i16 %i.aob, 16384
  %or.cond1166 = or i1 %.not650, %.not649
  br i1 %or.cond1166, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aoc = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.aod = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !333
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aoc, i64 40
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !337
  %i.aoi = and i64 %i.aoh, %i.aof
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoc, i64 24
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !162
  %i.aol = getelementptr inbounds nuw [2048 x i8], ptr %i.aok, i64 %i.aoi
  %i.aom = zext i8 %i.anz to i64
  %i.aon = getelementptr inbounds nuw [128 x i8], ptr %i.aol, i64 %i.aom
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.aon, i64 %i.and ; 2 uses
  %i.aop = mul nsw i32 %i.anb, 145
  %i.aoq = sdiv i32 %i.aop, 4096
  %.sroa.speculate.load.false.sroa.speculated.i718 = call i32 @llvm.smax.i32(i32 %i.aoq, i32 -8192)
  %.sroa.speculated.i719 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i718, i32 8192) ; 2 uses
  %i.aor = load atomic i16, ptr %i.aoo monotonic, align 2
  %i.aos = sext i16 %i.aor to i32                 ; 2 uses
  %i.aot = add nsw i32 %.sroa.speculated.i719, %i.aos
  %i.aou = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i719, i1 true)
  %i.aov = mul nsw i32 %i.aou, %i.aos
  %.neg.i720 = sdiv i32 %i.aov, -8192
  %i.aow = add nsw i32 %i.aot, %.neg.i720
  %i.aox = trunc i32 %i.aow to i16
  store atomic i16 %i.aox, ptr %i.aoo monotonic, align 2
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fh
  %or.cond58 = and i1 %i.ae, %i.alv
  br i1 %or.cond58, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.aoy = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 184
  %i.apa = load i8, ptr %i.aoz, align 8, !tbaa !318
  %i.apb = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 %i.apb
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !330
  %i.ape = zext i8 %i.apd to i64
  %i.apf = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.ape
  %i.apg = getelementptr inbounds nuw [16 x i8], ptr %i.apf, i64 %i.apb
  %i.aph = and i8 %i.apa, 7
  %i.api = zext nneg i8 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.apg, i64 %i.api ; 2 uses
  %i.apk = load i16, ptr %i.apj, align 2, !tbaa !355
  %i.apl = sext i16 %i.apk to i32                 ; 2 uses
  %i.apm = add nsw i32 %i.apl, 1012
  %i.apn = mul nsw i32 %i.apl, 23
  %.neg.i721 = sdiv i32 %i.apn, -243
  %i.apo = add nsw i32 %i.apm, %.neg.i721
  %i.app = trunc i32 %i.apo to i16
  store i16 %i.app, ptr %i.apj, align 2, !tbaa !355
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fm, %bb.fn, %bb.fd, %bb.fe, %bb.fg, %bb.fo, %bb.fp
  %.13519 = phi i32 [ %.12518, %bb.fg ], [ %.12518, %bb.fm ], [ %.12518, %bb.fp ], [ %.12518, %bb.fo ], [ 0, %bb.fd ], [ %i.ali, %bb.fe ], [ %.12518, %bb.fn ] ; 3 uses
  %.not651 = icmp sgt i32 %.13519, %.11031.ph1225
  %.pre1323.pre = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  br i1 %.not651, label %bb.ft, label %.thread1133

.thread1133:                                      ; preds = %bb.fq, %bb.fc
  %i.apq = phi ptr [ %.pre1321, %bb.fc ], [ %.pre1323.pre, %bb.fq ] ; 3 uses
  %.135191136 = phi i32 [ %.11031.ph1225, %bb.fc ], [ %.13519, %bb.fq ]
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 45 ; 2 uses
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !329, !range !221, !noundef !48
  %i.apt = trunc nuw i8 %i.aps to i1
  br i1 %i.apt, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.thread1133
  %i.apu = getelementptr inbounds i8, ptr %i.apq, i64 -11
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !329, !range !221, !noundef !48
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.thread1133
  %i.apw = phi i8 [ 1, %.thread1133 ], [ %i.apv, %bb.fr ]
  store i8 %i.apw, ptr %i.apr, align 1, !tbaa !329
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fq
  %.pre1323 = phi ptr [ %i.apq, %bb.fs ], [ %.pre1323.pre, %bb.fq ] ; 3 uses
  %.135191137 = phi i32 [ %.135191136, %bb.fs ], [ %.13519, %bb.fq ] ; 10 uses
  br i1 %i.eh, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.apx = getelementptr inbounds nuw i8, ptr %.pre1323, i64 24
  %i.apy = load i32, ptr %i.apx, align 8, !tbaa !253 ; 2 uses
  %i.apz = icmp sgt i32 %.135191137, 31506
  %i.aqa = icmp slt i32 %.135191137, -31506
  %i.aqb = select i1 %i.aqa, i32 %i.apy, i32 0
  %i.aqc = sub i32 0, %i.aqb
  %.p.i722 = select i1 %i.apz, i32 %i.apy, i32 %i.aqc
  %i.aqd = add i32 %.p.i722, %.135191137
  %i.aqe = getelementptr inbounds nuw i8, ptr %.pre1323, i64 45
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !329, !range !221, !noundef !48
  %i.aqg = trunc nuw i8 %i.aqf to i1
  %.not652 = icmp slt i32 %.135191137, %.sroa.speculated819
  %i.aqh = select i1 %.not652, i8 1, i8 2
  %i.aqi = call i32 @llvm.smin.i32(i32 %.10, i32 239)
  %.in.sroa.speculate.load. = add nsw i32 %i.aqi, 6
  %.in.sroa.speculated = select i1 %.not645, i32 %.in.sroa.speculate.load., i32 %.10
  %i.aqj = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.aqk = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.aqj) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef %i.aqd, i1 noundef zeroext %i.aqg, i8 noundef zeroext %i.aqh, i32 noundef %.in.sroa.speculated, i16 %.sroa.0827.3, i32 noundef %.1526, i8 noundef zeroext %i.aqk) #33
  %.pre1322 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.aql = phi ptr [ %.pre1322, %bb.fu ], [ %.pre1323, %bb.ft ] ; 3 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 44
  %i.aqn = load i8, ptr %i.aqm, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aqo = trunc nuw i8 %i.aqn to i1
  br i1 %i.aqo, label %.thread1119, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aqp = icmp ne i16 %.sroa.0827.3, 0           ; 3 uses
  br i1 %i.aqp, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.aqq = and i16 %.sroa.0827.3, 63
  %i.aqr = zext nneg i16 %i.aqq to i64
  %i.aqs = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqr
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !330
  %i.aqu = icmp ne i8 %i.aqt, 0
  %.not.i724 = icmp ult i16 %.sroa.0827.3, -16384
  %or.cond.not.i = and i1 %.not.i724, %i.aqu
  %i.aqv = icmp slt i16 %.sroa.0827.3, -16384
  %spec.select.i725 = or i1 %i.aqv, %or.cond.not.i
  br i1 %spec.select.i725, label %.thread1119, label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aql, i64 32
  %i.aqx = load i32, ptr %i.aqw, align 8, !tbaa !252 ; 2 uses
  %i.aqy = icmp sle i32 %.135191137, %i.aqx
  %i.aqz = xor i1 %i.aqp, %i.aqy
  br i1 %i.aqz, label %bb.fz, label %.thread1119

bb.fz:                                            ; preds = %bb.fy
  %i.ara = sub nsw i32 %.135191137, %i.aqx
  %i.arb = mul nsw i32 %i.ara, %.10
  %i.arc = select i1 %i.aqp, i32 10, i32 8
  %i.ard = sdiv i32 %i.arb, %i.arc
  %.sroa.speculate.load.false.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ard, i32 -256)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 256)
  %.val668 = load ptr, ptr %i.ej, align 8, !tbaa !139
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.aql, ptr %.val668, i32 noundef %.sroa.speculated)
  br label %.thread1119

.thread1119:                                      ; preds = %bb.en, %bb.dz, %bb.fv, %bb.fx, %bb.fy, %bb.fz
  %.20 = phi i32 [ %i.acw, %bb.dz ], [ %.135191137, %bb.fz ], [ %.135191137, %bb.fy ], [ %.135191137, %bb.fx ], [ %.135191137, %bb.fv ], [ 0, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %.thread1079

.thread1079:                                      ; preds = %bb.cy, %bb.ck, %.thread1087, %bb.ce, %bb.bt, %.thread1054, %bb.cl, %bb.bf, %.thread1119, %bb.ca, %bb.bg
  %.21 = phi i32 [ %.20, %.thread1119 ], [ %i.lb, %bb.bf ], [ %i.pq, %bb.ca ], [ %i.un, %.thread1087 ], [ %i.rk, %bb.cl ], [ %i.qg, %bb.ce ], [ %i.mt, %bb.bt ], [ %i.lf, %bb.bg ], [ %i.uo, %bb.cy ], [ %i.lb, %.thread1054 ], [ %i.rk, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ga

bb.ga:                                            ; preds = %bb.r, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %bb.q, %.thread1079
  %.22 = phi i32 [ %.21, %.thread1079 ], [ %i.bz, %bb.q ], [ %i.bu, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ %.sroa.speculated824, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.gb

bb.gb:                                            ; preds = %bb.e, %bb.ga, %bb.b
  %.23 = phi i32 [ %i.i, %bb.b ], [ %.22, %bb.ga ], [ %i.r, %bb.e ]
  ret i32 %.23
}

declare void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164), ptr noundef nonnull align 8 dereferenceable(1048), i16, i32 noundef, ptr noundef) unnamed_addr #6

declare i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %6 = alloca %"class.std::tuple.201", align 8    ; 15 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %7 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %8 = alloca %"struct.Stockfish::MoveList", align 8 ; 4 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !253
  %i.e = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.d) #33
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 2                          ; 2 uses
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  %.not.not = icmp sgt i32 %i.i, %4
  br i1 %.not.not, label %bb.bu, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0243 = phi i32 [ %i.j, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !214
  %i.o = icmp ne i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.q = zext i1 %i.o to i8
  store i8 %i.q, ptr %i.p, align 4, !tbaa !317
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !253
  %i.t = tail call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.s) #33
  %.pr = load i32, ptr %i.r, align 8, !tbaa !253
  %i.u = icmp sgt i32 %.pr, 245                   ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.u, label %.thread, label %bb.k

bb.f:                                             ; preds = %bb.d
  br i1 %i.u, label %.thread, label %bb.bt

.thread:                                          ; preds = %bb.e, %bb.f
  %i.v = load i8, ptr %i.p, align 4, !tbaa !317, !range !221, !noundef !48
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.bt, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !169, !nonnull !48, !align !49 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !25 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 noundef %.sroa.0.0.copyload.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw [160 x i8], ptr %i.ab, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !125
  switch i8 %i.ae, label %bb.j [
    i8 -1, label %bb.h
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.i
end_hunk_3
begin_hunk_4_@_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii:bb.a
  br i1 %i.kk, label %.loopexit271.split, label %.outer272.backedge

.outer272.backedge:                               ; preds = %bb.bg, %bb.ba
  br label %.outer272, !llvm.loop !774

.loopexit271.split:                               ; preds = %bb.bg, %bb.bf
  %i.kz = phi i1 [ false, %bb.bf ], [ %i.kb, %bb.bg ]
  %i.la = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jz, i32 noundef -80) #33
  br i1 %i.la, label %.loopexit276, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bc, %bb.be, %.loopexit271.split, %bb.bf
  %.4252.ph.be = phi i32 [ %.4252.ph361, %bb.bf ], [ %.4252.ph361, %.loopexit271.split ], [ %.sroa.speculated, %bb.bc ], [ %.sroa.speculated201, %bb.be ]
  %.4252.ph.be.fr = freeze i32 %.4252.ph.be       ; 3 uses
  %i.lb = icmp slt i32 %.4252.ph.be.fr, -31506
  br i1 %i.lb, label %.outer.split.us, label %.outer.split, !llvm.loop !774

.loopexit276:                                     ; preds = %.loopexit271.split, %.loopexit271.split.us.us, %.loopexit270.split.us
  %.sink = phi i64 [ %i.jf, %.loopexit271.split.us.us ], [ %i.jt, %.loopexit270.split.us ], [ %i.kd, %.loopexit271.split ] ; 3 uses
  %i.lc = phi i1 [ %i.jd, %.loopexit271.split.us.us ], [ %i.jr, %.loopexit270.split.us ], [ %i.kz, %.loopexit271.split ]
  %.not.i.i300 = phi i1 [ %.not.i.i.us342.us, %.loopexit271.split.us.us ], [ %.not.i.i.us, %.loopexit270.split.us ], [ %.not.i.i, %.loopexit271.split ]
  %i.ld = phi i1 [ %i.jj, %.loopexit271.split.us.us ], [ %i.ju, %.loopexit270.split.us ], [ %i.kh, %.loopexit271.split ]
  %i.le = phi i1 [ %i.jl, %.loopexit271.split.us.us ], [ %i.jw, %.loopexit270.split.us ], [ %i.kj, %.loopexit271.split ]
  %i.lf = phi i32 [ %i.jn, %.loopexit271.split.us.us ], [ %i.jx, %.loopexit270.split.us ], [ %i.kl, %.loopexit271.split ] ; 3 uses
  %.lcssa277281 = phi i16 [ %i.jo, %.loopexit271.split.us.us ], [ %i.jy, %.loopexit270.split.us ], [ %i.jz, %.loopexit271.split ] ; 5 uses
  %.7 = phi i32 [ %.4252.ph.ph, %.loopexit271.split.us.us ], [ %.4252.ph.lcssa, %.loopexit270.split.us ], [ %.4252.ph361, %.loopexit271.split ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !330
  %i.li = load atomic i64, ptr %i.iq monotonic, align 8
  %i.lj = add i64 %i.li, 1
  store atomic i64 %i.lj, ptr %i.iq monotonic, align 8
  %i.lk = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ir) #33 ; 2 uses
  %i.ll = extractvalue { ptr, ptr } %i.lk, 0      ; 2 uses
  %i.lm = extractvalue { ptr, ptr } %i.lk, 1
  %i.ln = load ptr, ptr %i.bc, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.lo = load ptr, ptr %i.im, align 8, !tbaa !139, !nonnull !48, !align !49
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa277281, ptr noundef nonnull align 8 dereferenceable(192) %5, i1 noundef zeroext %i.lc, ptr noundef nonnull align 1 dereferenceable(7) %i.ll, ptr noundef nonnull align 8 dereferenceable(416) %i.lm, ptr noundef nonnull %i.ln, ptr noundef nonnull %i.lo) #33
  %i.lp = icmp ne i8 %i.lh, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i300, %i.lp
  %spec.select.i.i.i = or i1 %i.ld, %or.cond.not.i.i.i
  %i.lq = or i1 %i.le, %spec.select.i.i.i
  store i16 %.lcssa277281, ptr %i.is, align 4, !tbaa !191
  %i.lr = load i8, ptr %i.p, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ls = zext nneg i8 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4194304 x i8], ptr %i.it, i64 %i.ls
  %i.lu = zext i1 %i.lq to i64
  %i.lv = getelementptr inbounds nuw [2097152 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load i8, ptr %i.ll, align 1, !tbaa !340
  %i.lx = zext i8 %i.lw to i64                    ; 2 uses
  %i.ly = getelementptr inbounds nuw [131072 x i8], ptr %i.lv, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [2048 x i8], ptr %i.ly, i64 %.sink
  store ptr %i.lz, ptr %i.iu, align 8, !tbaa !247
  %i.ma = getelementptr inbounds nuw [131072 x i8], ptr %i.iv, i64 %i.lx
  %i.mb = getelementptr inbounds nuw [2048 x i8], ptr %i.ma, i64 %.sink
  store ptr %i.mb, ptr %i.iw, align 8, !tbaa !251
  %i.mc = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.ix, i32 noundef %i.iy, i32 noundef %i.ja)
  %i.md = sub i32 0, %i.mc                        ; 7 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa277281) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ir) #33
  %i.me = icmp slt i32 %.7, %i.md
  br i1 %i.me, label %bb.bh, label %.outer.outer.backedge

bb.bh:                                            ; preds = %.loopexit276
  %i.mf = icmp slt i32 %.4246.ph.ph.ph, %i.md
  br i1 %i.mf, label %bb.bi, label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bh, %.loopexit276
  %.4252.ph.ph.be = phi i32 [ %i.md, %bb.bh ], [ %.7, %.loopexit276 ]
  br label %.outer.outer, !llvm.loop !774

bb.bi:                                            ; preds = %bb.bh
  %i.mg = icmp sgt i32 %4, %i.md
  br i1 %i.mg, label %.outer.outer.outer, label %.loopexit, !llvm.loop !774

.loopexit:                                        ; preds = %bb.bi, %bb.av, %bb.at, %bb.aw
  %.9 = phi i32 [ %.4252.ph361, %bb.aw ], [ %.4252.ph.ph, %bb.at ], [ %.4252.ph.lcssa, %bb.av ], [ %i.md, %bb.bi ] ; 5 uses
  %.1136 = phi i32 [ %.0135.ph273, %bb.aw ], [ %.0135.ph273.us340.us, %bb.at ], [ %.0135.ph.lcssa, %bb.av ], [ %i.lf, %bb.bi ]
  %.sroa.062.2 = phi i16 [ %.sroa.062.0.ph.ph.ph, %bb.aw ], [ %.sroa.062.0.ph.ph.ph, %bb.at ], [ %.sroa.062.0.ph.ph.ph, %bb.av ], [ %.lcssa277281, %bb.bi ]
  %i.mh = load i8, ptr %i.p, align 4, !tbaa !317, !range !221, !noundef !48
  %i.mi = trunc nuw i8 %i.mh to i1                ; 2 uses
  %i.mj = icmp eq i32 %.9, -32001
  %or.cond = and i1 %i.mj, %i.mi
  br i1 %or.cond, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.loopexit
  %i.mk = load i32, ptr %i.r, align 8, !tbaa !253
  %i.ml = add nsw i32 %i.mk, -32000
  br label %bb.bs

bb.bk:                                            ; preds = %.loopexit
  %i.mm = add i32 %.9, 31506
  %spec.select.i180 = icmp ult i32 %i.mm, 63013
  %i.mn = icmp sgt i32 %.9, %4
  %or.cond266 = and i1 %i.mn, %spec.select.i180
  br i1 %or.cond266, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mo = add nsw i32 %.9, %4
  %i.mp = sdiv i32 %i.mo, 2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.10 = phi i32 [ %.9, %bb.bk ], [ %i.mp, %bb.bl ] ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.mr = load i8, ptr %i.mq, align 4, !tbaa !171 ; 2 uses
  %i.ms = icmp ne i32 %.1136, 0
  %or.cond3 = select i1 %i.mi, i1 true, i1 %i.ms
  br i1 %or.cond3, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mt = load ptr, ptr %i.k, align 8, !tbaa !213 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.mv = zext i8 %i.mr to i64                    ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !138
  %.not157 = icmp eq i32 %i.mx, 0
  br i1 %.not157, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 184
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !318
  %i.na = and i8 %i.mz, 4
  %.not269 = icmp eq i8 %i.na, 0
  br i1 %.not269, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nb = icmp eq i8 %i.mr, 0
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.mv
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !25
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !25
  %i.nh = and i64 %i.ng, %i.ne                    ; 2 uses
  %i.ni = shl i64 %i.nh, 8
  %i.nj = lshr i64 %i.nh, 8
  %i.nk = select i1 %i.nb, i64 %i.ni, i64 %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !25
  %i.nn = xor i64 %i.nm, -1
  %i.no = and i64 %i.nk, %i.nn
  %.not158 = icmp eq i64 %i.no, 0
  br i1 %.not158, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.np = getelementptr inbounds nuw i8, ptr %i.mt, i64 72
  store i64 255, ptr %i.np, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.nq = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(520) %8) #33
  %.not159 = icmp eq ptr %i.nq, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %spec.select267 = select i1 %.not159, i32 0, i32 %.10
  %i.nr = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 72
  store i64 0, ptr %i.ns, align 8, !tbaa !214
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bo, %bb.bn, %bb.bm
  %.12 = phi i32 [ %.10, %bb.bm ], [ %spec.select267, %bb.bq ], [ %.10, %bb.bp ], [ %.10, %bb.bo ], [ %.10, %bb.bn ] ; 5 uses
  %i.nt = load i32, ptr %i.r, align 8, !tbaa !253 ; 2 uses
  %i.nu = icmp sgt i32 %.12, 31506
  %i.nv = icmp slt i32 %.12, -31506
  %i.nw = select i1 %i.nv, i32 %i.nt, i32 0
  %i.nx = sub i32 0, %i.nw
  %.p.i181 = select i1 %i.nu, i32 %i.nt, i32 %i.nx
  %i.ny = add i32 %.p.i181, %.12
  %.not160 = icmp slt i32 %.12, %4
  %i.nz = select i1 %.not160, i8 1, i8 2
  %i.oa = load ptr, ptr %i.bc, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.ob = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.oa) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.bb, i32 noundef %i.ny, i1 noundef zeroext %i.cw, i8 noundef zeroext %i.nz, i32 noundef 0, i16 %.sroa.062.2, i32 noundef %.2139, i8 noundef zeroext %i.ob) #33
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bj
  %.1 = phi i32 [ %i.ml, %bb.bj ], [ %.12, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.thread258

.thread258:                                       ; preds = %bb.an, %bb.am, %bb.bs, %bb.w
  %.3 = phi i32 [ %.ph, %bb.w ], [ %.1, %bb.bs ], [ %i.ht, %bb.am ], [ %i.ht, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %.thread, %bb.f, %.thread258
  %.4 = phi i32 [ %.3, %.thread258 ], [ %i.ao, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ 0, %.thread ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.c, %bb.bt
  %.5 = phi i32 [ %.4, %bb.bt ], [ %i.j, %bb.c ]
  ret i32 %.5
}

declare void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164), ptr noundef nonnull align 8 dereferenceable(1048), i16, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef range(i32 -2097152, 2097152) %3) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !317, !range !221, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = zext i8 %1 to i64                        ; 8 uses
  %i.e = zext i8 %2 to i64                        ; 8 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 -28
  %i.g = load i16, ptr %i.f, align 4, !tbaa !234  ; 2 uses
  br i1 %i.c, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.a
  switch i16 %i.g, label %bb.b [
    i16 65, label %.split.us.1
    i16 0, label %.split.us.1
  ]

bb.b:                                             ; preds = %.split.us.preheader
  %i.h = getelementptr inbounds i8, ptr %0, i64 -48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %i.d
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.e ; 2 uses
  %i.l = mul nsw i32 %3, 1133
  %i.m = sdiv i32 %i.l, 1024
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -30088)
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.n, i32 29912)
  %.sroa.speculated.i.us = add nsw i32 %i.o, 88   ; 2 uses
  %i.p = load i16, ptr %i.k, align 2, !tbaa !167
  %i.q = sext i16 %i.p to i32                     ; 2 uses
  %i.r = add nsw i32 %.sroa.speculated.i.us, %i.q
  %i.s = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us, i1 true)
  %i.t = mul nsw i32 %i.s, %i.q
  %.neg.i.us = sdiv i32 %i.t, -30000
  %i.u = add nsw i32 %i.r, %.neg.i.us
  %i.v = trunc i32 %i.u to i16
  store i16 %i.v, ptr %i.k, align 2, !tbaa !167
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader, %.split.us.preheader
  %i.w = getelementptr inbounds i8, ptr %0, i64 -84
  %i.x = load i16, ptr %i.w, align 4, !tbaa !234
  switch i16 %i.x, label %bb.c [
    i16 65, label %.split.us.2
    i16 0, label %.split.us.2
  ]

bb.c:                                             ; preds = %.split.us.1
  %i.y = getelementptr inbounds i8, ptr %0, i64 -104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !247
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.z, i64 %i.d
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.e ; 2 uses
  %i.ac = mul nsw i32 %3, 683
  %i.ad = sdiv i32 %i.ac, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 -30000)
  %.sroa.speculated.i.us.1 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.1, i32 30000) ; 2 uses
  %i.ae = load i16, ptr %i.ab, align 2, !tbaa !167
  %i.af = sext i16 %i.ae to i32                   ; 2 uses
  %i.ag = add nsw i32 %.sroa.speculated.i.us.1, %i.af
  %i.ah = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.1, i1 true)
  %i.ai = mul nsw i32 %i.ah, %i.af
  %.neg.i.us.1 = sdiv i32 %i.ai, -30000
  %i.aj = add nsw i32 %i.ag, %.neg.i.us.1
  %i.ak = trunc i32 %i.aj to i16
  store i16 %i.ak, ptr %i.ab, align 2, !tbaa !167
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.c, %.split.us.1, %.split.us.1
  %i.al = getelementptr inbounds i8, ptr %0, i64 -140
  %i.am = load i16, ptr %i.al, align 4, !tbaa !234
  switch i16 %i.am, label %bb.d [
    i16 65, label %.split.us.3
    i16 0, label %.split.us.3
  ]

bb.d:                                             ; preds = %.split.us.2
  %i.an = getelementptr inbounds i8, ptr %0, i64 -160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !247
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ao, i64 %i.d
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.e ; 2 uses
  %i.ar = mul nsw i32 %3, 39
  %i.as = sdiv i32 %i.ar, 128
  %.sroa.speculate.load.false.sroa.speculated.i.us.2 = tail call i32 @llvm.smax.i32(i32 %i.as, i32 -30000)
  %.sroa.speculated.i.us.2 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.2, i32 30000) ; 2 uses
  %i.at = load i16, ptr %i.aq, align 2, !tbaa !167
  %i.au = sext i16 %i.at to i32                   ; 2 uses
  %i.av = add nsw i32 %.sroa.speculated.i.us.2, %i.au
  %i.aw = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.2, i1 true)
  %i.ax = mul nsw i32 %i.aw, %i.au
  %.neg.i.us.2 = sdiv i32 %i.ax, -30000
  %i.ay = add nsw i32 %i.av, %.neg.i.us.2
  %i.az = trunc i32 %i.ay to i16
  store i16 %i.az, ptr %i.aq, align 2, !tbaa !167
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.d, %.split.us.2, %.split.us.2
  %i.ba = getelementptr inbounds i8, ptr %0, i64 -196
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !234
  switch i16 %i.bb, label %bb.e [
    i16 65, label %.split.us.4
    i16 0, label %.split.us.4
  ]

bb.e:                                             ; preds = %.split.us.3
  %i.bc = getelementptr inbounds i8, ptr %0, i64 -216
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !247
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.bd, i64 %i.d
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.e ; 2 uses
  %i.bg = mul nsw i32 %3, 291
  %i.bh = sdiv i32 %i.bg, 512
  %.sroa.speculate.load.false.sroa.speculated.i.us.3 = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 -30000)
  %.sroa.speculated.i.us.3 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.3, i32 30000) ; 2 uses
  %i.bi = load i16, ptr %i.bf, align 2, !tbaa !167
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = add nsw i32 %.sroa.speculated.i.us.3, %i.bj
  %i.bl = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.3, i1 true)
  %i.bm = mul nsw i32 %i.bl, %i.bj
  %.neg.i.us.3 = sdiv i32 %i.bm, -30000
  %i.bn = add nsw i32 %i.bk, %.neg.i.us.3
  %i.bo = trunc i32 %i.bn to i16
  store i16 %i.bo, ptr %i.bf, align 2, !tbaa !167
  br label %.split.us.4

.split.us.4:                                      ; preds = %bb.e, %.split.us.3, %.split.us.3
  %i.bp = getelementptr inbounds i8, ptr %0, i64 -252
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !234
  switch i16 %i.bq, label %bb.f [
    i16 65, label %.split.us.5
    i16 0, label %.split.us.5
  ]

bb.f:                                             ; preds = %.split.us.4
  %i.br = getelementptr inbounds i8, ptr %0, i64 -272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !247
  %i.bt = getelementptr inbounds nuw [128 x i8], ptr %i.bs, i64 %i.d
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.e ; 2 uses
  %i.bv = mul nsw i32 %3, 149
  %i.bw = sdiv i32 %i.bv, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.4 = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 -30000)
  %.sroa.speculated.i.us.4 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.4, i32 30000) ; 2 uses
  %i.bx = load i16, ptr %i.bu, align 2, !tbaa !167
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %i.bz = add nsw i32 %.sroa.speculated.i.us.4, %i.by
  %i.ca = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.4, i1 true)
  %i.cb = mul nsw i32 %i.ca, %i.by
  %.neg.i.us.4 = sdiv i32 %i.cb, -30000
  %i.cc = add nsw i32 %i.bz, %.neg.i.us.4
  %i.cd = trunc i32 %i.cc to i16
  store i16 %i.cd, ptr %i.bu, align 2, !tbaa !167
  br label %.split.us.5

.split.us.5:                                      ; preds = %bb.f, %.split.us.4, %.split.us.4
  %i.ce = getelementptr inbounds i8, ptr %0, i64 -308
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !234
  switch i16 %i.cf, label %4 [
    i16 65, label %.critedge
    i16 0, label %.critedge
  ]

4:                                                ; preds = %.split.us.5
  %5 = getelementptr inbounds i8, ptr %0, i64 -328
  %6 = load ptr, ptr %5, align 8, !tbaa !247
  %7 = getelementptr inbounds nuw [128 x i8], ptr %6, i64 %i.d
  %8 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %i.e ; 2 uses
  %9 = mul nsw i32 %3, 237
  %10 = sdiv i32 %9, 512
  %.sroa.speculate.load.false.sroa.speculated.i.us.5 = tail call i32 @llvm.smax.i32(i32 %10, i32 -30000)
  %.sroa.speculated.i.us.5 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.5, i32 30000) ; 2 uses
  %11 = load i16, ptr %8, align 2, !tbaa !167
  %12 = sext i16 %11 to i32                       ; 2 uses
  %13 = add nsw i32 %.sroa.speculated.i.us.5, %12
  %14 = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.5, i1 true)
  %15 = mul nsw i32 %14, %12
  %.neg.i.us.5 = sdiv i32 %15, -30000
  %16 = add nsw i32 %13, %.neg.i.us.5
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %8, align 2, !tbaa !167
  br label %.critedge

.split.preheader:                                 ; preds = %bb.a
  switch i16 %i.g, label %bb.g [
    i16 65, label %.split.1
    i16 0, label %.split.1
  ]

bb.g:                                             ; preds = %.split.preheader
  %i.cg = getelementptr inbounds i8, ptr %0, i64 -48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !247
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %i.ch, i64 %i.d
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.e ; 2 uses
  %i.ck = mul nsw i32 %3, 1133
  %i.cl = sdiv i32 %i.ck, 1024
  %i.cm = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 -30088)
  %i.cn = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 29912)
  %.sroa.speculated.i = add nsw i32 %i.cn, 88     ; 2 uses
  %i.co = load i16, ptr %i.cj, align 2, !tbaa !167
  %i.cp = sext i16 %i.co to i32                   ; 2 uses
  %i.cq = add nsw i32 %.sroa.speculated.i, %i.cp
  %i.cr = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.cs = mul nsw i32 %i.cr, %i.cp
  %.neg.i = sdiv i32 %i.cs, -30000
  %i.ct = add nsw i32 %i.cq, %.neg.i
  %i.cu = trunc i32 %i.ct to i16
  store i16 %i.cu, ptr %i.cj, align 2, !tbaa !167
  br label %.split.1

.split.1:                                         ; preds = %bb.g, %.split.preheader, %.split.preheader
  %i.cv = getelementptr inbounds i8, ptr %0, i64 -84
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !234
  switch i16 %i.cw, label %.critedge.sink.split [
    i16 65, label %.critedge
    i16 0, label %.critedge
  ]

.critedge.sink.split:                             ; preds = %.split.1
  %i.cx = getelementptr inbounds i8, ptr %0, i64 -104
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !247
  %i.cz = getelementptr inbounds nuw [128 x i8], ptr %i.cy, i64 %i.d
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.e ; 2 uses
  %i.db = mul nsw i32 %3, 683
  %i.dc = sdiv i32 %i.db, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.1 = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 -30000)
  %.sroa.speculated.i.1 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.1, i32 30000) ; 2 uses
  %i.dd = load i16, ptr %i.da, align 2, !tbaa !167
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = add nsw i32 %.sroa.speculated.i.1, %i.de
  %i.dg = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.1, i1 true)
  %i.dh = mul nsw i32 %i.dg, %i.de
  %.neg.i.1 = sdiv i32 %i.dh, -30000
  %i.di = add nsw i32 %i.df, %.neg.i.1
  %i.dj = trunc i32 %i.di to i16
  store i16 %i.dj, ptr %i.da, align 2, !tbaa !167
  br label %.critedge

.critedge:                                        ; preds = %.split.1, %.split.1, %.critedge.sink.split, %.split.us.5, %.split.us.5, %4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 37 uses
  %7 = alloca [247 x %"class.Stockfish::Move"], align 16 ; 4 uses
  %8 = alloca %"struct.Stockfish::StateInfo", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 16 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %class.anon.425, align 8           ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.f = alloca [6 x ptr], align 16               ; 11 uses
  %14 = alloca %"class.Stockfish::MovePicker", align 8 ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !762
  %i.g = icmp slt i32 %5, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.fm

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated841 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  %i.i = icmp slt i32 %3, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !253
  %i.l = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.k) #33
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 2                          ; 2 uses
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %.not475.not = icmp sgt i32 %i.p, %4
  br i1 %.not475.not, label %bb.fm, label %._crit_edge1282

._crit_edge1282:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1282, %bb.d, %bb.c
  %i.r = phi ptr [ %.pre, %._crit_edge1282 ], [ %2, %bb.d ], [ %2, %bb.c ] ; 8 uses
  %.0977 = phi i32 [ %i.q, %._crit_edge1282 ], [ %3, %bb.d ], [ %3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  store i64 0, ptr %i.s, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !315
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 13 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !214
  %i.y = icmp ne i64 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 44 ; 2 uses
  %i.aa = zext i1 %i.y to i8
  store i8 %i.aa, ptr %i.z, align 4, !tbaa !317
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !318
  %i.ad = icmp ne i8 %i.ac, 0                     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !171 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !319
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 64, !tbaa !64
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.al = load ptr, ptr %i.ak, align 32, !tbaa !114 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !320
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef nonnull align 64 dereferenceable(14279296) %0) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 11419824 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 16, !tbaa !273
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !253 ; 4 uses
  %.not476 = icmp sgt i32 %i.aq, %i.as
  br i1 %.not476, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ap, align 16, !tbaa !273
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 11422208 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.aw = load atomic i8, ptr %i.av monotonic, align 8, !range !221, !noundef !48
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.as) #33
  %.pre1294 = load i32, ptr %i.ar, align 8, !tbaa !253 ; 4 uses
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp sgt i32 %.pre1294, 245
  br i1 %i.az, label %.thread, label %bb.s

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ba = phi i32 [ %i.as, %bb.j ], [ %.pre1294, %bb.k ]
  %i.bb = icmp sgt i32 %i.ba, 245
  br i1 %i.bb, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.l, %bb.m
  %i.bc = load i8, ptr %i.z, align 4, !tbaa !317, !range !221, !noundef !48
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !169, !nonnull !48, !align !49 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.bg, align 8, !tbaa !25 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 noundef %.sroa.0.0.copyload.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !122
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr %i.bi, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !125
  switch i8 %i.bl, label %bb.q [
    i8 -1, label %bb.o
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  tail call void @abort() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.q:                                             ; preds = %bb.n
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.n, %bb.p
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.bm, %bb.p ], [ %i.bj, %bb.n ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !127
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.bq = load i8, ptr %i.ae, align 4, !tbaa !171
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !138
  %i.bu = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bn, ptr noundef nonnull align 64 dereferenceable(327680) %i.bo, i32 noundef %i.bt) #33
  br label %bb.fl

bb.r:                                             ; preds = %.thread, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.bw = load atomic i64, ptr %i.bv seq_cst, align 8
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 2
  %i.bz = add nsw i32 %i.by, -1
  br label %bb.fl

bb.s:                                             ; preds = %bb.l
  %i.ca = add nsw i32 %.pre1294, -32000
  %.sroa.speculated726 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %.0977) ; 12 uses
  %i.cb = sub nsw i32 31999, %.pre1294
  %.sroa.speculated720 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.cb) ; 30 uses
  %.not477 = icmp slt i32 %.sroa.speculated726, %.sroa.speculated720
  br i1 %.not477, label %bb.t, label %bb.fl

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds i8, ptr %i.r, i64 -28
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.cd, label %bb.u [
    i16 65, label %bb.v
    i16 0, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ce = trunc i16 %i.cd to i8
end_hunk_4
begin_hunk_5_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 56
  %i.rf = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.re, i32 noundef %i.qd, i32 noundef %i.qt)
  %i.rg = sub nsw i32 0, %i.rf                    ; 2 uses
  %i.rh = icmp sle i32 %i.qc, %i.rg
  %or.cond28 = select i1 %i.rh, i1 %i.qu, i1 false
  br i1 %or.cond28, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ri = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 56
  %i.rk = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.rj, i32 noundef %i.qd, i32 noundef %i.qt, i32 noundef %.sroa.speculated885, i1 noundef zeroext %i.qv)
  %i.rl = sub nsw i32 0, %i.rk
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0426 = phi i32 [ %i.rl, %bb.cb ], [ %i.rg, %bb.ca ] ; 6 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qy) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.qw) #33
  %.not497 = icmp slt i32 %.0426, %i.qc
  br i1 %.not497, label %.backedge1168, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rm = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !253 ; 2 uses
  %i.rp = icmp sgt i32 %.0426, 31506
  %i.rq = icmp slt i32 %.0426, -31506
  %i.rr = select i1 %i.rq, i32 %i.ro, i32 0
  %i.rs = sub i32 0, %i.rr
  %.p.i586 = select i1 %i.rp, i32 %i.ro, i32 %i.rs
  %i.rt = add i32 %.p.i586, %.0426
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rm, i64 45
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !329, !range !221, !noundef !48
  %i.rw = trunc nuw i8 %i.rv to i1
  %i.rx = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.ry = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.rx) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef %i.rt, i1 noundef zeroext %i.rw, i8 noundef zeroext 2, i32 noundef %i.qx, i16 %i.qy, i32 noundef %.1436, i8 noundef zeroext %i.ry) #33
  %i.rz = add i32 %.0426, -31507
  %spec.select.i587 = icmp ult i32 %i.rz, -63013
  br i1 %spec.select.i587, label %.backedge1168, label %.thread1049

.thread1049:                                      ; preds = %bb.cd
  %.neg498 = sub i32 %.sroa.speculated720, %i.qc
  %i.sa = add i32 %.neg498, %.0426
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.thread1041

._crit_edge:                                      ; preds = %.backedge1168, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bw, %._crit_edge, %bb.bu, %bb.bv, %.thread1019
  %.3985 = phi i32 [ %.1983, %.thread1019 ], [ %.29841048, %bb.bv ], [ %.29841048, %bb.bw ], [ %.29841048, %._crit_edge ], [ %.1983, %bb.bu ] ; 4 uses
  %i.sb = add nsw i32 %.sroa.speculated720, 418   ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 8, !tbaa !336
  %i.se = and i8 %i.sd, 2
  %.not499 = icmp eq i8 %i.se, 0
  br i1 %.not499, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.sf = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !341
  %i.sh = add nsw i32 %.3985, -4
  %.not500 = icmp slt i32 %i.sg, %i.sh
  br i1 %.not500, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.si = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  %.not501 = icmp slt i32 %i.si, %i.sb
  %i.sj = add i32 %.sroa.speculated720, -31507
  %spec.select.i588 = icmp ult i32 %i.sj, -63013
  %or.cond1111.not1146.not1149 = or i1 %spec.select.i588, %.not501
  %i.sk = add i32 %i.si, -31507
  %spec.select.i589 = icmp ult i32 %i.sk, -63013
  %or.cond1113 = or i1 %or.cond1111.not1146.not1149, %spec.select.i589
  br i1 %or.cond1113, label %bb.ch, label %.thread1041

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.sl = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 -48
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !247
  store ptr %i.sn, ptr %i.f, align 16, !tbaa !342
  %i.so = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.sp = getelementptr inbounds i8, ptr %i.sl, i64 -104
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !247
  store ptr %i.sq, ptr %i.so, align 8, !tbaa !342
  %i.sr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ss = getelementptr inbounds i8, ptr %i.sl, i64 -160
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !247
  store ptr %i.st, ptr %i.sr, align 16, !tbaa !342
  %i.su = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.sv = getelementptr inbounds i8, ptr %i.sl, i64 -216
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !247
  store ptr %i.sw, ptr %i.su, align 8, !tbaa !342
  %i.sx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.sy = getelementptr inbounds i8, ptr %i.sl, i64 -272
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !247
  store ptr %i.sz, ptr %i.sx, align 16, !tbaa !342
  %i.ta = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.tb = getelementptr inbounds i8, ptr %i.sl, i64 -328
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !247
  store ptr %i.tc, ptr %i.ta, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.0128.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 4 uses
  %i.tf = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !253
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %14, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0128.0.copyload, i32 noundef %.3985, ptr noundef nonnull %0, ptr noundef nonnull %i.td, ptr noundef nonnull %i.te, ptr noundef nonnull %i.f, ptr noundef nonnull %i.tf, i32 noundef %i.th) #33
  %i.ti = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not115011951222 = icmp eq i16 %i.ti, 0
  br i1 %.not115011951222, label %.outer..loopexit_crit_edge, label %.lr.ph1196.lr.ph

.lr.ph1196.lr.ph:                                 ; preds = %bb.ch
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.tl = zext i8 %i.af to i64                    ; 3 uses
  %i.tm = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %spec.select560 = select i1 %6, i32 -2, i32 0
  %.neg528 = select i1 %i.eg, i32 -195, i32 6
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 11419648 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 11421104 ; 2 uses
  %.neg1236 = select i1 %i.eg, i32 -375, i32 -127
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %.neg535 = select i1 %6, i32 -1945, i32 -934
  %i.tu = xor i1 %6, true                         ; 2 uses
  %i.tv = sub nsw i32 0, %.sroa.speculated720
  br label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.lr.ph1196.lr.ph, %.thread1054
  %indvars.iv = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %indvars.iv.next, %.thread1054 ] ; 4 uses
  %i.tw = phi i16 [ %i.ti, %.lr.ph1196.lr.ph ], [ %i.aiz, %.thread1054 ]
  %.5980.ph1226 = phi i32 [ %.4979, %.lr.ph1196.lr.ph ], [ %.7, %.thread1054 ] ; 24 uses
  %.4986.ph1225 = phi i32 [ %.3985, %.lr.ph1196.lr.ph ], [ %.9991, %.thread1054 ] ; 24 uses
  %.sroa.0784.0.ph1224 = phi i16 [ 0, %.lr.ph1196.lr.ph ], [ %.sroa.0784.2, %.thread1054 ] ; 11 uses
  %.4999.ph1223 = phi i32 [ %.3998, %.lr.ph1196.lr.ph ], [ %.101005, %.thread1054 ] ; 15 uses
  %i.tx = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %i.aiy, %.thread1054 ] ; 12 uses
  %i.ty = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %i.aix, %.thread1054 ] ; 12 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1196, %.backedge
  %i.tz = phi i16 [ %i.tw, %.lr.ph1196 ], [ %i.ub, %.backedge ] ; 27 uses
  %i.ua = icmp eq i16 %i.tz, %i.cm
  br i1 %i.ua, label %.backedge, label %bb.cj

.backedge:                                        ; preds = %bb.ci, %bb.cj
  %i.ub = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not1150 = icmp eq i16 %i.ub, 0
  br i1 %.not1150, label %..loopexit_crit_edge, label %bb.ci, !llvm.loop !776

bb.cj:                                            ; preds = %bb.ci
  %i.uc = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tz) #33
  br i1 %i.uc, label %bb.ck, label %.backedge

bb.ck:                                            ; preds = %bb.cj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ud = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.uf = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.uf, ptr %i.ue, align 8, !tbaa !319
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 56
  store ptr null, ptr %i.ug, align 8, !tbaa !254
  %i.uh = and i16 %i.tz, 63
  %i.ui = zext nneg i16 %i.uh to i64              ; 10 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ui ; 3 uses
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !330
  %i.ul = icmp ne i8 %i.uk, 0
  %.not.i.i590 = icmp ult i16 %i.tz, -16384       ; 2 uses
  %or.cond.not.i.i591 = and i1 %.not.i.i590, %i.ul
  %i.um = icmp slt i16 %i.tz, -16384              ; 2 uses
  %spec.select.i.i592 = or i1 %i.um, %or.cond.not.i.i591
  %i.un = and i16 %i.tz, 12288
  %i.uo = icmp eq i16 %i.un, 12288                ; 2 uses
  %i.up = or i1 %i.uo, %spec.select.i.i592        ; 3 uses
  %i.uq = lshr i16 %i.tz, 6
  %i.ur = and i16 %i.uq, 63
  %i.us = zext nneg i16 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !330 ; 4 uses
  %i.uv = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tz) #33 ; 3 uses
  %i.uw = add nsw i32 %.4986.ph1225, -1           ; 3 uses
  %i.ux = sub nsw i32 %.sroa.speculated720, %.5980.ph1226
  %i.uy = load i8, ptr %i.b, align 1, !tbaa !313, !range !221, !noundef !48 ; 2 uses
  %i.uz = trunc nuw i8 %i.uy to i1
  %i.va = sext i32 %.4986.ph1225 to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !138
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv.next
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !138
  %i.vf = mul nsw i32 %i.ve, %i.vc                ; 2 uses
  %i.vg = mul nsw i32 %i.ux, 608
  %i.vh = load i32, ptr %i.tk, align 8, !tbaa !275
  %i.vi = sdiv i32 %i.vg, %i.vh
  %i.vj = mul nsw i32 %i.vf, 119
  %i.vk = sdiv i32 %i.vj, 256
  %i.vl = select i1 %i.uz, i32 0, i32 %i.vk
  %i.vm = add i32 %i.vf, 1182
  %i.vn = sub i32 %i.vm, %i.vi
  %i.vo = add i32 %i.vn, %i.vl                    ; 2 uses
  %i.vp = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 45
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !329, !range !221, !noundef !48
  %i.vs = trunc nuw i8 %i.vr to i1
  %i.vt = add nsw i32 %i.vo, 946
  %spec.select557 = select i1 %i.vs, i32 %i.vt, i32 %i.vo ; 3 uses
  %i.vu = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 40
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.tl
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !138
  %.not502 = icmp eq i32 %i.vx, 0
  %i.vy = icmp slt i32 %.4999.ph1223, -31506
  %or.cond1114 = select i1 %.not502, i1 true, i1 %i.vy
  br i1 %or.cond1114, label %.thread1063, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vz = mul nsw i32 %.4986.ph1225, %.4986.ph1225
  %i.wa = add nuw nsw i32 %i.vz, 3
  %narrow503 = sub nuw nsw i8 2, %i.uy
  %i.wb = zext nneg i8 %narrow503 to i32
  %i.wc = udiv i32 %i.wa, %i.wb
  %i.wd = zext nneg i32 %i.wc to i64
  %.not504 = icmp samesign ult i64 %indvars.iv.next, %i.wd
  br i1 %.not504, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.neg505 = sdiv i32 %spec.select557, -1024
  %i.we = add i32 %.neg505, %i.uw                 ; 3 uses
  %or.cond30 = or i1 %i.uv, %i.up
  %i.wf = zext i8 %i.uu to i64                    ; 5 uses
  br i1 %or.cond30, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.wg = load i8, ptr %i.uj, align 1, !tbaa !330 ; 2 uses
  %i.wh = getelementptr inbounds nuw [1024 x i8], ptr %i.te, i64 %i.wf
  %i.wi = getelementptr inbounds nuw [16 x i8], ptr %i.wh, i64 %i.ui
  %i.wj = and i8 %i.wg, 7
  %i.wk = zext nneg i8 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %i.wi, i64 %i.wk
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !355 ; 2 uses
  %i.wn = icmp sgt i32 %i.we, 6
  %or.cond33.not = select i1 %i.uv, i1 true, i1 %i.wn
  br i1 %or.cond33.not, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wo = sext i16 %i.wm to i32
  %i.wp = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !252
  %i.ws = mul nsw i32 %i.we, 217
  %i.wt = zext i8 %i.wg to i64
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.wt
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !138
  %i.ww = mul nsw i32 %i.wo, 131
  %i.wx = sdiv i32 %i.ww, 1024
  %i.wy = add nsw i32 %i.ws, 232
  %i.wz = add i32 %i.wy, %i.wx
  %i.xa = add i32 %i.wz, %i.wr
  %i.xb = add i32 %i.xa, %i.wv
  %.not510 = icmp sgt i32 %i.xb, %.5980.ph1226
  br i1 %.not510, label %bb.cq, label %.thread1054

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.xc = mul nsw i32 %.4986.ph1225, 166
  %i.xd = sdiv i16 %i.wm, 29
  %.sext = sext i16 %i.xd to i32
  %i.xe = add nsw i32 %i.xc, %.sext
  %.sroa.speculated685 = call i32 @llvm.smax.i32(i32 %i.xe, i32 0)
  %i.xf = icmp sgt i32 %.5980.ph1226, -1
  br i1 %i.xf, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xg = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 40
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %i.tl
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !138
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.wf
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !138
  %.not511 = icmp eq i32 %i.xj, %i.xl
  br i1 %.not511, label %.thread1063, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.xm = sub nsw i32 0, %.sroa.speculated685
  %i.xn = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tz, i32 noundef %i.xm) #33
  br i1 %i.xn, label %.thread1063, label %.thread1054, !llvm.loop !776

bb.ct:                                            ; preds = %bb.cn
  %i.xo = load ptr, ptr %i.f, align 16, !tbaa !342
  %i.xp = getelementptr inbounds nuw [128 x i8], ptr %i.xo, i64 %i.wf
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.ui
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !167
  %i.xs = sext i16 %i.xr to i32
  %i.xt = load ptr, ptr %i.so, align 8, !tbaa !342
  %i.xu = getelementptr inbounds nuw [128 x i8], ptr %i.xt, i64 %i.wf
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.xu, i64 %i.ui
  %i.xw = load i16, ptr %i.xv, align 2, !tbaa !167
  %i.xx = sext i16 %i.xw to i32
  %i.xy = add nsw i32 %i.xx, %i.xs
  %i.xz = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.ya = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !333
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 40
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !337
  %i.yf = and i64 %i.ye, %i.yc
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !162
  %i.yi = getelementptr inbounds nuw [2048 x i8], ptr %i.yh, i64 %i.yf
  %i.yj = getelementptr inbounds nuw [128 x i8], ptr %i.yi, i64 %i.wf
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %i.yj, i64 %i.ui
  %i.yl = load atomic i16, ptr %i.yk monotonic, align 2
  %i.ym = sext i16 %i.yl to i32
  %i.yn = add nsw i32 %i.xy, %i.ym                ; 2 uses
  %i.yo = mul nsw i32 %.4986.ph1225, -4083
  %i.yp = icmp slt i32 %i.yn, %i.yo
  br i1 %i.yp, label %.thread1054, label %bb.cu, !llvm.loop !776

bb.cu:                                            ; preds = %bb.ct
  %i.yq = zext i16 %i.tz to i64
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %i.yq
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !132
  %i.yt = sext i16 %i.ys to i32
  %i.yu = mul nsw i32 %i.yt, 69
  %i.yv = sdiv i32 %i.yu, 32
  %i.yw = add nsw i32 %i.yv, %i.yn
  %i.yx = sdiv i32 %i.yw, 3208
  %i.yy = add nsw i32 %i.yx, %i.we                ; 3 uses
  %i.yz = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !252 ; 2 uses
  %.not1151 = icmp eq i16 %.sroa.0784.0.ph1224, 0
  %i.zc = mul nsw i32 %i.yy, 127
  %i.zd = icmp sgt i32 %i.zb, %.5980.ph1226
  %i.ze = select i1 %i.zd, i32 85, i32 0
  %i.zf = select i1 %.not1151, i32 203, i32 42
  %i.zg = add i32 %i.zf, %i.zb
  %i.zh = add i32 %i.zg, %i.ze
  %i.zi = add i32 %i.zh, %i.zc                    ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yz, i64 44
  %i.zk = load i8, ptr %i.zj, align 4, !tbaa !317, !range !221, !noundef !48
  %i.zl = trunc nuw i8 %i.zk to i1
  %i.zm = icmp sgt i32 %i.yy, 12
  %or.cond36.not = select i1 %i.zl, i1 true, i1 %i.zm
  %.not507 = icmp sgt i32 %i.zi, %.5980.ph1226
  %or.cond558 = select i1 %or.cond36.not, i1 true, i1 %.not507
  br i1 %or.cond558, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not508 = icmp sgt i32 %.4999.ph1223, %i.zi
  %i.zn = icmp sgt i32 %.4999.ph1223, 31506
  %or.cond1115 = or i1 %.not508, %i.zn
  %i.zo = icmp sgt i32 %i.zi, 31506
  %or.cond1116 = or i1 %i.zo, %or.cond1115
  %spec.select1132 = select i1 %or.cond1116, i32 %.4999.ph1223, i32 %i.zi
  br label %.thread1054, !llvm.loop !776

bb.cw:                                            ; preds = %bb.cu
  %.sroa.speculated679 = call i32 @llvm.smax.i32(i32 %i.yy, i32 0) ; 2 uses
  %i.zp = mul nsw i32 %.sroa.speculated679, -25
  %i.zq = mul nsw i32 %i.zp, %.sroa.speculated679
  %i.zr = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tz, i32 noundef %i.zq) #33
  br i1 %i.zr, label %.thread1063, label %.thread1054

.thread1063:                                      ; preds = %bb.cs, %bb.cr, %bb.cw, %bb.ck
  %i.zs = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.zt = icmp ne i16 %i.tz, %i.zs
  %brmerge1118 = or i1 %i.ds, %i.zt
  %.pre1290 = load ptr, ptr %i.a, align 8, !tbaa !762 ; 10 uses
  br i1 %brmerge1118, label %.thread1068, label %bb.cx

bb.cx:                                            ; preds = %.thread1063
  %i.zu = getelementptr inbounds nuw i8, ptr %.pre1290, i64 45
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !329, !range !221, !noundef !48
  %i.zw = or disjoint i8 %i.zv, 6
  %i.zx = zext nneg i8 %i.zw to i32
  %.not512 = icmp slt i32 %.4986.ph1225, %i.zx
  br i1 %.not512, label %.thread1068, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zy = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  %i.zz = add i32 %i.zy, -31507
  %spec.select.i596 = icmp ult i32 %i.zz, -63013
  br i1 %spec.select.i596, label %.thread1068, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aaa = load i8, ptr %i.sc, align 8, !tbaa !336
  %i.aab = and i8 %i.aaa, 2
  %.not513 = icmp eq i8 %i.aab, 0
  br i1 %.not513, label %.thread1068, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aac = load i32, ptr %i.tn, align 4, !tbaa !341
  %i.aad = add nsw i32 %.4986.ph1225, -3
  %.not514 = icmp slt i32 %i.aac, %i.aad
  br i1 %.not514, label %.thread1068, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aae = call fastcc noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_112is_shufflingENS_4MoveEPNS_6Search5StackERKNS_8PositionE(i16 %i.tz, ptr noundef nonnull %.pre1290, ptr noundef nonnull align 8 dereferenceable(1048) %1)
  br i1 %i.aae, label %.thread1068, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aaf = mul nsw i32 %.4986.ph1225, 53
  %.neg5151097 = udiv i32 %i.aaf, 60
  %i.aag = sub nsw i32 %i.zy, %.neg5151097        ; 5 uses
  %i.aah = lshr i32 %i.uw, 1
  %i.aai = getelementptr inbounds nuw i8, ptr %.pre1290, i64 30
  store i16 %i.tz, ptr %i.aai, align 2, !tbaa !191
  %i.aaj = add nsw i32 %i.aag, -1
  %i.aak = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %.pre1290, i32 noundef %i.aaj, i32 noundef %i.aag, i32 noundef %i.aah, i1 noundef zeroext %6) ; 6 uses
  %i.aal = load ptr, ptr %i.a, align 8, !tbaa !762 ; 5 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 30
  store i16 0, ptr %i.aam, align 2, !tbaa !191
  %i.aan = icmp slt i32 %i.aak, %i.aag
  br i1 %i.aan, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aao = load i32, ptr %i.d, align 4, !tbaa !138
  %i.aap = call i32 @llvm.abs.i32(i32 %i.aao, i1 true)
  %i.aaq = udiv i32 %i.aap, 230673                ; 2 uses
  %i.aar = load i16, ptr %i.to, align 64, !tbaa !164
  %i.aas = sext i16 %i.aar to i32
  %i.aat = mul nsw i32 %i.aas, 897
  %.neg520.neg = sdiv i32 %i.aat, 127649
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aal, i64 24
  %i.aav = load i32, ptr %i.aau, align 8, !tbaa !253 ; 2 uses
  %i.aaw = load i32, ptr %i.tp, align 16, !tbaa !264 ; 2 uses
  %i.aax = icmp sgt i32 %i.aav, %i.aaw
  %.neg521.neg = select i1 %i.aax, i32 42, i32 0
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aal, i64 45
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !329, !range !221, !noundef !48
  %narrow523 = mul nuw nsw i8 %i.aaz, 90
  %i.aba = zext nneg i8 %narrow523 to i32
  %i.abb = shl nsw i32 %i.aav, 1
  %i.abc = mul nsw i32 %i.aaw, 3
  %i.abd = icmp sgt i32 %i.abb, %i.abc
  %.neg524.neg = select i1 %i.abd, i32 50, i32 0
  %.neg525 = add i32 %i.aag, %.neg528
  %.neg526 = add i32 %.neg525, %i.aaq
  %.neg527 = add i32 %.neg526, %.neg520.neg
  %i.abe = add i32 %.neg527, %.neg521.neg
  %i.abf = icmp slt i32 %i.aak, %i.abe
  %i.abg = select i1 %i.abf, i32 2, i32 1
  %.neg1166 = add i32 %i.aag, %.neg1236
  %.neg529 = add i32 %.neg1166, %i.aaq
  %.neg530 = sub i32 %.neg529, %i.aba
  %i.abh = add i32 %.neg530, %.neg524.neg
  %i.abi = icmp slt i32 %i.aak, %i.abh
  %i.abj = zext i1 %i.abi to i32
  %i.abk = add nuw nsw i32 %i.abg, %i.abj
  %i.abl = add nuw nsw i32 %.4986.ph1225, 1
  br label %.thread1068

bb.de:                                            ; preds = %bb.dc
  %.not516 = icmp slt i32 %i.aak, %.sroa.speculated720
  %i.abm = add nsw i32 %i.aak, -31507
  %spec.select.i597 = icmp ult i32 %i.abm, -63013
  %or.cond1120 = select i1 %.not516, i1 true, i1 %spec.select.i597
  br i1 %or.cond1120, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.abn = load i32, ptr %i.dr, align 4, !tbaa !326
  %.not518 = icmp slt i32 %i.abn, %.sroa.speculated720
  %spec.select568 = select i1 %.not518, i32 %spec.select560, i32 -3
  br label %.thread1068

bb.dg:                                            ; preds = %bb.de
  %.neg517 = mul i32 %.4986.ph1225, -100
  %i.abo = add i32 %.neg517, -400
  %.sroa.speculated671 = call i32 @llvm.smax.i32(i32 %i.abo, i32 -4000)
  %.sroa.speculated.i600 = call i32 @llvm.smin.i32(i32 %.sroa.speculated671, i32 8192) ; 2 uses
  %i.abp = load i16, ptr %i.to, align 64, !tbaa !164
  %i.abq = sext i16 %i.abp to i32                 ; 2 uses
  %i.abr = add nsw i32 %.sroa.speculated.i600, %i.abq
  %i.abs = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i600, i1 true)
  %i.abt = mul nsw i32 %i.abs, %i.abq
  %.neg.i601 = sdiv i32 %i.abt, -8192
  %i.abu = add nsw i32 %i.abr, %.neg.i601
  %i.abv = trunc i32 %i.abu to i16
  store i16 %i.abv, ptr %i.to, align 64, !tbaa !164
  br label %.thread1081

.thread1068:                                      ; preds = %.thread1063, %bb.df, %bb.dd, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx
  %i.abw = phi ptr [ %i.aal, %bb.dd ], [ %.pre1290, %bb.cx ], [ %i.aal, %bb.df ], [ %.pre1290, %bb.cz ], [ %.pre1290, %bb.da ], [ %.pre1290, %bb.db ], [ %.pre1290, %.thread1063 ], [ %.pre1290, %bb.cy ] ; 5 uses
  %.6988 = phi i32 [ %i.abl, %bb.dd ], [ %.4986.ph1225, %bb.cx ], [ %.4986.ph1225, %bb.df ], [ %.4986.ph1225, %bb.cz ], [ %.4986.ph1225, %bb.da ], [ %.4986.ph1225, %bb.db ], [ %.4986.ph1225, %.thread1063 ], [ %.4986.ph1225, %bb.cy ] ; 9 uses
  %.2425 = phi i32 [ %i.abk, %bb.dd ], [ 0, %bb.cx ], [ %spec.select568, %bb.df ], [ 0, %bb.cz ], [ 0, %bb.da ], [ 0, %bb.db ], [ 0, %.thread1063 ], [ 0, %bb.cy ]
  %i.abx = load i8, ptr %i.uj, align 1, !tbaa !330
  %i.aby = load atomic i64, ptr %i.tq monotonic, align 8
  %i.abz = add i64 %i.aby, 1
  store atomic i64 %i.abz, ptr %i.tq monotonic, align 8
  %i.aca = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.tr) #33 ; 2 uses
  %i.acb = extractvalue { ptr, ptr } %i.aca, 0    ; 2 uses
  %i.acc = extractvalue { ptr, ptr } %i.aca, 1
  %i.acd = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.ace = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tz, ptr noundef nonnull align 8 dereferenceable(192) %8, i1 noundef zeroext %i.uv, ptr noundef nonnull align 1 dereferenceable(7) %i.acb, ptr noundef nonnull align 8 dereferenceable(416) %i.acc, ptr noundef nonnull %i.acd, ptr noundef nonnull %i.ace) #33
  %.not.i602 = icmp eq ptr %i.abw, null
  br i1 %.not.i602, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit, label %bb.dh

bb.dh:                                            ; preds = %.thread1068
  %i.acf = icmp ne i8 %i.abx, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i590, %i.acf
  %spec.select.i.i.i = or i1 %i.um, %or.cond.not.i.i.i
  %i.acg = or i1 %i.uo, %spec.select.i.i.i
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abw, i64 28
  store i16 %i.tz, ptr %i.ach, align 4, !tbaa !191
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abw, i64 44
  %i.acj = load i8, ptr %i.aci, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ack = zext nneg i8 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [4194304 x i8], ptr %i.ts, i64 %i.ack
  %i.acm = zext i1 %i.acg to i64
  %i.acn = getelementptr inbounds nuw [2097152 x i8], ptr %i.acl, i64 %i.acm
  %i.aco = load i8, ptr %i.acb, align 1, !tbaa !340
  %i.acp = zext i8 %i.aco to i64                  ; 2 uses
  %i.acq = getelementptr inbounds nuw [131072 x i8], ptr %i.acn, i64 %i.acp
  %i.acr = getelementptr inbounds nuw [2048 x i8], ptr %i.acq, i64 %i.ui
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store ptr %i.acr, ptr %i.acs, align 8, !tbaa !247
  %i.act = getelementptr inbounds nuw [131072 x i8], ptr %i.tt, i64 %i.acp
  %i.acu = getelementptr inbounds nuw [2048 x i8], ptr %i.act, i64 %i.ui
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  store ptr %i.acu, ptr %i.acv, align 8, !tbaa !251
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %.thread1068, %bb.dh
  %i.acw = add nsw i32 %.2425, %i.uw              ; 10 uses
  %i.acx = load ptr, ptr %i.a, align 8, !tbaa !762 ; 6 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 45
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !329, !range !221, !noundef !48
  %i.ada = trunc nuw i8 %i.acz to i1
  br i1 %i.ada, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.adb = load i32, ptr %i.dr, align 4, !tbaa !326
  %i.adc = icmp sgt i32 %i.adb, %.5980.ph1226
  %.neg534 = select i1 %i.adc, i32 -4624, i32 -3702
  %i.add = load i32, ptr %i.tn, align 4, !tbaa !341
  %.not533 = icmp slt i32 %i.add, %.6988
  %.neg536 = select i1 %.not533, i32 0, i32 %.neg535
  %.neg537 = add i32 %.neg534, %spec.select557
  %i.ade = add i32 %.neg537, %.neg536
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %.1440 = phi i32 [ %i.ade, %bb.di ], [ %spec.select557, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit ]
  %.neg538 = mul i32 %i.uf, -73
  %i.adf = load i32, ptr %i.d, align 4, !tbaa !138
  %i.adg = call i32 @llvm.abs.i32(i32 %i.adf, i1 true)
  %i.adh = udiv i32 %i.adg, 30370
  %i.adi = load i16, ptr %i.dd, align 8           ; 2 uses
  %.not1153 = icmp eq i16 %i.adi, 0               ; 2 uses
  %i.adj = select i1 %.not1153, i32 4369, i32 3372
  %i.adk = select i1 %6, i32 %i.adj, i32 0
  %i.adl = add i32 %.neg538, 714
  %i.adm = add i32 %i.adl, %.1440
  %i.adn = sub i32 %i.adm, %i.adh
  %.2441 = add nsw i32 %i.adn, %i.adk             ; 2 uses
  %i.ado = add nsw i32 %.2441, 1119
  %spec.select561 = select i1 %i.eg, i32 %i.ado, i32 %.2441
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acx, i64 104
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !324 ; 2 uses
  %i.adr = icmp sgt i32 %i.adq, 1
  %.not539 = icmp eq i32 %i.adq, 2
  %i.ads = select i1 %.not539, i32 256, i32 1280
  %i.adt = select i1 %i.adr, i32 %i.ads, i32 0
  %.4443 = add nsw i32 %spec.select561, %i.adt    ; 2 uses
  %i.adu = icmp eq i16 %i.tz, %i.adi
  %i.adv = add nsw i32 %.4443, -2151
  %.5444 = select i1 %i.adu, i32 %i.adv, i32 %.4443
  br i1 %i.up, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.adw = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 184
  %i.ady = load i8, ptr %i.adx, align 8, !tbaa !318 ; 2 uses
  %i.adz = zext i8 %i.ady to i64
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.adz
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !138
  %i.aec = mul nsw i32 %i.aeb, 217
  %i.aed = sdiv i32 %i.aec, 32
  %i.aee = zext i8 %i.uu to i64
  %i.aef = getelementptr inbounds nuw [1024 x i8], ptr %i.te, i64 %i.aee
  %i.aeg = getelementptr inbounds nuw [16 x i8], ptr %i.aef, i64 %i.ui
  %i.aeh = and i8 %i.ady, 7
  %i.aei = zext nneg i8 %i.aeh to i64
  %i.aej = getelementptr inbounds nuw [2 x i8], ptr %i.aeg, i64 %i.aei
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.aek = zext i16 %i.tz to i64
  %i.ael = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %i.aek
  %i.aem = load i16, ptr %i.ael, align 2, !tbaa !132
  %i.aen = sext i16 %i.aem to i32
  %i.aeo = shl nsw i32 %i.aen, 1
  %i.aep = load ptr, ptr %i.f, align 16, !tbaa !342
  %i.aeq = zext i8 %i.uu to i64                   ; 2 uses
  %i.aer = getelementptr inbounds nuw [128 x i8], ptr %i.aep, i64 %i.aeq
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %i.aer, i64 %i.ui
  %i.aet = load i16, ptr %i.aes, align 2, !tbaa !167
  %i.aeu = sext i16 %i.aet to i32
  %i.aev = add nsw i32 %i.aeo, %i.aeu
  %i.aew = load ptr, ptr %i.so, align 8, !tbaa !342
  %i.aex = getelementptr inbounds nuw [128 x i8], ptr %i.aew, i64 %i.aeq
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.aex, i64 %i.ui
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.sink.in = phi ptr [ %i.aey, %bb.dl ], [ %i.aej, %bb.dk ]
  %.sink1379 = phi i32 [ %i.aev, %bb.dl ], [ %i.aed, %bb.dk ]
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !191
  %i.aez = sext i16 %.sink to i32
  %i.afa = add nsw i32 %.sink1379, %i.aez         ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.acx, i64 36
  store i32 %i.afa, ptr %i.afb, align 4, !tbaa !323
  %i.afc = mul nsw i32 %i.afa, 425
  %.neg540 = sdiv i32 %i.afc, -4096
  %i.afd = add i32 %.neg540, %.5444               ; 3 uses
  %i.afe = icmp sgt i32 %.6988, 1
  %i.aff = icmp ne i64 %indvars.iv, 0             ; 2 uses
  %or.cond38 = select i1 %i.afe, i1 %i.aff, i1 false
  br i1 %or.cond38, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  %.neg543 = sdiv i32 %i.afd, -1024
  %i.afg = add i32 %.neg543, %i.acw
  %i.afh = add nsw i32 %i.acw, 2
  %i.afi = call i32 @llvm.smin.i32(i32 %i.afh, i32 %i.afg)
  %.sroa.speculated665 = call i32 @llvm.smax.i32(i32 %i.afi, i32 1)
  %i.afj = add nuw nsw i32 %.sroa.speculated665, 1 ; 4 uses
  %i.afk = sub nsw i32 %i.acw, %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.acx, i64 52
  store i32 %i.afk, ptr %i.afl, align 4, !tbaa !322
  %i.afm = getelementptr inbounds nuw i8, ptr %i.acx, i64 56
  %i.afn = xor i32 %.5980.ph1226, -1              ; 2 uses
  %i.afo = sub nsw i32 0, %.5980.ph1226           ; 2 uses
  %i.afp = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.afm, i32 noundef %i.afn, i32 noundef %i.afo, i32 noundef %i.afj, i1 noundef zeroext true)
  %i.afq = sub nsw i32 0, %i.afp                  ; 5 uses
  %i.afr = load ptr, ptr %i.a, align 8, !tbaa !762 ; 3 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 52
  store i32 0, ptr %i.afs, align 4, !tbaa !322
  %i.aft = icmp slt i32 %.5980.ph1226, %i.afq
  br i1 %i.aft, label %bb.do, label %bb.dt

bb.do:                                            ; preds = %bb.dn
  %i.afu = icmp slt i32 %i.afj, %i.acw
  %i.afv = add nsw i32 %.4999.ph1223, 50
  %i.afw = icmp slt i32 %i.afv, %i.afq
  %i.afx = select i1 %i.afu, i1 %i.afw, i1 false
  %i.afy = add nsw i32 %.4999.ph1223, 9
  %i.afz = icmp sgt i32 %i.afy, %i.afq
  %i.aga = zext i1 %i.afx to i32
  %.neg544 = sext i1 %i.afz to i32
  %i.agb = add i32 %i.acw, %.neg544
  %i.agc = add i32 %i.agb, %i.aga                 ; 3 uses
  %i.agd = icmp sgt i32 %i.agc, %i.afj
  br i1 %i.agd, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.age = getelementptr inbounds nuw i8, ptr %i.afr, i64 56
  %i.agf = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.age, i32 noundef %i.afn, i32 noundef %i.afo, i32 noundef %i.agc, i1 noundef zeroext %i.tu)
  %i.agg = sub nsw i32 0, %i.agf
  %.pre1291 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.agh = phi ptr [ %.pre1291, %bb.dp ], [ %i.afr, %bb.do ]
  %.3429 = phi i32 [ %i.agg, %bb.dp ], [ %i.afq, %bb.do ]
  %i.agi = trunc i16 %i.tz to i8
  %i.agj = and i8 %i.agi, 63
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef %i.agh, i8 noundef zeroext %i.uu, i8 noundef zeroext %i.agj, i32 noundef 1365)
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dm
  br i1 %i.aff, label %bb.ds, label %.thread1330

bb.ds:                                            ; preds = %bb.dr
  %i.agk = add nsw i32 %i.afd, 1140
  %spec.select562 = select i1 %.not1153, i32 %i.agk, i32 %i.afd ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.acx, i64 56
  %i.agm = xor i32 %.5980.ph1226, -1
  %i.agn = sub nsw i32 0, %.5980.ph1226
  %i.ago = icmp sgt i32 %spec.select562, 3957
  %.neg541 = sext i1 %i.ago to i32
  %i.agp = add i32 %i.acw, %.neg541
  %i.agq = icmp sgt i32 %spec.select562, 5654
  %i.agr = icmp sgt i32 %i.acw, 2
  %i.ags = and i1 %i.agr, %i.agq
  %.neg542 = sext i1 %i.ags to i32
  %i.agt = add i32 %i.agp, %.neg542
  %i.agu = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.agl, i32 noundef %i.agm, i32 noundef %i.agn, i32 noundef %i.agt, i1 noundef zeroext %i.tu)
  %i.agv = sub nsw i32 0, %i.agu
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dn, %bb.dq, %bb.ds
  %.0993 = phi i32 [ %i.agc, %bb.dq ], [ %i.acw, %bb.dn ], [ %i.acw, %bb.ds ]
  %.5431 = phi i32 [ %.3429, %bb.dq ], [ %i.afq, %bb.dn ], [ %i.agv, %bb.ds ] ; 2 uses
  %i.agw = icmp sgt i32 %.5431, %.5980.ph1226
  br i1 %i.agw, label %.thread1330, label %bb.dx

.thread1330:                                      ; preds = %bb.dr, %bb.dt
  %.09931334 = phi i32 [ %.0993, %bb.dt ], [ %i.acw, %bb.dr ] ; 3 uses
  %i.agx = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 56 ; 2 uses
  store ptr %7, ptr %i.agy, align 8, !tbaa !254
  store i16 0, ptr %7, align 16, !tbaa !191
  %i.agz = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.aha = icmp eq i16 %i.tz, %i.agz
  br i1 %i.aha, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %.thread1330
  %i.ahb = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  %i.ahc = icmp ne i32 %i.ahb, 32002
  %i.ahd = add i32 %i.ahb, -31507
  %spec.select.i605 = icmp ult i32 %i.ahd, -63013
  %or.cond1121 = and i1 %i.ahc, %spec.select.i605
  %i.ahe = load i32, ptr %i.tn, align 4           ; 2 uses
  %i.ahf = icmp sgt i32 %i.ahe, 0
  %or.cond1124 = select i1 %or.cond1121, i1 %i.ahf, i1 false
  %i.ahg = icmp sgt i32 %i.ahe, 1
  %or.cond1127 = select i1 %or.cond1124, i1 true, i1 %i.ahg
  br i1 %or.cond1127, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %.sroa.speculated658 = call i32 @llvm.smax.i32(i32 %.09931334, i32 1)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %.thread1330
  %.1994 = phi i32 [ %.sroa.speculated658, %bb.dv ], [ %.09931334, %bb.du ], [ %.09931334, %.thread1330 ]
  %i.ahh = sub nsw i32 0, %.5980.ph1226
  %i.ahi = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.agy, i32 noundef %i.tv, i32 noundef %i.ahh, i32 noundef %.1994, i1 noundef zeroext false)
  %i.ahj = sub nsw i32 0, %i.ahi
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dt, %bb.dw
  %.6432 = phi i32 [ %i.ahj, %bb.dw ], [ %.5431, %bb.dt ] ; 8 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tz) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.tr) #33
  %i.ahk = load ptr, ptr %i.au, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.ahl = load atomic i8, ptr %i.ahk monotonic, align 8, !range !221, !noundef !48
  %i.ahm = trunc nuw i8 %i.ahl to i1
  br i1 %i.ahm, label %.thread1081, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ahn = icmp eq i32 %.6432, %.4999.ph1223
  br i1 %i.ahn, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.aho = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 24
  %i.ahq = load i32, ptr %i.ahp, align 8, !tbaa !253
  %i.ahr = add nsw i32 %i.ahq, 2
  %i.ahs = load i32, ptr %i.tp, align 16, !tbaa !264
  %.not545 = icmp slt i32 %i.ahr, %i.ahs
  br i1 %.not545, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aht = load atomic i64, ptr %i.tq seq_cst, align 8
  %i.ahu = and i64 %i.aht, 14
  %i.ahv = icmp eq i64 %i.ahu, 0
  br i1 %i.ahv, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ahw = add i32 %.4999.ph1223, 31505
  %i.ahx = icmp ult i32 %i.ahw, 63011
  %i.ahy = zext i1 %i.ahx to i32
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dy
  %i.ahz = phi i32 [ 0, %bb.ea ], [ 0, %bb.dz ], [ 0, %bb.dy ], [ %i.ahy, %bb.eb ]
  %i.aia = add nsw i32 %i.ahz, %.6432             ; 2 uses
  %i.aib = icmp sgt i32 %i.aia, %.4999.ph1223
  br i1 %i.aib, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.aic = icmp sgt i32 %i.aia, %.5980.ph1226
  br i1 %i.aic, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.aid = load ptr, ptr %i.a, align 8, !tbaa !762 ; 3 uses
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !254 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aid, i64 56
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !254 ; 3 uses
  store i16 %i.tz, ptr %i.aie, align 2, !tbaa !191
  %.09.i = getelementptr inbounds nuw i8, ptr %i.aie, i64 2 ; 3 uses
  %.not10.i = icmp eq ptr %i.aig, null
  br i1 %.not10.i, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ee
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !234 ; 2 uses
  %.not8.i1206 = icmp eq i16 %i.aih, 0
  br i1 %.not8.i1206, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aii = phi i16 [ %i.aik, %.lr.ph.i ], [ %i.aih, %.lr.ph.i.preheader ]
  %.0711.i1208 = phi ptr [ %i.aij, %.lr.ph.i ], [ %i.aig, %.lr.ph.i.preheader ]
  %.012.i1207 = phi ptr [ %.0.i, %.lr.ph.i ], [ %.09.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.0711.i1208, i64 2 ; 2 uses
  store i16 %i.aii, ptr %.012.i1207, align 2, !tbaa !191
  %.0.i = getelementptr inbounds nuw i8, ptr %.012.i1207, i64 2 ; 2 uses
  %i.aik = load i16, ptr %i.aij, align 2, !tbaa !234 ; 2 uses
  %.not8.i = icmp eq i16 %i.aik, 0
  br i1 %.not8.i, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i

_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.ee
  %.0.lcssa.i = phi ptr [ %.09.i, %bb.ee ], [ %.09.i, %.lr.ph.i.preheader ], [ %.0.i, %.lr.ph.i ]
  store i16 0, ptr %.0.lcssa.i, align 2, !tbaa !191
  %.not546 = icmp slt i32 %.6432, %.sroa.speculated720
  br i1 %.not546, label %bb.ef, label %.thread1089

.thread1089:                                      ; preds = %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit
  store i64 %i.tx, ptr %i.t, align 8
  store i64 %i.ty, ptr %i.s, align 8
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aid, i64 48 ; 2 uses
  %i.aim = load i32, ptr %i.ail, align 8, !tbaa !324
  %i.ain = add nsw i32 %i.aim, 1
  store i32 %i.ain, ptr %i.ail, align 8, !tbaa !324
  br label %.loopexit

bb.ef:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit
  %i.aio = add i32 %.6988, -14
  %or.cond40 = icmp ult i32 %i.aio, -11
  %i.aip = add i32 %.6432, -31507
  %spec.select.i607 = icmp ult i32 %i.aip, -63013
  %or.cond1128 = select i1 %or.cond40, i1 true, i1 %spec.select.i607
  %i.aiq = add nsw i32 %.6988, -2
  %spec.select1133 = select i1 %or.cond1128, i32 %.6988, i32 %i.aiq
  br label %.thread1054

bb.eg:                                            ; preds = %bb.ed, %bb.ec
  %.91004 = phi i32 [ %.4999.ph1223, %bb.ec ], [ %.6432, %bb.ed ] ; 3 uses
  %i.air = icmp ne i16 %i.tz, %.sroa.0784.0.ph1224
  %i.ais = icmp samesign ult i64 %indvars.iv, 32
  %or.cond42 = select i1 %i.air, i1 %i.ais, i1 false
  br i1 %or.cond42, label %bb.eh, label %.thread1054

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.up, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ait = add i64 %i.ty, 1
  %i.aiu = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.ty
  store i16 %i.tz, ptr %i.aiu, align 2, !tbaa !191
  br label %.thread1054

bb.ej:                                            ; preds = %bb.eh
  %i.aiv = add i64 %i.tx, 1
  %i.aiw = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.tx
  store i16 %i.tz, ptr %i.aiw, align 2, !tbaa !191
  br label %.thread1054

.thread1054:                                      ; preds = %bb.ef, %bb.cv, %bb.cp, %bb.cw, %bb.ct, %bb.cs, %bb.eg, %bb.ej, %bb.ei
  %i.aix = phi i64 [ %i.ty, %bb.cs ], [ %i.ait, %bb.ei ], [ %i.ty, %bb.ej ], [ %i.ty, %bb.eg ], [ %i.ty, %bb.cv ], [ %i.ty, %bb.ct ], [ %i.ty, %bb.cw ], [ %i.ty, %bb.ef ], [ %i.ty, %bb.cp ] ; 2 uses
  %i.aiy = phi i64 [ %i.tx, %bb.cs ], [ %i.tx, %bb.ei ], [ %i.aiv, %bb.ej ], [ %i.tx, %bb.eg ], [ %i.tx, %bb.cv ], [ %i.tx, %bb.ct ], [ %i.tx, %bb.cw ], [ %i.tx, %bb.ef ], [ %i.tx, %bb.cp ] ; 2 uses
  %.101005 = phi i32 [ %.4999.ph1223, %bb.cs ], [ %.91004, %bb.ei ], [ %.91004, %bb.ej ], [ %.91004, %bb.eg ], [ %spec.select1132, %bb.cv ], [ %.4999.ph1223, %bb.ct ], [ %.4999.ph1223, %bb.cw ], [ %.6432, %bb.ef ], [ %.4999.ph1223, %bb.cp ] ; 2 uses
  %.sroa.0784.2 = phi i16 [ %.sroa.0784.0.ph1224, %bb.cs ], [ %.sroa.0784.0.ph1224, %bb.ei ], [ %.sroa.0784.0.ph1224, %bb.ej ], [ %.sroa.0784.0.ph1224, %bb.eg ], [ %.sroa.0784.0.ph1224, %bb.cv ], [ %.sroa.0784.0.ph1224, %bb.ct ], [ %.sroa.0784.0.ph1224, %bb.cw ], [ %i.tz, %bb.ef ], [ %.sroa.0784.0.ph1224, %bb.cp ] ; 2 uses
  %.9991 = phi i32 [ %.4986.ph1225, %bb.cs ], [ %.6988, %bb.ei ], [ %.6988, %bb.ej ], [ %.6988, %bb.eg ], [ %.4986.ph1225, %bb.cv ], [ %.4986.ph1225, %bb.ct ], [ %.4986.ph1225, %bb.cw ], [ %spec.select1133, %bb.ef ], [ %.4986.ph1225, %bb.cp ] ; 2 uses
  %.7 = phi i32 [ %.5980.ph1226, %bb.cs ], [ %.5980.ph1226, %bb.ei ], [ %.5980.ph1226, %bb.ej ], [ %.5980.ph1226, %bb.eg ], [ %.5980.ph1226, %bb.cv ], [ %.5980.ph1226, %bb.ct ], [ %.5980.ph1226, %bb.cw ], [ %.6432, %bb.ef ], [ %.5980.ph1226, %bb.cp ] ; 2 uses
  %i.aiz = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not11501195 = icmp eq i16 %i.aiz, 0
  br i1 %.not11501195, label %.outer..loopexit_crit_edge, label %.lr.ph1196

.outer..loopexit_crit_edge:                       ; preds = %.thread1054, %bb.ch
  %.lcssa1217 = phi i64 [ 0, %bb.ch ], [ %i.aix, %.thread1054 ]
  %.lcssa1211 = phi i64 [ 0, %bb.ch ], [ %i.aiy, %.thread1054 ]
  %split = phi i32 [ %.3998, %bb.ch ], [ %.101005, %.thread1054 ]
  %split1197 = phi i16 [ 0, %bb.ch ], [ %.sroa.0784.2, %.thread1054 ]
  %split1198 = phi i32 [ %.3985, %bb.ch ], [ %.9991, %.thread1054 ]
  %split1199 = phi i32 [ %.4979, %bb.ch ], [ %.7, %.thread1054 ]
  %split1200 = phi i32 [ 0, %bb.ch ], [ %i.uf, %.thread1054 ]
  store i64 %.lcssa1211, ptr %i.t, align 8
  store i64 %.lcssa1217, ptr %i.s, align 8
  br label %.loopexit

..loopexit_crit_edge:                             ; preds = %.backedge
  %i.aja = trunc nuw nsw i64 %indvars.iv to i32
  store i64 %i.tx, ptr %i.t, align 8
  store i64 %i.ty, ptr %i.s, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.outer..loopexit_crit_edge, %..loopexit_crit_edge, %.thread1089
  %.5980.ph1184 = phi i32 [ %.5980.ph1226, %.thread1089 ], [ %.5980.ph1226, %..loopexit_crit_edge ], [ %split1199, %.outer..loopexit_crit_edge ] ; 3 uses
  %.111006 = phi i32 [ %.6432, %.thread1089 ], [ %.4999.ph1223, %..loopexit_crit_edge ], [ %split, %.outer..loopexit_crit_edge ] ; 4 uses
  %.sroa.0784.3 = phi i16 [ %i.tz, %.thread1089 ], [ %.sroa.0784.0.ph1224, %..loopexit_crit_edge ], [ %split1197, %.outer..loopexit_crit_edge ] ; 8 uses
  %.10992 = phi i32 [ %.6988, %.thread1089 ], [ %.4986.ph1225, %..loopexit_crit_edge ], [ %split1198, %.outer..loopexit_crit_edge ] ; 8 uses
  %.1438 = phi i32 [ %i.uf, %.thread1089 ], [ %i.aja, %..loopexit_crit_edge ], [ %split1200, %.outer..loopexit_crit_edge ] ; 2 uses
  %.not547 = icmp slt i32 %.111006, %.sroa.speculated720
  %i.ajb = add i32 %.111006, -31507
  %spec.select.i608 = icmp ult i32 %i.ajb, -63013
  %or.cond1129 = or i1 %.not547, %spec.select.i608
  %i.ajc = add i32 %.5980.ph1184, -31507
  %spec.select.i609 = icmp ult i32 %i.ajc, -63013
  %or.cond1130 = select i1 %or.cond1129, i1 true, i1 %spec.select.i609
  br i1 %or.cond1130, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.loopexit
  %i.ajd = mul nsw i32 %.10992, %.111006
  %i.aje = add nsw i32 %i.ajd, %.sroa.speculated720
  %i.ajf = add nsw i32 %.10992, 1
  %i.ajg = sdiv i32 %i.aje, %i.ajf
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.loopexit
  %.121007 = phi i32 [ %.111006, %.loopexit ], [ %i.ajg, %bb.ek ] ; 7 uses
  %.not548 = icmp eq i32 %.1438, 0                ; 2 uses
  br i1 %.not548, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %bb.el
  br i1 %i.ds, label %bb.fa, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ajh = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 44
  %i.ajj = load i8, ptr %i.aji, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ajk = trunc nuw i8 %i.ajj to i1
  br i1 %i.ajk, label %bb.eo, label %bb.fa

bb.eo:                                            ; preds = %bb.en
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 24
  %i.ajm = load i32, ptr %i.ajl, align 8, !tbaa !253
  %i.ajn = add nsw i32 %i.ajm, -32000
  br label %bb.fa

bb.ep:                                            ; preds = %bb.el
  %.not1157 = icmp eq i16 %.sroa.0784.3, 0
  br i1 %.not1157, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ajo = load ptr, ptr %i.a, align 8, !tbaa !762
  %.sroa.055.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.ajo, ptr noundef nonnull align 64 dereferenceable(14279296) %0, i16 %.sroa.0784.3, i8 noundef zeroext %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %.10992, i16 %.sroa.055.0.copyload, i32 noundef %.1438)
  br label %bb.fa

bb.er:                                            ; preds = %bb.ep
  %.not43 = xor i1 %i.ad, true
  %i.ajp = icmp ne i8 %i.cg, 64                   ; 2 uses
  %or.cond46 = and i1 %i.ajp, %.not43
  br i1 %or.cond46, label %bb.es, label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.ajq = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.ajr = getelementptr inbounds i8, ptr %i.ajq, i64 -20
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !323
  %.neg549 = sdiv i32 %i.ajs, -100
  %i.ajt = mul nsw i32 %.10992, 56
  %.sroa.speculated645 = call i32 @llvm.smin.i32(i32 %i.ajt, i32 489)
  %i.aju = getelementptr inbounds i8, ptr %i.ajq, i64 -16
  %i.ajv = load i32, ptr %i.aju, align 8, !tbaa !319
  %i.ajw = icmp sgt i32 %i.ajv, 8
  %i.ajx = select i1 %i.ajw, i32 184, i32 0
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajq, i64 44
  %i.ajz = load i8, ptr %i.ajy, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aka = trunc nuw i8 %i.ajz to i1
  br i1 %i.aka, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajq, i64 32
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !252
  %i.akd = add nsw i32 %i.akc, -107
  %.not550 = icmp sgt i32 %.121007, %i.akd
  %i.ake = select i1 %.not550, i32 0, i32 147
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.akf = phi i32 [ 0, %bb.es ], [ %i.ake, %bb.et ]
  %i.akg = getelementptr inbounds i8, ptr %i.ajq, i64 -12
  %i.akh = load i8, ptr %i.akg, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aki = trunc nuw i8 %i.akh to i1
  br i1 %i.aki, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.akj = getelementptr inbounds i8, ptr %i.ajq, i64 -24
  %i.akk = load i32, ptr %i.akj, align 8, !tbaa !252
  %i.akl = sub i32 -65, %i.akk
  %.not551 = icmp sgt i32 %.121007, %i.akl
  %i.akm = select i1 %.not551, i32 0, i32 156
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.akn = phi i32 [ 0, %bb.eu ], [ %i.akm, %bb.ev ]
  %i.ako = add i32 %.sroa.speculated645, -215
  %i.akp = add i32 %i.ako, %.neg549
  %i.akq = add nsw i32 %i.akp, %i.ajx
  %i.akr = add nsw i32 %i.akq, %i.akf
  %i.aks = add nsw i32 %i.akr, %i.akn
  %.sroa.speculated640 = call i32 @llvm.smax.i32(i32 %i.aks, i32 0)
  %i.akt = mul nsw i32 %.10992, 141
  %i.aku = call i32 @llvm.smin.i32(i32 %i.akt, i32 1438)
  %.sroa.speculated634 = add nsw i32 %i.aku, -87
  %i.akv = mul nsw i32 %.sroa.speculated640, %.sroa.speculated634 ; 3 uses
  %i.akw = getelementptr inbounds i8, ptr %i.ajq, i64 -56
  %i.akx = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %1, i64 %i.akx ; 2 uses
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !330
  %i.ala = mul nsw i32 %i.akv, 203
  %i.alb = sdiv i32 %i.ala, 16384
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.akw, i8 noundef zeroext %i.akz, i8 noundef zeroext %i.cg, i32 noundef %i.alb)
  %i.alc = xor i8 %i.af, 1
  %i.ald = zext i8 %i.alc to i64
  %i.ale = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.ald
  %i.alf = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.alg = getelementptr inbounds i8, ptr %i.alf, i64 -28
  %i.alh = load i16, ptr %i.alg, align 2, !tbaa !234 ; 2 uses
  %i.ali = zext i16 %i.alh to i64
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %i.ale, i64 %i.ali ; 2 uses
  %i.alk = mul nsw i32 %i.akv, 243
  %i.all = sdiv i32 %i.alk, 32768
  %.sroa.speculate.load.false.sroa.speculated.i613 = call i32 @llvm.smax.i32(i32 %i.all, i32 -7183)
  %.sroa.speculated.i614 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i613, i32 7183) ; 2 uses
  %i.alm = load i16, ptr %i.alj, align 2, !tbaa !132
  %i.aln = sext i16 %i.alm to i32                 ; 2 uses
  %i.alo = add nsw i32 %.sroa.speculated.i614, %i.aln
  %i.alp = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i614, i1 true)
  %i.alq = mul nsw i32 %i.alp, %i.aln
  %.neg.i615 = sdiv i32 %i.alq, -7183
  %i.alr = add nsw i32 %i.alo, %.neg.i615
  %i.als = trunc i32 %i.alr to i16
  store i16 %i.als, ptr %i.alj, align 2, !tbaa !132
  %i.alt = load i8, ptr %i.aky, align 1, !tbaa !330 ; 2 uses
  %i.alu = and i8 %i.alt, 7
  %.not552 = icmp eq i8 %i.alu, 1
  %i.alv = and i16 %i.alh, -16384
  %.not553 = icmp eq i16 %i.alv, 16384
  %or.cond1131 = or i1 %.not553, %.not552
  br i1 %or.cond1131, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.alw = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.alx = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !333
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alw, i64 40
  %i.amb = load i64, ptr %i.ama, align 8, !tbaa !337
  %i.amc = and i64 %i.amb, %i.alz
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !162
  %i.amf = getelementptr inbounds nuw [2048 x i8], ptr %i.ame, i64 %i.amc
  %i.amg = zext i8 %i.alt to i64
  %i.amh = getelementptr inbounds nuw [128 x i8], ptr %i.amf, i64 %i.amg
  %i.ami = getelementptr inbounds nuw [2 x i8], ptr %i.amh, i64 %i.akx ; 2 uses
  %i.amj = mul nsw i32 %i.akv, 145
  %i.amk = sdiv i32 %i.amj, 4096
  %.sroa.speculate.load.false.sroa.speculated.i616 = call i32 @llvm.smax.i32(i32 %i.amk, i32 -8192)
  %.sroa.speculated.i617 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i616, i32 8192) ; 2 uses
  %i.aml = load atomic i16, ptr %i.ami monotonic, align 2
  %i.amm = sext i16 %i.aml to i32                 ; 2 uses
  %i.amn = add nsw i32 %.sroa.speculated.i617, %i.amm
  %i.amo = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i617, i1 true)
  %i.amp = mul nsw i32 %i.amo, %i.amm
  %.neg.i618 = sdiv i32 %i.amp, -8192
  %i.amq = add nsw i32 %i.amn, %.neg.i618
  %i.amr = trunc i32 %i.amq to i16
  store atomic i16 %i.amr, ptr %i.ami monotonic, align 2
  br label %bb.fa

bb.ey:                                            ; preds = %bb.er
  %or.cond49 = and i1 %i.ad, %i.ajp
  br i1 %or.cond49, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ams = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 184
  %i.amu = load i8, ptr %i.amt, align 8, !tbaa !318
  %i.amv = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %1, i64 %i.amv
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !330
  %i.amy = zext i8 %i.amx to i64
  %i.amz = getelementptr inbounds nuw [1024 x i8], ptr %i.te, i64 %i.amy
  %i.ana = getelementptr inbounds nuw [16 x i8], ptr %i.amz, i64 %i.amv
  %i.anb = and i8 %i.amu, 7
  %i.anc = zext nneg i8 %i.anb to i64
  %i.and = getelementptr inbounds nuw [2 x i8], ptr %i.ana, i64 %i.anc ; 2 uses
  %i.ane = load i16, ptr %i.and, align 2, !tbaa !355
  %i.anf = sext i16 %i.ane to i32                 ; 2 uses
  %i.ang = add nsw i32 %i.anf, 1012
  %i.anh = mul nsw i32 %i.anf, 23
  %.neg.i619 = sdiv i32 %i.anh, -243
  %i.ani = add nsw i32 %i.ang, %.neg.i619
  %i.anj = trunc i32 %i.ani to i16
  store i16 %i.anj, ptr %i.and, align 2, !tbaa !355
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ew, %bb.ex, %bb.en, %bb.eo, %bb.em, %bb.eq, %bb.ey, %bb.ez
  %.131008 = phi i32 [ %.121007, %bb.ey ], [ %.121007, %bb.eq ], [ %.5980.ph1184, %bb.em ], [ %.121007, %bb.ez ], [ 0, %bb.en ], [ %i.ajn, %bb.eo ], [ %.121007, %bb.ex ], [ %.121007, %bb.ew ]
  %.sroa.speculated732 = call i32 @llvm.smin.i32(i32 %.31012, i32 %.131008) ; 11 uses
  %.not554 = icmp sgt i32 %.sroa.speculated732, %.5980.ph1184
  %.pre1293.pre = load ptr, ptr %i.a, align 8, !tbaa !762 ; 5 uses
  br i1 %.not554, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ank = getelementptr inbounds nuw i8, ptr %.pre1293.pre, i64 45 ; 2 uses
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !329, !range !221, !noundef !48
  %i.anm = trunc nuw i8 %i.anl to i1
  br i1 %i.anm, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ann = getelementptr inbounds i8, ptr %.pre1293.pre, i64 -11
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !329, !range !221, !noundef !48
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.anp = phi i8 [ 1, %bb.fb ], [ %i.ano, %bb.fc ]
  store i8 %i.anp, ptr %i.ank, align 1, !tbaa !329
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fa
  br i1 %i.ds, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.anq = getelementptr inbounds nuw i8, ptr %.pre1293.pre, i64 24
  %i.anr = load i32, ptr %i.anq, align 8, !tbaa !253 ; 2 uses
  %i.ans = icmp sgt i32 %.sroa.speculated732, 31506
  %i.ant = icmp slt i32 %.sroa.speculated732, -31506
  %i.anu = select i1 %i.ant, i32 %i.anr, i32 0
  %i.anv = sub i32 0, %i.anu
  %.p.i621 = select i1 %i.ans, i32 %i.anr, i32 %i.anv
  %i.anw = add i32 %.p.i621, %.sroa.speculated732
  %i.anx = getelementptr inbounds nuw i8, ptr %.pre1293.pre, i64 45
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !329, !range !221, !noundef !48
  %i.anz = trunc nuw i8 %i.any to i1
  %.not555 = icmp slt i32 %.sroa.speculated732, %.sroa.speculated720
  %.not1158 = icmp eq i16 %.sroa.0784.3, 0
  %i.aoa = select i1 %.not1158, i8 1, i8 3
  %i.aob = select i1 %.not555, i8 %i.aoa, i8 2
  %i.aoc = call i32 @llvm.smin.i32(i32 %.10992, i32 239)
  %.in.sroa.speculate.load. = add nsw i32 %i.aoc, 6
  %.in.sroa.speculated = select i1 %.not548, i32 %.in.sroa.speculate.load., i32 %.10992
  %i.aod = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.aoe = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.aod) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef %i.anw, i1 noundef zeroext %i.anz, i8 noundef zeroext %i.aob, i32 noundef %.in.sroa.speculated, i16 %.sroa.0784.3, i32 noundef %.1436, i8 noundef zeroext %i.aoe) #33
  %.pre1292 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.aof = phi ptr [ %.pre1292, %bb.ff ], [ %.pre1293.pre, %bb.fe ] ; 3 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 44
  %i.aoh = load i8, ptr %i.aog, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aoi = trunc nuw i8 %i.aoh to i1
  br i1 %i.aoi, label %.thread1081, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aoj = icmp ne i16 %.sroa.0784.3, 0           ; 3 uses
  br i1 %i.aoj, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.aok = and i16 %.sroa.0784.3, 63
  %i.aol = zext nneg i16 %i.aok to i64
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 %i.aol
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !330
  %i.aoo = icmp ne i8 %i.aon, 0
  %.not.i623 = icmp ult i16 %.sroa.0784.3, -16384
  %or.cond.not.i = and i1 %.not.i623, %i.aoo
  %i.aop = icmp slt i16 %.sroa.0784.3, -16384
  %spec.select.i624 = or i1 %i.aop, %or.cond.not.i
  br i1 %spec.select.i624, label %.thread1081, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aof, i64 32
  %i.aor = load i32, ptr %i.aoq, align 8, !tbaa !252 ; 2 uses
  %i.aos = icmp sle i32 %.sroa.speculated732, %i.aor
  %i.aot = xor i1 %i.aoj, %i.aos
  br i1 %i.aot, label %bb.fk, label %.thread1081

bb.fk:                                            ; preds = %bb.fj
  %i.aou = sub nsw i32 %.sroa.speculated732, %i.aor
  %i.aov = mul nsw i32 %i.aou, %.10992
  %i.aow = select i1 %i.aoj, i32 10, i32 8
  %i.aox = sdiv i32 %i.aov, %i.aow
  %.sroa.speculate.load.false.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.aox, i32 -256)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 256)
  %.val569 = load ptr, ptr %i.eh, align 8, !tbaa !139
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.aof, ptr %.val569, i32 noundef %.sroa.speculated)
  br label %.thread1081

.thread1081:                                      ; preds = %bb.dx, %bb.dg, %bb.fg, %bb.fi, %bb.fj, %bb.fk
  %.18 = phi i32 [ %i.aak, %bb.dg ], [ %.sroa.speculated732, %bb.fg ], [ %.sroa.speculated732, %bb.fk ], [ %.sroa.speculated732, %bb.fj ], [ %.sroa.speculated732, %bb.fi ], [ 0, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %.thread1041

.thread1041:                                      ; preds = %bb.cg, %bb.bs, %.thread1049, %bb.bm, %bb.bd, %bb.bt, %.thread1081
  %.19 = phi i32 [ %.18, %.thread1081 ], [ %i.kk, %bb.bd ], [ %i.sa, %.thread1049 ], [ %i.ow, %bb.bt ], [ %i.ns, %bb.bm ], [ %i.sb, %bb.cg ], [ %i.ow, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.fl

bb.fl:                                            ; preds = %bb.s, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %bb.r, %.thread1041
  %.20 = phi i32 [ %.19, %.thread1041 ], [ %i.bz, %bb.r ], [ %i.bu, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ %.sroa.speculated726, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.fm

bb.fm:                                            ; preds = %bb.e, %bb.fl, %bb.b
  %.21 = phi i32 [ %i.h, %bb.b ], [ %.20, %bb.fl ], [ %i.q, %bb.e ]
  ret i32 %.21
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(14279296) %2, i16 %3, i8 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %6, i32 noundef %7, i16 %8, i32 noundef range(i32 1, 0) %9) unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 917504 ; 6 uses
  %i.b = mul nsw i32 %7, 116
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 1596)
  %.sroa.speculated76 = add nsw i32 %i.c, -81
  %i.d = icmp eq i16 %3, %8
  %i.e = select i1 %i.d, i32 347, i32 0
  %i.f = add nsw i32 %.sroa.speculated76, %i.e
  %i.g = getelementptr inbounds i8, ptr %1, i64 -56
  %i.h = getelementptr inbounds i8, ptr %1, i64 -20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !323
  %i.j = sdiv i32 %i.i, 32
  %i.k = add nsw i32 %i.f, %i.j                   ; 2 uses
  %i.l = mul nsw i32 %7, 848
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 2653)
  %.sroa.speculated = add nsw i32 %i.m, -207
  %.neg = mul i32 %9, -17
  %i.n = add i32 %.sroa.speculated, %.neg         ; 3 uses
  %i.o = and i16 %3, 63
  %i.p = zext nneg i16 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !330   ; 2 uses
  %i.s = icmp ne i8 %i.r, 0
  %.not.i.i = icmp ult i16 %3, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.s
  %i.t = icmp slt i16 %3, -16384
  %spec.select.i.i = or i1 %i.t, %or.cond.not.i.i
  %i.u = and i16 %3, 12288
  %i.v = icmp eq i16 %i.u, 12288
  %i.w = or i1 %i.v, %spec.select.i.i
  br i1 %i.w, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = mul nsw i32 %i.k, 455
  %i.y = sdiv i32 %i.x, 512
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %3, i32 noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !315 ; 7 uses
  %.idx = shl nuw nsw i64 %i.aa, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %.not88 = icmp eq i64 %i.aa, 0
  br i1 %.not88, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = mul nsw i32 %i.n, 1085
  %i.ad = sdiv i32 %i.ac, 1024                    ; 3 uses
  %.sroa.09.0.copyload.peel = load i16, ptr %5, align 8, !tbaa !191
  %i.ae = sub nsw i32 0, %i.ad                    ; 5 uses
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel, i32 noundef %i.ae)
  %.not.peel = icmp eq i64 %i.aa, 1
  br i1 %.not.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 2
  %.sroa.09.0.copyload.peel97 = load i16, ptr %i.af, align 2, !tbaa !191
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel97, i32 noundef %i.ae)
  %.not.peel99 = icmp eq i64 %i.aa, 2
  br i1 %.not.peel99, label %.loopexit, label %.peel.next96

.peel.next96:                                     ; preds = %.peel.next
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.09.0.copyload.peel101 = load i16, ptr %i.ag, align 4, !tbaa !191
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel101, i32 noundef %i.ae)
  %.not.peel103 = icmp eq i64 %i.aa, 3
  br i1 %.not.peel103, label %.loopexit, label %.peel.next100

.peel.next100:                                    ; preds = %.peel.next96
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 6
  %.sroa.09.0.copyload.peel105 = load i16, ptr %i.ah, align 2, !tbaa !191
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel105, i32 noundef %i.ae)
  %.not.peel107 = icmp eq i64 %i.aa, 4
  br i1 %.not.peel107, label %.loopexit, label %.peel.next104

.peel.next104:                                    ; preds = %.peel.next100
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.09.0.copyload.peel109 = load i16, ptr %i.ai, align 8, !tbaa !191
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel109, i32 noundef %i.ae)
  %.not.peel111 = icmp eq i64 %i.aa, 5
  br i1 %.not.peel111, label %.loopexit, label %.peel.next108

.peel.next108:                                    ; preds = %.peel.next104
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 10
  br label %bb.d

bb.d:                                             ; preds = %.peel.next108, %bb.d
  %.06090 = phi i32 [ 5, %.peel.next108 ], [ %i.ak, %bb.d ] ; 2 uses
  %.06189 = phi ptr [ %i.aj, %.peel.next108 ], [ %i.ao, %bb.d ] ; 2 uses
  %.sroa.09.0.copyload = load i16, ptr %.06189, align 2, !tbaa !191
  %i.ak = add nuw nsw i32 %.06090, 1              ; 2 uses
  %i.al = add nsw i32 %.06090, -4
  %i.am = mul nsw i32 %i.al, %i.ad
  %i.an = sdiv i32 %i.am, %i.ak
  %.neg122 = sub nsw i32 %i.an, %i.ad
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload, i32 noundef %.neg122)
  %i.ao = getelementptr inbounds nuw i8, ptr %.06189, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.ab
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !777

bb.e:                                             ; preds = %bb.a
  %i.ap = lshr i16 %3, 6
  %i.aq = and i16 %i.ap, 63
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !330
  %i.au = and i8 %i.r, 7
  %i.av = zext i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.av
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.p
  %i.ay = zext nneg i8 %i.au to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = mul nsw i32 %i.k, 1395
  %i.bb = sdiv i32 %i.ba, 1024
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 -10692)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 10692) ; 2 uses
  %i.bc = load i16, ptr %i.az, align 2, !tbaa !355
  %i.bd = sext i16 %i.bc to i32                   ; 2 uses
  %i.be = add nsw i32 %.sroa.speculated.i, %i.bd
  %i.bf = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.bg = mul nsw i32 %i.bf, %i.bd
  %.neg.i = sdiv i32 %i.bg, -10692
  %i.bh = add nsw i32 %i.be, %.neg.i
  %i.bi = trunc i32 %i.bh to i16
  store i16 %i.bi, ptr %i.az, align 2, !tbaa !355
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.peel.next, %.peel.next96, %.peel.next100, %.peel.next104, %bb.b, %bb.e
  %.not65 = icmp eq i8 %4, 64
  br i1 %.not65, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bj = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !319
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -10
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !325, !range !221, !noundef !48
  %narrow = add nuw nsw i8 %i.bm, 1
  %i.bn = zext nneg i8 %narrow to i32
  %i.bo = icmp eq i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !213
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 184
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !318
  %.not66 = icmp eq i8 %i.bs, 0
  br i1 %.not66, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = zext i8 %4 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !330
  %i.bw = mul i32 %i.n, -602
  %i.bx = sdiv i32 %i.bw, 1024
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.g, i8 noundef zeroext %i.bv, i8 noundef zeroext %4, i32 noundef %i.bx)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !315 ; 2 uses
  %.idx95 = shl i64 %i.bz, 1                      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 %.idx95
  %.not6791 = icmp eq i64 %i.bz, 0
  br i1 %.not6791, label %._crit_edge, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.i
  %i.cb = mul i32 %i.n, -1448
  %i.cc = sdiv i32 %i.cb, 1024
  %.sroa.speculate.load.false.sroa.speculated.i69 = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 -10692)
  %.sroa.speculated.i70 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i69, i32 10692) ; 6 uses
  %i.cd = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i70, i1 true) ; 5 uses
  %i.ce = add i64 %.idx95, -2                     ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 1
  %i.cg = add nuw i64 %i.cf, 1
  %xtraiter = and i64 %i.cg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph93, %.prol.preheader
  %.092.prol = phi ptr [ %i.dd, %.prol.preheader ], [ %6, %.lr.ph93 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph93 ]
  %i.ch = load i16, ptr %.092.prol, align 2, !tbaa !191 ; 2 uses
  %i.ci = lshr i16 %i.ch, 6
  %i.cj = and i16 %i.ci, 63
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !330
  %i.cn = and i16 %i.ch, 63
  %i.co = zext nneg i16 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !330
  %i.cr = and i8 %i.cq, 7
  %i.cs = zext i8 %i.cm to i64
  %i.ct = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.co
  %i.cv = zext nneg i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !355
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = add nsw i32 %.sroa.speculated.i70, %i.cy
  %i.da = mul nsw i32 %i.cd, %i.cy
  %.neg.i71.prol = sdiv i32 %i.da, -10692
  %i.db = add nsw i32 %i.cz, %.neg.i71.prol
  %i.dc = trunc i32 %i.db to i16
  store i16 %i.dc, ptr %i.cw, align 2, !tbaa !355
  %i.dd = getelementptr inbounds nuw i8, ptr %.092.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !779

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph93
  %.092.unr = phi ptr [ %6, %.lr.ph93 ], [ %i.dd, %.prol.preheader ]
  %i.de = icmp ult i64 %i.ce, 6
  br i1 %i.de, label %._crit_edge, label %.lr.ph93.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph93.new, %bb.i
  ret void

.lr.ph93.new:                                     ; preds = %.prol.loopexit, %.lr.ph93.new
  %.092 = phi ptr [ %i.gs, %.lr.ph93.new ], [ %.092.unr, %.prol.loopexit ] ; 5 uses
  %i.df = load i16, ptr %.092, align 2, !tbaa !191 ; 2 uses
  %i.dg = lshr i16 %i.df, 6
  %i.dh = and i16 %i.dg, 63
  %i.di = zext nneg i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !330
  %i.dl = and i16 %i.df, 63
  %i.dm = zext nneg i16 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !330
  %i.dp = and i8 %i.do, 7
  %i.dq = zext i8 %i.dk to i64
  %i.dr = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dm
  %i.dt = zext nneg i8 %i.dp to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dt ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !355
  %i.dw = sext i16 %i.dv to i32                   ; 2 uses
  %i.dx = add nsw i32 %.sroa.speculated.i70, %i.dw
  %i.dy = mul nsw i32 %i.cd, %i.dw
  %.neg.i71 = sdiv i32 %i.dy, -10692
  %i.dz = add nsw i32 %i.dx, %.neg.i71
  %i.ea = trunc i32 %i.dz to i16
  store i16 %i.ea, ptr %i.du, align 2, !tbaa !355
  %i.eb = getelementptr inbounds nuw i8, ptr %.092, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !191 ; 2 uses
  %i.ed = lshr i16 %i.ec, 6
  %i.ee = and i16 %i.ed, 63
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !330
  %i.ei = and i16 %i.ec, 63
  %i.ej = zext nneg i16 %i.ei to i64              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !330
  %i.em = and i8 %i.el, 7
  %i.en = zext i8 %i.eh to i64
  %i.eo = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.en
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.ej
  %i.eq = zext nneg i8 %i.em to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !355
  %i.et = sext i16 %i.es to i32                   ; 2 uses
  %i.eu = add nsw i32 %.sroa.speculated.i70, %i.et
  %i.ev = mul nsw i32 %i.cd, %i.et
  %.neg.i71.1 = sdiv i32 %i.ev, -10692
  %i.ew = add nsw i32 %i.eu, %.neg.i71.1
  %i.ex = trunc i32 %i.ew to i16
  store i16 %i.ex, ptr %i.er, align 2, !tbaa !355
  %i.ey = getelementptr inbounds nuw i8, ptr %.092, i64 4
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !191 ; 2 uses
  %i.fa = lshr i16 %i.ez, 6
  %i.fb = and i16 %i.fa, 63
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !330
  %i.ff = and i16 %i.ez, 63
  %i.fg = zext nneg i16 %i.ff to i64              ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !330
  %i.fj = and i8 %i.fi, 7
  %i.fk = zext i8 %i.fe to i64
  %i.fl = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.fg
  %i.fn = zext nneg i8 %i.fj to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !355
  %i.fq = sext i16 %i.fp to i32                   ; 2 uses
  %i.fr = add nsw i32 %.sroa.speculated.i70, %i.fq
  %i.fs = mul nsw i32 %i.cd, %i.fq
  %.neg.i71.2 = sdiv i32 %i.fs, -10692
  %i.ft = add nsw i32 %i.fr, %.neg.i71.2
  %i.fu = trunc i32 %i.ft to i16
  store i16 %i.fu, ptr %i.fo, align 2, !tbaa !355
  %i.fv = getelementptr inbounds nuw i8, ptr %.092, i64 6
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !191 ; 2 uses
  %i.fx = lshr i16 %i.fw, 6
  %i.fy = and i16 %i.fx, 63
  %i.fz = zext nneg i16 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !330
  %i.gc = and i16 %i.fw, 63
  %i.gd = zext nneg i16 %i.gc to i64              ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !330
  %i.gg = and i8 %i.gf, 7
  %i.gh = zext i8 %i.gb to i64
  %i.gi = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gd
  %i.gk = zext nneg i8 %i.gg to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.gk ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !355
  %i.gn = sext i16 %i.gm to i32                   ; 2 uses
  %i.go = add nsw i32 %.sroa.speculated.i70, %i.gn
  %i.gp = mul nsw i32 %i.cd, %i.gn
  %.neg.i71.3 = sdiv i32 %i.gp, -10692
  %i.gq = add nsw i32 %i.go, %.neg.i71.3
  %i.gr = trunc i32 %i.gq to i16
  store i16 %i.gr, ptr %i.gl, align 2, !tbaa !355
  %i.gs = getelementptr inbounds nuw i8, ptr %.092, i64 8 ; 2 uses
  %.not67.3 = icmp eq ptr %i.gs, %i.ca
  br i1 %.not67.3, label %._crit_edge, label %.lr.ph93.new
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %.11419656.val, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -28
  %i.b = load i16, ptr %i.a, align 4, !tbaa !191  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.d = load i8, ptr %i.c, align 4, !tbaa !171   ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 5 uses
  %i.f = icmp ugt i8 %i.d, 1
  br i1 %i.f, label %bb.b, label %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, i64 noundef %i.e, i64 noundef 2) #37
  unreachable

_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.11419656.val, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %.11419656.val, i64 32 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !331
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !333
  %i.o = and i64 %i.n, %i.j
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.e ; 2 uses
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %2, i32 -1024)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 1024) ; 2 uses
  %i.r = load atomic i16, ptr %i.q monotonic, align 2
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %i.t = add nsw i32 %.sroa.speculated.i, %i.s
  %i.u = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.v = mul nsw i32 %i.u, %i.s
  %.neg.i = sdiv i32 %i.v, -1024
  %i.w = add nsw i32 %i.t, %.neg.i
  %i.x = trunc i32 %i.w to i16
  store atomic i16 %i.x, ptr %i.q monotonic, align 2
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !334
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !331
  %i.ac = and i64 %i.ab, %i.aa
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.ai = shufflevector <2 x i32> %i.ah, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = mul nsw <2 x i32> %i.ai, <i32 39, i32 89>
  %i.ak = load atomic i16, ptr %i.ag monotonic, align 2
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = sdiv <2 x i32> %i.aj, <i32 32, i32 64>
  %i.an = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.am, <2 x i32> splat (i32 -1024)) ; 2 uses
  %i.ao = extractelement <2 x i32> %i.an, i64 0
  %.sroa.speculated.i29 = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 1024) ; 2 uses
  %i.ap = add nsw i32 %.sroa.speculated.i29, %i.al
  %i.aq = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i29, i1 true)
  %i.ar = mul nsw i32 %i.aq, %i.al
  %.neg.i30 = sdiv i32 %i.ar, -1024
  %i.as = add nsw i32 %i.ap, %.neg.i30
  %i.at = trunc i32 %i.as to i16
  store atomic i16 %i.at, ptr %i.ag monotonic, align 2
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !331
  %i.ay = and i64 %i.ax, %i.aw
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %i.bd = extractelement <2 x i32> %i.an, i64 1
  %.sroa.speculated.i33 = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 1024) ; 3 uses
  %i.be = load atomic i16, ptr %i.bc monotonic, align 2
  %i.bf = sext i16 %i.be to i32                   ; 2 uses
  %i.bg = add nsw i32 %.sroa.speculated.i33, %i.bf
  %i.bh = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i33, i1 true) ; 2 uses
  %i.bi = mul nsw i32 %i.bh, %i.bf
  %.neg.i34 = sdiv i32 %i.bi, -1024
  %i.bj = add nsw i32 %i.bg, %.neg.i34
  %i.bk = trunc i32 %i.bj to i16
  store atomic i16 %i.bk, ptr %i.bc monotonic, align 2
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !25
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !331
  %i.bp = and i64 %i.bo, %i.bn
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 6 ; 2 uses
  %i.bu = load atomic i16, ptr %i.bt monotonic, align 2
  %i.bv = sext i16 %i.bu to i32                   ; 2 uses
  %i.bw = add nsw i32 %.sroa.speculated.i33, %i.bv
  %i.bx = mul nsw i32 %i.bh, %i.bv
  %.neg.i38 = sdiv i32 %i.bx, -1024
  %i.by = add nsw i32 %i.bw, %.neg.i38
  %i.bz = trunc i32 %i.by to i16
  store atomic i16 %i.bz, ptr %i.bt monotonic, align 2
  switch i16 %i.b, label %bb.c [
    i16 65, label %bb.d
    i16 0, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35
  %i.ca = and i16 %i.b, 63
  %i.cb = zext nneg i16 %i.ca to i64              ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !330
  %i.ce = getelementptr inbounds i8, ptr %1, i64 -96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !251
  %i.cg = zext i8 %i.cd to i64                    ; 2 uses
  %i.ch = getelementptr inbounds nuw [128 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = mul nsw <2 x i32> %i.ai, <i32 127, i32 59>
  %i.ck = load i16, ptr %i.ci, align 2, !tbaa !165
  %i.cl = sext i16 %i.ck to i32                   ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -208
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !251
  %i.co = getelementptr inbounds nuw [128 x i8], ptr %i.cn, i64 %i.cg
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cb ; 2 uses
  %i.cq = sdiv <2 x i32> %i.cj, splat (i32 128)
  %i.cr = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cq, <2 x i32> splat (i32 -1024)) ; 2 uses
  %i.cs = extractelement <2 x i32> %i.cr, i64 0
  %.sroa.speculated.i40 = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 1024) ; 2 uses
  %i.ct = add nsw i32 %.sroa.speculated.i40, %i.cl
  %i.cu = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i40, i1 true)
  %i.cv = mul nsw i32 %i.cu, %i.cl
  %.neg.i41 = sdiv i32 %i.cv, -1024
  %i.cw = add nsw i32 %i.ct, %.neg.i41
  %i.cx = trunc i32 %i.cw to i16
  store i16 %i.cx, ptr %i.ci, align 2, !tbaa !165
  %i.cy = extractelement <2 x i32> %i.cr, i64 1
  %.sroa.speculated.i43 = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 1024) ; 2 uses
  %i.cz = load i16, ptr %i.cp, align 2, !tbaa !165
  %i.da = sext i16 %i.cz to i32                   ; 2 uses
  %i.db = add nsw i32 %.sroa.speculated.i43, %i.da
  %i.dc = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i43, i1 true)
  %i.dd = mul nsw i32 %i.dc, %i.da
  %.neg.i44 = sdiv i32 %i.dd, -1024
  %i.de = add nsw i32 %i.db, %.neg.i44
  %i.df = trunc i32 %i.de to i16
  store i16 %i.df, ptr %i.cp, align 2, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35, %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048), i16, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(14279296) %2, i16 %3, i32 noundef %4) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !171
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [131072 x i8], ptr %2, i64 %i.c
  %i.e = zext i16 %3 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %4, i32 -7183)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 7183) ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !132
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = add nsw i32 %.sroa.speculated.i, %i.h
  %i.j = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.k = mul nsw i32 %i.j, %i.h
  %.neg.i = sdiv i32 %i.k, -7183
  %i.l = add nsw i32 %i.i, %.neg.i
  %i.m = trunc i32 %i.l to i16
  store i16 %i.m, ptr %i.f, align 2, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !253  ; 2 uses
  %i.p = icmp slt i32 %i.o, 5
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 262144
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [131072 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.e ; 2 uses
  %i.u = mul nsw i32 %4, 805
  %i.v = sdiv i32 %i.u, 1024
  %.sroa.speculate.load.false.sroa.speculated.i16 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 -7183)
  %.sroa.speculated.i17 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i16, i32 7183) ; 2 uses
  %i.w = load i16, ptr %i.t, align 2, !tbaa !132
  %i.x = sext i16 %i.w to i32                     ; 2 uses
  %i.y = add nsw i32 %.sroa.speculated.i17, %i.x
  %i.z = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i17, i1 true)
  %i.aa = mul nsw i32 %i.z, %i.x
  %.neg.i18 = sdiv i32 %i.aa, -7183
  %i.ab = add nsw i32 %i.y, %.neg.i18
  %i.ac = trunc i32 %i.ab to i16
  store i16 %i.ac, ptr %i.t, align 2, !tbaa !132
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = lshr i16 %3, 6
  %i.ae = and i16 %i.ad, 63
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !330
  %i.ai = trunc i16 %3 to i8
  %i.aj = and i8 %i.ai, 63                        ; 2 uses
  %i.ak = mul nsw i32 %4, 7
  %i.al = sdiv i32 %i.ak, 8
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %1, i8 noundef zeroext %i.ah, i8 noundef zeroext %i.aj, i32 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 11419656
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !213
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !333
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !337
  %i.au = and i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !162
  %i.ax = getelementptr inbounds nuw [2048 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load i8, ptr %i.ag, align 1, !tbaa !330
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %i.az
  %i.bb = zext nneg i8 %i.aj to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = icmp sgt i32 %4, 0
  %i.be = select i1 %i.bd, i32 905, i32 505
  %i.bf = mul nsw i32 %i.be, %4
  %i.bg = sdiv i32 %i.bf, 1024
  %.sroa.speculate.load.false.sroa.speculated.i19 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 -8192)
  %.sroa.speculated.i20 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i19, i32 8192) ; 2 uses
  %i.bh = load atomic i16, ptr %i.bc monotonic, align 2
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = add nsw i32 %.sroa.speculated.i20, %i.bi
  %i.bk = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i20, i1 true)
  %i.bl = mul nsw i32 %i.bk, %i.bi
  %.neg.i21 = sdiv i32 %i.bl, -8192
  %i.bm = add nsw i32 %i.bj, %.neg.i21
  %i.bn = trunc i32 %i.bm to i16
  store atomic i16 %i.bn, ptr %i.bc monotonic, align 2
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

declare noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !780, !nonnull !48, !align !49
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.d = load i8, ptr %i.c, align 2, !tbaa !325, !range !221, !noundef !48
  %i.e = xor i8 %i.d, 1
  %narrow.neg = mul nuw nsw i8 %i.e, -23
  %narrow3 = add nsw i8 %narrow.neg, 76
  %i.f = zext nneg i8 %narrow3 to i32             ; 2 uses
  %i.g = mul nsw i32 %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !782, !nonnull !48
  %i.j = load i8, ptr %i.i, align 1, !tbaa !313, !range !221, !noundef !48
  %i.k = zext nneg i8 %i.j to i32
  %i.l = mul nuw nsw i32 %i.k, 2474
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !783, !nonnull !48
  %i.o = load i8, ptr %i.n, align 1, !tbaa !313, !range !221, !noundef !48
  %i.p = zext nneg i8 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, 331
  %i.r = add nuw nsw i32 %i.q, %i.l
  %i.s = mul nuw nsw i32 %i.r, %i.f
  %i.t = lshr i32 %i.s, 10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !784, !nonnull !48, !align !785
  %i.w = load i32, ptr %i.v, align 4, !tbaa !138
  %i.x = tail call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.y = udiv i32 %i.x, 174665
  %i.z = add i32 %i.y, %i.g
  %i.aa = sub i32 %i.z, %i.t
  ret i32 %i.aa
}

declare void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_112is_shufflingENS_4MoveEPNS_6Search5StackERKNS_8PositionE(i16 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %2) unnamed_addr #26 {
bb.a:
  %i.a = and i16 %0, 63
  %i.b = zext nneg i16 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !330
  %i.e = icmp ne i8 %i.d, 0
  %.not.i.i = icmp ult i16 %0, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.e
  %i.f = icmp slt i16 %0, -16384
  %spec.select.i.i = or i1 %i.f, %or.cond.not.i.i
  %i.g = and i16 %0, 12288
  %i.h = icmp eq i16 %i.g, 12288
  %i.i = or i1 %i.h, %spec.select.i.i
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !312
  %i.n = icmp slt i32 %i.m, 10
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !786
  %i.q = icmp slt i32 %i.p, 7
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !253
  %i.t = icmp slt i32 %i.s, 20
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = lshr i16 %0, 6
  %i.v = getelementptr inbounds i8, ptr %1, i64 -84
  %i.w = load i16, ptr %i.v, align 4, !tbaa !234  ; 2 uses
  %i.x = xor i16 %i.w, %i.u
  %i.y = and i16 %i.x, 63
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = lshr i16 %i.w, 6
  %i.ab = getelementptr inbounds i8, ptr %1, i64 -196
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !234
  %i.ad = xor i16 %i.ac, %i.aa
  %i.ae = and i16 %i.ad, 63
  %i.af = icmp eq i16 %i.ae, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ %i.af, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !787, !nonnull !48, !align !49
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.d = load i8, ptr %i.c, align 2, !tbaa !325, !range !221, !noundef !48
  %i.e = xor i8 %i.d, 1
  %narrow.neg = mul nuw nsw i8 %i.e, -23
  %narrow3 = add nsw i8 %narrow.neg, 76
  %i.f = zext nneg i8 %narrow3 to i32             ; 2 uses
  %i.g = mul nsw i32 %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !789, !nonnull !48
  %i.j = load i8, ptr %i.i, align 1, !tbaa !313, !range !221, !noundef !48
  %i.k = zext nneg i8 %i.j to i32
  %i.l = mul nuw nsw i32 %i.k, 2474
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !790, !nonnull !48
  %i.o = load i8, ptr %i.n, align 1, !tbaa !313, !range !221, !noundef !48
  %i.p = zext nneg i8 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, 331
  %i.r = add nuw nsw i32 %i.q, %i.l
  %i.s = mul nuw nsw i32 %i.r, %i.f
  %i.t = lshr i32 %i.s, 10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !791, !nonnull !48, !align !785
  %i.w = load i32, ptr %i.v, align 4, !tbaa !138
  %i.x = tail call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.y = udiv i32 %i.x, 174665
  %i.z = add i32 %i.y, %i.g
  %i.aa = sub i32 %i.z, %i.t
  ret i32 %i.aa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 72
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 72            ; 3 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #39 ; 11 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !405
end_hunk_5
