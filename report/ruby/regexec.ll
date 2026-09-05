Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regexec?download=true
inline.NumInlined: 154
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@forward_search_range:bb.a
  %.04353.i517 = phi ptr [ %i.gn, %.lr.ph.i220 ], [ %i.gi, %.lr.ph.i220.preheader ]
  %i.gn = getelementptr i8, ptr %.04353.i517, i64 -1 ; 2 uses
  %i.go = getelementptr i8, ptr %.04452.i518, i64 -1 ; 3 uses
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !54
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !54
  %i.gr = icmp eq i8 %i.gp, %i.gq
  br i1 %i.gr, label %.lr.ph.i220, label %._crit_edge.i217, !llvm.loop !149

._crit_edge.i217:                                 ; preds = %.lr.ph519, %bb.ah
  %i.gs = getelementptr i8, ptr %.04556.i, i64 1
  %.not.i218 = icmp ult ptr %i.gs, %.0.i
  br i1 %.not.i218, label %bb.ai, label %slow_search.exit.thread

bb.ai:                                            ; preds = %._crit_edge.i217
  %i.gt = getelementptr i8, ptr %i.gi, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !54
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr i8, ptr %i.aq, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !54
  %i.gy = zext i8 %i.gx to i64                    ; 2 uses
  %i.gz = ptrtoint ptr %.04556.i to i64           ; 2 uses
  %i.ha = load i32, ptr %i.gf, align 8, !tbaa !58 ; 2 uses
  %i.hb = load i32, ptr %i.gg, align 4, !tbaa !59
  %i.hc = icmp eq i32 %i.ha, %i.hb
  br i1 %i.hc, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.ai
  %i.hd = sext i32 %i.ha to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.split.us.i
  %.1.us.i = phi ptr [ %.04556.i, %.split.us.i ], [ %i.hg, %bb.aj ] ; 2 uses
  %i.he = icmp ult ptr %.1.us.i, %.0.i
  %i.hf = select i1 %i.he, i64 %i.hd, i64 0
  %i.hg = getelementptr i8, ptr %.1.us.i, i64 %i.hf ; 4 uses
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gz
  %i.hj = icmp slt i64 %i.hi, %i.gy
  %i.hk = icmp ult ptr %i.hg, %.0.i
  %i.hl = and i1 %i.hk, %i.hj
  br i1 %i.hl, label %bb.aj, label %.split55.us.i, !llvm.loop !150

.split.i:                                         ; preds = %bb.ai, %bb.am
  %.1.i = phi ptr [ %i.ht, %bb.am ], [ %.04556.i, %bb.ai ] ; 3 uses
  %i.hm = load i32, ptr %i.gf, align 8, !tbaa !58 ; 2 uses
  %i.hn = load i32, ptr %i.gg, align 4, !tbaa !59
  %i.ho = icmp eq i32 %i.hm, %i.hn
  br i1 %i.ho, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.split.i
  %i.hp = icmp ult ptr %.1.i, %.0.i
  %spec.select.i219 = select i1 %i.hp, i32 %i.hm, i32 0
  br label %bb.am

bb.al:                                            ; preds = %.split.i
  %i.hq = call i32 @onigenc_mbclen(ptr noundef %.1.i, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ft) #21
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hr = phi i32 [ %i.hq, %bb.al ], [ %spec.select.i219, %bb.ak ]
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr i8, ptr %.1.i, i64 %i.hs  ; 4 uses
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.gz
  %i.hw = icmp slt i64 %i.hv, %i.gy
  %i.hx = icmp ult ptr %i.ht, %.0.i
  %i.hy = and i1 %i.hx, %i.hw
  br i1 %i.hy, label %.split.i, label %.split55.us.i, !llvm.loop !151

.split55.us.i:                                    ; preds = %bb.am, %bb.aj
  %.us-phi.i = phi ptr [ %i.hg, %bb.aj ], [ %i.ht, %bb.am ] ; 2 uses
  %i.hz = icmp ult ptr %.us-phi.i, %.0.i
  br i1 %i.hz, label %bb.ah, label %slow_search.exit.thread, !llvm.loop !152

bb.an:                                            ; preds = %bb.j
  %i.ia = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 3 uses
  %i.ib = load ptr, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %i.ic = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 2 uses
  %i.id = load i32, ptr %i.at, align 8, !tbaa !50
  %i.ie = getelementptr i8, ptr %i.ib, i64 -1
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.ia to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 3 uses
  %i.ii = getelementptr i8, ptr %4, i64 %i.ih     ; 2 uses
  %i.ij = icmp ugt ptr %i.ii, %2
  %spec.select.i221 = select i1 %i.ij, ptr %2, ptr %i.ii ; 3 uses
  %i.ik = getelementptr i8, ptr %.2, i64 %i.ih    ; 2 uses
  %i.il = load ptr, ptr %i.au, align 8, !tbaa !161
  %i.im = icmp eq ptr %i.il, null
  %i.in = icmp ult ptr %i.ik, %spec.select.i221
  %or.cond.i222 = and i1 %i.im, %i.in
  br i1 %or.cond.i222, label %.lr.ph.i224, label %slow_search.exit.thread

.lr.ph.i224:                                      ; preds = %bb.an
  %i.io = sub i64 0, %i.ih                        ; 2 uses
  %i.ip = icmp ult ptr %i.ia, %i.ib
  %i.iq = getelementptr i8, ptr %i.ic, i64 56
  br i1 %i.ip, label %.lr.ph20.i.us.i227, label %.lr.ph.split.i225

.lr.ph20.i.us.i227:                               ; preds = %.lr.ph.i224, %bb.ar
  %.02942.us.i = phi ptr [ %i.ji, %bb.ar ], [ %i.ik, %.lr.ph.i224 ] ; 4 uses
  %i.ir = getelementptr i8, ptr %.02942.us.i, i64 %i.io
  %i.is = getelementptr i8, ptr %.02942.us.i, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ir, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.i.us.i229, %.lr.ph20.i.us.i227
  %.01219.i.us.i228 = phi ptr [ %i.ia, %.lr.ph20.i.us.i227 ], [ %.1.lcssa.i.us.i230, %.loopexit.i.us.i229 ] ; 3 uses
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !57
  %i.iu = call i32 %i.it(i32 noundef %i.id, ptr noundef nonnull %i.c, ptr noundef %i.is, ptr noundef nonnull %i.d, ptr noundef %i.ic) #21, !inline_history !153 ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph.preheader.i.us.i231, label %.loopexit.i.us.i229

.lr.ph.preheader.i.us.i231:                       ; preds = %bb.ao
  %scevgep.i.us.i232 = getelementptr i8, ptr %.01219.i.us.i228, i64 1
  %i.iw = add nsw i32 %i.iu, -1
  %i.ix = zext nneg i32 %i.iw to i64              ; 2 uses
  %scevgep22.i.us.i233 = getelementptr i8, ptr %scevgep.i.us.i232, i64 %i.ix
  %scevgep23.i.us.i234 = getelementptr i8, ptr %i.d, i64 %i.ix
  br label %.lr.ph.i.us.i235

.lr.ph.i.us.i235:                                 ; preds = %bb.ap, %.lr.ph.preheader.i.us.i231
  %.018.i.us.i236 = phi ptr [ %i.ja, %bb.ap ], [ %i.d, %.lr.ph.preheader.i.us.i231 ] ; 3 uses
  %.116.i.us.i237 = phi ptr [ %i.jb, %bb.ap ], [ %.01219.i.us.i228, %.lr.ph.preheader.i.us.i231 ] ; 2 uses
  %i.iy = load i8, ptr %.116.i.us.i237, align 1, !tbaa !54
  %i.iz = load i8, ptr %.018.i.us.i236, align 1, !tbaa !54
  %.not.i.us.i238 = icmp eq i8 %i.iy, %i.iz
  br i1 %.not.i.us.i238, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.us.i235
  %i.ja = getelementptr i8, ptr %.018.i.us.i236, i64 1
  %i.jb = getelementptr i8, ptr %.116.i.us.i237, i64 1
  %exitcond.not.i.us.i239 = icmp eq ptr %.018.i.us.i236, %scevgep23.i.us.i234
  br i1 %exitcond.not.i.us.i239, label %.loopexit.i.us.i229, label %.lr.ph.i.us.i235, !llvm.loop !2

.loopexit.i.us.i229:                              ; preds = %bb.ap, %bb.ao
  %.1.lcssa.i.us.i230 = phi ptr [ %.01219.i.us.i228, %bb.ao ], [ %scevgep22.i.us.i233, %bb.ap ] ; 2 uses
  %i.jc = icmp ult ptr %.1.lcssa.i.us.i230, %i.ib
  br i1 %i.jc, label %bb.ao, label %str_lower_case_match.exit.thread.i226.loopexit, !llvm.loop !3

bb.aq:                                            ; preds = %.lr.ph.i.us.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not34.us.i = icmp ult ptr %i.is, %spec.select.i221
  br i1 %.not34.us.i, label %bb.ar, label %slow_search.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.jd = load i8, ptr %i.is, align 1, !tbaa !54
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr i8, ptr %i.aq, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !54
  %i.jh = zext i8 %i.jg to i64
  %i.ji = getelementptr i8, ptr %.02942.us.i, i64 %i.jh ; 2 uses
  %i.jj = icmp ult ptr %i.ji, %spec.select.i221
  br i1 %i.jj, label %.lr.ph20.i.us.i227, label %slow_search.exit.thread, !llvm.loop !154

.lr.ph.split.i225:                                ; preds = %.lr.ph.i224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  br label %str_lower_case_match.exit.thread.i226

str_lower_case_match.exit.thread.i226.loopexit:   ; preds = %.loopexit.i.us.i229
  %i.jk = getelementptr i8, ptr %.02942.us.i, i64 %i.io
  br label %str_lower_case_match.exit.thread.i226

str_lower_case_match.exit.thread.i226:            ; preds = %str_lower_case_match.exit.thread.i226.loopexit, %.lr.ph.split.i225
  %i.jl = phi ptr [ %.2, %.lr.ph.split.i225 ], [ %i.jk, %str_lower_case_match.exit.thread.i226.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %slow_search.exit

bb.as:                                            ; preds = %bb.j
  %i.jm = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 3 uses
  %i.jn = load ptr, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %i.jo = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 5 uses
  %i.jp = load i32, ptr %i.at, align 8, !tbaa !50
  %i.jq = getelementptr i8, ptr %i.jn, i64 -1
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jm to i64
  %i.jt = sub i64 %i.jr, %i.js                    ; 3 uses
  %i.ju = getelementptr i8, ptr %4, i64 %i.jt
  %i.jv = icmp ugt ptr %i.ju, %2
  %i.jw = sub i64 0, %i.jt
  %i.jx = getelementptr i8, ptr %2, i64 %i.jw
  %.0.i240 = select i1 %i.jv, ptr %i.jx, ptr %4   ; 8 uses
  %i.jy = load ptr, ptr %i.au, align 8, !tbaa !161
  %i.jz = icmp eq ptr %i.jy, null
  %i.ka = icmp ult ptr %.2, %.0.i240
  %or.cond.i241 = and i1 %i.jz, %i.ka
  br i1 %or.cond.i241, label %.lr.ph.i242, label %slow_search.exit.thread

.lr.ph.i242:                                      ; preds = %bb.as
  %i.kb = icmp ult ptr %i.jm, %i.jn
  %i.kc = getelementptr i8, ptr %i.jo, i64 56
  %i.kd = getelementptr i8, ptr %i.jo, i64 16     ; 2 uses
  %i.ke = getelementptr i8, ptr %i.jo, i64 20     ; 2 uses
  br i1 %i.kb, label %.lr.ph20.i.us.i245, label %.lr.ph.split.i243

.lr.ph20.i.us.i245:                               ; preds = %.lr.ph.i242, %.split56.us61.i
  %.04357.us.i = phi ptr [ %.us-phi.us.i, %.split56.us61.i ], [ %.2, %.lr.ph.i242 ] ; 7 uses
  %i.kf = getelementptr i8, ptr %.04357.us.i, i64 %i.jt
  %i.kg = getelementptr i8, ptr %i.kf, i64 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.04357.us.i, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.i.us.i247, %.lr.ph20.i.us.i245
  %.01219.i.us.i246 = phi ptr [ %i.jm, %.lr.ph20.i.us.i245 ], [ %.1.lcssa.i.us.i248, %.loopexit.i.us.i247 ] ; 3 uses
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !57
  %i.ki = call i32 %i.kh(i32 noundef %i.jp, ptr noundef nonnull %i.a, ptr noundef %i.kg, ptr noundef nonnull %i.b, ptr noundef %i.jo) #21, !inline_history !155 ; 2 uses
  %i.kj = icmp sgt i32 %i.ki, 0
  br i1 %i.kj, label %.lr.ph.preheader.i.us.i249, label %.loopexit.i.us.i247

.lr.ph.preheader.i.us.i249:                       ; preds = %bb.at
  %scevgep.i.us.i250 = getelementptr i8, ptr %.01219.i.us.i246, i64 1
  %i.kk = add nsw i32 %i.ki, -1
  %i.kl = zext nneg i32 %i.kk to i64              ; 2 uses
  %scevgep22.i.us.i251 = getelementptr i8, ptr %scevgep.i.us.i250, i64 %i.kl
  %scevgep23.i.us.i252 = getelementptr i8, ptr %i.b, i64 %i.kl
  br label %.lr.ph.i.us.i253

.lr.ph.i.us.i253:                                 ; preds = %bb.au, %.lr.ph.preheader.i.us.i249
  %.018.i.us.i254 = phi ptr [ %i.ko, %bb.au ], [ %i.b, %.lr.ph.preheader.i.us.i249 ] ; 3 uses
  %.116.i.us.i255 = phi ptr [ %i.kp, %bb.au ], [ %.01219.i.us.i246, %.lr.ph.preheader.i.us.i249 ] ; 2 uses
  %i.km = load i8, ptr %.116.i.us.i255, align 1, !tbaa !54
  %i.kn = load i8, ptr %.018.i.us.i254, align 1, !tbaa !54
  %.not.i.us.i256 = icmp eq i8 %i.km, %i.kn
  br i1 %.not.i.us.i256, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i.us.i253
  %i.ko = getelementptr i8, ptr %.018.i.us.i254, i64 1
  %i.kp = getelementptr i8, ptr %.116.i.us.i255, i64 1
  %exitcond.not.i.us.i257 = icmp eq ptr %.018.i.us.i254, %scevgep23.i.us.i252
  br i1 %exitcond.not.i.us.i257, label %.loopexit.i.us.i247, label %.lr.ph.i.us.i253, !llvm.loop !2

.loopexit.i.us.i247:                              ; preds = %bb.au, %bb.at
  %.1.lcssa.i.us.i248 = phi ptr [ %.01219.i.us.i246, %bb.at ], [ %scevgep22.i.us.i251, %bb.au ] ; 2 uses
  %i.kq = icmp ult ptr %.1.lcssa.i.us.i248, %i.jn
  br i1 %i.kq, label %bb.at, label %str_lower_case_match.exit.thread.i244, !llvm.loop !3

bb.av:                                            ; preds = %.lr.ph.i.us.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kr = getelementptr i8, ptr %.04357.us.i, i64 1
  %.not48.us.i = icmp ult ptr %i.kr, %.0.i240
  br i1 %.not48.us.i, label %bb.aw, label %slow_search.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i8, ptr %i.kg, align 1, !tbaa !54
  %i.kt = zext i8 %i.ks to i64
  %i.ku = getelementptr i8, ptr %i.aq, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !54
  %i.kw = zext i8 %i.kv to i64                    ; 2 uses
  %i.kx = ptrtoint ptr %.04357.us.i to i64        ; 2 uses
  %i.ky = load i32, ptr %i.kd, align 8, !tbaa !58 ; 2 uses
  %i.kz = load i32, ptr %i.ke, align 4, !tbaa !59
  %i.la = icmp eq i32 %i.ky, %i.kz
  br i1 %i.la, label %.split.us.us.i, label %.split.us63.i

.split.us63.i:                                    ; preds = %bb.aw, %bb.az
  %.1.us59.i = phi ptr [ %i.li, %bb.az ], [ %.04357.us.i, %bb.aw ] ; 3 uses
  %i.lb = load i32, ptr %i.kd, align 8, !tbaa !58 ; 2 uses
  %i.lc = load i32, ptr %i.ke, align 4, !tbaa !59
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.split.us63.i
  %i.le = call i32 @onigenc_mbclen(ptr noundef %.1.us59.i, ptr noundef nonnull %.0.i240, ptr noundef nonnull %i.jo) #21
  br label %bb.az

bb.ay:                                            ; preds = %.split.us63.i
  %i.lf = icmp ult ptr %.1.us59.i, %.0.i240
  %spec.select.us60.i = select i1 %i.lf, i32 %i.lb, i32 0
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.lg = phi i32 [ %i.le, %bb.ax ], [ %spec.select.us60.i, %bb.ay ]
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr i8, ptr %.1.us59.i, i64 %i.lh ; 4 uses
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = sub i64 %i.lj, %i.kx
  %i.ll = icmp slt i64 %i.lk, %i.kw
  %i.lm = icmp ult ptr %i.li, %.0.i240
  %i.ln = and i1 %i.lm, %i.ll
  br i1 %i.ln, label %.split.us63.i, label %.split56.us61.i, !llvm.loop !156

.split56.us61.i:                                  ; preds = %bb.az, %bb.ba
  %.us-phi.us.i = phi ptr [ %i.lr, %bb.ba ], [ %i.li, %bb.az ] ; 2 uses
  %8 = icmp ult ptr %.us-phi.us.i, %.0.i240
  br i1 %8, label %.lr.ph20.i.us.i245, label %slow_search.exit.thread, !llvm.loop !157

.split.us.us.i:                                   ; preds = %bb.aw
  %i.lo = sext i32 %i.ky to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.split.us.us.i
  %.1.us.us.i = phi ptr [ %.04357.us.i, %.split.us.us.i ], [ %i.lr, %bb.ba ] ; 2 uses
  %i.lp = icmp ult ptr %.1.us.us.i, %.0.i240
  %i.lq = select i1 %i.lp, i64 %i.lo, i64 0
  %i.lr = getelementptr i8, ptr %.1.us.us.i, i64 %i.lq ; 4 uses
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = sub i64 %i.ls, %i.kx
  %i.lu = icmp slt i64 %i.lt, %i.kw
  %i.lv = icmp ult ptr %i.lr, %.0.i240
  %i.lw = and i1 %i.lv, %i.lu
  br i1 %i.lw, label %bb.ba, label %.split56.us61.i, !llvm.loop !158

.lr.ph.split.i243:                                ; preds = %.lr.ph.i242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %str_lower_case_match.exit.thread.i244

str_lower_case_match.exit.thread.i244:            ; preds = %.loopexit.i.us.i247, %.lr.ph.split.i243
  %.04354.i = phi ptr [ %.2, %.lr.ph.split.i243 ], [ %.04357.us.i, %.loopexit.i.us.i247 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %slow_search.exit

bb.bb:                                            ; preds = %bb.j
  %i.lx = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 3 uses
  %i.ly = icmp ult ptr %.2, %4
  br i1 %i.ly, label %.lr.ph.i259, label %slow_search.exit.thread

.lr.ph.i259:                                      ; preds = %bb.bb
  %i.lz = getelementptr i8, ptr %i.lx, i64 16
  %i.ma = getelementptr i8, ptr %i.lx, i64 20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bg, %.lr.ph.i259
  %.018.i = phi ptr [ %.2, %.lr.ph.i259 ], [ %i.mm, %bb.bg ] ; 5 uses
  %i.mb = load i8, ptr %.018.i, align 1, !tbaa !54
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr i8, ptr %i.aq, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !54
  %.not.i260 = icmp eq i8 %i.me, 0
  br i1 %.not.i260, label %bb.bd, label %slow_search.exit

bb.bd:                                            ; preds = %bb.bc
  %i.mf = load i32, ptr %i.lz, align 8, !tbaa !58 ; 2 uses
  %i.mg = load i32, ptr %i.ma, align 4, !tbaa !59
  %i.mh = icmp eq i32 %i.mf, %i.mg
  br i1 %i.mh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mi = icmp ult ptr %.018.i, %2
  %spec.select.i261 = select i1 %i.mi, i32 %i.mf, i32 0
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.mj = call i32 @onigenc_mbclen(ptr noundef nonnull %.018.i, ptr noundef %2, ptr noundef nonnull %i.lx) #21
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mk = phi i32 [ %i.mj, %bb.bf ], [ %spec.select.i261, %bb.be ]
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr i8, ptr %.018.i, i64 %i.ml ; 2 uses
  %i.mn = icmp ult ptr %i.mm, %4
  br i1 %i.mn, label %bb.bc, label %slow_search.exit.thread, !llvm.loop !159

slow_search.exit:                                 ; preds = %bb.bc, %.lr.ph.i220.preheader, %bb.s, %.lr.ph.split.us.i, %bb.q, %.lr.ph72.split.us.i, %.lr.ph.i220, %str_lower_case_match.exit.thread.i244, %str_lower_case_match.exit.thread.i226, %.loopexit.loopexit.i, %str_lower_case_match.exit.thread.i, %bb.j
  %.3 = phi ptr [ %.2, %bb.j ], [ %.04871.us.i, %.lr.ph72.split.us.i ], [ %i.jl, %str_lower_case_match.exit.thread.i226 ], [ %.04556.i, %.lr.ph.i220 ], [ %.164.us.i, %.lr.ph.split.us.i ], [ %.04556.i, %.lr.ph.i220.preheader ], [ %.02639.i, %str_lower_case_match.exit.thread.i ], [ %.04354.i, %str_lower_case_match.exit.thread.i244 ], [ %.04871.i, %bb.q ], [ %scevgep.le.i, %.loopexit.loopexit.i ], [ %.164.i, %bb.s ], [ %.018.i, %bb.bc ] ; 18 uses
  %.not195 = icmp ne ptr %.3, null
  %i.mo = icmp ult ptr %.3, %4
  %or.cond = and i1 %.not195, %i.mo
  br i1 %or.cond, label %bb.bh, label %slow_search.exit.thread

bb.bh:                                            ; preds = %slow_search.exit
  %i.mp = ptrtoint ptr %.3 to i64                 ; 3 uses
  %i.mq = sub i64 %i.mp, %.pre
  %i.mr = load i64, ptr %i.j, align 8, !tbaa !77
  %i.ms = icmp ult i64 %i.mq, %i.mr
  br i1 %i.ms, label %.thread, label %bb.bl

.thread:                                          ; preds = %bb.bw, %is_mbc_newline_ex.exit, %bb.bh
  %i.mt = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 3 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 16
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !58 ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mt, i64 20
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !59
  %i.my = icmp eq i32 %i.mv, %i.mx
  br i1 %i.my, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread
  %i.mz = icmp ult ptr %.3, %2
  %spec.select208 = select i1 %i.mz, i32 %i.mv, i32 0
  br label %bb.bk

bb.bj:                                            ; preds = %.thread
  %i.na = call i32 @onigenc_mbclen(ptr noundef nonnull %.3, ptr noundef %2, ptr noundef nonnull %i.mt) #21
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.nb = phi i32 [ %i.na, %bb.bj ], [ %spec.select208, %bb.bi ]
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr i8, ptr %.3, i64 %i.nc
  br label %bb.j

bb.bl:                                            ; preds = %bb.bh
  %i.ne = load i32, ptr %i.av, align 8, !tbaa !80
  switch i32 %i.ne, label %is_mbc_newline_ex.exit.thread [
    i32 32, label %bb.bv
    i32 2, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.nf = icmp eq ptr %.3, %1
  br i1 %i.nf, label %is_mbc_newline_ex.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ng = load ptr, ptr %i.ap, align 8, !tbaa !46
  %.not198 = icmp eq ptr %.0175, null
  %i.nh = select i1 %.not198, ptr %1, ptr %.0175
  %i.ni = call ptr @onigenc_get_prev_char_head(ptr noundef %i.ng, ptr noundef %i.nh, ptr noundef nonnull %.3, ptr noundef %2) #21 ; 6 uses
  %i.nj = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 9 uses
  %i.nk = load i32, ptr %i.aw, align 8, !tbaa !49
  %i.nl = and i32 %i.nk, 65536
  %.not.i262 = icmp eq i32 %i.nl, 0
  br i1 %.not.i262, label %is_mbc_newline_ex.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nm = getelementptr i8, ptr %i.nj, i64 32     ; 3 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !60
  %i.no = call i32 %i.nn(ptr noundef %i.ni, ptr noundef %2, ptr noundef %i.nj) #21, !inline_history !61
  %i.np = icmp eq i32 %i.no, 10
  br i1 %i.np, label %is_mbc_newline_ex.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nq = getelementptr i8, ptr %i.nj, i64 16
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !58 ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nj, i64 20
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !59
  %i.nu = icmp eq i32 %i.nr, %i.nt
  br i1 %i.nu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nv = icmp ult ptr %i.ni, %2
  %spec.select.i263 = select i1 %i.nv, i32 %i.nr, i32 0
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.nw = call i32 @onigenc_mbclen(ptr noundef %i.ni, ptr noundef %2, ptr noundef nonnull %i.nj) #21
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.nx = phi i32 [ %i.nw, %bb.br ], [ %spec.select.i263, %bb.bq ]
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr i8, ptr %i.ni, i64 %i.ny  ; 2 uses
  %i.oa = icmp ult ptr %i.nz, %2
  br i1 %i.oa, label %bb.bt, label %is_mbc_newline_ex.exit

bb.bt:                                            ; preds = %bb.bs
  %i.ob = load ptr, ptr %i.nm, align 8, !tbaa !60
  %i.oc = call i32 %i.ob(ptr noundef %i.ni, ptr noundef nonnull %2, ptr noundef nonnull %i.nj) #21, !inline_history !61
  %i.od = icmp eq i32 %i.oc, 13
  br i1 %i.od, label %bb.bu, label %is_mbc_newline_ex.exit

bb.bu:                                            ; preds = %bb.bt
  %i.oe = load ptr, ptr %i.nm, align 8, !tbaa !60
  %i.of = call i32 %i.oe(ptr noundef %i.nz, ptr noundef nonnull %2, ptr noundef nonnull %i.nj) #21, !inline_history !61
  %i.og = icmp eq i32 %i.of, 10
  br i1 %i.og, label %is_mbc_newline_ex.exit.thread, label %is_mbc_newline_ex.exit

is_mbc_newline_ex.exit:                           ; preds = %bb.bn, %bb.bs, %bb.bt, %bb.bu
  %i.oh = getelementptr i8, ptr %i.nj, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !62
  %i.oj = call i32 %i.oi(ptr noundef %i.ni, ptr noundef %2, ptr noundef %i.nj) #21
  %.2.i = icmp eq i32 %i.oj, 0
  br i1 %.2.i, label %.thread, label %is_mbc_newline_ex.exit.thread

bb.bv:                                            ; preds = %bb.bl
  %i.ok = icmp eq ptr %.3, %2
  br i1 %i.ok, label %is_mbc_newline_ex.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ol = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.om = load i32, ptr %i.aw, align 8, !tbaa !49
  %i.on = call fastcc i32 @is_mbc_newline_ex(ptr noundef %i.ol, ptr noundef nonnull %.3, ptr noundef %1, ptr noundef %2, i32 noundef %i.om, i32 noundef 1)
  %.not197 = icmp eq i32 %i.on, 0
  br i1 %.not197, label %.thread, label %is_mbc_newline_ex.exit.thread

is_mbc_newline_ex.exit.thread:                    ; preds = %bb.bo, %bb.bu, %bb.bl, %bb.bv, %bb.bw, %bb.bm, %is_mbc_newline_ex.exit
  %i.oo = getelementptr i8, ptr %0, i64 432
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !76 ; 3 uses
  switch i64 %i.op, label %bb.by [
    i64 0, label %bb.bx
    i64 -1, label %is_mbc_newline_ex.exit.thread._crit_edge
  ]

is_mbc_newline_ex.exit.thread._crit_edge:         ; preds = %is_mbc_newline_ex.exit.thread
  %.pre361 = sub i64 %i.mp, %i.h
  br label %bb.ch

bb.bx:                                            ; preds = %is_mbc_newline_ex.exit.thread
  store ptr %.3, ptr %5, align 8, !tbaa !23
  %.not206 = icmp eq ptr %7, null
  br i1 %.not206, label %slow_search.exit.thread.sink.split, label %.sink.split

.sink.split:                                      ; preds = %bb.bx
  %i.oq = icmp ugt ptr %.3, %3
  %i.or = load ptr, ptr %i.ap, align 8, !tbaa !46
  %.not207 = icmp eq ptr %.0175, null
  %i.os = select i1 %.not207, ptr %1, ptr %.0175
  %.sink471 = select i1 %i.oq, ptr %3, ptr %i.os
  %i.ot = call ptr @onigenc_get_prev_char_head(ptr noundef %i.or, ptr noundef %.sink471, ptr noundef nonnull %.3, ptr noundef %2) #21
  store ptr %i.ot, ptr %7, align 8, !tbaa !23
  br label %slow_search.exit.thread.sink.split

bb.by:                                            ; preds = %is_mbc_newline_ex.exit.thread
  %i.ou = sub i64 %i.mp, %i.h                     ; 8 uses
  %i.ov = icmp ult i64 %i.ou, %i.op
  br i1 %i.ov, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  store ptr %1, ptr %5, align 8, !tbaa !23
  %.not205 = icmp eq ptr %7, null
  br i1 %.not205, label %bb.ch, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ow = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.ox = call ptr @onigenc_get_prev_char_head(ptr noundef %i.ow, ptr noundef %1, ptr noundef %1, ptr noundef %2) #21
  store ptr %i.ox, ptr %7, align 8, !tbaa !23
  br label %bb.ch

bb.cb:                                            ; preds = %bb.by
  %i.oy = sub i64 0, %i.op
  %i.oz = getelementptr i8, ptr %.3, i64 %i.oy    ; 4 uses
  store ptr %i.oz, ptr %5, align 8, !tbaa !23
  %i.pa = icmp ugt ptr %i.oz, %3
  br i1 %i.pa, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.pb = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.pc = call ptr @onigenc_get_right_adjust_char_head_with_prev(ptr noundef %i.pb, ptr noundef %3, ptr noundef nonnull %i.oz, ptr noundef %2, ptr noundef %7) #21 ; 2 uses
  store ptr %i.pc, ptr %5, align 8, !tbaa !23
  %.not203 = icmp eq ptr %7, null
  br i1 %.not203, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pd = load ptr, ptr %7, align 8, !tbaa !23
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.pf = load ptr, ptr %i.ap, align 8, !tbaa !46
  %.not204 = icmp eq ptr %.0175, null
  %i.pg = select i1 %.not204, ptr %3, ptr %.0175
  %i.ph = call ptr @onigenc_get_prev_char_head(ptr noundef %i.pf, ptr noundef %i.pg, ptr noundef %i.pc, ptr noundef %2) #21
  store ptr %i.ph, ptr %7, align 8, !tbaa !23
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cb
  %.not201 = icmp eq ptr %7, null
  br i1 %.not201, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pi = load ptr, ptr %i.ap, align 8, !tbaa !46
  %.not202 = icmp eq ptr %.0175, null
  %i.pj = select i1 %.not202, ptr %1, ptr %.0175
  %i.pk = call ptr @onigenc_get_prev_char_head(ptr noundef %i.pi, ptr noundef %i.pj, ptr noundef %i.oz, ptr noundef %2) #21
  store ptr %i.pk, ptr %7, align 8, !tbaa !23
  br label %bb.ch

bb.ch:                                            ; preds = %is_mbc_newline_ex.exit.thread._crit_edge, %bb.ca, %bb.bz, %bb.cf, %bb.cg, %bb.cc, %bb.cd, %bb.ce
  %.pre-phi362 = phi i64 [ %.pre361, %is_mbc_newline_ex.exit.thread._crit_edge ], [ %i.ou, %bb.ca ], [ %i.ou, %bb.bz ], [ %i.ou, %bb.cf ], [ %i.ou, %bb.cg ], [ %i.ou, %bb.cc ], [ %i.ou, %bb.cd ], [ %i.ou, %bb.ce ]
  %i.pl = load i64, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %i.pm = icmp ult i64 %.pre-phi362, %i.pl
  br i1 %i.pm, label %slow_search.exit.thread.sink.split, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pn = sub i64 0, %i.pl
  %i.po = getelementptr i8, ptr %.3, i64 %i.pn
  br label %slow_search.exit.thread.sink.split

slow_search.exit.thread.sink.split:               ; preds = %bb.ch, %bb.bx, %.sink.split, %bb.ci
  %.3.lcssa.sink = phi ptr [ %.3, %bb.bx ], [ %i.po, %bb.ci ], [ %.3, %.sink.split ], [ %1, %bb.ch ]
  store ptr %.3.lcssa.sink, ptr %6, align 8, !tbaa !23
  br label %slow_search.exit.thread

slow_search.exit.thread:                          ; preds = %bb.bb, %bb.as, %bb.an, %bb.ag, %bb.ae, %bb.x, %.preheader.i, %.preheader61.i, %slow_search.exit, %bb.bg, %bb.av, %.split56.us61.i, %bb.aq, %bb.ar, %._crit_edge.i217, %.split55.us.i, %._crit_edge.i, %bb.af, %bb.ad, %bb.w, %bb.o, %bb.r, %bb.p, %slow_search.exit.thread.sink.split, %bb.c, %bb.a
  %.0177 = phi i32 [ 0, %bb.w ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.r ], [ 0, %bb.aq ], [ 0, %._crit_edge.i ], [ 0, %bb.o ], [ 0, %bb.bg ], [ 0, %bb.p ], [ 0, %._crit_edge.i217 ], [ 0, %bb.av ], [ 1, %slow_search.exit.thread.sink.split ], [ 0, %bb.af ], [ 0, %.split55.us.i ], [ 0, %bb.ar ], [ 0, %.split56.us61.i ], [ 0, %slow_search.exit ], [ 0, %.preheader61.i ], [ 0, %.preheader.i ], [ 0, %bb.x ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.an ], [ 0, %bb.as ], [ 0, %bb.bb ]
  ret i32 %.0177
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @is_mbc_newline_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %4, 65536
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = tail call i32 %i.c(ptr noundef %1, ptr noundef %3, ptr noundef %0) #21
  %i.e = icmp eq i32 %i.d, 10
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not47 = icmp eq i32 %5, 0
  br i1 %.not47, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1, ptr noundef %3) #21 ; 2 uses
  %.not48 = icmp eq ptr %i.f, null
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.f, ptr noundef %3, ptr noundef nonnull %0) #21
  %i.i = icmp eq i32 %i.h, 13
  br i1 %i.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !59
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ult ptr %1, %3
  %spec.select = select i1 %i.o, i32 %i.k, i32 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = tail call i32 @onigenc_mbclen(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %0) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.q = phi i32 [ %i.p, %bb.i ], [ %spec.select, %bb.h ]
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %i.t = icmp ult ptr %i.s, %3
  br i1 %i.t, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.v = tail call i32 %i.u(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %0) #21
  %i.w = icmp eq i32 %i.v, 13
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.y = tail call i32 %i.x(ptr noundef %i.s, ptr noundef nonnull %3, ptr noundef nonnull %0) #21
  %i.z = icmp eq i32 %i.y, 10
  br i1 %i.z, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = tail call i32 %i.ab(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %0) #21
  %.not46 = icmp ne i32 %i.ac, 0
  %. = zext i1 %.not46 to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.af = tail call i32 %i.ae(ptr noundef %1, ptr noundef %3, ptr noundef %0) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.c, %bb.f, %bb.e, %bb.n
  %.2 = phi i32 [ %i.af, %bb.n ], [ 0, %bb.e ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.l ], [ %., %bb.m ]
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @backward_search_range(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(address) %4, ptr noundef %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [18 x i8], align 16               ; 7 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr i8, ptr %0, i64 424        ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77
  %i.h = icmp ugt i64 %i.g, %i.e
  br i1 %i.h, label %slow_search_backward.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 100
  %i.j = getelementptr i8, ptr %0, i64 72         ; 8 uses
  %i.k = getelementptr i8, ptr %0, i64 152
  %i.l = getelementptr i8, ptr %0, i64 96
  %i.m = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 128
  %i.p = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %.080 = phi ptr [ %3, %.preheader ], [ %.080.be, %.backedge ] ; 7 uses
  %i.q = load i32, ptr %i.i, align 4, !tbaa !75
  switch i32 %i.q, label %slow_search_backward.exit [
    i32 1, label %bb.c
    i32 4, label %bb.g
    i32 6, label %bb.g
    i32 7, label %bb.g
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 5, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !78   ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !79   ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %.neg.i = sub i64 %i.v, %i.u
  %i.w = getelementptr i8, ptr %2, i64 %.neg.i    ; 2 uses
  %i.x = icmp ugt ptr %i.w, %.080
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.r, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.aa = call ptr %i.z(ptr noundef %5, ptr noundef %i.w, ptr noundef %2, ptr noundef %i.r) #21, !inline_history !162
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.aa, %bb.d ], [ %.080, %bb.c ] ; 2 uses
  %.not37.i = icmp ult ptr %.0.i, %4
  br i1 %.not37.i, label %slow_search_backward.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.032.i157 = getelementptr i8, ptr %i.s, i64 1  ; 3 uses
  %i.ab = icmp ult ptr %.032.i157, %i.t
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.138.i = phi ptr [ %i.aj, %bb.f ], [ %.0.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.ac = load i8, ptr %.138.i, align 1, !tbaa !54
  %i.ad = load i8, ptr %i.s, align 1, !tbaa !54
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br i1 %i.ae, label %.preheader.i.preheader, label %bb.f

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  br i1 %i.ab, label %.lr.ph, label %.preheader.i._crit_edge

.preheader.i:                                     ; preds = %.lr.ph
  %.032.i = getelementptr i8, ptr %.032.i159, i64 1 ; 3 uses
  %i.af = icmp ult ptr %.032.i, %i.t
  br i1 %i.af, label %.lr.ph, label %.preheader.i._crit_edge, !llvm.loop !163

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.032.i159 = phi ptr [ %.032.i, %.preheader.i ], [ %.032.i157, %.preheader.i.preheader ] ; 3 uses
  %.1.pn.i158 = phi ptr [ %.031.i, %.preheader.i ], [ %.138.i, %.preheader.i.preheader ]
  %.031.i = getelementptr i8, ptr %.1.pn.i158, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.032.i159, align 1, !tbaa !54
  %i.ah = load i8, ptr %.031.i, align 1, !tbaa !54
  %.not36.i = icmp eq i8 %i.ag, %i.ah
  br i1 %.not36.i, label %.preheader.i, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader.i._crit_edge, !llvm.loop !163

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %._crit_edge, %.preheader.i.preheader
  %.032.i.lcssa = phi ptr [ %.032.i159, %._crit_edge ], [ %.032.i157, %.preheader.i.preheader ], [ %.032.i, %.preheader.i ]
  %i.ai = icmp eq ptr %.032.i.lcssa, %i.t
  br i1 %i.ai, label %slow_search_backward.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i._crit_edge, %.lr.ph.i
  %i.aj = call ptr @onigenc_get_prev_char_head(ptr noundef %i.r, ptr noundef %5, ptr noundef nonnull %.138.i, ptr noundef %2) #21 ; 2 uses
  %.not.i = icmp ult ptr %i.aj, %4
  br i1 %.not.i, label %slow_search_backward.exit.thread, label %.lr.ph.i, !llvm.loop !164

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !46  ; 5 uses
  %i.al = load i32, ptr %i.l, align 8, !tbaa !50
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !78  ; 3 uses
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !79  ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %.neg.i95 = sub i64 %i.ap, %i.ao
  %i.aq = getelementptr i8, ptr %2, i64 %.neg.i95 ; 2 uses
end_hunk_0
