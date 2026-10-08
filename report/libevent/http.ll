Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/http?download=true
inline.NumInlined: 140
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@evhttp_uri_parse_with_flags:bb.a

bb.t:                                             ; preds = %bb.r, %bb.s, %.critedge, %.critedge
  %i.at = phi i8 [ %i.ao, %bb.r ], [ 47, %bb.s ], [ %i.ao, %.critedge ], [ %i.ao, %.critedge ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %.not85 = icmp eq ptr %i.av, null
  br i1 %.not85, label %.preheader, label %path_matches_noscheme.exit

.preheader:                                       ; preds = %bb.t, %bb.u
  %i.aw = phi i8 [ %.pre107, %bb.u ], [ %i.at, %bb.t ]
  %.0.i94 = phi ptr [ %i.ax, %bb.u ], [ %.2, %bb.t ]
  switch i8 %i.aw, label %bb.u [
    i8 0, label %path_matches_noscheme.exit
    i8 58, label %.thread
    i8 47, label %path_matches_noscheme.exit
  ]

bb.u:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i94, i64 1 ; 2 uses
  %.pre107 = load i8, ptr %i.ax, align 1
  br label %.preheader, !llvm.loop !48

path_matches_noscheme.exit:                       ; preds = %.preheader, %.preheader, %bb.t
  %i.ay = tail call ptr @event_mm_strdup_(ptr noundef nonnull %.2) #15 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %.thread.sink.split121, label %bb.v

bb.v:                                             ; preds = %path_matches_noscheme.exit
  %.not87 = icmp eq ptr %.069, null
  br i1 %.not87, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = tail call ptr @event_mm_strdup_(ptr noundef nonnull %.069) #15 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %.thread.sink.split121, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not88 = icmp eq ptr %.068, null
  br i1 %.not88, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = tail call ptr @event_mm_strdup_(ptr noundef nonnull %.068) #15 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = icmp eq ptr %i.be, null
  br i1 %i.bg, label %.thread.sink.split121, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void @event_mm_free_(ptr noundef nonnull %i.d) #15
  br label %bb.aa

.thread.sink.split121:                            ; preds = %path_matches_noscheme.exit, %bb.w, %bb.y, %scheme_ok.exit
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.evhttp_uri_parse_with_flags) #15
  br label %.thread

.thread:                                          ; preds = %.preheader, %.thread.sink.split121, %end_of_authority.exit, %.critedge, %bb.s, %bb.p
  tail call void @evhttp_uri_free(ptr noundef nonnull %i.a)
  tail call void @event_mm_free_(ptr noundef nonnull %i.d) #15
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.thread, %.thread104, %.thread, %bb.z
  %.073 = phi ptr [ %i.a, %bb.z ], [ null, %.thread.thread ], [ null, %.thread ], [ null, %.thread104 ]
  ret ptr %.073
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_authority(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @event_mm_strdup_(ptr noundef nonnull @.str.26) #15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.c, align 8
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.c, label %userinfo_ok.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.parse_authority) #15
  br label %userinfo_ok.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.e = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 64) #14 ; 7 uses
  %.not = icmp ne ptr %i.e, null
  %i.f = icmp ult ptr %i.e, %2
  %or.cond = and i1 %.not, %i.f
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult ptr %1, %i.e
  br i1 %i.g, label %.lr.ph.i, label %userinfo_ok.exit

.lr.ph.i:                                         ; preds = %bb.e, %bb.k
  %.01221.i = phi ptr [ %i.w, %bb.k ], [ %1, %bb.e ] ; 4 uses
  %i.h = load i8, ptr %.01221.i, align 1          ; 4 uses
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr @uri_chars, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph.i
  %memchr.bounds.i = icmp ult i8 %i.h, 64
  %i.l = shl nuw i64 1, %i.i
  %i.m = and i64 %i.l, 2882338748320710657
  %memchr.bits.i = icmp ne i64 %i.m, 0
  %memchr16.not.not20.i = select i1 %memchr.bounds.i, i1 %memchr.bits.i, i1 false
  %i.n = icmp eq i8 %i.h, 58
  %or.cond.i = or i1 %i.n, %memchr16.not.not20.i
  br i1 %or.cond.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i8 %i.h, 37
  br i1 %i.o, label %bb.h, label %userinfo_ok.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.01221.i, i64 2 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.e
  br i1 %i.q, label %bb.i, label %userinfo_ok.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.01221.i, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = tail call i32 @EVUTIL_ISXDIGIT_(i8 noundef signext %i.s) #15
  %.not18.i = icmp eq i32 %i.t, 0
  br i1 %.not18.i, label %userinfo_ok.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.p, align 1
  %i.v = tail call i32 @EVUTIL_ISXDIGIT_(i8 noundef signext %i.u) #15
  %.not19.i = icmp eq i32 %i.v, 0
  br i1 %.not19.i, label %userinfo_ok.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %.lr.ph.i
  %.sink.i = phi i64 [ 1, %.lr.ph.i ], [ 1, %bb.f ], [ 3, %bb.j ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01221.i, i64 %.sink.i ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.e
  br i1 %i.x, label %.lr.ph.i, label %userinfo_ok.exit, !llvm.loop !12

userinfo_ok.exit:                                 ; preds = %bb.k, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %i.e, align 1
  %i.z = tail call ptr @event_mm_strdup_(ptr noundef nonnull %1) #15 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %userinfo_ok.exit
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.parse_authority) #15
  br label %userinfo_ok.exit.thread

bb.m:                                             ; preds = %bb.d, %userinfo_ok.exit
  %.049 = phi ptr [ %i.y, %userinfo_ok.exit ], [ %1, %bb.d ] ; 8 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn = phi ptr [ %2, %bb.m ], [ %.0, %bb.o ]    ; 4 uses
  %.0 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 5 uses
  %.not58 = icmp ult ptr %.0, %.049
  br i1 %.not58, label %.critedge63, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %.0, align 1
  %i.ad = tail call i32 @EVUTIL_ISDIGIT_(i8 noundef signext %i.ac) #15
  %.not59 = icmp eq i32 %i.ad, 0
  br i1 %.not59, label %.critedge, label %bb.n, !llvm.loop !49

.critedge:                                        ; preds = %bb.o
  %i.ae = load i8, ptr %.0, align 1
  %i.af = icmp eq i8 %i.ae, 58
  br i1 %i.af, label %bb.p, label %.critedge63

bb.p:                                             ; preds = %.critedge
  %i.ag = icmp eq ptr %.pn, %2
  br i1 %i.ag, label %.critedge63.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp ult ptr %.pn, %2
  br i1 %i.ah, label %.lr.ph.i65, label %.critedge63.sink.split

bb.r:                                             ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %.01012.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ai, %2
  br i1 %exitcond.not.i, label %.critedge63.sink.split, label %.lr.ph.i65, !llvm.loop !50

.lr.ph.i65:                                       ; preds = %bb.q, %bb.r
  %.013.i = phi i32 [ %i.ap, %bb.r ], [ 0, %bb.q ]
  %.01012.i = phi ptr [ %i.ai, %bb.r ], [ %.pn, %bb.q ] ; 3 uses
  %i.aj = load i8, ptr %.01012.i, align 1
  %i.ak = tail call i32 @EVUTIL_ISDIGIT_(i8 noundef signext %i.aj) #15
  %.not.i66 = icmp eq i32 %i.ak, 0
  br i1 %.not.i66, label %parse_port.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i65
  %i.al = mul nsw i32 %.013.i, 10
  %i.am = load i8, ptr %.01012.i, align 1
  %i.an = sext i8 %i.am to i32
  %i.ao = add i32 %i.al, -48
  %i.ap = add nsw i32 %i.ao, %i.an                ; 3 uses
  %or.cond.i67 = icmp ugt i32 %i.ap, 65535
  br i1 %or.cond.i67, label %parse_port.exit.thread, label %bb.r

parse_port.exit.thread:                           ; preds = %bb.s, %.lr.ph.i65
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.aq, align 8
  br label %userinfo_ok.exit.thread

.critedge63.sink.split:                           ; preds = %bb.r, %bb.q, %bb.p
  %.09.i.sink = phi i32 [ -1, %bb.p ], [ 0, %bb.q ], [ %i.ap, %bb.r ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.09.i.sink, ptr %i.ar, align 8
  br label %.critedge63

.critedge63:                                      ; preds = %bb.n, %.critedge63.sink.split, %.critedge
  %.050 = phi ptr [ %.0, %.critedge63.sink.split ], [ %2, %.critedge ], [ %2, %bb.n ] ; 6 uses
  %i.as = load i8, ptr %.049, align 1
  %i.at = icmp ne i8 %i.as, 91
  %i.au = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %.not60 = icmp ult ptr %.050, %i.au
  %or.cond64 = select i1 %i.at, i1 true, i1 %.not60
  br i1 %or.cond64, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.critedge63
  %i.av = getelementptr inbounds i8, ptr %.050, i64 -1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 93
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = tail call fastcc i32 @bracket_addr_ok(ptr noundef %.049, ptr noundef %.050)
  %.not62 = icmp eq i32 %i.ay, 0
  br i1 %.not62, label %userinfo_ok.exit.thread, label %regname_ok.exit

bb.v:                                             ; preds = %bb.t, %.critedge63
  %i.az = icmp ult ptr %.049, %.050
  br i1 %i.az, label %.lr.ph.i69, label %regname_ok.exit

.lr.ph.i69:                                       ; preds = %bb.v, %bb.aa
  %.01015.i = phi ptr [ %i.bn, %bb.aa ], [ %.049, %bb.v ] ; 4 uses
  %i.ba = load i8, ptr %.01015.i, align 1         ; 3 uses
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @uri_chars, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %.not.i70 = icmp eq i8 %i.bd, 0
  br i1 %.not.i70, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.lr.ph.i69
  %memchr.bounds.i72 = icmp ugt i8 %i.ba, 63
  %i.be = shl nuw i64 1, %i.bb
  %i.bf = and i64 %i.be, 2882338748320710657
  %memchr.bits.i73 = icmp eq i64 %i.bf, 0
  %memchr11.not.i = select i1 %memchr.bounds.i72, i1 true, i1 %memchr.bits.i73
  br i1 %memchr11.not.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bg = icmp eq i8 %i.ba, 37
  br i1 %i.bg, label %bb.y, label %userinfo_ok.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %.01015.i, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = tail call i32 @EVUTIL_ISXDIGIT_(i8 noundef signext %i.bi) #15
  %.not13.i = icmp eq i32 %i.bj, 0
  br i1 %.not13.i, label %userinfo_ok.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %.01015.i, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = tail call i32 @EVUTIL_ISXDIGIT_(i8 noundef signext %i.bl) #15
  %.not14.i = icmp eq i32 %i.bm, 0
  br i1 %.not14.i, label %userinfo_ok.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %.lr.ph.i69
  %.sink.i71 = phi i64 [ 1, %.lr.ph.i69 ], [ 1, %bb.w ], [ 3, %bb.z ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.01015.i, i64 %.sink.i71 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %.050
  br i1 %i.bo, label %.lr.ph.i69, label %regname_ok.exit, !llvm.loop !13

regname_ok.exit:                                  ; preds = %bb.aa, %bb.v, %bb.u
  %i.bp = ptrtoint ptr %.050 to i64
  %i.bq = ptrtoint ptr %.049 to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = add nsw i64 %i.br, 1
  %i.bt = tail call ptr @event_mm_malloc_(i64 noundef %i.bs) #15 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = icmp eq ptr %i.bt, null
  br i1 %i.bv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %regname_ok.exit
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.parse_authority) #15
  br label %userinfo_ok.exit.thread

bb.ac:                                            ; preds = %regname_ok.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %.049, i64 %i.br, i1 false)
  %i.bw = load ptr, ptr %i.bu, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.br
  store i8 0, ptr %i.bx, align 1
  br label %userinfo_ok.exit.thread

userinfo_ok.exit.thread:                          ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.z, %bb.x, %bb.y, %parse_port.exit.thread, %bb.u, %bb.b, %bb.ac, %bb.ab, %bb.l, %bb.c
  %.051 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ -1, %bb.l ], [ -1, %bb.ab ], [ 0, %bb.ac ], [ -1, %parse_port.exit.thread ], [ -1, %bb.u ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.x ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.j ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @end_of_path(ptr nofree noundef nonnull readonly captures(ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1                 ; 3 uses
  %.not3655 = icmp eq i8 %i.b, 0
  br i1 %.not3655, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not61 = icmp eq i32 %1, 0
  br i1 %.not61, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %i.c = phi i8 [ %i.q, %bb.e ], [ %i.b, %.lr.ph ] ; 3 uses
  %.356.us = phi ptr [ %i.p, %bb.e ], [ %0, %.lr.ph ] ; 6 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @uri_chars, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %.not37.us = icmp eq i8 %i.f, 0
  br i1 %.not37.us, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.split.us
  %memchr.bounds.us = icmp ult i8 %i.c, 64
  %i.g = shl nuw i64 1, %i.d
  %i.h = and i64 %i.g, 2882338748320710657
  %memchr.bits.us = icmp ne i64 %i.h, 0
  %memchr38.not.not50.us = select i1 %memchr.bounds.us, i1 %memchr.bits.us, i1 false
  %i.i = freeze i1 %memchr38.not.not50.us
  br i1 %i.i, label %bb.e, label %switch.early.test.us

switch.early.test.us:                             ; preds = %bb.b
  switch i8 %i.c, label %.critedge [
    i8 64, label %bb.e
    i8 58, label %bb.e
    i8 47, label %bb.e
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test.us
  %i.j = getelementptr inbounds nuw i8, ptr %.356.us, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = tail call i32 @EVUTIL_ISXDIGIT_(i8 noundef signext %i.k) #15
  %.not40.us = icmp eq i32 %i.l, 0
  br i1 %.not40.us, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.356.us, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = tail call i32 @EVUTIL_ISXDIGIT_(i8 noundef signext %i.n) #15
  %.not41.us = icmp eq i32 %i.o, 0
  br i1 %.not41.us, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us, %bb.b, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %bb.d
  %.sink = phi i64 [ 3, %bb.d ], [ 1, %switch.early.test.us ], [ 1, %switch.early.test.us ], [ 1, %switch.early.test.us ], [ 1, %bb.b ], [ 1, %.lr.ph.split.us ]
  %i.p = getelementptr inbounds nuw i8, ptr %.356.us, i64 %.sink ; 3 uses
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %.not36.us = icmp eq i8 %i.q, 0
  br i1 %.not36.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !51

bb.f:                                             ; preds = %bb.a
  switch i32 %1, label %default.unreachable69 [
    i32 0, label %.preheader51
    i32 1, label %.preheader53
    i32 2, label %bb.i
  ]

.preheader51:                                     ; preds = %bb.f, %bb.g
  %.031 = phi ptr [ %i.s, %bb.g ], [ %0, %bb.f ]  ; 5 uses
  %i.r = load i8, ptr %.031, align 1
  switch i8 %i.r, label %bb.g [
    i8 0, label %.critedge
    i8 35, label %.critedge
    i8 63, label %.critedge
  ]

bb.g:                                             ; preds = %.preheader51
  %i.s = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %.preheader51, !llvm.loop !52

.preheader53:                                     ; preds = %bb.f, %bb.h
  %.1 = phi ptr [ %i.u, %bb.h ], [ %0, %bb.f ]    ; 4 uses
  %i.t = load i8, ptr %.1, align 1
  switch i8 %i.t, label %bb.h [
    i8 0, label %.critedge
    i8 35, label %.critedge
  ]

bb.h:                                             ; preds = %.preheader53
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 1
end_hunk_0
