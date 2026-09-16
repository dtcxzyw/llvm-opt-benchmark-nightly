Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/named_scope_format_parser?download=true
inline.NumInlined: 1120
inline.NumDeleted: 444
begin_hunk_0_@_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_:bb.a
  br i1 %i.ap, label %..thread_crit_edge, label %bb.p

..thread_crit_edge:                               ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.l
  %i.aq = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.aj, %bb.l ] ; 2 uses
  %i.ar = icmp eq i8 %i.w, %i.aq
  %i.as = icmp eq i8 %i.aq, 61
  %or.cond = or i1 %i.ar, %i.as
  br i1 %or.cond, label %.thread.thread, label %bb.p

.thread.thread:                                   ; preds = %bb.m, %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 2
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split

bb.p:                                             ; preds = %.thread, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 1
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split

bb.q:                                             ; preds = %bb.h
  %i.av = ptrtoint ptr %.0.i105.lcssa to i64
  %i.aw = sub i64 %i.a, %i.av                     ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 1
  br i1 %i.ax, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = icmp eq i8 %i.az, 62
  br i1 %i.ba, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.not = icmp eq i64 %i.aw, 2
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bd = icmp eq i8 %i.bc, 42
  br i1 %i.bd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sink = phi i64 [ 2, %bb.u ], [ 3, %bb.t ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 %.sink
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split

bb.w:                                             ; preds = %bb.q, %bb.r, %bb.h, %bb.h, %bb.h, %bb.h
  %i.bf = ptrtoint ptr %.0.i105.lcssa to i64
  %i.bg = sub i64 %i.a, %i.bf
  %i.bh = icmp sgt i64 %i.bg, 1
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14  ; 2 uses
  %i.bk = icmp eq i8 %i.w, %i.bj
  %i.bl = icmp eq i8 %i.bj, 61
  %or.cond96 = or i1 %i.bk, %i.bl
  br i1 %or.cond96, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sink162 = phi i64 [ 1, %bb.y ], [ 2, %bb.x ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 %.sink162
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split

bb.aa:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.bn = ptrtoint ptr %.0.i105.lcssa to i64
  %i.bo = sub i64 %i.a, %i.bn
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !14
  %i.bs = icmp eq i8 %i.br, 61
  br i1 %i.bs, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sink163 = phi i64 [ 1, %bb.ac ], [ 2, %bb.ab ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 %.sink163
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split

bb.ae:                                            ; preds = %bb.h, %bb.h, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 1
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split

bb.af:                                            ; preds = %bb.h
  %i.bv = ptrtoint ptr %.0.i105.lcssa to i64
  %i.bw = sub i64 %i.a, %i.bv                     ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 1
  br i1 %i.bx, label %bb.ag, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104

bb.ag:                                            ; preds = %bb.af
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !14
  %i.ca = icmp eq i8 %i.bz, 34
  br i1 %i.ca, label %bb.ah, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104

bb.ah:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i105.lcssa, i64 2 ; 3 uses
  %i.cc = icmp ult ptr %i.cb, %1
  br i1 %i.cc, label %.lr.ph122.preheader, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit

.lr.ph122.preheader:                              ; preds = %bb.ah
  %scevgep136 = getelementptr i8, ptr %.0.i105.lcssa, i64 %i.bw
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.ai
  %.0.i121 = phi ptr [ %i.cf, %bb.ai ], [ %i.cb, %.lr.ph122.preheader ] ; 3 uses
  %i.cd = load i8, ptr %.0.i121, align 1, !tbaa !14
  %i.ce = icmp eq i8 %i.cd, 32
  br i1 %i.ce, label %bb.ai, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit

bb.ai:                                            ; preds = %.lr.ph122
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i121, i64 1 ; 2 uses
  %exitcond137.not = icmp eq ptr %i.cf, %1
  br i1 %exitcond137.not, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit, label %.lr.ph122, !llvm.loop !0

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit: ; preds = %.lr.ph122, %bb.ai, %bb.ah
  %.0.i.lcssa = phi ptr [ %i.cb, %bb.ah ], [ %scevgep136, %bb.ai ], [ %.0.i121, %.lr.ph122 ] ; 5 uses
  %i.cg = icmp ult ptr %.0.i.lcssa, %1
  br i1 %i.cg, label %.lr.ph127.preheader, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split

.lr.ph127.preheader:                              ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit
  %.0.i.lcssa138 = ptrtoaddr ptr %.0.i.lcssa to i64
  %i.ch = sub i64 %i.a, %.0.i.lcssa138
  %scevgep139 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.ch
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread
  %.0126 = phi ptr [ %i.co, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread ], [ %.0.i.lcssa, %.lr.ph127.preheader ] ; 3 uses
  %i.ci = load i8, ptr %.0126, align 1, !tbaa !14 ; 3 uses
  %i.cj = add i8 %i.ci, -48
  %or.cond.i = icmp ult i8 %i.cj, 10
  br i1 %or.cond.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph127
  %i.ck = icmp eq i8 %i.ci, 95
  %i.cl = and i8 %i.ci, -33
  %i.cm = add i8 %i.cl, -65
  %i.cn = icmp ult i8 %i.cm, 26
  %or.cond110 = or i1 %i.ck, %i.cn
  br i1 %or.cond110, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread: ; preds = %.lr.ph127, %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %.0126, i64 1 ; 2 uses
  %exitcond140.not = icmp eq ptr %i.co, %1
  br i1 %exitcond140.not, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split, label %.lr.ph127, !llvm.loop !136

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split: ; preds = %bb.aj, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, %bb.h, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit, %bb.n, %bb.p, %.thread.thread, %bb.ae, %bb.ad, %bb.z, %bb.v, %bb.j, %bb.i
  %.sink164 = phi ptr [ %i.ab, %bb.i ], [ %i.ae, %bb.j ], [ %i.be, %bb.v ], [ %i.bm, %bb.z ], [ %i.bt, %bb.ad ], [ %i.bu, %bb.ae ], [ %i.ao, %bb.n ], [ %.0.i105.lcssa, %bb.h ], [ %i.at, %.thread.thread ], [ %i.au, %bb.p ], [ %.0.i.lcssa, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit ], [ %scevgep139, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread ], [ %.0126, %bb.aj ]
  store ptr %.sink164, ptr %3, align 8, !tbaa !18
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104: ; preds = %.preheader112, %.lr.ph172, %.preheader, %.lr.ph176, %.preheader112.preheader, %.preheader.preheader, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split, %bb.d, %bb.e, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit106, %bb.ag, %bb.af, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.preheader112.preheader ], [ false, %bb.af ], [ false, %.preheader.preheader ], [ false, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit106 ], [ false, %bb.ag ], [ true, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit104.sink.split ], [ false, %bb.e ], [ false, %.preheader ], [ false, %.lr.ph176 ], [ false, %.lr.ph172 ], [ false, %.preheader112 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous19parse_function_nameERPKcS7_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %.not65 = icmp eq ptr %i.e, %i.f
  br i1 %.not65, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.02867 = phi ptr [ %.024.lcssa.i, %bb.s ], [ %i.f, %bb.a ] ; 10 uses
  %.03166 = phi ptr [ %i.i, %bb.s ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr null, ptr %i.d, align 8, !tbaa !18
  %i.g = call noundef ptr @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_opening_parenthesisEPKcS6_RS6_S7_(ptr noundef %.03166, ptr noundef %.02867, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 3 uses
  %i.h = icmp eq ptr %i.g, %.02867
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 6 uses
  %.not3850.i = icmp eq ptr %i.i, %.02867
  br i1 %.not3850.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.n
  %.0 = phi i8 [ %.248, %bb.n ], [ 0, %bb.b ]     ; 7 uses
  %.02453.i = phi ptr [ %.4.i, %bb.n ], [ %i.i, %bb.b ] ; 5 uses
  %.02652.i = phi i32 [ %.228.i, %bb.n ], [ 1, %bb.b ] ; 6 uses
  %.02951.i = phi i1 [ %.231.i, %bb.n ], [ false, %bb.b ] ; 7 uses
  %i.j = load i8, ptr %.02453.i, align 1, !tbaa !14 ; 3 uses
  switch i8 %i.j, label %bb.l [
    i8 41, label %bb.c
    i8 40, label %bb.d
    i8 60, label %bb.e
    i8 111, label %bb.k
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = add i32 %.02652.i, -1                    ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit, label %bb.m

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = add i32 %.02652.i, 1
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.02453.i, i64 1 ; 2 uses
  br label %.outer.split.i.i.a

.outer.split.i.i.a:                               ; preds = %.outer.i.i, %bb.e
  %.012.ph22.i.i = phi ptr [ %i.n, %bb.e ], [ %i.t, %.outer.i.i ]
  %.013.ph21.i.i = phi i32 [ 1, %bb.e ], [ %.114.i.i, %.outer.i.i ] ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.outer.split.i.i.a
  %.012.i.i = phi ptr [ %i.s, %bb.j ], [ %.012.ph22.i.i, %.outer.split.i.i.a ] ; 5 uses
  %.not.i.i.a = icmp eq ptr %.012.i.i, %.02867
  br i1 %.not.i.i.a, label %bb.n, label %bb.g, !llvm.loop !137

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %.012.i.i, align 1, !tbaa !14
  switch i8 %i.o, label %.outer.i.i [
    i8 62, label %bb.h
    i8 60, label %bb.i
    i8 111, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.p = add i32 %.013.ph21.i.i, -1
  br label %.outer.i.i

bb.i:                                             ; preds = %bb.g
  %i.q = add i32 %.013.ph21.i.i, 1
  br label %.outer.i.i

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.r = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef nonnull %i.n, ptr noundef %.02867, ptr noundef nonnull %.012.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.s = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.r, label %bb.f, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.j, %bb.g, %bb.i, %bb.h
  %.114.i.i = phi i32 [ %i.q, %bb.i ], [ %i.p, %bb.h ], [ %.013.ph21.i.i, %bb.g ], [ %.013.ph21.i.i, %bb.j ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not23.i.i = icmp eq i32 %.114.i.i, 0
  br i1 %.not23.i.i, label %bb.n, label %.outer.split.i.i.a, !llvm.loop !1

bb.k:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.u = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef nonnull %i.i, ptr noundef %.02867, ptr noundef nonnull %.02453.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.v = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %i.u, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.w = icmp eq i8 %i.j, 32                      ; 2 uses
  %or.cond.not.i = or i1 %.02951.i, %i.w
  %spec.select = select i1 %or.cond.not.i, i8 %.0, i8 %i.j
  %i.x = xor i1 %i.w, true
  %spec.select54 = or i1 %.02951.i, %i.x
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d, %bb.c
  %.147 = phi i8 [ %spec.select, %bb.l ], [ %.0, %bb.d ], [ %.0, %bb.c ]
  %.130.i = phi i1 [ %spec.select54, %bb.l ], [ %.02951.i, %bb.d ], [ %.02951.i, %bb.c ]
  %.127.i = phi i32 [ %.02652.i, %bb.l ], [ %i.m, %bb.d ], [ %i.k, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.02453.i, i64 1
  br label %bb.n

bb.n:                                             ; preds = %.outer.i.i, %bb.f, %bb.m, %bb.k
  %.248 = phi i8 [ %.147, %bb.m ], [ %.0, %bb.k ], [ %.0, %bb.f ], [ %.0, %.outer.i.i ] ; 2 uses
  %.231.i = phi i1 [ %.130.i, %bb.m ], [ %.02951.i, %bb.k ], [ %.02951.i, %bb.f ], [ %.02951.i, %.outer.i.i ]
  %.228.i = phi i32 [ %.127.i, %bb.m ], [ %.02652.i, %bb.k ], [ %.02652.i, %bb.f ], [ %.02652.i, %.outer.i.i ]
  %.4.i = phi ptr [ %i.y, %bb.m ], [ %i.v, %bb.k ], [ %.012.i.i, %bb.f ], [ %i.t, %.outer.i.i ] ; 3 uses
  %.not38.i = icmp eq ptr %.4.i, %.02867
  br i1 %.not38.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit, label %.lr.ph.i

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit: ; preds = %bb.n, %bb.c
  %.349.ph = phi i8 [ %.248, %bb.n ], [ %.0, %bb.c ]
  %.024.lcssa.i.ph = phi ptr [ %.4.i, %bb.n ], [ %.02453.i, %bb.c ]
  %i.z = icmp eq i8 %.349.ph, 38
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit: ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit, %bb.b
  %.349 = phi i1 [ false, %bb.b ], [ %i.z, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit ]
  %.024.lcssa.i = phi ptr [ %i.i, %bb.b ], [ %.024.lcssa.i.ph, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit ] ; 4 uses
  %i.aa = icmp eq ptr %.024.lcssa.i, %.02867
  br i1 %i.aa, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit
  %.0.i111 = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 1 ; 2 uses
  %i.ab = icmp ult ptr %.0.i111, %.02867
  br i1 %i.ab, label %.lr.ph113, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit

.preheader:                                       ; preds = %.lr.ph113
  %.0.i = getelementptr inbounds nuw i8, ptr %.0.i112, i64 1 ; 2 uses
  %i.ac = icmp ult ptr %.0.i, %.02867
  br i1 %i.ac, label %.lr.ph113, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit, !llvm.loop !0

.lr.ph113:                                        ; preds = %.preheader.preheader, %.preheader
  %.0.i112 = phi ptr [ %.0.i, %.preheader ], [ %.0.i111, %.preheader.preheader ] ; 2 uses
  %i.ad = load i8, ptr %.0.i112, align 1, !tbaa !14 ; 3 uses
  %i.ae = icmp eq i8 %i.ad, 32
  br i1 %i.ae, label %.preheader, label %bb.o, !llvm.loop !0

bb.o:                                             ; preds = %.lr.ph113
  %i.af = icmp eq i8 %i.ad, 40
  %i.ag = icmp eq i8 %i.ad, 91
  %or.cond = select i1 %i.ag, i1 %.349, i1 false
  %or.cond99 = select i1 %i.af, i1 true, i1 %or.cond
  br i1 %or.cond99, label %bb.s, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit, !llvm.loop !138

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit: ; preds = %bb.o, %.preheader.preheader, %.preheader
  br i1 %2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %.not46 = icmp eq ptr %i.ah, null
  br i1 %.not46, label %.thread, label %bb.r

bb.q:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %.not45 = icmp eq ptr %i.ai, null
  br i1 %.not45, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge = phi ptr [ %i.ah, %bb.p ], [ %i.ai, %bb.q ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !18
  store ptr %i.g, ptr %1, align 8, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit, %bb.p, %bb.r, %bb.q
  %.338.ph = phi i1 [ false, %bb.q ], [ true, %bb.r ], [ false, %bb.p ], [ false, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.loopexit

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not = icmp eq ptr %i.i, %.024.lcssa.i
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.s, %bb.a, %.thread
  %.4 = phi i1 [ %.338.ph, %.thread ], [ false, %bb.a ], [ false, %bb.s ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_opening_parenthesisEPKcS6_RS6_S7_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %.not91 = icmp eq ptr %0, %1
  br i1 %.not91, label %.thread79, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %spec.store.select1.si.unfold.false
  %.05693 = phi ptr [ %i.ae, %spec.store.select1.si.unfold.false ], [ %0, %bb.a ] ; 11 uses
  %.05892 = phi i32 [ %.462, %spec.store.select1.si.unfold.false ], [ 0, %bb.a ] ; 7 uses
  %i.c = load i8, ptr %.05693, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.c, label %bb.u [
    i8 40, label %bb.b
    i8 60, label %bb.c
    i8 32, label %spec.store.select1.si.unfold.false
    i8 58, label %bb.k
    i8 111, label %bb.o
  ]

.lr.ph.jt3:                                       ; preds = %spec.store.select.si.unfold.false.jt3
  %i.d = load i8, ptr %.5.jt3, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.d, label %bb.u [
    i8 40, label %bb.b
    i8 60, label %bb.c
    i8 32, label %spec.store.select1.si.unfold.false
    i8 58, label %bb.k
    i8 111, label %bb.p
  ]

.lr.ph.jt1:                                       ; preds = %bb.ab
  %i.e = load i8, ptr %.5.jt1, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.e, label %bb.u [
    i8 40, label %bb.b
    i8 60, label %bb.c
    i8 32, label %bb.j
    i8 58, label %bb.k
    i8 111, label %bb.q
  ]

bb.b:                                             ; preds = %.lr.ph.jt3, %.lr.ph.jt1, %.lr.ph
  %.05892118 = phi i32 [ 3, %.lr.ph.jt3 ], [ 3, %.lr.ph.jt1 ], [ %.05892, %.lr.ph ]
  %.05693109 = phi ptr [ %.5.jt3, %.lr.ph.jt3 ], [ %.5.jt1, %.lr.ph.jt1 ], [ %.05693, %.lr.ph ]
  %i.f = icmp eq i32 %.05892118, 0
  %..056 = select i1 %i.f, ptr %1, ptr %.05693109
  br label %.thread79

bb.c:                                             ; preds = %.lr.ph.jt3, %.lr.ph.jt1, %.lr.ph
  %.05892119 = phi i32 [ 3, %.lr.ph.jt3 ], [ %.563.jt1, %.lr.ph.jt1 ], [ %.05892, %.lr.ph ] ; 2 uses
  %.05693110 = phi ptr [ %.5.jt3, %.lr.ph.jt3 ], [ %.5.jt1, %.lr.ph.jt1 ], [ %.05693, %.lr.ph ]
  %i.g = icmp eq i32 %.05892119, 0
  br i1 %i.g, label %.thread79, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.05693110, i64 1 ; 2 uses
  br label %.outer.split.i.a

.outer.split.i.a:                                 ; preds = %bb.d, %.outer.i
  %.012.ph22.i = phi ptr [ %i.h, %bb.d ], [ %i.n, %.outer.i ]
  %.013.ph21.i = phi i32 [ 1, %bb.d ], [ %.114.i, %.outer.i ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.outer.split.i.a, %bb.i
  %.012.i = phi ptr [ %i.m, %bb.i ], [ %.012.ph22.i, %.outer.split.i.a ] ; 5 uses
  %.not.i.a = icmp eq ptr %.012.i, %1
  br i1 %.not.i.a, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i8, ptr %.012.i, align 1, !tbaa !14
  switch i8 %i.i, label %.outer.i [
    i8 62, label %bb.g
    i8 60, label %bb.h
    i8 111, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = add i32 %.013.ph21.i, -1
  br label %.outer.i

bb.h:                                             ; preds = %bb.f
  %i.k = add i32 %.013.ph21.i, 1
  br label %.outer.i

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef nonnull %i.h, ptr noundef %1, ptr noundef nonnull %.012.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.m = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.l, label %bb.e, label %.outer.i

.outer.i:                                         ; preds = %bb.i, %bb.f, %bb.h, %bb.g
  %.114.i = phi i32 [ %i.k, %bb.h ], [ %i.j, %bb.g ], [ %.013.ph21.i, %bb.f ], [ %.013.ph21.i, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %.not23.i = icmp eq i32 %.114.i, 0
  br i1 %.not23.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit, label %.outer.split.i.a, !llvm.loop !1

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit: ; preds = %.outer.i, %bb.e
  %.us-phi.i = phi ptr [ %.012.i, %bb.e ], [ %i.n, %.outer.i ] ; 2 uses
  %.not72 = icmp eq i32 %.05892119, 4
  br i1 %.not72, label %bb.ab, label %spec.store.select.si.unfold.false.jt3

bb.j:                                             ; preds = %.lr.ph.jt1
  %i.o = icmp eq i32 %.563.jt1, 1
  br i1 %i.o, label %bb.z, label %spec.store.select1.si.unfold.false

bb.k:                                             ; preds = %.lr.ph.jt3, %.lr.ph.jt1, %.lr.ph
  %.05892121 = phi i32 [ 3, %.lr.ph.jt3 ], [ %.563.jt1, %.lr.ph.jt1 ], [ %.05892, %.lr.ph ] ; 3 uses
  %.05693112 = phi ptr [ %.5.jt3, %.lr.ph.jt3 ], [ %.5.jt1, %.lr.ph.jt1 ], [ %.05693, %.lr.ph ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05693112, i64 1 ; 4 uses
  %.not69 = icmp eq ptr %i.p, %1
  br i1 %.not69, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = icmp eq i8 %i.q, 58
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %.05693112, i64 2 ; 2 uses
  switch i32 %.05892121, label %spec.store.select2.si.unfold.false.jt1 [
    i32 0, label %.thread127
    i32 4, label %bb.ab
  ]

.thread127:                                       ; preds = %bb.m
  store ptr %.05693112, ptr %2, align 8, !tbaa !18
  br label %spec.store.select2.si.unfold.false.jt1

bb.n:                                             ; preds = %bb.l, %bb.k
  %.not70 = icmp eq i32 %.05892121, 4
  br i1 %.not70, label %bb.ab, label %spec.store.select.si.unfold.false.jt3

bb.o:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.t = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.05693, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.t, label %bb.r, label %bb.t

bb.p:                                             ; preds = %.lr.ph.jt3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.u = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.5.jt3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.u, label %bb.s, label %bb.t

bb.q:                                             ; preds = %.lr.ph.jt1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.v = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.5.jt1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.v, label %.thread, label %bb.t

bb.r:                                             ; preds = %bb.o
  switch i32 %.05892, label %.thread [
    i32 3, label %bb.s
    i32 0, label %bb.s
  ]

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.r
  %.05693114 = phi ptr [ %.05693, %bb.r ], [ %.05693, %bb.r ], [ %.5.jt3, %bb.p ] ; 2 uses
  store ptr %.05693114, ptr %2, align 8, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.s, %bb.r
  %.05693115 = phi ptr [ %.05693, %bb.r ], [ %.05693114, %bb.s ], [ %.5.jt1, %bb.q ]
  store ptr %.05693115, ptr %3, align 8, !tbaa !18
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.ab

bb.t:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.05892122 = phi i32 [ 3, %bb.p ], [ %.563.jt1, %bb.q ], [ %.05892, %bb.o ]
  %.05693113 = phi ptr [ %.5.jt3, %bb.p ], [ %.5.jt1, %bb.q ], [ %.05693, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.jt3, %.lr.ph.jt1, %bb.t, %.lr.ph
  %i.x = phi i8 [ %i.d, %.lr.ph.jt3 ], [ %i.e, %.lr.ph.jt1 ], [ 111, %bb.t ], [ %i.c, %.lr.ph ] ; 5 uses
  %.05892117 = phi i32 [ 3, %.lr.ph.jt3 ], [ %.563.jt1, %.lr.ph.jt1 ], [ %.05892122, %bb.t ], [ %.05892, %.lr.ph ] ; 3 uses
  %.05693108 = phi ptr [ %.5.jt3, %.lr.ph.jt3 ], [ %.5.jt1, %.lr.ph.jt1 ], [ %.05693113, %bb.t ], [ %.05693, %.lr.ph ] ; 4 uses
  %.not73 = icmp eq i32 %.05892117, 4
  br i1 %.not73, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.y = add i8 %i.x, -48
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.z = add i8 %i.x, -65
  %or.cond5.i = icmp ult i8 %i.z, 26
  %i.aa = icmp eq i8 %i.x, 95
  %or.cond8.i = or i1 %i.aa, %or.cond5.i
  br i1 %or.cond8.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit: ; preds = %bb.w
  %i.ab = add i8 %i.x, -97
  %i.ac = icmp ult i8 %i.ab, 26
  %i.ad = icmp eq i8 %i.x, 126
  %or.cond7 = or i1 %i.ad, %i.ac
  br i1 %or.cond7, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, label %bb.z

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread: ; preds = %bb.v, %bb.w, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit
  switch i32 %.05892117, label %bb.y [
    i32 1, label %bb.aa
    i32 3, label %bb.x
    i32 0, label %bb.x
  ]

bb.x:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread
  store ptr %.05693108, ptr %2, align 8, !tbaa !18
  br label %bb.y

bb.y:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, %bb.x
  store ptr %.05693108, ptr %3, align 8, !tbaa !18
  br label %bb.aa

spec.store.select1.si.unfold.false:               ; preds = %.lr.ph, %.lr.ph.jt3, %bb.j
  %.462 = phi i32 [ %.563.jt1, %bb.j ], [ %.05892, %.lr.ph ], [ 3, %.lr.ph.jt3 ]
  %.05693111126 = phi ptr [ %.5.jt1, %bb.j ], [ %.05693, %.lr.ph ], [ %.5.jt3, %.lr.ph.jt3 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.05693111126, i64 1 ; 3 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %.thread79, label %.lr.ph

bb.z:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit, %bb.j
  %.05693116 = phi ptr [ %.05693108, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit ], [ %.5.jt1, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %.05693116, i64 1
  br label %spec.store.select.si.unfold.false.jt3

bb.aa:                                            ; preds = %bb.u, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, %bb.y
  %.462.jt1 = phi i32 [ 1, %bb.y ], [ %.05892117, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread ], [ 4, %bb.u ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.05693108, i64 1
  br label %bb.ab

spec.store.select2.si.unfold.false.jt1:           ; preds = %bb.m, %.thread127
  br label %bb.ab

spec.store.select.si.unfold.false.jt3:            ; preds = %bb.n, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit, %bb.z
  %.5.jt3 = phi ptr [ %i.af, %bb.z ], [ %.us-phi.i, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit ], [ %i.p, %bb.n ] ; 11 uses
  %.not.jt3 = icmp eq ptr %.5.jt3, %1
  br i1 %.not.jt3, label %.thread79, label %.lr.ph.jt3

bb.ab:                                            ; preds = %bb.m, %spec.store.select2.si.unfold.false.jt1, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit, %bb.n, %.thread, %bb.aa
  %.563.jt1 = phi i32 [ %.462.jt1, %bb.aa ], [ %.05892121, %bb.m ], [ 4, %.thread ], [ 4, %bb.n ], [ 4, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit ], [ 2, %spec.store.select2.si.unfold.false.jt1 ] ; 6 uses
  %.5.jt1 = phi ptr [ %i.ag, %bb.aa ], [ %i.s, %bb.m ], [ %i.w, %.thread ], [ %i.p, %bb.n ], [ %.us-phi.i, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit ], [ %i.s, %spec.store.select2.si.unfold.false.jt1 ] ; 12 uses
  %.not.jt1 = icmp eq ptr %.5.jt1, %1
  br i1 %.not.jt1, label %.thread79, label %.lr.ph.jt1

.thread79:                                        ; preds = %spec.store.select1.si.unfold.false, %bb.c, %bb.ab, %spec.store.select.si.unfold.false.jt3, %bb.a, %bb.b
  %.266 = phi ptr [ %..056, %bb.b ], [ %0, %bb.a ], [ %.5.jt3, %spec.store.select.si.unfold.false.jt3 ], [ %.5.jt1, %bb.ab ], [ %i.ae, %spec.store.select1.si.unfold.false ], [ %1, %bb.c ]
  ret ptr %.266
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost3log11v2_mt_posix11expressions3aux24parse_named_scope_formatEPKcS5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::log::v2_mt_posix::aux::light_function") align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter", align 16 ; 28 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %5 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::literal", align 8 ; 12 uses
  %6 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::scope_name", align 1 ; 4 uses
  %7 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::literal", align 8 ; 12 uses
  %8 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::function_name", align 1 ; 6 uses
  %9 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::literal", align 8 ; 12 uses
  %10 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::function_name", align 1 ; 6 uses
  %11 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::literal", align 8 ; 12 uses
  %12 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::full_file_name", align 1 ; 4 uses
  %13 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::literal", align 8 ; 12 uses
  %14 = alloca %"struct.boost::log::v2_mt_posix::expressions::aux::anonymous::named_scope_formatter<char>::file_name", align 1 ; 4 uses
end_hunk_0
