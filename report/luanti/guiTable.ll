Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiTable?download=true
inline.NumInlined: 1972
inline.NumDeleted: 855
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8GUITable7OnEventERK6SEvent:bb.a
  br i1 %.not.i121, label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fw, i8 0, i64 28, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !227
  store ptr %0, ptr %i.fv, align 8, !tbaa !123
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.fx, align 8, !tbaa !123
  store i32 19, ptr %i.fw, align 8, !tbaa !123
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !21
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef zeroext i1 %i.ga(ptr noundef nonnull align 8 dereferenceable(308) %i.fu, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !228 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

bb.an:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !123 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !123 ; 2 uses
  store i32 %i.gd, ptr %7, align 4, !tbaa !223
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !224
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !123
  %i.gj = icmp eq i32 %i.gi, 9
  br i1 %i.gj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !109 ; 2 uses
  %i.gm = tail call noundef i32 @_ZNK3gui13CGUIScrollBar12getTargetPosEv(ptr noundef nonnull align 8 dereferenceable(420) %i.gl)
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.go = load float, ptr %i.gn, align 8, !tbaa !123
  %i.gp = fcmp nsz olt float %i.go, 0.000000e+00
  %.neg = select i1 %i.gp, i32 3, i32 -3
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !98
  %.neg107 = mul i32 %.neg, %i.gr
  %i.gs = sdiv i32 %.neg107, 2
  %i.gt = add nsw i32 %i.gs, %i.gm
  tail call void @_ZN3gui13CGUIScrollBar18setPosInterpolatedEi(ptr noundef nonnull align 8 dereferenceable(420) %i.gl, i32 noundef %i.gt)
  br label %_ZN8GUITable14sendTableEventEib.exit128.thread

bb.ap:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !157
  %i.gx = load ptr, ptr %i.gu, align 8, !tbaa !124
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = lshr exact i64 %i.ha, 2
  %i.hc = trunc i64 %i.hb to i32                  ; 3 uses
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %.thread142, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !229
  %i.hg = xor i32 %i.hf, -1
  %i.hh = add i32 %i.gf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !109
  %i.hk = tail call noundef i32 @_ZNK3gui13CGUIScrollBar6getPosEv(ptr noundef nonnull align 8 dereferenceable(420) %i.hj)
  %i.hl = add nsw i32 %i.hh, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !98
  %i.ho = sdiv i32 %i.hl, %i.hn                   ; 11 uses
  %i.hp = icmp sgt i32 %i.ho, -1
  %i.hq = icmp slt i32 %i.ho, %i.hc
  %or.cond.i = and i1 %i.hp, %i.hq
  br i1 %or.cond.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hr = icmp slt i32 %i.ho, 0
  %i.hs = add nsw i32 %i.hc, -1
  %spec.select.i = select i1 %i.hr, i32 0, i32 %i.hs
  br label %.thread142

bb.as:                                            ; preds = %bb.aq
  %i.ht = load ptr, ptr %i.gv, align 8, !tbaa !157
  %i.hu = load ptr, ptr %i.gu, align 8, !tbaa !124 ; 2 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = lshr exact i64 %i.hx, 2
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = icmp slt i32 %i.ho, %i.hz
  br i1 %i.ia, label %_ZNK8GUITable6getRowEi.exit.i, label %.thread142

_ZNK8GUITable6getRowEi.exit.i:                    ; preds = %bb.as
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ic = zext nneg i32 %i.ho to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !130
  %i.if = sext i32 %i.ie to i64
  %i.ig = load ptr, ptr %i.ib, align 8, !tbaa !126 ; 2 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.if ; 3 uses
  %i.ii = icmp eq ptr %i.ig, null
  br i1 %i.ii, label %.thread142, label %bb.at

bb.at:                                            ; preds = %_ZNK8GUITable6getRowEi.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !230
  %i.il = xor i32 %i.ik, -1
  %i.im = add i32 %i.gd, %i.il                    ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.io = load i32, ptr %i.in, align 8, !tbaa !160 ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 1
  br i1 %i.ip, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.at
  %i.iq = add nsw i32 %i.io, -1
  %i.ir = load ptr, ptr %i.ih, align 8, !tbaa !148 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %.lr.ph.i
  %.052.i = phi i32 [ %i.iq, %.lr.ph.i ], [ %.1.i124, %bb.aw ] ; 2 uses
  %.03251.i = phi i32 [ 0, %.lr.ph.i ], [ %.133.i, %bb.aw ] ; 3 uses
  %i.is = sub nsw i32 %.052.i, %.03251.i
  %i.it = lshr i32 %i.is, 1
  %i.iu = add nuw nsw i32 %i.it, %.03251.i        ; 4 uses
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [40 x i8], ptr %i.ir, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !206
  %.not43.i = icmp slt i32 %i.im, %i.ix           ; 3 uses
  br i1 %.not43.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !208
  %.not44.i = icmp sgt i32 %i.im, %i.iz
  br i1 %.not44.i, label %bb.aw, label %_ZNK8GUITable9getCellAtEii.exit

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ja = add nsw i32 %i.iu, -1
  %i.jb = add nuw nsw i32 %i.iu, 1
  %.133.i = select i1 %.not43.i, i32 %.03251.i, i32 %i.jb ; 3 uses
  %.1.i124 = select i1 %.not43.i, i32 %i.ja, i32 %.052.i ; 2 uses
  %i.jc = icmp slt i32 %.133.i, %.1.i124
  br i1 %i.jc, label %bb.au, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.aw, %bb.at
  %.032.lcssa.i = phi i32 [ 0, %bb.at ], [ %.133.i, %bb.aw ] ; 3 uses
  %i.jd = icmp slt i32 %.032.lcssa.i, %i.io
  br i1 %i.jd, label %bb.ax, label %.thread142

bb.ax:                                            ; preds = %._crit_edge.i
  %i.je = load ptr, ptr %i.ih, align 8, !tbaa !148 ; 2 uses
  %i.jf = zext nneg i32 %.032.lcssa.i to i64
  %i.jg = getelementptr inbounds nuw [40 x i8], ptr %i.je, i64 %i.jf ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !206
  %.not.i123 = icmp slt i32 %i.im, %i.jh
  br i1 %.not.i123, label %.thread142, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !208
  %.not42.i = icmp sgt i32 %i.im, %i.jj
  br i1 %.not42.i, label %.thread142, label %_ZNK8GUITable9getCellAtEii.exit

_ZNK8GUITable9getCellAtEii.exit:                  ; preds = %bb.av, %bb.ay
  %i.jk = phi ptr [ %i.je, %bb.ay ], [ %i.ir, %bb.av ]
  %.3.i = phi i32 [ %.032.lcssa.i, %bb.ay ], [ %i.iu, %bb.av ]
  %i.jl = zext nneg i32 %.3.i to i64
  %i.jm = getelementptr inbounds nuw [40 x i8], ptr %i.jk, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !166
  %i.jq = sext i32 %i.jp to i64
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !142
  %i.js = getelementptr inbounds nuw [32 x i8], ptr %i.jr, i64 %i.jq
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !122
  br label %.thread142

.thread142:                                       ; preds = %._crit_edge.i, %bb.ax, %bb.ay, %bb.as, %_ZNK8GUITable6getRowEi.exit.i, %bb.ar, %bb.ap, %_ZNK8GUITable9getCellAtEii.exit
  %.not106148 = phi i1 [ false, %_ZNK8GUITable9getCellAtEii.exit ], [ true, %bb.ax ], [ true, %._crit_edge.i ], [ true, %bb.ap ], [ true, %bb.ar ], [ true, %_ZNK8GUITable6getRowEi.exit.i ], [ true, %bb.as ], [ true, %bb.ay ]
  %.1147 = phi ptr [ %i.jm, %_ZNK8GUITable9getCellAtEii.exit ], [ null, %bb.ax ], [ null, %._crit_edge.i ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %_ZNK8GUITable6getRowEi.exit.i ], [ null, %bb.as ], [ null, %bb.ay ] ; 2 uses
  %.1.i139146 = phi i32 [ %i.ho, %_ZNK8GUITable9getCellAtEii.exit ], [ %i.ho, %bb.ax ], [ %i.ho, %._crit_edge.i ], [ -1, %bb.ap ], [ %spec.select.i, %bb.ar ], [ %i.ho, %_ZNK8GUITable6getRowEi.exit.i ], [ %i.ho, %bb.as ], [ %i.ho, %bb.ay ] ; 2 uses
  %i.ju = phi ptr [ %i.jt, %_ZNK8GUITable9getCellAtEii.exit ], [ @.str, %bb.ax ], [ @.str, %._crit_edge.i ], [ @.str, %bb.ap ], [ @.str, %bb.ar ], [ @.str, %_ZNK8GUITable6getRowEi.exit.i ], [ @.str, %bb.as ], [ @.str, %bb.ay ]
  %i.jv = load ptr, ptr %0, align 8, !tbaa !21
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 176
  %i.jx = load ptr, ptr %i.jw, align 8
  tail call void %i.jx(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %i.ju)
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !426
  %i.ka = trunc i32 %i.jz to i1
  br i1 %i.ka, label %bb.az, label %_ZN8GUITable14sendTableEventEib.exit128.thread

bb.az:                                            ; preds = %.thread142
  %i.kb = load ptr, ptr %0, align 8, !tbaa !21
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = call noundef zeroext i1 %i.kd(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %.pr = load i32, ptr %i.gh, align 4, !tbaa !123 ; 2 uses
  br i1 %i.ke, label %thread-pre-split, label %8

8:                                                ; preds = %bb.az
  %9 = icmp eq i32 %.pr, 8
  br i1 %9, label %thread-pre-split, label %_ZN8GUITable14sendTableEventEib.exit128.thread

thread-pre-split:                                 ; preds = %bb.az, %8
  %10 = phi i32 [ 8, %8 ], [ %.pr, %bb.az ]       ; 3 uses
  %i.kf = icmp eq i32 %10, 10                     ; 3 uses
  br i1 %.not106148, label %.thread150, label %bb.ba

bb.ba:                                            ; preds = %thread-pre-split
  switch i32 %10, label %.thread150 [
    i32 13, label %bb.bb
    i32 10, label %bb.bb
    i32 0, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba
  %i.kg = getelementptr inbounds nuw i8, ptr %.1147, i64 32
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !168
  %i.ki = getelementptr inbounds nuw i8, ptr %.1147, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !205
  %i.kk = icmp eq i32 %i.kj, 4
  br i1 %i.kk, label %bb.bc, label %.thread150

bb.bc:                                            ; preds = %bb.bb
  %i.kl = icmp eq i32 %10, 0
  br i1 %i.kl, label %bb.bd, label %_ZN8GUITable14sendTableEventEib.exit128.thread

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN8GUITable17toggleVisibleTreeEiib(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %.1.i139146, i32 noundef 0, i1 noundef zeroext false)
  br label %_ZN8GUITable14sendTableEventEib.exit128.thread

.thread150:                                       ; preds = %bb.ba, %thread-pre-split, %bb.bb
  %.085153 = phi i32 [ %i.kh, %bb.bb ], [ 0, %thread-pre-split ], [ 0, %bb.ba ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 4 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !88
  store i32 %.1.i139146, ptr %i.km, align 4, !tbaa !88
  call void @_ZN8GUITable10autoScrollEv(ptr noundef nonnull align 8 dereferenceable(608) %0)
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !88
  %i.kp = icmp ne i32 %i.ko, %i.kn
  %i.kq = icmp sgt i32 %.085153, 0
  %or.cond = select i1 %i.kp, i1 true, i1 %i.kq
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.kf
  br i1 %or.cond3, label %bb.be, label %_ZN8GUITable14sendTableEventEib.exit128.thread

bb.be:                                            ; preds = %.thread150
  %i.kr = zext i1 %i.kf to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %.085153, ptr %i.ks, align 8, !tbaa !89
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 %i.kr, ptr %i.kt, align 4, !tbaa !90
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !108 ; 3 uses
  %.not.i127 = icmp eq ptr %i.kv, null
  br i1 %.not.i127, label %_ZN8GUITable14sendTableEventEib.exit128, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.kx, i8 0, i64 28, i1 false)
  store i32 1, ptr %2, align 8, !tbaa !227
  store ptr %0, ptr %i.kw, align 8, !tbaa !123
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.ky, align 8, !tbaa !123
  store i32 19, ptr %i.kx, align 8, !tbaa !123
  %i.kz = load ptr, ptr %i.kv, align 8, !tbaa !21
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = call noundef zeroext i1 %i.lb(ptr noundef nonnull align 8 dereferenceable(308) %i.kv, ptr noundef nonnull align 8 dereferenceable(56) %2), !inline_history !228 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN8GUITable14sendTableEventEib.exit128

_ZN8GUITable14sendTableEventEib.exit128:          ; preds = %bb.bf, %bb.be
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !169, !range !116, !noundef !117
  %i.lf = trunc nuw i8 %i.le to i1
  %or.cond5 = select i1 %i.lf, i1 %i.kf, i1 false
  br i1 %or.cond5, label %bb.bg, label %_ZN8GUITable14sendTableEventEib.exit128.thread

bb.bg:                                            ; preds = %_ZN8GUITable14sendTableEventEib.exit128
  %i.lg = load i32, ptr %i.km, align 4, !tbaa !88
  call void @_ZN8GUITable17toggleVisibleTreeEiib(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %i.lg, i32 noundef 0, i1 noundef zeroext false)
  br label %_ZN8GUITable14sendTableEventEib.exit128.thread

_ZN8GUITable14sendTableEventEib.exit128.thread:   ; preds = %.thread150, %.thread142, %8, %_ZN8GUITable14sendTableEventEib.exit128, %bb.bg, %bb.bc, %bb.bd, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

bb.bh:                                            ; preds = %bb.d
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !123
  %i.lj = icmp eq i32 %i.li, 6
  br i1 %i.lj, label %bb.bi, label %.thread136

bb.bi:                                            ; preds = %bb.bh
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !123
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !109
  %i.lo = icmp eq ptr %i.ll, %i.ln
  br i1 %i.lo, label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit, label %.thread136

.thread136:                                       ; preds = %bb.d, %bb.y, %bb.z, %bb.bi, %bb.bh
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !108 ; 3 uses
  %.not.i129 = icmp eq ptr %i.lq, null
  br i1 %.not.i129, label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit, label %bb.bj

bb.bj:                                            ; preds = %.thread136
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !21
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = tail call noundef zeroext i1 %i.lt(ptr noundef nonnull align 8 dereferenceable(308) %i.lq, ptr noundef nonnull align 8 dereferenceable(56) %1), !inline_history !420
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

_ZN3gui11IGUIElement7OnEventERK6SEvent.exit:      ; preds = %bb.l, %bb.bj, %.thread136, %bb.am, %bb.al, %bb.x, %bb.w, %bb.v, %bb.u, %bb.q, %bb.p, %bb.c, %bb.b, %bb.bi, %.loopexit, %bb.r, %bb.s, %_ZN8GUITable10autoScrollEv.exit, %_ZN8GUITable14sendTableEventEib.exit128.thread
  %.191 = phi i1 [ true, %bb.bi ], [ true, %_ZN8GUITable10autoScrollEv.exit ], [ true, %bb.v ], [ true, %bb.r ], [ true, %_ZN8GUITable14sendTableEventEib.exit128.thread ], [ true, %.loopexit ], [ true, %bb.am ], [ true, %bb.q ], [ false, %bb.b ], [ true, %bb.s ], [ false, %bb.w ], [ %i.j, %bb.c ], [ true, %bb.p ], [ true, %bb.u ], [ %i.dm, %bb.x ], [ true, %bb.al ], [ %i.lu, %bb.bj ], [ false, %.thread136 ], [ true, %bb.l ]
  ret i1 %.191
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3gui11IGUIElement7OnEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUITable14sendTableEventEib(ptr noundef nonnull align 8 dereferenceable(608) initializes((376, 381)) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.SEvent, align 8             ; 8 uses
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %1, ptr %i.b, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 %i.a, ptr %i.c, align 4, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !227
  store ptr %0, ptr %i.f, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 19, ptr %i.i, align 8, !tbaa !123
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(308) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUITable17toggleVisibleTreeEiib(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.SEvent, align 8             ; 7 uses
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN8GUITable14sendTableEventEib.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp slt i32 %1, %i.j
  br i1 %i.k, label %_ZNK8GUITable6getRowEi.exit, label %_ZN8GUITable14sendTableEventEib.exit

_ZNK8GUITable6getRowEi.exit:                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.m = zext nneg i32 %1 to i64                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !130  ; 3 uses
  %i.p = sext i32 %i.o to i64
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !126  ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.p ; 4 uses
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %_ZN8GUITable14sendTableEventEib.exit, label %.preheader74

.preheader74:                                     ; preds = %_ZNK8GUITable6getRowEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !160  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader74
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !148
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !427

.thread:                                          ; preds = %bb.c, %.preheader74
  %i.x = icmp sgt i32 %2, -1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !205
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !165
  %i.ae = icmp eq i32 %i.ad, 0                    ; 2 uses
  %i.af = xor i1 %i.ae, true                      ; 3 uses
  %i.ag = icmp sgt i32 %2, -1
  %.not = icmp ne i32 %2, 0
  %spec.select = or i1 %.not, %i.af
  %.046 = and i1 %i.ag, %spec.select              ; 2 uses
  %or.cond = or i1 %.046, %i.af
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8GUITable9closeTreeEi(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %i.o)
  br label %bb.i

bb.g:                                             ; preds = %.thread, %bb.e
  %.04671 = phi i1 [ %i.x, %.thread ], [ %.046, %bb.e ] ; 2 uses
  %i.ah = phi i1 [ true, %.thread ], [ %i.af, %bb.e ]
  %.04869 = phi i1 [ false, %.thread ], [ %i.ae, %bb.e ] ; 2 uses
  %or.cond4 = and i1 %.04671, %i.ah
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN8GUITable8openTreeEi(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %i.o)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.04670 = phi i1 [ %.04671, %bb.g ], [ true, %bb.h ], [ false, %bb.f ] ; 2 uses
  %.04868 = phi i1 [ %.04869, %bb.g ], [ %.04869, %bb.h ], [ true, %bb.f ] ; 2 uses
  br i1 %3, label %bb.j, label %_ZN8GUITable14sendTableEventEib.exit

bb.j:                                             ; preds = %bb.i
  %or.cond6 = and i1 %.04670, %.04868
  br i1 %or.cond6, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ai = add nuw nsw i32 %1, 1                   ; 3 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp slt i32 %i.ai, %i.ap
  br i1 %i.aq, label %_ZNK8GUITable6getRowEi.exit59, label %_ZNK8GUITable6getRowEi.exit59.thread

_ZNK8GUITable6getRowEi.exit59:                    ; preds = %bb.k
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !126 ; 2 uses
end_hunk_0
