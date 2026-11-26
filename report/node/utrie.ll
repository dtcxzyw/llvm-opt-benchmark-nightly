Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/utrie?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 30
begin_hunk_0_@utrie_serialize_78:bb.a
  %i.fw = add nsw i32 %.015.i.i, 32
  %i.fx = tail call noundef i32 %spec.store.select(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef %i.fw) #16, !inline_history !28 ; 3 uses
  %i.fy = load i8, ptr %i.i, align 1
  %.not67.i = icmp eq i8 %i.fy, 0
  br i1 %.not67.i, label %utrie_get32_78.exit.thread.i, label %utrie_get32_78.exit.i

utrie_get32_78.exit.i:                            ; preds = %_ZL19_findSameIndexBlockPKiii.exit.i
  %.not58.i = icmp eq i32 %i.fx, 0
  br i1 %.not58.i, label %bb.av, label %bb.as

utrie_get32_78.exit.thread.i:                     ; preds = %_ZL19_findSameIndexBlockPKiii.exit.i
  %i.fz = lshr i32 %.15471.i, 10                  ; 2 uses
  %i.ga = add nuw nsw i32 %i.fz, 55232
  %i.gb = lshr i32 %i.ga, 5
  %i.gc = and i32 %i.gb, 2047
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4            ; 4 uses
  %i.gg = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.gh = tail call i32 @llvm.abs.i32(i32 %i.gf, i1 true)
  %i.gi = and i32 %i.fz, 31                       ; 2 uses
  %i.gj = add nuw nsw i32 %i.gh, %i.gi
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4
  %.not5864.i = icmp eq i32 %i.fx, %i.gm
  br i1 %.not5864.i, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %utrie_get32_78.exit.thread.i
  %i.gn = icmp sgt i32 %i.gf, 0
  br i1 %i.gn, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.go = load i32, ptr %i.an, align 4            ; 5 uses
  %i.gp = add nsw i32 %i.go, 32                   ; 2 uses
  %i.gq = load i32, ptr %i.ao, align 8
  %i.gr = icmp sgt i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.as, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i.i.i

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i.i.i:   ; preds = %bb.aq
  store i32 %i.gp, ptr %i.an, align 4
  %i.gs = icmp slt i32 %i.go, 0
  br i1 %i.gs, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i.i.i
  store i32 %i.go, ptr %i.ge, align 4
  %i.gt = zext nneg i32 %i.go to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gt
  %i.gv = sext i32 %i.gf to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.gu, ptr noundef nonnull align 4 dereferenceable(128) %i.gx, i64 128, i1 false)
  %.pre.i = load ptr, ptr %i.o, align 8
  br label %bb.at

bb.as:                                            ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i.i.i, %bb.aq, %utrie_get32_78.exit.i
  store i32 7, ptr %5, align 4
  br label %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %i.gy = phi ptr [ %.pre.i, %bb.ar ], [ %i.gg, %bb.ap ]
  %.0.i.i.i = phi i32 [ %i.go, %bb.ar ], [ %i.gf, %bb.ap ]
  %i.gz = add nuw nsw i32 %.0.i.i.i, %i.gi
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ha
  store i32 %i.fx, ptr %i.hb, align 4
  %i.hc = icmp eq i32 %.015.i.i, %.05272.i
  br i1 %i.hc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hd = sext i32 %.05272.i to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hd
  %i.hf = sext i32 %i.au to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hf
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.he, ptr noundef nonnull align 4 dereferenceable(128) %i.hg, i64 128, i1 false)
  %i.hh = add nsw i32 %.05272.i, 32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %utrie_get32_78.exit.thread.i, %utrie_get32_78.exit.i
  %.1.i = phi i32 [ %i.hh, %bb.au ], [ %.05272.i, %bb.at ], [ %.05272.i, %utrie_get32_78.exit.i ], [ %.05272.i, %utrie_get32_78.exit.thread.i ]
  %i.hi = add nsw i32 %i.at, 1024
  br label %bb.ax

bb.aw:                                            ; preds = %bb.i
  %i.hj = add nsw i32 %.15471.i, 32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.255.i = phi i32 [ %i.hi, %bb.av ], [ %i.hj, %bb.aw ] ; 2 uses
  %.2.i = phi i32 [ %.1.i, %bb.av ], [ %.05272.i, %bb.aw ] ; 4 uses
  %i.hk = icmp slt i32 %.255.i, 1114112
  br i1 %i.hk, label %bb.i, label %bb.ay, !llvm.loop !29

bb.ay:                                            ; preds = %bb.ax
  %i.hl = icmp sgt i32 %.2.i, 34815
  br i1 %i.hl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 8, ptr %5, align 4
  br label %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8320
  %i.ho = shl i32 %.2.i, 2
  %i.hp = add i32 %i.ho, -8192
  %i.hq = sext i32 %i.hp to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hn, ptr nonnull align 8 %i.hm, i64 %i.hq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hm, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false)
  %i.hr = add nsw i32 %.2.i, 32
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 139404
  store i32 %i.hr, ptr %i.hs, align 4
  %.val.pre = load i32, ptr %5, align 4
  br label %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit

_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit: ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.thread.i, %bb.as, %bb.az, %bb.ba
  %.val = phi i32 [ 7, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.thread.i ], [ 7, %bb.as ], [ 8, %bb.az ], [ %.val.pre, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_ZL13utrie_compactP8UNewTrieaP10UErrorCode(ptr noundef %0, i8 noundef signext 1, i32 %.val)
  store i8 1, ptr %i.i, align 1
  %i.ht = load i32, ptr %5, align 4
  %i.hu = icmp slt i32 %i.ht, 1
  br i1 %i.hu, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit, %bb.f
  %.not87 = icmp eq i8 %4, 0                      ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 139412
  %i.hw = load i32, ptr %i.hv, align 4            ; 2 uses
  br i1 %.not87, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 139404
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = add nsw i32 %i.hy, %i.hw
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.ia = phi i32 [ %i.hz, %bb.bc ], [ %i.hw, %bb.bb ]
  %i.ib = icmp sgt i32 %i.ia, 262143
  br i1 %i.ib, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 8, ptr %5, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 139404 ; 6 uses
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = shl nsw i32 %i.id, 1
  %i.if = add i32 %i.ie, 16
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 139412
  %i.ih = load i32, ptr %i.ig, align 4
  %. = select i1 %.not87, i32 2, i32 1
  %i.ii = shl nsw i32 %i.ih, %.
  %.0 = add nsw i32 %i.if, %i.ii                  ; 6 uses
  %i.ij = icmp sgt i32 %.0, %2
  br i1 %i.ij, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ik = getelementptr i8, ptr %1, i64 16        ; 13 uses
  store i32 1416784229, ptr %1, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %spec.select = select i1 %.not87, i32 293, i32 37 ; 2 uses
  store i32 %spec.select, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 139418
  %i.in = load i8, ptr %i.im, align 2
  %.not88 = icmp eq i8 %i.in, 0
  br i1 %.not88, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.io = or disjoint i32 %spec.select, 512
  store i32 %i.io, ptr %i.il, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ip = load i32, ptr %i.ic, align 4
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ip, ptr %i.iq, align 4
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 3 uses
  %i.is = load i32, ptr %i.ir, align 4            ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.is, ptr %i.it, align 4
  %i.iu = load i32, ptr %i.ic, align 4            ; 13 uses
  %i.iv = icmp sgt i32 %i.iu, 0                   ; 2 uses
  br i1 %.not87, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.iv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bj
  %i.iw = zext nneg i32 %i.iu to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.iu, 20
  br i1 %min.iters.check, label %.lr.ph.preheader193, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ix = add nsw i32 %i.iu, -1
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  %i.iz = shl nuw nsw i64 %i.iy, 1
  %i.ja = getelementptr i8, ptr %1, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.ja, i64 18     ; 2 uses
  %6 = shl nuw nsw i64 %i.iy, 2
  %7 = getelementptr i8, ptr %0, i64 %6
  %i.jc = getelementptr i8, ptr %7, i64 4
  %i.jd = getelementptr i8, ptr %0, i64 139408
  %bound0 = icmp ult ptr %i.ik, %i.jc
  %bound1 = icmp ult ptr %0, %i.jb
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %i.ik, %i.jd
  %bound1134 = icmp ult ptr %i.ic, %i.jb
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  br i1 %conflict.rdx, label %.lr.ph.preheader193, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iw, 2147483640              ; 5 uses
  %i.je = trunc nuw nsw i64 %n.vec to i32
  %i.jf = sub nsw i32 %i.iu, %i.je
  %i.jg = shl nuw nsw i64 %n.vec, 1
  %i.jh = getelementptr i8, ptr %i.ik, i64 %i.jg  ; 2 uses
  %i.ji = shl nuw nsw i64 %n.vec, 2
  %i.jj = getelementptr i8, ptr %0, i64 %i.ji
  %i.jk = load i32, ptr %i.ic, align 4, !alias.scope !47
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jl = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ik, i64 %i.jl ; 2 uses
  %i.jm = shl i64 %index, 2
  %next.gep136 = getelementptr i8, ptr %0, i64 %i.jm ; 2 uses
  %i.jn = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep136, align 4, !alias.scope !48
  %wide.load137 = load <4 x i32>, ptr %i.jn, align 4, !alias.scope !48
  %i.jo = add <4 x i32> %broadcast.splat, %wide.load
  %i.jp = add <4 x i32> %broadcast.splat, %wide.load137
  %i.jq = lshr <4 x i32> %i.jo, splat (i32 2)
  %i.jr = lshr <4 x i32> %i.jp, splat (i32 2)
  %i.js = trunc <4 x i32> %i.jq to <4 x i16>
  %i.jt = trunc <4 x i32> %i.jr to <4 x i16>
  %i.ju = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.js, ptr %next.gep, align 2, !alias.scope !49, !noalias !50
  store <4 x i16> %i.jt, ptr %i.ju, align 2, !alias.scope !49, !noalias !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jv = icmp eq i64 %index.next, %n.vec
  br i1 %i.jv, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.iw
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader193

.lr.ph.preheader193:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.07493.ph = phi i32 [ %i.iu, %vector.memcheck ], [ %i.iu, %.lr.ph.preheader ], [ %i.jf, %middle.block ]
  %.07592.ph = phi ptr [ %i.ik, %vector.memcheck ], [ %i.ik, %.lr.ph.preheader ], [ %i.jh, %middle.block ]
  %.07891.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.jj, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader193, %.lr.ph
  %.07493 = phi i32 [ %i.kd, %.lr.ph ], [ %.07493.ph, %.lr.ph.preheader193 ] ; 2 uses
  %.07592 = phi ptr [ %i.kc, %.lr.ph ], [ %.07592.ph, %.lr.ph.preheader193 ] ; 2 uses
  %.07891 = phi ptr [ %i.jw, %.lr.ph ], [ %.07891.ph, %.lr.ph.preheader193 ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.07891, i64 4
  %i.jx = load i32, ptr %.07891, align 4
  %i.jy = load i32, ptr %i.ic, align 4
  %i.jz = add i32 %i.jy, %i.jx
  %i.ka = lshr i32 %i.jz, 2
  %i.kb = trunc i32 %i.ka to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %.07592, i64 2 ; 2 uses
  store i16 %i.kb, ptr %.07592, align 2
  %i.kd = add nsw i32 %.07493, -1
  %i.ke = icmp samesign ugt i32 %.07493, 1
  br i1 %i.ke, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa126 = phi ptr [ %i.jh, %middle.block ], [ %i.kc, %.lr.ph ]
  %.pre = load i32, ptr %i.ir, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bj
  %i.kf = phi i32 [ %i.is, %bb.bj ], [ %.pre, %._crit_edge.loopexit ] ; 7 uses
  %.075.lcssa = phi ptr [ %i.ik, %bb.bj ], [ %.lcssa126, %._crit_edge.loopexit ] ; 6 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %._crit_edge
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.ki = load ptr, ptr %i.kh, align 8            ; 6 uses
  %i.kj = zext nneg i32 %i.kf to i64              ; 2 uses
  %min.iters.check146 = icmp ult i32 %i.kf, 20
  br i1 %min.iters.check146, label %.lr.ph98.preheader192, label %vector.memcheck147

vector.memcheck147:                               ; preds = %.lr.ph98.preheader
  %i.kk = add nsw i32 %i.kf, -1
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %i.km = shl nuw nsw i64 %i.kl, 1
  %i.kn = getelementptr i8, ptr %.075.lcssa, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 2
  %i.kp = shl nuw nsw i64 %i.kl, 2
  %i.kq = getelementptr i8, ptr %i.ki, i64 %i.kp
  %i.kr = getelementptr i8, ptr %i.kq, i64 4
  %bound0148 = icmp ult ptr %.075.lcssa, %i.kr
  %bound1149 = icmp ult ptr %i.ki, %i.ko
  %found.conflict150 = and i1 %bound0148, %bound1149
  br i1 %found.conflict150, label %.lr.ph98.preheader192, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck147
  %n.vec152 = and i64 %i.kj, 2147483640           ; 5 uses
  %i.ks = trunc nuw nsw i64 %n.vec152 to i32
  %i.kt = sub nsw i32 %i.kf, %i.ks
  %i.ku = shl nuw nsw i64 %n.vec152, 1
  %i.kv = getelementptr i8, ptr %.075.lcssa, i64 %i.ku
  %i.kw = shl nuw nsw i64 %n.vec152, 2
  %i.kx = getelementptr i8, ptr %i.ki, i64 %i.kw
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %i.ky = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %.075.lcssa, i64 %i.ky ; 2 uses
  %i.kz = shl i64 %index154, 2
  %next.gep156 = getelementptr i8, ptr %i.ki, i64 %i.kz ; 2 uses
  %i.la = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !alias.scope !51
  %wide.load158 = load <4 x i32>, ptr %i.la, align 4, !alias.scope !51
  %i.lb = trunc <4 x i32> %wide.load157 to <4 x i16>
  %i.lc = trunc <4 x i32> %wide.load158 to <4 x i16>
  %i.ld = getelementptr i8, ptr %next.gep155, i64 8
  store <4 x i16> %i.lb, ptr %next.gep155, align 2, !alias.scope !52, !noalias !51
  store <4 x i16> %i.lc, ptr %i.ld, align 2, !alias.scope !52, !noalias !51
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.le, label %middle.block160, label %vector.body153, !llvm.loop !39

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %n.vec152, %i.kj
  br i1 %cmp.n161, label %.loopexit, label %.lr.ph98.preheader192

.lr.ph98.preheader192:                            ; preds = %vector.memcheck147, %.lr.ph98.preheader, %middle.block160
  %.196.ph = phi i32 [ %i.kf, %vector.memcheck147 ], [ %i.kf, %.lr.ph98.preheader ], [ %i.kt, %middle.block160 ]
  %.17695.ph = phi ptr [ %.075.lcssa, %vector.memcheck147 ], [ %.075.lcssa, %.lr.ph98.preheader ], [ %i.kv, %middle.block160 ]
  %.17994.ph = phi ptr [ %i.ki, %vector.memcheck147 ], [ %i.ki, %.lr.ph98.preheader ], [ %i.kx, %middle.block160 ]
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.preheader192, %.lr.ph98
  %.196 = phi i32 [ %i.lj, %.lr.ph98 ], [ %.196.ph, %.lr.ph98.preheader192 ] ; 2 uses
  %.17695 = phi ptr [ %i.li, %.lr.ph98 ], [ %.17695.ph, %.lr.ph98.preheader192 ] ; 2 uses
  %.17994 = phi ptr [ %i.lf, %.lr.ph98 ], [ %.17994.ph, %.lr.ph98.preheader192 ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.17994, i64 4
  %i.lg = load i32, ptr %.17994, align 4
  %i.lh = trunc i32 %i.lg to i16
  %i.li = getelementptr inbounds nuw i8, ptr %.17695, i64 2
  store i16 %i.lh, ptr %.17695, align 2
  %i.lj = add nsw i32 %.196, -1
  %i.lk = icmp samesign ugt i32 %.196, 1
  br i1 %i.lk, label %.lr.ph98, label %.loopexit, !llvm.loop !40

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.iv, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %bb.bk
  %i.ll = zext nneg i32 %i.iu to i64              ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.iu, 16
  br i1 %min.iters.check171, label %.lr.ph103.preheader190, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph103.preheader
  %i.lm = add nsw i32 %i.iu, -1
  %i.ln = zext i32 %i.lm to i64                   ; 2 uses
  %i.lo = shl nuw nsw i64 %i.ln, 1
  %i.lp = getelementptr i8, ptr %1, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 18
  %i.lr = shl nuw nsw i64 %i.ln, 2
  %i.ls = getelementptr i8, ptr %0, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 4
  %bound0173 = icmp ult ptr %i.ik, %i.lt
  %bound1174 = icmp ult ptr %0, %i.lq
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph103.preheader190, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck172
  %n.vec177 = and i64 %i.ll, 2147483640           ; 5 uses
  %i.lu = trunc nuw nsw i64 %n.vec177 to i32
  %i.lv = sub nsw i32 %i.iu, %i.lu
  %i.lw = shl nuw nsw i64 %n.vec177, 1
  %i.lx = getelementptr i8, ptr %i.ik, i64 %i.lw  ; 2 uses
  %i.ly = shl nuw nsw i64 %n.vec177, 2
  %i.lz = getelementptr i8, ptr %0, i64 %i.ly
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 3 uses
  %i.ma = shl i64 %index179, 1
  %next.gep180 = getelementptr i8, ptr %i.ik, i64 %i.ma ; 2 uses
  %i.mb = shl i64 %index179, 2
  %next.gep181 = getelementptr i8, ptr %0, i64 %i.mb ; 2 uses
  %i.mc = getelementptr i8, ptr %next.gep181, i64 16
  %wide.load182 = load <4 x i32>, ptr %next.gep181, align 4, !alias.scope !53
  %wide.load183 = load <4 x i32>, ptr %i.mc, align 4, !alias.scope !53
  %i.md = lshr <4 x i32> %wide.load182, splat (i32 2)
  %i.me = lshr <4 x i32> %wide.load183, splat (i32 2)
  %i.mf = trunc <4 x i32> %i.md to <4 x i16>
  %i.mg = trunc <4 x i32> %i.me to <4 x i16>
  %i.mh = getelementptr i8, ptr %next.gep180, i64 8
  store <4 x i16> %i.mf, ptr %next.gep180, align 2, !alias.scope !54, !noalias !53
  store <4 x i16> %i.mg, ptr %i.mh, align 2, !alias.scope !54, !noalias !53
  %index.next184 = add nuw i64 %index179, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.mi, label %middle.block185, label %vector.body178, !llvm.loop !44

end_hunk_0
begin_hunk_1_@utrie_enum_78:bb.a

bb.bb:                                            ; preds = %.preheader237.split
  %i.dv = add nuw nsw i32 %.4185, 32
  br label %.loopexit.split

bb.bc:                                            ; preds = %.preheader237.split
  %i.dw = icmp eq i32 %i.dt, %.0371
  br i1 %i.dw, label %bb.bf, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bc
  %i.dx = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = tail call noundef i32 %spec.store.select(ptr noundef %3, i32 noundef %i.dz) #16 ; 3 uses
  %.not220.peel = icmp eq i32 %i.ea, %.8197
  br i1 %.not220.peel, label %.preheader.peel.next, label %bb.bd

bb.bd:                                            ; preds = %.preheader.preheader
  %i.eb = icmp slt i32 %.8175, %.4185
  br i1 %i.eb, label %bb.be, label %.preheader.peel.next

bb.be:                                            ; preds = %bb.bd
  %i.ec = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.8175, i32 noundef %.4185, i32 noundef %.8197) #16
  %.not221.peel = icmp eq i8 %i.ec, 0
  br i1 %.not221.peel, label %.loopexit236, label %.preheader.peel.next

.preheader.peel.next:                             ; preds = %.preheader.preheader, %bb.be, %bb.bd
  %.11200.peel = phi i32 [ %.8197, %.preheader.preheader ], [ %i.ea, %bb.be ], [ %i.ea, %bb.bd ]
  %.11178.peel = phi i32 [ %.8175, %.preheader.preheader ], [ %.4185, %bb.be ], [ %.4185, %bb.bd ]
  %i.ed = add nuw nsw i32 %.4185, 1
  %invariant.gep388 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dx
  br label %.preheader

bb.bf:                                            ; preds = %bb.bc
  %.not223 = icmp eq i32 %.8197, %i.j
  br i1 %.not223, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ee = icmp slt i32 %.8175, %.4185
  br i1 %i.ee, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ef = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.8175, i32 noundef %.4185, i32 noundef %.8197) #16
  %.not224 = icmp eq i8 %i.ef, 0
  br i1 %.not224, label %.loopexit236, label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %.9176 = phi i32 [ %.8175, %bb.bf ], [ %.4185, %bb.bh ], [ %.4185, %bb.bg ]
  %.10 = phi i32 [ %.9, %bb.bf ], [ %.0371, %bb.bh ], [ %.0371, %bb.bg ]
  %i.eg = add nuw nsw i32 %.4185, 32
  br label %.loopexit.split

.preheader:                                       ; preds = %.preheader.peel.next, %bb.bl
  %indvars.iv329 = phi i64 [ 1, %.preheader.peel.next ], [ %indvars.iv.next330, %bb.bl ] ; 2 uses
  %.11294 = phi i32 [ %i.dt, %.preheader.peel.next ], [ %.13, %bb.bl ]
  %.10177292 = phi i32 [ %.11178.peel, %.preheader.peel.next ], [ %.11178, %bb.bl ] ; 3 uses
  %.5186290 = phi i32 [ %i.ed, %.preheader.peel.next ], [ %i.el, %bb.bl ] ; 5 uses
  %.10199289 = phi i32 [ %.11200.peel, %.preheader.peel.next ], [ %.11200, %bb.bl ] ; 3 uses
  %gep389 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep388, i64 %indvars.iv329
  %i.eh = load i32, ptr %gep389, align 4
  %i.ei = tail call noundef i32 %spec.store.select(ptr noundef %3, i32 noundef %i.eh) #16 ; 3 uses
  %.not220 = icmp eq i32 %i.ei, %.10199289
  br i1 %.not220, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.preheader
  %i.ej = icmp slt i32 %.10177292, %.5186290
  br i1 %i.ej, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ek = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.10177292, i32 noundef %.5186290, i32 noundef %.10199289) #16
  %.not221 = icmp eq i8 %i.ek, 0
  br i1 %.not221, label %.loopexit236, label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %.preheader
  %.11200 = phi i32 [ %.10199289, %.preheader ], [ %i.ei, %bb.bk ], [ %i.ei, %bb.bj ] ; 2 uses
  %.11178 = phi i32 [ %.10177292, %.preheader ], [ %.5186290, %bb.bk ], [ %.5186290, %bb.bj ] ; 2 uses
  %.13 = phi i32 [ %.11294, %.preheader ], [ -1, %bb.bk ], [ -1, %bb.bj ] ; 2 uses
  %i.el = add nuw nsw i32 %.5186290, 1            ; 2 uses
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next330, 32
  br i1 %exitcond332.not, label %.loopexit.split, label %.preheader, !llvm.loop !73

.loopexit.split:                                  ; preds = %bb.bl, %bb.bb, %bb.bi
  %.12201 = phi i32 [ %.8197, %bb.bb ], [ %i.j, %bb.bi ], [ %.11200, %bb.bl ] ; 2 uses
  %.6187 = phi i32 [ %i.dv, %bb.bb ], [ %i.eg, %bb.bi ], [ %i.el, %bb.bl ] ; 2 uses
  %.12179 = phi i32 [ %.8175, %bb.bb ], [ %.9176, %bb.bi ], [ %.11178, %bb.bl ] ; 2 uses
  %.14 = phi i32 [ %.9, %bb.bb ], [ %.10, %bb.bi ], [ %.13, %bb.bl ] ; 2 uses
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next336 to i32
  %exitcond338.not = icmp eq i32 %i.co, %lftr.wideiv
  br i1 %exitcond338.not, label %.loopexit239, label %.preheader237.split, !llvm.loop !72

.loopexit239:                                     ; preds = %.loopexit.split, %.loopexit.split.us.us, %bb.ba
  %.13202 = phi i32 [ %i.j, %bb.ba ], [ %.12201.us, %.loopexit.split.us.us ], [ %.12201, %.loopexit.split ]
  %.7188 = phi i32 [ %i.dp, %bb.ba ], [ %.6187.us, %.loopexit.split.us.us ], [ %.6187, %.loopexit.split ]
  %.13180 = phi i32 [ %.7174, %bb.ba ], [ %.12179.us, %.loopexit.split.us.us ], [ %.12179, %.loopexit.split ]
  %.15 = phi i32 [ %.8, %bb.ba ], [ %.14.us, %.loopexit.split.us.us ], [ %.14, %.loopexit.split ]
  %i.em = add nsw i32 %.0166305, 1
  br label %.backedge

bb.bm:                                            ; preds = %.backedge
  %i.en = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.5172.be, i32 noundef %.3184.be, i32 noundef %.5194.be) #16 ; 0 uses
  br label %.loopexit236

.loopexit236:                                     ; preds = %bb.y, %bb.v, %bb.ab, %bb.n, %bb.h, %bb.j, %bb.az, %bb.ag, %bb.bh, %bb.be, %bb.au, %bb.ao, %bb.bk, %bb.aq, %bb.a, %bb.b, %bb.bm
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL13enumSameValuePKvj(ptr nofree readnone captures(none) %0, i32 noundef returned %1) unnamed_addr #10 !guid !76 {
bb.a:
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{i64 -3458695543062980280}
!10 = !{i64 -2396931205387454526}
!11 = !{i64 -7377273623348590807}
!12 = !{i64 6583727354603848304}
!13 = !{i64 -8081863879905239554}
!14 = !{i64 2724170456012300475}
!15 = distinct !{!15, !6, !7, !8}
!16 = distinct !{!16, !6, !7, !8}
!17 = distinct !{!17, !6, !8, !7}
!18 = distinct !{!18, !6, !8, !7}
!19 = distinct !{!19, !6, !7, !8}
!20 = distinct !{!20, !6, !7, !8}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6, !8, !7}
!23 = distinct !{!23, !6, !8, !7}
!24 = distinct !{!24, !6, !7, !8}
!25 = distinct !{!25, !6, !7, !8}
!26 = !{i64 -8491101329941767849}
!27 = distinct !{!27, !6}
!28 = distinct !{null}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, i1 false, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !6, !8, !7}
!35 = distinct !{!35, !6, !8}
!36 = distinct !{!36, i1 false, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !6, !8, !7}
!40 = distinct !{!40, !6, !8}
!41 = distinct !{!41, i1 false, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !6, !8, !7}
!45 = distinct !{!45, !6, !8}
!46 = !{i64 9031305106254661731}
!47 = !{!31}
!48 = !{!32}
!49 = !{!33}
!50 = !{!32, !31}
!51 = !{!37}
!52 = !{!38}
!53 = !{!42}
!54 = !{!43}
!55 = distinct !{!55, !6}
!56 = !{i64 -8270494039726703510}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = !{i64 6037092704988507320}
!63 = !{i64 6937008997700433453}
!64 = !{i64 -9055442390983099407}
!65 = distinct !{!65, !6, !8, !7}
!66 = !{i64 8736202751686542204}
!67 = distinct !{!67, !6, !75}
!68 = distinct !{!68, !6}
!69 = distinct !{!69, !6, !75}
!70 = distinct !{!70, !6}
!71 = distinct !{!71, !6, !75}
!72 = distinct !{!72, !6}
!73 = distinct !{!73, !6, !75}
!74 = !{i64 5669514042607950611}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = !{i64 3785937762323954774}
end_hunk_1
