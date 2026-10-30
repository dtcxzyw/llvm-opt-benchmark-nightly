Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/movepick?download=true
inline.NumInlined: 194
inline.NumDeleted: 109
begin_hunk_0_@_ZN9Stockfish10MovePicker9next_moveEv:bb.a
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !83
  %i.ad = sext i16 %i.ac to i32
  %i.ae = zext i8 %i.v to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !56
  %i.ah = mul nsw i32 %i.ag, 7
  %i.ai = add nsw i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %.025.i.ptr, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.02224.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.k
  br i1 %.not.i, label %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, label %bb.e

_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit: ; preds = %bb.e
  %.ptr87.le = getelementptr inbounds nuw i8, ptr %0, i64 %.025.i.add ; 3 uses
  store ptr %.ptr87.le, ptr %i.e, align 8, !tbaa !80
  store ptr %.ptr87.le, ptr %i.f, align 8, !tbaa !81
  %i.al = icmp samesign ugt i64 %.025.i.idx, 116
  br i1 %i.al, label %.lr.ph28.i, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit

.lr.ph28.i:                                       ; preds = %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, %.critedge.i
  %.01727.i = phi ptr [ %.017.i, %.critedge.i ], [ %.01724.i, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit ] ; 3 uses
  %.01825.i.idx = phi i64 [ %.01825.i.add, %.critedge.i ], [ 116, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit ]
  %i.am = load i64, ptr %.01727.i, align 4        ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.am, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %.01825.i.add = add nuw nsw i64 %.01825.i.idx, 8 ; 3 uses
  %.ptr90 = getelementptr inbounds nuw i8, ptr %0, i64 %.01825.i.add
  %i.an = load i64, ptr %.ptr90, align 4
  store i64 %i.an, ptr %.01727.i, align 4
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph28.i, %bb.f
  %.021.i.idx = phi i64 [ %.021.i.add, %bb.f ], [ %.01825.i.add, %.lr.ph28.i ] ; 2 uses
  %.021.i.ptr = getelementptr inbounds i8, ptr %0, i64 %.021.i.idx ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.021.i.ptr, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.aq = icmp slt i32 %i.ap, %.sroa.4.0.extract.trunc.i
  br i1 %i.aq, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i9
  %.021.i.add = add nsw i64 %.021.i.idx, -8       ; 3 uses
  %.ptr89 = getelementptr inbounds i8, ptr %0, i64 %.021.i.add
  %i.ar = load i64, ptr %.ptr89, align 4
  store i64 %i.ar, ptr %.021.i.ptr, align 4
  %.not19.i = icmp eq i64 %.021.i.add, 116
  br i1 %.not19.i, label %.critedge.i, label %.lr.ph.i9, !llvm.loop !71

.critedge.i:                                      ; preds = %bb.f, %.lr.ph.i9
  %.0.lcssa.i10 = phi ptr [ %.021.i.ptr, %.lr.ph.i9 ], [ %.ptr88.ptr, %bb.f ]
  store i64 %i.am, ptr %.0.lcssa.i10, align 4
  %.017.i = getelementptr inbounds nuw i8, ptr %.01727.i, i64 8 ; 2 uses
  %i.as = icmp ult ptr %.017.i, %.ptr87.le
  br i1 %i.as, label %.lr.ph28.i, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit, !llvm.loop !72

_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit: ; preds = %.critedge.i, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE0EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit
  %i.at = load i32, ptr %i.a, align 8, !tbaa !48
  %i.au = add nsw i32 %i.at, 1                    ; 2 uses
  store i32 %i.au, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.b

bb.g:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !81  ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i11, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread"

.lr.ph.i11:                                       ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i11
  %i.az = phi ptr [ %i.aw, %.lr.ph.i11 ], [ %i.bn, %bb.j ]
  %i.ba = phi ptr [ %i.av, %.lr.ph.i11 ], [ %i.bp, %bb.j ] ; 3 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !55 ; 2 uses
  %i.bc = load i16, ptr %i.ay, align 8, !tbaa !55
  %.not.i12 = icmp eq i16 %i.bb, %i.bc
  br i1 %.not.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %0, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !58
  %i.bg = sdiv i32 %i.bf, -18
  %i.bh = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.bd, i16 %i.bb, i32 noundef %i.bg) #6
  br i1 %i.bh, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit", label %"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i"

"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i": ; preds = %bb.i
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !79  ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !79
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.bl = load i64, ptr %i.bi, align 4
  %i.bm = load i64, ptr %i.bk, align 4
  store i64 %i.bm, ptr %i.bi, align 4
  store i64 %i.bl, ptr %i.bk, align 4
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !54
  %.pre2.i = load ptr, ptr %i.f, align 8, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i", %bb.h
  %i.bn = phi ptr [ %.pre2.i, %"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i" ], [ %i.az, %bb.h ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i, %"_ZZN9Stockfish10MovePicker9next_moveEvENK3$_0clEv.exit.i" ], [ %i.ba, %bb.h ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !54
  %i.bq = icmp ult ptr %i.bp, %i.bn
  br i1 %i.bq, label %bb.h, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread", !llvm.loop !73

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit": ; preds = %bb.i
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bs, ptr %i.c, align 8, !tbaa !54
  %.sroa.0.0.copyload.i = load i16, ptr %i.br, align 4, !tbaa !30 ; 2 uses
  %.not = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread", label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread": ; preds = %bb.j, %bb.g, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit"
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !48
  %i.bu = add nsw i32 %i.bt, 1                    ; 2 uses
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread"
  %i.bv = phi i32 [ %i.bu, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_0EENS_4MoveET_.exit.thread" ], [ %i.g, %bb.b ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !33, !range !84, !noundef !52
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.bz = load ptr, ptr %0, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.cb = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %i.bz, ptr noundef nonnull align 8 dereferenceable(520) %2) #6
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !62
  %i.cc = call noundef ptr @_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE1EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE(ptr noundef nonnull align 8 dereferenceable(2164) %0, ptr noundef nonnull align 8 dereferenceable(520) %2) ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !85
  store ptr %i.cc, ptr %i.f, align 8, !tbaa !81
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !54  ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !31
  %i.ch = mul nsw i32 %i.cg, -3560
  %.01724.i13 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ci = icmp ult ptr %.01724.i13, %i.cc
  br i1 %i.ci, label %.lr.ph28.i14, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28

.lr.ph28.i14:                                     ; preds = %bb.k, %bb.n
  %.01727.i15 = phi ptr [ %.017.i26, %bb.n ], [ %.01724.i13, %bb.k ] ; 4 uses
  %.pn26.i16 = phi ptr [ %.01727.i15, %bb.n ], [ %i.ce, %bb.k ]
  %.01825.i17 = phi ptr [ %.1.i, %bb.n ], [ %i.ce, %bb.k ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn26.i16, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !58
  %.not.i18 = icmp slt i32 %i.ck, %i.ch
  br i1 %.not.i18, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph28.i14
  %i.cl = load i64, ptr %.01727.i15, align 4      ; 2 uses
  %.sroa.4.0.extract.shift.i19 = lshr i64 %i.cl, 32
  %.sroa.4.0.extract.trunc.i20 = trunc nuw i64 %.sroa.4.0.extract.shift.i19 to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.01825.i17, i64 8 ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 4
  store i64 %i.cn, ptr %.01727.i15, align 4
  %.not1920.i21 = icmp eq ptr %i.cm, %i.ce
  br i1 %.not1920.i21, label %.critedge.i24, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.l, %bb.m
  %.021.i23 = phi ptr [ %i.cr, %bb.m ], [ %i.cm, %bb.l ] ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %.021.i23, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !58
  %i.cq = icmp slt i32 %i.cp, %.sroa.4.0.extract.trunc.i20
  br i1 %i.cq, label %bb.m, label %.critedge.i24

bb.m:                                             ; preds = %.lr.ph.i22
  %i.cr = getelementptr inbounds i8, ptr %.021.i23, i64 -8 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 4
  store i64 %i.cs, ptr %.021.i23, align 4
  %.not19.i27 = icmp eq ptr %i.cr, %i.ce
  br i1 %.not19.i27, label %.critedge.i24, label %.lr.ph.i22, !llvm.loop !71

.critedge.i24:                                    ; preds = %bb.m, %.lr.ph.i22, %bb.l
  %.0.lcssa.i25 = phi ptr [ %i.ce, %bb.l ], [ %.021.i23, %.lr.ph.i22 ], [ %i.ce, %bb.m ]
  store i64 %i.cl, ptr %.0.lcssa.i25, align 4
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i24, %.lr.ph28.i14
  %.1.i = phi ptr [ %i.cm, %.critedge.i24 ], [ %.01825.i17, %.lr.ph28.i14 ]
  %.017.i26 = getelementptr inbounds nuw i8, ptr %.01727.i15, i64 8 ; 2 uses
  %i.ct = icmp ult ptr %.017.i26, %i.cc
  br i1 %i.ct, label %.lr.ph28.i14, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28, !llvm.loop !72

_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28: ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %.pre161 = load i32, ptr %i.a, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28, %.loopexit
  %i.cu = phi i32 [ %.pre161, %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit28 ], [ %i.bv, %.loopexit ] ; 3 uses
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.a, align 8, !tbaa !48
  %4 = add nsw i32 %i.cu, 2
  %i.cw = add nsw i32 %i.cu, 3
  br label %.loopexit94

.loopexit94:                                      ; preds = %bb.b, %bb.o
  %5 = phi i32 [ %i.cw, %bb.o ], [ 6, %bb.b ]
  %i.cx = phi i32 [ %4, %bb.o ], [ 5, %bb.b ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !33, !range !84, !noundef !52
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.loopexit94
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !81  ; 2 uses
  %.promoted.i = load ptr, ptr %i.c, align 8, !tbaa !54 ; 2 uses
  %i.dc = icmp ult ptr %.promoted.i, %i.db
  br i1 %i.dc, label %.lr.ph.i30, label %.critedge

.lr.ph.i30:                                       ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i30
  %.val.val.i = phi ptr [ %.promoted.i, %.lr.ph.i30 ], [ %i.di, %bb.s ] ; 4 uses
  %i.df = load i16, ptr %.val.val.i, align 2, !tbaa !55 ; 3 uses
  %.not.i31 = icmp eq i16 %i.df, %i.de
  br i1 %.not.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr i8, ptr %.val.val.i, i64 4
  %.val.val.val.i = load i32, ptr %i.dg, align 4, !tbaa !58
  %i.dh = icmp sgt i32 %.val.val.val.i, -14000
  br i1 %i.dh, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_1EENS_4MoveET_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8 ; 3 uses
  store ptr %i.di, ptr %i.c, align 8, !tbaa !54
  %i.dj = icmp ult ptr %i.di, %i.db
  br i1 %i.dj, label %bb.q, label %.critedge, !llvm.loop !74

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_1EENS_4MoveET_.exit": ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  store ptr %i.dk, ptr %i.c, align 8, !tbaa !54
  %.not85 = icmp eq i16 %i.df, 0
  br i1 %.not85, label %.critedge, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

.critedge:                                        ; preds = %bb.s, %bb.p, %.loopexit94, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_1EENS_4MoveET_.exit"
  store ptr %.ptr88.ptr, ptr %i.c, align 8, !tbaa !54
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  store ptr %i.dl, ptr %i.f, align 8, !tbaa !81
  store i32 %i.cx, ptr %i.a, align 8, !tbaa !48
  br label %.loopexit95

.loopexit95.loopexit:                             ; preds = %bb.b
  %.pre162 = load ptr, ptr %i.f, align 8, !tbaa !81
  %.promoted.i32.pre = load ptr, ptr %i.c, align 8, !tbaa !54
  br label %.loopexit95

.loopexit95:                                      ; preds = %.loopexit95.loopexit, %.critedge
  %i.dm = phi i32 [ 6, %.loopexit95.loopexit ], [ %5, %.critedge ]
  %.promoted.i32 = phi ptr [ %.promoted.i32.pre, %.loopexit95.loopexit ], [ %.ptr88.ptr, %.critedge ] ; 2 uses
  %i.dn = phi ptr [ %.pre162, %.loopexit95.loopexit ], [ %i.dl, %.critedge ] ; 2 uses
  %i.do = icmp ult ptr %.promoted.i32, %i.dn
  br i1 %i.do, label %.lr.ph.i34, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread"

.lr.ph.i34:                                       ; preds = %.loopexit95
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dq = load i16, ptr %i.dp, align 8, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i34
  %i.dr = phi ptr [ %.promoted.i32, %.lr.ph.i34 ], [ %i.dt, %bb.u ] ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !55 ; 3 uses
  %.not.i35 = icmp eq i16 %i.ds, %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  br i1 %.not.i35, label %bb.u, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit"

bb.u:                                             ; preds = %bb.t
  %i.du = icmp ult ptr %i.dt, %i.dn
  br i1 %i.du, label %bb.t, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread.loopexit", !llvm.loop !75

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit": ; preds = %bb.t
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !54
  %.not86 = icmp eq i16 %i.ds, 0
  br i1 %.not86, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread", label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread.loopexit": ; preds = %bb.u
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !54
  br label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread"

"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread": ; preds = %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread.loopexit", %.loopexit95, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit"
  %i.dv = load <2 x ptr>, ptr %i.e, align 8, !tbaa !86
  store <2 x ptr> %i.dv, ptr %i.c, align 8, !tbaa !86
  store i32 %i.dm, ptr %i.a, align 8, !tbaa !48
  br label %.loopexit96

.loopexit96:                                      ; preds = %bb.b, %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_2EENS_4MoveET_.exit.thread"
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !33, !range !84, !noundef !52
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit", label %bb.v

bb.v:                                             ; preds = %.loopexit96
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !81  ; 2 uses
  %.promoted.i36 = load ptr, ptr %i.c, align 8, !tbaa !54 ; 2 uses
  %i.ea = icmp ult ptr %.promoted.i36, %i.dz
  br i1 %i.ea, label %.lr.ph.i38, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

.lr.ph.i38:                                       ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !55
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i38
  %.val.val.i40 = phi ptr [ %.promoted.i36, %.lr.ph.i38 ], [ %i.eh, %bb.z ] ; 4 uses
  %i.ed = load i16, ptr %.val.val.i40, align 2, !tbaa !55 ; 2 uses
  %.not.i39 = icmp eq i16 %i.ed, %i.ec
  br i1 %.not.i39, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr i8, ptr %.val.val.i40, i64 4
  %.val.val.val.i41 = load i32, ptr %i.ee, align 4, !tbaa !58
  %i.ef = icmp slt i32 %.val.val.val.i41, -13999
  br i1 %i.ef, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.val.i40, i64 8
  store ptr %i.eg, ptr %i.c, align 8, !tbaa !54
  br label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit"

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.val.i40, i64 8 ; 3 uses
  store ptr %i.eh, ptr %i.c, align 8, !tbaa !54
  %i.ei = icmp ult ptr %i.eh, %i.dz
  br i1 %i.ei, label %bb.w, label %"_ZN9Stockfish10MovePicker6selectIZNS0_9next_moveEvE3$_3EENS_4MoveET_.exit", !llvm.loop !76

bb.aa:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.ej = load ptr, ptr %0, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.ek = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %i.ej, ptr noundef nonnull align 8 dereferenceable(520) %3) #6 ; 2 uses
  store ptr %.ptr88.ptr, ptr %i.c, align 8, !tbaa !54
  %i.el = load ptr, ptr %0, align 8, !tbaa !51, !nonnull !52, !align !53 ; 3 uses
  %.not27.i = icmp eq ptr %3, %i.ek
  br i1 %.not27.i, label %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread, label %.lr.ph.i42

_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit.thread: ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.ptr88.ptr, ptr %i.em, align 8, !tbaa !85
  store ptr %.ptr88.ptr, ptr %i.f, align 8, !tbaa !81
  br label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit61

.lr.ph.i42:                                       ; preds = %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 620
  %i.eo = load i8, ptr %i.en, align 4, !tbaa !63
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = zext i8 %i.eo to i64
  %i.es = getelementptr inbounds nuw [131072 x i8], ptr %i.eq, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load ptr, ptr %i.et, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i42
  %.029.i.idx = phi i64 [ 116, %.lr.ph.i42 ], [ %.029.i.add, %bb.ae ] ; 3 uses
  %.02628.i = phi ptr [ %3, %.lr.ph.i42 ], [ %i.fz, %bb.ae ] ; 2 uses
  %.029.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.029.i.idx ; 2 uses
  %.sroa.014.0.copyload.i = load i16, ptr %.02628.i, align 2, !tbaa !30 ; 7 uses
  %.029.i.add = add nuw nsw i64 %.029.i.idx, 8    ; 2 uses
  store i16 %.sroa.014.0.copyload.i, ptr %.029.i.ptr, align 4, !tbaa !55
  %i.ev = and i16 %.sroa.014.0.copyload.i, 63
  %i.ew = zext nneg i16 %i.ev to i64              ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !50  ; 2 uses
  %i.ez = icmp ne i8 %i.ey, 0
  %.not.i.i.i = icmp ult i16 %.sroa.014.0.copyload.i, -16384
  %or.cond.not.i.i.i = and i1 %.not.i.i.i, %i.ez
  %i.fa = icmp slt i16 %.sroa.014.0.copyload.i, -16384
  %spec.select.i.i.i = or i1 %i.fa, %or.cond.not.i.i.i
  %i.fb = and i16 %.sroa.014.0.copyload.i, 12288
  %i.fc = icmp eq i16 %i.fb, 12288
  %i.fd = or i1 %i.fc, %spec.select.i.i.i
  br i1 %i.fd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fe = zext i8 %i.ey to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !56
  %i.fh = add nsw i32 %i.fg, 268435456
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fi = lshr i16 %.sroa.014.0.copyload.i, 6
  %i.fj = and i16 %i.fi, 63
  %i.fk = zext nneg i16 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !50
  %i.fn = zext i16 %.sroa.014.0.copyload.i to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !65
  %i.fq = sext i16 %i.fp to i32
  %i.fr = load ptr, ptr %i.eu, align 8, !tbaa !67
  %i.fs = zext i8 %i.fm to i64
  %i.ft = getelementptr inbounds nuw [128 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.ew
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !69
  %i.fw = sext i16 %i.fv to i32
  %i.fx = add nsw i32 %i.fw, %i.fq
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink.i = phi i32 [ %i.fh, %bb.ac ], [ %i.fx, %bb.ad ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.029.i.ptr, i64 4
  store i32 %.sink.i, ptr %i.fy, align 4, !tbaa !58
  %i.fz = getelementptr inbounds nuw i8, ptr %.02628.i, i64 2 ; 2 uses
  %.not.i43 = icmp eq ptr %i.fz, %i.ek
  br i1 %.not.i43, label %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, label %bb.ab

_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit: ; preds = %bb.ae
  %.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.029.i.add ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.ptr.le, ptr %i.ga, align 8, !tbaa !85
  store ptr %.ptr.le, ptr %i.f, align 8, !tbaa !81
  %i.gb = icmp samesign ugt i64 %.029.i.idx, 116
  br i1 %i.gb, label %.lr.ph28.i46, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit61

.lr.ph28.i46:                                     ; preds = %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit, %.critedge.i56
  %.01727.i47 = phi ptr [ %.017.i59, %.critedge.i56 ], [ %.01724.i, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit ] ; 3 uses
  %.01825.i49.idx = phi i64 [ %.01825.i49.add, %.critedge.i56 ], [ 116, %_ZN9Stockfish10MovePicker5scoreILNS_7GenTypeE2EEEPNS_7ExtMoveERNS_8MoveListIXT_EEE.exit ]
  %i.gc = load i64, ptr %.01727.i47, align 4      ; 2 uses
  %.sroa.4.0.extract.shift.i51 = lshr i64 %i.gc, 32
  %.sroa.4.0.extract.trunc.i52 = trunc nuw i64 %.sroa.4.0.extract.shift.i51 to i32
  %.01825.i49.add = add nuw nsw i64 %.01825.i49.idx, 8 ; 3 uses
  %.ptr84 = getelementptr inbounds nuw i8, ptr %0, i64 %.01825.i49.add
  %i.gd = load i64, ptr %.ptr84, align 4
  store i64 %i.gd, ptr %.01727.i47, align 4
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.lr.ph28.i46, %bb.af
  %.021.i55.idx = phi i64 [ %.021.i55.add, %bb.af ], [ %.01825.i49.add, %.lr.ph28.i46 ] ; 2 uses
  %.021.i55.ptr = getelementptr inbounds i8, ptr %0, i64 %.021.i55.idx ; 3 uses
  %i.ge = getelementptr inbounds i8, ptr %.021.i55.ptr, i64 -4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !58
  %i.gg = icmp slt i32 %i.gf, %.sroa.4.0.extract.trunc.i52
  br i1 %i.gg, label %bb.af, label %.critedge.i56

bb.af:                                            ; preds = %.lr.ph.i54
  %.021.i55.add = add nsw i64 %.021.i55.idx, -8   ; 3 uses
  %.ptr83 = getelementptr inbounds i8, ptr %0, i64 %.021.i55.add
  %i.gh = load i64, ptr %.ptr83, align 4
  store i64 %i.gh, ptr %.021.i55.ptr, align 4
  %.not19.i60 = icmp eq i64 %.021.i55.add, 116
  br i1 %.not19.i60, label %.critedge.i56, label %.lr.ph.i54, !llvm.loop !71

.critedge.i56:                                    ; preds = %bb.af, %.lr.ph.i54
  %.0.lcssa.i57 = phi ptr [ %.021.i55.ptr, %.lr.ph.i54 ], [ %.ptr88.ptr, %bb.af ]
  store i64 %i.gc, ptr %.0.lcssa.i57, align 4
  %.017.i59 = getelementptr inbounds nuw i8, ptr %.01727.i47, i64 8 ; 2 uses
  %i.gi = icmp ult ptr %.017.i59, %.ptr.le
  br i1 %i.gi, label %.lr.ph28.i46, label %_ZN9Stockfish12_GLOBAL__N_122partial_insertion_sortEPNS_7ExtMoveES2_i.exit61, !llvm.loop !72

end_hunk_0
