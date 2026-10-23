Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_stream?download=true
inline.NumInlined: 273
inline.NumDeleted: 13
begin_hunk_0_@streamTrim:bb.a
bb.o:                                             ; preds = %streamCompareID.exit, %bb.k
  %.0122 = phi i1 [ %i.bj, %bb.k ], [ %.0.i157, %streamCompareID.exit ] ; 3 uses
  %or.cond = select i1 %.0122, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = call i64 @lpBytes(ptr noundef %i.au) #18
  %i.bt = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.bu = sub i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.aq, align 8, !tbaa !21
  call void @lpFree(ptr noundef %i.au) #18
  %i.bv = load ptr, ptr %0, align 8, !tbaa !22
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.bx = load i64, ptr %i.as, align 8, !tbaa !58
  %i.by = call i32 @raxRemove(ptr noundef %i.bv, ptr noundef %i.bw, i64 noundef %i.bx, ptr noundef null) #18 ; 0 uses
  %i.bz = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.ca = load i64, ptr %i.as, align 8, !tbaa !58
  %i.cb = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.bz, i64 noundef %i.ca) #18 ; 0 uses
  %i.cc = load i64, ptr %i.ah, align 8, !tbaa !49
  %i.cd = sub i64 %i.cc, %.0.i
  store i64 %i.cd, ptr %i.ah, align 8, !tbaa !49
  br label %select.unfold, !llvm.loop !220

bb.q:                                             ; preds = %bb.o
  br i1 %or.cond3, label %.thread193, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = call i64 @lpBytes(ptr noundef %i.au) #18 ; 2 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.cg = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.cf) #18 ; 2 uses
  store ptr %i.cg, ptr %i.p, align 8, !tbaa !129
  %i.ch = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.cg) #18 ; 2 uses
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.ci = call ptr @lpGet(ptr noundef %i.ch, ptr noundef nonnull %i.l, ptr noundef null) #18 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = load i64, ptr %i.l, align 8, !tbaa !16
  br label %lpGetIntegerIfValid.exit160

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  store i64 0, ptr %i.m, align 8, !tbaa !24
  %i.cl = load i64, ptr %i.l, align 8, !tbaa !16
  %i.cm = call i32 @string2ll(ptr noundef nonnull %i.ci, i64 noundef %i.cl, ptr noundef nonnull %i.m) #18
  %.not11.i158 = icmp eq i32 %i.cm, 0
  br i1 %.not11.i158, label %bb.u, label %bb.v, !prof !63

bb.u:                                             ; preds = %bb.t
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cn = load i64, ptr %i.m, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  br label %lpGetIntegerIfValid.exit160

lpGetIntegerIfValid.exit160:                      ; preds = %bb.s, %bb.v
  %.0.i159 = phi i64 [ %i.ck, %bb.s ], [ %i.cn, %bb.v ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  %i.co = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.cp = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.co) #18 ; 3 uses
  store ptr %i.cp, ptr %i.p, align 8, !tbaa !129
  %i.cq = icmp sgt i64 %.0.i159, 0
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %lpGetIntegerIfValid.exit160
  %i.cr = phi ptr [ %i.cp, %lpGetIntegerIfValid.exit160 ], [ %i.cu, %.lr.ph ]
  %i.cs = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.cr) #18 ; 3 uses
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !129
  %.not146228 = icmp eq ptr %i.cs, null
  br i1 %.not146228, label %.loopexit, label %.lr.ph232

.lr.ph:                                           ; preds = %lpGetIntegerIfValid.exit160, %.lr.ph
  %i.ct = phi ptr [ %i.cu, %.lr.ph ], [ %i.cp, %lpGetIntegerIfValid.exit160 ]
  %.0119222 = phi i64 [ %i.cv, %.lr.ph ], [ 0, %lpGetIntegerIfValid.exit160 ]
  %i.cu = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.ct) #18 ; 3 uses
  store ptr %i.cu, ptr %i.p, align 8, !tbaa !129
  %i.cv = add nuw nsw i64 %.0119222, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %.0.i159
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !221

thread-pre-split:                                 ; preds = %bb.as, %bb.au, %._crit_edge227
  %.pr = phi ptr [ %i.er, %._crit_edge227 ], [ %i.ff, %bb.au ], [ %.pre261, %bb.as ] ; 2 uses
  %.3127.ph = phi ptr [ %.0124229, %._crit_edge227 ], [ %i.ew, %bb.au ], [ %.0124229, %bb.as ] ; 2 uses
  %.3.ph = phi i64 [ %.0120230, %._crit_edge227 ], [ %i.ex, %bb.au ], [ %.0120230, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  %.not146 = icmp eq ptr %.pr, null
  br i1 %.not146, label %.loopexit, label %.lr.ph232

.lr.ph232:                                        ; preds = %._crit_edge, %thread-pre-split
  %.0120230 = phi i64 [ %.3.ph, %thread-pre-split ], [ 0, %._crit_edge ] ; 6 uses
  %.0124229 = phi ptr [ %.3127.ph, %thread-pre-split ], [ %i.au, %._crit_edge ] ; 13 uses
  %i.cw = phi ptr [ %.pr, %thread-pre-split ], [ %i.cs, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  store ptr %i.cw, ptr %i.q, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.cx = call ptr @lpGet(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.j, ptr noundef null) #18 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph232
  %i.cz = load i64, ptr %i.j, align 8, !tbaa !16
  br label %lpGetIntegerIfValid.exit163

bb.x:                                             ; preds = %.lr.ph232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i64 0, ptr %i.k, align 8, !tbaa !24
  %i.da = load i64, ptr %i.j, align 8, !tbaa !16
  %i.db = call i32 @string2ll(ptr noundef nonnull %i.cx, i64 noundef %i.da, ptr noundef nonnull %i.k) #18
  %.not11.i161 = icmp eq i32 %i.db, 0
  br i1 %.not11.i161, label %bb.y, label %bb.z, !prof !63

bb.y:                                             ; preds = %bb.x
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dc = load i64, ptr %i.k, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  br label %lpGetIntegerIfValid.exit163

lpGetIntegerIfValid.exit163:                      ; preds = %bb.w, %bb.z
  %.0.i162 = phi i64 [ %i.cz, %bb.w ], [ %i.dc, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %i.dd = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.de = call ptr @lpNext(ptr noundef %.0124229, ptr noundef %i.dd) #18 ; 2 uses
  store ptr %i.de, ptr %i.p, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.df = call ptr @lpGet(ptr noundef %i.de, ptr noundef nonnull %i.h, ptr noundef null) #18 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %lpGetIntegerIfValid.exit163
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !16
  br label %lpGetIntegerIfValid.exit166

bb.ab:                                            ; preds = %lpGetIntegerIfValid.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i64 0, ptr %i.i, align 8, !tbaa !24
  %i.di = load i64, ptr %i.h, align 8, !tbaa !16
  %i.dj = call i32 @string2ll(ptr noundef nonnull %i.df, i64 noundef %i.di, ptr noundef nonnull %i.i) #18
  %.not11.i164 = icmp eq i32 %i.dj, 0
  br i1 %.not11.i164, label %bb.ac, label %bb.ad, !prof !63

bb.ac:                                            ; preds = %bb.ab
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %lpGetIntegerIfValid.exit166

lpGetIntegerIfValid.exit166:                      ; preds = %bb.aa, %bb.ad
  %.0.i165 = phi i64 [ %i.dh, %bb.aa ], [ %i.dk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %i.dl = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.dm = call ptr @lpNext(ptr noundef %.0124229, ptr noundef %i.dl) #18 ; 2 uses
  store ptr %i.dm, ptr %i.p, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.dn = call ptr @lpGet(ptr noundef %i.dm, ptr noundef nonnull %i.f, ptr noundef null) #18 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %lpGetIntegerIfValid.exit166
  %i.dp = load i64, ptr %i.f, align 8, !tbaa !16
  br label %lpGetIntegerIfValid.exit169

bb.af:                                            ; preds = %lpGetIntegerIfValid.exit166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 0, ptr %i.g, align 8, !tbaa !24
  %i.dq = load i64, ptr %i.f, align 8, !tbaa !16
  %i.dr = call i32 @string2ll(ptr noundef nonnull %i.dn, i64 noundef %i.dq, ptr noundef nonnull %i.g) #18
  %.not11.i167 = icmp eq i32 %i.dr, 0
  br i1 %.not11.i167, label %bb.ag, label %bb.ah, !prof !63

bb.ag:                                            ; preds = %bb.af
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ds = load i64, ptr %i.g, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %lpGetIntegerIfValid.exit169

lpGetIntegerIfValid.exit169:                      ; preds = %bb.ae, %bb.ah
  %.0.i168 = phi i64 [ %i.dp, %bb.ae ], [ %i.ds, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.dt = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.du = call ptr @lpNext(ptr noundef %.0124229, ptr noundef %i.dt) #18 ; 3 uses
  store ptr %i.du, ptr %i.p, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.dv = add i64 %.0.i165, %i.bf                 ; 3 uses
  store i64 %i.dv, ptr %6, align 8, !tbaa !51
  %i.dw = add i64 %.0.i168, %i.bg                 ; 2 uses
  store i64 %i.dw, ptr %i.ap, align 8, !tbaa !50
  br i1 %i.ag, label %.split, label %bb.ai

.split:                                           ; preds = %lpGetIntegerIfValid.exit169
  %i.dx = load i64, ptr %i.ah, align 8, !tbaa !49
  %.not197 = icmp ugt i64 %i.dx, %i.s
  br i1 %.not197, label %.thread180, label %.loopexit.sink.split

bb.ai:                                            ; preds = %lpGetIntegerIfValid.exit169
  %i.dy = load i64, ptr %i.t, align 8, !tbaa !51  ; 2 uses
  %i.dz = icmp ugt i64 %i.dv, %i.dy
  br i1 %i.dz, label %.loopexit.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = icmp ult i64 %i.dv, %i.dy
  br i1 %i.ea, label %.thread180, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eb = load i64, ptr %i.am, align 8, !tbaa !50
  %.not196 = icmp ult i64 %i.dw, %i.eb
  br i1 %.not196, label %.thread180, label %.loopexit.sink.split

.thread180:                                       ; preds = %bb.ak, %bb.aj, %.split
  %i.ec = and i64 %.0.i162, 2
  %.not147 = icmp eq i64 %i.ec, 0
  br i1 %.not147, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %.thread180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ed = call ptr @lpGet(ptr noundef %i.du, ptr noundef nonnull %i.d, ptr noundef null) #18 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ef = load i64, ptr %i.d, align 8, !tbaa !16
  br label %lpGetIntegerIfValid.exit175

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8, !tbaa !24
  %i.eg = load i64, ptr %i.d, align 8, !tbaa !16
  %i.eh = call i32 @string2ll(ptr noundef nonnull %i.ed, i64 noundef %i.eg, ptr noundef nonnull %i.e) #18
  %.not11.i173 = icmp eq i32 %i.eh, 0
  br i1 %.not11.i173, label %bb.ao, label %bb.ap, !prof !63

bb.ao:                                            ; preds = %bb.an
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.ei = load i64, ptr %i.e, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %lpGetIntegerIfValid.exit175

lpGetIntegerIfValid.exit175:                      ; preds = %bb.am, %bb.ap
  %.0.i174 = phi i64 [ %i.ef, %bb.am ], [ %i.ei, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.ek = call ptr @lpNext(ptr noundef %.0124229, ptr noundef %i.ej) #18 ; 2 uses
  store ptr %i.ek, ptr %i.p, align 8, !tbaa !129
  %i.el = shl nsw i64 %.0.i174, 1
  br label %bb.aq

bb.aq:                                            ; preds = %.thread180, %lpGetIntegerIfValid.exit175
  %i.em = phi ptr [ %i.ek, %lpGetIntegerIfValid.exit175 ], [ %i.du, %.thread180 ] ; 2 uses
  %.0118 = phi i64 [ %i.el, %lpGetIntegerIfValid.exit175 ], [ %.0.i159, %.thread180 ] ; 2 uses
  %.not148223 = icmp eq i64 %.0118, 0
  br i1 %.not148223, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.aq, %.lr.ph226
  %i.en = phi ptr [ %i.ep, %.lr.ph226 ], [ %i.em, %bb.aq ]
  %.1224 = phi i64 [ %i.eo, %.lr.ph226 ], [ %.0118, %bb.aq ]
  %i.eo = add nsw i64 %.1224, -1                  ; 2 uses
  %i.ep = call ptr @lpNext(ptr noundef %.0124229, ptr noundef %i.en) #18 ; 3 uses
  store ptr %i.ep, ptr %i.p, align 8, !tbaa !129
  %.not148 = icmp eq i64 %i.eo, 0
  br i1 %.not148, label %._crit_edge227, label %.lr.ph226, !llvm.loop !222

._crit_edge227:                                   ; preds = %.lr.ph226, %bb.aq
  %i.eq = phi ptr [ %i.em, %bb.aq ], [ %i.ep, %.lr.ph226 ]
  %i.er = call ptr @lpNext(ptr noundef %.0124229, ptr noundef %i.eq) #18 ; 3 uses
  store ptr %i.er, ptr %i.p, align 8, !tbaa !129
  %i.es = and i64 %.0.i162, 1
  %.not149 = icmp eq i64 %i.es, 0
  br i1 %.not149, label %bb.ar, label %thread-pre-split

bb.ar:                                            ; preds = %._crit_edge227
  switch i32 %i.ab, label %.critedge [
    i32 3, label %bb.as
    i32 2, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.et = call i32 @streamEntryIsReferenced(ptr noundef nonnull %0, ptr noundef nonnull %6)
  %.not198 = icmp eq i32 %i.et, 0
  %.pre261 = load ptr, ptr %i.p, align 8, !tbaa !129 ; 2 uses
  br i1 %.not198, label %.critedge, label %thread-pre-split

bb.at:                                            ; preds = %bb.ar
  call void @streamCleanupEntryCGroupRefs(ptr noundef nonnull %0, ptr noundef nonnull %6)
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %bb.at, %bb.ar, %bb.as
  %i.eu = phi ptr [ %.pre, %bb.at ], [ %i.er, %bb.ar ], [ %.pre261, %bb.as ] ; 2 uses
  %i.ev = or disjoint i64 %.0.i162, 1
  %i.ew = call ptr @lpReplaceInteger(ptr noundef %.0124229, ptr noundef nonnull %i.q, i64 noundef %i.ev) #18 ; 3 uses
  %i.ex = add nsw i64 %.0120230, 1                ; 2 uses
  %i.ey = load i64, ptr %i.ah, align 8, !tbaa !49
  %i.ez = add i64 %i.ey, -1
  store i64 %i.ez, ptr %i.ah, align 8, !tbaa !49
  %i.fa = load ptr, ptr %i.p, align 8, !tbaa !129
  %.not152 = icmp eq ptr %i.fa, null
  br i1 %.not152, label %.loopexit.sink.split, label %bb.au

bb.au:                                            ; preds = %.critedge
  %.not151 = icmp eq ptr %i.eu, null
  %i.fb = ptrtoint ptr %i.eu to i64
  %i.fc = ptrtoint ptr %.0124229 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = select i1 %.not151, i64 0, i64 %i.fd
  %i.ff = getelementptr inbounds i8, ptr %i.ew, i64 %i.fe ; 2 uses
  store ptr %i.ff, ptr %i.p, align 8, !tbaa !129
  br label %thread-pre-split

.loopexit.sink.split:                             ; preds = %.split, %bb.ak, %bb.ai, %.critedge
  %.0124212.ph = phi ptr [ %i.ew, %.critedge ], [ %.0124229, %bb.ai ], [ %.0124229, %bb.ak ], [ %.0124229, %.split ]
  %.0120206.ph = phi i64 [ %i.ex, %.critedge ], [ %.0120230, %bb.ai ], [ %.0120230, %bb.ak ], [ %.0120230, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  br label %.loopexit

.loopexit:                                        ; preds = %thread-pre-split, %.loopexit.sink.split, %._crit_edge
  %.0124212 = phi ptr [ %.0124212.ph, %.loopexit.sink.split ], [ %i.au, %._crit_edge ], [ %.3127.ph, %thread-pre-split ] ; 3 uses
  %.0120206 = phi i64 [ %.0120206.ph, %.loopexit.sink.split ], [ 0, %._crit_edge ], [ %.3.ph, %thread-pre-split ] ; 4 uses
  %i.fg = add nsw i64 %.0120206, %.0129235        ; 3 uses
  %i.fh = icmp eq i64 %.0120206, %.0.i
  %or.cond156 = select i1 %.0122, i1 %i.fh, i1 false
  br i1 %or.cond156, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.loopexit
  %i.fi = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.fj = sub i64 %i.fi, %i.ce
  store i64 %i.fj, ptr %i.aq, align 8, !tbaa !21
  call void @lpFree(ptr noundef %.0124212) #18
  %i.fk = load ptr, ptr %0, align 8, !tbaa !22
  %i.fl = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.fm = load i64, ptr %i.as, align 8, !tbaa !58
  %i.fn = call i32 @raxRemove(ptr noundef %i.fk, ptr noundef %i.fl, i64 noundef %i.fm, ptr noundef null) #18 ; 0 uses
  %i.fo = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.fp = load i64, ptr %i.as, align 8, !tbaa !58
  %i.fq = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.fo, i64 noundef %i.fp) #18 ; 0 uses
  br label %select.unfold, !llvm.loop !220

bb.aw:                                            ; preds = %.loopexit
  %i.fr = call ptr @lpFirst(ptr noundef %.0124212) #18
  store ptr %i.fr, ptr %i.p, align 8, !tbaa !129
  %i.fs = sub nsw i64 %.0.i, %.0120206
  %i.ft = call ptr @lpReplaceInteger(ptr noundef %.0124212, ptr noundef nonnull %i.p, i64 noundef %i.fs) #18 ; 2 uses
  %i.fu = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.fv = call ptr @lpNext(ptr noundef %i.ft, ptr noundef %i.fu) #18 ; 2 uses
  store ptr %i.fv, ptr %i.p, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.fw = call ptr @lpGet(ptr noundef %i.fv, ptr noundef nonnull %i.b, ptr noundef null) #18 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fy = load i64, ptr %i.b, align 8, !tbaa !16
  br label %lpGetIntegerIfValid.exit178

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 0, ptr %i.c, align 8, !tbaa !24
  %i.fz = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ga = call i32 @string2ll(ptr noundef nonnull %i.fw, i64 noundef %i.fz, ptr noundef nonnull %i.c) #18
  %.not11.i176 = icmp eq i32 %i.ga, 0
  br i1 %.not11.i176, label %bb.az, label %bb.ba, !prof !63

bb.az:                                            ; preds = %bb.ay
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gb = load i64, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %lpGetIntegerIfValid.exit178

lpGetIntegerIfValid.exit178:                      ; preds = %bb.ax, %bb.ba
  %.0.i177 = phi i64 [ %i.fy, %bb.ax ], [ %i.gb, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.gc = add nsw i64 %.0.i177, %.0120206
  %i.gd = call ptr @lpReplaceInteger(ptr noundef %i.ft, ptr noundef nonnull %i.p, i64 noundef %i.gc) #18 ; 3 uses
  %i.ge = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.gf = call ptr @lpNext(ptr noundef %i.gd, ptr noundef %i.ge) #18
  store ptr %i.gf, ptr %i.p, align 8, !tbaa !129
  %i.gg = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.gh = sub i64 %i.gg, %i.ce
end_hunk_0
