Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@unsafe_yyjson_mut_ptr_getx:bb.a
  %i.de = add nsw i64 %.078151, -8                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !104 ; 2 uses
  %.not30.i.7 = icmp eq i64 %i.de, 0
  br i1 %.not30.i.7, label %._crit_edge, label %.lr.ph153, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153, %bb.y
  %i.dh = phi i1 [ false, %bb.y ], [ %i.ch, %.lr.ph153 ], [ %i.ch, %.lr.ph153.prol.loopexit ]
  %.0.i48.lcssa = phi ptr [ %i.bl, %bb.y ], [ %.lcssa239.unr, %.lr.ph153.prol.loopexit ], [ %i.dg, %.lr.ph153 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i48.lcssa, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !104
  br label %ptr_mut_obj_get.exit

ptr_mut_obj_get.exit:                             ; preds = %ptr_token_eq.exit.thread, %bb.z, %._crit_edge, %ptr_token_to_idx.exit, %bb.v, %bb.u, %bb.t, %ptr_token_to_idx.exit.thread, %ptr_token_eq.exit.thread89, %bb.r
  %.170 = phi ptr [ %.069, %bb.r ], [ %.017.i165, %ptr_token_eq.exit.thread89 ], [ null, %ptr_token_to_idx.exit.thread ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.t ], [ %.0.i48.lcssa, %._crit_edge ], [ null, %ptr_token_to_idx.exit ], [ null, %ptr_token_eq.exit.thread ] ; 4 uses
  %.168 = phi i1 [ %.067, %bb.r ], [ %.067, %ptr_token_eq.exit.thread89 ], [ false, %ptr_token_to_idx.exit.thread ], [ true, %bb.z ], [ false, %bb.u ], [ true, %bb.v ], [ false, %bb.t ], [ %i.dh, %._crit_edge ], [ %i.ch, %ptr_token_to_idx.exit ], [ %.067, %ptr_token_eq.exit.thread ] ; 5 uses
  %.1 = phi ptr [ null, %bb.r ], [ %i.bh, %ptr_token_eq.exit.thread89 ], [ null, %ptr_token_to_idx.exit.thread ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.t ], [ %i.dj, %._crit_edge ], [ null, %ptr_token_to_idx.exit ], [ null, %ptr_token_eq.exit.thread ] ; 5 uses
  %i.dk = icmp eq ptr %.177, %i.b                 ; 2 uses
  %or.cond45 = and i1 %.not40, %i.dk
  br i1 %or.cond45, label %bb.ab, label %bb.ae

ptr_mut_obj_get.exit.thread:                      ; preds = %bb.k
  %i.dl = icmp eq ptr %.177, %i.b
  %or.cond45100 = and i1 %.not40, %i.dl
  br i1 %or.cond45100, label %.thread, label %.thread113

bb.ab:                                            ; preds = %ptr_mut_obj_get.exit
  br i1 %i.af, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = icmp eq i8 %i.ae, 6
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = icmp ne ptr %.1, null
  %or.cond = select i1 %i.dn, i1 true, i1 %.168
  br i1 %or.cond, label %.thread, label %.thread113

.thread:                                          ; preds = %ptr_mut_obj_get.exit.thread, %bb.ad, %bb.ab
  %.170101112 = phi ptr [ %.170, %bb.ab ], [ %.170, %bb.ad ], [ null, %ptr_mut_obj_get.exit.thread ] ; 2 uses
  %.168104111 = phi i1 [ %.168, %bb.ab ], [ %.168, %bb.ad ], [ %.067, %ptr_mut_obj_get.exit.thread ]
  %.1106110 = phi ptr [ %.1, %bb.ab ], [ %.1, %bb.ad ], [ null, %ptr_mut_obj_get.exit.thread ]
  store ptr %.034, ptr %3, align 8, !tbaa !159
  store ptr %.170101112, ptr %i.c, align 8, !tbaa !160
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %.thread, %ptr_mut_obj_get.exit
  %i.do = phi i1 [ %i.dk, %ptr_mut_obj_get.exit ], [ true, %bb.ac ], [ true, %.thread ]
  %.1105 = phi ptr [ %.1, %ptr_mut_obj_get.exit ], [ %.1, %bb.ac ], [ %.1106110, %.thread ] ; 3 uses
  %.168103 = phi i1 [ %.168, %ptr_mut_obj_get.exit ], [ %.168, %bb.ac ], [ %.168104111, %.thread ]
  %.170102 = phi ptr [ %.170, %ptr_mut_obj_get.exit ], [ %.170, %bb.ac ], [ %.170101112, %.thread ]
  %.not41 = icmp eq ptr %.1105, null
  br i1 %.not41, label %.thread113, label %bb.af

.thread113:                                       ; preds = %bb.ad, %ptr_mut_obj_get.exit.thread, %bb.ae
  %.not42 = icmp eq ptr %4, null
  br i1 %.not42, label %.loopexit, label %.loopexit.sink.split

bb.af:                                            ; preds = %bb.ae
  br i1 %i.do, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %.thread113, %bb.j
  %.sink = phi i32 [ 2, %bb.j ], [ 3, %.thread113 ]
  %.str.33.sink = phi ptr [ @.str.32, %bb.j ], [ @.str.33, %.thread113 ]
  %.lcssa220.sink = phi ptr [ %.140.i138, %bb.j ], [ %i.e, %.thread113 ]
  store i32 %.sink, ptr %4, align 8, !tbaa !155
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.str.33.sink, ptr %i.dp, align 8, !tbaa !156
  %i.dq = ptrtoint ptr %.lcssa220.sink to i64
  %i.dr = ptrtoint ptr %1 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !157
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %.loopexit.sink.split, %.thread113, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ null, %.thread113 ], [ null, %.loopexit.sink.split ], [ %.1105, %bb.af ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @unsafe_yyjson_mut_ptr_putx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 16 uses
  %i.c = add i64 %2, %i.a                         ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %ptr_mut_obj_get.exit, %bb.a
  %.0435 = phi ptr [ %1, %bb.a ], [ %.5440, %ptr_mut_obj_get.exit ] ; 3 uses
  %.0416 = phi i8 [ 0, %bb.a ], [ %.1417, %ptr_mut_obj_get.exit ] ; 5 uses
  %.0197 = phi ptr [ %0, %bb.a ], [ %.1198, %ptr_mut_obj_get.exit ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0435, i64 1 ; 17 uses
  %i.e = icmp ult ptr %i.d, %i.b
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge.i267

.lr.ph.preheader:                                 ; preds = %bb.b
  %.0435900 = ptrtoaddr ptr %.0435 to i64
  %scevgep = getelementptr i8, ptr %.0435, i64 %i.c
  %i.f = sub i64 0, %.0435900
  %scevgep901 = getelementptr i8, ptr %scevgep, i64 %i.f ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.039.i266723 = phi ptr [ %i.h, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.g = load i8, ptr %.039.i266723, align 1, !tbaa !100
  switch i8 %i.g, label %bb.c [
    i8 47, label %.critedge.i267
    i8 126, label %.critedge.i267
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.039.i266723, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %scevgep901
  br i1 %exitcond.not, label %.critedge.i267, label %.lr.ph, !llvm.loop !28

.critedge.i267:                                   ; preds = %bb.c, %.lr.ph, %.lr.ph, %bb.b
  %.039.i266.lcssa = phi ptr [ %i.d, %bb.b ], [ %.039.i266723, %.lr.ph ], [ %.039.i266723, %.lr.ph ], [ %scevgep901, %bb.c ] ; 9 uses
  %.039.i266.lcssa903 = ptrtoaddr ptr %.039.i266.lcssa to i64
  %i.i = icmp eq ptr %.039.i266.lcssa, %i.b
  br i1 %i.i, label %.critedge53.i276, label %bb.d

bb.d:                                             ; preds = %.critedge.i267
  %i.j = load i8, ptr %.039.i266.lcssa, align 1, !tbaa !100
  %.not = icmp eq i8 %i.j, 126
  br i1 %.not, label %.preheader619, label %.critedge53.i276, !prof !45

.preheader619:                                    ; preds = %bb.d
  %i.k = icmp ult ptr %.039.i266.lcssa, %i.b
  br i1 %i.k, label %.lr.ph730.preheader, label %.critedge2.i270

.lr.ph730.preheader:                              ; preds = %.preheader619
  %scevgep902.a = getelementptr i8, ptr %.039.i266.lcssa, i64 %i.c
  %i.l = sub i64 0, %.039.i266.lcssa903
  %scevgep904.a = getelementptr i8, ptr %scevgep902.a, i64 %i.l ; 2 uses
  br label %.lr.ph730

.critedge53.i276:                                 ; preds = %bb.d, %.critedge.i267
  %i.m = ptrtoint ptr %.039.i266.lcssa to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub i64 %i.m, %i.n
  br label %ptr_next_token.exit277

.lr.ph730:                                        ; preds = %.lr.ph730.preheader, %bb.i
  %.0.i269729 = phi i64 [ %.1.i273, %bb.i ], [ 0, %.lr.ph730.preheader ] ; 3 uses
  %.140.i268728 = phi ptr [ %i.q, %bb.i ], [ %.039.i266.lcssa, %.lr.ph730.preheader ] ; 4 uses
  %i.p = load i8, ptr %.140.i268728, align 1, !tbaa !100 ; 2 uses
  %.not49.i272 = icmp eq i8 %i.p, 47
  br i1 %.not49.i272, label %.critedge2.i270, label %bb.e

bb.e:                                             ; preds = %.lr.ph730
  %i.q = getelementptr inbounds nuw i8, ptr %.140.i268728, i64 1 ; 4 uses
  %i.r = icmp eq i8 %i.p, 126
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq ptr %i.q, %i.b
  br i1 %i.s, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.q, align 1, !tbaa !100
  %i.u = and i8 %i.t, -2
  %switch.i275 = icmp eq i8 %i.u, 48
  br i1 %switch.i275, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %.0.i269729, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1.i273 = phi i64 [ %i.v, %bb.h ], [ %.0.i269729, %bb.e ] ; 2 uses
  %exitcond905.not.a = icmp eq ptr %i.q, %scevgep904.a
  br i1 %exitcond905.not.a, label %.critedge2.i270, label %.lr.ph730, !llvm.loop !29

.critedge2.i270:                                  ; preds = %bb.i, %.lr.ph730, %.preheader619
  %.140.i268.lcssa = phi ptr [ %.039.i266.lcssa, %.preheader619 ], [ %.140.i268728, %.lr.ph730 ], [ %scevgep904.a, %bb.i ] ; 2 uses
  %.0.i269.lcssa = phi i64 [ 0, %.preheader619 ], [ %.0.i269729, %.lr.ph730 ], [ %.1.i273, %bb.i ] ; 2 uses
  %i.w = ptrtoint ptr %.140.i268.lcssa to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = add i64 %.0.i269.lcssa, %i.x
  %i.z = sub i64 %i.w, %i.y
  br label %ptr_next_token.exit277

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not249 = icmp eq ptr %8, null
  br i1 %.not249, label %yyjson_mut_obj_add.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %8, align 8, !tbaa !155
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.32, ptr %i.aa, align 8, !tbaa !156
  %i.ab = ptrtoint ptr %.140.i268728 to i64
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

ptr_next_token.exit277:                           ; preds = %.critedge2.i270, %.critedge53.i276
  %.5440 = phi ptr [ %.039.i266.lcssa, %.critedge53.i276 ], [ %.140.i268.lcssa, %.critedge2.i270 ] ; 7 uses
  %.6434 = phi i64 [ %i.o, %.critedge53.i276 ], [ %i.z, %.critedge2.i270 ] ; 12 uses
  %.6 = phi i64 [ 0, %.critedge53.i276 ], [ %.0.i269.lcssa, %.critedge2.i270 ] ; 4 uses
  %i.af = load i64, ptr %.0197, align 8, !tbaa !99 ; 6 uses
  %i.ag = trunc i64 %i.af to i8
  %i.ah = and i8 %i.ag, 7                         ; 5 uses
  switch i8 %i.ah, label %bb.aa [
    i8 7, label %bb.l
    i8 6, label %bb.s
  ]

bb.l:                                             ; preds = %ptr_next_token.exit277
  %i.ai = lshr i64 %i.af, 8                       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %ptr_mut_obj_get.exit.thread, label %.preheader614, !prof !45

.preheader614:                                    ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.0197, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !100
  %.not22.i = icmp eq i64 %.6, 0
  %.not23.i745 = icmp eq i64 %.6434, 0
  br label %bb.m

bb.m:                                             ; preds = %.preheader614, %ptr_token_eq.exit.thread
  %.0.i278755 = phi i64 [ %i.ai, %.preheader614 ], [ %i.bi, %ptr_token_eq.exit.thread ]
  %.017.i754 = phi ptr [ %i.al, %.preheader614 ], [ %i.ap, %ptr_token_eq.exit.thread ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i754, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !104 ; 7 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !99
  %i.ar = lshr i64 %i.aq, 8
  %.not.i332 = icmp eq i64 %i.ar, %.6434
  br i1 %.not.i332, label %bb.n, label %ptr_token_eq.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %.not22.i, label %ptr_token_eq.exit, label %bb.o, !prof !62

bb.o:                                             ; preds = %bb.n
  br i1 %.not23.i745, label %ptr_mut_obj_get.exit, label %.lr.ph748.preheader

.lr.ph748.preheader:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !100
  br label %.lr.ph748

.lr.ph748:                                        ; preds = %.lr.ph748.preheader, %bb.r
  %.in = phi i64 [ %i.au, %bb.r ], [ %.6434, %.lr.ph748.preheader ]
  %.0.i336747 = phi ptr [ %i.be, %bb.r ], [ %i.at, %.lr.ph748.preheader ] ; 2 uses
  %.018.i334746 = phi ptr [ %i.bd, %bb.r ], [ %i.d, %.lr.ph748.preheader ] ; 3 uses
  %i.au = add i64 %.in, -1                        ; 2 uses
  %i.av = load i8, ptr %.018.i334746, align 1, !tbaa !100 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 126
  %i.ax = load i8, ptr %.0.i336747, align 1, !tbaa !100 ; 2 uses
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph748
  %i.ay = sext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i334746, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !100
  %i.bb = icmp eq i8 %i.ba, 48
  %i.bc = select i1 %i.bb, i32 126, i32 47
  %.not25.i = icmp eq i32 %i.bc, %i.ay
  br i1 %.not25.i, label %bb.r, label %ptr_token_eq.exit.thread

bb.q:                                             ; preds = %.lr.ph748
  %.not24.i = icmp eq i8 %i.ax, %i.av
  br i1 %.not24.i, label %bb.r, label %ptr_token_eq.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  %.119.i = phi ptr [ %i.az, %bb.p ], [ %.018.i334746, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.119.i, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i336747, i64 1
  %.not23.i = icmp eq i64 %i.au, 0
  br i1 %.not23.i, label %ptr_mut_obj_get.exit, label %.lr.ph748, !llvm.loop !30

ptr_token_eq.exit:                                ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !100
  %bcmp.i337 = tail call i32 @bcmp(ptr %i.bg, ptr nonnull %i.d, i64 %.6434)
  %i.bh = icmp eq i32 %bcmp.i337, 0
  br i1 %i.bh, label %ptr_mut_obj_get.exit, label %ptr_token_eq.exit.thread

ptr_token_eq.exit.thread:                         ; preds = %bb.p, %bb.q, %bb.m, %ptr_token_eq.exit
  %i.bi = add nsw i64 %.0.i278755, -1             ; 2 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %ptr_mut_obj_get.exit.thread, label %bb.m, !llvm.loop !32

bb.s:                                             ; preds = %ptr_next_token.exit277
  %i.bj = getelementptr inbounds nuw i8, ptr %.0197, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !100 ; 4 uses
  %i.bl = lshr i64 %i.af, 8                       ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %bb.v, !prof !45

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp eq i64 %.6434, 1
  br i1 %i.bn, label %bb.u, label %ptr_mut_obj_get.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bo = load i8, ptr %i.d, align 1, !tbaa !100  ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.bo, 48
  %switch.selectcmp.case2 = icmp eq i8 %i.bo, 45
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.bp = zext i1 %switch.selectcmp to i8
  br label %ptr_mut_obj_get.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.6434
  %i.br = add i64 %.6434, -20
  %i.bs = icmp ult i64 %i.br, -19
  br i1 %i.bs, label %ptr_mut_obj_get.exit.thread, label %bb.w, !prof !45

bb.w:                                             ; preds = %bb.v
  %i.bt = load i8, ptr %i.d, align 1, !tbaa !100
  switch i8 %i.bt, label %.lr.ph738 [
    i8 48, label %bb.x
    i8 45, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bu = icmp samesign ugt i64 %.6434, 1
  br i1 %i.bu, label %ptr_mut_obj_get.exit.thread, label %ptr_mut_obj_get.exit, !prof !45

bb.y:                                             ; preds = %bb.w
  %i.bv = icmp samesign ugt i64 %.6434, 1
  br i1 %i.bv, label %ptr_token_to_idx.exit.thread, label %ptr_mut_obj_get.exit.thread, !prof !45

.lr.ph738:                                        ; preds = %bb.w, %bb.z
  %.0.i339737 = phi i64 [ %i.cb, %bb.z ], [ 0, %bb.w ] ; 2 uses
  %.022.i338736 = phi ptr [ %i.cc, %bb.z ], [ %i.d, %bb.w ] ; 2 uses
  %i.bw = load i8, ptr %.022.i338736, align 1, !tbaa !100 ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nsw i64 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i64 %i.by, 10
  br i1 %i.bz, label %bb.z, label %ptr_mut_obj_get.exit.thread, !prof !136

bb.z:                                             ; preds = %.lr.ph738
  %i.ca = mul i64 %.0.i339737, 10
  %i.cb = add i64 %i.by, %i.ca                    ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.022.i338736, i64 1 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.bq
  br i1 %i.cd, label %.lr.ph738, label %.critedge.i340, !llvm.loop !31

.critedge.i340:                                   ; preds = %bb.z
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %ptr_mut_obj_get.exit.thread, label %ptr_token_to_idx.exit, !prof !125

ptr_token_to_idx.exit.thread:                     ; preds = %bb.y
  br label %ptr_mut_obj_get.exit.thread

ptr_token_to_idx.exit:                            ; preds = %.critedge.i340
  %i.cf = icmp eq i64 %i.cb, %i.bl
  %i.cg = icmp eq i64 %i.cb, -1
  %i.ch = or i1 %i.cf, %i.cg
  %i.ci = zext i1 %i.ch to i8                     ; 3 uses
  %.not.i279 = icmp ult i64 %i.cb, %i.bl
  br i1 %.not.i279, label %.lr.ph743.preheader.a, label %ptr_mut_obj_get.exit.thread, !prof !137

.lr.ph743.preheader.a:                            ; preds = %ptr_token_to_idx.exit
  %i.cj = mul i64 %.0.i339737, 10
  %i.ck = add i64 %i.cj, -49
  %i.cl = zext i8 %i.bw to i64
  %i.cm = add i64 %i.ck, %i.cl
  %xtraiter = and i64 %i.cb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph743.prol.loopexit, label %.lr.ph743.prol

.lr.ph743.prol:                                   ; preds = %.lr.ph743.preheader.a, %.lr.ph743.prol
  %.0.i280742.prol = phi ptr [ %i.cp, %.lr.ph743.prol ], [ %i.bk, %.lr.ph743.preheader.a ]
  %.0441741.prol = phi i64 [ %i.cn, %.lr.ph743.prol ], [ %i.cb, %.lr.ph743.preheader.a ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph743.prol ], [ 0, %.lr.ph743.preheader.a ]
  %i.cn = add nsw i64 %.0441741.prol, -1          ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i280742.prol, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !104 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph743.prol.loopexit, label %.lr.ph743.prol, !llvm.loop !448

.lr.ph743.prol.loopexit:                          ; preds = %.lr.ph743.prol, %.lr.ph743.preheader.a
  %.lcssa1214.unr = phi ptr [ poison, %.lr.ph743.preheader.a ], [ %i.cp, %.lr.ph743.prol ] ; 2 uses
  %.0.i280742.unr = phi ptr [ %i.bk, %.lr.ph743.preheader.a ], [ %i.cp, %.lr.ph743.prol ]
  %.0441741.unr = phi i64 [ %i.cb, %.lr.ph743.preheader.a ], [ %i.cn, %.lr.ph743.prol ]
  %i.cq = icmp ult i64 %i.cm, 7
  br i1 %i.cq, label %ptr_mut_obj_get.exit, label %.lr.ph743.a

.lr.ph743.a:                                      ; preds = %.lr.ph743.prol.loopexit, %.lr.ph743.a
  %.0.i280742 = phi ptr [ %i.dh, %.lr.ph743.a ], [ %.0.i280742.unr, %.lr.ph743.prol.loopexit ]
  %.0441741 = phi i64 [ %i.df, %.lr.ph743.a ], [ %.0441741.unr, %.lr.ph743.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i280742, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !104
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !104
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !104
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !104
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !104
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !104
  %i.df = add nsw i64 %.0441741, -8               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !104 ; 3 uses
  %.not30.i.7 = icmp eq i64 %i.df, 0
  br i1 %.not30.i.7, label %ptr_mut_obj_get.exit, label %.lr.ph743.a, !llvm.loop !33

bb.aa:                                            ; preds = %ptr_next_token.exit277
  %.not220 = icmp eq ptr %8, null
  br i1 %.not220, label %yyjson_mut_obj_add.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 3, ptr %8, align 8, !tbaa !155
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.di, align 8, !tbaa !156
  %i.dj = ptrtoint ptr %i.d to i64
  %i.dk = ptrtoint ptr %1 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

ptr_mut_obj_get.exit.thread:                      ; preds = %bb.l, %ptr_token_to_idx.exit, %.critedge.i340, %bb.x, %bb.v, %.lr.ph738, %ptr_token_eq.exit.thread, %bb.u, %bb.t, %ptr_token_to_idx.exit.thread, %bb.y
  %i.dn = phi i8 [ 6, %bb.y ], [ 6, %.lr.ph738 ], [ 6, %ptr_token_to_idx.exit.thread ], [ 6, %bb.t ], [ 6, %bb.u ], [ 7, %ptr_token_eq.exit.thread ], [ %i.ah, %ptr_token_to_idx.exit ], [ %i.ah, %.critedge.i340 ], [ 6, %bb.x ], [ 6, %bb.v ], [ 7, %bb.l ] ; 2 uses
  %.1417.ph = phi i8 [ 1, %bb.y ], [ 0, %.lr.ph738 ], [ 0, %ptr_token_to_idx.exit.thread ], [ 0, %bb.t ], [ %i.bp, %bb.u ], [ %.0416, %ptr_token_eq.exit.thread ], [ %i.ci, %ptr_token_to_idx.exit ], [ 0, %.critedge.i340 ], [ 0, %bb.x ], [ 0, %bb.v ], [ %.0416, %bb.l ] ; 2 uses
  %i.do = icmp eq ptr %.5440, %i.b
  br i1 %i.do, label %.loopexit, label %bb.ad, !prof !62

ptr_mut_obj_get.exit:                             ; preds = %.lr.ph743.prol.loopexit, %.lr.ph743.a, %ptr_token_eq.exit, %bb.o, %bb.r, %bb.x
  %.0419 = phi ptr [ %.017.i754, %bb.r ], [ %.017.i754, %ptr_token_eq.exit ], [ %i.bk, %bb.x ], [ %.017.i754, %bb.o ], [ %.lcssa1214.unr, %.lr.ph743.prol.loopexit ], [ %i.dh, %.lr.ph743.a ] ; 2 uses
  %.1417 = phi i8 [ %.0416, %bb.r ], [ %.0416, %ptr_token_eq.exit ], [ 0, %bb.x ], [ %.0416, %bb.o ], [ %i.ci, %.lr.ph743.a ], [ %i.ci, %.lr.ph743.prol.loopexit ] ; 3 uses
  %.pn = phi ptr [ %i.ap, %bb.r ], [ %i.ap, %ptr_token_eq.exit ], [ %i.bk, %bb.x ], [ %i.ap, %bb.o ], [ %.lcssa1214.unr, %.lr.ph743.prol.loopexit ], [ %i.dh, %.lr.ph743.a ]
  %.1198.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.1198 = load ptr, ptr %.1198.in, align 8, !tbaa !104 ; 4 uses
  %.not221 = icmp eq ptr %.1198, null
  %i.dp = icmp eq ptr %.5440, %i.b                ; 2 uses
  %or.cond251 = or i1 %i.dp, %.not221
  br i1 %or.cond251, label %bb.ac, label %bb.b

bb.ac:                                            ; preds = %ptr_mut_obj_get.exit
  br i1 %i.dp, label %.loopexit, label %bb.ad, !prof !62

bb.ad:                                            ; preds = %ptr_mut_obj_get.exit.thread, %bb.ac
  %i.dq = phi i8 [ %i.dn, %ptr_mut_obj_get.exit.thread ], [ %i.ah, %bb.ac ] ; 2 uses
  %.0419468474 = phi ptr [ null, %ptr_mut_obj_get.exit.thread ], [ %.0419, %bb.ac ] ; 2 uses
  %.1417469472 = phi i8 [ %.1417.ph, %ptr_mut_obj_get.exit.thread ], [ %.1417, %bb.ac ] ; 3 uses
  %.1198470471 = phi ptr [ null, %ptr_mut_obj_get.exit.thread ], [ %.1198, %bb.ac ]
  %.5440897906 = ptrtoaddr ptr %.5440 to i64
  br i1 %5, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not223 = icmp eq ptr %8, null
  br i1 %.not223, label %yyjson_mut_obj_add.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 3, ptr %8, align 8, !tbaa !155
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.dr, align 8, !tbaa !156
  %i.ds = ptrtoint ptr %i.d to i64
  %i.dt = ptrtoint ptr %1 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

bb.ag:                                            ; preds = %bb.ad
  %i.dw = icmp eq i8 %i.dq, 6
  br i1 %i.dw, label %bb.ah, label %ptr_next_token.exit265

bb.ah:                                            ; preds = %bb.ag
  %i.dx = trunc nuw i8 %.1417469472 to i1
  %or.cond = and i1 %6, %i.dx
  br i1 %or.cond, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not224 = icmp eq ptr %8, null
  br i1 %.not224, label %yyjson_mut_obj_add.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 3, ptr %8, align 8, !tbaa !155
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.dy, align 8, !tbaa !156
  %i.dz = ptrtoint ptr %i.d to i64
  %i.ea = ptrtoint ptr %1 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

bb.ak:                                            ; preds = %bb.ah
  %.not.i283 = icmp eq ptr %4, null
  br i1 %.not.i283, label %.thread, label %bb.al, !prof !45

bb.al:                                            ; preds = %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !87
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !86 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.am, label %unsafe_yyjson_mut_val.exit.i284, !prof !45

bb.am:                                            ; preds = %bb.al
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ej = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ei, i64 noundef 1)
  br i1 %i.ej, label %.unsafe_yyjson_mut_val.exit.i284_crit_edge, label %.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i284_crit_edge:       ; preds = %bb.am
  %.pre = load ptr, ptr %i.ed, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i284

unsafe_yyjson_mut_val.exit.i284:                  ; preds = %.unsafe_yyjson_mut_val.exit.i284_crit_edge, %bb.al
  %i.ek = phi ptr [ %.pre, %.unsafe_yyjson_mut_val.exit.i284_crit_edge ], [ %i.eg, %bb.al ] ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr %i.el, ptr %i.ed, align 8, !tbaa !86
  %.not9.i286.not = icmp eq ptr %i.ek, null
  br i1 %.not9.i286.not, label %.thread, label %bb.ao, !prof !103

.thread:                                          ; preds = %bb.am, %unsafe_yyjson_mut_val.exit.i284, %bb.ak
  %.not226 = icmp eq ptr %8, null
  br i1 %.not226, label %yyjson_mut_obj_add.exit, label %bb.an

bb.an:                                            ; preds = %.thread
  store i32 6, ptr %8, align 8, !tbaa !155
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.34, ptr %i.em, align 8, !tbaa !156
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.en, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

bb.ao:                                            ; preds = %unsafe_yyjson_mut_val.exit.i284
  store i64 7, ptr %i.ek, align 8, !tbaa !102
  %i.eo = getelementptr inbounds nuw i8, ptr %.5440, i64 1 ; 7 uses
  %i.ep = icmp ult ptr %i.eo, %i.b
  br i1 %i.ep, label %.lr.ph757.preheader, label %.critedge.i255

.lr.ph757.preheader:                              ; preds = %bb.ao
  %i.eq = sub i64 %i.c, %.5440897906
  %scevgep907 = getelementptr i8, ptr %.5440, i64 %i.eq ; 2 uses
  br label %.lr.ph757

.lr.ph757:                                        ; preds = %.lr.ph757.preheader, %bb.ap
  %.039.i254756 = phi ptr [ %i.es, %bb.ap ], [ %i.eo, %.lr.ph757.preheader ] ; 4 uses
  %i.er = load i8, ptr %.039.i254756, align 1, !tbaa !100
  switch i8 %i.er, label %bb.ap [
    i8 47, label %.critedge.i255
    i8 126, label %.critedge.i255
  ]

bb.ap:                                            ; preds = %.lr.ph757
  %i.es = getelementptr inbounds nuw i8, ptr %.039.i254756, i64 1 ; 2 uses
  %exitcond908.not = icmp eq ptr %i.es, %scevgep907
  br i1 %exitcond908.not, label %.critedge.i255, label %.lr.ph757, !llvm.loop !28

.critedge.i255:                                   ; preds = %bb.ap, %.lr.ph757, %.lr.ph757, %bb.ao
  %.039.i254.lcssa = phi ptr [ %i.eo, %bb.ao ], [ %.039.i254756, %.lr.ph757 ], [ %.039.i254756, %.lr.ph757 ], [ %scevgep907, %bb.ap ] ; 9 uses
  %.039.i254.lcssa909 = ptrtoaddr ptr %.039.i254.lcssa to i64
  %i.et = icmp eq ptr %.039.i254.lcssa, %i.b
  br i1 %i.et, label %.critedge53.i264, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i255
  %i.eu = load i8, ptr %.039.i254.lcssa, align 1, !tbaa !100
  %.not598 = icmp eq i8 %i.eu, 126
  br i1 %.not598, label %.preheader613, label %.critedge53.i264, !prof !45

.preheader613:                                    ; preds = %bb.aq
  %i.ev = icmp ult ptr %.039.i254.lcssa, %i.b
  br i1 %i.ev, label %.lr.ph765.preheader, label %.critedge2.i258

.lr.ph765.preheader:                              ; preds = %.preheader613
  %i.ew = sub i64 %i.c, %.039.i254.lcssa909
  %scevgep910 = getelementptr i8, ptr %.039.i254.lcssa, i64 %i.ew ; 2 uses
  br label %.lr.ph765

.critedge53.i264:                                 ; preds = %bb.aq, %.critedge.i255
  %i.ex = ptrtoint ptr %.039.i254.lcssa to i64
  %i.ey = ptrtoint ptr %i.eo to i64
  %i.ez = sub i64 %i.ex, %i.ey
  br label %ptr_next_token.exit265

.lr.ph765:                                        ; preds = %.lr.ph765.preheader, %bb.av
  %.0.i257764 = phi i64 [ %.1.i261, %bb.av ], [ 0, %.lr.ph765.preheader ] ; 3 uses
  %.140.i256763 = phi ptr [ %i.fb, %bb.av ], [ %.039.i254.lcssa, %.lr.ph765.preheader ] ; 3 uses
  %i.fa = load i8, ptr %.140.i256763, align 1, !tbaa !100 ; 2 uses
  %.not49.i260 = icmp eq i8 %i.fa, 47
  br i1 %.not49.i260, label %.critedge2.i258, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph765
  %i.fb = getelementptr inbounds nuw i8, ptr %.140.i256763, i64 1 ; 4 uses
  %i.fc = icmp eq i8 %i.fa, 126
  br i1 %i.fc, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fd = icmp eq ptr %i.fb, %i.b
  br i1 %i.fd, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fe = load i8, ptr %i.fb, align 1, !tbaa !100
  %i.ff = and i8 %i.fe, -2
  %switch.i263 = icmp eq i8 %i.ff, 48
  br i1 %switch.i263, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fg = add i64 %.0.i257764, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.1.i261 = phi i64 [ %i.fg, %bb.au ], [ %.0.i257764, %bb.ar ] ; 2 uses
  %exitcond911.not = icmp eq ptr %i.fb, %scevgep910
  br i1 %exitcond911.not, label %.critedge2.i258, label %.lr.ph765, !llvm.loop !29

.critedge2.i258:                                  ; preds = %bb.av, %.lr.ph765, %.preheader613
  %.140.i256.lcssa = phi ptr [ %.039.i254.lcssa, %.preheader613 ], [ %.140.i256763, %.lr.ph765 ], [ %scevgep910, %bb.av ] ; 2 uses
  %.0.i257.lcssa = phi i64 [ 0, %.preheader613 ], [ %.0.i257764, %.lr.ph765 ], [ %.1.i261, %bb.av ] ; 2 uses
  %i.fh = ptrtoint ptr %.140.i256.lcssa to i64
  %i.fi = ptrtoint ptr %i.eo to i64
  %i.fj = add i64 %.0.i257.lcssa, %i.fi
  %i.fk = sub i64 %i.fh, %i.fj
  br label %ptr_next_token.exit265

bb.aw:                                            ; preds = %bb.at, %bb.as
  %.not248 = icmp eq ptr %8, null
  br i1 %.not248, label %yyjson_mut_obj_add.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 3, ptr %8, align 8, !tbaa !155
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.fl, align 8, !tbaa !156
  %i.fm = ptrtoint ptr %1 to i64
  %i.fn = sub i64 0, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

ptr_next_token.exit265:                           ; preds = %.critedge2.i258, %.critedge53.i264, %bb.ag
  %i.fp = phi i64 [ %i.af, %bb.ag ], [ 7, %.critedge53.i264 ], [ 7, %.critedge2.i258 ]
  %.1436 = phi ptr [ %.5440, %bb.ag ], [ %.039.i254.lcssa, %.critedge53.i264 ], [ %.140.i256.lcssa, %.critedge2.i258 ] ; 2 uses
  %.1429 = phi i64 [ %.6434, %bb.ag ], [ %i.ez, %.critedge53.i264 ], [ %i.fk, %.critedge2.i258 ] ; 2 uses
  %.1424 = phi i64 [ %.6, %bb.ag ], [ 0, %.critedge53.i264 ], [ %.0.i257.lcssa, %.critedge2.i258 ] ; 2 uses
  %.2199 = phi ptr [ %.1198470471, %bb.ag ], [ null, %.critedge53.i264 ], [ null, %.critedge2.i258 ]
  %.0193 = phi ptr [ %i.d, %bb.ag ], [ %i.eo, %.critedge53.i264 ], [ %i.eo, %.critedge2.i258 ] ; 2 uses
  %.0190 = phi ptr [ %.0197, %bb.ag ], [ %i.ek, %.critedge53.i264 ], [ %i.ek, %.critedge2.i258 ] ; 2 uses
  %.0186 = phi ptr [ null, %bb.ag ], [ %.0197, %.critedge53.i264 ], [ %.0197, %.critedge2.i258 ] ; 2 uses
  %.0180 = phi ptr [ null, %bb.ag ], [ %i.ek, %.critedge53.i264 ], [ %i.ek, %.critedge2.i258 ] ; 2 uses
  %.0 = phi i8 [ %i.dq, %bb.ag ], [ 7, %.critedge53.i264 ], [ 7, %.critedge2.i258 ] ; 2 uses
  %.not228790 = icmp eq ptr %.1436, %i.b
  br i1 %.not228790, label %.loopexit, label %.lr.ph799

.lr.ph799:                                        ; preds = %ptr_next_token.exit265
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 8 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %.not599 = icmp eq ptr %4, null                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 12 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph799, %ptr_next_token.exit
  %.1181798 = phi ptr [ %.0180, %.lr.ph799 ], [ %.2, %ptr_next_token.exit ] ; 3 uses
  %.1183797 = phi ptr [ null, %.lr.ph799 ], [ %.2184, %ptr_next_token.exit ] ; 3 uses
  %.1187796 = phi ptr [ %.0186, %.lr.ph799 ], [ %.2188, %ptr_next_token.exit ] ; 4 uses
  %.1191795 = phi ptr [ %.0190, %.lr.ph799 ], [ %i.hv, %ptr_next_token.exit ] ; 5 uses
  %.1194794 = phi ptr [ %.0193, %.lr.ph799 ], [ %i.is, %ptr_next_token.exit ] ; 3 uses
  %.2425793 = phi i64 [ %.1424, %.lr.ph799 ], [ %.4427, %ptr_next_token.exit ] ; 3 uses
  %.2430792 = phi i64 [ %.1429, %.lr.ph799 ], [ %.4432, %ptr_next_token.exit ] ; 7 uses
  %.2437791 = phi ptr [ %.1436, %.lr.ph799 ], [ %.3438, %ptr_next_token.exit ] ; 3 uses
  %.2437791913 = ptrtoaddr ptr %.2437791 to i64
  %.not.i293 = icmp eq i64 %.2425793, 0
  br i1 %.not.i293, label %bb.az, label %bb.be, !prof !62

bb.az:                                            ; preds = %bb.ay
  br i1 %.not599, label %ptr_new_key.exit301.thread, label %bb.ba, !prof !45

bb.ba:                                            ; preds = %bb.az
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !86 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %bb.bb, label %unsafe_yyjson_mut_val.exit.i341, !prof !45

bb.bb:                                            ; preds = %bb.ba
  %i.fy = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fs, i64 noundef 1)
  br i1 %i.fy, label %.unsafe_yyjson_mut_val.exit.i341_crit_edge, label %ptr_new_key.exit301.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i341_crit_edge:       ; preds = %bb.bb
  %.pre926 = load ptr, ptr %i.ft, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i341

unsafe_yyjson_mut_val.exit.i341:                  ; preds = %.unsafe_yyjson_mut_val.exit.i341_crit_edge, %bb.ba
  %i.fz = phi ptr [ %.pre926, %.unsafe_yyjson_mut_val.exit.i341_crit_edge ], [ %i.fw, %bb.ba ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store ptr %i.ga, ptr %i.ft, align 8, !tbaa !86
  %.not.i343.not = icmp eq ptr %i.fz, null
  br i1 %.not.i343.not, label %ptr_new_key.exit301.thread, label %bb.bc, !prof !103

bb.bc:                                            ; preds = %unsafe_yyjson_mut_val.exit.i341
  %i.gb = load ptr, ptr %i.fr, align 8, !tbaa !78
  %i.gc = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %.not.i21.i = icmp ugt i64 %i.gf, %.2430792
  br i1 %.not.i21.i, label %unsafe_yyjson_mut_str_alc.exit.i, label %bb.bd, !prof !62

bb.bd:                                            ; preds = %bb.bc
  %i.gg = add i64 %.2430792, 1
  %i.gh = tail call zeroext i1 @unsafe_yyjson_str_pool_grow(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.fs, i64 noundef %i.gg)
  br i1 %i.gh, label %unsafe_yyjson_mut_str_alc.exit.ithread-pre-split, label %ptr_new_key.exit301.thread, !prof !62

unsafe_yyjson_mut_str_alc.exit.ithread-pre-split: ; preds = %bb.bd
  %.pr = load ptr, ptr %i.fq, align 8, !tbaa !77
  br label %unsafe_yyjson_mut_str_alc.exit.i

unsafe_yyjson_mut_str_alc.exit.i:                 ; preds = %unsafe_yyjson_mut_str_alc.exit.ithread-pre-split, %bb.bc
  %i.gi = phi ptr [ %.pr, %unsafe_yyjson_mut_str_alc.exit.ithread-pre-split ], [ %i.gc, %bb.bc ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.2430792 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  store ptr %i.gk, ptr %i.fq, align 8, !tbaa !77
  %.not.i.i344 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i344, label %ptr_new_key.exit301.thread, label %unsafe_yyjson_mut_strncpy.exit.i.thread, !prof !103

unsafe_yyjson_mut_strncpy.exit.i.thread:          ; preds = %unsafe_yyjson_mut_str_alc.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gi, ptr nonnull align 1 %.1194794, i64 %.2430792, i1 false)
  store i8 0, ptr %i.gj, align 1, !tbaa !100
  br label %ptr_new_key.exit301.thread519

bb.be:                                            ; preds = %bb.ay
  %i.gl = getelementptr inbounds nuw i8, ptr %.1194794, i64 %.2430792
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.2425793
  %i.gn = add i64 %.2425793, %.2430792            ; 3 uses
  %i.go = load ptr, ptr %i.fr, align 8, !tbaa !78
  %i.gp = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %.not.i327 = icmp ugt i64 %i.gs, %i.gn
  br i1 %.not.i327, label %unsafe_yyjson_mut_str_alc.exit, label %bb.bf, !prof !62

bb.bf:                                            ; preds = %bb.be
  %i.gt = add i64 %i.gn, 1
  %i.gu = tail call zeroext i1 @unsafe_yyjson_str_pool_grow(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.fs, i64 noundef %i.gt)
  br i1 %i.gu, label %unsafe_yyjson_mut_str_alc.exitthread-pre-split, label %ptr_new_key.exit301.thread, !prof !62

unsafe_yyjson_mut_str_alc.exitthread-pre-split:   ; preds = %bb.bf
  %.pr508 = load ptr, ptr %i.fq, align 8, !tbaa !77
  br label %unsafe_yyjson_mut_str_alc.exit

unsafe_yyjson_mut_str_alc.exit:                   ; preds = %unsafe_yyjson_mut_str_alc.exitthread-pre-split, %bb.be
  %i.gv = phi ptr [ %.pr508, %unsafe_yyjson_mut_str_alc.exitthread-pre-split ], [ %i.gp, %bb.be ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.gx, ptr %i.fq, align 8, !tbaa !77
  %.not29.i294 = icmp eq ptr %i.gv, null
  br i1 %.not29.i294, label %ptr_new_key.exit301.thread, label %.lr.ph773, !prof !451

.lr.ph773:                                        ; preds = %unsafe_yyjson_mut_str_alc.exit, %bb.bh
  %.0.i296772 = phi ptr [ %i.he, %bb.bh ], [ %i.gv, %unsafe_yyjson_mut_str_alc.exit ] ; 2 uses
  %.026.i295771 = phi ptr [ %i.hd, %bb.bh ], [ %.1194794, %unsafe_yyjson_mut_str_alc.exit ] ; 3 uses
  %i.gy = load i8, ptr %.026.i295771, align 1, !tbaa !100 ; 2 uses
  %.not30.i298 = icmp eq i8 %i.gy, 126
  br i1 %.not30.i298, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph773
  %i.gz = getelementptr inbounds nuw i8, ptr %.026.i295771, i64 1 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !100
  %i.hb = icmp eq i8 %i.ha, 48
  %i.hc = select i1 %i.hb, i8 126, i8 47
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph773
  %storemerge.i299 = phi i8 [ %i.hc, %bb.bg ], [ %i.gy, %.lr.ph773 ]
  %.1.i300 = phi ptr [ %i.gz, %bb.bg ], [ %.026.i295771, %.lr.ph773 ]
  store i8 %storemerge.i299, ptr %.0.i296772, align 1, !tbaa !100
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.i300, i64 1 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i296772, i64 1 ; 2 uses
  %i.hf = icmp ult ptr %i.hd, %i.gm
  br i1 %i.hf, label %.lr.ph773, label %._crit_edge, !llvm.loop !449

._crit_edge:                                      ; preds = %bb.bh
  store i8 0, ptr %i.he, align 1, !tbaa !100
  br i1 %.not599, label %ptr_new_key.exit301.thread, label %bb.bi, !prof !45

bb.bi:                                            ; preds = %._crit_edge
  %i.hg = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.hh = load ptr, ptr %i.ft, align 8, !tbaa !86 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %bb.bj, label %unsafe_yyjson_mut_val.exit.i361, !prof !45

bb.bj:                                            ; preds = %bb.bi
  %i.hj = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fs, i64 noundef 1)
  br i1 %i.hj, label %.unsafe_yyjson_mut_val.exit.i361_crit_edge, label %ptr_new_key.exit301.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i361_crit_edge:       ; preds = %bb.bj
  %.pre925 = load ptr, ptr %i.ft, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i361

unsafe_yyjson_mut_val.exit.i361:                  ; preds = %.unsafe_yyjson_mut_val.exit.i361_crit_edge, %bb.bi
  %i.hk = phi ptr [ %.pre925, %.unsafe_yyjson_mut_val.exit.i361_crit_edge ], [ %i.hh, %bb.bi ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store ptr %i.hl, ptr %i.ft, align 8, !tbaa !86
  %.not.i363.not = icmp eq ptr %i.hk, null
  br i1 %.not.i363.not, label %ptr_new_key.exit301.thread, label %ptr_new_key.exit301.thread519, !prof !452

ptr_new_key.exit301.thread:                       ; preds = %bb.bd, %unsafe_yyjson_mut_str_alc.exit.i, %bb.bj, %unsafe_yyjson_mut_val.exit.i361, %bb.bf, %bb.bb, %unsafe_yyjson_mut_val.exit.i341, %unsafe_yyjson_mut_str_alc.exit, %bb.az, %._crit_edge
  %.not242 = icmp eq ptr %8, null
  br i1 %.not242, label %yyjson_mut_obj_add.exit, label %bb.bk

bb.bk:                                            ; preds = %ptr_new_key.exit301.thread
  store i32 6, ptr %8, align 8, !tbaa !155
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.34, ptr %i.hm, align 8, !tbaa !156
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.hn, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

ptr_new_key.exit301.thread519:                    ; preds = %unsafe_yyjson_mut_val.exit.i361, %unsafe_yyjson_mut_strncpy.exit.i.thread
  %.sink1109 = phi ptr [ %i.fz, %unsafe_yyjson_mut_strncpy.exit.i.thread ], [ %i.hk, %unsafe_yyjson_mut_val.exit.i361 ] ; 8 uses
  %.sink1105 = phi ptr [ %i.gi, %unsafe_yyjson_mut_strncpy.exit.i.thread ], [ %i.gv, %unsafe_yyjson_mut_val.exit.i361 ]
  %i.ho = shl i64 %.2430792, 8
  %i.hp = or disjoint i64 %i.ho, 5
  store i64 %i.hp, ptr %.sink1109, align 8, !tbaa !99
  %i.hq = getelementptr inbounds nuw i8, ptr %.sink1109, i64 8
  store ptr %.sink1105, ptr %i.hq, align 8, !tbaa !100
  %i.hr = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.hs = load ptr, ptr %i.ft, align 8, !tbaa !86 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %bb.bl, label %unsafe_yyjson_mut_val.exit.i, !prof !45

bb.bl:                                            ; preds = %ptr_new_key.exit301.thread519
  %i.hu = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fs, i64 noundef 1)
  br i1 %i.hu, label %.unsafe_yyjson_mut_val.exit.i_crit_edge, label %unsafe_yyjson_mut_val.exit.i.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i_crit_edge:          ; preds = %bb.bl
  %.pre927 = load ptr, ptr %i.ft, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i

unsafe_yyjson_mut_val.exit.i:                     ; preds = %.unsafe_yyjson_mut_val.exit.i_crit_edge, %ptr_new_key.exit301.thread519
  %i.hv = phi ptr [ %.pre927, %.unsafe_yyjson_mut_val.exit.i_crit_edge ], [ %i.hs, %ptr_new_key.exit301.thread519 ] ; 9 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr %i.hw, ptr %i.ft, align 8, !tbaa !86
  %.not9.i.not = icmp eq ptr %i.hv, null
  br i1 %.not9.i.not, label %unsafe_yyjson_mut_val.exit.i.thread, label %bb.bn, !prof !103

unsafe_yyjson_mut_val.exit.i.thread:              ; preds = %bb.bl, %unsafe_yyjson_mut_val.exit.i
  %.not244 = icmp eq ptr %8, null
  br i1 %.not244, label %yyjson_mut_obj_add.exit, label %bb.bm

bb.bm:                                            ; preds = %unsafe_yyjson_mut_val.exit.i.thread
  store i32 6, ptr %8, align 8, !tbaa !155
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.34, ptr %i.hx, align 8, !tbaa !156
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

bb.bn:                                            ; preds = %unsafe_yyjson_mut_val.exit.i
  store i64 7, ptr %i.hv, align 8, !tbaa !102
  %.not245 = icmp eq ptr %.1187796, null
  br i1 %.not245, label %yyjson_mut_obj_add.exit303, label %yyjson_mut_is_obj.exit316

yyjson_mut_is_obj.exit316:                        ; preds = %bb.bn
  %i.hz = load i64, ptr %.1191795, align 8, !tbaa !99 ; 4 uses
  %i.ia = and i64 %i.hz, 7
  %i.ib = icmp eq i64 %i.ia, 7
  br i1 %i.ib, label %bb.bo, label %yyjson_mut_obj_add.exit303, !prof !62

bb.bo:                                            ; preds = %yyjson_mut_is_obj.exit316
  %i.ic = load i64, ptr %.sink1109, align 8, !tbaa !99
  %i.id = and i64 %i.ic, 7
  %i.ie = icmp eq i64 %i.id, 5
  br i1 %i.ie, label %bb.bp, label %yyjson_mut_obj_add.exit303, !prof !137

bb.bp:                                            ; preds = %bb.bo
  %.not.i304 = icmp ult i64 %i.hz, 256
  br i1 %.not.i304, label %unsafe_yyjson_mut_obj_add.exit, label %bb.bq, !prof !45

bb.bq:                                            ; preds = %bb.bp
  %i.if = getelementptr inbounds nuw i8, ptr %.1191795, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !100
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !104
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !104
  store ptr %.sink1109, ptr %i.ij, align 8, !tbaa !104
  br label %unsafe_yyjson_mut_obj_add.exit

unsafe_yyjson_mut_obj_add.exit:                   ; preds = %bb.bp, %bb.bq
  %.sink = phi ptr [ %i.ik, %bb.bq ], [ %.sink1109, %bb.bp ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %.sink, ptr %i.il, align 8, !tbaa !104
  %i.im = getelementptr inbounds nuw i8, ptr %.sink1109, i64 16
  store ptr %i.hv, ptr %i.im, align 8, !tbaa !104
  %i.in = getelementptr inbounds nuw i8, ptr %.1191795, i64 8
  store ptr %.sink1109, ptr %i.in, align 8, !tbaa !100
  %i.io = and i64 %i.hz, 255
  %i.ip = and i64 %i.hz, -256
  %i.iq = add i64 %i.ip, 256
  %i.ir = or disjoint i64 %i.iq, %i.io
  store i64 %i.ir, ptr %.1191795, align 8, !tbaa !99
  br label %yyjson_mut_obj_add.exit303

yyjson_mut_obj_add.exit303:                       ; preds = %yyjson_mut_is_obj.exit316, %unsafe_yyjson_mut_obj_add.exit, %bb.bo, %bb.bn
  %.2188 = phi ptr [ %.1191795, %bb.bn ], [ %.1187796, %unsafe_yyjson_mut_obj_add.exit ], [ %.1187796, %bb.bo ], [ %.1187796, %yyjson_mut_is_obj.exit316 ] ; 2 uses
  %.2184 = phi ptr [ %.sink1109, %bb.bn ], [ %.1183797, %unsafe_yyjson_mut_obj_add.exit ], [ %.1183797, %bb.bo ], [ %.1183797, %yyjson_mut_is_obj.exit316 ] ; 2 uses
  %.2 = phi ptr [ %i.hv, %bb.bn ], [ %.1181798, %unsafe_yyjson_mut_obj_add.exit ], [ %.1181798, %bb.bo ], [ %.1181798, %yyjson_mut_is_obj.exit316 ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.2437791, i64 1 ; 7 uses
  %i.it = icmp ult ptr %i.is, %i.b
  br i1 %i.it, label %.lr.ph776.preheader, label %.critedge.i

.lr.ph776.preheader:                              ; preds = %yyjson_mut_obj_add.exit303
  %scevgep912 = getelementptr i8, ptr %.2437791, i64 %i.c
  %i.iu = sub i64 0, %.2437791913
  %scevgep914 = getelementptr i8, ptr %scevgep912, i64 %i.iu ; 2 uses
  br label %.lr.ph776

.lr.ph776:                                        ; preds = %.lr.ph776.preheader, %bb.br
  %.039.i775 = phi ptr [ %i.iw, %bb.br ], [ %i.is, %.lr.ph776.preheader ] ; 4 uses
  %i.iv = load i8, ptr %.039.i775, align 1, !tbaa !100
  switch i8 %i.iv, label %bb.br [
    i8 47, label %.critedge.i
    i8 126, label %.critedge.i
  ]

bb.br:                                            ; preds = %.lr.ph776
  %i.iw = getelementptr inbounds nuw i8, ptr %.039.i775, i64 1 ; 2 uses
  %exitcond915.not = icmp eq ptr %i.iw, %scevgep914
  br i1 %exitcond915.not, label %.critedge.i, label %.lr.ph776, !llvm.loop !28

.critedge.i:                                      ; preds = %bb.br, %.lr.ph776, %.lr.ph776, %yyjson_mut_obj_add.exit303
  %.039.i.lcssa = phi ptr [ %i.is, %yyjson_mut_obj_add.exit303 ], [ %.039.i775, %.lr.ph776 ], [ %.039.i775, %.lr.ph776 ], [ %scevgep914, %bb.br ] ; 9 uses
  %.039.i.lcssa917 = ptrtoaddr ptr %.039.i.lcssa to i64
  %i.ix = icmp eq ptr %.039.i.lcssa, %i.b
  br i1 %i.ix, label %.critedge53.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i
  %i.iy = load i8, ptr %.039.i.lcssa, align 1, !tbaa !100
  %.not601 = icmp eq i8 %i.iy, 126
  br i1 %.not601, label %.preheader611, label %.critedge53.i, !prof !45

.preheader611:                                    ; preds = %bb.bs
  %i.iz = icmp ult ptr %.039.i.lcssa, %i.b
  br i1 %i.iz, label %.lr.ph784.preheader, label %.critedge2.i

.lr.ph784.preheader:                              ; preds = %.preheader611
  %scevgep916 = getelementptr i8, ptr %.039.i.lcssa, i64 %i.c
  %i.ja = sub i64 0, %.039.i.lcssa917
  %scevgep918 = getelementptr i8, ptr %scevgep916, i64 %i.ja ; 2 uses
  br label %.lr.ph784

.critedge53.i:                                    ; preds = %bb.bs, %.critedge.i
  %i.jb = ptrtoint ptr %.039.i.lcssa to i64
  %i.jc = ptrtoint ptr %i.is to i64
  %i.jd = sub i64 %i.jb, %i.jc
  br label %ptr_next_token.exit

.lr.ph784:                                        ; preds = %.lr.ph784.preheader, %bb.bx
  %.0.i783 = phi i64 [ %.1.i, %bb.bx ], [ 0, %.lr.ph784.preheader ] ; 3 uses
  %.140.i782 = phi ptr [ %i.jf, %bb.bx ], [ %.039.i.lcssa, %.lr.ph784.preheader ] ; 4 uses
  %i.je = load i8, ptr %.140.i782, align 1, !tbaa !100 ; 2 uses
  %.not49.i = icmp eq i8 %i.je, 47
  br i1 %.not49.i, label %.critedge2.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph784
  %i.jf = getelementptr inbounds nuw i8, ptr %.140.i782, i64 1 ; 4 uses
  %i.jg = icmp eq i8 %i.je, 126
  br i1 %i.jg, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.jh = icmp eq ptr %i.jf, %i.b
  br i1 %i.jh, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ji = load i8, ptr %i.jf, align 1, !tbaa !100
  %i.jj = and i8 %i.ji, -2
  %switch.i = icmp eq i8 %i.jj, 48
  br i1 %switch.i, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.jk = add i64 %.0.i783, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.1.i = phi i64 [ %i.jk, %bb.bw ], [ %.0.i783, %bb.bt ] ; 2 uses
  %exitcond919.not = icmp eq ptr %i.jf, %scevgep918
  br i1 %exitcond919.not, label %.critedge2.i, label %.lr.ph784, !llvm.loop !29

.critedge2.i:                                     ; preds = %bb.bx, %.lr.ph784, %.preheader611
  %.140.i.lcssa = phi ptr [ %.039.i.lcssa, %.preheader611 ], [ %.140.i782, %.lr.ph784 ], [ %scevgep918, %bb.bx ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %.preheader611 ], [ %.0.i783, %.lr.ph784 ], [ %.1.i, %bb.bx ] ; 2 uses
  %i.jl = ptrtoint ptr %.140.i.lcssa to i64
  %i.jm = ptrtoint ptr %i.is to i64
  %i.jn = add i64 %.0.i.lcssa, %i.jm
  %i.jo = sub i64 %i.jl, %i.jn
  br label %ptr_next_token.exit

ptr_next_token.exit:                              ; preds = %.critedge53.i, %.critedge2.i
  %.3438 = phi ptr [ %.039.i.lcssa, %.critedge53.i ], [ %.140.i.lcssa, %.critedge2.i ] ; 2 uses
  %.4432 = phi i64 [ %i.jd, %.critedge53.i ], [ %i.jo, %.critedge2.i ] ; 2 uses
  %.4427 = phi i64 [ 0, %.critedge53.i ], [ %.0.i.lcssa, %.critedge2.i ] ; 2 uses
  %.not228 = icmp eq ptr %.3438, %i.b
  br i1 %.not228, label %.loopexit.loopexit, label %bb.ay, !llvm.loop !450

bb.by:                                            ; preds = %bb.bv, %bb.bu
  %.not247 = icmp eq ptr %8, null
  br i1 %.not247, label %yyjson_mut_obj_add.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 2, ptr %8, align 8, !tbaa !155
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.32, ptr %i.jp, align 8, !tbaa !156
  %i.jq = ptrtoint ptr %.140.i782 to i64
  %i.jr = ptrtoint ptr %1 to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

.loopexit.loopexit:                               ; preds = %ptr_next_token.exit
  %.pre928 = load i64, ptr %i.hv, align 8, !tbaa !99
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %ptr_next_token.exit265, %ptr_mut_obj_get.exit.thread, %bb.ac
  %i.ju = phi i64 [ %i.af, %bb.ac ], [ %i.af, %ptr_mut_obj_get.exit.thread ], [ %i.fp, %ptr_next_token.exit265 ], [ %.pre928, %.loopexit.loopexit ] ; 11 uses
  %.0419468475 = phi ptr [ %.0419, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ %.0419468474, %ptr_next_token.exit265 ], [ %.0419468474, %.loopexit.loopexit ] ; 8 uses
  %.1417469473 = phi i8 [ %.1417, %bb.ac ], [ %.1417.ph, %ptr_mut_obj_get.exit.thread ], [ %.1417469472, %ptr_next_token.exit265 ], [ %.1417469472, %.loopexit.loopexit ] ; 2 uses
  %.3431 = phi i64 [ %.6434, %bb.ac ], [ %.6434, %ptr_mut_obj_get.exit.thread ], [ %.1429, %ptr_next_token.exit265 ], [ %.4432, %.loopexit.loopexit ] ; 7 uses
  %.3426 = phi i64 [ %.6, %bb.ac ], [ %.6, %ptr_mut_obj_get.exit.thread ], [ %.1424, %ptr_next_token.exit265 ], [ %.4427, %.loopexit.loopexit ] ; 3 uses
  %.4 = phi ptr [ %.1198, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ %.2199, %ptr_next_token.exit265 ], [ null, %.loopexit.loopexit ] ; 9 uses
  %.2195 = phi ptr [ %i.d, %bb.ac ], [ %i.d, %ptr_mut_obj_get.exit.thread ], [ %.0193, %ptr_next_token.exit265 ], [ %i.is, %.loopexit.loopexit ] ; 5 uses
  %.2192 = phi ptr [ %.0197, %bb.ac ], [ %.0197, %ptr_mut_obj_get.exit.thread ], [ %.0190, %ptr_next_token.exit265 ], [ %i.hv, %.loopexit.loopexit ] ; 20 uses
  %.3189 = phi ptr [ null, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ %.0186, %ptr_next_token.exit265 ], [ %.2188, %.loopexit.loopexit ] ; 8 uses
  %.3185 = phi ptr [ null, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ null, %ptr_next_token.exit265 ], [ %.2184, %.loopexit.loopexit ] ; 6 uses
  %.3 = phi ptr [ null, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ %.0180, %ptr_next_token.exit265 ], [ %.2, %.loopexit.loopexit ] ; 8 uses
  %.1 = phi i8 [ %i.ah, %bb.ac ], [ %i.dn, %ptr_mut_obj_get.exit.thread ], [ %.0, %ptr_next_token.exit265 ], [ %.0, %.loopexit.loopexit ]
  %i.jv = lshr i64 %i.ju, 8                       ; 6 uses
  %i.jw = icmp eq i8 %.1, 7
  %.not235 = icmp eq ptr %7, null                 ; 6 uses
  br i1 %i.jw, label %bb.ca, label %bb.df

bb.ca:                                            ; preds = %.loopexit
  br i1 %.not235, label %bb.cb, label %.thread580

bb.cb:                                            ; preds = %bb.ca
  %i.jx = icmp eq ptr %.4, null
  %or.cond3 = or i1 %6, %i.jx
  br i1 %or.cond3, label %bb.cc, label %bb.cu

.thread580:                                       ; preds = %bb.ca
  store ptr %.2192, ptr %7, align 8, !tbaa !159
  %i.jy = icmp eq ptr %.4, null
  %or.cond3581 = or i1 %6, %i.jy
  br i1 %or.cond3581, label %bb.cc, label %bb.cv

bb.cc:                                            ; preds = %.thread580, %bb.cb
  %.not.i289 = icmp eq i64 %.3426, 0
  br i1 %.not.i289, label %bb.cd, label %bb.ci, !prof !62

bb.cd:                                            ; preds = %bb.cc
  %.not605 = icmp eq ptr %4, null
  br i1 %.not605, label %ptr_new_key.exit.thread, label %bb.ce, !prof !45

bb.ce:                                            ; preds = %bb.cd
  %i.jz = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !87
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !86 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %bb.cf, label %unsafe_yyjson_mut_val.exit.i347, !prof !45

bb.cf:                                            ; preds = %bb.ce
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kf = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.jz, ptr noundef nonnull %i.ke, i64 noundef 1)
  br i1 %i.kf, label %.unsafe_yyjson_mut_val.exit.i347_crit_edge, label %ptr_new_key.exit.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i347_crit_edge:       ; preds = %bb.cf
  %.pre931 = load ptr, ptr %i.jz, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i347

unsafe_yyjson_mut_val.exit.i347:                  ; preds = %.unsafe_yyjson_mut_val.exit.i347_crit_edge, %bb.ce
  %i.kg = phi ptr [ %.pre931, %.unsafe_yyjson_mut_val.exit.i347_crit_edge ], [ %i.kc, %bb.ce ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store ptr %i.kh, ptr %i.jz, align 8, !tbaa !86
  %.not.i349.not = icmp eq ptr %i.kg, null
  br i1 %.not.i349.not, label %ptr_new_key.exit.thread, label %bb.cg, !prof !103

bb.cg:                                            ; preds = %unsafe_yyjson_mut_val.exit.i347
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !78
  %i.kl = load ptr, ptr %i.ki, align 8, !tbaa !77 ; 2 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %.not.i21.i351 = icmp ugt i64 %i.ko, %.3431
  br i1 %.not.i21.i351, label %unsafe_yyjson_mut_str_alc.exit.i352, label %bb.ch, !prof !62

bb.ch:                                            ; preds = %bb.cg
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kq = add i64 %.3431, 1
  %i.kr = tail call zeroext i1 @unsafe_yyjson_str_pool_grow(ptr noundef nonnull %i.ki, ptr noundef nonnull %i.kp, i64 noundef %i.kq)
  br i1 %i.kr, label %unsafe_yyjson_mut_str_alc.exit.i352thread-pre-split, label %ptr_new_key.exit.thread, !prof !62

unsafe_yyjson_mut_str_alc.exit.i352thread-pre-split: ; preds = %bb.ch
  %.pr549 = load ptr, ptr %i.ki, align 8, !tbaa !77
  br label %unsafe_yyjson_mut_str_alc.exit.i352

unsafe_yyjson_mut_str_alc.exit.i352:              ; preds = %unsafe_yyjson_mut_str_alc.exit.i352thread-pre-split, %bb.cg
  %i.ks = phi ptr [ %.pr549, %unsafe_yyjson_mut_str_alc.exit.i352thread-pre-split ], [ %i.kl, %bb.cg ] ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.3431 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store ptr %i.ku, ptr %i.ki, align 8, !tbaa !77
  %.not.i.i354 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i354, label %ptr_new_key.exit.thread, label %unsafe_yyjson_mut_strncpy.exit.i355.thread, !prof !103

unsafe_yyjson_mut_strncpy.exit.i355.thread:       ; preds = %unsafe_yyjson_mut_str_alc.exit.i352
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ks, ptr nonnull align 1 %.2195, i64 %.3431, i1 false)
  store i8 0, ptr %i.kt, align 1, !tbaa !100
  br label %ptr_new_key.exit.thread572

bb.ci:                                            ; preds = %bb.cc
  %i.kv = getelementptr inbounds nuw i8, ptr %.2195, i64 %.3431
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %.3426
  %i.kx = add i64 %.3426, %.3431                  ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !78
  %i.lb = load ptr, ptr %i.ky, align 8, !tbaa !77 ; 2 uses
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %.not.i329 = icmp ugt i64 %i.le, %i.kx
  br i1 %.not.i329, label %unsafe_yyjson_mut_str_alc.exit331, label %bb.cj, !prof !62

bb.cj:                                            ; preds = %bb.ci
  %i.lf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lg = add i64 %i.kx, 1
  %i.lh = tail call zeroext i1 @unsafe_yyjson_str_pool_grow(ptr noundef nonnull %i.ky, ptr noundef nonnull %i.lf, i64 noundef %i.lg)
  br i1 %i.lh, label %unsafe_yyjson_mut_str_alc.exit331thread-pre-split, label %ptr_new_key.exit.thread, !prof !62

unsafe_yyjson_mut_str_alc.exit331thread-pre-split: ; preds = %bb.cj
  %.pr561 = load ptr, ptr %i.ky, align 8, !tbaa !77
  br label %unsafe_yyjson_mut_str_alc.exit331

unsafe_yyjson_mut_str_alc.exit331:                ; preds = %unsafe_yyjson_mut_str_alc.exit331thread-pre-split, %bb.ci
  %i.li = phi ptr [ %.pr561, %unsafe_yyjson_mut_str_alc.exit331thread-pre-split ], [ %i.lb, %bb.ci ] ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.kx
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  store ptr %i.lk, ptr %i.ky, align 8, !tbaa !77
  %.not29.i = icmp eq ptr %i.li, null
  br i1 %.not29.i, label %ptr_new_key.exit.thread, label %.lr.ph818, !prof !103

.lr.ph818:                                        ; preds = %unsafe_yyjson_mut_str_alc.exit331, %bb.cl
  %.0.i290817 = phi ptr [ %i.lr, %bb.cl ], [ %i.li, %unsafe_yyjson_mut_str_alc.exit331 ] ; 2 uses
  %.026.i816 = phi ptr [ %i.lq, %bb.cl ], [ %.2195, %unsafe_yyjson_mut_str_alc.exit331 ] ; 3 uses
  %i.ll = load i8, ptr %.026.i816, align 1, !tbaa !100 ; 2 uses
  %.not30.i291 = icmp eq i8 %i.ll, 126
  br i1 %.not30.i291, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph818
  %i.lm = getelementptr inbounds nuw i8, ptr %.026.i816, i64 1 ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !100
  %i.lo = icmp eq i8 %i.ln, 48
  %i.lp = select i1 %i.lo, i8 126, i8 47
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph818
  %storemerge.i = phi i8 [ %i.lp, %bb.ck ], [ %i.ll, %.lr.ph818 ]
  %.1.i292 = phi ptr [ %i.lm, %bb.ck ], [ %.026.i816, %.lr.ph818 ]
  store i8 %storemerge.i, ptr %.0.i290817, align 1, !tbaa !100
  %i.lq = getelementptr inbounds nuw i8, ptr %.1.i292, i64 1 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i290817, i64 1 ; 2 uses
  %i.ls = icmp ult ptr %i.lq, %i.kw
  br i1 %i.ls, label %.lr.ph818, label %._crit_edge819, !llvm.loop !449

._crit_edge819:                                   ; preds = %bb.cl
  store i8 0, ptr %i.lr, align 1, !tbaa !100
  %.not604 = icmp eq ptr %4, null
  br i1 %.not604, label %ptr_new_key.exit.thread, label %bb.cm, !prof !45

bb.cm:                                            ; preds = %._crit_edge819
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !87
  %i.lw = load ptr, ptr %i.lt, align 8, !tbaa !86 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %bb.cn, label %unsafe_yyjson_mut_val.exit.i365, !prof !45

bb.cn:                                            ; preds = %bb.cm
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lz = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.lt, ptr noundef nonnull %i.ly, i64 noundef 1)
  br i1 %i.lz, label %.unsafe_yyjson_mut_val.exit.i365_crit_edge, label %ptr_new_key.exit.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i365_crit_edge:       ; preds = %bb.cn
  %.pre930 = load ptr, ptr %i.lt, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i365

unsafe_yyjson_mut_val.exit.i365:                  ; preds = %.unsafe_yyjson_mut_val.exit.i365_crit_edge, %bb.cm
  %i.ma = phi ptr [ %.pre930, %.unsafe_yyjson_mut_val.exit.i365_crit_edge ], [ %i.lw, %bb.cm ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store ptr %i.mb, ptr %i.lt, align 8, !tbaa !86
  %.not.i367.not = icmp eq ptr %i.ma, null
  br i1 %.not.i367.not, label %ptr_new_key.exit.thread, label %ptr_new_key.exit.thread572, !prof !103

ptr_new_key.exit.thread:                          ; preds = %bb.ch, %unsafe_yyjson_mut_str_alc.exit.i352, %bb.cn, %unsafe_yyjson_mut_val.exit.i365, %bb.cj, %bb.cf, %unsafe_yyjson_mut_val.exit.i347, %unsafe_yyjson_mut_str_alc.exit331, %bb.cd, %._crit_edge819
  %.not240 = icmp eq ptr %8, null
  br i1 %.not240, label %yyjson_mut_obj_add.exit, label %bb.co

bb.co:                                            ; preds = %ptr_new_key.exit.thread
  store i32 6, ptr %8, align 8, !tbaa !155
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.34, ptr %i.mc, align 8, !tbaa !156
  %i.md = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.md, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

ptr_new_key.exit.thread572:                       ; preds = %unsafe_yyjson_mut_val.exit.i365, %unsafe_yyjson_mut_strncpy.exit.i355.thread
  %.sink1115 = phi ptr [ %i.kg, %unsafe_yyjson_mut_strncpy.exit.i355.thread ], [ %i.ma, %unsafe_yyjson_mut_val.exit.i365 ] ; 7 uses
  %.sink1111 = phi ptr [ %i.ks, %unsafe_yyjson_mut_strncpy.exit.i355.thread ], [ %i.li, %unsafe_yyjson_mut_val.exit.i365 ]
  %i.me = shl i64 %.3431, 8
  %i.mf = or disjoint i64 %i.me, 5
  store i64 %i.mf, ptr %.sink1115, align 8, !tbaa !99
  %i.mg = getelementptr inbounds nuw i8, ptr %.sink1115, i64 8
  store ptr %.sink1111, ptr %i.mg, align 8, !tbaa !100
  br i1 %.not235, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %ptr_new_key.exit.thread572
  %.not237 = icmp eq i64 %i.jv, 0
  br i1 %.not237, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mh = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !100
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.mj = phi ptr [ %i.mi, %bb.cq ], [ %.sink1115, %bb.cp ]
  %i.mk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !160
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %ptr_new_key.exit.thread572
  %.not.i307 = icmp eq i64 %i.jv, 0
  br i1 %.not.i307, label %unsafe_yyjson_mut_obj_add.exit308, label %bb.ct, !prof !45

bb.ct:                                            ; preds = %bb.cs
  %i.ml = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !100
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !104
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !104
  store ptr %.sink1115, ptr %i.mp, align 8, !tbaa !104
  br label %unsafe_yyjson_mut_obj_add.exit308

unsafe_yyjson_mut_obj_add.exit308:                ; preds = %bb.cs, %bb.ct
  %.sink920 = phi ptr [ %i.mq, %bb.ct ], [ %.sink1115, %bb.cs ]
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sink920, ptr %i.mr, align 8, !tbaa !104
  %i.ms = getelementptr inbounds nuw i8, ptr %.sink1115, i64 16
  store ptr %3, ptr %i.ms, align 8, !tbaa !104
  %i.mt = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  store ptr %.sink1115, ptr %i.mt, align 8, !tbaa !100
  %i.mu = load i64, ptr %.2192, align 8, !tbaa !99
  %i.mv = and i64 %i.mu, 255
  %i.mw = and i64 %i.ju, -256
  %i.mx = add i64 %i.mw, 256
  %i.my = or disjoint i64 %i.mv, %i.mx
  store i64 %i.my, ptr %.2192, align 8, !tbaa !99
  br label %.critedge253

bb.cu:                                            ; preds = %bb.cb
  %i.mz = getelementptr inbounds nuw i8, ptr %.0419468475, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !104
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !104
  br label %yyjson_mut_is_obj.exit314

bb.cv:                                            ; preds = %.thread580
  %i.nd = getelementptr inbounds nuw i8, ptr %.0419468475, i64 16
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !104
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !104
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0419468475, ptr %i.nh, align 8, !tbaa !160
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.4, ptr %i.ni, align 8, !tbaa !161
  br label %yyjson_mut_is_obj.exit314

yyjson_mut_is_obj.exit314:                        ; preds = %bb.cu, %bb.cv
  %i.nj = phi ptr [ %i.nc, %bb.cu ], [ %i.ng, %bb.cv ] ; 8 uses
  %i.nk = and i64 %i.ju, 7
  %i.nl = icmp ne i64 %i.nk, 7
  %.not.i322 = icmp eq ptr %i.nj, null
  %or.cond597 = select i1 %i.nl, i1 true, i1 %.not.i322, !prof !122
  br i1 %or.cond597, label %.critedge253, label %bb.cw, !prof !122

bb.cw:                                            ; preds = %yyjson_mut_is_obj.exit314
  %i.nm = load i64, ptr %i.nj, align 8, !tbaa !99 ; 2 uses
  %i.nn = and i64 %i.nm, 7
  %.not602 = icmp eq i64 %i.nn, 5
  br i1 %.not602, label %yyjson_mut_is_obj.exit, label %.critedge253, !prof !137

yyjson_mut_is_obj.exit:                           ; preds = %bb.cw
  %i.no = lshr i64 %i.nm, 8                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.jv, 0
  br i1 %.not.i.i, label %yyjson_mut_obj_iter_next.exit.thread.thread, label %yyjson_mut_obj_iter_next.exit.lr.ph

yyjson_mut_obj_iter_next.exit.lr.ph:              ; preds = %yyjson_mut_is_obj.exit
  %i.np = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !100
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.ns = icmp eq ptr %3, null
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  br label %yyjson_mut_obj_iter_next.exit

yyjson_mut_obj_iter_next.exit:                    ; preds = %yyjson_mut_obj_iter_next.exit.lr.ph, %yyjson_mut_obj_iter_remove.exit
  %i.nv = phi i64 [ %i.ju, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %i.ou, %yyjson_mut_obj_iter_remove.exit ] ; 5 uses
  %.0.i309811 = phi i8 [ 0, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %.1.i310, %yyjson_mut_obj_iter_remove.exit ] ; 5 uses
  %.sroa.18.1810 = phi ptr [ %i.nq, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %.sroa.18.2, %yyjson_mut_obj_iter_remove.exit ] ; 3 uses
  %.sroa.11.1809 = phi i64 [ %i.jv, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %.sroa.11.2, %yyjson_mut_obj_iter_remove.exit ] ; 6 uses
  %.sroa.0.1808 = phi i64 [ 0, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %.sroa.0.2, %yyjson_mut_obj_iter_remove.exit ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.18.1810, i64 16 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !104 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !104 ; 7 uses
  %i.oa = add nuw i64 %.sroa.0.1808, 1            ; 4 uses
  %.not26.i = icmp eq ptr %i.nz, null
  br i1 %.not26.i, label %yyjson_mut_obj_iter_next.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %yyjson_mut_obj_iter_next.exit
  %i.ob = load i64, ptr %i.nz, align 8, !tbaa !99
  %i.oc = lshr i64 %i.ob, 8
  %i.od = icmp eq i64 %i.oc, %i.no
  br i1 %i.od, label %unsafe_yyjson_equals_strn.exit, label %yyjson_mut_obj_iter_remove.exit

unsafe_yyjson_equals_strn.exit:                   ; preds = %bb.cx
  %i.oe = load ptr, ptr %i.nr, align 8, !tbaa !100
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !100
  %bcmp.i = tail call i32 @bcmp(ptr %i.og, ptr %i.oe, i64 %i.no)
  %i.oh = icmp eq i32 %bcmp.i, 0
  br i1 %i.oh, label %bb.cy, label %yyjson_mut_obj_iter_remove.exit

bb.cy:                                            ; preds = %unsafe_yyjson_equals_strn.exit
  %i.oi = trunc nuw i8 %.0.i309811 to i1
  %or.cond.not.i = or i1 %i.ns, %i.oi
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nz, i64 16 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !104
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !104 ; 2 uses
  br i1 %or.cond.not.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store ptr %i.om, ptr %i.nt, align 8, !tbaa !104
  store ptr %3, ptr %i.oj, align 8, !tbaa !104
  br label %yyjson_mut_obj_iter_remove.exit

bb.da:                                            ; preds = %bb.cy
  %i.on = icmp eq i64 %i.oa, %.sroa.11.1809
  br i1 %i.on, label %bb.db, label %bb.dc, !prof !45

bb.db:                                            ; preds = %bb.da
  store ptr %.sroa.18.1810, ptr %i.nu, align 8, !tbaa !100
  %.pre929 = load ptr, ptr %i.nw, align 8, !tbaa !104
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.oo = phi ptr [ %.pre929, %bb.db ], [ %i.nx, %bb.da ]
  %i.op = add i64 %.sroa.11.1809, -1              ; 2 uses
  %i.oq = and i64 %i.nv, 255
  %i.or = shl i64 %i.op, 8
  %i.os = or disjoint i64 %i.oq, %i.or            ; 2 uses
  store i64 %i.os, ptr %.2192, align 8, !tbaa !99
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store ptr %i.om, ptr %i.ot, align 8, !tbaa !104
  br label %yyjson_mut_obj_iter_remove.exit

yyjson_mut_obj_iter_remove.exit:                  ; preds = %bb.cx, %bb.dc, %bb.cz, %unsafe_yyjson_equals_strn.exit
  %i.ou = phi i64 [ %i.os, %bb.dc ], [ %i.nv, %bb.cz ], [ %i.nv, %unsafe_yyjson_equals_strn.exit ], [ %i.nv, %bb.cx ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.1808, %bb.dc ], [ %i.oa, %bb.cz ], [ %i.oa, %unsafe_yyjson_equals_strn.exit ], [ %i.oa, %bb.cx ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %i.op, %bb.dc ], [ %.sroa.11.1809, %bb.cz ], [ %.sroa.11.1809, %unsafe_yyjson_equals_strn.exit ], [ %.sroa.11.1809, %bb.cx ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.1810, %bb.dc ], [ %i.nz, %bb.cz ], [ %i.nz, %unsafe_yyjson_equals_strn.exit ], [ %i.nz, %bb.cx ]
  %.1.i310 = phi i8 [ %.0.i309811, %bb.dc ], [ 1, %bb.cz ], [ %.0.i309811, %unsafe_yyjson_equals_strn.exit ], [ %.0.i309811, %bb.cx ] ; 2 uses
  %i.ov = icmp ult i64 %.sroa.0.2, %.sroa.11.2
  br i1 %i.ov, label %yyjson_mut_obj_iter_next.exit, label %yyjson_mut_obj_iter_next.exit.thread, !llvm.loop !34

yyjson_mut_obj_iter_next.exit.thread:             ; preds = %yyjson_mut_obj_iter_next.exit, %yyjson_mut_obj_iter_remove.exit
  %i.ow = phi i64 [ %i.nv, %yyjson_mut_obj_iter_next.exit ], [ %i.ou, %yyjson_mut_obj_iter_remove.exit ] ; 2 uses
  %.sroa.11.1.lcssa.ph = phi i64 [ %.sroa.11.1809, %yyjson_mut_obj_iter_next.exit ], [ %.sroa.11.2, %yyjson_mut_obj_iter_remove.exit ] ; 2 uses
  %.0.i309.lcssa.ph = phi i8 [ %.0.i309811, %yyjson_mut_obj_iter_next.exit ], [ %.1.i310, %yyjson_mut_obj_iter_remove.exit ]
  %i.ox = trunc nuw i8 %.0.i309.lcssa.ph to i1
  %i.oy = icmp eq ptr %3, null
  %or.cond4.not.i = or i1 %i.oy, %i.ox
  br i1 %or.cond4.not.i, label %.critedge253, label %bb.dd

yyjson_mut_obj_iter_next.exit.thread.thread:      ; preds = %yyjson_mut_is_obj.exit
  %i.oz = icmp eq ptr %3, null
  br i1 %i.oz, label %.critedge253, label %unsafe_yyjson_mut_obj_add.exit.i

bb.dd:                                            ; preds = %yyjson_mut_obj_iter_next.exit.thread
  %.not.i29.i = icmp eq i64 %.sroa.11.1.lcssa.ph, 0
  br i1 %.not.i29.i, label %unsafe_yyjson_mut_obj_add.exit.i, label %bb.de, !prof !125

bb.de:                                            ; preds = %bb.dd
  %i.pa = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !100
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !104
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16 ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !104
  store ptr %i.nj, ptr %i.pe, align 8, !tbaa !104
  %i.pg = shl i64 %.sroa.11.1.lcssa.ph, 8
  %i.ph = add i64 %i.pg, 256
  br label %unsafe_yyjson_mut_obj_add.exit.i

unsafe_yyjson_mut_obj_add.exit.i:                 ; preds = %yyjson_mut_obj_iter_next.exit.thread.thread, %bb.dd, %bb.de
  %i.pi = phi i64 [ %i.ow, %bb.de ], [ %i.ow, %bb.dd ], [ %i.ju, %yyjson_mut_obj_iter_next.exit.thread.thread ]
end_hunk_0
begin_hunk_1_@yyjson_merge_patch:bb.a
  %i.ci = load i64, ptr %.1159, align 8, !tbaa !99
  %i.cj = lshr i64 %i.ci, 8                       ; 2 uses
  %i.ck = load i64, ptr %.058113125, align 8, !tbaa !99 ; 2 uses
  %i.cl = and i64 %i.ck, 7
  %i.cm = icmp ne i64 %i.cl, 7
  %i.cn = icmp eq ptr %i.ch, null
  %.not205 = or i1 %i.cn, %i.cm
  %i.co = lshr i64 %i.ck, 8                       ; 2 uses
  %.not.i84.not154 = icmp eq i64 %i.co, 0
  %or.cond199 = or i1 %.not205, %.not.i84.not154
  br i1 %or.cond199, label %yyjson_mut_is_obj.exit71, label %.lr.ph156, !prof !138

.lr.ph156:                                        ; preds = %yyjson_is_obj.exit.i82, %unsafe_yyjson_equals_strn.exit94.thread
  %.in166 = phi i64 [ %i.cp, %unsafe_yyjson_equals_strn.exit94.thread ], [ %i.co, %yyjson_is_obj.exit.i82 ]
  %.011.i155 = phi ptr [ %i.dd, %unsafe_yyjson_equals_strn.exit94.thread ], [ %.058.sroa.phi96112127, %yyjson_is_obj.exit.i82 ] ; 5 uses
  %i.cp = add nsw i64 %.in166, -1                 ; 2 uses
  %i.cq = load i64, ptr %.011.i155, align 8, !tbaa !99
  %i.cr = lshr i64 %i.cq, 8
  %i.cs = icmp eq i64 %i.cr, %i.cj
  br i1 %i.cs, label %unsafe_yyjson_equals_strn.exit94, label %unsafe_yyjson_equals_strn.exit94.thread

unsafe_yyjson_equals_strn.exit94:                 ; preds = %.lr.ph156
  %i.ct = getelementptr inbounds nuw i8, ptr %.011.i155, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !100
  %bcmp.i93 = call i32 @bcmp(ptr %i.cu, ptr nonnull %i.ch, i64 %i.cj)
  %i.cv = icmp eq i32 %bcmp.i93, 0
  br i1 %i.cv, label %bb.k, label %unsafe_yyjson_equals_strn.exit94.thread

unsafe_yyjson_equals_strn.exit94.thread:          ; preds = %.lr.ph156, %unsafe_yyjson_equals_strn.exit94
  %i.cw = getelementptr inbounds nuw i8, ptr %.011.i155, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !99
  %i.cy = and i64 %i.cx, 6
  %i.cz = icmp eq i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw i8, ptr %.011.i155, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !100
  %i.dc = select i1 %i.cz, i64 %i.db, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dc
  %.not.i84.not = icmp eq i64 %i.cp, 0
  br i1 %.not.i84.not, label %yyjson_mut_is_obj.exit71, label %.lr.ph156, !llvm.loop !35

bb.k:                                             ; preds = %unsafe_yyjson_equals_strn.exit94
  %i.de = getelementptr inbounds nuw i8, ptr %.011.i155, i64 16
  br label %yyjson_mut_is_obj.exit71

yyjson_mut_is_obj.exit71:                         ; preds = %unsafe_yyjson_equals_strn.exit94.thread, %yyjson_is_obj.exit.i82, %bb.k
  %.1.i83 = phi ptr [ %i.de, %bb.k ], [ null, %yyjson_is_obj.exit.i82 ], [ null, %unsafe_yyjson_equals_strn.exit94.thread ]
  %i.df = call ptr @yyjson_merge_patch(ptr noundef nonnull %0, ptr noundef %.1.i83, ptr noundef nonnull %.0160) ; 3 uses
  %i.dg = load i64, ptr %i.l, align 8, !tbaa !99  ; 4 uses
  %i.dh = and i64 %i.dg, 7
  %i.di = icmp ne i64 %i.dh, 7
  %.not.i73 = icmp eq ptr %i.cf, null
  %or.cond145 = select i1 %i.di, i1 true, i1 %.not.i73, !prof !122
  br i1 %or.cond145, label %yyjson_mut_obj.exit.thread, label %bb.l, !prof !122

bb.l:                                             ; preds = %yyjson_mut_is_obj.exit71
  %i.dj = load i64, ptr %i.cf, align 8, !tbaa !99
  %i.dk = and i64 %i.dj, 7
  %i.dl = icmp eq i64 %i.dk, 5
  %i.dm = icmp ne ptr %i.df, null
  %spec.select.i = select i1 %i.dl, i1 %i.dm, i1 false, !prof !62
  br i1 %spec.select.i, label %bb.m, label %yyjson_mut_obj.exit.thread, !prof !137

bb.m:                                             ; preds = %bb.l
  %.not.i67 = icmp ult i64 %i.dg, 256
  br i1 %.not.i67, label %yyjson_mut_obj_add.exit, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  %i.dn = load ptr, ptr %i.cb, align 8, !tbaa !100
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !104
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !104
  store ptr %i.cf, ptr %i.dq, align 8, !tbaa !104
  br label %yyjson_mut_obj_add.exit

yyjson_mut_obj_add.exit:                          ; preds = %bb.m, %bb.n
  %.sink170 = phi ptr [ %i.dr, %bb.n ], [ %i.cf, %bb.m ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store ptr %.sink170, ptr %i.ds, align 8, !tbaa !104
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.df, ptr %i.dt, align 8, !tbaa !104
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !100
  %i.du = and i64 %i.dg, 255
  %i.dv = and i64 %i.dg, -256
  %i.dw = add i64 %i.dv, 256
  %i.dx = or disjoint i64 %i.dw, %i.du
  store i64 %i.dx, ptr %i.l, align 8, !tbaa !99
  %.pre171 = load i64, ptr %.0160, align 8, !tbaa !99
  br label %bb.o

bb.o:                                             ; preds = %yyjson_mut_obj_add.exit, %bb.j
  %i.dy = phi i64 [ %.pre171, %yyjson_mut_obj_add.exit ], [ %i.cc, %bb.j ]
  %i.dz = add nuw nsw i64 %.156158, 1             ; 2 uses
  %i.ea = and i64 %i.dy, 6
  %i.eb = icmp eq i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw i8, ptr %.1159, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !100
  %i.ee = select i1 %i.eb, i64 %i.ed, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0160, i64 %i.ee ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %exitcond169.not = icmp eq i64 %i.dz, %i.bz
  br i1 %exitcond169.not, label %yyjson_mut_obj.exit.thread, label %bb.j, !llvm.loop !456

yyjson_mut_obj.exit.thread:                       ; preds = %yyjson_mut_is_obj.exit, %bb.g, %bb.o, %bb.l, %yyjson_mut_is_obj.exit71, %yyjson_is_obj.exit.i, %yyjson_obj_size.exit, %bb.d, %unsafe_yyjson_mut_val.exit.i, %bb.b, %yyjson_is_obj.exit77.thread
  %.057 = phi ptr [ %i.d, %yyjson_is_obj.exit77.thread ], [ null, %unsafe_yyjson_mut_val.exit.i ], [ %i.l, %yyjson_obj_size.exit ], [ null, %bb.d ], [ null, %bb.b ], [ null, %yyjson_mut_is_obj.exit71 ], [ %i.l, %yyjson_is_obj.exit.i ], [ %i.l, %bb.o ], [ null, %bb.l ], [ null, %bb.g ], [ null, %yyjson_mut_is_obj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret ptr %.057
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_mut_merge_patch(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 5 uses
  %.sroa.5 = alloca i64, align 8                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.not.i80 = icmp eq ptr %2, null
  %.060.sroa.gep115 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not.i80, label %yyjson_mut_val_mut_copy.exit, label %yyjson_mut_is_obj.exit81, !prof !168

yyjson_mut_is_obj.exit81:                         ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8, !tbaa !99
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 7
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.b, !prof !137

bb.b:                                             ; preds = %yyjson_mut_is_obj.exit81
  br i1 %.not.i, label %yyjson_mut_val_mut_copy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc ptr @unsafe_yyjson_mut_val_mut_copy(ptr noundef %0, ptr noundef nonnull readonly %2)
  br label %yyjson_mut_val_mut_copy.exit

bb.d:                                             ; preds = %yyjson_mut_is_obj.exit81
  br i1 %.not.i, label %yyjson_mut_val_mut_copy.exit, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.f, label %unsafe_yyjson_mut_val.exit.i, !prof !45

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j, i64 noundef 1)
  br i1 %i.k, label %.unsafe_yyjson_mut_val.exit.i_crit_edge, label %yyjson_mut_val_mut_copy.exit, !prof !62

.unsafe_yyjson_mut_val.exit.i_crit_edge:          ; preds = %bb.f
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i

unsafe_yyjson_mut_val.exit.i:                     ; preds = %.unsafe_yyjson_mut_val.exit.i_crit_edge, %bb.e
  %i.l = phi ptr [ %.pre, %.unsafe_yyjson_mut_val.exit.i_crit_edge ], [ %i.h, %bb.e ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.e, align 8, !tbaa !86
  %.not9.i.not = icmp eq ptr %i.l, null
  br i1 %.not9.i.not, label %yyjson_mut_val_mut_copy.exit, label %bb.g, !prof !105

bb.g:                                             ; preds = %unsafe_yyjson_mut_val.exit.i
  store i64 7, ptr %i.l, align 8, !tbaa !102
  store i64 0, ptr %.sroa.0, align 8
  store i64 0, ptr %.sroa.5, align 8
  %.not.i78 = icmp eq ptr %1, null
  br i1 %.not.i78, label %.thread127, label %yyjson_mut_is_obj.exit79

yyjson_mut_is_obj.exit79:                         ; preds = %bb.g
  %i.n = load i64, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 7
  br i1 %i.p, label %yyjson_mut_obj_size.exit87, label %.thread127

.thread127:                                       ; preds = %yyjson_mut_is_obj.exit79, %bb.g
  store i64 7, ptr %.sroa.0, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !100
  store i64 %i.r, ptr %.sroa.5, align 8, !tbaa !100
  br label %yyjson_mut_is_obj.exit.i

yyjson_mut_obj_size.exit87:                       ; preds = %yyjson_mut_is_obj.exit79
  %i.s = lshr i64 %i.n, 8                         ; 2 uses
  %.not65 = icmp eq i64 %i.s, 0
  br i1 %.not65, label %yyjson_mut_is_obj.exit.i, label %bb.h

bb.h:                                             ; preds = %yyjson_mut_obj_size.exit87
  %i.t = load ptr, ptr %.060.sroa.gep115, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 3 uses
  %.not66 = icmp eq ptr %i.x, null
  br i1 %.not66, label %yyjson_mut_is_obj.exit.i.i91.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104
  br label %yyjson_mut_is_obj.exit.i.i91.lr.ph

yyjson_mut_is_obj.exit.i.i91.lr.ph:               ; preds = %bb.h, %bb.i
  %.ph256 = phi ptr [ null, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %yyjson_mut_is_obj.exit.i.i91

yyjson_mut_is_obj.exit.i.i91:                     ; preds = %yyjson_mut_is_obj.exit.i.i91.lr.ph, %bb.p
  %.055212 = phi ptr [ %.ph256, %yyjson_mut_is_obj.exit.i.i91.lr.ph ], [ %i.bv, %bb.p ] ; 3 uses
  %.056211 = phi ptr [ %i.x, %yyjson_mut_is_obj.exit.i.i91.lr.ph ], [ %i.bt, %bb.p ] ; 3 uses
  %.057210 = phi i64 [ 0, %yyjson_mut_is_obj.exit.i.i91.lr.ph ], [ %i.br, %bb.p ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.056211, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 2 uses
  %i.ae = load i64, ptr %.056211, align 8, !tbaa !99
  %i.af = lshr i64 %i.ae, 8                       ; 2 uses
  %i.ag = load i64, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %i.ai = icmp eq i64 %i.ah, 7
  br i1 %i.ai, label %yyjson_mut_obj_size.exit.i92, label %yyjson_mut_val_mut_copy.exit107

yyjson_mut_obj_size.exit.i92:                     ; preds = %yyjson_mut_is_obj.exit.i.i91
  %i.aj = lshr i64 %i.ag, 8                       ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = icmp ne ptr %i.ad, null
  %i.am = and i1 %i.al, %i.ak
  br i1 %i.am, label %bb.j, label %yyjson_mut_val_mut_copy.exit107, !prof !137

bb.j:                                             ; preds = %yyjson_mut_obj_size.exit.i92
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !100
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %unsafe_yyjson_equals_strn.exit.backedge
  %.in = phi i64 [ %i.aj, %bb.j ], [ %i.ao, %unsafe_yyjson_equals_strn.exit.backedge ]
  %.pn = phi ptr [ %i.an, %bb.j ], [ %.011.i99209, %unsafe_yyjson_equals_strn.exit.backedge ]
  %.pn.i97206.pn.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.pn.i97206.pn = load ptr, ptr %.pn.i97206.pn.in, align 8, !tbaa !104
  %.011.i99209.in = getelementptr inbounds nuw i8, ptr %.pn.i97206.pn, i64 16
  %.011.i99209 = load ptr, ptr %.011.i99209.in, align 8, !tbaa !104 ; 4 uses
  %i.ao = add nsw i64 %.in, -1                    ; 2 uses
  %i.ap = load i64, ptr %.011.i99209, align 8, !tbaa !99
  %i.aq = lshr i64 %i.ap, 8
  %i.ar = icmp eq i64 %i.aq, %i.af
  br i1 %i.ar, label %.split, label %unsafe_yyjson_equals_strn.exit.backedge

.split:                                           ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i99209, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !100
  %bcmp.i = tail call i32 @bcmp(ptr %i.at, ptr nonnull %i.ad, i64 %i.af)
  %i.au = icmp eq i32 %bcmp.i, 0
  br i1 %i.au, label %yyjson_mut_obj_getn.exit102, label %unsafe_yyjson_equals_strn.exit.backedge

unsafe_yyjson_equals_strn.exit.backedge:          ; preds = %.split, %bb.k
  %.not.i100 = icmp eq i64 %i.ao, 0
  br i1 %.not.i100, label %yyjson_mut_val_mut_copy.exit107, label %bb.k, !llvm.loop !36

yyjson_mut_obj_getn.exit102:                      ; preds = %.split
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i99209, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104
  %.not69 = icmp eq ptr %i.aw, null
  br i1 %.not69, label %yyjson_mut_val_mut_copy.exit107, label %bb.p

yyjson_mut_val_mut_copy.exit107:                  ; preds = %unsafe_yyjson_equals_strn.exit.backedge, %yyjson_mut_obj_getn.exit102, %yyjson_mut_obj_size.exit.i92, %yyjson_mut_is_obj.exit.i.i91
  %i.ax = tail call fastcc ptr @unsafe_yyjson_mut_val_mut_copy(ptr noundef %0, ptr noundef nonnull readonly %.056211) ; 6 uses
  %.not199 = icmp eq ptr %.055212, null
  br i1 %.not199, label %yyjson_mut_is_obj.exit, label %bb.l

bb.l:                                             ; preds = %yyjson_mut_val_mut_copy.exit107
  %i.ay = tail call fastcc ptr @unsafe_yyjson_mut_val_mut_copy(ptr noundef %0, ptr noundef nonnull readonly %.055212)
  br label %yyjson_mut_is_obj.exit

yyjson_mut_is_obj.exit:                           ; preds = %yyjson_mut_val_mut_copy.exit107, %bb.l
  %.0.i109 = phi ptr [ %i.ay, %bb.l ], [ null, %yyjson_mut_val_mut_copy.exit107 ] ; 3 uses
  %i.az = load i64, ptr %i.l, align 8, !tbaa !99  ; 4 uses
  %i.ba = and i64 %i.az, 7
  %i.bb = icmp ne i64 %i.ba, 7
  %.not.i82 = icmp eq ptr %i.ax, null
  %or.cond = select i1 %i.bb, i1 true, i1 %.not.i82, !prof !122
  br i1 %or.cond, label %yyjson_mut_val_mut_copy.exit, label %bb.m, !prof !122

bb.m:                                             ; preds = %yyjson_mut_is_obj.exit
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !99
  %i.bd = and i64 %i.bc, 7
  %i.be = icmp eq i64 %i.bd, 5
  %i.bf = icmp ne ptr %.0.i109, null
  %spec.select.i70 = select i1 %i.be, i1 %i.bf, i1 false, !prof !62
  br i1 %spec.select.i70, label %bb.n, label %yyjson_mut_val_mut_copy.exit, !prof !137

bb.n:                                             ; preds = %bb.m
  %.not.i72 = icmp ult i64 %i.az, 256
  br i1 %.not.i72, label %yyjson_mut_obj_add.exit71, label %bb.o, !prof !45

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !104
  store ptr %i.ax, ptr %i.bj, align 8, !tbaa !104
  br label %yyjson_mut_obj_add.exit71

yyjson_mut_obj_add.exit71:                        ; preds = %bb.n, %bb.o
  %.sink = phi ptr [ %i.bk, %bb.o ], [ %i.ax, %bb.n ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i109, i64 16
  store ptr %.sink, ptr %i.bl, align 8, !tbaa !104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %.0.i109, ptr %i.bm, align 8, !tbaa !104
  store ptr %i.ax, ptr %i.ab, align 8, !tbaa !100
  %i.bn = and i64 %i.az, 255
  %i.bo = and i64 %i.az, -256
  %i.bp = add i64 %i.bo, 256
  %i.bq = or disjoint i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.l, align 8, !tbaa !99
  br label %bb.p

bb.p:                                             ; preds = %yyjson_mut_obj_add.exit71, %yyjson_mut_obj_getn.exit102
  %i.br = add nuw nsw i64 %.057210, 1             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.055212, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !104 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !104
  %exitcond.not = icmp eq i64 %i.br, %i.s
  br i1 %exitcond.not, label %yyjson_mut_is_obj.exit.i, label %yyjson_mut_is_obj.exit.i.i91, !llvm.loop !457

yyjson_mut_is_obj.exit.i:                         ; preds = %bb.p, %yyjson_mut_obj_size.exit87, %.thread127
  %.060.sroa.phi114132173 = phi ptr [ %.sroa.5, %.thread127 ], [ %.060.sroa.gep115, %yyjson_mut_obj_size.exit87 ], [ %.060.sroa.gep115, %bb.p ]
  %.060133171 = phi ptr [ %.sroa.0, %.thread127 ], [ %1, %yyjson_mut_obj_size.exit87 ], [ %1, %bb.p ]
  %i.bw = load i64, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %i.by = icmp eq i64 %i.bx, 7
  br i1 %i.by, label %yyjson_mut_obj_size.exit, label %yyjson_mut_val_mut_copy.exit

yyjson_mut_obj_size.exit:                         ; preds = %yyjson_mut_is_obj.exit.i
  %i.bz = lshr i64 %i.bw, 8                       ; 2 uses
  %.not67 = icmp eq i64 %i.bz, 0
  br i1 %.not67, label %yyjson_mut_val_mut_copy.exit, label %bb.q

bb.q:                                             ; preds = %yyjson_mut_obj_size.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !100
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !104
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104 ; 3 uses
  %.not68 = icmp eq ptr %i.cf, null
  br i1 %.not68, label %.lr.ph, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.q
  %i.ci = phi ptr [ %i.ch, %bb.r ], [ null, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.ab
  %.0221 = phi ptr [ %i.ci, %.lr.ph ], [ %i.eg, %bb.ab ] ; 3 uses
  %.1220 = phi ptr [ %i.cf, %.lr.ph ], [ %i.ee, %bb.ab ] ; 4 uses
  %.158219 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %bb.ab ]
  %i.ck = load i64, ptr %.0221, align 8, !tbaa !99
  %i.cl = and i64 %i.ck, 7
  %i.cm = icmp eq i64 %i.cl, 2
  br i1 %i.cm, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not200 = icmp eq ptr %.1220, null
  br i1 %.not200, label %yyjson_mut_val_mut_copy.exit113, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = tail call fastcc ptr @unsafe_yyjson_mut_val_mut_copy(ptr noundef %0, ptr noundef nonnull readonly %.1220)
  br label %yyjson_mut_val_mut_copy.exit113

yyjson_mut_val_mut_copy.exit113:                  ; preds = %bb.t, %bb.u
  %.0.i112 = phi ptr [ %i.cn, %bb.u ], [ null, %bb.t ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1220, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !100 ; 2 uses
  %i.cq = load i64, ptr %.1220, align 8, !tbaa !99
  %i.cr = lshr i64 %i.cq, 8                       ; 2 uses
  %i.cs = load i64, ptr %.060133171, align 8, !tbaa !99 ; 2 uses
  %i.ct = and i64 %i.cs, 7
  %i.cu = icmp eq i64 %i.ct, 7
  br i1 %i.cu, label %yyjson_mut_obj_size.exit.i, label %yyjson_mut_is_obj.exit77

yyjson_mut_obj_size.exit.i:                       ; preds = %yyjson_mut_val_mut_copy.exit113
  %i.cv = lshr i64 %i.cs, 8                       ; 2 uses
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = icmp ne ptr %i.cp, null
  %i.cy = and i1 %i.cx, %i.cw
  br i1 %i.cy, label %bb.v, label %yyjson_mut_is_obj.exit77, !prof !137

bb.v:                                             ; preds = %yyjson_mut_obj_size.exit.i
  %i.cz = load ptr, ptr %.060.sroa.phi114132173, align 8, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %unsafe_yyjson_equals_strn.exit104.backedge
  %.in227 = phi i64 [ %i.cv, %bb.v ], [ %i.da, %unsafe_yyjson_equals_strn.exit104.backedge ]
  %.pn228 = phi ptr [ %i.cz, %bb.v ], [ %.011.i218, %unsafe_yyjson_equals_strn.exit104.backedge ]
  %.pn.i215.pn.in = getelementptr inbounds nuw i8, ptr %.pn228, i64 16
  %.pn.i215.pn = load ptr, ptr %.pn.i215.pn.in, align 8, !tbaa !104
  %.011.i218.in = getelementptr inbounds nuw i8, ptr %.pn.i215.pn, i64 16
  %.011.i218 = load ptr, ptr %.011.i218.in, align 8, !tbaa !104 ; 4 uses
end_hunk_1
