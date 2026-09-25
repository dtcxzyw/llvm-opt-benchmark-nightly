Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.xc = insertelement <8 x i16> %i.xb, i16 %i.wp, i64 2
  %i.xd = insertelement <8 x i16> %i.xc, i16 %i.wr, i64 3
  %i.xe = insertelement <8 x i16> %i.xd, i16 %i.wt, i64 4
  %i.xf = insertelement <8 x i16> %i.xe, i16 %i.wv, i64 5
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
  br i1 %i.xu, label %middle.block, label %vector.body, !llvm.loop !495

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.xr, %i.xq
  %bin.rdx1209 = add <8 x i64> %i.xs, %bin.rdx
  %bin.rdx1210 = add <8 x i64> %i.xt, %bin.rdx1209
  %i.xv = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx1210) ; 3 uses
  %cmp.n = icmp eq i64 %i.tm, %n.vec
  br i1 %cmp.n, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !500

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
  %wide.masked.gather1219 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep1218, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !194 ; 8 uses
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
  br i1 %i.za, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !496

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
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !194
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !234
  %i.zf = icmp eq i16 %i.ze, %i.sz
  %i.zg = zext i1 %i.zf to i64
  %spec.select.i.i497 = add nuw nsw i64 %.07.i.i, %i.zg ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 72 ; 2 uses
  %.not.i.i498 = icmp eq ptr %i.zh, %i.tg
  br i1 %.not.i.i498, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit, label %.lr.ph.i.i, !llvm.loop !497

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %spec.select.i.i497.lcssa = phi i64 [ %i.zb, %vec.epilog.middle.block ], [ %i.xv, %middle.block ], [ %spec.select.i.i497, %.lr.ph.i.i ]
  %i.zi = icmp eq i64 %spec.select.i.i497.lcssa, 0
  br i1 %i.zi, label %.backedge, label %bb.bv

bb.bv:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.zj = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.zj, ptr %i.r, align 8, !tbaa !272
  %i.zk = load i64, ptr %i.s, align 64, !tbaa !131
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %bb.bw, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

bb.bw:                                            ; preds = %bb.bv
  %i.zm = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.zn = icmp ugt i64 %i.zm, 10000000
  br i1 %i.zn, label %bb.bx, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

bb.bx:                                            ; preds = %bb.bw
  %i.zo = load ptr, ptr %i.ru, align 32, !tbaa !134
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 112
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !207, !nonnull !72, !align !73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  store i32 %.4740.ph1007, ptr %14, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.zr = load i8, ptr %i.rw, align 1, !tbaa !242, !range !223, !noundef !72
  %i.zs = trunc nuw i8 %i.zr to i1
  call void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i16 %i.sz, i1 noundef zeroext %i.zs) #33
  %i.zt = load ptr, ptr %15, align 8, !tbaa !229
  %i.zu = load i64, ptr %i.rx, align 8, !tbaa !228
  store i64 %i.zu, ptr %i.rv, align 8
  store ptr %i.zt, ptr %i.ry, align 8
  %i.zv = load i64, ptr %i.bk, align 8, !tbaa !255
  %i.zw = add i64 %i.zv, %indvars.iv.next
  store i64 %i.zw, ptr %i.rz, align 8, !tbaa !503
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zq, i64 80
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !221
  %.not.i.i499 = icmp eq ptr %i.zy, null
  br i1 %.not.i.i499, label %bb.by, label %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit

bb.by:                                            ; preds = %bb.bx
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit: ; preds = %bb.bx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zq, i64 64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zq, i64 88
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !505
  call void %i.aab(ptr noundef nonnull align 8 dereferenceable(32) %i.zz, ptr noundef nonnull align 8 dereferenceable(32) %14) #33, !inline_history !498
  %i.aac = load ptr, ptr %15, align 8, !tbaa !229 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.sa
  br i1 %i.aad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit
  %i.aae = load i64, ptr %i.sa, align 8, !tbaa !143
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aaf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFvRKN9Stockfish6Search13InfoIterationEEEclES4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bw, %bb.bv
  store ptr null, ptr %i.sb, align 8, !tbaa !250
  %i.aag = and i16 %i.sz, 63
  %i.aah = zext nneg i16 %i.aag to i64            ; 6 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 %i.aah ; 2 uses
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !283
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
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !283 ; 3 uses
  %i.aau = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz) #33
  %i.aav = add nsw i32 %.4740.ph1007, -1          ; 8 uses
  %i.aaw = sext i32 %.4740.ph1007 to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.aaw
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !150
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !150
  %i.abb = load i32, ptr %i.se, align 8, !tbaa !258
  %16 = mul nsw i32 %i.aba, %i.aay                ; 2 uses
  %17 = sub nsw i32 %4, %.0369.ph1010
  %i.abc = insertelement <2 x i32> poison, i32 %17, i64 0
  %i.abd = insertelement <2 x i32> %i.abc, i32 %16, i64 1
  %i.abe = mul nsw <2 x i32> %i.abd, <i32 608, i32 119>
  %i.abf = insertelement <2 x i32> <i32 poison, i32 256>, i32 %i.abb, i64 0
  %i.abg = sdiv <2 x i32> %i.abe, %i.abf          ; 2 uses
  %i.abh = extractelement <2 x i32> %i.abg, i64 1
  %i.abi = select i1 %i.sc, i32 0, i32 %i.abh
  %i.abj = add i32 %16, 1182
  %i.abk = extractelement <2 x i32> %i.abg, i64 0
  %i.abl = sub i32 %i.abj, %i.abk
  %i.abm = add i32 %i.abl, %i.abi                 ; 2 uses
  %i.abn = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.abo = trunc nuw i8 %i.abn to i1
  %i.abp = add nsw i32 %i.abm, 946
  %spec.select468 = select i1 %i.abo, i32 %i.abp, i32 %i.abm ; 2 uses
  %i.abq = load i8, ptr %i.aai, align 1, !tbaa !283
  %i.abr = load atomic i64, ptr %i.rt monotonic, align 8
  %i.abs = add i64 %i.abr, 1
  store atomic i64 %i.abs, ptr %i.rt monotonic, align 8
  %i.abt = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.sf) #33 ; 2 uses
  %i.abu = extractvalue { ptr, ptr } %i.abt, 0    ; 2 uses
  %i.abv = extractvalue { ptr, ptr } %i.abt, 1
  %i.abw = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.abx = load ptr, ptr %i.de, align 8, !tbaa !151, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz, ptr noundef nonnull align 8 dereferenceable(192) %8, i1 noundef zeroext %i.aau, ptr noundef nonnull align 1 dereferenceable(7) %i.abu, ptr noundef nonnull align 8 dereferenceable(416) %i.abv, ptr noundef nonnull %i.abw, ptr noundef nonnull %i.abx) #33
  %i.aby = icmp ne i8 %i.abq, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i500, %i.aby
  %spec.select.i.i.i = or i1 %i.aal, %or.cond.not.i.i.i
  %i.abz = or i1 %i.aan, %spec.select.i.i.i
  store i16 %i.sz, ptr %i.sg, align 4, !tbaa !196
  %i.aca = load i8, ptr %i.k, align 4, !tbaa !270, !range !223, !noundef !72
  %i.acb = zext nneg i8 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [4194304 x i8], ptr %i.sh, i64 %i.acb
  %i.acd = zext i1 %i.abz to i64
  %i.ace = getelementptr inbounds nuw [2097152 x i8], ptr %i.acc, i64 %i.acd
  %i.acf = load i8, ptr %i.abu, align 1, !tbaa !292
  %i.acg = zext i8 %i.acf to i64                  ; 2 uses
  %i.ach = getelementptr inbounds nuw [131072 x i8], ptr %i.ace, i64 %i.acg
  %i.aci = getelementptr inbounds nuw [2048 x i8], ptr %i.ach, i64 %i.aah
  store ptr %i.aci, ptr %i.si, align 8, !tbaa !246
  %i.acj = getelementptr inbounds nuw [131072 x i8], ptr %i.sj, i64 %i.acg
  %i.ack = getelementptr inbounds nuw [2048 x i8], ptr %i.acj, i64 %i.aah
  store ptr %i.ack, ptr %i.sk, align 8, !tbaa !247
  %i.acl = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.acm = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.acn = trunc nuw i8 %i.acm to i1
  br i1 %i.acn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.aco = load i32, ptr %i.co, align 4, !tbaa !281
  %i.acp = icmp sgt i32 %i.aco, %.0369.ph1010
  %.neg439 = select i1 %i.acp, i32 -4624, i32 -3702
  %i.acq = load i32, ptr %i.sl, align 4, !tbaa !293
  %.not438 = icmp slt i32 %i.acq, %.4740.ph1007
  %.neg441 = select i1 %.not438, i32 0, i32 %.neg440
  %.neg442 = add i32 %.neg439, %spec.select468
  %i.acr = add i32 %.neg442, %.neg441
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %.1389 = phi i32 [ %i.acr, %bb.bz ], [ %spec.select468, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit ]
  %.neg443 = mul i32 %i.zj, -73
  %i.acs = load i16, ptr %i.bg, align 8           ; 2 uses
  %.not935 = icmp eq i16 %i.acs, 0                ; 2 uses
  %i.act = select i1 %.not935, i32 4369, i32 3372
  %i.acu = select i1 %6, i32 %i.act, i32 0
  %.reass.reass = add i32 %.neg443, %invariant.op
  %i.acv = add i32 %.reass.reass, %.1389
  %.2390 = add nsw i32 %i.acv, %i.acu             ; 2 uses
  %i.acw = add nsw i32 %.2390, 1119
  %spec.select469 = select i1 %i.dd, i32 %i.acw, i32 %.2390
  %i.acx = load i32, ptr %i.so, align 8, !tbaa !277 ; 2 uses
  %i.acy = icmp sgt i32 %i.acx, 1
  %.not444 = icmp eq i32 %i.acx, 2
  %i.acz = select i1 %.not444, i32 256, i32 1280
  %i.ada = select i1 %i.acy, i32 %i.acz, i32 0
  %.4392 = add nsw i32 %spec.select469, %i.ada    ; 2 uses
  %i.adb = icmp eq i16 %i.sz, %i.acs
  %i.adc = add nsw i32 %.4392, -2151
  %.5393 = select i1 %i.adb, i32 %i.adc, i32 %.4392
  br i1 %i.aao, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.add = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 184
  %i.adf = load i8, ptr %i.ade, align 8, !tbaa !271 ; 2 uses
  %i.adg = zext i8 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.adg
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !150
  %i.adj = mul nsw i32 %i.adi, 217
  %i.adk = sdiv i32 %i.adj, 32
  %i.adl = zext i8 %i.aat to i64
  %i.adm = getelementptr inbounds nuw [1024 x i8], ptr %i.ro, i64 %i.adl
  %i.adn = getelementptr inbounds nuw [16 x i8], ptr %i.adm, i64 %i.aah
  %i.ado = and i8 %i.adf, 7
  %i.adp = zext nneg i8 %i.ado to i64
  %i.adq = getelementptr inbounds nuw [2 x i8], ptr %i.adn, i64 %i.adp
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.adr = zext i16 %i.sz to i64
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.sq, i64 %i.adr
  %i.adt = load i16, ptr %i.ads, align 2, !tbaa !147
  %i.adu = sext i16 %i.adt to i32
  %i.adv = shl nsw i32 %i.adu, 1
  %i.adw = load ptr, ptr %i.a, align 16, !tbaa !294
  %i.adx = zext i8 %i.aat to i64                  ; 2 uses
  %i.ady = getelementptr inbounds nuw [128 x i8], ptr %i.adw, i64 %i.adx
  %i.adz = getelementptr inbounds nuw [2 x i8], ptr %i.ady, i64 %i.aah
  %i.aea = load i16, ptr %i.adz, align 2, !tbaa !175
  %i.aeb = sext i16 %i.aea to i32
  %i.aec = add nsw i32 %i.adv, %i.aeb
  %i.aed = load ptr, ptr %i.rb, align 8, !tbaa !294
  %i.aee = getelementptr inbounds nuw [128 x i8], ptr %i.aed, i64 %i.adx
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.aee, i64 %i.aah
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink1155.in = phi ptr [ %i.aef, %bb.cc ], [ %i.adq, %bb.cb ]
  %.sink = phi i32 [ %i.aec, %bb.cc ], [ %i.adk, %bb.cb ]
  %.sink1155 = load i16, ptr %.sink1155.in, align 2, !tbaa !196
  %i.aeg = sext i16 %.sink1155 to i32
  %i.aeh = add nsw i32 %.sink, %i.aeg             ; 2 uses
  store i32 %i.aeh, ptr %i.am, align 4, !tbaa !276
  %i.aei = mul nsw i32 %i.aeh, 425
  %.neg445 = sdiv i32 %i.aei, -4096
  %i.aej = add i32 %.neg445, %.5393               ; 3 uses
  %i.aek = icmp sgt i32 %.4740.ph1007, 1
  %i.ael = icmp ne i64 %indvars.iv, 0             ; 3 uses
  %or.cond22 = select i1 %i.aek, i1 %i.ael, i1 false
  br i1 %or.cond22, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %.neg448 = sdiv i32 %i.aej, -1024
  %i.aem = add i32 %.neg448, %i.aav
  %i.aen = add nuw nsw i32 %.4740.ph1007, 1
  %i.aeo = call i32 @llvm.smin.i32(i32 %i.aen, i32 %i.aem)
  %.sroa.speculated574 = call i32 @llvm.smax.i32(i32 %i.aeo, i32 1)
  %i.aep = add nuw nsw i32 %.sroa.speculated574, 1 ; 4 uses
  %i.aeq = sub nsw i32 %i.aav, %i.aep
  store i32 %i.aeq, ptr %i.ss, align 4, !tbaa !275
  %i.aer = xor i32 %.0369.ph1010, -1              ; 2 uses
  %i.aes = sub nsw i32 0, %.0369.ph1010           ; 2 uses
  %i.aet = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.aer, i32 noundef %i.aes, i32 noundef %i.aep, i1 noundef zeroext true)
  %i.aeu = sub nsw i32 0, %i.aet                  ; 5 uses
  store i32 0, ptr %i.ss, align 4, !tbaa !275
  %i.aev = icmp slt i32 %.0369.ph1010, %i.aeu
  br i1 %i.aev, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  %i.aew = icmp samesign ult i32 %i.aep, %i.aav
  %i.aex = add nsw i32 %.0746.ph1005, 50
  %i.aey = icmp slt i32 %i.aex, %i.aeu
  %i.aez = select i1 %i.aew, i1 %i.aey, i1 false
  %i.afa = add nsw i32 %.0746.ph1005, 9
  %i.afb = icmp sgt i32 %i.afa, %i.aeu
  %i.afc = zext i1 %i.aez to i32
  %.neg449 = sext i1 %i.afb to i32
  %i.afd = add nsw i32 %i.aav, %.neg449
  %i.afe = add nuw nsw i32 %i.afd, %i.afc         ; 3 uses
  %i.aff = icmp samesign ugt i32 %i.afe, %i.aep
  br i1 %i.aff, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.afg = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.aer, i32 noundef %i.aes, i32 noundef %i.afe, i1 noundef zeroext %i.sr)
  %i.afh = sub nsw i32 0, %i.afg
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.2383 = phi i32 [ %i.afh, %bb.cg ], [ %i.aeu, %bb.cf ]
  %i.afi = trunc i16 %i.sz to i8
  %i.afj = and i8 %i.afi, 63
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %2, i8 noundef zeroext %i.aat, i8 noundef zeroext %i.afj, i32 noundef 1365)
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cd
  br i1 %i.ael, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %bb.ci
  %i.afk = add nsw i32 %i.aej, 1140
  %spec.select470 = select i1 %.not935, i32 %i.afk, i32 %i.aej ; 2 uses
  %i.afl = xor i32 %.0369.ph1010, -1
  %i.afm = sub nsw i32 0, %.0369.ph1010
  %i.afn = icmp sgt i32 %spec.select470, 3957
  %.neg446 = sext i1 %i.afn to i32
  %i.afo = add i32 %i.aav, %.neg446
  %i.afp = icmp sgt i32 %spec.select470, 5654
  %i.afq = icmp sgt i32 %.4740.ph1007, 3
  %i.afr = and i1 %i.afq, %i.afp
  %.neg447 = sext i1 %i.afr to i32
  %i.afs = add i32 %i.afo, %.neg447
  %i.aft = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.afl, i32 noundef %i.afm, i32 noundef %i.afs, i1 noundef zeroext %i.sr)
  %i.afu = sub nsw i32 0, %i.aft
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ce, %bb.ch, %bb.cj
  %.0744 = phi i32 [ %i.afe, %bb.ch ], [ %i.aav, %bb.ce ], [ %i.aav, %bb.cj ]
  %.4385 = phi i32 [ %.2383, %bb.ch ], [ %i.aeu, %bb.ce ], [ %i.afu, %bb.cj ] ; 2 uses
  %i.afv = icmp sgt i32 %.4385, %.0369.ph1010
  br i1 %i.afv, label %.thread, label %bb.co

.thread:                                          ; preds = %bb.ci, %bb.ck
  %i.afw = phi i1 [ false, %bb.ck ], [ true, %bb.ci ]
  %.07441110 = phi i32 [ %.0744, %bb.ck ], [ %i.aav, %bb.ci ] ; 3 uses
  store ptr %7, ptr %i.sb, align 8, !tbaa !250
  store i16 0, ptr %7, align 16, !tbaa !196
  %i.afx = load i16, ptr %i.bg, align 8, !tbaa !234
  %i.afy = icmp eq i16 %i.sz, %i.afx
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
.backedge1206:                                    ; preds = %bb.cu, %bb.cv, %bb.cq, %bb.cr
  %i.to = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not1184 = icmp eq i16 %i.to, 0
  br i1 %.not1184, label %._crit_edge, label %bb.cq, !llvm.loop !781

bb.cs:                                            ; preds = %bb.cr
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !409
  call void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tl, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef %i.tp)
  %i.tq = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 56
  %i.ts = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.tr, i32 noundef %i.sr, i32 noundef %i.th)
  %i.tt = sub nsw i32 0, %i.ts                    ; 2 uses
  %i.tu = icmp sle i32 %i.sq, %i.tt
  %or.cond36 = select i1 %i.tu, i1 %i.ti, i1 false
  br i1 %or.cond36, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.tv = load ptr, ptr %i.a, align 8, !tbaa !409
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
  %i.tz = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !249 ; 2 uses
  %i.uc = icmp sgt i32 %.0520, 31506
  %i.ud = icmp slt i32 %.0520, -31506
  %i.ue = select i1 %i.ud, i32 %i.ub, i32 0
  %i.uf = sub i32 0, %i.ue
  %.p.i687 = select i1 %i.uc, i32 %i.ub, i32 %i.uf
  %i.ug = add i32 %.p.i687, %.0520
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 45
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !282, !range !223, !noundef !72
  %i.uj = trunc nuw i8 %i.ui to i1
  %i.uk = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ul = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.uk) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef %i.ug, i1 noundef zeroext %i.uj, i8 noundef zeroext 2, i32 noundef %i.tk, i16 %i.tl, i32 noundef %.1536, i8 noundef zeroext %i.ul) #33
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
  %i.uq = load i8, ptr %i.up, align 8, !tbaa !289
  %i.ur = and i8 %i.uq, 2
  %.not594 = icmp eq i8 %i.ur, 0
  br i1 %.not594, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.us = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !293
  %i.uu = add nsw i32 %.31037, -4
  %.not595 = icmp slt i32 %i.ut, %i.uu
  br i1 %.not595, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.uv = load i32, ptr %i.di, align 4, !tbaa !281 ; 2 uses
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
  %i.uy = load ptr, ptr %i.a, align 8, !tbaa !409 ; 7 uses
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -48
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !246
  store ptr %i.va, ptr %i.f, align 16, !tbaa !294
  %i.vb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.vc = getelementptr inbounds i8, ptr %i.uy, i64 -104
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !246
  store ptr %i.vd, ptr %i.vb, align 8, !tbaa !294
  %i.ve = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.vf = getelementptr inbounds i8, ptr %i.uy, i64 -160
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !246
  store ptr %i.vg, ptr %i.ve, align 16, !tbaa !294
  %i.vh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.vi = getelementptr inbounds i8, ptr %i.uy, i64 -216
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !246
  store ptr %i.vj, ptr %i.vh, align 8, !tbaa !294
  %i.vk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.vl = getelementptr inbounds i8, ptr %i.uy, i64 -272
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !246
  store ptr %i.vm, ptr %i.vk, align 16, !tbaa !294
  %i.vn = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.vo = getelementptr inbounds i8, ptr %i.uy, i64 -328
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !246
  store ptr %i.vp, ptr %i.vn, align 8, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.0135.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 4 uses
  %i.vs = load ptr, ptr %i.ej, align 8, !tbaa !151, !nonnull !72, !align !73
  %i.vt = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !249
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %14, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0135.0.copyload, i32 noundef %.31037, ptr noundef nonnull %0, ptr noundef nonnull %i.vq, ptr noundef nonnull %i.vr, ptr noundef nonnull %i.f, ptr noundef nonnull %i.vs, i32 noundef %i.vu) #33
  %i.vv = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not118912331244 = icmp eq i16 %i.vv, 0
  br i1 %.not118912331244, label %.loopexit, label %.lr.ph1234.lr.ph

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
  %.neg1255 = select i1 %i.ei, i32 -73, i32 175
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %.neg632 = select i1 %6, i32 -1945, i32 -934
  %i.wh = select i1 %6, i32 0, i32 1024
  br label %.lr.ph1234

.lr.ph1234:                                       ; preds = %.lr.ph1234.lr.ph, %.thread1092
  %indvars.iv = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %indvars.iv.next, %.thread1092 ] ; 4 uses
  %i.wi = phi i16 [ %i.vv, %.lr.ph1234.lr.ph ], [ %i.aku, %.thread1092 ]
  %.0506.ph1249 = phi i32 [ -32001, %.lr.ph1234.lr.ph ], [ %.10516, %.thread1092 ] ; 16 uses
  %.11031.ph1247 = phi i32 [ %.sroa.speculated824, %.lr.ph1234.lr.ph ], [ %.3, %.thread1092 ] ; 23 uses
  %.41038.ph1246 = phi i32 [ %.31037, %.lr.ph1234.lr.ph ], [ %.9, %.thread1092 ] ; 25 uses
  %.sroa.0827.0.ph1245 = phi i16 [ 0, %.lr.ph1234.lr.ph ], [ %.sroa.0827.2, %.thread1092 ] ; 12 uses
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph1234, %.backedge
  %i.wj = phi i16 [ %i.wi, %.lr.ph1234 ], [ %i.wl, %.backedge ] ; 25 uses
  %i.wk = icmp eq i16 %i.wj, %i.cm
  br i1 %i.wk, label %.backedge, label %bb.db

.backedge:                                        ; preds = %bb.da, %bb.db
  %i.wl = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not1189 = icmp eq i16 %i.wl, 0
  br i1 %.not1189, label %.loopexit.loopexit, label %bb.da, !llvm.loop !782

bb.db:                                            ; preds = %bb.da
  %i.wm = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj) #33
  br i1 %i.wm, label %bb.dc, label %.backedge

bb.dc:                                            ; preds = %bb.db
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.wn = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  %i.wp = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.wp, ptr %i.wo, align 8, !tbaa !272
  %i.wq = and i16 %i.wj, 63
  %i.wr = zext nneg i16 %i.wq to i64              ; 10 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 %i.wr ; 3 uses
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !283
  %i.wu = icmp ne i8 %i.wt, 0
  %.not.i.i691 = icmp ult i16 %i.wj, -16384       ; 2 uses
  %or.cond.not.i.i692 = and i1 %.not.i.i691, %i.wu
  %i.wv = icmp slt i16 %i.wj, -16384              ; 2 uses
  %spec.select.i.i693 = or i1 %i.wv, %or.cond.not.i.i692
  %i.ww = and i16 %i.wj, 12288
  %i.wx = icmp eq i16 %i.ww, 12288                ; 2 uses
  %i.wy = or i1 %i.wx, %spec.select.i.i693        ; 3 uses
  %i.wz = lshr i16 %i.wj, 6
  %i.xa = and i16 %i.wz, 63
  %i.xb = zext nneg i16 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !283 ; 4 uses
  %i.xe = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj) #33 ; 3 uses
  %i.xf = add nsw i32 %.41038.ph1246, -1          ; 3 uses
  %i.xg = load i8, ptr %i.b, align 1, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.xh = trunc nuw i8 %i.xg to i1
  %i.xi = sext i32 %.41038.ph1246 to i64
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !150
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %indvars.iv.next
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !150
  %i.xn = load i32, ptr %i.vx, align 8, !tbaa !258
  %15 = mul nsw i32 %i.xm, %i.xk                  ; 2 uses
  %16 = sub nsw i32 %.sroa.speculated819, %.11031.ph1247
  %i.xo = insertelement <2 x i32> poison, i32 %16, i64 0
  %i.xp = insertelement <2 x i32> %i.xo, i32 %15, i64 1
  %i.xq = mul nsw <2 x i32> %i.xp, <i32 608, i32 119>
  %i.xr = insertelement <2 x i32> <i32 poison, i32 256>, i32 %i.xn, i64 0
  %i.xs = sdiv <2 x i32> %i.xq, %i.xr             ; 2 uses
  %i.xt = extractelement <2 x i32> %i.xs, i64 1
  %i.xu = select i1 %i.xh, i32 0, i32 %i.xt
  %i.xv = add i32 %15, 1182
  %i.xw = extractelement <2 x i32> %i.xs, i64 0
  %i.xx = sub i32 %i.xv, %i.xw
  %i.xy = add i32 %i.xx, %i.xu                    ; 2 uses
  %i.xz = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 45
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !282, !range !223, !noundef !72
  %i.yc = trunc nuw i8 %i.yb to i1
  %i.yd = add nsw i32 %i.xy, 946
  %spec.select655 = select i1 %i.yc, i32 %i.yd, i32 %i.xy ; 3 uses
  %i.ye = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 40
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.vy
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !150
  %.not597 = icmp eq i32 %i.yh, 0
  %i.yi = icmp slt i32 %.0506.ph1249, -31506
  %or.cond1157 = select i1 %.not597, i1 true, i1 %i.yi
  br i1 %or.cond1157, label %.thread1101, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yj = mul nsw i32 %.41038.ph1246, %.41038.ph1246
  %i.yk = add nuw nsw i32 %i.yj, 3
  %narrow598 = sub nuw nsw i8 2, %i.xg
  %i.yl = zext nneg i8 %narrow598 to i32
  %i.ym = udiv i32 %i.yk, %i.yl
  %i.yn = zext nneg i32 %i.ym to i64
  %.not599 = icmp samesign ult i64 %indvars.iv.next, %i.yn
  br i1 %.not599, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.neg600 = sdiv i32 %spec.select655, -1024
  %i.yo = add i32 %.neg600, %i.xf                 ; 3 uses
  %or.cond38 = or i1 %i.xe, %i.wy
  %i.yp = zext i8 %i.xd to i64                    ; 5 uses
  br i1 %or.cond38, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.yq = load i8, ptr %i.ws, align 1, !tbaa !283 ; 2 uses
  %i.yr = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.yp
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yr, i64 %i.wr
  %i.yt = and i8 %i.yq, 7
  %i.yu = zext nneg i8 %i.yt to i64
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %i.yu
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !296 ; 2 uses
  %i.yx = icmp sgt i32 %i.yo, 6
  %or.cond41.not = select i1 %i.xe, i1 true, i1 %i.yx
  br i1 %or.cond41.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yy = sext i16 %i.yw to i32
  %i.yz = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !248
  %i.zc = mul nsw i32 %i.yo, 217
  %i.zd = zext i8 %i.yq to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !150
  %i.zg = mul nsw i32 %i.yy, 131
  %i.zh = sdiv i32 %i.zg, 1024
  %i.zi = add nsw i32 %i.zc, 232
  %i.zj = add i32 %i.zi, %i.zh
  %i.zk = add i32 %i.zj, %i.zb
  %i.zl = add i32 %i.zk, %i.zf
  %.not605 = icmp sgt i32 %i.zl, %.11031.ph1247
  br i1 %.not605, label %bb.di, label %.thread1092

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zm = mul nsw i32 %.41038.ph1246, 166
  %i.zn = sdiv i16 %i.yw, 29
  %.sext = sext i16 %i.zn to i32
  %i.zo = add nsw i32 %i.zm, %.sext
  %.sroa.speculated779 = call i32 @llvm.smax.i32(i32 %i.zo, i32 0)
  %i.zp = icmp sgt i32 %.11031.ph1247, -1
  br i1 %i.zp, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zq = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 40
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.vy
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !150
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.yp
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !150
  %.not606 = icmp eq i32 %i.zt, %i.zv
  br i1 %.not606, label %.thread1101, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.zw = sub nsw i32 0, %.sroa.speculated779
  %i.zx = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj, i32 noundef %i.zw) #33
  br i1 %i.zx, label %.thread1101, label %.thread1092, !llvm.loop !782

bb.dl:                                            ; preds = %bb.df
  %i.zy = load ptr, ptr %i.f, align 16, !tbaa !294
  %i.zz = getelementptr inbounds nuw [128 x i8], ptr %i.zy, i64 %i.yp
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %i.wr
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !175
  %i.aac = sext i16 %i.aab to i32
  %i.aad = load ptr, ptr %i.vb, align 8, !tbaa !294
  %i.aae = getelementptr inbounds nuw [128 x i8], ptr %i.aad, i64 %i.yp
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.aae, i64 %i.wr
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !175
  %i.aah = sext i16 %i.aag to i32
  %i.aai = add nsw i32 %i.aah, %i.aac
  %i.aaj = load ptr, ptr %i.ej, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.aak = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !286
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 40
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !290
  %i.aap = and i64 %i.aao, %i.aam
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !170
  %i.aas = getelementptr inbounds nuw [2048 x i8], ptr %i.aar, i64 %i.aap
  %i.aat = getelementptr inbounds nuw [128 x i8], ptr %i.aas, i64 %i.yp
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.wr
  %i.aav = load atomic i16, ptr %i.aau monotonic, align 2
  %i.aaw = sext i16 %i.aav to i32
  %i.aax = add nsw i32 %i.aai, %i.aaw             ; 2 uses
  %i.aay = mul nsw i32 %.41038.ph1246, -4083
  %i.aaz = icmp slt i32 %i.aax, %i.aay
  br i1 %i.aaz, label %.thread1092, label %bb.dm, !llvm.loop !782

bb.dm:                                            ; preds = %bb.dl
  %i.aba = zext i16 %i.wj to i64
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.vz, i64 %i.aba
  %i.abc = load i16, ptr %i.abb, align 2, !tbaa !147
  %i.abd = sext i16 %i.abc to i32
  %i.abe = mul nsw i32 %i.abd, 69
  %i.abf = sdiv i32 %i.abe, 32
  %i.abg = add nsw i32 %i.abf, %i.aax
  %i.abh = sdiv i32 %i.abg, 3208
  %i.abi = add nsw i32 %i.abh, %i.yo              ; 3 uses
  %i.abj = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 32
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !248 ; 2 uses
  %.not1190 = icmp eq i16 %.sroa.0827.0.ph1245, 0
  %i.abm = mul nsw i32 %i.abi, 127
  %i.abn = icmp sgt i32 %i.abl, %.11031.ph1247
  %i.abo = select i1 %i.abn, i32 85, i32 0
  %i.abp = select i1 %.not1190, i32 203, i32 42
  %i.abq = add i32 %i.abp, %i.abl
  %i.abr = add i32 %i.abq, %i.abo
  %i.abs = add i32 %i.abr, %i.abm                 ; 4 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abj, i64 44
  %i.abu = load i8, ptr %i.abt, align 4, !tbaa !270, !range !223, !noundef !72
  %i.abv = trunc nuw i8 %i.abu to i1
  %i.abw = icmp sgt i32 %i.abi, 12
  %or.cond44.not = select i1 %i.abv, i1 true, i1 %i.abw
  %.not602 = icmp sgt i32 %i.abs, %.11031.ph1247
  %or.cond657 = select i1 %or.cond44.not, i1 true, i1 %.not602
  br i1 %or.cond657, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not603 = icmp sgt i32 %.0506.ph1249, %i.abs
  %i.abx = icmp sgt i32 %.0506.ph1249, 31506
  %or.cond1158 = or i1 %.not603, %i.abx
  br i1 %or.cond1158, label %.thread1092, label %bb.do, !llvm.loop !782

bb.do:                                            ; preds = %bb.dn
  %i.aby = icmp sgt i32 %i.abs, 31506
  %spec.select658 = select i1 %i.aby, i32 %.0506.ph1249, i32 %i.abs
  br label %.thread1092, !llvm.loop !782

bb.dp:                                            ; preds = %bb.dm
  %.sroa.speculated773 = call i32 @llvm.smax.i32(i32 %i.abi, i32 0) ; 2 uses
  %i.abz = mul nsw i32 %.sroa.speculated773, -25
  %i.aca = mul nsw i32 %i.abz, %.sroa.speculated773
  %i.acb = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj, i32 noundef %i.aca) #33
  br i1 %i.acb, label %.thread1101, label %.thread1092

.thread1101:                                      ; preds = %bb.dk, %bb.dj, %bb.dp, %bb.dc
  %i.acc = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.acd = icmp ne i16 %i.wj, %i.acc
  %brmerge1160 = or i1 %i.eh, %i.acd
  %.pre1294 = load ptr, ptr %i.a, align 8, !tbaa !409 ; 10 uses
  br i1 %brmerge1160, label %.thread1106, label %bb.dq

bb.dq:                                            ; preds = %.thread1101
  %i.ace = getelementptr inbounds nuw i8, ptr %.pre1294, i64 45
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !282, !range !223, !noundef !72 ; 2 uses
  %i.acg = or disjoint i8 %i.acf, 6
  %i.ach = zext nneg i8 %i.acg to i32
  %.not607 = icmp slt i32 %.41038.ph1246, %i.ach
  br i1 %.not607, label %.thread1106, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aci = load i32, ptr %i.di, align 4, !tbaa !281 ; 2 uses
  %i.acj = add i32 %i.aci, -31507
  %spec.select.i697 = icmp ult i32 %i.acj, -63013
  br i1 %spec.select.i697, label %.thread1106, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ack = load i8, ptr %i.up, align 8, !tbaa !289
  %i.acl = and i8 %i.ack, 2
  %.not608 = icmp eq i8 %i.acl, 0
  br i1 %.not608, label %.thread1106, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
end_hunk_1
begin_hunk_2_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  br i1 %.not1145, label %._crit_edge, label %bb.by, !llvm.loop !784

bb.ca:                                            ; preds = %bb.bz
  %i.rc = load ptr, ptr %i.a, align 8, !tbaa !409
  call void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qy, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef %i.rc)
  %i.rd = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 56
  %i.rf = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.re, i32 noundef %i.qd, i32 noundef %i.qt)
  %i.rg = sub nsw i32 0, %i.rf                    ; 2 uses
  %i.rh = icmp sle i32 %i.qc, %i.rg
  %or.cond28 = select i1 %i.rh, i1 %i.qu, i1 false
  br i1 %or.cond28, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ri = load ptr, ptr %i.a, align 8, !tbaa !409
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
  %i.rm = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !249 ; 2 uses
  %i.rp = icmp sgt i32 %.0426, 31506
  %i.rq = icmp slt i32 %.0426, -31506
  %i.rr = select i1 %i.rq, i32 %i.ro, i32 0
  %i.rs = sub i32 0, %i.rr
  %.p.i586 = select i1 %i.rp, i32 %i.ro, i32 %i.rs
  %i.rt = add i32 %.p.i586, %.0426
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rm, i64 45
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !282, !range !223, !noundef !72
  %i.rw = trunc nuw i8 %i.rv to i1
  %i.rx = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ry = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.rx) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef %i.rt, i1 noundef zeroext %i.rw, i8 noundef zeroext 2, i32 noundef %i.qx, i16 %i.qy, i32 noundef %.1445, i8 noundef zeroext %i.ry) #33
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
  %i.sd = load i8, ptr %i.sc, align 8, !tbaa !289
  %i.se = and i8 %i.sd, 2
  %.not499 = icmp eq i8 %i.se, 0
  br i1 %.not499, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.sf = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !293
  %i.sh = add nsw i32 %.3985, -4
  %.not500 = icmp slt i32 %i.sg, %i.sh
  br i1 %.not500, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.si = load i32, ptr %i.dr, align 4, !tbaa !281 ; 2 uses
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
  %i.sl = load ptr, ptr %i.a, align 8, !tbaa !409 ; 7 uses
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 -48
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !246
  store ptr %i.sn, ptr %i.f, align 16, !tbaa !294
  %i.so = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.sp = getelementptr inbounds i8, ptr %i.sl, i64 -104
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !246
  store ptr %i.sq, ptr %i.so, align 8, !tbaa !294
  %i.sr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ss = getelementptr inbounds i8, ptr %i.sl, i64 -160
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !246
  store ptr %i.st, ptr %i.sr, align 16, !tbaa !294
  %i.su = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.sv = getelementptr inbounds i8, ptr %i.sl, i64 -216
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !246
  store ptr %i.sw, ptr %i.su, align 8, !tbaa !294
  %i.sx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.sy = getelementptr inbounds i8, ptr %i.sl, i64 -272
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !246
  store ptr %i.sz, ptr %i.sx, align 16, !tbaa !294
  %i.ta = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.tb = getelementptr inbounds i8, ptr %i.sl, i64 -328
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !246
  store ptr %i.tc, ptr %i.ta, align 8, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.0128.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 4 uses
  %i.tf = load ptr, ptr %i.eh, align 8, !tbaa !151, !nonnull !72, !align !73
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !249
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %14, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0128.0.copyload, i32 noundef %.3985, ptr noundef nonnull %0, ptr noundef nonnull %i.td, ptr noundef nonnull %i.te, ptr noundef nonnull %i.f, ptr noundef nonnull %i.tf, i32 noundef %i.th) #33
  %i.ti = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not115011951211 = icmp eq i16 %i.ti, 0
  br i1 %.not115011951211, label %.loopexit, label %.lr.ph1196.lr.ph

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
  %.neg1223 = select i1 %i.eg, i32 -375, i32 -127
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
  %i.tw = phi i16 [ %i.ti, %.lr.ph1196.lr.ph ], [ %i.aiy, %.thread1054 ]
  %.5980.ph1215 = phi i32 [ %.4979, %.lr.ph1196.lr.ph ], [ %.7, %.thread1054 ] ; 24 uses
  %.4986.ph1214 = phi i32 [ %.3985, %.lr.ph1196.lr.ph ], [ %.9991, %.thread1054 ] ; 24 uses
  %.sroa.0784.0.ph1213 = phi i16 [ 0, %.lr.ph1196.lr.ph ], [ %.sroa.0784.2, %.thread1054 ] ; 11 uses
  %.4999.ph1212 = phi i32 [ %.3998, %.lr.ph1196.lr.ph ], [ %.101005, %.thread1054 ] ; 15 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1196, %.backedge
  %i.tx = phi i16 [ %i.tw, %.lr.ph1196 ], [ %i.tz, %.backedge ] ; 27 uses
  %i.ty = icmp eq i16 %i.tx, %i.cm
  br i1 %i.ty, label %.backedge, label %bb.cj

.backedge:                                        ; preds = %bb.ci, %bb.cj
  %i.tz = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not1150 = icmp eq i16 %i.tz, 0
  br i1 %.not1150, label %.loopexit.loopexit, label %bb.ci, !llvm.loop !785

bb.cj:                                            ; preds = %bb.ci
  %i.ua = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx) #33
  br i1 %i.ua, label %bb.ck, label %.backedge

bb.ck:                                            ; preds = %bb.cj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ub = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.ud = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.ud, ptr %i.uc, align 8, !tbaa !272
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 56
  store ptr null, ptr %i.ue, align 8, !tbaa !250
  %i.uf = and i16 %i.tx, 63
  %i.ug = zext nneg i16 %i.uf to i64              ; 10 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ug ; 3 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !283
  %i.uj = icmp ne i8 %i.ui, 0
  %.not.i.i590 = icmp ult i16 %i.tx, -16384       ; 2 uses
  %or.cond.not.i.i591 = and i1 %.not.i.i590, %i.uj
  %i.uk = icmp slt i16 %i.tx, -16384              ; 2 uses
  %spec.select.i.i592 = or i1 %i.uk, %or.cond.not.i.i591
  %i.ul = and i16 %i.tx, 12288
  %i.um = icmp eq i16 %i.ul, 12288                ; 2 uses
  %i.un = or i1 %i.um, %spec.select.i.i592        ; 3 uses
  %i.uo = lshr i16 %i.tx, 6
  %i.up = and i16 %i.uo, 63
  %i.uq = zext nneg i16 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !283 ; 4 uses
  %i.ut = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx) #33 ; 3 uses
  %i.uu = add nsw i32 %.4986.ph1214, -1           ; 3 uses
  %i.uv = load i8, ptr %i.b, align 1, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.uw = trunc nuw i8 %i.uv to i1
  %i.ux = sext i32 %.4986.ph1214 to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.ux
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !150
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv.next
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !150
  %i.vc = load i32, ptr %i.tk, align 8, !tbaa !258
  %15 = mul nsw i32 %i.vb, %i.uz                  ; 2 uses
  %16 = sub nsw i32 %.sroa.speculated720, %.5980.ph1215
  %i.vd = insertelement <2 x i32> poison, i32 %16, i64 0
  %i.ve = insertelement <2 x i32> %i.vd, i32 %15, i64 1
  %i.vf = mul nsw <2 x i32> %i.ve, <i32 608, i32 119>
  %i.vg = insertelement <2 x i32> <i32 poison, i32 256>, i32 %i.vc, i64 0
  %i.vh = sdiv <2 x i32> %i.vf, %i.vg             ; 2 uses
  %i.vi = extractelement <2 x i32> %i.vh, i64 1
  %i.vj = select i1 %i.uw, i32 0, i32 %i.vi
  %i.vk = add i32 %15, 1182
  %i.vl = extractelement <2 x i32> %i.vh, i64 0
  %i.vm = sub i32 %i.vk, %i.vl
  %i.vn = add i32 %i.vm, %i.vj                    ; 2 uses
  %i.vo = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 45
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !282, !range !223, !noundef !72
  %i.vr = trunc nuw i8 %i.vq to i1
  %i.vs = add nsw i32 %i.vn, 946
  %spec.select557 = select i1 %i.vr, i32 %i.vs, i32 %i.vn ; 3 uses
  %i.vt = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 40
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.tl
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !150
  %.not502 = icmp eq i32 %i.vw, 0
  %i.vx = icmp slt i32 %.4999.ph1212, -31506
  %or.cond1114 = select i1 %.not502, i1 true, i1 %i.vx
  br i1 %or.cond1114, label %.thread1063, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vy = mul nsw i32 %.4986.ph1214, %.4986.ph1214
  %i.vz = add nuw nsw i32 %i.vy, 3
  %narrow503 = sub nuw nsw i8 2, %i.uv
  %i.wa = zext nneg i8 %narrow503 to i32
  %i.wb = udiv i32 %i.vz, %i.wa
  %i.wc = zext nneg i32 %i.wb to i64
  %.not504 = icmp samesign ult i64 %indvars.iv.next, %i.wc
  br i1 %.not504, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.neg505 = sdiv i32 %spec.select557, -1024
  %i.wd = add i32 %.neg505, %i.uu                 ; 3 uses
  %or.cond30 = or i1 %i.ut, %i.un
  %i.we = zext i8 %i.us to i64                    ; 5 uses
  br i1 %or.cond30, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.wf = load i8, ptr %i.uh, align 1, !tbaa !283 ; 2 uses
  %i.wg = getelementptr inbounds nuw [1024 x i8], ptr %i.te, i64 %i.we
  %i.wh = getelementptr inbounds nuw [16 x i8], ptr %i.wg, i64 %i.ug
  %i.wi = and i8 %i.wf, 7
  %i.wj = zext nneg i8 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %i.wh, i64 %i.wj
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !296 ; 2 uses
  %i.wm = icmp sgt i32 %i.wd, 6
  %or.cond33.not = select i1 %i.ut, i1 true, i1 %i.wm
  br i1 %or.cond33.not, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wn = sext i16 %i.wl to i32
  %i.wo = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 32
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !248
  %i.wr = mul nsw i32 %i.wd, 217
  %i.ws = zext i8 %i.wf to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !150
  %i.wv = mul nsw i32 %i.wn, 131
  %i.ww = sdiv i32 %i.wv, 1024
  %i.wx = add nsw i32 %i.wr, 232
  %i.wy = add i32 %i.wx, %i.ww
  %i.wz = add i32 %i.wy, %i.wq
  %i.xa = add i32 %i.wz, %i.wu
  %.not510 = icmp sgt i32 %i.xa, %.5980.ph1215
  br i1 %.not510, label %bb.cq, label %.thread1054

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.xb = mul nsw i32 %.4986.ph1214, 166
  %i.xc = sdiv i16 %i.wl, 29
  %.sext = sext i16 %i.xc to i32
  %i.xd = add nsw i32 %i.xb, %.sext
  %.sroa.speculated685 = call i32 @llvm.smax.i32(i32 %i.xd, i32 0)
  %i.xe = icmp sgt i32 %.5980.ph1215, -1
  br i1 %i.xe, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xf = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 40
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.tl
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !150
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.we
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !150
  %.not511 = icmp eq i32 %i.xi, %i.xk
  br i1 %.not511, label %.thread1063, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.xl = sub nsw i32 0, %.sroa.speculated685
  %i.xm = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx, i32 noundef %i.xl) #33
  br i1 %i.xm, label %.thread1063, label %.thread1054, !llvm.loop !785

bb.ct:                                            ; preds = %bb.cn
  %i.xn = load ptr, ptr %i.f, align 16, !tbaa !294
  %i.xo = getelementptr inbounds nuw [128 x i8], ptr %i.xn, i64 %i.we
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %i.ug
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !175
  %i.xr = sext i16 %i.xq to i32
  %i.xs = load ptr, ptr %i.so, align 8, !tbaa !294
  %i.xt = getelementptr inbounds nuw [128 x i8], ptr %i.xs, i64 %i.we
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.xt, i64 %i.ug
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !175
  %i.xw = sext i16 %i.xv to i32
  %i.xx = add nsw i32 %i.xw, %i.xr
  %i.xy = load ptr, ptr %i.eh, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.xz = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !286
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 40
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !290
  %i.ye = and i64 %i.yd, %i.yb
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !170
  %i.yh = getelementptr inbounds nuw [2048 x i8], ptr %i.yg, i64 %i.ye
  %i.yi = getelementptr inbounds nuw [128 x i8], ptr %i.yh, i64 %i.we
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %i.ug
  %i.yk = load atomic i16, ptr %i.yj monotonic, align 2
  %i.yl = sext i16 %i.yk to i32
  %i.ym = add nsw i32 %i.xx, %i.yl                ; 2 uses
  %i.yn = mul nsw i32 %.4986.ph1214, -4083
  %i.yo = icmp slt i32 %i.ym, %i.yn
  br i1 %i.yo, label %.thread1054, label %bb.cu, !llvm.loop !785

bb.cu:                                            ; preds = %bb.ct
  %i.yp = zext i16 %i.tx to i64
  %i.yq = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %i.yp
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !147
  %i.ys = sext i16 %i.yr to i32
  %i.yt = mul nsw i32 %i.ys, 69
  %i.yu = sdiv i32 %i.yt, 32
  %i.yv = add nsw i32 %i.yu, %i.ym
  %i.yw = sdiv i32 %i.yv, 3208
  %i.yx = add nsw i32 %i.yw, %i.wd                ; 3 uses
  %i.yy = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 32
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !248 ; 2 uses
  %.not1151 = icmp eq i16 %.sroa.0784.0.ph1213, 0
  %i.zb = mul nsw i32 %i.yx, 127
  %i.zc = icmp sgt i32 %i.za, %.5980.ph1215
  %i.zd = select i1 %i.zc, i32 85, i32 0
  %i.ze = select i1 %.not1151, i32 203, i32 42
  %i.zf = add i32 %i.ze, %i.za
  %i.zg = add i32 %i.zf, %i.zd
  %i.zh = add i32 %i.zg, %i.zb                    ; 4 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yy, i64 44
  %i.zj = load i8, ptr %i.zi, align 4, !tbaa !270, !range !223, !noundef !72
  %i.zk = trunc nuw i8 %i.zj to i1
  %i.zl = icmp sgt i32 %i.yx, 12
  %or.cond36.not = select i1 %i.zk, i1 true, i1 %i.zl
  %.not507 = icmp sgt i32 %i.zh, %.5980.ph1215
  %or.cond558 = select i1 %or.cond36.not, i1 true, i1 %.not507
  br i1 %or.cond558, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not508 = icmp sgt i32 %.4999.ph1212, %i.zh
  %i.zm = icmp sgt i32 %.4999.ph1212, 31506
  %or.cond1115 = or i1 %.not508, %i.zm
  %i.zn = icmp sgt i32 %i.zh, 31506
  %or.cond1116 = or i1 %i.zn, %or.cond1115
  %spec.select1132 = select i1 %or.cond1116, i32 %.4999.ph1212, i32 %i.zh
  br label %.thread1054, !llvm.loop !785

bb.cw:                                            ; preds = %bb.cu
  %.sroa.speculated679 = call i32 @llvm.smax.i32(i32 %i.yx, i32 0) ; 2 uses
  %i.zo = mul nsw i32 %.sroa.speculated679, -25
  %i.zp = mul nsw i32 %i.zo, %.sroa.speculated679
  %i.zq = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx, i32 noundef %i.zp) #33
  br i1 %i.zq, label %.thread1063, label %.thread1054

.thread1063:                                      ; preds = %bb.cs, %bb.cr, %bb.cw, %bb.ck
  %i.zr = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.zs = icmp ne i16 %i.tx, %i.zr
  %brmerge1118 = or i1 %i.ds, %i.zs
  %.pre1266 = load ptr, ptr %i.a, align 8, !tbaa !409 ; 10 uses
  br i1 %brmerge1118, label %.thread1068, label %bb.cx

bb.cx:                                            ; preds = %.thread1063
  %i.zt = getelementptr inbounds nuw i8, ptr %.pre1266, i64 45
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !282, !range !223, !noundef !72
  %i.zv = or disjoint i8 %i.zu, 6
  %i.zw = zext nneg i8 %i.zv to i32
  %.not512 = icmp slt i32 %.4986.ph1214, %i.zw
  br i1 %.not512, label %.thread1068, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zx = load i32, ptr %i.dr, align 4, !tbaa !281 ; 2 uses
  %i.zy = add i32 %i.zx, -31507
  %spec.select.i596 = icmp ult i32 %i.zy, -63013
  br i1 %spec.select.i596, label %.thread1068, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zz = load i8, ptr %i.sc, align 8, !tbaa !289
  %i.aaa = and i8 %i.zz, 2
  %.not513 = icmp eq i8 %i.aaa, 0
  br i1 %.not513, label %.thread1068, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aab = load i32, ptr %i.tn, align 4, !tbaa !293
  %i.aac = add nsw i32 %.4986.ph1214, -3
end_hunk_2
