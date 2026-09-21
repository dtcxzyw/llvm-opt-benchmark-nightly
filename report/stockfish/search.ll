Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.ww = extractelement <8 x ptr> %wide.masked.gather1208, i64 6
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !234
  %i.wy = extractelement <8 x ptr> %wide.masked.gather1208, i64 7
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !234
  %i.xa = insertelement <8 x i16> poison, i16 %i.wl, i64 0
  %i.xb = insertelement <8 x i16> %i.xa, i16 %i.wn, i64 1
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
  %16 = sub nsw i32 %4, %.0369.ph1010
  %i.aaw = sext i32 %.4740.ph1007 to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.aaw
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !150
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !150
  %i.abb = mul nsw i32 %i.aba, %i.aay             ; 2 uses
  %17 = mul nsw i32 %16, 608
  %18 = load i32, ptr %i.se, align 8, !tbaa !258
  %19 = sdiv i32 %17, %18
  %20 = mul nsw i32 %i.abb, 119
  %21 = sdiv i32 %20, 256
  %i.abc = select i1 %i.sc, i32 0, i32 %21
  %i.abd = add i32 %i.abb, 1182
  %i.abe = sub i32 %i.abd, %19
  %i.abf = add i32 %i.abe, %i.abc                 ; 2 uses
  %i.abg = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.abh = trunc nuw i8 %i.abg to i1
  %i.abi = add nsw i32 %i.abf, 946
  %spec.select468 = select i1 %i.abh, i32 %i.abi, i32 %i.abf ; 2 uses
  %i.abj = load i8, ptr %i.aai, align 1, !tbaa !283
  %i.abk = load atomic i64, ptr %i.rt monotonic, align 8
  %i.abl = add i64 %i.abk, 1
  store atomic i64 %i.abl, ptr %i.rt monotonic, align 8
  %i.abm = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.sf) #33 ; 2 uses
  %i.abn = extractvalue { ptr, ptr } %i.abm, 0    ; 2 uses
  %i.abo = extractvalue { ptr, ptr } %i.abm, 1
  %i.abp = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.abq = load ptr, ptr %i.de, align 8, !tbaa !151, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz, ptr noundef nonnull align 8 dereferenceable(192) %8, i1 noundef zeroext %i.aau, ptr noundef nonnull align 1 dereferenceable(7) %i.abn, ptr noundef nonnull align 8 dereferenceable(416) %i.abo, ptr noundef nonnull %i.abp, ptr noundef nonnull %i.abq) #33
  %i.abr = icmp ne i8 %i.abj, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i500, %i.abr
  %spec.select.i.i.i = or i1 %i.aal, %or.cond.not.i.i.i
  %i.abs = or i1 %i.aan, %spec.select.i.i.i
  store i16 %i.sz, ptr %i.sg, align 4, !tbaa !196
  %i.abt = load i8, ptr %i.k, align 4, !tbaa !270, !range !223, !noundef !72
  %i.abu = zext nneg i8 %i.abt to i64
  %i.abv = getelementptr inbounds nuw [4194304 x i8], ptr %i.sh, i64 %i.abu
  %i.abw = zext i1 %i.abs to i64
  %i.abx = getelementptr inbounds nuw [2097152 x i8], ptr %i.abv, i64 %i.abw
  %i.aby = load i8, ptr %i.abn, align 1, !tbaa !292
  %i.abz = zext i8 %i.aby to i64                  ; 2 uses
  %i.aca = getelementptr inbounds nuw [131072 x i8], ptr %i.abx, i64 %i.abz
  %i.acb = getelementptr inbounds nuw [2048 x i8], ptr %i.aca, i64 %i.aah
  store ptr %i.acb, ptr %i.si, align 8, !tbaa !246
  %i.acc = getelementptr inbounds nuw [131072 x i8], ptr %i.sj, i64 %i.abz
  %i.acd = getelementptr inbounds nuw [2048 x i8], ptr %i.acc, i64 %i.aah
  store ptr %i.acd, ptr %i.sk, align 8, !tbaa !247
  %i.ace = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.acf = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.acg = trunc nuw i8 %i.acf to i1
  br i1 %i.acg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.ach = load i32, ptr %i.co, align 4, !tbaa !281
  %i.aci = icmp sgt i32 %i.ach, %.0369.ph1010
  %.neg439 = select i1 %i.aci, i32 -4624, i32 -3702
  %i.acj = load i32, ptr %i.sl, align 4, !tbaa !293
  %.not438 = icmp slt i32 %i.acj, %.4740.ph1007
  %.neg441 = select i1 %.not438, i32 0, i32 %.neg440
  %.neg442 = add i32 %.neg439, %spec.select468
  %i.ack = add i32 %.neg442, %.neg441
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %.1389 = phi i32 [ %i.ack, %bb.bz ], [ %spec.select468, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit ]
  %.neg443 = mul i32 %i.zj, -73
  %i.acl = load i16, ptr %i.bg, align 8           ; 2 uses
  %.not935 = icmp eq i16 %i.acl, 0                ; 2 uses
  %i.acm = select i1 %.not935, i32 4369, i32 3372
  %i.acn = select i1 %6, i32 %i.acm, i32 0
  %.reass.reass = add i32 %.neg443, %invariant.op
  %i.aco = add i32 %.reass.reass, %.1389
  %.2390 = add nsw i32 %i.aco, %i.acn             ; 2 uses
  %i.acp = add nsw i32 %.2390, 1119
  %spec.select469 = select i1 %i.dd, i32 %i.acp, i32 %.2390
  %i.acq = load i32, ptr %i.so, align 8, !tbaa !277 ; 2 uses
  %i.acr = icmp sgt i32 %i.acq, 1
  %.not444 = icmp eq i32 %i.acq, 2
  %i.acs = select i1 %.not444, i32 256, i32 1280
  %i.act = select i1 %i.acr, i32 %i.acs, i32 0
  %.4392 = add nsw i32 %spec.select469, %i.act    ; 2 uses
  %i.acu = icmp eq i16 %i.sz, %i.acl
  %i.acv = add nsw i32 %.4392, -2151
  %.5393 = select i1 %i.acu, i32 %i.acv, i32 %.4392
  br i1 %i.aao, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.acw = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 184
  %i.acy = load i8, ptr %i.acx, align 8, !tbaa !271 ; 2 uses
  %i.acz = zext i8 %i.acy to i64
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.acz
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !150
  %i.adc = mul nsw i32 %i.adb, 217
  %i.add = sdiv i32 %i.adc, 32
  %i.ade = zext i8 %i.aat to i64
  %i.adf = getelementptr inbounds nuw [1024 x i8], ptr %i.ro, i64 %i.ade
  %i.adg = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %i.aah
  %i.adh = and i8 %i.acy, 7
  %i.adi = zext nneg i8 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %i.adg, i64 %i.adi
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.adk = zext i16 %i.sz to i64
  %i.adl = getelementptr inbounds nuw [2 x i8], ptr %i.sq, i64 %i.adk
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !147
  %i.adn = sext i16 %i.adm to i32
  %i.ado = shl nsw i32 %i.adn, 1
  %i.adp = load ptr, ptr %i.a, align 16, !tbaa !294
  %i.adq = zext i8 %i.aat to i64                  ; 2 uses
  %i.adr = getelementptr inbounds nuw [128 x i8], ptr %i.adp, i64 %i.adq
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.adr, i64 %i.aah
  %i.adt = load i16, ptr %i.ads, align 2, !tbaa !175
  %i.adu = sext i16 %i.adt to i32
  %i.adv = add nsw i32 %i.ado, %i.adu
  %i.adw = load ptr, ptr %i.rb, align 8, !tbaa !294
  %i.adx = getelementptr inbounds nuw [128 x i8], ptr %i.adw, i64 %i.adq
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %i.aah
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink1155.in = phi ptr [ %i.ady, %bb.cc ], [ %i.adj, %bb.cb ]
  %.sink = phi i32 [ %i.adv, %bb.cc ], [ %i.add, %bb.cb ]
  %.sink1155 = load i16, ptr %.sink1155.in, align 2, !tbaa !196
  %i.adz = sext i16 %.sink1155 to i32
  %i.aea = add nsw i32 %.sink, %i.adz             ; 2 uses
  store i32 %i.aea, ptr %i.am, align 4, !tbaa !276
  %i.aeb = mul nsw i32 %i.aea, 425
  %.neg445 = sdiv i32 %i.aeb, -4096
  %i.aec = add i32 %.neg445, %.5393               ; 3 uses
  %i.aed = icmp sgt i32 %.4740.ph1007, 1
  %i.aee = icmp ne i64 %indvars.iv, 0             ; 3 uses
  %or.cond22 = select i1 %i.aed, i1 %i.aee, i1 false
  br i1 %or.cond22, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %.neg448 = sdiv i32 %i.aec, -1024
  %i.aef = add i32 %.neg448, %i.aav
  %i.aeg = add nuw nsw i32 %.4740.ph1007, 1
  %i.aeh = call i32 @llvm.smin.i32(i32 %i.aeg, i32 %i.aef)
  %.sroa.speculated574 = call i32 @llvm.smax.i32(i32 %i.aeh, i32 1)
  %i.aei = add nuw nsw i32 %.sroa.speculated574, 1 ; 4 uses
  %i.aej = sub nsw i32 %i.aav, %i.aei
  store i32 %i.aej, ptr %i.ss, align 4, !tbaa !275
  %i.aek = xor i32 %.0369.ph1010, -1              ; 2 uses
  %i.ael = sub nsw i32 0, %.0369.ph1010           ; 2 uses
  %i.aem = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.aek, i32 noundef %i.ael, i32 noundef %i.aei, i1 noundef zeroext true)
  %i.aen = sub nsw i32 0, %i.aem                  ; 5 uses
  store i32 0, ptr %i.ss, align 4, !tbaa !275
  %i.aeo = icmp slt i32 %.0369.ph1010, %i.aen
  br i1 %i.aeo, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  %i.aep = icmp samesign ult i32 %i.aei, %i.aav
  %i.aeq = add nsw i32 %.0746.ph1005, 50
  %i.aer = icmp slt i32 %i.aeq, %i.aen
  %i.aes = select i1 %i.aep, i1 %i.aer, i1 false
  %i.aet = add nsw i32 %.0746.ph1005, 9
  %i.aeu = icmp sgt i32 %i.aet, %i.aen
  %i.aev = zext i1 %i.aes to i32
  %.neg449 = sext i1 %i.aeu to i32
  %i.aew = add nsw i32 %i.aav, %.neg449
  %i.aex = add nuw nsw i32 %i.aew, %i.aev         ; 3 uses
  %i.aey = icmp samesign ugt i32 %i.aex, %i.aei
  br i1 %i.aey, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.aez = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.aek, i32 noundef %i.ael, i32 noundef %i.aex, i1 noundef zeroext %i.sr)
  %i.afa = sub nsw i32 0, %i.aez
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.2383 = phi i32 [ %i.afa, %bb.cg ], [ %i.aen, %bb.cf ]
  %i.afb = trunc i16 %i.sz to i8
  %i.afc = and i8 %i.afb, 63
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %2, i8 noundef zeroext %i.aat, i8 noundef zeroext %i.afc, i32 noundef 1365)
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cd
  br i1 %i.aee, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %bb.ci
  %i.afd = add nsw i32 %i.aec, 1140
  %spec.select470 = select i1 %.not935, i32 %i.afd, i32 %i.aec ; 2 uses
  %i.afe = xor i32 %.0369.ph1010, -1
  %i.aff = sub nsw i32 0, %.0369.ph1010
  %i.afg = icmp sgt i32 %spec.select470, 3957
  %.neg446 = sext i1 %i.afg to i32
  %i.afh = add i32 %i.aav, %.neg446
  %i.afi = icmp sgt i32 %spec.select470, 5654
  %i.afj = icmp sgt i32 %.4740.ph1007, 3
  %i.afk = and i1 %i.afj, %i.afi
  %.neg447 = sext i1 %i.afk to i32
  %i.afl = add i32 %i.afh, %.neg447
  %i.afm = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.sb, i32 noundef %i.afe, i32 noundef %i.aff, i32 noundef %i.afl, i1 noundef zeroext %i.sr)
  %i.afn = sub nsw i32 0, %i.afm
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ce, %bb.ch, %bb.cj
  %.0744 = phi i32 [ %i.aex, %bb.ch ], [ %i.aav, %bb.ce ], [ %i.aav, %bb.cj ]
  %.4385 = phi i32 [ %.2383, %bb.ch ], [ %i.aen, %bb.ce ], [ %i.afn, %bb.cj ] ; 2 uses
  %i.afo = icmp sgt i32 %.4385, %.0369.ph1010
  br i1 %i.afo, label %.thread, label %bb.co

.thread:                                          ; preds = %bb.ci, %bb.ck
  %i.afp = phi i1 [ false, %bb.ck ], [ true, %bb.ci ]
  %.07441110 = phi i32 [ %.0744, %bb.ck ], [ %i.aav, %bb.ci ] ; 3 uses
  store ptr %7, ptr %i.sb, align 8, !tbaa !250
  store i16 0, ptr %7, align 16, !tbaa !196
  %i.afq = load i16, ptr %i.bg, align 8, !tbaa !234
  %i.afr = icmp eq i16 %i.sz, %i.afq
  br i1 %i.afr, label %bb.cl, label %bb.cn

end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE:bb.a
  %i.x = load i8, ptr %i.w, align 4, !tbaa !270, !range !223, !noundef !72
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4194304 x i8], ptr %i.v, i64 %i.y
  %i.aa = zext i1 %i.t to i64
  %i.ab = getelementptr inbounds nuw [2097152 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.j, align 1, !tbaa !292
  %i.ad = zext i8 %i.ac to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [131072 x i8], ptr %i.ab, i64 %i.ad
  %i.af = getelementptr inbounds nuw [2048 x i8], ptr %i.ae, i64 %i.b
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !246
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.ai = getelementptr inbounds nuw [131072 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr inbounds nuw [2048 x i8], ptr %i.ai, i64 %i.b
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !247
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179, !nonnull !72, !align !73
  tail call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(17) %i.b) #33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 65, ptr %i.c, align 4, !tbaa !196
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !246
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !247
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
  %i.a = load i32, ptr %1, align 4, !tbaa !150
  %i.b = trunc i32 %i.a to i16                    ; 16 uses
  %broadcast.splatinsert = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %i.c = shufflevector <32 x i16> %broadcast.splatinsert, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.c, ptr %0, align 2, !tbaa !296
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = shufflevector <32 x i16> %broadcast.splatinsert, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.e, ptr %i.d, align 2, !tbaa !296
  %broadcast.splatinsert12 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.1 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.f = shufflevector <32 x i16> %broadcast.splatinsert12, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.f, ptr %.0.ptr10.1, align 2, !tbaa !296
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.h = shufflevector <32 x i16> %broadcast.splatinsert12, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.h, ptr %i.g, align 2, !tbaa !296
  %broadcast.splatinsert20 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.2 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.i = shufflevector <32 x i16> %broadcast.splatinsert20, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.i, ptr %.0.ptr10.2, align 2, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.k = shufflevector <32 x i16> %broadcast.splatinsert20, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.k, ptr %i.j, align 2, !tbaa !296
  %broadcast.splatinsert28 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.3 = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.l = shufflevector <32 x i16> %broadcast.splatinsert28, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.l, ptr %.0.ptr10.3, align 2, !tbaa !296
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.n = shufflevector <32 x i16> %broadcast.splatinsert28, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.n, ptr %i.m, align 2, !tbaa !296
  %broadcast.splatinsert36 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.4 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.o = shufflevector <32 x i16> %broadcast.splatinsert36, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.o, ptr %.0.ptr10.4, align 2, !tbaa !296
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.q = shufflevector <32 x i16> %broadcast.splatinsert36, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.q, ptr %i.p, align 2, !tbaa !296
  %broadcast.splatinsert44 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.5 = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.r = shufflevector <32 x i16> %broadcast.splatinsert44, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.r, ptr %.0.ptr10.5, align 2, !tbaa !296
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5632
  %i.t = shufflevector <32 x i16> %broadcast.splatinsert44, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.t, ptr %i.s, align 2, !tbaa !296
  %broadcast.splatinsert52 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.6 = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.u = shufflevector <32 x i16> %broadcast.splatinsert52, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.u, ptr %.0.ptr10.6, align 2, !tbaa !296
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6656
  %i.w = shufflevector <32 x i16> %broadcast.splatinsert52, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.w, ptr %i.v, align 2, !tbaa !296
  %broadcast.splatinsert60 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.7 = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.x = shufflevector <32 x i16> %broadcast.splatinsert60, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.x, ptr %.0.ptr10.7, align 2, !tbaa !296
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.z = shufflevector <32 x i16> %broadcast.splatinsert60, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.z, ptr %i.y, align 2, !tbaa !296
  %broadcast.splatinsert68 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.8 = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.aa = shufflevector <32 x i16> %broadcast.splatinsert68, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.aa, ptr %.0.ptr10.8, align 2, !tbaa !296
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8704
  %i.ac = shufflevector <32 x i16> %broadcast.splatinsert68, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ac, ptr %i.ab, align 2, !tbaa !296
  %broadcast.splatinsert76 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.9 = getelementptr inbounds nuw i8, ptr %0, i64 9216
  %i.ad = shufflevector <32 x i16> %broadcast.splatinsert76, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ad, ptr %.0.ptr10.9, align 2, !tbaa !296
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9728
  %i.af = shufflevector <32 x i16> %broadcast.splatinsert76, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.af, ptr %i.ae, align 2, !tbaa !296
  %broadcast.splatinsert84 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.10 = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.ag = shufflevector <32 x i16> %broadcast.splatinsert84, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ag, ptr %.0.ptr10.10, align 2, !tbaa !296
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10752
  %i.ai = shufflevector <32 x i16> %broadcast.splatinsert84, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ai, ptr %i.ah, align 2, !tbaa !296
  %broadcast.splatinsert92 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.11 = getelementptr inbounds nuw i8, ptr %0, i64 11264
  %i.aj = shufflevector <32 x i16> %broadcast.splatinsert92, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.aj, ptr %.0.ptr10.11, align 2, !tbaa !296
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11776
  %i.al = shufflevector <32 x i16> %broadcast.splatinsert92, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.al, ptr %i.ak, align 2, !tbaa !296
  %broadcast.splatinsert100 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.12 = getelementptr inbounds nuw i8, ptr %0, i64 12288
  %i.am = shufflevector <32 x i16> %broadcast.splatinsert100, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.am, ptr %.0.ptr10.12, align 2, !tbaa !296
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12800
  %i.ao = shufflevector <32 x i16> %broadcast.splatinsert100, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ao, ptr %i.an, align 2, !tbaa !296
  %broadcast.splatinsert108 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.13 = getelementptr inbounds nuw i8, ptr %0, i64 13312
  %i.ap = shufflevector <32 x i16> %broadcast.splatinsert108, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ap, ptr %.0.ptr10.13, align 2, !tbaa !296
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 13824
  %i.ar = shufflevector <32 x i16> %broadcast.splatinsert108, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ar, ptr %i.aq, align 2, !tbaa !296
  %broadcast.splatinsert116 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.14 = getelementptr inbounds nuw i8, ptr %0, i64 14336
  %i.as = shufflevector <32 x i16> %broadcast.splatinsert116, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.as, ptr %.0.ptr10.14, align 2, !tbaa !296
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 14848
  %i.au = shufflevector <32 x i16> %broadcast.splatinsert116, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.au, ptr %i.at, align 2, !tbaa !296
  %broadcast.splatinsert124 = insertelement <32 x i16> poison, i16 %i.b, i64 0 ; 2 uses
  %.0.ptr10.15 = getelementptr inbounds nuw i8, ptr %0, i64 15360
  %i.av = shufflevector <32 x i16> %broadcast.splatinsert124, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.av, ptr %.0.ptr10.15, align 2, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 15872
  %i.ax = shufflevector <32 x i16> %broadcast.splatinsert124, <32 x i16> poison, <256 x i32> zeroinitializer
  store <256 x i16> %i.ax, ptr %i.aw, align 2, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -2147482466, -2147483648) i32 @_ZNK9Stockfish6Search6Worker9reductionEbiii(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(14279296) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !150
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !150
  %5 = mul nsw i32 %i.g, %i.d                     ; 2 uses
  %i.h = mul nsw i32 %4, 608
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !258
  %6 = sdiv i32 %i.h, %i.j
  %7 = mul nsw i32 %5, 119
  %8 = sdiv i32 %7, 256
  %i.k = select i1 %1, i32 0, i32 %8
  %i.l = add i32 %5, 1182
  %i.m = sub i32 %i.l, %6
  %i.n = add i32 %i.m, %i.k
  ret i32 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK9Stockfish6Search6Worker12elapsed_timeEv(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(14279296) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.e = sdiv i64 %i.d, 1000000
  %i.f = load i64, ptr %i.c, align 8, !tbaa !261
  %i.g = sub nsw i64 %i.e, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !tbaa !55 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sroa.0.0.copyload)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.0.copyload ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load i8, ptr %i.g, align 8, !tbaa !140
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
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !142
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.n = load i8, ptr %i.m, align 4, !tbaa !177
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !150
  %i.r = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.j, ptr noundef nonnull align 64 dereferenceable(327680) %i.k, i32 noundef %i.q) #33
  ret i32 %i.r
}

declare noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 64 dereferenceable(2529288), ptr noundef nonnull align 64 dereferenceable(327680), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(14279296) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !300  ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !300
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 11419768 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !509  ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  %i.g = lshr i64 %i.f, 10
  %i.h = trunc i64 %i.g to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.h, i32 512)
  %i.i = select i1 %.not, i32 512, i32 %.sroa.speculated
  store i32 %i.i, ptr %i.a, align 8, !tbaa !300
  %i.j = load atomic i8, ptr @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.e, !prof !299

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime) #33
  %.not18 = icmp eq i32 %i.l, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.n = sdiv i64 %i.m, 1000000
  store i64 %i.n, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !260, !range !223, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 11422208
  %.val.val.i = load ptr, ptr %i.s, align 64, !tbaa !222
  %i.t = tail call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %.val.val.i) #33
  br label %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.v = sdiv i64 %i.u, 1000000
  %i.w = load i64, ptr %i.o, align 8, !tbaa !261
  %i.x = sub nsw i64 %i.v, %i.w
  br label %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"

"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit": ; preds = %bb.f, %bb.g
  %i.y = phi i64 [ %i.t, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 11419736
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !510
  %i.ab = add nsw i64 %i.aa, %i.y                 ; 2 uses
  %i.ac = load i64, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !55
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = icmp sgt i64 %i.ad, 999
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"
  store i64 %i.ab, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !55
  tail call void @_ZN9Stockfish9dbg_printEv() #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ag = load atomic i8, ptr %i.af seq_cst, align 4, !range !223, !noundef !72
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 11421108
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !241
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 11419688
  %i.am = load i64, ptr %i.al, align 8, !tbaa !55
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
  %i.au = load i8, ptr %i.at, align 8, !tbaa !259, !range !223, !noundef !72
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 11419728
  %i.ax = load i64, ptr %i.aw, align 16, !tbaa !511 ; 2 uses
  %.not19 = icmp eq i64 %i.ax, 0
  %.not20 = icmp slt i64 %i.y, %i.ax
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !509
  %.not21 = icmp eq i64 %i.ay, 0
  br i1 %.not21, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 11422208
  %i.ba = load ptr, ptr %i.az, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.bb = tail call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ba) #33
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !509
  %.not22 = icmp ult i64 %i.bb, %i.bc
  br i1 %.not22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.m, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 11422208 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store atomic i8 1, ptr %i.bf seq_cst, align 1
  %i.bg = load ptr, ptr %i.bd, align 64, !tbaa !222, !nonnull !72, !align !73
  store atomic i8 1, ptr %i.bg seq_cst, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.q, %bb.p, %bb.o, %bb.j, %bb.a
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.tl = phi i16 [ %i.tg, %.lr.ph ], [ %i.to, %.backedge1206 ] ; 5 uses
  %i.tm = icmp eq i16 %i.tl, %i.cm
  br i1 %i.tm, label %.backedge1206, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tn = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tl) #33
  br i1 %i.tn, label %bb.cs, label %.backedge1206

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
  %i.wi = phi i16 [ %i.vv, %.lr.ph1234.lr.ph ], [ %i.akn, %.thread1092 ]
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
  %15 = sub nsw i32 %.sroa.speculated819, %.11031.ph1247
  %i.xg = load i8, ptr %i.b, align 1, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.xh = trunc nuw i8 %i.xg to i1
  %i.xi = sext i32 %.41038.ph1246 to i64
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !150
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %indvars.iv.next
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !150
  %i.xn = mul nsw i32 %i.xm, %i.xk                ; 2 uses
  %16 = mul nsw i32 %15, 608
  %17 = load i32, ptr %i.vx, align 8, !tbaa !258
  %18 = sdiv i32 %16, %17
  %19 = mul nsw i32 %i.xn, 119
  %20 = sdiv i32 %19, 256
  %i.xo = select i1 %i.xh, i32 0, i32 %20
  %i.xp = add i32 %i.xn, 1182
  %i.xq = sub i32 %i.xp, %18
  %i.xr = add i32 %i.xq, %i.xo                    ; 2 uses
  %i.xs = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 45
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !282, !range !223, !noundef !72
  %i.xv = trunc nuw i8 %i.xu to i1
  %i.xw = add nsw i32 %i.xr, 946
  %spec.select655 = select i1 %i.xv, i32 %i.xw, i32 %i.xr ; 3 uses
  %i.xx = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 40
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.vy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !150
  %.not597 = icmp eq i32 %i.ya, 0
  %i.yb = icmp slt i32 %.0506.ph1249, -31506
  %or.cond1157 = select i1 %.not597, i1 true, i1 %i.yb
  br i1 %or.cond1157, label %.thread1101, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yc = mul nsw i32 %.41038.ph1246, %.41038.ph1246
  %i.yd = add nuw nsw i32 %i.yc, 3
  %narrow598 = sub nuw nsw i8 2, %i.xg
  %i.ye = zext nneg i8 %narrow598 to i32
  %i.yf = udiv i32 %i.yd, %i.ye
  %i.yg = zext nneg i32 %i.yf to i64
  %.not599 = icmp samesign ult i64 %indvars.iv.next, %i.yg
  br i1 %.not599, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.neg600 = sdiv i32 %spec.select655, -1024
  %i.yh = add i32 %.neg600, %i.xf                 ; 3 uses
  %or.cond38 = or i1 %i.xe, %i.wy
  %i.yi = zext i8 %i.xd to i64                    ; 5 uses
  br i1 %or.cond38, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.yj = load i8, ptr %i.ws, align 1, !tbaa !283 ; 2 uses
  %i.yk = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.yi
  %i.yl = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %i.wr
  %i.ym = and i8 %i.yj, 7
  %i.yn = zext nneg i8 %i.ym to i64
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.yl, i64 %i.yn
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !296 ; 2 uses
  %i.yq = icmp sgt i32 %i.yh, 6
  %or.cond41.not = select i1 %i.xe, i1 true, i1 %i.yq
  br i1 %or.cond41.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yr = sext i16 %i.yp to i32
  %i.ys = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 32
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !248
  %i.yv = mul nsw i32 %i.yh, 217
  %i.yw = zext i8 %i.yj to i64
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.yw
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !150
  %i.yz = mul nsw i32 %i.yr, 131
  %i.za = sdiv i32 %i.yz, 1024
  %i.zb = add nsw i32 %i.yv, 232
  %i.zc = add i32 %i.zb, %i.za
  %i.zd = add i32 %i.zc, %i.yu
  %i.ze = add i32 %i.zd, %i.yy
  %.not605 = icmp sgt i32 %i.ze, %.11031.ph1247
  br i1 %.not605, label %bb.di, label %.thread1092

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zf = mul nsw i32 %.41038.ph1246, 166
  %i.zg = sdiv i16 %i.yp, 29
  %.sext = sext i16 %i.zg to i32
  %i.zh = add nsw i32 %i.zf, %.sext
  %.sroa.speculated779 = call i32 @llvm.smax.i32(i32 %i.zh, i32 0)
  %i.zi = icmp sgt i32 %.11031.ph1247, -1
  br i1 %i.zi, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zj = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 40
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %i.vy
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !150
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.yi
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !150
  %.not606 = icmp eq i32 %i.zm, %i.zo
  br i1 %.not606, label %.thread1101, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.zp = sub nsw i32 0, %.sroa.speculated779
  %i.zq = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj, i32 noundef %i.zp) #33
  br i1 %i.zq, label %.thread1101, label %.thread1092, !llvm.loop !782

bb.dl:                                            ; preds = %bb.df
  %i.zr = load ptr, ptr %i.f, align 16, !tbaa !294
  %i.zs = getelementptr inbounds nuw [128 x i8], ptr %i.zr, i64 %i.yi
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.zs, i64 %i.wr
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !175
  %i.zv = sext i16 %i.zu to i32
  %i.zw = load ptr, ptr %i.vb, align 8, !tbaa !294
  %i.zx = getelementptr inbounds nuw [128 x i8], ptr %i.zw, i64 %i.yi
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %i.wr
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !175
  %i.aaa = sext i16 %i.zz to i32
  %i.aab = add nsw i32 %i.aaa, %i.zv
  %i.aac = load ptr, ptr %i.ej, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.aad = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !286
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 40
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !290
  %i.aai = and i64 %i.aah, %i.aaf
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !170
  %i.aal = getelementptr inbounds nuw [2048 x i8], ptr %i.aak, i64 %i.aai
  %i.aam = getelementptr inbounds nuw [128 x i8], ptr %i.aal, i64 %i.yi
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %i.aam, i64 %i.wr
  %i.aao = load atomic i16, ptr %i.aan monotonic, align 2
  %i.aap = sext i16 %i.aao to i32
  %i.aaq = add nsw i32 %i.aab, %i.aap             ; 2 uses
  %i.aar = mul nsw i32 %.41038.ph1246, -4083
  %i.aas = icmp slt i32 %i.aaq, %i.aar
  br i1 %i.aas, label %.thread1092, label %bb.dm, !llvm.loop !782

bb.dm:                                            ; preds = %bb.dl
  %i.aat = zext i16 %i.wj to i64
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.vz, i64 %i.aat
  %i.aav = load i16, ptr %i.aau, align 2, !tbaa !147
  %i.aaw = sext i16 %i.aav to i32
  %i.aax = mul nsw i32 %i.aaw, 69
  %i.aay = sdiv i32 %i.aax, 32
  %i.aaz = add nsw i32 %i.aay, %i.aaq
  %i.aba = sdiv i32 %i.aaz, 3208
  %i.abb = add nsw i32 %i.aba, %i.yh              ; 3 uses
  %i.abc = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !248 ; 2 uses
  %.not1190 = icmp eq i16 %.sroa.0827.0.ph1245, 0
  %i.abf = mul nsw i32 %i.abb, 127
  %i.abg = icmp sgt i32 %i.abe, %.11031.ph1247
  %i.abh = select i1 %i.abg, i32 85, i32 0
  %i.abi = select i1 %.not1190, i32 203, i32 42
  %i.abj = add i32 %i.abi, %i.abe
  %i.abk = add i32 %i.abj, %i.abh
  %i.abl = add i32 %i.abk, %i.abf                 ; 4 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abc, i64 44
  %i.abn = load i8, ptr %i.abm, align 4, !tbaa !270, !range !223, !noundef !72
  %i.abo = trunc nuw i8 %i.abn to i1
  %i.abp = icmp sgt i32 %i.abb, 12
  %or.cond44.not = select i1 %i.abo, i1 true, i1 %i.abp
  %.not602 = icmp sgt i32 %i.abl, %.11031.ph1247
  %or.cond657 = select i1 %or.cond44.not, i1 true, i1 %.not602
  br i1 %or.cond657, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not603 = icmp sgt i32 %.0506.ph1249, %i.abl
  %i.abq = icmp sgt i32 %.0506.ph1249, 31506
  %or.cond1158 = or i1 %.not603, %i.abq
  br i1 %or.cond1158, label %.thread1092, label %bb.do, !llvm.loop !782

bb.do:                                            ; preds = %bb.dn
  %i.abr = icmp sgt i32 %i.abl, 31506
  %spec.select658 = select i1 %i.abr, i32 %.0506.ph1249, i32 %i.abl
  br label %.thread1092, !llvm.loop !782

bb.dp:                                            ; preds = %bb.dm
  %.sroa.speculated773 = call i32 @llvm.smax.i32(i32 %i.abb, i32 0) ; 2 uses
  %i.abs = mul nsw i32 %.sroa.speculated773, -25
  %i.abt = mul nsw i32 %i.abs, %.sroa.speculated773
  %i.abu = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj, i32 noundef %i.abt) #33
  br i1 %i.abu, label %.thread1101, label %.thread1092

.thread1101:                                      ; preds = %bb.dk, %bb.dj, %bb.dp, %bb.dc
  %i.abv = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.abw = icmp ne i16 %i.wj, %i.abv
  %brmerge1160 = or i1 %i.eh, %i.abw
  %.pre1294 = load ptr, ptr %i.a, align 8, !tbaa !409 ; 10 uses
  br i1 %brmerge1160, label %.thread1106, label %bb.dq

bb.dq:                                            ; preds = %.thread1101
  %i.abx = getelementptr inbounds nuw i8, ptr %.pre1294, i64 45
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !282, !range !223, !noundef !72 ; 2 uses
  %i.abz = or disjoint i8 %i.aby, 6
  %i.aca = zext nneg i8 %i.abz to i32
  %.not607 = icmp slt i32 %.41038.ph1246, %i.aca
  br i1 %.not607, label %.thread1106, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.acb = load i32, ptr %i.di, align 4, !tbaa !281 ; 2 uses
  %i.acc = add i32 %i.acb, -31507
  %spec.select.i697 = icmp ult i32 %i.acc, -63013
  br i1 %spec.select.i697, label %.thread1106, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.acd = load i8, ptr %i.up, align 8, !tbaa !289
  %i.ace = and i8 %i.acd, 2
  %.not608 = icmp eq i8 %i.ace, 0
  br i1 %.not608, label %.thread1106, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.acf = load i32, ptr %i.wa, align 4, !tbaa !293
  %i.acg = add nsw i32 %.41038.ph1246, -3
end_hunk_2
begin_hunk_3_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a

bb.bz:                                            ; preds = %bb.by
  %i.ra = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qy) #33
  br i1 %i.ra, label %bb.ca, label %.backedge1168

.backedge1168:                                    ; preds = %bb.cc, %bb.cd, %bb.by, %bb.bz
  %i.rb = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not1145 = icmp eq i16 %i.rb, 0
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
  %i.tw = phi i16 [ %i.ti, %.lr.ph1196.lr.ph ], [ %i.air, %.thread1054 ]
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
  %15 = sub nsw i32 %.sroa.speculated720, %.5980.ph1215
  %i.uv = load i8, ptr %i.b, align 1, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.uw = trunc nuw i8 %i.uv to i1
  %i.ux = sext i32 %.4986.ph1214 to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.ux
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !150
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv.next
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !150
  %i.vc = mul nsw i32 %i.vb, %i.uz                ; 2 uses
  %16 = mul nsw i32 %15, 608
  %17 = load i32, ptr %i.tk, align 8, !tbaa !258
  %18 = sdiv i32 %16, %17
  %19 = mul nsw i32 %i.vc, 119
  %20 = sdiv i32 %19, 256
  %i.vd = select i1 %i.uw, i32 0, i32 %20
  %i.ve = add i32 %i.vc, 1182
  %i.vf = sub i32 %i.ve, %18
  %i.vg = add i32 %i.vf, %i.vd                    ; 2 uses
  %i.vh = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 45
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !282, !range !223, !noundef !72
  %i.vk = trunc nuw i8 %i.vj to i1
  %i.vl = add nsw i32 %i.vg, 946
  %spec.select557 = select i1 %i.vk, i32 %i.vl, i32 %i.vg ; 3 uses
  %i.vm = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 40
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.tl
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !150
  %.not502 = icmp eq i32 %i.vp, 0
  %i.vq = icmp slt i32 %.4999.ph1212, -31506
  %or.cond1114 = select i1 %.not502, i1 true, i1 %i.vq
  br i1 %or.cond1114, label %.thread1063, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vr = mul nsw i32 %.4986.ph1214, %.4986.ph1214
  %i.vs = add nuw nsw i32 %i.vr, 3
  %narrow503 = sub nuw nsw i8 2, %i.uv
  %i.vt = zext nneg i8 %narrow503 to i32
  %i.vu = udiv i32 %i.vs, %i.vt
  %i.vv = zext nneg i32 %i.vu to i64
  %.not504 = icmp samesign ult i64 %indvars.iv.next, %i.vv
  br i1 %.not504, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.neg505 = sdiv i32 %spec.select557, -1024
  %i.vw = add i32 %.neg505, %i.uu                 ; 3 uses
  %or.cond30 = or i1 %i.ut, %i.un
  %i.vx = zext i8 %i.us to i64                    ; 5 uses
  br i1 %or.cond30, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.vy = load i8, ptr %i.uh, align 1, !tbaa !283 ; 2 uses
  %i.vz = getelementptr inbounds nuw [1024 x i8], ptr %i.te, i64 %i.vx
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %i.vz, i64 %i.ug
  %i.wb = and i8 %i.vy, 7
  %i.wc = zext nneg i8 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.wa, i64 %i.wc
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !296 ; 2 uses
  %i.wf = icmp sgt i32 %i.vw, 6
  %or.cond33.not = select i1 %i.ut, i1 true, i1 %i.wf
  br i1 %or.cond33.not, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wg = sext i16 %i.we to i32
  %i.wh = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !248
  %i.wk = mul nsw i32 %i.vw, 217
  %i.wl = zext i8 %i.vy to i64
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !150
  %i.wo = mul nsw i32 %i.wg, 131
  %i.wp = sdiv i32 %i.wo, 1024
  %i.wq = add nsw i32 %i.wk, 232
  %i.wr = add i32 %i.wq, %i.wp
  %i.ws = add i32 %i.wr, %i.wj
  %i.wt = add i32 %i.ws, %i.wn
  %.not510 = icmp sgt i32 %i.wt, %.5980.ph1215
  br i1 %.not510, label %bb.cq, label %.thread1054

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.wu = mul nsw i32 %.4986.ph1214, 166
  %i.wv = sdiv i16 %i.we, 29
  %.sext = sext i16 %i.wv to i32
  %i.ww = add nsw i32 %i.wu, %.sext
  %.sroa.speculated685 = call i32 @llvm.smax.i32(i32 %i.ww, i32 0)
  %i.wx = icmp sgt i32 %.5980.ph1215, -1
  br i1 %i.wx, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wy = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 40
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %i.tl
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !150
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.vx
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !150
  %.not511 = icmp eq i32 %i.xb, %i.xd
  br i1 %.not511, label %.thread1063, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.xe = sub nsw i32 0, %.sroa.speculated685
  %i.xf = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx, i32 noundef %i.xe) #33
  br i1 %i.xf, label %.thread1063, label %.thread1054, !llvm.loop !785

bb.ct:                                            ; preds = %bb.cn
  %i.xg = load ptr, ptr %i.f, align 16, !tbaa !294
  %i.xh = getelementptr inbounds nuw [128 x i8], ptr %i.xg, i64 %i.vx
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %i.ug
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !175
  %i.xk = sext i16 %i.xj to i32
  %i.xl = load ptr, ptr %i.so, align 8, !tbaa !294
  %i.xm = getelementptr inbounds nuw [128 x i8], ptr %i.xl, i64 %i.vx
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %i.ug
  %i.xo = load i16, ptr %i.xn, align 2, !tbaa !175
  %i.xp = sext i16 %i.xo to i32
  %i.xq = add nsw i32 %i.xp, %i.xk
  %i.xr = load ptr, ptr %i.eh, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.xs = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !286
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xr, i64 40
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !290
  %i.xx = and i64 %i.xw, %i.xu
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !170
  %i.ya = getelementptr inbounds nuw [2048 x i8], ptr %i.xz, i64 %i.xx
  %i.yb = getelementptr inbounds nuw [128 x i8], ptr %i.ya, i64 %i.vx
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %i.yb, i64 %i.ug
  %i.yd = load atomic i16, ptr %i.yc monotonic, align 2
  %i.ye = sext i16 %i.yd to i32
  %i.yf = add nsw i32 %i.xq, %i.ye                ; 2 uses
  %i.yg = mul nsw i32 %.4986.ph1214, -4083
  %i.yh = icmp slt i32 %i.yf, %i.yg
  br i1 %i.yh, label %.thread1054, label %bb.cu, !llvm.loop !785

bb.cu:                                            ; preds = %bb.ct
  %i.yi = zext i16 %i.tx to i64
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %i.yi
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !147
  %i.yl = sext i16 %i.yk to i32
  %i.ym = mul nsw i32 %i.yl, 69
  %i.yn = sdiv i32 %i.ym, 32
  %i.yo = add nsw i32 %i.yn, %i.yf
  %i.yp = sdiv i32 %i.yo, 3208
  %i.yq = add nsw i32 %i.yp, %i.vw                ; 3 uses
  %i.yr = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 32
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !248 ; 2 uses
  %.not1151 = icmp eq i16 %.sroa.0784.0.ph1213, 0
  %i.yu = mul nsw i32 %i.yq, 127
  %i.yv = icmp sgt i32 %i.yt, %.5980.ph1215
  %i.yw = select i1 %i.yv, i32 85, i32 0
  %i.yx = select i1 %.not1151, i32 203, i32 42
  %i.yy = add i32 %i.yx, %i.yt
  %i.yz = add i32 %i.yy, %i.yw
  %i.za = add i32 %i.yz, %i.yu                    ; 4 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yr, i64 44
  %i.zc = load i8, ptr %i.zb, align 4, !tbaa !270, !range !223, !noundef !72
  %i.zd = trunc nuw i8 %i.zc to i1
  %i.ze = icmp sgt i32 %i.yq, 12
  %or.cond36.not = select i1 %i.zd, i1 true, i1 %i.ze
  %.not507 = icmp sgt i32 %i.za, %.5980.ph1215
  %or.cond558 = select i1 %or.cond36.not, i1 true, i1 %.not507
  br i1 %or.cond558, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not508 = icmp sgt i32 %.4999.ph1212, %i.za
  %i.zf = icmp sgt i32 %.4999.ph1212, 31506
  %or.cond1115 = or i1 %.not508, %i.zf
  %i.zg = icmp sgt i32 %i.za, 31506
  %or.cond1116 = or i1 %i.zg, %or.cond1115
  %spec.select1132 = select i1 %or.cond1116, i32 %.4999.ph1212, i32 %i.za
  br label %.thread1054, !llvm.loop !785

bb.cw:                                            ; preds = %bb.cu
  %.sroa.speculated679 = call i32 @llvm.smax.i32(i32 %i.yq, i32 0) ; 2 uses
  %i.zh = mul nsw i32 %.sroa.speculated679, -25
  %i.zi = mul nsw i32 %i.zh, %.sroa.speculated679
  %i.zj = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx, i32 noundef %i.zi) #33
  br i1 %i.zj, label %.thread1063, label %.thread1054

.thread1063:                                      ; preds = %bb.cs, %bb.cr, %bb.cw, %bb.ck
  %i.zk = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.zl = icmp ne i16 %i.tx, %i.zk
  %brmerge1118 = or i1 %i.ds, %i.zl
  %.pre1266 = load ptr, ptr %i.a, align 8, !tbaa !409 ; 10 uses
  br i1 %brmerge1118, label %.thread1068, label %bb.cx

bb.cx:                                            ; preds = %.thread1063
  %i.zm = getelementptr inbounds nuw i8, ptr %.pre1266, i64 45
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !282, !range !223, !noundef !72
  %i.zo = or disjoint i8 %i.zn, 6
  %i.zp = zext nneg i8 %i.zo to i32
  %.not512 = icmp slt i32 %.4986.ph1214, %i.zp
  br i1 %.not512, label %.thread1068, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zq = load i32, ptr %i.dr, align 4, !tbaa !281 ; 2 uses
  %i.zr = add i32 %i.zq, -31507
  %spec.select.i596 = icmp ult i32 %i.zr, -63013
  br i1 %spec.select.i596, label %.thread1068, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zs = load i8, ptr %i.sc, align 8, !tbaa !289
  %i.zt = and i8 %i.zs, 2
  %.not513 = icmp eq i8 %i.zt, 0
  br i1 %.not513, label %.thread1068, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zu = load i32, ptr %i.tn, align 4, !tbaa !293
  %i.zv = add nsw i32 %.4986.ph1214, -3
  %.not514 = icmp slt i32 %i.zu, %i.zv
  br i1 %.not514, label %.thread1068, label %bb.db
end_hunk_3
