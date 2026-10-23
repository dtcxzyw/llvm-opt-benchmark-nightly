Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_7zip?download=true
inline.NumInlined: 63
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@extract_pack_stream:bb.a
  store ptr %.3303.i, ptr %i.bw, align 8, !tbaa !238
  store i64 %.3293.i, ptr %i.bx, align 8, !tbaa !239
  %i.ge = icmp eq i32 %i.gb, 0
  br i1 %i.ge, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  store ptr %0, ptr %i.by, align 8, !tbaa !240
  store ptr @ppmd_read, ptr %i.bz, align 8, !tbaa !241
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !242
  %i.gf = call i32 %i.cc(ptr noundef nonnull %i.ca) #18, !inline_history !210
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 -1, ptr %i.bs, align 4, !tbaa !157
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.31) #18
  br label %.critedge

bb.bc:                                            ; preds = %bb.ba
  %i.gh = load i32, ptr %i.cd, align 8, !tbaa !161
  %.not329.i = icmp eq i32 %i.gh, 0
  br i1 %.not329.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 -1, ptr %i.bs, align 4, !tbaa !157
  br label %.critedge

bb.be:                                            ; preds = %bb.bc
  store i32 1, ptr %i.bs, align 4, !tbaa !157
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.az
  %i.gi = icmp eq i64 %i.dl, 0
  br i1 %i.gi, label %bb.bg, label %.preheader

bb.bg:                                            ; preds = %bb.bf
  %i.gj = load i64, ptr %i.bm, align 8, !tbaa !75
  br label %.preheader

.preheader:                                       ; preds = %bb.bg, %bb.bf
  %.1.i.ph = phi i64 [ 0, %bb.bf ], [ %i.gj, %bb.bg ]
  br label %bb.bh

bb.bh:                                            ; preds = %.preheader, %bb.bm
  %.1.i = phi i64 [ %spec.select341.i, %bb.bm ], [ %.1.i.ph, %.preheader ] ; 2 uses
  %i.gk = call i32 %i.ce(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ca) #18, !inline_history !210 ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 -1, ptr %i.bs, align 4, !tbaa !157
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.32) #18
  br label %.critedge

bb.bj:                                            ; preds = %bb.bh
  %i.gm = load i32, ptr %i.cd, align 8, !tbaa !161
  %.not330.i = icmp eq i32 %i.gm, 0
  br i1 %.not330.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 -1, ptr %i.bs, align 4, !tbaa !157
  br label %.critedge

bb.bl:                                            ; preds = %bb.bj
  %i.gn = trunc i32 %i.gk to i8
  %i.go = load ptr, ptr %i.bw, align 8, !tbaa !238 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  store ptr %i.gp, ptr %i.bw, align 8, !tbaa !238
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !41
  %i.gq = load <2 x i64>, ptr %i.bx, align 8, !tbaa !42
  %i.gr = add nsw <2 x i64> %i.gq, <i64 -1, i64 1> ; 2 uses
  store <2 x i64> %i.gr, ptr %i.bx, align 8, !tbaa !42
  %i.gs = extractelement <2 x i64> %i.gr, i64 0   ; 2 uses
  %.not332.i = icmp eq i64 %i.gs, 0
  %.pre384.i = load i64, ptr %i.bu, align 8, !tbaa !159 ; 2 uses
  br i1 %.not332.i, label %.loopexit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %spec.select341.i = call i64 @llvm.usub.sat.i64(i64 %.1.i, i64 1)
  %i.gt = icmp ne i64 %.pre384.i, 0
  %i.gu = icmp ugt i64 %.1.i, 1
  %i.gv = select i1 %i.gt, i1 true, i1 %i.gu
  br i1 %i.gv, label %bb.bh, label %.loopexit.i, !llvm.loop !211

bb.bn:                                            ; preds = %bb.af
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.30) #18
  br label %.critedge

.loopexit.i:                                      ; preds = %bb.bm, %bb.bl, %.thread354.i, %bb.at, %bb.aq, %bb.ak, %bb.ag
  %.2299.i = phi i64 [ %i.ex, %bb.ag ], [ %i.fb, %bb.ak ], [ %i.fi, %bb.aq ], [ %i.fp, %bb.at ], [ %i.fw, %.thread354.i ], [ 0, %bb.bm ], [ %.pre384.i, %bb.bl ]
  %.6296.i = phi i64 [ %i.ey, %bb.ag ], [ %i.fc, %bb.ak ], [ %i.fk, %bb.aq ], [ %i.fr, %bb.at ], [ %i.fy, %.thread354.i ], [ %i.gs, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %.11.i = phi i32 [ %spec.select340.i, %bb.ag ], [ %i.fa, %bb.ak ], [ %.9.i, %bb.aq ], [ %i.fn, %bb.at ], [ 0, %.thread354.i ], [ 0, %bb.bl ], [ 0, %bb.bm ] ; 3 uses
  %i.gw = icmp ne i32 %.11.i, 1
  %i.gx = sub i64 %spec.store.select115, %.2299.i
  %i.gy = sub i64 %i.dk, %.6296.i                 ; 14 uses
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !153
  %.not335.i = icmp eq i64 %i.gz, 33
  br i1 %.not335.i, label %thread-pre-split.i, label %bb.bo

bb.bo:                                            ; preds = %.loopexit.i
  %i.ha = load i64, ptr %i.bj, align 8, !tbaa !154 ; 2 uses
  switch i64 %i.ha, label %bb.ct [
    i64 50528515, label %bb.bp
    i64 50529537, label %bb.cd
    i64 10, label %bb.cg
    i64 50530309, label %bb.cm
    i64 50528773, label %bb.cp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.hb = icmp ult i64 %i.gy, 5
  br i1 %i.hb, label %x86_Convert.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hc = load i64, ptr %i.da, align 8, !tbaa !162 ; 2 uses
  %i.hd = load i32, ptr %i.db, align 8, !tbaa !163 ; 2 uses
  %i.he = getelementptr i8, ptr %i.di, i64 %i.gy
  %i.hf = getelementptr i8, ptr %i.he, i64 -4     ; 2 uses
  %i.hg = icmp sgt i64 %i.gy, 4
  br i1 %i.hg, label %.lr.ph.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.bq
  %.pre.i = ptrtoint ptr %i.di to i64
  br label %._crit_edge.i135

.lr.ph.lr.ph.i:                                   ; preds = %bb.bq
  %i.hh = load i32, ptr %i.cz, align 4, !tbaa !164
  %i.hi = ptrtoint ptr %i.di to i64               ; 3 uses
  br label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %bb.bz, %.lr.ph.lr.ph.i
  %i.hj = phi ptr [ %i.di, %.lr.ph.lr.ph.i ], [ %i.kb, %bb.bz ]
  %.080138.i = phi i32 [ %i.hd, %.lr.ph.lr.ph.i ], [ %.4.i, %bb.bz ] ; 2 uses
  %.083137.i = phi i64 [ %i.hc, %.lr.ph.lr.ph.i ], [ %i.hq, %bb.bz ] ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %.lr.ph.i136
  %.077119.i = phi ptr [ %i.hj, %.lr.ph.i136 ], [ %i.hn, %bb.bs ] ; 8 uses
  %i.hk = load i8, ptr %.077119.i, align 1, !tbaa !41
  %i.hl = and i8 %i.hk, -2
  %i.hm = icmp eq i8 %i.hl, -24
  br i1 %i.hm, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hn = getelementptr inbounds nuw i8, ptr %.077119.i, i64 1 ; 3 uses
  %i.ho = icmp ult ptr %i.hn, %i.hf
  br i1 %i.ho, label %bb.br, label %._crit_edge.i135, !llvm.loop !212

bb.bt:                                            ; preds = %bb.br
  %i.hp = ptrtoint ptr %.077119.i to i64
  %i.hq = sub i64 %i.hp, %i.hi                    ; 5 uses
  %i.hr = sub i64 %i.hq, %.083137.i               ; 2 uses
  %i.hs = icmp ugt i64 %i.hr, 3
  br i1 %i.hs, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ht = trunc nuw nsw i64 %i.hr to i32
  %i.hu = add nsw i32 %i.ht, -1
  %i.hv = shl i32 %.080138.i, %i.hu
  %i.hw = and i32 %i.hv, 7                        ; 4 uses
  %.not97.i = icmp eq i32 %i.hw, 0
  br i1 %.not97.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hx = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr @x86_Convert.kMaskToBitNumber, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !41
  %i.ia = zext i8 %i.hz to i64
  %i.ib = sub nsw i64 4, %i.ia
  %i.ic = getelementptr inbounds i8, ptr %.077119.i, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !41
  %i.ie = lshr i64 232, %i.hx
  %i.if = trunc i64 %i.ie to i1
  %i.ig = add i8 %i.id, 1
  %i.ih = icmp ult i8 %i.ig, 2
  %or.cond5.i = select i1 %i.if, i1 true, i1 %i.ih
  br i1 %or.cond5.i, label %.thread100.i, label %bb.bw

.thread100.i:                                     ; preds = %bb.bv
  %i.ii = shl nuw nsw i32 %i.hw, 1
  %i.ij = and i32 %i.ii, 6
  %i.ik = or disjoint i32 %i.ij, 1
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.282.i = phi i32 [ 0, %bb.bu ], [ 0, %bb.bt ], [ %i.hw, %bb.bv ] ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.077119.i, i64 4 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !41  ; 2 uses
  %.off.i = add i8 %i.im, -1
  %switch.i137 = icmp ult i8 %.off.i, -2
  br i1 %switch.i137, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw i32 %i.in, 24
  %i.ip = getelementptr inbounds nuw i8, ptr %.077119.i, i64 3 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !41
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 16
  %i.it = or disjoint i32 %i.is, %i.io
  %i.iu = getelementptr inbounds nuw i8, ptr %.077119.i, i64 2 ; 2 uses
  %4 = load i8, ptr %i.iu, align 1, !tbaa !41
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = or disjoint i32 %i.it, %6
  %i.iv = getelementptr inbounds nuw i8, ptr %.077119.i, i64 1 ; 2 uses
  %8 = load i8, ptr %i.iv, align 1, !tbaa !41
  %i.iw = zext i8 %8 to i32
  %i.ix = or disjoint i32 %7, %i.iw
  %i.iy = trunc i64 %i.hq to i32
  %i.iz = add i32 %i.hh, %i.iy                    ; 2 uses
  %i.ja = icmp eq i32 %.282.i, 0
  %i.jb = sub i32 %i.ix, %i.iz                    ; 4 uses
  br i1 %i.ja, label %._crit_edge130.i, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %bb.bx
  %i.jc = zext nneg i32 %.282.i to i64
  %i.jd = getelementptr inbounds nuw i8, ptr @x86_Convert.kMaskToBitNumber, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !41
  %i.jf = zext i8 %i.je to i32
  %i.jg = shl nuw nsw i32 %i.jf, 3                ; 2 uses
  %i.jh = sub nsw i32 24, %i.jg                   ; 2 uses
  %i.ji = lshr i32 %i.jb, %i.jh
  %i.jj = and i32 %i.ji, 255
  %.off98133.i = add nsw i32 %i.jj, -1
  %switch99134.i = icmp ult i32 %.off98133.i, 254
  br i1 %switch99134.i, label %._crit_edge130.i, label %.lr.ph135.preheader.i

.lr.ph135.preheader.i:                            ; preds = %.lr.ph127.i
  %i.jk = sub nsw i32 32, %i.jg
  %notmask.i = shl nsw i32 -1, %i.jk
  %invariant.op = xor i32 %notmask.i, -1
  br label %.lr.ph135.i

.lr.ph135.i:                                      ; preds = %.lr.ph135.i, %.lr.ph135.preheader.i
  %i.jl = phi i32 [ %i.jm, %.lr.ph135.i ], [ %i.jb, %.lr.ph135.preheader.i ]
  %.reass.reass.i.reass.reass = xor i32 %i.jl, %invariant.op
  %i.jm = sub i32 %.reass.reass.i.reass.reass, %i.iz ; 3 uses
  %i.jn = lshr i32 %i.jm, %i.jh
  %i.jo = and i32 %i.jn, 255
  %.off98.i = add nsw i32 %i.jo, -1
  %switch99.i = icmp ult i32 %.off98.i, 254
  br i1 %switch99.i, label %._crit_edge130.i, label %.lr.ph135.i

._crit_edge130.i:                                 ; preds = %.lr.ph135.i, %.lr.ph127.i, %bb.bx
  %.lcssa.i = phi i32 [ %i.jb, %bb.bx ], [ %i.jb, %.lr.ph127.i ], [ %i.jm, %.lr.ph135.i ] ; 4 uses
  %i.jp = shl i32 %.lcssa.i, 7
  %i.jq = ashr i32 %i.jp, 31
  %i.jr = trunc nsw i32 %i.jq to i8
  store i8 %i.jr, ptr %i.il, align 1, !tbaa !41
  %i.js = lshr i32 %.lcssa.i, 16
  %i.jt = trunc i32 %i.js to i8
  store i8 %i.jt, ptr %i.ip, align 1, !tbaa !41
  %i.ju = lshr i32 %.lcssa.i, 8
  %i.jv = trunc i32 %i.ju to i8
  store i8 %i.jv, ptr %i.iu, align 1, !tbaa !41
  %i.jw = trunc i32 %.lcssa.i to i8
  store i8 %i.jw, ptr %i.iv, align 1, !tbaa !41
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.jx = shl nuw nsw i32 %.282.i, 1
  %i.jy = and i32 %i.jx, 6
  %i.jz = or disjoint i32 %i.jy, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge130.i, %.thread100.i
  %.sink.i138 = phi i64 [ 1, %.thread100.i ], [ 5, %._crit_edge130.i ], [ 1, %bb.by ]
  %.4.i = phi i32 [ %i.ik, %.thread100.i ], [ %.282.i, %._crit_edge130.i ], [ %i.jz, %bb.by ] ; 2 uses
  %i.ka = getelementptr i8, ptr %i.di, i64 %i.hq
  %i.kb = getelementptr i8, ptr %i.ka, i64 %.sink.i138 ; 3 uses
  %i.kc = icmp ult ptr %i.kb, %i.hf
  br i1 %i.kc, label %.lr.ph.i136, label %._crit_edge.i135

._crit_edge.i135:                                 ; preds = %bb.bz, %bb.bs, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.hi, %bb.bs ], [ %i.hi, %bb.bz ]
  %.083.lcssa.i = phi i64 [ %i.hc, %.._crit_edge_crit_edge.i ], [ %.083137.i, %bb.bs ], [ %i.hq, %bb.bz ]
  %.080.lcssa.i = phi i32 [ %i.hd, %.._crit_edge_crit_edge.i ], [ %.080138.i, %bb.bs ], [ %.4.i, %bb.bz ]
  %.077.lcssa.i = phi ptr [ %i.di, %.._crit_edge_crit_edge.i ], [ %i.hn, %bb.bs ], [ %i.kb, %bb.bz ]
  %i.kd = ptrtoint ptr %.077.lcssa.i to i64
  %i.ke = sub i64 %i.kd, %.pre-phi.i              ; 2 uses
  store i64 %.083.lcssa.i, ptr %i.da, align 8, !tbaa !162
  store i32 %.080.lcssa.i, ptr %i.db, align 8, !tbaa !163
  %i.kf = trunc i64 %i.ke to i32
  %i.kg = load i32, ptr %i.cz, align 4, !tbaa !164
  %i.kh = add i32 %i.kg, %i.kf
  store i32 %i.kh, ptr %i.cz, align 4, !tbaa !164
  br label %x86_Convert.exit

x86_Convert.exit:                                 ; preds = %bb.bp, %._crit_edge.i135
  %.091.i = phi i64 [ %i.ke, %._crit_edge.i135 ], [ 0, %bb.bp ] ; 4 uses
  %i.ki = sub i64 %i.gy, %.091.i                  ; 3 uses
  store i64 %i.ki, ptr %i.bk, align 8, !tbaa !138
  %.not336.i = icmp eq i64 %i.gy, %.091.i
  br i1 %.not336.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %x86_Convert.exit
  %i.kj = icmp ult i64 %i.ki, 5
  %i.kk = icmp ne i64 %i.dl, 0
  %or.cond17.i = select i1 %i.kj, i1 %i.kk, i1 false
  %or.cond19.i = and i1 %i.gw, %or.cond17.i
  br i1 %or.cond19.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kl = getelementptr inbounds nuw i8, ptr %i.di, i64 %.091.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 1 %i.kl, i64 %i.ki, i1 false)
  br label %thread-pre-split.i

bb.cc:                                            ; preds = %bb.ca, %x86_Convert.exit
  store i64 0, ptr %i.bk, align 8, !tbaa !138
  br label %thread-pre-split.i

bb.cd:                                            ; preds = %bb.bo
  %.not30.i = icmp ult i64 %i.gy, 4
  br i1 %.not30.i, label %arm_Convert.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.cd, %bb.cf
  %i.km = phi i64 [ %i.lk, %bb.cf ], [ 4, %bb.cd ] ; 3 uses
  %.031.i = phi i64 [ %i.km, %bb.cf ], [ 0, %bb.cd ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.di, i64 %.031.i ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 3
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !41
  %i.kq = icmp eq i8 %i.kp, -21
  br i1 %i.kq, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph.i131
  %i.kr = load i16, ptr %i.kn, align 1
  %i.ks = zext i16 %i.kr to i32
  %i.kt = shl nuw nsw i32 %i.ks, 2
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 2 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !41
  %i.kx = zext i8 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.kx, 18
  %i.kz = or disjoint i32 %i.ky, %i.kt
  %i.la = load i32, ptr %i.cz, align 4, !tbaa !164
  %i.lb = trunc i64 %.031.i to i32
  %i.lc = add i32 %i.la, %i.lb
  %i.ld = sub i32 %i.kz, %i.lc                    ; 3 uses
  %i.le = lshr i32 %i.ld, 2
  %i.lf = trunc i32 %i.le to i8
  store i8 %i.lf, ptr %i.kn, align 1, !tbaa !41
  %i.lg = lshr i32 %i.ld, 10
  %i.lh = trunc i32 %i.lg to i8
  store i8 %i.lh, ptr %i.ku, align 1, !tbaa !41
  %i.li = lshr i32 %i.ld, 18
  %i.lj = trunc i32 %i.li to i8
  store i8 %i.lj, ptr %i.kv, align 1, !tbaa !41
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i131
  %i.lk = add i64 %i.km, 4                        ; 2 uses
  %.not.i132 = icmp ugt i64 %i.lk, %i.gy
  br i1 %.not.i132, label %arm_Convert.exit, label %.lr.ph.i131, !llvm.loop !213

arm_Convert.exit:                                 ; preds = %bb.cf, %bb.cd
  %.0.lcssa.i134 = phi i64 [ 0, %bb.cd ], [ %i.km, %bb.cf ] ; 2 uses
  %i.ll = trunc i64 %.0.lcssa.i134 to i32
  %i.lm = load i32, ptr %i.cz, align 4, !tbaa !164
  %i.ln = add i32 %i.lm, %i.ll
  store i32 %i.ln, ptr %i.cz, align 4, !tbaa !164
  br label %thread-pre-split.i

bb.cg:                                            ; preds = %bb.bo
  %.not58.i = icmp ult i64 %i.gy, 4
  br i1 %.not58.i, label %arm64_Convert.exit, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.cg, %bb.cl
  %i.lo = phi i64 [ %i.nv, %bb.cl ], [ 4, %bb.cg ] ; 3 uses
  %.059.i = phi i64 [ %i.lo, %bb.cl ], [ 0, %bb.cg ] ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.di, i64 %.059.i ; 6 uses
  %i.lq = load i16, ptr %i.lp, align 1
  %i.lr = zext i16 %i.lq to i32                   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 2 ; 3 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !41
  %i.lv = zext i8 %i.lu to i32
  %i.lw = shl nuw nsw i32 %i.lv, 16
  %i.lx = or disjoint i32 %i.lw, %i.lr            ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 3 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !41
  %i.ma = zext i8 %i.lz to i32                    ; 4 uses
  %.mask.i127 = and i32 %i.ma, 252
  %i.mb = icmp eq i32 %.mask.i127, 148
  br i1 %i.mb, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.i126
  %i.mc = shl nuw i32 %i.ma, 24
  %i.md = or disjoint i32 %i.lx, %i.mc
  %i.me = load i32, ptr %i.cz, align 4, !tbaa !164
  %i.mf = trunc i64 %.059.i to i32
  %i.mg = add i32 %i.me, %i.mf
  %i.mh = lshr i32 %i.mg, 2
  %i.mi = sub nuw i32 %i.md, %i.mh                ; 4 uses
  %i.mj = trunc i32 %i.mi to i8
  store i8 %i.mj, ptr %i.lp, align 1, !tbaa !41
  %i.mk = lshr i32 %i.mi, 8
  %i.ml = trunc i32 %i.mk to i8
  store i8 %i.ml, ptr %i.ls, align 1, !tbaa !41
  %i.mm = lshr i32 %i.mi, 16
  %i.mn = trunc i32 %i.mm to i8
  store i8 %i.mn, ptr %i.lt, align 1, !tbaa !41
  %i.mo = lshr i32 %i.mi, 24
  %i.mp = trunc nuw i32 %i.mo to i8
  %i.mq = and i8 %i.mp, 3
  %i.mr = or disjoint i8 %i.mq, -108
  br label %.sink.split.i

bb.ci:                                            ; preds = %.lr.ph.i126
end_hunk_0
