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

.lr.ph:                                           ; preds = %bb.a, %bb.q
  %.02867 = phi ptr [ %.024.lcssa.i, %bb.q ], [ %i.f, %bb.a ] ; 10 uses
  %.03166 = phi ptr [ %i.i, %bb.q ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr null, ptr %i.d, align 8, !tbaa !18
  %i.g = call noundef ptr @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_opening_parenthesisEPKcS6_RS6_S7_(ptr noundef %.03166, ptr noundef %.02867, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 3 uses
  %i.h = icmp eq ptr %i.g, %.02867
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 6 uses
  %.not3853.i = icmp eq ptr %i.i, %.02867
  br i1 %.not3853.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a
  %.0 = phi i8 [ %.248, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a ], [ 0, %bb.b ] ; 7 uses
  %.02456.i = phi ptr [ %.4.i, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a ], [ %i.i, %bb.b ] ; 5 uses
  %.02655.i = phi i32 [ %.228.i, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a ], [ 1, %bb.b ] ; 6 uses
  %.02954.i = phi i1 [ %.231.i, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a ], [ false, %bb.b ] ; 7 uses
  %i.j = load i8, ptr %.02456.i, align 1, !tbaa !14 ; 3 uses
  switch i8 %i.j, label %bb.k [
    i8 41, label %bb.c
    i8 40, label %bb.d
    i8 60, label %bb.e
    i8 111, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = add i32 %.02655.i, -1                    ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit, label %bb.l

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = add i32 %.02655.i, 1
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.02456.i, i64 1 ; 2 uses
  br label %.outer.split.i.preheader.i

.outer.split.i.preheader.i:                       ; preds = %.loopexit.i.i, %bb.e
  %.012.ph.i52.i = phi ptr [ %i.n, %bb.e ], [ %i.t, %.loopexit.i.i ]
  %.013.ph.i51.i = phi i32 [ 1, %bb.e ], [ %.114.i.i, %.loopexit.i.i ] ; 4 uses
  br label %.outer.split.i.i

.outer.split.i.i:                                 ; preds = %bb.i, %.outer.split.i.preheader.i
  %.012.i.i = phi ptr [ %i.s, %bb.i ], [ %.012.ph.i52.i, %.outer.split.i.preheader.i ] ; 5 uses
  %.not20.i.i = icmp eq ptr %.012.i.i, %.02867
  br i1 %.not20.i.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a, label %bb.f, !llvm.loop !137

bb.f:                                             ; preds = %.outer.split.i.i
  %i.o = load i8, ptr %.012.i.i, align 1, !tbaa !14
  switch i8 %i.o, label %.loopexit.i.i [
    i8 62, label %bb.g
    i8 60, label %bb.h
    i8 111, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = add i32 %.013.ph.i51.i, -1
  br label %.loopexit.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = add i32 %.013.ph.i51.i, 1
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.r = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef nonnull %i.n, ptr noundef %.02867, ptr noundef nonnull %.012.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.s = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.r, label %.outer.split.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.i, %bb.f, %bb.h, %bb.g
  %.114.i.i = phi i32 [ %i.q, %bb.h ], [ %i.p, %bb.g ], [ %.013.ph.i51.i, %bb.f ], [ %.013.ph.i51.i, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq i32 %.114.i.i, 0
  br i1 %.not.i.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a, label %.outer.split.i.preheader.i, !llvm.loop !1

bb.j:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.u = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef nonnull %i.i, ptr noundef %.02867, ptr noundef nonnull %.02456.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.v = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %i.u, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.w = icmp eq i8 %i.j, 32                      ; 2 uses
  %or.cond.not.i = or i1 %.02954.i, %i.w
  %spec.select = select i1 %or.cond.not.i, i8 %.0, i8 %i.j
  %i.x = xor i1 %i.w, true
  %spec.select54 = or i1 %.02954.i, %i.x
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.c
  %.147 = phi i8 [ %spec.select, %bb.k ], [ %.0, %bb.d ], [ %.0, %bb.c ]
  %.130.i = phi i1 [ %spec.select54, %bb.k ], [ %.02954.i, %bb.d ], [ %.02954.i, %bb.c ]
  %.127.i = phi i32 [ %.02655.i, %bb.k ], [ %i.m, %bb.d ], [ %i.k, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.02456.i, i64 1
  br label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a: ; preds = %.loopexit.i.i, %.outer.split.i.i, %bb.l, %bb.j
  %.248 = phi i8 [ %.147, %bb.l ], [ %.0, %bb.j ], [ %.0, %.outer.split.i.i ], [ %.0, %.loopexit.i.i ] ; 2 uses
  %.231.i = phi i1 [ %.130.i, %bb.l ], [ %.02954.i, %bb.j ], [ %.02954.i, %.outer.split.i.i ], [ %.02954.i, %.loopexit.i.i ]
  %.228.i = phi i32 [ %.127.i, %bb.l ], [ %.02655.i, %bb.j ], [ %.02655.i, %.outer.split.i.i ], [ %.02655.i, %.loopexit.i.i ]
  %.4.i = phi ptr [ %i.y, %bb.l ], [ %i.v, %bb.j ], [ %.012.i.i, %.outer.split.i.i ], [ %i.t, %.loopexit.i.i ] ; 3 uses
  %.not38.i = icmp eq ptr %.4.i, %.02867
  br i1 %.not38.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit, label %.lr.ph.i

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit.loopexit: ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a, %bb.c
  %.349.ph = phi i8 [ %.248, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a ], [ %.0, %bb.c ]
  %.024.lcssa.i.ph = phi ptr [ %.4.i, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit.i.a ], [ %.02456.i, %bb.c ]
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
  br i1 %i.ae, label %.preheader, label %bb.m, !llvm.loop !0

bb.m:                                             ; preds = %.lr.ph113
  %i.af = icmp eq i8 %i.ad, 40
  %i.ag = icmp eq i8 %i.ad, 91
  %or.cond = select i1 %i.ag, i1 %.349, i1 false
  %or.cond99 = select i1 %i.af, i1 true, i1 %or.cond
  br i1 %or.cond99, label %bb.q, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit, !llvm.loop !138

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit: ; preds = %bb.m, %.preheader.preheader, %.preheader
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %.not46 = icmp eq ptr %i.ah, null
  br i1 %.not46, label %.thread, label %bb.p

bb.o:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous11skip_spacesEPKcS6_.exit
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %.not45 = icmp eq ptr %i.ai, null
  br i1 %.not45, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge = phi ptr [ %i.ah, %bb.n ], [ %i.ai, %bb.o ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !18
  store ptr %i.g, ptr %1, align 8, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit, %bb.n, %bb.p, %bb.o
  %.338.ph = phi i1 [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.n ], [ false, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_closing_parenthesisEPKcS6_Rc.exit ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not = icmp eq ptr %i.i, %.024.lcssa.i
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.q, %bb.a, %.thread
  %.4 = phi i1 [ %.338.ph, %.thread ], [ false, %bb.a ], [ false, %bb.q ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24find_opening_parenthesisEPKcS6_RS6_S7_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %.not94 = icmp eq ptr %0, %1
  br i1 %.not94, label %.thread79, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %spec.store.select1.si.unfold.false
  %.05696 = phi ptr [ %i.ae, %spec.store.select1.si.unfold.false ], [ %0, %bb.a ] ; 11 uses
  %.05895 = phi i32 [ %.462, %spec.store.select1.si.unfold.false ], [ 0, %bb.a ] ; 7 uses
  %i.c = load i8, ptr %.05696, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.c, label %bb.t [
    i8 40, label %bb.b
    i8 60, label %bb.c
    i8 32, label %spec.store.select1.si.unfold.false
    i8 58, label %bb.j
    i8 111, label %bb.n
  ]

.lr.ph.jt3:                                       ; preds = %spec.store.select.si.unfold.false.jt3
  %i.d = load i8, ptr %.5.jt3, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.d, label %bb.t [
    i8 40, label %bb.b
    i8 60, label %bb.c
    i8 32, label %spec.store.select1.si.unfold.false
    i8 58, label %bb.j
    i8 111, label %bb.o
  ]

.lr.ph.jt1:                                       ; preds = %bb.aa
  %i.e = load i8, ptr %.5.jt1, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.e, label %bb.t [
    i8 40, label %bb.b
    i8 60, label %bb.c
    i8 32, label %bb.i
    i8 58, label %bb.j
    i8 111, label %bb.p
  ]

bb.b:                                             ; preds = %.lr.ph.jt3, %.lr.ph.jt1, %.lr.ph
  %.05895121 = phi i32 [ 3, %.lr.ph.jt3 ], [ 3, %.lr.ph.jt1 ], [ %.05895, %.lr.ph ]
  %.05696112 = phi ptr [ %.5.jt3, %.lr.ph.jt3 ], [ %.5.jt1, %.lr.ph.jt1 ], [ %.05696, %.lr.ph ]
  %i.f = icmp eq i32 %.05895121, 0
  %..056 = select i1 %i.f, ptr %1, ptr %.05696112
  br label %.thread79

bb.c:                                             ; preds = %.lr.ph.jt3, %.lr.ph.jt1, %.lr.ph
  %.05895122 = phi i32 [ 3, %.lr.ph.jt3 ], [ %.563.jt1, %.lr.ph.jt1 ], [ %.05895, %.lr.ph ] ; 2 uses
  %.05696113 = phi ptr [ %.5.jt3, %.lr.ph.jt3 ], [ %.5.jt1, %.lr.ph.jt1 ], [ %.05696, %.lr.ph ]
  %i.g = icmp eq i32 %.05895122, 0
  br i1 %i.g, label %.thread79, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.05696113, i64 1 ; 2 uses
  br label %.outer.split.i.preheader

.outer.split.i.preheader:                         ; preds = %bb.d, %.loopexit.i
  %.012.ph.i93 = phi ptr [ %i.h, %bb.d ], [ %i.n, %.loopexit.i ]
  %.013.ph.i92 = phi i32 [ 1, %bb.d ], [ %.114.i, %.loopexit.i ] ; 4 uses
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.split.i.preheader, %bb.h
  %.012.i = phi ptr [ %i.m, %bb.h ], [ %.012.ph.i93, %.outer.split.i.preheader ] ; 5 uses
  %.not20.i = icmp eq ptr %.012.i, %1
  br i1 %.not20.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit, label %bb.e

bb.e:                                             ; preds = %.outer.split.i
  %i.i = load i8, ptr %.012.i, align 1, !tbaa !14
  switch i8 %i.i, label %.loopexit.i [
    i8 62, label %bb.f
    i8 60, label %bb.g
    i8 111, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = add i32 %.013.ph.i92, -1
  br label %.loopexit.i

bb.g:                                             ; preds = %bb.e
  %i.k = add i32 %.013.ph.i92, 1
  br label %.loopexit.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef nonnull %i.h, ptr noundef %1, ptr noundef nonnull %.012.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.m = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.l, label %.outer.split.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.h, %bb.e, %bb.g, %bb.f
  %.114.i = phi i32 [ %i.k, %bb.g ], [ %i.j, %bb.f ], [ %.013.ph.i92, %bb.e ], [ %.013.ph.i92, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %.not.i = icmp eq i32 %.114.i, 0
  br i1 %.not.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit, label %.outer.split.i.preheader, !llvm.loop !1

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit: ; preds = %.loopexit.i, %.outer.split.i
  %.012.lcssa.split.i = phi ptr [ %.012.i, %.outer.split.i ], [ %i.n, %.loopexit.i ] ; 2 uses
  %.not72 = icmp eq i32 %.05895122, 4
  br i1 %.not72, label %bb.aa, label %spec.store.select.si.unfold.false.jt3

bb.i:                                             ; preds = %.lr.ph.jt1
  %i.o = icmp eq i32 %.563.jt1, 1
  br i1 %i.o, label %bb.y, label %spec.store.select1.si.unfold.false

bb.j:                                             ; preds = %.lr.ph.jt3, %.lr.ph.jt1, %.lr.ph
  %.05895124 = phi i32 [ 3, %.lr.ph.jt3 ], [ %.563.jt1, %.lr.ph.jt1 ], [ %.05895, %.lr.ph ] ; 3 uses
  %.05696115 = phi ptr [ %.5.jt3, %.lr.ph.jt3 ], [ %.5.jt1, %.lr.ph.jt1 ], [ %.05696, %.lr.ph ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05696115, i64 1 ; 4 uses
  %.not69 = icmp eq ptr %i.p, %1
  br i1 %.not69, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = icmp eq i8 %i.q, 58
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %.05696115, i64 2 ; 2 uses
  switch i32 %.05895124, label %spec.store.select2.si.unfold.false.jt1 [
    i32 0, label %.thread130
    i32 4, label %bb.aa
  ]

.thread130:                                       ; preds = %bb.l
  store ptr %.05696115, ptr %2, align 8, !tbaa !18
  br label %spec.store.select2.si.unfold.false.jt1

bb.m:                                             ; preds = %bb.k, %bb.j
  %.not70 = icmp eq i32 %.05895124, 4
  br i1 %.not70, label %bb.aa, label %spec.store.select.si.unfold.false.jt3

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.t = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.05696, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.t, label %bb.q, label %bb.s

bb.o:                                             ; preds = %.lr.ph.jt3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.u = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.5.jt3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.u, label %bb.r, label %bb.s

bb.p:                                             ; preds = %.lr.ph.jt1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.v = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous15detect_operatorEPKcS6_S6_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.5.jt1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.v, label %.thread, label %bb.s

bb.q:                                             ; preds = %bb.n
  switch i32 %.05895, label %.thread [
    i32 3, label %bb.r
    i32 0, label %bb.r
  ]

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.q
  %.05696117 = phi ptr [ %.05696, %bb.q ], [ %.05696, %bb.q ], [ %.5.jt3, %bb.o ] ; 2 uses
  store ptr %.05696117, ptr %2, align 8, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.r, %bb.q
  %.05696118 = phi ptr [ %.05696, %bb.q ], [ %.05696117, %bb.r ], [ %.5.jt1, %bb.p ]
  store ptr %.05696118, ptr %3, align 8, !tbaa !18
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.aa

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.05895125 = phi i32 [ 3, %bb.o ], [ %.563.jt1, %bb.p ], [ %.05895, %bb.n ]
  %.05696116 = phi ptr [ %.5.jt3, %bb.o ], [ %.5.jt1, %bb.p ], [ %.05696, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.jt3, %.lr.ph.jt1, %bb.s, %.lr.ph
  %i.x = phi i8 [ %i.d, %.lr.ph.jt3 ], [ %i.e, %.lr.ph.jt1 ], [ 111, %bb.s ], [ %i.c, %.lr.ph ] ; 5 uses
  %.05895120 = phi i32 [ 3, %.lr.ph.jt3 ], [ %.563.jt1, %.lr.ph.jt1 ], [ %.05895125, %bb.s ], [ %.05895, %.lr.ph ] ; 3 uses
  %.05696111 = phi ptr [ %.5.jt3, %.lr.ph.jt3 ], [ %.5.jt1, %.lr.ph.jt1 ], [ %.05696116, %bb.s ], [ %.05696, %.lr.ph ] ; 4 uses
  %.not73 = icmp eq i32 %.05895120, 4
  br i1 %.not73, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = add i8 %i.x, -48
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.z = add i8 %i.x, -65
  %or.cond5.i = icmp ult i8 %i.z, 26
  %i.aa = icmp eq i8 %i.x, 95
  %or.cond8.i = or i1 %i.aa, %or.cond5.i
  br i1 %or.cond8.i, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit: ; preds = %bb.v
  %i.ab = add i8 %i.x, -97
  %i.ac = icmp ult i8 %i.ab, 26
  %i.ad = icmp eq i8 %i.x, 126
  %or.cond7 = or i1 %i.ad, %i.ac
  br i1 %or.cond7, label %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, label %bb.y

_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread: ; preds = %bb.u, %bb.v, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit
  switch i32 %.05895120, label %bb.x [
    i32 1, label %bb.z
    i32 3, label %bb.w
    i32 0, label %bb.w
  ]

bb.w:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread
  store ptr %.05696111, ptr %2, align 8, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, %bb.w
  store ptr %.05696111, ptr %3, align 8, !tbaa !18
  br label %bb.z

spec.store.select1.si.unfold.false:               ; preds = %.lr.ph, %.lr.ph.jt3, %bb.i
  %.462 = phi i32 [ %.563.jt1, %bb.i ], [ %.05895, %.lr.ph ], [ 3, %.lr.ph.jt3 ]
  %.05696114129 = phi ptr [ %.5.jt1, %bb.i ], [ %.05696, %.lr.ph ], [ %.5.jt3, %.lr.ph.jt3 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.05696114129, i64 1 ; 3 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %.thread79, label %.lr.ph

bb.y:                                             ; preds = %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit, %bb.i
  %.05696119 = phi ptr [ %.05696111, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit ], [ %.5.jt1, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.05696119, i64 1
  br label %spec.store.select.si.unfold.false.jt3

bb.z:                                             ; preds = %bb.t, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread, %bb.x
  %.462.jt1 = phi i32 [ 1, %bb.x ], [ %.05895120, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous17is_name_characterEc.exit.thread ], [ 4, %bb.t ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.05696111, i64 1
  br label %bb.aa

spec.store.select2.si.unfold.false.jt1:           ; preds = %bb.l, %.thread130
  br label %bb.aa

spec.store.select.si.unfold.false.jt3:            ; preds = %bb.m, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit, %bb.y
  %.5.jt3 = phi ptr [ %i.af, %bb.y ], [ %.012.lcssa.split.i, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit ], [ %i.p, %bb.m ] ; 11 uses
  %.not.jt3 = icmp eq ptr %.5.jt3, %1
  br i1 %.not.jt3, label %.thread79, label %.lr.ph.jt3

bb.aa:                                            ; preds = %bb.l, %spec.store.select2.si.unfold.false.jt1, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit, %bb.m, %.thread, %bb.z
  %.563.jt1 = phi i32 [ %.462.jt1, %bb.z ], [ %.05895124, %bb.l ], [ 4, %.thread ], [ 4, %bb.m ], [ 4, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit ], [ 2, %spec.store.select2.si.unfold.false.jt1 ] ; 6 uses
  %.5.jt1 = phi ptr [ %i.ag, %bb.z ], [ %i.s, %bb.l ], [ %i.w, %.thread ], [ %i.p, %bb.m ], [ %.012.lcssa.split.i, %_ZN5boost3log11v2_mt_posix11expressions3aux9anonymous24skip_template_parametersEPKcS6_.exit ], [ %i.s, %spec.store.select2.si.unfold.false.jt1 ] ; 12 uses
  %.not.jt1 = icmp eq ptr %.5.jt1, %1
  br i1 %.not.jt1, label %.thread79, label %.lr.ph.jt1

.thread79:                                        ; preds = %spec.store.select1.si.unfold.false, %bb.c, %bb.aa, %spec.store.select.si.unfold.false.jt3, %bb.a, %bb.b
  %.266 = phi ptr [ %..056, %bb.b ], [ %0, %bb.a ], [ %.5.jt3, %spec.store.select.si.unfold.false.jt3 ], [ %.5.jt1, %bb.aa ], [ %i.ae, %spec.store.select1.si.unfold.false ], [ %1, %bb.c ]
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
