inline.NumInlined: 234
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@json_parse_any:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !58 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !50 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !49
  %.not.i.i338 = icmp slt i64 %i.ez, %i.fb
  br i1 %.not.i.i338, label %json_push_value.exit342, label %bb.an, !prof !24

bb.an:                                            ; preds = %bb.am
  %i.fc = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.ex, ptr noundef nonnull %0, ptr noundef nonnull %i.ew) ; 2 uses
  %.phi.trans.insert.i.i339 = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %.pre.i.i340 = load i64, ptr %.phi.trans.insert.i.i339, align 8, !tbaa !50
  br label %json_push_value.exit342

json_push_value.exit342:                          ; preds = %bb.am, %bb.an
  %i.fd = phi i64 [ %.pre.i.i340, %bb.an ], [ %i.ez, %bb.am ]
  %.0.i.i341 = phi ptr [ %i.fc, %bb.an ], [ %i.ex, %bb.am ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i341, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i341, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fd
  store i64 %i.ev, ptr %i.fh, align 8, !tbaa !10
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !50
  %i.fj = add nsw i64 %i.fi, 1
  store i64 %i.fj, ptr %i.fg, align 8, !tbaa !50
  %i.fk = load i64, ptr %i.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %json_parse_string.exit207

bb.ao:                                            ; preds = %bb.aj, %bb.ai
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.29, ptr noundef %0) #24
  unreachable

bb.ap:                                            ; preds = %peek.exit317
  %i.fl = ptrtoint ptr %.val228636 to i64
  %i.fm = sub i64 %.val229637.lcssa794796, %i.fl
  %i.fn = icmp ugt i64 %i.fm, 8
  br i1 %i.fn, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %.val228636, i64 1
  %i.fp = load i64, ptr %i.fo, align 1
  %i.fq = icmp ne i64 %i.fp, 8751735898823355977
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !36, !range !62, !noundef !63
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %.val228636, i64 9
  store ptr %i.fw, ptr %i.n, align 8, !tbaa !56
  %i.fx = load i64, ptr @CMinusInfinity, align 8, !tbaa !10
  %.val307 = load i64, ptr %1, align 8, !tbaa !35
  %i.fy = tail call fastcc i64 @json_push_value(ptr noundef %0, i64 %.val307, i64 noundef %i.fx)
  br label %json_parse_string.exit207

bb.at:                                            ; preds = %bb.ar
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.29, ptr noundef %0) #24
  unreachable

bb.au:                                            ; preds = %bb.aq, %bb.ap
  %i.fz = getelementptr inbounds nuw i8, ptr %.val228636, i64 1
  store ptr %i.fz, ptr %i.n, align 8, !tbaa !56
  %i.ga = tail call fastcc i64 @json_parse_number(ptr noundef nonnull %0, ptr noundef readonly %1, i1 noundef zeroext true, ptr noundef nonnull %.val228636) ; 2 uses
  %.val306 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.ga, ptr %i.h, align 8, !tbaa !10
  %.not.i343 = icmp eq i64 %.val306, 0
  br i1 %.not.i343, label %bb.aw, label %bb.av, !prof !24

bb.av:                                            ; preds = %bb.au
  %i.gb = call i64 @rb_proc_call_with_block(i64 noundef %.val306, i32 noundef 1, ptr noundef nonnull %i.h, i64 noundef 4) #19 ; 2 uses
  store i64 %i.gb, ptr %i.h, align 8, !tbaa !10
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gc = phi i64 [ %i.gb, %bb.av ], [ %i.ga, %bb.au ]
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !58 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !50 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !49
  %.not.i.i344 = icmp slt i64 %i.gg, %i.gi
  br i1 %.not.i.i344, label %json_push_value.exit348, label %bb.ax, !prof !24

bb.ax:                                            ; preds = %bb.aw
  %i.gj = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.ge, ptr noundef nonnull %0, ptr noundef nonnull %i.gd) ; 2 uses
  %.phi.trans.insert.i.i345 = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %.pre.i.i346 = load i64, ptr %.phi.trans.insert.i.i345, align 8, !tbaa !50
  br label %json_push_value.exit348

json_push_value.exit348:                          ; preds = %bb.aw, %bb.ax
  %i.gk = phi i64 [ %.pre.i.i346, %bb.ax ], [ %i.gg, %bb.aw ]
  %.0.i.i347 = phi ptr [ %i.gj, %bb.ax ], [ %i.ge, %bb.aw ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i347, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !51
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.i347, i64 16 ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.gk
  store i64 %i.gc, ptr %i.go, align 8, !tbaa !10
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !50
  %i.gq = add nsw i64 %i.gp, 1
  store i64 %i.gq, ptr %i.gn, align 8, !tbaa !50
  %i.gr = load i64, ptr %i.h, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %json_parse_string.exit207

bb.ay:                                            ; preds = %peek.exit317, %peek.exit317, %peek.exit317, %peek.exit317, %peek.exit317, %peek.exit317, %peek.exit317, %peek.exit317, %peek.exit317, %peek.exit317
  %i.gs = tail call fastcc i64 @json_parse_number(ptr noundef nonnull %0, ptr noundef readonly %1, i1 noundef zeroext false, ptr noundef nonnull %.val228636) ; 2 uses
  %.val305 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.gs, ptr %i.g, align 8, !tbaa !10
  %.not.i349 = icmp eq i64 %.val305, 0
  br i1 %.not.i349, label %bb.ba, label %bb.az, !prof !24

bb.az:                                            ; preds = %bb.ay
  %i.gt = call i64 @rb_proc_call_with_block(i64 noundef %.val305, i32 noundef 1, ptr noundef nonnull %i.g, i64 noundef 4) #19 ; 2 uses
  store i64 %i.gt, ptr %i.g, align 8, !tbaa !10
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gu = phi i64 [ %i.gt, %bb.az ], [ %i.gs, %bb.ay ]
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !58 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !50 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !49
  %.not.i.i350 = icmp slt i64 %i.gy, %i.ha
  br i1 %.not.i.i350, label %json_push_value.exit354, label %bb.bb, !prof !24

bb.bb:                                            ; preds = %bb.ba
  %i.hb = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.gw, ptr noundef nonnull %0, ptr noundef nonnull %i.gv) ; 2 uses
  %.phi.trans.insert.i.i351 = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %.pre.i.i352 = load i64, ptr %.phi.trans.insert.i.i351, align 8, !tbaa !50
  br label %json_push_value.exit354

json_push_value.exit354:                          ; preds = %bb.ba, %bb.bb
  %i.hc = phi i64 [ %.pre.i.i352, %bb.bb ], [ %i.gy, %bb.ba ]
  %.0.i.i353 = phi ptr [ %i.hb, %bb.bb ], [ %i.gw, %bb.ba ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i.i353, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i.i353, i64 16 ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hc
  store i64 %i.gu, ptr %i.hg, align 8, !tbaa !10
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !50
  %i.hi = add nsw i64 %i.hh, 1
  store i64 %i.hi, ptr %i.hf, align 8, !tbaa !50
  %i.hj = load i64, ptr %i.g, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %json_parse_string.exit207

bb.bc:                                            ; preds = %peek.exit317
  %i.hk = getelementptr inbounds nuw i8, ptr %.val228636, i64 1 ; 7 uses
  store ptr %i.hk, ptr %i.n, align 8, !tbaa !56
  %i.hl = load i32, ptr @simd_impl, align 4, !tbaa !6
  %i.hm = icmp ne i32 %i.hl, 2
  %i.hn = getelementptr inbounds nuw i8, ptr %.val228636, i64 17 ; 2 uses
  %.not.i219726 = icmp ugt ptr %i.hn, %.val231701
  %or.cond979.a = select i1 %i.hm, i1 true, i1 %.not.i219726
  br i1 %or.cond979.a, label %string_scan_simd_sse2.exit222.thread468, label %.lr.ph727

.lr.ph727:                                        ; preds = %bb.bc, %bb.bd
  %i.ho = phi ptr [ %i.hw, %bb.bd ], [ %i.hn, %bb.bc ] ; 4 uses
  %i.hp = phi ptr [ %i.ho, %bb.bd ], [ %i.hk, %bb.bc ] ; 2 uses
  %i.hq = load <16 x i8>, ptr %i.hp, align 1, !tbaa !43 ; 2 uses
  %i.hr = xor <16 x i8> %i.hq, splat (i8 2)
  %i.hs = icmp ult <16 x i8> %i.hr, splat (i8 33)
  %i.ht = icmp eq <16 x i8> %i.hq, splat (i8 92)
  %i.hu = or <16 x i1> %i.ht, %i.hs
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 2 uses
  %.not10.i220.not = icmp eq i16 %i.hv, 0
  br i1 %.not10.i220.not, label %bb.bd, label %string_scan_simd_sse2.exit222

bb.bd:                                            ; preds = %.lr.ph727
  store ptr %i.ho, ptr %i.n, align 8, !tbaa !64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %.not.i219 = icmp ugt ptr %i.hw, %.val231701
  br i1 %.not.i219, label %string_scan_simd_sse2.exit222.thread468, label %.lr.ph727

string_scan_simd_sse2.exit222:                    ; preds = %.lr.ph727
  %i.hx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hv, i1 true)
  %i.hy = zext nneg i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hy ; 3 uses
  store ptr %i.hz, ptr %i.n, align 8, !tbaa !56
  %.pre844 = load i8, ptr %i.hz, align 1, !tbaa !43
  br label %.loopexit

string_scan_simd_sse2.exit222.thread468:          ; preds = %bb.bd, %bb.bc
  %.lcssa631.promoted728 = phi ptr [ %i.hk, %bb.bc ], [ %i.ho, %bb.bd ] ; 5 uses
  %.not574730 = icmp ult ptr %.lcssa631.promoted728, %.val231701
  br i1 %.not574730, label %.lr.ph732.preheader, label %string_scan.exit, !prof !65

.lr.ph732.preheader:                              ; preds = %string_scan_simd_sse2.exit222.thread468
  %.lcssa631.promoted728792 = ptrtoint ptr %.lcssa631.promoted728 to i64 ; 2 uses
  %i.ia = sub i64 0, %.lcssa631.promoted728792
  %scevgep793 = getelementptr i8, ptr %.lcssa631.promoted728, i64 %i.ia
  %scevgep797 = getelementptr i8, ptr %scevgep793, i64 %.val229637.lcssa794796
  %i.ib = sub i64 %.val229637.lcssa794796, %.lcssa631.promoted728792
  %i.ic = freeze i64 %i.ib                        ; 2 uses
  %i.id = add i64 %i.ic, -1
  %xtraiter1183 = and i64 %i.ic, 3                ; 2 uses
  %lcmp.mod1184.not = icmp eq i64 %xtraiter1183, 0
  br i1 %lcmp.mod1184.not, label %.lr.ph732.prol.loopexit, label %.lr.ph732.prol, !prof !60

.lr.ph732.prol:                                   ; preds = %.lr.ph732.preheader, %bb.be
  %.val226729731.prol = phi ptr [ %i.ij, %bb.be ], [ %.lcssa631.promoted728, %.lr.ph732.preheader ] ; 3 uses
  %prol.iter1185 = phi i64 [ %prol.iter1185.next, %bb.be ], [ 0, %.lr.ph732.preheader ]
  %i.ie = load i8, ptr %.val226729731.prol, align 1, !tbaa !43 ; 2 uses
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !66, !range !62, !noundef !63
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %.loopexit, label %bb.be, !prof !67

bb.be:                                            ; preds = %.lr.ph732.prol
  %i.ij = getelementptr inbounds nuw i8, ptr %.val226729731.prol, i64 1 ; 3 uses
  store ptr %i.ij, ptr %i.n, align 8, !tbaa !56
  %prol.iter1185.next = add i64 %prol.iter1185, 1 ; 2 uses
  %prol.iter1185.cmp.not = icmp eq i64 %prol.iter1185.next, %xtraiter1183
  br i1 %prol.iter1185.cmp.not, label %.lr.ph732.prol.loopexit, label %.lr.ph732.prol, !prof !68, !llvm.loop !69

.lr.ph732.prol.loopexit:                          ; preds = %bb.be, %.lr.ph732.preheader
  %.val226729731.unr = phi ptr [ %.lcssa631.promoted728, %.lr.ph732.preheader ], [ %i.ij, %bb.be ]
  %i.ik = icmp ult i64 %i.id, 3
  br i1 %i.ik, label %string_scan.exit, label %.lr.ph732, !prof !71

.lr.ph732:                                        ; preds = %.lr.ph732.prol.loopexit, %bb.bf
  %.val226729731 = phi ptr [ %i.ji, %bb.bf ], [ %.val226729731.unr, %.lr.ph732.prol.loopexit ] ; 9 uses
  %i.il = load i8, ptr %.val226729731, align 1, !tbaa !43 ; 2 uses
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !66, !range !62, !noundef !63
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %.loopexit, label %.lr.ph732.1, !prof !67

.lr.ph732.1:                                      ; preds = %.lr.ph732
  %i.iq = getelementptr inbounds nuw i8, ptr %.val226729731, i64 1 ; 2 uses
  store ptr %i.iq, ptr %i.n, align 8, !tbaa !56
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !43  ; 2 uses
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !66, !range !62, !noundef !63
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %.loopexit.loopexit.loopexit.split.loop.exit1304, label %.lr.ph732.2, !prof !67

.lr.ph732.2:                                      ; preds = %.lr.ph732.1
  %i.iw = getelementptr inbounds nuw i8, ptr %.val226729731, i64 2 ; 2 uses
  store ptr %i.iw, ptr %i.n, align 8, !tbaa !56
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !43  ; 2 uses
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !66, !range !62, !noundef !63
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %.loopexit.loopexit.loopexit.split.loop.exit1301, label %.lr.ph732.3, !prof !67

.lr.ph732.3:                                      ; preds = %.lr.ph732.2
  %i.jc = getelementptr inbounds nuw i8, ptr %.val226729731, i64 3 ; 2 uses
  store ptr %i.jc, ptr %i.n, align 8, !tbaa !56
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !43  ; 2 uses
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !66, !range !62, !noundef !63
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %.loopexit.loopexit.loopexit.split.loop.exit, label %bb.bf, !prof !67

bb.bf:                                            ; preds = %.lr.ph732.3
  %i.ji = getelementptr inbounds nuw i8, ptr %.val226729731, i64 4 ; 3 uses
  store ptr %i.ji, ptr %i.n, align 8, !tbaa !56
  %exitcond798.not.3 = icmp eq ptr %i.ji, %scevgep797
  br i1 %exitcond798.not.3, label %string_scan.exit, label %.lr.ph732, !prof !72, !llvm.loop !73

string_scan.exit:                                 ; preds = %.lr.ph732.prol.loopexit, %bb.bf, %string_scan_simd_sse2.exit222.thread468
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.51, ptr noundef nonnull %0) #24
  unreachable

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.lr.ph732.3
  %i.jj = getelementptr inbounds nuw i8, ptr %.val226729731, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit1301:  ; preds = %.lr.ph732.2
  %i.jk = getelementptr inbounds nuw i8, ptr %.val226729731, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit1304:  ; preds = %.lr.ph732.1
  %i.jl = getelementptr inbounds nuw i8, ptr %.val226729731, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph732, %.loopexit.loopexit.loopexit.split.loop.exit1304, %.loopexit.loopexit.loopexit.split.loop.exit1301, %.loopexit.loopexit.loopexit.split.loop.exit, %.lr.ph732.prol, %string_scan_simd_sse2.exit222
  %i.jm = phi i8 [ %.pre844, %string_scan_simd_sse2.exit222 ], [ %i.il, %.lr.ph732 ], [ %i.ir, %.loopexit.loopexit.loopexit.split.loop.exit1304 ], [ %i.ix, %.loopexit.loopexit.loopexit.split.loop.exit1301 ], [ %i.jd, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.ie, %.lr.ph732.prol ]
  %i.jn = phi ptr [ %i.hz, %string_scan_simd_sse2.exit222 ], [ %.val226729731, %.lr.ph732 ], [ %i.jl, %.loopexit.loopexit.loopexit.split.loop.exit1304 ], [ %i.jk, %.loopexit.loopexit.loopexit.split.loop.exit1301 ], [ %i.jj, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.val226729731.prol, %.lr.ph732.prol ]
  %i.jo = icmp eq i8 %i.jm, 34
  br i1 %i.jo, label %bb.bg, label %bb.bk, !prof !24

bb.bg:                                            ; preds = %.loopexit
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.hk to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jt = load i8, ptr %i.js, align 4, !tbaa !40, !range !62, !noundef !63
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %.thread56.i, label %.thread54.i

.thread56.i:                                      ; preds = %bb.bg
  %i.jv = load ptr, ptr @enc_utf8, align 8, !tbaa !12
  %i.jw = tail call i64 @rb_enc_interned_str(ptr noundef nonnull %i.hk, i64 noundef %i.jr, ptr noundef %i.jv) #19
  br label %json_string_fastpath.exit

.thread54.i:                                      ; preds = %bb.bg
  %i.jx = tail call i64 @rb_utf8_str_new(ptr noundef nonnull %i.hk, i64 noundef %i.jr) #19
  br label %json_string_fastpath.exit

json_string_fastpath.exit:                        ; preds = %.thread56.i, %.thread54.i
  %.1.i355 = phi i64 [ %i.jw, %.thread56.i ], [ %i.jx, %.thread54.i ] ; 2 uses
  %i.jy = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  store ptr %i.jz, ptr %i.n, align 8, !tbaa !56
  %.val298 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.1.i355, ptr %i.f, align 8, !tbaa !10
  %.not.i356 = icmp eq i64 %.val298, 0
  br i1 %.not.i356, label %bb.bi, label %bb.bh, !prof !24

bb.bh:                                            ; preds = %json_string_fastpath.exit
  %i.ka = call i64 @rb_proc_call_with_block(i64 noundef %.val298, i32 noundef 1, ptr noundef nonnull %i.f, i64 noundef 4) #19 ; 2 uses
  store i64 %i.ka, ptr %i.f, align 8, !tbaa !10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %json_string_fastpath.exit
  %i.kb = phi i64 [ %i.ka, %bb.bh ], [ %.1.i355, %json_string_fastpath.exit ]
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !58 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !50 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !49
  %.not.i.i357 = icmp slt i64 %i.kf, %i.kh
  br i1 %.not.i.i357, label %json_push_value.exit361, label %bb.bj, !prof !24

bb.bj:                                            ; preds = %bb.bi
  %i.ki = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.kd, ptr noundef nonnull %0, ptr noundef nonnull %i.kc) ; 2 uses
  %.phi.trans.insert.i.i358 = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %.pre.i.i359 = load i64, ptr %.phi.trans.insert.i.i358, align 8, !tbaa !50
  br label %json_push_value.exit361

json_push_value.exit361:                          ; preds = %bb.bi, %bb.bj
  %i.kj = phi i64 [ %.pre.i.i359, %bb.bj ], [ %i.kf, %bb.bi ]
  %.0.i.i360 = phi ptr [ %i.ki, %bb.bj ], [ %i.kd, %bb.bi ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i.i360, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !51
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i360, i64 16 ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.kj
  store i64 %i.kb, ptr %i.kn, align 8, !tbaa !10
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !50
  %i.kp = add nsw i64 %i.ko, 1
  store i64 %i.kp, ptr %i.km, align 8, !tbaa !50
  %i.kq = load i64, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %json_parse_string.exit207

bb.bk:                                            ; preds = %.loopexit
  %i.kr = tail call fastcc i64 @json_parse_escaped_string(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef nonnull %i.hk)
  br label %json_parse_string.exit207

bb.bl:                                            ; preds = %peek.exit317
  %i.ks = getelementptr inbounds nuw i8, ptr %.val228636, i64 1 ; 3 uses
  store ptr %i.ks, ptr %i.n, align 8, !tbaa !56
  %.not.i362702 = icmp ult ptr %i.ks, %.val231701
  br i1 %.not.i362702, label %peek.exit364, label %peek.exit367.thread, !prof !60

peek.exit364:                                     ; preds = %bb.bl, %.loopexit579
  %.val231828 = phi ptr [ %.val231, %.loopexit579 ], [ %.val231701, %bb.bl ] ; 6 uses
  %.val230703 = phi ptr [ %.val230, %.loopexit579 ], [ %i.ks, %bb.bl ] ; 5 uses
  %i.kt = load i8, ptr %.val230703, align 1, !tbaa !43 ; 2 uses
  switch i8 %i.kt, label %peek.exit367 [
    i8 32, label %bb.bm
    i8 10, label %bb.bn
    i8 9, label %bb.bp
    i8 13, label %bb.bp
    i8 47, label %bb.bq
  ]

bb.bm:                                            ; preds = %peek.exit364
  %i.ku = getelementptr inbounds nuw i8, ptr %.val230703, i64 1 ; 2 uses
  store ptr %i.ku, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit579

bb.bn:                                            ; preds = %peek.exit364
  %i.kv = getelementptr inbounds nuw i8, ptr %.val230703, i64 1 ; 4 uses
  %i.kw = ptrtoint ptr %.val231828 to i64         ; 2 uses
  store ptr %i.kv, ptr %i.n, align 8, !tbaa !56
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = icmp ugt i64 %i.ky, 8
  br i1 %i.kz, label %.lr.ph699, label %.loopexit579
end_hunk_0
begin_hunk_1_@json_parse_any:bb.a
  br i1 %i.of, label %bb.ch, label %.thread483

.thread483:                                       ; preds = %.lr.ph714
  %i.og = xor i64 %.0.copyload.i187, 2314885530818453536
  %i.oh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.og, i1 true)
  %i.oi = lshr i64 %i.oh, 3
  %i.oj = getelementptr inbounds nuw i8, ptr %storemerge573713, i64 %i.oi ; 2 uses
  store ptr %i.oj, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit575

bb.ch:                                            ; preds = %.lr.ph714
  %i.ok = getelementptr inbounds nuw i8, ptr %storemerge573713, i64 8 ; 4 uses
  store ptr %i.ok, ptr %i.n, align 8, !tbaa !56
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = sub i64 %i.ob, %i.ol
  %i.on = icmp ugt i64 %i.om, 8
  br i1 %i.on, label %.lr.ph714, label %.loopexit575

bb.ci:                                            ; preds = %peek.exit382, %peek.exit382
  %i.oo = getelementptr inbounds nuw i8, ptr %.val234718, i64 1 ; 2 uses
  store ptr %i.oo, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit575

bb.cj:                                            ; preds = %peek.exit382
  tail call fastcc void @json_eat_comments(ptr noundef nonnull %0)
  %.val234.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val235.pre = load ptr, ptr %i.o, align 8, !tbaa !57 ; 2 uses
  br label %.loopexit575

.loopexit575:                                     ; preds = %bb.ch, %bb.cg, %.thread483, %bb.cj, %bb.ci, %bb.cf
  %.val233708838 = phi ptr [ %.val233708839, %bb.cf ], [ %.val233708839, %bb.cg ], [ %.val233708839, %.thread483 ], [ %.val235.pre, %bb.cj ], [ %.val233708839, %bb.ci ], [ %.val233708839, %bb.ch ]
  %.val235 = phi ptr [ %.val235834, %bb.cf ], [ %.val235834, %bb.cg ], [ %.val235834, %.thread483 ], [ %.val235.pre, %bb.cj ], [ %.val235834, %bb.ci ], [ %.val235834, %bb.ch ] ; 2 uses
  %.val234 = phi ptr [ %i.nz, %bb.cf ], [ %i.oa, %bb.cg ], [ %i.oj, %.thread483 ], [ %.val234.pre, %bb.cj ], [ %i.oo, %bb.ci ], [ %i.ok, %bb.ch ] ; 2 uses
  %.not.i380 = icmp ult ptr %.val234, %.val235
  br i1 %.not.i380, label %peek.exit382, label %peek.exit385.thread, !prof !61

peek.exit385.thread:                              ; preds = %.loopexit575, %peek.exit382, %bb.ce
  %i.op = tail call fastcc i64 @json_parse_any(ptr noundef %0, ptr noundef %1) ; 0 uses
  %.val232707.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val233708.pre = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %.backedge

.backedge:                                        ; preds = %peek.exit382, %peek.exit385.thread
  %.val233708 = phi ptr [ %.val233708.pre, %peek.exit385.thread ], [ %.val233708839, %peek.exit382 ] ; 3 uses
  %.val232707 = phi ptr [ %.val232707.pre, %peek.exit385.thread ], [ %.val234718, %peek.exit382 ] ; 2 uses
  %.not.i374709 = icmp ult ptr %.val232707, %.val233708
  br i1 %.not.i374709, label %peek.exit376.backedge, label %.thread487, !prof !79

.thread489:                                       ; preds = %peek.exit376
  %i.oq = getelementptr inbounds nuw i8, ptr %.val232710, i64 1
  store ptr %i.oq, ptr %i.n, align 8, !tbaa !56
  %i.or = load ptr, ptr %i.mq, align 8, !tbaa !58
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !50
  %i.ou = sub nsw i64 %i.ot, %i.mr
  %i.ov = load <2 x i32>, ptr %i.mz, align 8, !tbaa !6
  %i.ow = add nsw <2 x i32> %i.ov, splat (i32 -1)
  store <2 x i32> %i.ow, ptr %i.mz, align 8, !tbaa !6
  %i.ox = tail call fastcc i64 @json_decode_array(ptr noundef %0, ptr noundef %1, i64 noundef %i.ou)
  %.val303 = load i64, ptr %1, align 8, !tbaa !35
  %i.oy = tail call fastcc i64 @json_push_value(ptr noundef %0, i64 %.val303, i64 noundef %i.ox)
  br label %json_parse_string.exit207

.thread487:                                       ; preds = %.backedge, %peek.exit376, %.loopexit576, %bb.by
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.34, ptr noundef %0) #24
  unreachable

bb.ck:                                            ; preds = %peek.exit317
  %i.oz = getelementptr inbounds nuw i8, ptr %.val228636, i64 1 ; 4 uses
  store ptr %i.oz, ptr %i.n, align 8, !tbaa !56
  %.not.i386642 = icmp ult ptr %i.oz, %.val231701
  br i1 %.not.i386642, label %peek.exit388, label %peek.exit391.thread, !prof !60

peek.exit388:                                     ; preds = %bb.ck, %.loopexit592
  %.val237803 = phi ptr [ %.val237, %.loopexit592 ], [ %.val231701, %bb.ck ] ; 7 uses
  %.val236643 = phi ptr [ %.val236, %.loopexit592 ], [ %i.oz, %bb.ck ] ; 6 uses
  %i.pa = load i8, ptr %.val236643, align 1, !tbaa !43 ; 2 uses
  switch i8 %i.pa, label %peek.exit391 [
    i8 32, label %bb.cl
    i8 10, label %bb.cm
    i8 9, label %bb.co
    i8 13, label %bb.co
    i8 47, label %bb.cp
  ]

bb.cl:                                            ; preds = %peek.exit388
  %i.pb = getelementptr inbounds nuw i8, ptr %.val236643, i64 1 ; 2 uses
  store ptr %i.pb, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit592

bb.cm:                                            ; preds = %peek.exit388
  %i.pc = getelementptr inbounds nuw i8, ptr %.val236643, i64 1 ; 4 uses
  %i.pd = ptrtoint ptr %.val237803 to i64         ; 2 uses
  store ptr %i.pc, ptr %i.n, align 8, !tbaa !56
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = icmp ugt i64 %i.pf, 8
  br i1 %i.pg, label %.lr.ph639, label %.loopexit592

.lr.ph639:                                        ; preds = %bb.cm, %bb.cn
  %storemerge564638 = phi ptr [ %i.pm, %bb.cn ], [ %i.pc, %bb.cm ] ; 3 uses
  %.0.copyload.i183 = load i64, ptr %storemerge564638, align 1 ; 2 uses
  %i.ph = icmp eq i64 %.0.copyload.i183, 2314885530818453536
  br i1 %i.ph, label %bb.cn, label %.thread492

.thread492:                                       ; preds = %.lr.ph639
  %i.pi = xor i64 %.0.copyload.i183, 2314885530818453536
  %i.pj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pi, i1 true)
  %i.pk = lshr i64 %i.pj, 3
  %i.pl = getelementptr inbounds nuw i8, ptr %storemerge564638, i64 %i.pk ; 2 uses
  store ptr %i.pl, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit592

bb.cn:                                            ; preds = %.lr.ph639
  %i.pm = getelementptr inbounds nuw i8, ptr %storemerge564638, i64 8 ; 4 uses
  store ptr %i.pm, ptr %i.n, align 8, !tbaa !56
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = sub i64 %i.pd, %i.pn
  %i.pp = icmp ugt i64 %i.po, 8
  br i1 %i.pp, label %.lr.ph639, label %.loopexit592

bb.co:                                            ; preds = %peek.exit388, %peek.exit388
  %i.pq = getelementptr inbounds nuw i8, ptr %.val236643, i64 1 ; 2 uses
  store ptr %i.pq, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit592

bb.cp:                                            ; preds = %peek.exit388
  tail call fastcc void @json_eat_comments(ptr noundef nonnull %0)
  %.val236.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val237.pre = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %.loopexit592

.loopexit592:                                     ; preds = %bb.cn, %bb.cm, %.thread492, %bb.cp, %bb.co, %bb.cl
  %.val237 = phi ptr [ %.val237803, %bb.cl ], [ %.val237803, %bb.cm ], [ %.val237803, %.thread492 ], [ %.val237.pre, %bb.cp ], [ %.val237803, %bb.co ], [ %.val237803, %bb.cn ] ; 3 uses
  %.val236 = phi ptr [ %i.pb, %bb.cl ], [ %i.pc, %bb.cm ], [ %i.pl, %.thread492 ], [ %.val236.pre, %bb.cp ], [ %i.pq, %bb.co ], [ %i.pm, %bb.cn ] ; 3 uses
  %.not.i386 = icmp ult ptr %.val236, %.val237
  br i1 %.not.i386, label %peek.exit388, label %peek.exit391.thread, !prof !61

peek.exit391.thread:                              ; preds = %.loopexit592, %bb.ck
  %.val236.lcssa = phi ptr [ %i.oz, %bb.ck ], [ %.val236, %.loopexit592 ]
  %.val237.lcssa = phi ptr [ %.val231701, %bb.ck ], [ %.val237, %.loopexit592 ]
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.cu

peek.exit391:                                     ; preds = %peek.exit388
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.pt = icmp eq i8 %i.pa, 125
  br i1 %i.pt, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %peek.exit391
  %i.pu = getelementptr inbounds nuw i8, ptr %.val236643, i64 1
  store ptr %i.pu, ptr %i.n, align 8, !tbaa !56
  %i.pv = tail call fastcc i64 @json_decode_object(ptr noundef %0, ptr noundef %1, i64 noundef 0) ; 2 uses
  %.val302 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.pv, ptr %i.d, align 8, !tbaa !10
  %.not.i392 = icmp eq i64 %.val302, 0
  br i1 %.not.i392, label %bb.cs, label %bb.cr, !prof !24

bb.cr:                                            ; preds = %bb.cq
  %i.pw = call i64 @rb_proc_call_with_block(i64 noundef %.val302, i32 noundef 1, ptr noundef nonnull %i.d, i64 noundef 4) #19 ; 2 uses
  store i64 %i.pw, ptr %i.d, align 8, !tbaa !10
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.px = phi i64 [ %i.pw, %bb.cr ], [ %i.pv, %bb.cq ]
  %i.py = load ptr, ptr %i.ps, align 8, !tbaa !58 ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !50 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !49
  %.not.i.i393 = icmp slt i64 %i.qa, %i.qc
  br i1 %.not.i.i393, label %json_push_value.exit397, label %bb.ct, !prof !24

bb.ct:                                            ; preds = %bb.cs
  %i.qd = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.py, ptr noundef nonnull %0, ptr noundef nonnull %i.ps) ; 2 uses
  %.phi.trans.insert.i.i394 = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %.pre.i.i395 = load i64, ptr %.phi.trans.insert.i.i394, align 8, !tbaa !50
  br label %json_push_value.exit397

json_push_value.exit397:                          ; preds = %bb.cs, %bb.ct
  %i.qe = phi i64 [ %.pre.i.i395, %bb.ct ], [ %i.qa, %bb.cs ]
  %.0.i.i396 = phi ptr [ %i.qd, %bb.ct ], [ %i.py, %bb.cs ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i.i396, i64 24
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !51
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.i396, i64 16 ; 2 uses
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.qe
  store i64 %i.px, ptr %i.qi, align 8, !tbaa !10
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !50
  %i.qk = add nsw i64 %i.qj, 1
  store i64 %i.qk, ptr %i.qh, align 8, !tbaa !50
  %i.ql = load i64, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %json_parse_string.exit207

bb.cu:                                            ; preds = %peek.exit391.thread, %peek.exit391
  %.val236624 = phi ptr [ %.val236.lcssa, %peek.exit391.thread ], [ %.val236643, %peek.exit391 ] ; 3 uses
  %.val237622 = phi ptr [ %.val237.lcssa, %peek.exit391.thread ], [ %.val237803, %peek.exit391 ] ; 5 uses
  %.not.i386620 = phi i1 [ false, %peek.exit391.thread ], [ true, %peek.exit391 ]
  %i.qm = phi ptr [ %i.pr, %peek.exit391.thread ], [ %i.ps, %peek.exit391 ] ; 8 uses
  %.val2376221172 = ptrtoint ptr %.val237622 to i64
  %.pn = load ptr, ptr %i.qm, align 8, !tbaa !58
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.qn = load i64, ptr %.in, align 8, !tbaa !50
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 4 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !75 ; 2 uses
  %i.qq = add nsw i32 %i.qp, 1                    ; 2 uses
  store i32 %i.qq, ptr %i.qo, align 4, !tbaa !75
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !30 ; 2 uses
  %.not = icmp ne i32 %i.qs, 0
  %i.qt = icmp sle i32 %i.qs, %i.qp
  %spec.select170 = select i1 %.not, i1 %i.qt, i1 false
  br i1 %spec.select170, label %bb.cv, label %bb.cw, !prof !67

bb.cv:                                            ; preds = %bb.cu
  %i.qu = load i64, ptr @eNestingError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qu, ptr noundef nonnull @.str.33, i32 noundef %i.qq) #21
  unreachable

bb.cw:                                            ; preds = %bb.cu
  br i1 %.not.i386620, label %peek.exit400, label %peek.exit400.thread, !prof !24

peek.exit400:                                     ; preds = %bb.cw
  %i.qv = load i8, ptr %.val236624, align 1, !tbaa !43
  %.not159 = icmp eq i8 %i.qv, 34
  br i1 %.not159, label %bb.cx, label %peek.exit400.thread

peek.exit400.thread:                              ; preds = %bb.cw, %peek.exit400
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.35, ptr noundef %0) #24
  unreachable

bb.cx:                                            ; preds = %peek.exit400
  %i.qw = getelementptr inbounds nuw i8, ptr %.val236624, i64 1 ; 5 uses
  store ptr %i.qw, ptr %i.n, align 8, !tbaa !56
  %i.qx = load i32, ptr @simd_impl, align 4, !tbaa !6
  %i.qy = icmp ne i32 %i.qx, 2
  %i.qz = getelementptr inbounds nuw i8, ptr %.val236624, i64 17 ; 2 uses
  %.not.i215648 = icmp ugt ptr %i.qz, %.val237622
  %or.cond980 = select i1 %i.qy, i1 true, i1 %.not.i215648
  br i1 %or.cond980, label %string_scan_simd_sse2.exit218.thread506, label %.lr.ph649

.lr.ph649:                                        ; preds = %bb.cx, %bb.cy
  %i.ra = phi ptr [ %i.ri, %bb.cy ], [ %i.qz, %bb.cx ] ; 4 uses
  %i.rb = phi ptr [ %i.ra, %bb.cy ], [ %i.qw, %bb.cx ] ; 2 uses
  %i.rc = load <16 x i8>, ptr %i.rb, align 1, !tbaa !43 ; 2 uses
  %i.rd = xor <16 x i8> %i.rc, splat (i8 2)
  %i.re = icmp ult <16 x i8> %i.rd, splat (i8 33)
  %i.rf = icmp eq <16 x i8> %i.rc, splat (i8 92)
  %i.rg = or <16 x i1> %i.rf, %i.re
  %i.rh = bitcast <16 x i1> %i.rg to i16          ; 2 uses
  %.not10.i216.not = icmp eq i16 %i.rh, 0
  br i1 %.not10.i216.not, label %bb.cy, label %string_scan_simd_sse2.exit218

bb.cy:                                            ; preds = %.lr.ph649
  store ptr %i.ra, ptr %i.n, align 8, !tbaa !64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ra, i64 16 ; 2 uses
  %.not.i215 = icmp ugt ptr %i.ri, %.val237622
  br i1 %.not.i215, label %string_scan_simd_sse2.exit218.thread506, label %.lr.ph649

string_scan_simd_sse2.exit218:                    ; preds = %.lr.ph649
  %i.rj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.rh, i1 true)
  %i.rk = zext nneg i16 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rk ; 3 uses
  store ptr %i.rl, ptr %i.n, align 8, !tbaa !56
  %.pre = load i8, ptr %i.rl, align 1, !tbaa !43
  br label %.loopexit590

string_scan_simd_sse2.exit218.thread506:          ; preds = %bb.cy, %bb.cx
  %.lcssa631.promoted650 = phi ptr [ %i.qw, %bb.cx ], [ %i.ra, %bb.cy ] ; 4 uses
  %.not565652 = icmp ult ptr %.lcssa631.promoted650, %.val237622
  br i1 %.not565652, label %.lr.ph654.preheader, label %string_scan.exit210, !prof !65

.lr.ph654.preheader:                              ; preds = %string_scan_simd_sse2.exit218.thread506
  %.lcssa631.promoted6501173 = ptrtoint ptr %.lcssa631.promoted650 to i64
  %i.rm = sub i64 %.val2376221172, %.lcssa631.promoted6501173
  %i.rn = freeze i64 %i.rm                        ; 2 uses
  %i.ro = add i64 %i.rn, -1
  %xtraiter = and i64 %i.rn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph654.prol.loopexit, label %.lr.ph654.prol, !prof !60

.lr.ph654.prol:                                   ; preds = %.lr.ph654.preheader, %bb.cz
  %.val224651653.prol = phi ptr [ %i.ru, %bb.cz ], [ %.lcssa631.promoted650, %.lr.ph654.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.cz ], [ 0, %.lr.ph654.preheader ]
  %i.rp = load i8, ptr %.val224651653.prol, align 1, !tbaa !43 ; 2 uses
  %i.rq = zext i8 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !66, !range !62, !noundef !63
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %.loopexit590, label %bb.cz, !prof !67

bb.cz:                                            ; preds = %.lr.ph654.prol
  %i.ru = getelementptr inbounds nuw i8, ptr %.val224651653.prol, i64 1 ; 3 uses
  store ptr %i.ru, ptr %i.n, align 8, !tbaa !56
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph654.prol.loopexit, label %.lr.ph654.prol, !prof !68, !llvm.loop !80

.lr.ph654.prol.loopexit:                          ; preds = %bb.cz, %.lr.ph654.preheader
  %.val224651653.unr = phi ptr [ %.lcssa631.promoted650, %.lr.ph654.preheader ], [ %i.ru, %bb.cz ]
  %i.rv = icmp ult i64 %i.ro, 3
  br i1 %i.rv, label %string_scan.exit210, label %.lr.ph654, !prof !71

.lr.ph654:                                        ; preds = %.lr.ph654.prol.loopexit, %bb.da
  %.val224651653 = phi ptr [ %i.st, %bb.da ], [ %.val224651653.unr, %.lr.ph654.prol.loopexit ] ; 9 uses
  %i.rw = load i8, ptr %.val224651653, align 1, !tbaa !43 ; 2 uses
  %i.rx = zext i8 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !66, !range !62, !noundef !63
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %.loopexit590, label %.lr.ph654.1, !prof !67

.lr.ph654.1:                                      ; preds = %.lr.ph654
  %i.sb = getelementptr inbounds nuw i8, ptr %.val224651653, i64 1 ; 2 uses
  store ptr %i.sb, ptr %i.n, align 8, !tbaa !56
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !43  ; 2 uses
  %i.sd = zext i8 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !66, !range !62, !noundef !63
  %i.sg = trunc nuw i8 %i.sf to i1
  br i1 %i.sg, label %.loopexit590.loopexit.loopexit.split.loop.exit1280, label %.lr.ph654.2, !prof !67

.lr.ph654.2:                                      ; preds = %.lr.ph654.1
  %i.sh = getelementptr inbounds nuw i8, ptr %.val224651653, i64 2 ; 2 uses
  store ptr %i.sh, ptr %i.n, align 8, !tbaa !56
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !43  ; 2 uses
  %i.sj = zext i8 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.sj
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !66, !range !62, !noundef !63
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %.loopexit590.loopexit.loopexit.split.loop.exit1277, label %.lr.ph654.3, !prof !67

.lr.ph654.3:                                      ; preds = %.lr.ph654.2
  %i.sn = getelementptr inbounds nuw i8, ptr %.val224651653, i64 3 ; 2 uses
  store ptr %i.sn, ptr %i.n, align 8, !tbaa !56
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !43  ; 2 uses
  %i.sp = zext i8 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.sp
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !66, !range !62, !noundef !63
  %i.ss = trunc nuw i8 %i.sr to i1
  br i1 %i.ss, label %.loopexit590.loopexit.loopexit.split.loop.exit, label %bb.da, !prof !67

bb.da:                                            ; preds = %.lr.ph654.3
  %i.st = getelementptr inbounds nuw i8, ptr %.val224651653, i64 4 ; 3 uses
  store ptr %i.st, ptr %i.n, align 8, !tbaa !56
  %exitcond.not.3 = icmp eq ptr %i.st, %.val237622
  br i1 %exitcond.not.3, label %string_scan.exit210, label %.lr.ph654, !prof !72, !llvm.loop !81

string_scan.exit210:                              ; preds = %.lr.ph654.prol.loopexit, %bb.da, %string_scan_simd_sse2.exit218.thread506
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.51, ptr noundef nonnull %0) #24
  unreachable

.loopexit590.loopexit.loopexit.split.loop.exit:   ; preds = %.lr.ph654.3
  %i.su = getelementptr inbounds nuw i8, ptr %.val224651653, i64 3
  br label %.loopexit590

.loopexit590.loopexit.loopexit.split.loop.exit1277: ; preds = %.lr.ph654.2
  %i.sv = getelementptr inbounds nuw i8, ptr %.val224651653, i64 2
  br label %.loopexit590

.loopexit590.loopexit.loopexit.split.loop.exit1280: ; preds = %.lr.ph654.1
  %i.sw = getelementptr inbounds nuw i8, ptr %.val224651653, i64 1
  br label %.loopexit590

.loopexit590:                                     ; preds = %.lr.ph654, %.loopexit590.loopexit.loopexit.split.loop.exit1280, %.loopexit590.loopexit.loopexit.split.loop.exit1277, %.loopexit590.loopexit.loopexit.split.loop.exit, %.lr.ph654.prol, %string_scan_simd_sse2.exit218
  %i.sx = phi i8 [ %.pre, %string_scan_simd_sse2.exit218 ], [ %i.rw, %.lr.ph654 ], [ %i.sc, %.loopexit590.loopexit.loopexit.split.loop.exit1280 ], [ %i.si, %.loopexit590.loopexit.loopexit.split.loop.exit1277 ], [ %i.so, %.loopexit590.loopexit.loopexit.split.loop.exit ], [ %i.rp, %.lr.ph654.prol ]
  %i.sy = phi ptr [ %i.rl, %string_scan_simd_sse2.exit218 ], [ %.val224651653, %.lr.ph654 ], [ %i.sw, %.loopexit590.loopexit.loopexit.split.loop.exit1280 ], [ %i.sv, %.loopexit590.loopexit.loopexit.split.loop.exit1277 ], [ %i.su, %.loopexit590.loopexit.loopexit.split.loop.exit ], [ %.val224651653.prol, %.lr.ph654.prol ]
  %i.sz = icmp eq i8 %i.sx, 34
  br i1 %i.sz, label %bb.db, label %bb.df, !prof !24

bb.db:                                            ; preds = %.loopexit590
  %i.ta = tail call fastcc i64 @json_string_fastpath(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.qw, ptr noundef nonnull %i.sy, i1 noundef zeroext true) ; 2 uses
  %i.tb = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 1
  store ptr %i.tc, ptr %i.n, align 8, !tbaa !56
  %.val299 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ta, ptr %i.c, align 8, !tbaa !10
  %.not.i401 = icmp eq i64 %.val299, 0
  br i1 %.not.i401, label %bb.dd, label %bb.dc, !prof !24

bb.dc:                                            ; preds = %bb.db
  %i.td = call i64 @rb_proc_call_with_block(i64 noundef %.val299, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 4) #19 ; 2 uses
  store i64 %i.td, ptr %i.c, align 8, !tbaa !10
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.te = phi i64 [ %i.td, %bb.dc ], [ %i.ta, %bb.db ]
  %i.tf = load ptr, ptr %i.qm, align 8, !tbaa !58 ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !50 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !49
  %.not.i.i402 = icmp slt i64 %i.th, %i.tj
  br i1 %.not.i.i402, label %json_push_value.exit406, label %bb.de, !prof !24

bb.de:                                            ; preds = %bb.dd
  %i.tk = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.tf, ptr noundef nonnull %0, ptr noundef nonnull %i.qm) ; 2 uses
  %.phi.trans.insert.i.i403 = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %.pre.i.i404 = load i64, ptr %.phi.trans.insert.i.i403, align 8, !tbaa !50
  br label %json_push_value.exit406

json_push_value.exit406:                          ; preds = %bb.dd, %bb.de
  %i.tl = phi i64 [ %.pre.i.i404, %bb.de ], [ %i.th, %bb.dd ]
  %.0.i.i405 = phi ptr [ %i.tk, %bb.de ], [ %i.tf, %bb.dd ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i.i405, i64 24
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !51
  %i.to = getelementptr inbounds nuw i8, ptr %.0.i.i405, i64 16 ; 2 uses
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.tn, i64 %i.tl
  store i64 %i.te, ptr %i.tp, align 8, !tbaa !10
  %i.tq = load i64, ptr %i.to, align 8, !tbaa !50
  %i.tr = add nsw i64 %i.tq, 1
  store i64 %i.tr, ptr %i.to, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %json_parse_string.exit205

bb.df:                                            ; preds = %.loopexit590
  %i.ts = tail call fastcc i64 @json_parse_escaped_string(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %i.qw) ; 0 uses
  br label %json_parse_string.exit205

json_parse_string.exit205:                        ; preds = %json_push_value.exit406, %bb.df
  %.val238657 = load ptr, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  %.val239658 = load ptr, ptr %i.o, align 8, !tbaa !57 ; 2 uses
  %.not.i407659 = icmp ult ptr %.val238657, %.val239658
  br i1 %.not.i407659, label %peek.exit409, label %peek.exit412.thread, !prof !60

peek.exit409:                                     ; preds = %json_parse_string.exit205, %.loopexit589
  %.val239807 = phi ptr [ %.val239, %.loopexit589 ], [ %.val239658, %json_parse_string.exit205 ] ; 6 uses
  %.val238660 = phi ptr [ %.val238, %.loopexit589 ], [ %.val238657, %json_parse_string.exit205 ] ; 5 uses
  %i.tt = load i8, ptr %.val238660, align 1, !tbaa !43
  switch i8 %i.tt, label %peek.exit412.thread [
    i8 32, label %bb.dg
    i8 10, label %bb.dh
    i8 9, label %bb.dj
    i8 13, label %bb.dj
    i8 47, label %bb.dk
    i8 58, label %bb.dl
  ]

bb.dg:                                            ; preds = %peek.exit409
  %i.tu = getelementptr inbounds nuw i8, ptr %.val238660, i64 1 ; 2 uses
  store ptr %i.tu, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit589

bb.dh:                                            ; preds = %peek.exit409
  %i.tv = getelementptr inbounds nuw i8, ptr %.val238660, i64 1 ; 4 uses
  %i.tw = ptrtoint ptr %.val239807 to i64         ; 2 uses
  store ptr %i.tv, ptr %i.n, align 8, !tbaa !56
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = icmp ugt i64 %i.ty, 8
  br i1 %i.tz, label %.lr.ph656, label %.loopexit589

.lr.ph656:                                        ; preds = %bb.dh, %bb.di
  %storemerge566655 = phi ptr [ %i.uf, %bb.di ], [ %i.tv, %bb.dh ] ; 3 uses
  %.0.copyload.i179 = load i64, ptr %storemerge566655, align 1 ; 2 uses
  %i.ua = icmp eq i64 %.0.copyload.i179, 2314885530818453536
  br i1 %i.ua, label %bb.di, label %.thread510

.thread510:                                       ; preds = %.lr.ph656
  %i.ub = xor i64 %.0.copyload.i179, 2314885530818453536
  %i.uc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ub, i1 true)
  %i.ud = lshr i64 %i.uc, 3
  %i.ue = getelementptr inbounds nuw i8, ptr %storemerge566655, i64 %i.ud ; 2 uses
  store ptr %i.ue, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit589

bb.di:                                            ; preds = %.lr.ph656
  %i.uf = getelementptr inbounds nuw i8, ptr %storemerge566655, i64 8 ; 4 uses
  store ptr %i.uf, ptr %i.n, align 8, !tbaa !56
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = sub i64 %i.tw, %i.ug
  %i.ui = icmp ugt i64 %i.uh, 8
  br i1 %i.ui, label %.lr.ph656, label %.loopexit589

end_hunk_1
begin_hunk_2_@json_parse_any:bb.a
  %.val240667 = phi ptr [ %.val240664693, %peek.exit415.lr.ph.lr.ph ], [ %.val240667.be, %peek.exit415.backedge ] ; 6 uses
  %i.un = load i8, ptr %.val240667, align 1, !tbaa !43
  switch i8 %i.un, label %.thread524 [
    i8 32, label %bb.dm
    i8 10, label %bb.dn
    i8 9, label %bb.dp
    i8 13, label %bb.dp
    i8 47, label %bb.dq
    i8 125, label %bb.dr
    i8 44, label %bb.dv
  ]

bb.dm:                                            ; preds = %peek.exit415
  %i.uo = getelementptr inbounds nuw i8, ptr %.val240667, i64 1 ; 2 uses
  store ptr %i.uo, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit582

bb.dn:                                            ; preds = %peek.exit415
  %i.up = getelementptr inbounds nuw i8, ptr %.val240667, i64 1 ; 4 uses
  %i.uq = ptrtoint ptr %.val243673 to i64         ; 2 uses
  store ptr %i.up, ptr %i.n, align 8, !tbaa !56
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = sub i64 %i.uq, %i.ur
  %i.ut = icmp ugt i64 %i.us, 8
  br i1 %i.ut, label %.lr.ph663, label %.loopexit582

.lr.ph663:                                        ; preds = %bb.dn, %bb.do
  %storemerge567662 = phi ptr [ %i.uz, %bb.do ], [ %i.up, %bb.dn ] ; 3 uses
  %.0.copyload.i175 = load i64, ptr %storemerge567662, align 1 ; 2 uses
  %i.uu = icmp eq i64 %.0.copyload.i175, 2314885530818453536
  br i1 %i.uu, label %bb.do, label %.thread516

.thread516:                                       ; preds = %.lr.ph663
  %i.uv = xor i64 %.0.copyload.i175, 2314885530818453536
  %i.uw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.uv, i1 true)
  %i.ux = lshr i64 %i.uw, 3
  %i.uy = getelementptr inbounds nuw i8, ptr %storemerge567662, i64 %i.ux ; 2 uses
  store ptr %i.uy, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit582

bb.do:                                            ; preds = %.lr.ph663
  %i.uz = getelementptr inbounds nuw i8, ptr %storemerge567662, i64 8 ; 4 uses
  store ptr %i.uz, ptr %i.n, align 8, !tbaa !56
  %i.va = ptrtoint ptr %i.uz to i64
  %i.vb = sub i64 %i.uq, %i.va
  %i.vc = icmp ugt i64 %i.vb, 8
  br i1 %i.vc, label %.lr.ph663, label %.loopexit582

bb.dp:                                            ; preds = %peek.exit415, %peek.exit415
  %i.vd = getelementptr inbounds nuw i8, ptr %.val240667, i64 1 ; 2 uses
  store ptr %i.vd, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit582

bb.dq:                                            ; preds = %peek.exit415
  call fastcc void @json_eat_comments(ptr noundef nonnull %0)
  %.val240.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val241.pre = load ptr, ptr %i.o, align 8, !tbaa !57 ; 2 uses
  br label %.loopexit582

.loopexit582:                                     ; preds = %bb.do, %bb.dn, %.thread516, %bb.dq, %bb.dp, %bb.dm
  %.val241665821 = phi ptr [ %.val241665824, %bb.dm ], [ %.val241665824, %bb.dn ], [ %.val241665824, %.thread516 ], [ %.val241.pre, %bb.dq ], [ %.val241665824, %bb.dp ], [ %.val241665824, %bb.do ]
  %.val241 = phi ptr [ %.val243673, %bb.dm ], [ %.val243673, %bb.dn ], [ %.val243673, %.thread516 ], [ %.val241.pre, %bb.dq ], [ %.val243673, %bb.dp ], [ %.val243673, %bb.do ] ; 2 uses
  %.val240 = phi ptr [ %i.uo, %bb.dm ], [ %i.up, %bb.dn ], [ %i.uy, %.thread516 ], [ %.val240.pre, %bb.dq ], [ %i.vd, %bb.dp ], [ %i.uz, %bb.do ] ; 2 uses
  %.not.i413 = icmp ult ptr %.val240, %.val241
  br i1 %.not.i413, label %peek.exit415.backedge, label %.thread524, !prof !61

peek.exit415.backedge:                            ; preds = %.loopexit582, %.backedge588
  %.val241665824.be = phi ptr [ %.val241665821, %.loopexit582 ], [ %.val241665, %.backedge588 ]
  %.val243673.be = phi ptr [ %.val241, %.loopexit582 ], [ %.val241665, %.backedge588 ]
  %.val240667.be = phi ptr [ %.val240, %.loopexit582 ], [ %.val240664, %.backedge588 ]
  br label %peek.exit415

bb.dr:                                            ; preds = %peek.exit415
  %i.ve = getelementptr inbounds nuw i8, ptr %.val240667, i64 1
  %i.vf = load i32, ptr %i.qo, align 4, !tbaa !75
  %i.vg = add nsw i32 %i.vf, -1
  store i32 %i.vg, ptr %i.qo, align 4, !tbaa !75
  %i.vh = load ptr, ptr %i.qm, align 8, !tbaa !58
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !50
  %i.vk = sub nsw i64 %i.vj, %i.qn
  store ptr %.val228636, ptr %i.n, align 8, !tbaa !56
  %i.vl = call fastcc i64 @json_decode_object(ptr noundef %0, ptr noundef %1, i64 noundef %i.vk) ; 2 uses
  store ptr %i.ve, ptr %i.n, align 8, !tbaa !56
  %.val301 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.vl, ptr %i.b, align 8, !tbaa !10
  %.not.i419 = icmp eq i64 %.val301, 0
  br i1 %.not.i419, label %bb.dt, label %bb.ds, !prof !24

bb.ds:                                            ; preds = %bb.dr
  %i.vm = call i64 @rb_proc_call_with_block(i64 noundef %.val301, i32 noundef 1, ptr noundef nonnull %i.b, i64 noundef 4) #19 ; 2 uses
  store i64 %i.vm, ptr %i.b, align 8, !tbaa !10
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.vn = phi i64 [ %i.vm, %bb.ds ], [ %i.vl, %bb.dr ]
  %i.vo = load ptr, ptr %i.qm, align 8, !tbaa !58 ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !50 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !49
  %.not.i.i420 = icmp slt i64 %i.vq, %i.vs
  br i1 %.not.i.i420, label %.thread554, label %bb.du, !prof !24

bb.du:                                            ; preds = %bb.dt
  %i.vt = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.vo, ptr noundef nonnull %0, ptr noundef nonnull %i.qm) ; 2 uses
  %.phi.trans.insert.i.i421 = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %.pre.i.i422 = load i64, ptr %.phi.trans.insert.i.i421, align 8, !tbaa !50
  br label %.thread554

.thread554:                                       ; preds = %bb.du, %bb.dt
  %i.vu = phi i64 [ %.pre.i.i422, %bb.du ], [ %i.vq, %bb.dt ]
  %.0.i.i423 = phi ptr [ %i.vt, %bb.du ], [ %i.vo, %bb.dt ] ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.0.i.i423, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !51
  %i.vx = getelementptr inbounds nuw i8, ptr %.0.i.i423, i64 16 ; 2 uses
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.vw, i64 %i.vu
  store i64 %i.vn, ptr %i.vy, align 8, !tbaa !10
  %i.vz = load i64, ptr %i.vx, align 8, !tbaa !50
  %i.wa = add nsw i64 %i.vz, 1
  store i64 %i.wa, ptr %i.vx, align 8, !tbaa !50
  %i.wb = load i64, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %json_parse_string.exit207

bb.dv:                                            ; preds = %peek.exit415
  %i.wc = getelementptr inbounds nuw i8, ptr %.val240667, i64 1 ; 3 uses
  store ptr %i.wc, ptr %i.n, align 8, !tbaa !56
  %.not.i425674 = icmp ult ptr %i.wc, %.val243673
  br i1 %.not.i425674, label %peek.exit427, label %peek.exit433.thread, !prof !60

peek.exit427:                                     ; preds = %bb.dv, %.loopexit581
  %.val241665823 = phi ptr [ %.val241665822, %.loopexit581 ], [ %.val241665824, %bb.dv ] ; 6 uses
  %.val243813 = phi ptr [ %.val243, %.loopexit581 ], [ %.val243673, %bb.dv ] ; 10 uses
  %.val242675 = phi ptr [ %.val242, %.loopexit581 ], [ %i.wc, %bb.dv ] ; 7 uses
  %i.wd = load i8, ptr %.val242675, align 1, !tbaa !43 ; 3 uses
  switch i8 %i.wd, label %json_eat_whitespace.exit174 [
    i8 32, label %bb.dw
    i8 10, label %bb.dx
    i8 9, label %bb.dz
    i8 13, label %bb.dz
    i8 47, label %bb.ea
  ]

bb.dw:                                            ; preds = %peek.exit427
  %i.we = getelementptr inbounds nuw i8, ptr %.val242675, i64 1 ; 2 uses
  store ptr %i.we, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit581

bb.dx:                                            ; preds = %peek.exit427
  %i.wf = getelementptr inbounds nuw i8, ptr %.val242675, i64 1 ; 4 uses
  %i.wg = ptrtoint ptr %.val243813 to i64         ; 2 uses
  store ptr %i.wf, ptr %i.n, align 8, !tbaa !56
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = sub i64 %i.wg, %i.wh
  %i.wj = icmp ugt i64 %i.wi, 8
  br i1 %i.wj, label %.lr.ph671, label %.loopexit581

.lr.ph671:                                        ; preds = %bb.dx, %bb.dy
  %storemerge568670 = phi ptr [ %i.wp, %bb.dy ], [ %i.wf, %bb.dx ] ; 3 uses
  %.0.copyload.i171 = load i64, ptr %storemerge568670, align 1 ; 2 uses
  %i.wk = icmp eq i64 %.0.copyload.i171, 2314885530818453536
  br i1 %i.wk, label %bb.dy, label %.thread528

.thread528:                                       ; preds = %.lr.ph671
  %i.wl = xor i64 %.0.copyload.i171, 2314885530818453536
  %i.wm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wl, i1 true)
  %i.wn = lshr i64 %i.wm, 3
  %i.wo = getelementptr inbounds nuw i8, ptr %storemerge568670, i64 %i.wn ; 2 uses
  store ptr %i.wo, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit581

bb.dy:                                            ; preds = %.lr.ph671
  %i.wp = getelementptr inbounds nuw i8, ptr %storemerge568670, i64 8 ; 4 uses
  store ptr %i.wp, ptr %i.n, align 8, !tbaa !56
  %i.wq = ptrtoint ptr %i.wp to i64
  %i.wr = sub i64 %i.wg, %i.wq
  %i.ws = icmp ugt i64 %i.wr, 8
  br i1 %i.ws, label %.lr.ph671, label %.loopexit581

bb.dz:                                            ; preds = %peek.exit427, %peek.exit427
  %i.wt = getelementptr inbounds nuw i8, ptr %.val242675, i64 1 ; 2 uses
  store ptr %i.wt, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit581

bb.ea:                                            ; preds = %peek.exit427
  call fastcc void @json_eat_comments(ptr noundef nonnull %0)
  %.val242.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val243.pre = load ptr, ptr %i.o, align 8, !tbaa !57 ; 2 uses
  br label %.loopexit581

.loopexit581:                                     ; preds = %bb.dy, %bb.dx, %.thread528, %bb.ea, %bb.dz, %bb.dw
  %.val241665822 = phi ptr [ %.val241665823, %bb.dw ], [ %.val241665823, %bb.dx ], [ %.val241665823, %.thread528 ], [ %.val243.pre, %bb.ea ], [ %.val241665823, %bb.dz ], [ %.val241665823, %bb.dy ]
  %.val243 = phi ptr [ %.val243813, %bb.dw ], [ %.val243813, %bb.dx ], [ %.val243813, %.thread528 ], [ %.val243.pre, %bb.ea ], [ %.val243813, %bb.dz ], [ %.val243813, %bb.dy ] ; 2 uses
  %.val242 = phi ptr [ %i.we, %bb.dw ], [ %i.wf, %bb.dx ], [ %i.wo, %.thread528 ], [ %.val242.pre, %bb.ea ], [ %i.wt, %bb.dz ], [ %i.wp, %bb.dy ] ; 2 uses
  %.not.i425 = icmp ult ptr %.val242, %.val243
  br i1 %.not.i425, label %peek.exit427, label %peek.exit433.thread, !prof !61

json_eat_whitespace.exit174:                      ; preds = %peek.exit427
  %.val243676.lcssa787789 = ptrtoint ptr %.val243813 to i64 ; 2 uses
  %i.wu = load i8, ptr %i.um, align 1, !tbaa !37, !range !62, !noundef !63
  %i.wv = trunc nuw i8 %i.wu to i1
  %i.ww = icmp eq i8 %i.wd, 125
  %or.cond978 = and i1 %i.ww, %i.wv
  br i1 %or.cond978, label %.backedge588, label %peek.exit433

peek.exit433:                                     ; preds = %json_eat_whitespace.exit174
  %.not161 = icmp eq i8 %i.wd, 34
  br i1 %.not161, label %bb.eb, label %peek.exit433.thread, !prof !18

peek.exit433.thread:                              ; preds = %peek.exit433, %bb.dv, %.loopexit581
  call fastcc void @raise_parse_error(ptr noundef nonnull @.str.37, ptr noundef %0) #24
  unreachable

bb.eb:                                            ; preds = %peek.exit433
  %i.wx = getelementptr inbounds nuw i8, ptr %.val242675, i64 1 ; 5 uses
  store ptr %i.wx, ptr %i.n, align 8, !tbaa !56
  %i.wy = load i32, ptr @simd_impl, align 4, !tbaa !6
  %i.wz = icmp ne i32 %i.wy, 2
  %i.xa = getelementptr inbounds nuw i8, ptr %.val242675, i64 17 ; 2 uses
  %.not.i214679 = icmp ugt ptr %i.xa, %.val243813
  %or.cond981 = select i1 %i.wz, i1 true, i1 %.not.i214679
  br i1 %or.cond981, label %string_scan_simd_sse2.exit.thread545, label %.lr.ph680

.lr.ph680:                                        ; preds = %bb.eb, %bb.ec
  %i.xb = phi ptr [ %i.xj, %bb.ec ], [ %i.xa, %bb.eb ] ; 4 uses
  %i.xc = phi ptr [ %i.xb, %bb.ec ], [ %i.wx, %bb.eb ] ; 2 uses
  %i.xd = load <16 x i8>, ptr %i.xc, align 1, !tbaa !43 ; 2 uses
  %i.xe = xor <16 x i8> %i.xd, splat (i8 2)
  %i.xf = icmp ult <16 x i8> %i.xe, splat (i8 33)
  %i.xg = icmp eq <16 x i8> %i.xd, splat (i8 92)
  %i.xh = or <16 x i1> %i.xg, %i.xf
  %i.xi = bitcast <16 x i1> %i.xh to i16          ; 2 uses
  %.not10.i.not = icmp eq i16 %i.xi, 0
  br i1 %.not10.i.not, label %bb.ec, label %string_scan_simd_sse2.exit

bb.ec:                                            ; preds = %.lr.ph680
  store ptr %i.xb, ptr %i.n, align 8, !tbaa !64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xb, i64 16 ; 2 uses
  %.not.i214 = icmp ugt ptr %i.xj, %.val243813
  br i1 %.not.i214, label %string_scan_simd_sse2.exit.thread545, label %.lr.ph680

string_scan_simd_sse2.exit:                       ; preds = %.lr.ph680
  %i.xk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.xi, i1 true)
  %i.xl = zext nneg i16 %i.xk to i64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xl ; 3 uses
  store ptr %i.xm, ptr %i.n, align 8, !tbaa !56
  %.pre816 = load i8, ptr %i.xm, align 1, !tbaa !43
  br label %.loopexit583

string_scan_simd_sse2.exit.thread545:             ; preds = %bb.ec, %bb.eb
  %.lcssa631.promoted681 = phi ptr [ %i.wx, %bb.eb ], [ %i.xb, %bb.ec ] ; 5 uses
  %.not569683 = icmp ult ptr %.lcssa631.promoted681, %.val243813
  br i1 %.not569683, label %.lr.ph685.preheader, label %string_scan.exit213, !prof !65

.lr.ph685.preheader:                              ; preds = %string_scan_simd_sse2.exit.thread545
  %.lcssa631.promoted681785 = ptrtoint ptr %.lcssa631.promoted681 to i64 ; 2 uses
  %i.xn = sub i64 0, %.lcssa631.promoted681785
  %scevgep786 = getelementptr i8, ptr %.lcssa631.promoted681, i64 %i.xn
  %scevgep790 = getelementptr i8, ptr %scevgep786, i64 %.val243676.lcssa787789
  %i.xo = sub i64 %.val243676.lcssa787789, %.lcssa631.promoted681785
  %i.xp = freeze i64 %i.xo                        ; 2 uses
  %i.xq = add i64 %i.xp, -1
  %xtraiter1177 = and i64 %i.xp, 3                ; 2 uses
  %lcmp.mod1178.not = icmp eq i64 %xtraiter1177, 0
  br i1 %lcmp.mod1178.not, label %.lr.ph685.prol.loopexit, label %.lr.ph685.prol, !prof !60

.lr.ph685.prol:                                   ; preds = %.lr.ph685.preheader, %bb.ed
  %.val682684.prol = phi ptr [ %i.xw, %bb.ed ], [ %.lcssa631.promoted681, %.lr.ph685.preheader ] ; 3 uses
  %prol.iter1179 = phi i64 [ %prol.iter1179.next, %bb.ed ], [ 0, %.lr.ph685.preheader ]
  %i.xr = load i8, ptr %.val682684.prol, align 1, !tbaa !43 ; 2 uses
  %i.xs = zext i8 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !66, !range !62, !noundef !63
  %i.xv = trunc nuw i8 %i.xu to i1
  br i1 %i.xv, label %.loopexit583, label %bb.ed, !prof !67

bb.ed:                                            ; preds = %.lr.ph685.prol
  %i.xw = getelementptr inbounds nuw i8, ptr %.val682684.prol, i64 1 ; 3 uses
  store ptr %i.xw, ptr %i.n, align 8, !tbaa !56
  %prol.iter1179.next = add i64 %prol.iter1179, 1 ; 2 uses
  %prol.iter1179.cmp.not = icmp eq i64 %prol.iter1179.next, %xtraiter1177
  br i1 %prol.iter1179.cmp.not, label %.lr.ph685.prol.loopexit, label %.lr.ph685.prol, !prof !68, !llvm.loop !82

.lr.ph685.prol.loopexit:                          ; preds = %bb.ed, %.lr.ph685.preheader
  %.val682684.unr = phi ptr [ %.lcssa631.promoted681, %.lr.ph685.preheader ], [ %i.xw, %bb.ed ]
  %i.xx = icmp ult i64 %i.xq, 3
  br i1 %i.xx, label %string_scan.exit213, label %.lr.ph685, !prof !71

.lr.ph685:                                        ; preds = %.lr.ph685.prol.loopexit, %bb.ee
  %.val682684 = phi ptr [ %i.yv, %bb.ee ], [ %.val682684.unr, %.lr.ph685.prol.loopexit ] ; 9 uses
  %i.xy = load i8, ptr %.val682684, align 1, !tbaa !43 ; 2 uses
  %i.xz = zext i8 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !66, !range !62, !noundef !63
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %.loopexit583, label %.lr.ph685.1, !prof !67

.lr.ph685.1:                                      ; preds = %.lr.ph685
  %i.yd = getelementptr inbounds nuw i8, ptr %.val682684, i64 1 ; 2 uses
  store ptr %i.yd, ptr %i.n, align 8, !tbaa !56
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !43  ; 2 uses
  %i.yf = zext i8 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !66, !range !62, !noundef !63
  %i.yi = trunc nuw i8 %i.yh to i1
  br i1 %i.yi, label %.loopexit583.loopexit.loopexit.split.loop.exit1292, label %.lr.ph685.2, !prof !67

.lr.ph685.2:                                      ; preds = %.lr.ph685.1
  %i.yj = getelementptr inbounds nuw i8, ptr %.val682684, i64 2 ; 2 uses
  store ptr %i.yj, ptr %i.n, align 8, !tbaa !56
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !43  ; 2 uses
  %i.yl = zext i8 %i.yk to i64
  %i.ym = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.yl
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !66, !range !62, !noundef !63
  %i.yo = trunc nuw i8 %i.yn to i1
  br i1 %i.yo, label %.loopexit583.loopexit.loopexit.split.loop.exit1289, label %.lr.ph685.3, !prof !67

.lr.ph685.3:                                      ; preds = %.lr.ph685.2
  %i.yp = getelementptr inbounds nuw i8, ptr %.val682684, i64 3 ; 2 uses
  store ptr %i.yp, ptr %i.n, align 8, !tbaa !56
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !43  ; 2 uses
  %i.yr = zext i8 %i.yq to i64
  %i.ys = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !66, !range !62, !noundef !63
  %i.yu = trunc nuw i8 %i.yt to i1
  br i1 %i.yu, label %.loopexit583.loopexit.loopexit.split.loop.exit, label %bb.ee, !prof !67

bb.ee:                                            ; preds = %.lr.ph685.3
  %i.yv = getelementptr inbounds nuw i8, ptr %.val682684, i64 4 ; 3 uses
  store ptr %i.yv, ptr %i.n, align 8, !tbaa !56
  %exitcond791.not.3 = icmp eq ptr %i.yv, %scevgep790
  br i1 %exitcond791.not.3, label %string_scan.exit213, label %.lr.ph685, !prof !72, !llvm.loop !83

string_scan.exit213:                              ; preds = %string_scan_simd_sse2.exit.thread545, %bb.ee, %.lr.ph685.prol.loopexit
  call fastcc void @raise_parse_error(ptr noundef nonnull @.str.51, ptr noundef nonnull %0) #24
  unreachable

.loopexit583.loopexit.loopexit.split.loop.exit:   ; preds = %.lr.ph685.3
  %i.yw = getelementptr inbounds nuw i8, ptr %.val682684, i64 3
  br label %.loopexit583

.loopexit583.loopexit.loopexit.split.loop.exit1289: ; preds = %.lr.ph685.2
  %i.yx = getelementptr inbounds nuw i8, ptr %.val682684, i64 2
  br label %.loopexit583

.loopexit583.loopexit.loopexit.split.loop.exit1292: ; preds = %.lr.ph685.1
  %i.yy = getelementptr inbounds nuw i8, ptr %.val682684, i64 1
  br label %.loopexit583

.loopexit583:                                     ; preds = %.lr.ph685, %.loopexit583.loopexit.loopexit.split.loop.exit1292, %.loopexit583.loopexit.loopexit.split.loop.exit1289, %.loopexit583.loopexit.loopexit.split.loop.exit, %.lr.ph685.prol, %string_scan_simd_sse2.exit
  %i.yz = phi i8 [ %.pre816, %string_scan_simd_sse2.exit ], [ %i.xy, %.lr.ph685 ], [ %i.ye, %.loopexit583.loopexit.loopexit.split.loop.exit1292 ], [ %i.yk, %.loopexit583.loopexit.loopexit.split.loop.exit1289 ], [ %i.yq, %.loopexit583.loopexit.loopexit.split.loop.exit ], [ %i.xr, %.lr.ph685.prol ]
  %i.za = phi ptr [ %i.xm, %string_scan_simd_sse2.exit ], [ %.val682684, %.lr.ph685 ], [ %i.yy, %.loopexit583.loopexit.loopexit.split.loop.exit1292 ], [ %i.yx, %.loopexit583.loopexit.loopexit.split.loop.exit1289 ], [ %i.yw, %.loopexit583.loopexit.loopexit.split.loop.exit ], [ %.val682684.prol, %.lr.ph685.prol ]
  %i.zb = icmp eq i8 %i.yz, 34
  br i1 %i.zb, label %bb.ef, label %bb.ej, !prof !24

bb.ef:                                            ; preds = %.loopexit583
  %i.zc = call fastcc i64 @json_string_fastpath(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.wx, ptr noundef nonnull %i.za, i1 noundef zeroext true) ; 2 uses
  %i.zd = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 1
  store ptr %i.ze, ptr %i.n, align 8, !tbaa !56
  %.val300 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.zc, ptr %i.a, align 8, !tbaa !10
  %.not.i434 = icmp eq i64 %.val300, 0
  br i1 %.not.i434, label %bb.eh, label %bb.eg, !prof !24

bb.eg:                                            ; preds = %bb.ef
  %i.zf = call i64 @rb_proc_call_with_block(i64 noundef %.val300, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 2 uses
  store i64 %i.zf, ptr %i.a, align 8, !tbaa !10
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.zg = phi i64 [ %i.zf, %bb.eg ], [ %i.zc, %bb.ef ]
  %i.zh = load ptr, ptr %i.qm, align 8, !tbaa !58 ; 4 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !50 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !49
  %.not.i.i435 = icmp slt i64 %i.zj, %i.zl
  br i1 %.not.i.i435, label %json_push_value.exit439, label %bb.ei, !prof !24

bb.ei:                                            ; preds = %bb.eh
  %i.zm = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.zh, ptr noundef nonnull %0, ptr noundef nonnull %i.qm) ; 2 uses
  %.phi.trans.insert.i.i436 = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %.pre.i.i437 = load i64, ptr %.phi.trans.insert.i.i436, align 8, !tbaa !50
  br label %json_push_value.exit439

json_push_value.exit439:                          ; preds = %bb.eh, %bb.ei
  %i.zn = phi i64 [ %.pre.i.i437, %bb.ei ], [ %i.zj, %bb.eh ]
  %.0.i.i438 = phi ptr [ %i.zm, %bb.ei ], [ %i.zh, %bb.eh ] ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.0.i.i438, i64 24
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !51
  %i.zq = getelementptr inbounds nuw i8, ptr %.0.i.i438, i64 16 ; 2 uses
  %i.zr = getelementptr inbounds [8 x i8], ptr %i.zp, i64 %i.zn
  store i64 %i.zg, ptr %i.zr, align 8, !tbaa !10
  %i.zs = load i64, ptr %i.zq, align 8, !tbaa !50
  %i.zt = add nsw i64 %i.zs, 1
  store i64 %i.zt, ptr %i.zq, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %json_parse_string.exit

bb.ej:                                            ; preds = %.loopexit583
  %i.zu = call fastcc i64 @json_parse_escaped_string(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %i.wx) ; 0 uses
  br label %json_parse_string.exit

json_parse_string.exit:                           ; preds = %json_push_value.exit439, %bb.ej
  %.val244688 = load ptr, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  %.val245689 = load ptr, ptr %i.o, align 8, !tbaa !57 ; 2 uses
  %.not.i440690 = icmp ult ptr %.val244688, %.val245689
  br i1 %.not.i440690, label %peek.exit442, label %peek.exit445.thread, !prof !60

peek.exit442:                                     ; preds = %json_parse_string.exit, %.loopexit580
  %.val245818 = phi ptr [ %.val245, %.loopexit580 ], [ %.val245689, %json_parse_string.exit ] ; 6 uses
  %.val244691 = phi ptr [ %.val244, %.loopexit580 ], [ %.val244688, %json_parse_string.exit ] ; 5 uses
  %i.zv = load i8, ptr %.val244691, align 1, !tbaa !43
  switch i8 %i.zv, label %peek.exit445.thread [
    i8 32, label %bb.ek
    i8 10, label %bb.el
    i8 9, label %bb.en
    i8 13, label %bb.en
    i8 47, label %bb.eo
    i8 58, label %bb.ep
  ], !prof !84

bb.ek:                                            ; preds = %peek.exit442
  %i.zw = getelementptr inbounds nuw i8, ptr %.val244691, i64 1 ; 2 uses
  store ptr %i.zw, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit580

bb.el:                                            ; preds = %peek.exit442
  %i.zx = getelementptr inbounds nuw i8, ptr %.val244691, i64 1 ; 4 uses
  %i.zy = ptrtoint ptr %.val245818 to i64         ; 2 uses
  store ptr %i.zx, ptr %i.n, align 8, !tbaa !56
  %i.zz = ptrtoint ptr %i.zx to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = icmp ugt i64 %i.aaa, 8
  br i1 %i.aab, label %.lr.ph687, label %.loopexit580

.lr.ph687:                                        ; preds = %bb.el, %bb.em
  %storemerge570686 = phi ptr [ %i.aah, %bb.em ], [ %i.zx, %bb.el ] ; 3 uses
  %.0.copyload.i = load i64, ptr %storemerge570686, align 1 ; 2 uses
  %i.aac = icmp eq i64 %.0.copyload.i, 2314885530818453536
  br i1 %i.aac, label %bb.em, label %.thread549

.thread549:                                       ; preds = %.lr.ph687
  %i.aad = xor i64 %.0.copyload.i, 2314885530818453536
  %i.aae = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aad, i1 true)
  %i.aaf = lshr i64 %i.aae, 3
  %i.aag = getelementptr inbounds nuw i8, ptr %storemerge570686, i64 %i.aaf ; 2 uses
  store ptr %i.aag, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit580

bb.em:                                            ; preds = %.lr.ph687
  %i.aah = getelementptr inbounds nuw i8, ptr %storemerge570686, i64 8 ; 4 uses
  store ptr %i.aah, ptr %i.n, align 8, !tbaa !56
  %i.aai = ptrtoint ptr %i.aah to i64
end_hunk_2
begin_hunk_3_@rb_proc_call_with_block
; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rvalue_stack_grow(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !46
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 32, ptr noundef nonnull @JSON_Parser_rvalue_stack_type) #19 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = trunc i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  br i1 %i.g, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ] ; 7 uses
  store i64 %i.c, ptr %1, align 8, !tbaa !10
  store ptr %i.j, ptr %2, align 8, !tbaa !87
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(32) %0, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !49
  %i.m = shl i64 %i.l, 1                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !49
  %i.o = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.m, i64 noundef 8) #26 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !51
  store i32 0, ptr %i.j, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !50   ; 4 uses
  %i.u = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.u, label %bb.d, label %rbimpl_size_mul_or_raise.exit.i, !prof !67

bb.d:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.t) #21
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %RTYPEDDATA_GET_DATA.exit.i
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %rvalue_stack_spill.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  %i.v = shl nuw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %i.r, i64 %i.v, i1 false)
  br label %rvalue_stack_spill.exit

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49
  %i.y = shl nsw i64 %i.x, 1                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ab = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.aa, i64 noundef %i.y, i64 noundef 8) #27
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !51
  store i64 %i.y, ptr %i.w, align 8, !tbaa !49
  br label %rvalue_stack_spill.exit

rvalue_stack_spill.exit:                          ; preds = %bb.e, %rbimpl_size_mul_or_raise.exit.i, %bb.f
  %.0 = phi ptr [ %0, %bb.f ], [ %i.j, %rbimpl_size_mul_or_raise.exit.i ], [ %i.j, %bb.e ]
  ret ptr %.0
}

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal void @rvalue_stack_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.05 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ]  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  tail call void @rb_gc_mark(i64 noundef %i.g) #19
  %i.h = add nuw nsw i64 %.05, 1                  ; 2 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !50
  %i.j = icmp slt i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rvalue_stack_free(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  tail call void @ruby_xfree(ptr noundef %i.b) #19
  tail call void @ruby_xfree(ptr noundef nonnull %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i64 32, 25) i64 @rvalue_stack_memsize(ptr nofree noundef readonly captures(none) %0) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49
  %i.c = shl i64 %i.b, 3
  %i.d = add i64 %i.c, 32
  ret i64 %i.d
}

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_enc_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @rbimpl_intern_const(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #16 {
bb.a:
  %.pr = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not4 = icmp eq i64 %.pr, 0
  br i1 %.not4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull %1, i64 noundef %i.a) #19 ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !10
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ %.pr, %bb.a ], [ %i.b, %.lr.ph ]
  ret i64 %.lcssa
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @rb_long2num_inline(i64 noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = add i64 %0, 4611686018427387904
  %or.cond = icmp sgt i64 %i.a, -1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nsw i64 %0, 1
  %i.c = or disjoint i64 %i.b, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_int2big(i64 noundef %0) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.0
}

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @json_parse_number(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 28 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !43
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val42.i = load ptr, ptr %i.e, align 8, !tbaa !57 ; 11 uses
  %i.f = ptrtoint ptr %.val42.i to i64            ; 6 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp ugt i64 %i.h, 7
  br i1 %i.i, label %.lr.ph, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %bb.a
  %.1139.lcssa = phi i64 [ 0, %bb.a ], [ %i.cg, %bb.e ] ; 2 uses
  %.promoted54.i.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.ch, %bb.e ] ; 4 uses
  %.lcssa172 = phi i64 [ %i.g, %bb.a ], [ %i.ci, %bb.e ]
  %.lcssa170 = phi i64 [ %i.h, %bb.a ], [ %i.cj, %bb.e ]
  %.not.i56.i = icmp ult ptr %.promoted54.i.lcssa, %.val42.i
  br i1 %.not.i56.i, label %peek.exit.preheader.i, label %json_parse_digits.exit, !prof !60

peek.exit.preheader.i:                            ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %.promoted54.i.lcssa, i64 %.lcssa170
  br label %peek.exit.i

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.promoted54.i178 = phi ptr [ %i.ch, %bb.e ], [ %i.c, %bb.a ] ; 4 uses
  %.1139177 = phi i64 [ %i.cg, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %.0.copyload.i = load i64, ptr %.promoted54.i178, align 1 ; 4 uses
  %i.j = and i64 %.0.copyload.i, -1085102592571150096
  %i.k = add i64 %.0.copyload.i, 434041037028460038
  %i.l = lshr i64 %i.k, 4
  %i.m = and i64 %i.l, 1085102592571150095
  %i.n = or disjoint i64 %i.m, %i.j               ; 2 uses
  %i.o = icmp eq i64 %i.n, 3689348814741910323
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = xor i64 %i.n, 3689348814741910323
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.p, i1 true) ; 2 uses
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = lshr i32 %i.r, 3                         ; 2 uses
  %i.t = icmp samesign ugt i64 %i.q, 31
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = mul i64 %.1139177, 10000
  %i.v = trunc i64 %.0.copyload.i to i32
  %i.w = add i32 %i.v, -808464432                 ; 2 uses
  %i.x = mul i32 %i.w, 10
  %i.y = lshr i32 %i.w, 8
  %i.z = add i32 %i.x, %i.y                       ; 2 uses
  %i.aa = and i32 %i.z, 255
  %i.ab = mul nuw nsw i32 %i.aa, 100
  %i.ac = lshr i32 %i.z, 16
  %i.ad = and i32 %i.ac, 255
  %i.ae = add nuw nsw i32 %i.ab, %i.ad
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add i64 %i.u, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted54.i178, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !56
  %i.ai = add nsw i32 %i.s, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.4142 = phi i64 [ %i.ag, %bb.c ], [ %.1139177, %bb.b ] ; 3 uses
  %.promoted4853.i = phi ptr [ %i.ah, %bb.c ], [ %.promoted54.i178, %bb.b ] ; 3 uses
  %.033.i = phi i32 [ %i.ai, %bb.c ], [ %i.s, %bb.b ] ; 5 uses
  %.not3946.i = icmp eq i32 %.033.i, 0
  br i1 %.not3946.i, label %.loopexit.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i32 %.033.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.aj = phi ptr [ %i.ar, %.lr.ph.i.prol ], [ %.promoted4853.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.ak = phi i64 [ %i.ap, %.lr.ph.i.prol ], [ %.4142, %.lr.ph.i.preheader ]
  %.13447.i.prol = phi i32 [ %i.aq, %.lr.ph.i.prol ], [ %.033.i, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.al = mul i64 %i.ak, 10
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !43
  %i.an = sext i8 %i.am to i64
  %i.ao = add i64 %i.al, -48
  %i.ap = add i64 %i.ao, %i.an                    ; 3 uses
  %i.aq = add nsw i32 %.13447.i.prol, -1          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 4 uses
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !56
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !88

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa346.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.ap, %.lr.ph.i.prol ]
  %.lcssa345.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %.promoted4853.i, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %.unr356 = phi i64 [ %.4142, %.lr.ph.i.preheader ], [ %i.ap, %.lr.ph.i.prol ]
  %.13447.i.unr = phi i32 [ %.033.i, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
  %i.as = icmp ult i32 %.033.i, 4
  br i1 %i.as, label %.loopexit.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.at = phi ptr [ %i.bt, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.au = phi i64 [ %i.br, %.lr.ph.i ], [ %.unr356, %.lr.ph.i.prol.loopexit ]
  %.13447.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %.13447.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.av = mul i64 %i.au, 10
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !43
  %i.ax = sext i8 %i.aw to i64
  %i.ay = add i64 %i.av, -48
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !56
  %i.bb = mul i64 %i.az, 10
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !43
  %i.bd = sext i8 %i.bc to i64
  %i.be = add i64 %i.bb, -48
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 2 uses
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !56
  %i.bh = mul i64 %i.bf, 10
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !43
  %i.bj = sext i8 %i.bi to i64
  %i.bk = add i64 %i.bh, -48
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 3 ; 2 uses
  store ptr %i.bm, ptr %i.b, align 8, !tbaa !56
  %i.bn = mul i64 %i.bl, 10
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !43
  %i.bp = sext i8 %i.bo to i64
  %i.bq = add i64 %i.bn, -48
  %i.br = add i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = add nsw i32 %.13447.i, -4               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 3 uses
  store ptr %i.bt, ptr %i.b, align 8, !tbaa !56
  %.not39.i.3 = icmp eq i32 %i.bs, 0
  br i1 %.not39.i.3, label %.loopexit.loopexit.i, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.bu = mul i64 %.1139177, 100000000
  %i.bv = add i64 %.0.copyload.i, -3472328296227680304 ; 2 uses
  %i.bw = mul i64 %i.bv, 10
  %i.bx = lshr i64 %i.bv, 8
  %i.by = add i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = and i64 %i.by, 1095216660735
  %i.ca = mul i64 %i.bz, 4294967296000100
  %i.cb = lshr i64 %i.by, 16
  %i.cc = and i64 %i.cb, 1095216660735
  %i.cd = mul i64 %i.cc, 42949672960001
  %i.ce = add i64 %i.cd, %i.ca
  %i.cf = lshr i64 %i.ce, 32
  %i.cg = add i64 %i.cf, %i.bu                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.promoted54.i178, i64 8 ; 4 uses
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !56
  %i.ci = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cj = sub i64 %i.f, %i.ci                     ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, 7
  br i1 %i.ck, label %.lr.ph, label %.preheader.i

peek.exit.i:                                      ; preds = %bb.f, %peek.exit.preheader.i
  %.2140 = phi i64 [ %.1139.lcssa, %peek.exit.preheader.i ], [ %i.cr, %bb.f ] ; 2 uses
  %.val5557.i = phi ptr [ %.promoted54.i.lcssa, %peek.exit.preheader.i ], [ %i.cs, %bb.f ] ; 4 uses
  %i.cl = load i8, ptr %.val5557.i, align 1, !tbaa !43
  %i.cm = sext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48                  ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 9
  br i1 %i.co, label %peek.exit.thread.loopexit.i, label %bb.f

bb.f:                                             ; preds = %peek.exit.i
  %i.cp = mul i64 %.2140, 10
  %i.cq = zext nneg i32 %i.cn to i64
  %i.cr = add i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val5557.i, i64 1 ; 4 uses
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !56
  %exitcond.not.i = icmp eq ptr %i.cs, %.val42.i
  br i1 %exitcond.not.i, label %peek.exit.thread.loopexit.i, label %peek.exit.i, !prof !89

peek.exit.thread.loopexit.i:                      ; preds = %bb.f, %peek.exit.i
  %.val60231 = phi ptr [ %.val5557.i, %peek.exit.i ], [ %i.cs, %bb.f ]
  %.3141 = phi i64 [ %.2140, %peek.exit.i ], [ %i.cr, %bb.f ]
  %.val.lcssa.ph.i = phi ptr [ %.val5557.i, %peek.exit.i ], [ %scevgep.i, %bb.f ]
  %.pre.i = ptrtoint ptr %.val.lcssa.ph.i to i64
  br label %json_parse_digits.exit

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.5143 = phi i64 [ %.4142, %bb.d ], [ %.lcssa346.unr, %.lr.ph.i.prol.loopexit ], [ %i.br, %.lr.ph.i ]
  %.promoted4852.i = phi ptr [ %.promoted4853.i, %bb.d ], [ %.lcssa345.unr, %.lr.ph.i.prol.loopexit ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %4 = ptrtoint ptr %.promoted4852.i to i64
  br label %json_parse_digits.exit

json_parse_digits.exit:                           ; preds = %.preheader.i, %peek.exit.thread.loopexit.i, %.loopexit.loopexit.i
  %.val60 = phi ptr [ %.promoted4852.i, %.loopexit.loopexit.i ], [ %.val60231, %peek.exit.thread.loopexit.i ], [ %.promoted54.i.lcssa, %.preheader.i ] ; 5 uses
  %.6 = phi i64 [ %.5143, %.loopexit.loopexit.i ], [ %.3141, %peek.exit.thread.loopexit.i ], [ %.1139.lcssa, %.preheader.i ] ; 4 uses
  %.sink74.i = phi i64 [ %4, %.loopexit.loopexit.i ], [ %.pre.i, %peek.exit.thread.loopexit.i ], [ %.lcssa172, %.preheader.i ]
  %i.ct = sub i64 %.sink74.i, %i.g
  %i.cu = trunc i64 %i.ct to i32                  ; 6 uses
  %i.cv = icmp eq i8 %i.d, 48
  %i.cw = icmp sgt i32 %i.cu, 1
  %or.cond = select i1 %i.cv, i1 %i.cw, i1 false, !prof !90
  %i.cx = icmp eq i32 %i.cu, 0
  %i.cy = select i1 %2, i1 %i.cx, i1 false
  %or.cond56 = select i1 %or.cond, i1 true, i1 %i.cy, !prof !91
  br i1 %or.cond56, label %.critedge, label %bb.g, !prof !91

.critedge:                                        ; preds = %json_parse_digits.exit
  tail call fastcc void @raise_parse_error_at(ptr noundef nonnull @.str.50, ptr noundef %0, ptr noundef %3) #24
  unreachable

bb.g:                                             ; preds = %json_parse_digits.exit
  %.not.i = icmp ult ptr %.val60, %.val42.i
  br i1 %.not.i, label %peek.exit, label %peek.exit.thread, !prof !24

peek.exit:                                        ; preds = %bb.g
  %i.cz = load i8, ptr %.val60, align 1, !tbaa !43
  %.not149 = icmp eq i8 %i.cz, 46
  br i1 %.not149, label %bb.h, label %peek.exit.thread

bb.h:                                             ; preds = %peek.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.val60, i64 1 ; 4 uses
  store ptr %i.da, ptr %i.b, align 8, !tbaa !56
  %i.db = ptrtoint ptr %i.da to i64               ; 3 uses
  %i.dc = sub i64 %i.f, %i.db                     ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, 7
  br i1 %i.dd, label %.lr.ph184, label %.preheader.i64

.preheader.i64:                                   ; preds = %bb.l, %bb.h
  %.7.lcssa = phi i64 [ %.6, %bb.h ], [ %i.gb, %bb.l ] ; 2 uses
  %.promoted54.i63.lcssa = phi ptr [ %i.da, %bb.h ], [ %i.gc, %bb.l ] ; 4 uses
  %.lcssa163 = phi i64 [ %i.db, %bb.h ], [ %i.gd, %bb.l ]
  %.lcssa161 = phi i64 [ %i.dc, %bb.h ], [ %i.ge, %bb.l ]
  %.not.i56.i66 = icmp ult ptr %.promoted54.i63.lcssa, %.val42.i
  br i1 %.not.i56.i66, label %peek.exit.preheader.i68, label %json_parse_digits.exit86, !prof !60

peek.exit.preheader.i68:                          ; preds = %.preheader.i64
  %scevgep.i69 = getelementptr i8, ptr %.promoted54.i63.lcssa, i64 %.lcssa161
  br label %peek.exit.i70

.lr.ph184:                                        ; preds = %bb.h, %bb.l
  %.promoted54.i63183 = phi ptr [ %i.gc, %bb.l ], [ %i.da, %bb.h ] ; 4 uses
  %.7182 = phi i64 [ %i.gb, %bb.l ], [ %.6, %bb.h ] ; 3 uses
  %.0.copyload.i76 = load i64, ptr %.promoted54.i63183, align 1 ; 4 uses
  %i.de = and i64 %.0.copyload.i76, -1085102592571150096
  %i.df = add i64 %.0.copyload.i76, 434041037028460038
  %i.dg = lshr i64 %i.df, 4
  %i.dh = and i64 %i.dg, 1085102592571150095
  %i.di = or disjoint i64 %i.dh, %i.de            ; 2 uses
  %i.dj = icmp eq i64 %i.di, 3689348814741910323
  br i1 %i.dj, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph184
  %i.dk = xor i64 %i.di, 3689348814741910323
  %i.dl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dk, i1 true) ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = lshr i32 %i.dm, 3                       ; 2 uses
  %i.do = icmp samesign ugt i64 %i.dl, 31
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dp = mul i64 %.7182, 10000
  %i.dq = trunc i64 %.0.copyload.i76 to i32
  %i.dr = add i32 %i.dq, -808464432               ; 2 uses
  %i.ds = mul i32 %i.dr, 10
  %i.dt = lshr i32 %i.dr, 8
  %i.du = add i32 %i.ds, %i.dt                    ; 2 uses
  %i.dv = and i32 %i.du, 255
  %i.dw = mul nuw nsw i32 %i.dv, 100
  %i.dx = lshr i32 %i.du, 16
  %i.dy = and i32 %i.dx, 255
  %i.dz = add nuw nsw i32 %i.dw, %i.dy
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = add i64 %i.dp, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.promoted54.i63183, i64 4 ; 2 uses
  store ptr %i.ec, ptr %i.b, align 8, !tbaa !56
  %i.ed = add nsw i32 %i.dn, -4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.10 = phi i64 [ %i.eb, %bb.j ], [ %.7182, %bb.i ] ; 3 uses
  %.promoted4853.i77 = phi ptr [ %i.ec, %bb.j ], [ %.promoted54.i63183, %bb.i ] ; 3 uses
  %.033.i78 = phi i32 [ %i.ed, %bb.j ], [ %i.dn, %bb.i ] ; 5 uses
  %.not3946.i79 = icmp eq i32 %.033.i78, 0
  br i1 %.not3946.i79, label %.loopexit.loopexit.i84, label %.lr.ph.i80.preheader

.lr.ph.i80.preheader:                             ; preds = %bb.k
  %xtraiter357 = and i32 %.033.i78, 3             ; 2 uses
  %lcmp.mod358.not = icmp eq i32 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.i80.preheader, %.lr.ph.i80.prol
  %i.ee = phi ptr [ %i.em, %.lr.ph.i80.prol ], [ %.promoted4853.i77, %.lr.ph.i80.preheader ] ; 2 uses
  %i.ef = phi i64 [ %i.ek, %.lr.ph.i80.prol ], [ %.10, %.lr.ph.i80.preheader ]
  %.13447.i82.prol = phi i32 [ %i.el, %.lr.ph.i80.prol ], [ %.033.i78, %.lr.ph.i80.preheader ]
  %prol.iter359 = phi i32 [ %prol.iter359.next, %.lr.ph.i80.prol ], [ 0, %.lr.ph.i80.preheader ]
  %i.eg = mul i64 %i.ef, 10
  %i.eh = load i8, ptr %i.ee, align 1, !tbaa !43
  %i.ei = sext i8 %i.eh to i64
  %i.ej = add i64 %i.eg, -48
  %i.ek = add i64 %i.ej, %i.ei                    ; 3 uses
  %i.el = add nsw i32 %.13447.i82.prol, -1        ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 4 uses
  store ptr %i.em, ptr %i.b, align 8, !tbaa !56
  %prol.iter359.next = add i32 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i32 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol, !llvm.loop !92

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.i80.preheader
  %.lcssa335.unr = phi i64 [ poison, %.lr.ph.i80.preheader ], [ %i.ek, %.lr.ph.i80.prol ]
  %.lcssa334.unr = phi ptr [ poison, %.lr.ph.i80.preheader ], [ %i.em, %.lr.ph.i80.prol ]
  %.unr360 = phi ptr [ %.promoted4853.i77, %.lr.ph.i80.preheader ], [ %i.em, %.lr.ph.i80.prol ]
  %.unr361 = phi i64 [ %.10, %.lr.ph.i80.preheader ], [ %i.ek, %.lr.ph.i80.prol ]
  %.13447.i82.unr = phi i32 [ %.033.i78, %.lr.ph.i80.preheader ], [ %i.el, %.lr.ph.i80.prol ]
  %i.en = icmp ult i32 %.033.i78, 4
  br i1 %i.en, label %.loopexit.loopexit.i84, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %i.eo = phi ptr [ %i.fo, %.lr.ph.i80 ], [ %.unr360, %.lr.ph.i80.prol.loopexit ] ; 5 uses
  %i.ep = phi i64 [ %i.fm, %.lr.ph.i80 ], [ %.unr361, %.lr.ph.i80.prol.loopexit ]
  %.13447.i82 = phi i32 [ %i.fn, %.lr.ph.i80 ], [ %.13447.i82.unr, %.lr.ph.i80.prol.loopexit ]
  %i.eq = mul i64 %i.ep, 10
  %i.er = load i8, ptr %i.eo, align 1, !tbaa !43
  %i.es = sext i8 %i.er to i64
  %i.et = add i64 %i.eq, -48
  %i.eu = add i64 %i.et, %i.es
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  store ptr %i.ev, ptr %i.b, align 8, !tbaa !56
  %i.ew = mul i64 %i.eu, 10
  %i.ex = load i8, ptr %i.ev, align 1, !tbaa !43
  %i.ey = sext i8 %i.ex to i64
  %i.ez = add i64 %i.ew, -48
  %i.fa = add i64 %i.ez, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 2 ; 2 uses
  store ptr %i.fb, ptr %i.b, align 8, !tbaa !56
  %i.fc = mul i64 %i.fa, 10
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !43
  %i.fe = sext i8 %i.fd to i64
  %i.ff = add i64 %i.fc, -48
  %i.fg = add i64 %i.ff, %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eo, i64 3 ; 2 uses
  store ptr %i.fh, ptr %i.b, align 8, !tbaa !56
  %i.fi = mul i64 %i.fg, 10
  %i.fj = load i8, ptr %i.fh, align 1, !tbaa !43
  %i.fk = sext i8 %i.fj to i64
  %i.fl = add i64 %i.fi, -48
  %i.fm = add i64 %i.fl, %i.fk                    ; 2 uses
  %i.fn = add nsw i32 %.13447.i82, -4             ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 3 uses
  store ptr %i.fo, ptr %i.b, align 8, !tbaa !56
  %.not39.i83.3 = icmp eq i32 %i.fn, 0
  br i1 %.not39.i83.3, label %.loopexit.loopexit.i84, label %.lr.ph.i80

bb.l:                                             ; preds = %.lr.ph184
  %i.fp = mul i64 %.7182, 100000000
  %i.fq = add i64 %.0.copyload.i76, -3472328296227680304 ; 2 uses
  %i.fr = mul i64 %i.fq, 10
  %i.fs = lshr i64 %i.fq, 8
  %i.ft = add i64 %i.fr, %i.fs                    ; 2 uses
  %i.fu = and i64 %i.ft, 1095216660735
  %i.fv = mul i64 %i.fu, 4294967296000100
  %i.fw = lshr i64 %i.ft, 16
  %i.fx = and i64 %i.fw, 1095216660735
  %i.fy = mul i64 %i.fx, 42949672960001
  %i.fz = add i64 %i.fy, %i.fv
  %i.ga = lshr i64 %i.fz, 32
  %i.gb = add i64 %i.ga, %i.fp                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.promoted54.i63183, i64 8 ; 4 uses
  store ptr %i.gc, ptr %i.b, align 8, !tbaa !56
  %i.gd = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.ge = sub i64 %i.f, %i.gd                     ; 2 uses
  %i.gf = icmp ugt i64 %i.ge, 7
  br i1 %i.gf, label %.lr.ph184, label %.preheader.i64

peek.exit.i70:                                    ; preds = %bb.m, %peek.exit.preheader.i68
  %.8.a = phi i64 [ %.7.lcssa, %peek.exit.preheader.i68 ], [ %i.gm, %bb.m ] ; 2 uses
  %.val5557.i71 = phi ptr [ %.promoted54.i63.lcssa, %peek.exit.preheader.i68 ], [ %i.gn, %bb.m ] ; 4 uses
  %i.gg = load i8, ptr %.val5557.i71, align 1, !tbaa !43
  %i.gh = sext i8 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, -48                  ; 2 uses
  %i.gj = icmp ugt i32 %i.gi, 9
  br i1 %i.gj, label %peek.exit.thread.loopexit.i73, label %bb.m

bb.m:                                             ; preds = %peek.exit.i70
  %i.gk = mul i64 %.8.a, 10
  %i.gl = zext nneg i32 %i.gi to i64
  %i.gm = add i64 %i.gk, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val5557.i71, i64 1 ; 4 uses
  store ptr %i.gn, ptr %i.b, align 8, !tbaa !56
  %exitcond.not.i72 = icmp eq ptr %i.gn, %.val42.i
  br i1 %exitcond.not.i72, label %peek.exit.thread.loopexit.i73, label %peek.exit.i70, !prof !89

peek.exit.thread.loopexit.i73:                    ; preds = %bb.m, %peek.exit.i70
  %.val58234 = phi ptr [ %.val5557.i71, %peek.exit.i70 ], [ %i.gn, %bb.m ]
  %.9 = phi i64 [ %.8.a, %peek.exit.i70 ], [ %i.gm, %bb.m ]
  %.val.lcssa.ph.i74 = phi ptr [ %.val5557.i71, %peek.exit.i70 ], [ %scevgep.i69, %bb.m ]
  %.pre.i75 = ptrtoint ptr %.val.lcssa.ph.i74 to i64
  br label %json_parse_digits.exit86

.loopexit.loopexit.i84:                           ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80, %bb.k
  %.11 = phi i64 [ %.10, %bb.k ], [ %.lcssa335.unr, %.lr.ph.i80.prol.loopexit ], [ %i.fm, %.lr.ph.i80 ]
  %.promoted4852.i85 = phi ptr [ %.promoted4853.i77, %bb.k ], [ %.lcssa334.unr, %.lr.ph.i80.prol.loopexit ], [ %i.fo, %.lr.ph.i80 ] ; 2 uses
  %5 = ptrtoint ptr %.promoted4852.i85 to i64
  br label %json_parse_digits.exit86

json_parse_digits.exit86:                         ; preds = %.preheader.i64, %peek.exit.thread.loopexit.i73, %.loopexit.loopexit.i84
  %.val58233 = phi ptr [ %.promoted4852.i85, %.loopexit.loopexit.i84 ], [ %.val58234, %peek.exit.thread.loopexit.i73 ], [ %.promoted54.i63.lcssa, %.preheader.i64 ]
  %.12 = phi i64 [ %.11, %.loopexit.loopexit.i84 ], [ %.9, %peek.exit.thread.loopexit.i73 ], [ %.7.lcssa, %.preheader.i64 ]
  %.sink74.i67 = phi i64 [ %5, %.loopexit.loopexit.i84 ], [ %.pre.i75, %peek.exit.thread.loopexit.i73 ], [ %.lcssa163, %.preheader.i64 ]
  %i.go = sub i64 %.sink74.i67, %i.db
  %i.gp = trunc i64 %i.go to i32                  ; 2 uses
  %.not = icmp eq i32 %i.gp, 0
  br i1 %.not, label %bb.n, label %bb.o, !prof !67

bb.n:                                             ; preds = %json_parse_digits.exit86
  tail call fastcc void @raise_parse_error_at(ptr noundef nonnull @.str.50, ptr noundef %0, ptr noundef %3) #24
  unreachable

bb.o:                                             ; preds = %json_parse_digits.exit86
  %i.gq = add nsw i32 %i.gp, %i.cu
  br label %peek.exit.thread

peek.exit.thread:                                 ; preds = %bb.g, %bb.o, %peek.exit
  %i.gr = phi ptr [ %.val60, %peek.exit ], [ %.val58233, %bb.o ], [ %.val60, %bb.g ] ; 6 uses
  %i.gs = phi i1 [ true, %peek.exit ], [ false, %bb.o ], [ true, %bb.g ]
  %.0138 = phi i64 [ %.6, %peek.exit ], [ %.12, %bb.o ], [ %.6, %bb.g ] ; 12 uses
  %.053 = phi i32 [ -1, %peek.exit ], [ %i.cu, %bb.o ], [ -1, %bb.g ] ; 2 uses
  %.052 = phi i32 [ %i.cu, %peek.exit ], [ %i.gq, %bb.o ], [ %i.cu, %bb.g ] ; 4 uses
  %.not.i87 = icmp ult ptr %i.gr, %.val42.i
  br i1 %.not.i87, label %bb.p, label %peek.exit89, !prof !24

bb.p:                                             ; preds = %peek.exit.thread
  %i.gt = load i8, ptr %i.gr, align 1, !tbaa !43
  %i.gu = sext i8 %i.gt to i32
  br label %peek.exit89

peek.exit89:                                      ; preds = %peek.exit.thread, %bb.p
  %.0.i88 = phi i32 [ %i.gu, %bb.p ], [ 0, %peek.exit.thread ] ; 3 uses
  %i.gv = add nsw i32 %.0.i88, -91
  %i.gw = icmp ult i32 %i.gv, -26
  %i.gx = or i32 %.0.i88, 32
  %i.gy = select i1 %i.gw, i32 %.0.i88, i32 %i.gx
  %i.gz = icmp eq i32 %i.gy, 101
  br i1 %i.gz, label %bb.q, label %bb.y

bb.q:                                             ; preds = %peek.exit89
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 1 ; 5 uses
  store ptr %i.ha, ptr %i.b, align 8, !tbaa !56
  %.not.i90 = icmp ult ptr %i.ha, %.val42.i
  br i1 %.not.i90, label %peek.exit92, label %peek.exit92.thread, !prof !24

peek.exit92:                                      ; preds = %bb.q
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !43  ; 2 uses
  switch i8 %i.hb, label %peek.exit92.thread [
    i8 45, label %bb.r
    i8 43, label %bb.r
  ]

bb.r:                                             ; preds = %peek.exit92, %peek.exit92
  %i.hc = icmp eq i8 %i.hb, 45
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 2 ; 2 uses
  store ptr %i.hd, ptr %i.b, align 8, !tbaa !56
  br label %peek.exit92.thread

peek.exit92.thread:                               ; preds = %bb.q, %peek.exit92, %bb.r
  %i.he = phi ptr [ %i.hd, %bb.r ], [ %i.ha, %peek.exit92 ], [ %i.ha, %bb.q ] ; 3 uses
  %.049 = phi i1 [ %i.hc, %bb.r ], [ false, %peek.exit92 ], [ false, %bb.q ]
  %i.hf = ptrtoint ptr %i.he to i64               ; 3 uses
  %i.hg = sub i64 %i.f, %i.hf                     ; 2 uses
  %i.hh = icmp ugt i64 %i.hg, 7
  br i1 %i.hh, label %.lr.ph191, label %.preheader.i95

.preheader.i95:                                   ; preds = %bb.v, %peek.exit92.thread
  %.0136.lcssa = phi i64 [ 0, %peek.exit92.thread ], [ %i.kf, %bb.v ] ; 2 uses
  %.promoted54.i94.lcssa = phi ptr [ %i.he, %peek.exit92.thread ], [ %i.kg, %bb.v ] ; 4 uses
  %.lcssa154 = phi i64 [ %i.hf, %peek.exit92.thread ], [ %i.kh, %bb.v ]
  %.lcssa152 = phi i64 [ %i.hg, %peek.exit92.thread ], [ %i.ki, %bb.v ]
  %.not.i56.i97 = icmp ult ptr %.promoted54.i94.lcssa, %.val42.i
  br i1 %.not.i56.i97, label %peek.exit.preheader.i99, label %json_parse_digits.exit117, !prof !60

peek.exit.preheader.i99:                          ; preds = %.preheader.i95
  %scevgep.i100 = getelementptr i8, ptr %.promoted54.i94.lcssa, i64 %.lcssa152
  br label %peek.exit.i101

.lr.ph191:                                        ; preds = %peek.exit92.thread, %bb.v
  %.promoted54.i94190 = phi ptr [ %i.kg, %bb.v ], [ %i.he, %peek.exit92.thread ] ; 4 uses
  %.0136189 = phi i64 [ %i.kf, %bb.v ], [ 0, %peek.exit92.thread ] ; 3 uses
  %.0.copyload.i107 = load i64, ptr %.promoted54.i94190, align 1 ; 4 uses
  %i.hi = and i64 %.0.copyload.i107, -1085102592571150096
  %i.hj = add i64 %.0.copyload.i107, 434041037028460038
  %i.hk = lshr i64 %i.hj, 4
  %i.hl = and i64 %i.hk, 1085102592571150095
  %i.hm = or disjoint i64 %i.hl, %i.hi            ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 3689348814741910323
  br i1 %i.hn, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph191
  %i.ho = xor i64 %i.hm, 3689348814741910323
  %i.hp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ho, i1 true) ; 2 uses
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = lshr i32 %i.hq, 3                       ; 2 uses
  %i.hs = icmp samesign ugt i64 %i.hp, 31
  br i1 %i.hs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ht = mul i64 %.0136189, 10000
  %i.hu = trunc i64 %.0.copyload.i107 to i32
  %i.hv = add i32 %i.hu, -808464432               ; 2 uses
  %i.hw = mul i32 %i.hv, 10
  %i.hx = lshr i32 %i.hv, 8
  %i.hy = add i32 %i.hw, %i.hx                    ; 2 uses
  %i.hz = and i32 %i.hy, 255
  %i.ia = mul nuw nsw i32 %i.hz, 100
  %i.ib = lshr i32 %i.hy, 16
  %i.ic = and i32 %i.ib, 255
  %i.id = add nuw nsw i32 %i.ia, %i.ic
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = add i64 %i.ht, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %.promoted54.i94190, i64 4 ; 2 uses
  store ptr %i.ig, ptr %i.b, align 8, !tbaa !56
  %i.ih = add nsw i32 %i.hr, -4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.a = phi i64 [ %i.if, %bb.t ], [ %.0136189, %bb.s ] ; 3 uses
  %.promoted4853.i108 = phi ptr [ %i.ig, %bb.t ], [ %.promoted54.i94190, %bb.s ] ; 3 uses
  %.033.i109 = phi i32 [ %i.ih, %bb.t ], [ %i.hr, %bb.s ] ; 5 uses
  %.not3946.i110 = icmp eq i32 %.033.i109, 0
  br i1 %.not3946.i110, label %.loopexit.loopexit.i115, label %.lr.ph.i111.preheader

.lr.ph.i111.preheader:                            ; preds = %bb.u
  %xtraiter362 = and i32 %.033.i109, 3            ; 2 uses
  %lcmp.mod363.not = icmp eq i32 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %.lr.ph.i111.prol.loopexit, label %.lr.ph.i111.prol

.lr.ph.i111.prol:                                 ; preds = %.lr.ph.i111.preheader, %.lr.ph.i111.prol
  %i.ii = phi ptr [ %i.iq, %.lr.ph.i111.prol ], [ %.promoted4853.i108, %.lr.ph.i111.preheader ] ; 2 uses
  %i.ij = phi i64 [ %i.io, %.lr.ph.i111.prol ], [ %.3.a, %.lr.ph.i111.preheader ]
  %.13447.i113.prol = phi i32 [ %i.ip, %.lr.ph.i111.prol ], [ %.033.i109, %.lr.ph.i111.preheader ]
  %prol.iter364 = phi i32 [ %prol.iter364.next, %.lr.ph.i111.prol ], [ 0, %.lr.ph.i111.preheader ]
  %i.ik = mul i64 %i.ij, 10
  %i.il = load i8, ptr %i.ii, align 1, !tbaa !43
  %i.im = sext i8 %i.il to i64
  %i.in = add i64 %i.ik, -48
  %i.io = add i64 %i.in, %i.im                    ; 3 uses
  %i.ip = add nsw i32 %.13447.i113.prol, -1       ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 4 uses
  store ptr %i.iq, ptr %i.b, align 8, !tbaa !56
  %prol.iter364.next = add i32 %prol.iter364, 1   ; 2 uses
  %prol.iter364.cmp.not = icmp eq i32 %prol.iter364.next, %xtraiter362
  br i1 %prol.iter364.cmp.not, label %.lr.ph.i111.prol.loopexit, label %.lr.ph.i111.prol, !llvm.loop !93

.lr.ph.i111.prol.loopexit:                        ; preds = %.lr.ph.i111.prol, %.lr.ph.i111.preheader
  %.lcssa324.unr = phi i64 [ poison, %.lr.ph.i111.preheader ], [ %i.io, %.lr.ph.i111.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i111.preheader ], [ %i.iq, %.lr.ph.i111.prol ]
  %.unr365 = phi ptr [ %.promoted4853.i108, %.lr.ph.i111.preheader ], [ %i.iq, %.lr.ph.i111.prol ]
  %.unr366 = phi i64 [ %.3.a, %.lr.ph.i111.preheader ], [ %i.io, %.lr.ph.i111.prol ]
  %.13447.i113.unr = phi i32 [ %.033.i109, %.lr.ph.i111.preheader ], [ %i.ip, %.lr.ph.i111.prol ]
  %i.ir = icmp ult i32 %.033.i109, 4
  br i1 %i.ir, label %.loopexit.loopexit.i115, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %.lr.ph.i111.prol.loopexit, %.lr.ph.i111
  %i.is = phi ptr [ %i.js, %.lr.ph.i111 ], [ %.unr365, %.lr.ph.i111.prol.loopexit ] ; 5 uses
  %i.it = phi i64 [ %i.jq, %.lr.ph.i111 ], [ %.unr366, %.lr.ph.i111.prol.loopexit ]
  %.13447.i113 = phi i32 [ %i.jr, %.lr.ph.i111 ], [ %.13447.i113.unr, %.lr.ph.i111.prol.loopexit ]
  %i.iu = mul i64 %i.it, 10
  %i.iv = load i8, ptr %i.is, align 1, !tbaa !43
  %i.iw = sext i8 %i.iv to i64
  %i.ix = add i64 %i.iu, -48
  %i.iy = add i64 %i.ix, %i.iw
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 2 uses
  store ptr %i.iz, ptr %i.b, align 8, !tbaa !56
  %i.ja = mul i64 %i.iy, 10
  %i.jb = load i8, ptr %i.iz, align 1, !tbaa !43
  %i.jc = sext i8 %i.jb to i64
  %i.jd = add i64 %i.ja, -48
  %i.je = add i64 %i.jd, %i.jc
  %i.jf = getelementptr inbounds nuw i8, ptr %i.is, i64 2 ; 2 uses
  store ptr %i.jf, ptr %i.b, align 8, !tbaa !56
  %i.jg = mul i64 %i.je, 10
  %i.jh = load i8, ptr %i.jf, align 1, !tbaa !43
  %i.ji = sext i8 %i.jh to i64
  %i.jj = add i64 %i.jg, -48
  %i.jk = add i64 %i.jj, %i.ji
  %i.jl = getelementptr inbounds nuw i8, ptr %i.is, i64 3 ; 2 uses
  store ptr %i.jl, ptr %i.b, align 8, !tbaa !56
  %i.jm = mul i64 %i.jk, 10
  %i.jn = load i8, ptr %i.jl, align 1, !tbaa !43
  %i.jo = sext i8 %i.jn to i64
  %i.jp = add i64 %i.jm, -48
  %i.jq = add i64 %i.jp, %i.jo                    ; 2 uses
  %i.jr = add nsw i32 %.13447.i113, -4            ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.is, i64 4 ; 3 uses
  store ptr %i.js, ptr %i.b, align 8, !tbaa !56
  %.not39.i114.3 = icmp eq i32 %i.jr, 0
  br i1 %.not39.i114.3, label %.loopexit.loopexit.i115, label %.lr.ph.i111

bb.v:                                             ; preds = %.lr.ph191
  %i.jt = mul i64 %.0136189, 100000000
  %i.ju = add i64 %.0.copyload.i107, -3472328296227680304 ; 2 uses
  %i.jv = mul i64 %i.ju, 10
  %i.jw = lshr i64 %i.ju, 8
  %i.jx = add i64 %i.jv, %i.jw                    ; 2 uses
  %i.jy = and i64 %i.jx, 1095216660735
  %i.jz = mul i64 %i.jy, 4294967296000100
  %i.ka = lshr i64 %i.jx, 16
  %i.kb = and i64 %i.ka, 1095216660735
  %i.kc = mul i64 %i.kb, 42949672960001
  %i.kd = add i64 %i.kc, %i.jz
  %i.ke = lshr i64 %i.kd, 32
  %i.kf = add i64 %i.ke, %i.jt                    ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.promoted54.i94190, i64 8 ; 4 uses
  store ptr %i.kg, ptr %i.b, align 8, !tbaa !56
  %i.kh = ptrtoint ptr %i.kg to i64               ; 2 uses
  %i.ki = sub i64 %i.f, %i.kh                     ; 2 uses
  %i.kj = icmp ugt i64 %i.ki, 7
  br i1 %i.kj, label %.lr.ph191, label %.preheader.i95

peek.exit.i101:                                   ; preds = %bb.w, %peek.exit.preheader.i99
  %.1137 = phi i64 [ %.0136.lcssa, %peek.exit.preheader.i99 ], [ %i.kq, %bb.w ] ; 2 uses
  %.val5557.i102 = phi ptr [ %.promoted54.i94.lcssa, %peek.exit.preheader.i99 ], [ %i.kr, %bb.w ] ; 4 uses
  %i.kk = load i8, ptr %.val5557.i102, align 1, !tbaa !43
  %i.kl = sext i8 %i.kk to i32
  %i.km = add nsw i32 %i.kl, -48                  ; 2 uses
  %i.kn = icmp ugt i32 %i.km, 9
  br i1 %i.kn, label %peek.exit.thread.loopexit.i104, label %bb.w

bb.w:                                             ; preds = %peek.exit.i101
  %i.ko = mul i64 %.1137, 10
  %i.kp = zext nneg i32 %i.km to i64
  %i.kq = add i64 %i.ko, %i.kp                    ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.val5557.i102, i64 1 ; 3 uses
  store ptr %i.kr, ptr %i.b, align 8, !tbaa !56
  %exitcond.not.i103 = icmp eq ptr %i.kr, %.val42.i
  br i1 %exitcond.not.i103, label %peek.exit.thread.loopexit.i104, label %peek.exit.i101, !prof !89

peek.exit.thread.loopexit.i104:                   ; preds = %bb.w, %peek.exit.i101
  %6 = phi ptr [ %.val5557.i102, %peek.exit.i101 ], [ %.val42.i, %bb.w ]
  %.2 = phi i64 [ %.1137, %peek.exit.i101 ], [ %i.kq, %bb.w ]
  %.val.lcssa.ph.i105 = phi ptr [ %.val5557.i102, %peek.exit.i101 ], [ %scevgep.i100, %bb.w ]
  %.pre.i106 = ptrtoint ptr %.val.lcssa.ph.i105 to i64
  br label %json_parse_digits.exit117

.loopexit.loopexit.i115:                          ; preds = %.lr.ph.i111.prol.loopexit, %.lr.ph.i111, %bb.u
  %.4 = phi i64 [ %.3.a, %bb.u ], [ %.lcssa324.unr, %.lr.ph.i111.prol.loopexit ], [ %i.jq, %.lr.ph.i111 ]
  %.promoted4852.i116 = phi ptr [ %.promoted4853.i108, %bb.u ], [ %.lcssa.unr, %.lr.ph.i111.prol.loopexit ], [ %i.js, %.lr.ph.i111 ] ; 2 uses
  %7 = ptrtoint ptr %.promoted4852.i116 to i64
  br label %json_parse_digits.exit117

json_parse_digits.exit117:                        ; preds = %.preheader.i95, %peek.exit.thread.loopexit.i104, %.loopexit.loopexit.i115
  %8 = phi ptr [ %.promoted4852.i116, %.loopexit.loopexit.i115 ], [ %6, %peek.exit.thread.loopexit.i104 ], [ %.promoted54.i94.lcssa, %.preheader.i95 ]
  %.5 = phi i64 [ %.4, %.loopexit.loopexit.i115 ], [ %.2, %peek.exit.thread.loopexit.i104 ], [ %.0136.lcssa, %.preheader.i95 ]
  %.sink74.i98 = phi i64 [ %7, %.loopexit.loopexit.i115 ], [ %.pre.i106, %peek.exit.thread.loopexit.i104 ], [ %.lcssa154, %.preheader.i95 ]
  %i.ks = sub i64 %.sink74.i98, %i.hf
  %i.kt = and i64 %i.ks, 4294967295
  %.not54 = icmp eq i64 %i.kt, 0
  br i1 %.not54, label %bb.x, label %.thread, !prof !67

bb.x:                                             ; preds = %json_parse_digits.exit117
  tail call fastcc void @raise_parse_error_at(ptr noundef nonnull @.str.50, ptr noundef %0, ptr noundef %3) #24
  unreachable

.thread:                                          ; preds = %json_parse_digits.exit117
  %i.ku = trunc i64 %.5 to i32                    ; 2 uses
  %i.kv = sub nsw i32 0, %i.ku
  %i.kw = select i1 %.049, i32 %i.kv, i32 %i.ku
  br label %bb.ai

bb.y:                                             ; preds = %peek.exit89
  br i1 %i.gs, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.kx = icmp slt i32 %.052, 18
  br i1 %i.kx, label %bb.aa, label %bb.ah, !prof !24

bb.aa:                                            ; preds = %bb.z
  br i1 %2, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ky = sub nsw i64 0, %.0138                   ; 2 uses
  %notsub.i = add i64 %.0138, -4611686018427387905
  %or.cond.i.i = icmp slt i64 %notsub.i, 0
  br i1 %or.cond.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kz = shl nsw i64 %i.ky, 1
  %i.la = or disjoint i64 %i.kz, 1
  br label %json_decode_integer.exit

bb.ad:                                            ; preds = %bb.ab
  %i.lb = tail call i64 @rb_ll2inum(i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.ky) #19
  br label %json_decode_integer.exit

bb.ae:                                            ; preds = %bb.aa
  %i.lc = icmp ult i64 %.0138, 4611686018427387904
  br i1 %i.lc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ld = shl nuw nsw i64 %.0138, 1
  %i.le = or disjoint i64 %i.ld, 1
  br label %json_decode_integer.exit

bb.ag:                                            ; preds = %bb.ae
  %i.lf = tail call i64 @rb_ull2inum(i64 noundef %.0138) #19
  br label %json_decode_integer.exit

bb.ah:                                            ; preds = %bb.z
  %i.lg = ptrtoint ptr %i.gr to i64
  %i.lh = ptrtoint ptr %3 to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = tail call fastcc i64 @json_decode_large_integer(ptr noundef %3, i64 noundef %i.li)
  br label %json_decode_integer.exit

bb.ai:                                            ; preds = %.thread, %bb.y
  %i.lk = phi ptr [ %8, %.thread ], [ %i.gr, %bb.y ] ; 2 uses
  %.050148 = phi i32 [ %i.kw, %.thread ], [ 0, %bb.y ]
  %.neg = sub i32 %.053, %.052
  %i.ll = icmp slt i32 %.053, 0
  %i.lm = select i1 %i.ll, i32 0, i32 %.neg
  %.151 = add i32 %.050148, %i.lm                 ; 11 uses
  %i.ln = sub i32 0, %.151                        ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !34
  %.not.i119 = icmp eq i64 %i.lp, 0
  br i1 %.not.i119, label %bb.ak, label %bb.aj, !prof !24

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.lq = ptrtoint ptr %i.lk to i64
  %i.lr = ptrtoint ptr %3 to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = tail call i64 @rb_str_new(ptr noundef %3, i64 noundef %i.ls) #19
  store i64 %i.lt, ptr %i.a, align 8, !tbaa !10
  %i.lu = load i64, ptr %i.lo, align 8, !tbaa !34
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !42
  %i.lx = call i64 @rb_funcallv(i64 noundef %i.lu, i64 noundef %i.lw, i32 noundef 1, ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %json_decode_integer.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ly = icmp sgt i32 %.052, 17
  %i.lz = add nsw i32 %.151, %.052                ; 2 uses
  %i.ma = icmp slt i32 %i.lz, -307
  %i.mb = select i1 %i.ly, i1 true, i1 %i.ma, !prof !67
  br i1 %i.mb, label %bb.al, label %bb.am, !prof !67

bb.al:                                            ; preds = %bb.ak
  %i.mc = ptrtoint ptr %i.lk to i64
  %i.md = ptrtoint ptr %3 to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = tail call fastcc i64 @json_decode_large_float(ptr noundef %3, i64 noundef %i.me)
  br label %json_decode_integer.exit

bb.am:                                            ; preds = %bb.ak
  %i.mg = icmp eq i64 %.0138, 0
  br i1 %i.mg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mh = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %ryu_s2d_from_parts.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.mi = icmp sgt i32 %i.lz, 309
  br i1 %i.mi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mj = select i1 %2, double -inf, double +inf
  br label %ryu_s2d_from_parts.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.mk = icmp sgt i32 %.151, -1
  br i1 %i.mk, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ml = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0138, i1 true)
  %i.mm = trunc nuw nsw i64 %i.ml to i32
  %i.mn = mul i32 %.151, 1217359
  %i.mo = lshr i32 %i.mn, 19                      ; 2 uses
  %reass.sub196 = sub nsw i32 %.151, %i.mm
  %i.mp = add i32 %reass.sub196, 10
  %i.mq = add i32 %i.mp, %i.mo                    ; 5 uses
  %i.mr = sub nsw i32 %i.mq, %.151                ; 3 uses
  %i.ms = zext nneg i32 %.151 to i64
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr @DOUBLE_POW5_SPLIT, i64 %i.ms ; 2 uses
  %.val75.i.i = load i64, ptr %i.mt, align 16, !tbaa !10
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  %.val76.i.i = load i64, ptr %i.mu, align 8, !tbaa !10
  %i.mv = zext i64 %.0138 to i128                 ; 2 uses
  %i.mw = zext i64 %.val75.i.i to i128
  %i.mx = mul nuw i128 %i.mw, %i.mv
  %i.my = zext i64 %.val76.i.i to i128
  %i.mz = mul nuw i128 %i.my, %i.mv
  %i.na = lshr i128 %i.mx, 64
  %i.nb = add nuw i128 %i.na, %i.mz
  %reass.sub197 = sub i32 %i.mr, %i.mo
  %i.nc = add i32 %reass.sub197, 60
  %i.nd = zext nneg i32 %i.nc to i128
  %i.ne = lshr i128 %i.nb, %i.nd
  %i.nf = trunc i128 %i.ne to i64                 ; 3 uses
  %i.ng = icmp slt i32 %i.mq, %.151
  br i1 %i.ng, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nh = icmp slt i32 %i.mr, 64
  br i1 %i.nh, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ni = zext nneg i32 %i.mr to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.ni
  %i.nj = xor i64 %notmask.i.i.i, -1
  %i.nk = and i64 %.0138, %i.nj
  %i.nl = icmp eq i64 %i.nk, 0
  br label %bb.aw

bb.au:                                            ; preds = %bb.aq
  %i.nm = zext nneg i32 %i.ln to i64
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr @DOUBLE_POW5_INV_SPLIT, i64 %i.nm ; 2 uses
  %.val.i.i = load i64, ptr %i.nn, align 16, !tbaa !10
  %i.no = getelementptr i8, ptr %i.nn, i64 8
  %.val74.i.i = load i64, ptr %i.no, align 8, !tbaa !10
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.04.i.i.i.i = phi i64 [ %.0138, %bb.au ], [ %i.np, %bb.av ]
  %.0.i.i.i.i = phi i32 [ 0, %bb.au ], [ %i.nr, %bb.av ] ; 2 uses
  %i.np = mul i64 %.04.i.i.i.i, -3689348814741910323 ; 2 uses
  %i.nq = icmp ugt i64 %i.np, 3689348814741910323
  %i.nr = add i32 %.0.i.i.i.i, 1
  br i1 %i.nq, label %multipleOfPowerOf5.exit.i.i, label %bb.av

multipleOfPowerOf5.exit.i.i:                      ; preds = %bb.av
  %i.ns = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0138, i1 true)
  %i.nt = trunc nuw nsw i64 %i.ns to i32
  %i.nu = mul i32 %.151, -1217359
  %i.nv = lshr i32 %i.nu, 19                      ; 2 uses
  %i.nw = add nuw nsw i32 %i.nv, %i.nt
  %i.nx = sub nuw i32 %.151, %i.nw
  %i.ny = add i32 %i.nx, 9                        ; 2 uses
  %i.nz = zext i64 %.0138 to i128                 ; 2 uses
  %i.oa = zext i64 %.val.i.i to i128
  %i.ob = mul nuw i128 %i.oa, %i.nz
  %i.oc = zext i64 %.val74.i.i to i128
  %i.od = mul nuw i128 %i.oc, %i.nz
  %i.oe = lshr i128 %i.ob, 64
  %i.of = add nuw i128 %i.oe, %i.od
  %reass.sub = sub i32 %i.nv, %.151
  %i.og = add nuw i32 %reass.sub, 61
  %i.oh = add i32 %i.og, %i.ny
  %i.oi = zext nneg i32 %i.oh to i128
  %i.oj = lshr i128 %i.of, %i.oi
  %i.ok = trunc i128 %i.oj to i64
  %i.ol = icmp uge i32 %.0.i.i.i.i, %i.ln
  br label %bb.aw

bb.aw:                                            ; preds = %multipleOfPowerOf5.exit.i.i, %bb.at, %bb.as, %bb.ar
  %.066.i.i = phi i1 [ %i.ol, %multipleOfPowerOf5.exit.i.i ], [ true, %bb.ar ], [ false, %bb.as ], [ %i.nl, %bb.at ]
  %.065.i.i = phi i64 [ %i.ok, %multipleOfPowerOf5.exit.i.i ], [ %i.nf, %bb.ar ], [ %i.nf, %bb.as ], [ %i.nf, %bb.at ] ; 5 uses
  %.064.i.i = phi i32 [ %i.ny, %multipleOfPowerOf5.exit.i.i ], [ %i.mq, %bb.ar ], [ %i.mq, %bb.as ], [ %i.mq, %bb.at ] ; 2 uses
  %i.om = add nsw i32 %.064.i.i, 1023
  %i.on = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.065.i.i, i1 true)
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = xor i32 %i.oo, 63
  %i.oq = add i32 %i.om, %i.op                    ; 3 uses
  %i.or = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.oq, i32 0)
  %i.os = icmp sgt i32 %i.oq, 2046
  br i1 %i.os, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ot = select i1 %2, double -inf, double +inf
  br label %ryu_s2d_from_parts.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.ou = tail call i32 @llvm.smax.i32(i32 %i.oq, i32 1)
  %i.ov = sub i32 %i.ou, %.064.i.i                ; 2 uses
  %i.ow = add i32 %i.ov, -1075                    ; 2 uses
  %i.ox = add i32 %i.ov, -1076
  %i.oy = zext i32 %i.ox to i64                   ; 2 uses
  %i.oz = shl nuw i64 1, %i.oy
  %i.pa = and i64 %i.oz, %.065.i.i
  %.not.i.i = icmp eq i64 %i.pa, 0
  br i1 %.not.i.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %notmask.i.i = shl nsw i64 -1, %i.oy
  %i.pb = xor i64 %notmask.i.i, -1
  %i.pc = and i64 %.065.i.i, %i.pb
  %i.pd = icmp eq i64 %i.pc, 0
  %i.pe = and i1 %.066.i.i, %i.pd
  br i1 %i.pe, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pf = zext nneg i32 %i.ow to i64
  %i.pg = lshr i64 %.065.i.i, %i.pf
  %i.ph = trunc i64 %i.pg to i1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.pi = phi i1 [ false, %bb.ay ], [ true, %bb.az ], [ %i.ph, %bb.ba ] ; 2 uses
  %i.pj = zext nneg i32 %i.ow to i64
  %i.pk = lshr i64 %.065.i.i, %i.pj
  %i.pl = zext i1 %i.pi to i64
  %i.pm = add i64 %i.pk, %i.pl
  %i.pn = and i64 %i.pm, 4503599627370495         ; 2 uses
  %i.po = icmp eq i64 %i.pn, 0
  %or.cond.i.i121 = and i1 %i.pi, %i.po
  %i.pp = zext i1 %or.cond.i.i121 to i32
  %spec.select.i.i = add nuw nsw i32 %i.or, %i.pp
  %i.pq = select i1 %2, i64 2048, i64 0
  %i.pr = zext nneg i32 %spec.select.i.i to i64
  %i.ps = or i64 %i.pq, %i.pr
  %i.pt = shl nuw i64 %i.ps, 52
  %i.pu = or disjoint i64 %i.pt, %i.pn
  %i.pv = bitcast i64 %i.pu to double
  br label %ryu_s2d_from_parts.exit.i
end_hunk_3
begin_hunk_4_@json_string_fastpath:bb.a
  %i.ag = add nuw nsw i64 %.026.i, 8              ; 2 uses
  %.not.i29 = icmp sgt i64 %i.ag, %i.c
  br i1 %.not.i29, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.preheader57
  %i.ah = icmp slt i64 %.026.i, %i.c
  br i1 %i.ah, label %.lr.ph, label %rstring_cache_fetch.exit

bb.h:                                             ; preds = %.preheader57
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.026.i
  %.0.copyload4.i = load i64, ptr %i.ai, align 1  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.026.i
  %.0.copyload.i = load i64, ptr %i.aj, align 1   ; 2 uses
  %.not33.i = icmp eq i64 %.0.copyload4.i, %.0.copyload.i
  br i1 %.not33.i, label %.preheader57, label %.thread

.thread:                                          ; preds = %bb.h
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %.0.copyload4.i)
  %i.al = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  %i.am = icmp ult i64 %i.ak, %i.al
  %i.an = select i1 %i.am, i32 -1, i32 1
  br label %rstring_cache_cmp.exit.thread

bb.i:                                             ; preds = %.lr.ph
  %i.ao = add nuw i64 %.1.i3265, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.c
  br i1 %exitcond.not, label %rstring_cache_fetch.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.1.i3265 = phi i64 [ %i.ao, %bb.i ], [ %.026.i, %.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.1.i3265
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !43  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i3265
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43  ; 2 uses
  %.not32.i = icmp eq i8 %i.aq, %i.as
  br i1 %.not32.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.at = icmp slt i8 %i.aq, %i.as
  %i.au = select i1 %i.at, i32 -1, i32 1
  br label %rstring_cache_cmp.exit.thread

rstring_cache_cmp.exit:                           ; preds = %RSTRING_PTR.exit
  %i.av = sub nsw i64 %i.c, %i.ae
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %.not31.i = icmp eq i32 %i.aw, 0
  br i1 %.not31.i, label %rstring_cache_fetch.exit, label %rstring_cache_cmp.exit.thread

rstring_cache_cmp.exit.thread:                    ; preds = %bb.j, %.thread, %rstring_cache_cmp.exit
  %.0.i2740 = phi i32 [ %i.aw, %rstring_cache_cmp.exit ], [ %i.au, %bb.j ], [ %i.an, %.thread ]
  %i.ax = icmp sgt i32 %.0.i2740, 0               ; 2 uses
  %i.ay = add nuw nsw i32 %i.t, 1
  %i.az = add nsw i32 %i.t, -1
  %.128.i = select i1 %i.ax, i32 %.027.i68, i32 %i.az ; 2 uses
  %.125.i = select i1 %i.ax, i32 %i.ay, i32 %.024.i69 ; 3 uses
  %.not.i = icmp sgt i32 %.125.i, %.128.i
  br i1 %.not.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %rstring_cache_cmp.exit.thread, %bb.e
  %.024.i.lcssa = phi i32 [ 0, %bb.e ], [ %.125.i, %rstring_cache_cmp.exit.thread ] ; 2 uses
  %i.ba = load ptr, ptr @enc_utf8, align 8, !tbaa !12
  %i.bb = tail call i64 @rb_enc_interned_str(ptr noundef nonnull %2, i64 noundef %i.c, ptr noundef %i.ba) #19 ; 3 uses
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !95  ; 3 uses
  %i.bd = icmp slt i32 %i.bc, 63
  br i1 %i.bd, label %bb.k, label %rstring_cache_fetch.exit

bb.k:                                             ; preds = %._crit_edge
  %i.be = sub nsw i32 %i.bc, %.024.i.lcssa        ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i32 %i.be, 0
  br i1 %i.bg, label %bb.l, label %rvalue_cache_insert_at.exit, !prof !67

bb.l:                                             ; preds = %bb.k
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.bf) #21
  unreachable

rvalue_cache_insert_at.exit:                      ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = zext nneg i32 %.024.i.lcssa to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = shl nuw nsw i64 %i.bf, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr nonnull align 8 %i.bj, i64 %i.bl, i1 false)
  %i.bm = add nsw i32 %i.bc, 1
  store i32 %i.bm, ptr %i.n, align 8, !tbaa !95
  store i64 %i.bb, ptr %i.bj, align 8, !tbaa !10
  br label %rstring_cache_fetch.exit

rstring_cache_fetch.exit:                         ; preds = %rstring_cache_cmp.exit, %.preheader, %bb.i, %rvalue_cache_insert_at.exit, %._crit_edge, %bb.d
  %.024 = phi i64 [ %i.o, %bb.d ], [ %i.bb, %._crit_edge ], [ %i.bb, %rvalue_cache_insert_at.exit ], [ %i.w, %bb.i ], [ %i.w, %.preheader ], [ %i.w, %rstring_cache_cmp.exit ] ; 2 uses
  %.not26 = icmp eq i64 %.024, 0
  br i1 %.not26, label %json_string_cacheable_p.exit.thread, label %build_string.exit

bb.m:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !40, !range !62, !noundef !63
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.thread56, label %.thread54

.thread56:                                        ; preds = %bb.m
  %i.bq = load ptr, ptr @enc_utf8, align 8, !tbaa !12
  %i.br = tail call i64 @rb_enc_interned_str(ptr noundef %2, i64 noundef %i.c, ptr noundef %i.bq) #19
  br label %build_string.exit

.thread54:                                        ; preds = %bb.m
  %i.bs = tail call i64 @rb_utf8_str_new(ptr noundef %2, i64 noundef %i.c) #19
  br label %build_string.exit

json_string_cacheable_p.exit.thread:              ; preds = %rstring_cache_fetch.exit, %json_string_cacheable_p.exit, %bb.b
  %i.bt = load ptr, ptr @enc_utf8, align 8, !tbaa !12
  %i.bu = tail call i64 @rb_enc_interned_str(ptr noundef %2, i64 noundef %i.c, ptr noundef %i.bt) #19 ; 2 uses
  br i1 %i.f, label %bb.n, label %build_string.exit

bb.n:                                             ; preds = %json_string_cacheable_p.exit.thread
  %i.bv = tail call i64 @rb_str_intern(i64 noundef %i.bu) #19
  br label %build_string.exit

build_string.exit:                                ; preds = %bb.n, %json_string_cacheable_p.exit.thread, %.thread54, %.thread56, %rstring_cache_fetch.exit
  %.1 = phi i64 [ %.024, %rstring_cache_fetch.exit ], [ %i.bv, %bb.n ], [ %i.bu, %json_string_cacheable_p.exit.thread ], [ %i.bs, %.thread54 ], [ %i.br, %.thread56 ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @json_parse_escaped_string(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [16 x ptr], align 16              ; 5 uses
  %4 = alloca %struct._json_unescape_positions, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  store i64 0, ptr %i.d, align 8
  %.promoted40 = load ptr, ptr %i.e, align 8, !tbaa !64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.g = load i32, ptr @simd_impl, align 4
  %.fr57 = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr57, 2
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  br i1 %i.h, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.pre = load i8, ptr %.promoted40, align 1, !tbaa !43
  br label %.split

.split.us.loopexit.loopexit.split.loop.exit:      ; preds = %.lr.ph39.us.3
  %i.j = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  br label %.split.us.backedge

.split.us.loopexit.loopexit.split.loop.exit205:   ; preds = %.lr.ph39.us.2
  %i.k = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  br label %.split.us.backedge

.split.us.loopexit.loopexit.split.loop.exit207:   ; preds = %.lr.ph39.us.1
  %i.l = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  br label %.split.us.backedge

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %i.m = phi i64 [ %i.v, %.split.us.backedge ], [ 0, %bb.a ] ; 5 uses
  %.promoted3743.us = phi ptr [ %.promoted3743.us.be, %.split.us.backedge ], [ %.promoted40, %bb.a ] ; 5 uses
  %i.n = load i8, ptr %.promoted3743.us, align 1, !tbaa !43
  switch i8 %i.n, label %bb.f [
    i8 34, label %.split53.us
    i8 92, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.o = icmp slt i64 %i.m, 16
  br i1 %i.o, label %bb.d, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8, !tbaa !101
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.m
  store ptr %.promoted3743.us, ptr %i.p, align 8, !tbaa !64
  %i.q = add nsw i64 %i.m, 1                      ; 2 uses
  store i64 %i.q, ptr %4, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i64 [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %.promoted3743.us, i64 1
  br label %bb.g

bb.f:                                             ; preds = %.split.us
  %i.t = load i8, ptr %i.f, align 2, !tbaa !38, !range !62, !noundef !63
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %.split56.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %i.m, %bb.f ], [ %i.r, %bb.e ]
  %.promoted3745.us = phi ptr [ %.promoted3743.us, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.promoted3745.us, i64 1 ; 3 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !56
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !57   ; 5 uses
  %5 = ptrtoint ptr %i.x to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.promoted3745.us, i64 17 ; 2 uses
  %.not.i1636.us = icmp ugt ptr %i.y, %i.x
  br i1 %.not.i1636.us, label %string_scan_simd_sse2.exit.thread27.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %i.ak, %bb.h ], [ %i.y, %bb.g ] ; 4 uses
  %i.aa = phi ptr [ %i.z, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.ab = load <16 x i8>, ptr %i.aa, align 1, !tbaa !43 ; 2 uses
  %i.ac = xor <16 x i8> %i.ab, splat (i8 2)
  %i.ad = icmp ult <16 x i8> %i.ac, splat (i8 33)
  %i.ae = icmp eq <16 x i8> %i.ab, splat (i8 92)
  %i.af = or <16 x i1> %i.ae, %i.ad
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not10.i.not.us = icmp eq i16 %i.ag, 0
  br i1 %.not10.i.not.us, label %bb.h, label %string_scan_simd_sse2.exit.us

string_scan_simd_sse2.exit.us:                    ; preds = %.lr.ph.us
  %i.ah = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ai ; 2 uses
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !56
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %.lr.ph39.us, %.split.us.loopexit.loopexit.split.loop.exit207, %.split.us.loopexit.loopexit.split.loop.exit205, %.split.us.loopexit.loopexit.split.loop.exit, %.lr.ph39.us.prol, %string_scan_simd_sse2.exit.us
  %.promoted3743.us.be = phi ptr [ %i.aj, %string_scan_simd_sse2.exit.us ], [ %i.al, %.lr.ph39.us ], [ %i.l, %.split.us.loopexit.loopexit.split.loop.exit207 ], [ %i.k, %.split.us.loopexit.loopexit.split.loop.exit205 ], [ %i.j, %.split.us.loopexit.loopexit.split.loop.exit ], [ %i.bn, %.lr.ph39.us.prol ]
  br label %.split.us

bb.h:                                             ; preds = %.lr.ph.us
  store ptr %i.z, ptr %i.e, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.not.i16.us = icmp ugt ptr %i.ak, %i.x
  br i1 %.not.i16.us, label %string_scan_simd_sse2.exit.thread27.loopexit.us, label %.lr.ph.us

.lr.ph39.us:                                      ; preds = %.lr.ph39.us.prol.loopexit, %bb.i
  %i.al = phi ptr [ %i.bj, %bb.i ], [ %.unr169, %.lr.ph39.us.prol.loopexit ] ; 9 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !66, !range !62, !noundef !63
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.split.us.backedge, label %.lr.ph39.us.1, !prof !67

.lr.ph39.us.1:                                    ; preds = %.lr.ph39.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !56
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !66, !range !62, !noundef !63
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.split.us.loopexit.loopexit.split.loop.exit207, label %.lr.ph39.us.2, !prof !67

.lr.ph39.us.2:                                    ; preds = %.lr.ph39.us.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 2 ; 2 uses
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !56
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !43
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !66, !range !62, !noundef !63
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.split.us.loopexit.loopexit.split.loop.exit205, label %.lr.ph39.us.3, !prof !67

.lr.ph39.us.3:                                    ; preds = %.lr.ph39.us.2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 3 ; 2 uses
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !56
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !43
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !66, !range !62, !noundef !63
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.split.us.loopexit.loopexit.split.loop.exit, label %bb.i, !prof !67

bb.i:                                             ; preds = %.lr.ph39.us.3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  store ptr %i.bj, ptr %i.e, align 8, !tbaa !56
  %exitcond83.not.3 = icmp eq ptr %i.bj, %i.x
  br i1 %exitcond83.not.3, label %string_scan_simd_sse2.exit.thread27._crit_edge, label %.lr.ph39.us

string_scan_simd_sse2.exit.thread27.loopexit.us:  ; preds = %bb.h, %bb.g
  %.promoted3742.us = phi ptr [ %i.w, %bb.g ], [ %i.z, %bb.h ] ; 4 uses
  %.not38.us = icmp ult ptr %.promoted3742.us, %i.x
  br i1 %.not38.us, label %.lr.ph39.us.preheader, label %string_scan_simd_sse2.exit.thread27._crit_edge

.lr.ph39.us.preheader:                            ; preds = %string_scan_simd_sse2.exit.thread27.loopexit.us
  %.promoted3742.us165 = ptrtoint ptr %.promoted3742.us to i64
  %i.bk = sub i64 %5, %.promoted3742.us165
  %i.bl = freeze i64 %i.bk                        ; 2 uses
  %i.bm = add i64 %i.bl, -1
  %xtraiter166 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph39.us.prol.loopexit, label %.lr.ph39.us.prol

.lr.ph39.us.prol:                                 ; preds = %.lr.ph39.us.preheader, %bb.j
  %i.bn = phi ptr [ %i.bt, %bb.j ], [ %.promoted3742.us, %.lr.ph39.us.preheader ] ; 3 uses
  %prol.iter168 = phi i64 [ %prol.iter168.next, %bb.j ], [ 0, %.lr.ph39.us.preheader ]
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !43
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !66, !range !62, !noundef !63
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.split.us.backedge, label %bb.j, !prof !67

bb.j:                                             ; preds = %.lr.ph39.us.prol
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  store ptr %i.bt, ptr %i.e, align 8, !tbaa !56
  %prol.iter168.next = add i64 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i64 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %.lr.ph39.us.prol.loopexit, label %.lr.ph39.us.prol, !llvm.loop !102

.lr.ph39.us.prol.loopexit:                        ; preds = %bb.j, %.lr.ph39.us.preheader
  %.unr169 = phi ptr [ %.promoted3742.us, %.lr.ph39.us.preheader ], [ %i.bt, %bb.j ]
  %i.bu = icmp ult i64 %i.bm, 3
  br i1 %i.bu, label %string_scan_simd_sse2.exit.thread27._crit_edge, label %.lr.ph39.us

.split.loopexit.loopexit.split.loop.exit:         ; preds = %.lr.ph39.3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  br label %.split.loopexit

.split.loopexit.loopexit.split.loop.exit193:      ; preds = %.lr.ph39.2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  br label %.split.loopexit

.split.loopexit.loopexit.split.loop.exit196:      ; preds = %.lr.ph39.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  br label %.split.loopexit

.split.loopexit:                                  ; preds = %.lr.ph39.prol, %.split.loopexit.loopexit.split.loop.exit, %.split.loopexit.loopexit.split.loop.exit193, %.split.loopexit.loopexit.split.loop.exit196, %.lr.ph39
  %.lcssa155 = phi ptr [ %i.dp, %.lr.ph39 ], [ %i.bx, %.split.loopexit.loopexit.split.loop.exit196 ], [ %i.bw, %.split.loopexit.loopexit.split.loop.exit193 ], [ %i.bv, %.split.loopexit.loopexit.split.loop.exit ], [ %i.dh, %.lr.ph39.prol ]
  %.lcssa153 = phi i8 [ %i.dq, %.lr.ph39 ], [ %i.dw, %.split.loopexit.loopexit.split.loop.exit196 ], [ %i.ec, %.split.loopexit.loopexit.split.loop.exit193 ], [ %i.ei, %.split.loopexit.loopexit.split.loop.exit ], [ %i.di, %.lr.ph39.prol ]
  br label %.split

.split:                                           ; preds = %.split.loopexit, %.split.preheader
  %i.by = phi i8 [ %.pre, %.split.preheader ], [ %.lcssa153, %.split.loopexit ]
  %i.bz = phi i64 [ 0, %.split.preheader ], [ %i.db, %.split.loopexit ] ; 5 uses
  %.promoted3743 = phi ptr [ %.promoted40, %.split.preheader ], [ %.lcssa155, %.split.loopexit ] ; 4 uses
  switch i8 %i.by, label %bb.r [
    i8 34, label %.split53.us
    i8 92, label %bb.n
  ]

.split53.us:                                      ; preds = %.split, %.split.us
  %.us-phi54 = phi ptr [ %.promoted3743.us, %.split.us ], [ %.promoted3743, %.split ]
  %i.ca = call fastcc i64 @json_string_unescape(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %.us-phi54, i1 noundef zeroext %2, ptr noundef %4) ; 2 uses
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !56
  %.val18 = load i64, ptr %1, align 8, !tbaa !35  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !10
  %.not.i19 = icmp eq i64 %.val18, 0
  br i1 %.not.i19, label %bb.l, label %bb.k, !prof !24

bb.k:                                             ; preds = %.split53.us
  %i.cd = call i64 @rb_proc_call_with_block(i64 noundef %.val18, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 2 uses
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.split53.us
  %i.ce = phi i64 [ %i.cd, %bb.k ], [ %i.ca, %.split53.us ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !50 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !49
  %.not.i.i = icmp slt i64 %i.ci, %i.ck
  br i1 %.not.i.i, label %json_push_value.exit, label %bb.m, !prof !24

bb.m:                                             ; preds = %bb.l
  %i.cl = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.cg, ptr noundef nonnull %0, ptr noundef nonnull %i.cf) ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !50
  br label %json_push_value.exit

json_push_value.exit:                             ; preds = %bb.l, %bb.m
  %i.cm = phi i64 [ %.pre.i.i, %bb.m ], [ %i.ci, %bb.l ]
  %.0.i.i = phi ptr [ %i.cl, %bb.m ], [ %i.cg, %bb.l ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cm
  store i64 %i.ce, ptr %i.cq, align 8, !tbaa !10
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !50
  %i.cs = add nsw i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cp, align 8, !tbaa !50
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i64 %i.ct

bb.n:                                             ; preds = %.split
  %i.cu = icmp slt i64 %i.bz, 16
  br i1 %i.cu, label %bb.o, label %bb.p, !prof !24

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bz
  store ptr %.promoted3743, ptr %i.cv, align 8, !tbaa !64
  %i.cw = add nsw i64 %i.bz, 1                    ; 2 uses
  store i64 %i.cw, ptr %4, align 8, !tbaa !96
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.d, align 8, !tbaa !101
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cx = phi i64 [ %i.bz, %bb.p ], [ %i.cw, %bb.o ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.promoted3743, i64 1
  br label %string_scan_simd_sse2.exit.thread27

bb.r:                                             ; preds = %.split
  %i.cz = load i8, ptr %i.f, align 2, !tbaa !38, !range !62, !noundef !63
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %string_scan_simd_sse2.exit.thread27, label %.split56.us

.split56.us:                                      ; preds = %bb.r, %bb.f
  call fastcc void @raise_parse_error(ptr noundef nonnull @.str.53, ptr noundef %0) #24
  unreachable

string_scan_simd_sse2.exit.thread27:              ; preds = %bb.r, %bb.q
  %i.db = phi i64 [ %i.bz, %bb.r ], [ %i.cx, %bb.q ]
  %.promoted3745 = phi ptr [ %.promoted3743, %bb.r ], [ %i.cy, %bb.q ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.promoted3745, i64 1 ; 4 uses
  store ptr %i.dc, ptr %i.e, align 8, !tbaa !56
  %.val17 = load ptr, ptr %i.i, align 8, !tbaa !57 ; 3 uses
  %.not38 = icmp ult ptr %i.dc, %.val17
  br i1 %.not38, label %.lr.ph39.preheader, label %string_scan_simd_sse2.exit.thread27._crit_edge

.lr.ph39.preheader:                               ; preds = %string_scan_simd_sse2.exit.thread27
  %.val17160 = ptrtoint ptr %.val17 to i64
  %.promoted3745161 = ptrtoint ptr %.promoted3745 to i64
  %i.dd = xor i64 %.promoted3745161, -1
  %i.de = add i64 %i.dd, %.val17160
  %i.df = freeze i64 %i.de                        ; 2 uses
  %i.dg = add i64 %i.df, -1
  %xtraiter = and i64 %i.df, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph39.prol.loopexit, label %.lr.ph39.prol

.lr.ph39.prol:                                    ; preds = %.lr.ph39.preheader, %bb.s
  %i.dh = phi ptr [ %i.dn, %bb.s ], [ %i.dc, %.lr.ph39.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.s ], [ 0, %.lr.ph39.preheader ]
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !43  ; 2 uses
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !66, !range !62, !noundef !63
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %.split.loopexit, label %bb.s, !prof !67

bb.s:                                             ; preds = %.lr.ph39.prol
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 3 uses
  store ptr %i.dn, ptr %i.e, align 8, !tbaa !56
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph39.prol.loopexit, label %.lr.ph39.prol, !llvm.loop !103

.lr.ph39.prol.loopexit:                           ; preds = %bb.s, %.lr.ph39.preheader
  %.unr = phi ptr [ %i.dc, %.lr.ph39.preheader ], [ %i.dn, %bb.s ]
  %i.do = icmp ult i64 %i.dg, 3
  br i1 %i.do, label %string_scan_simd_sse2.exit.thread27._crit_edge, label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.prol.loopexit, %bb.t
  %i.dp = phi ptr [ %i.en, %bb.t ], [ %.unr, %.lr.ph39.prol.loopexit ] ; 9 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !43  ; 2 uses
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !66, !range !62, !noundef !63
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.split.loopexit, label %.lr.ph39.1, !prof !67

.lr.ph39.1:                                       ; preds = %.lr.ph39
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  store ptr %i.dv, ptr %i.e, align 8, !tbaa !56
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !43  ; 2 uses
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !66, !range !62, !noundef !63
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %.split.loopexit.loopexit.split.loop.exit196, label %.lr.ph39.2, !prof !67

.lr.ph39.2:                                       ; preds = %.lr.ph39.1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 2 ; 2 uses
  store ptr %i.eb, ptr %i.e, align 8, !tbaa !56
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !43  ; 2 uses
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !66, !range !62, !noundef !63
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %.split.loopexit.loopexit.split.loop.exit193, label %.lr.ph39.3, !prof !67

.lr.ph39.3:                                       ; preds = %.lr.ph39.2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 3 ; 2 uses
  store ptr %i.eh, ptr %i.e, align 8, !tbaa !56
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !43  ; 2 uses
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !66, !range !62, !noundef !63
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.split.loopexit.loopexit.split.loop.exit, label %bb.t, !prof !67

bb.t:                                             ; preds = %.lr.ph39.3
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 3 uses
  store ptr %i.en, ptr %i.e, align 8, !tbaa !56
  %exitcond.not.3 = icmp eq ptr %i.en, %.val17
  br i1 %exitcond.not.3, label %string_scan_simd_sse2.exit.thread27._crit_edge, label %.lr.ph39

string_scan_simd_sse2.exit.thread27._crit_edge:   ; preds = %string_scan_simd_sse2.exit.thread27, %bb.t, %.lr.ph39.prol.loopexit, %string_scan_simd_sse2.exit.thread27.loopexit.us, %bb.i, %.lr.ph39.us.prol.loopexit
  call fastcc void @raise_parse_error(ptr noundef nonnull @.str.51, ptr noundef %0) #24
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @rsymbol_cache_fetch(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !95     ; 2 uses
  %.not57 = icmp slt i32 %i.a, 1
  br i1 %.not57, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.b = add nsw i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph60, %rstring_cache_cmp.exit.thread
  %.02459 = phi i32 [ 0, %.lr.ph60 ], [ %.125, %rstring_cache_cmp.exit.thread ] ; 2 uses
  %.02758 = phi i32 [ %i.b, %.lr.ph60 ], [ %.128, %rstring_cache_cmp.exit.thread ] ; 2 uses
  %i.d = add nuw nsw i32 %.02459, %.02758
  %i.e = lshr i32 %i.d, 1                         ; 3 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %i.i = tail call i64 @rb_sym2str(i64 noundef %i.h) #19
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = and i64 %i.k, 8192
  %.not.i32 = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  br i1 %.not.i32, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %.preheader47, label %rstring_cache_cmp.exit

.preheader47:                                     ; preds = %RSTRING_PTR.exit, %bb.d
  %.026.i = phi i64 [ %i.s, %bb.d ], [ 0, %RSTRING_PTR.exit ] ; 5 uses
  %i.s = add nuw nsw i64 %.026.i, 8               ; 2 uses
  %.not.i = icmp sgt i64 %i.s, %2
  br i1 %.not.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %.preheader47
  %i.t = icmp slt i64 %.026.i, %2
  br i1 %i.t, label %.lr.ph, label %.thread42

bb.d:                                             ; preds = %.preheader47
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.026.i
  %.0.copyload4.i = load i64, ptr %i.u, align 1   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %.026.i
  %.0.copyload.i = load i64, ptr %i.v, align 1    ; 2 uses
  %.not33.i = icmp eq i64 %.0.copyload4.i, %.0.copyload.i
  br i1 %.not33.i, label %.preheader47, label %.thread

.thread:                                          ; preds = %bb.d
  %i.w = tail call i64 @llvm.bswap.i64(i64 %.0.copyload4.i)
  %i.x = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  %i.y = icmp ult i64 %i.w, %i.x
  %i.z = select i1 %i.y, i32 -1, i32 1
  br label %rstring_cache_cmp.exit.thread

bb.e:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.1.i55, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %.thread42, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.1.i55 = phi i64 [ %i.aa, %bb.e ], [ %.026.i, %.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i55
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !43  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %.1.i55
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !43  ; 2 uses
  %.not32.i = icmp eq i8 %i.ac, %i.ae
  br i1 %.not32.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.af = icmp slt i8 %i.ac, %i.ae
  %i.ag = select i1 %i.af, i32 -1, i32 1
  br label %rstring_cache_cmp.exit.thread

rstring_cache_cmp.exit:                           ; preds = %RSTRING_PTR.exit
  %i.ah = sub nsw i64 %2, %i.q
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %.not31 = icmp eq i32 %i.ai, 0
  br i1 %.not31, label %.thread42, label %rstring_cache_cmp.exit.thread

rstring_cache_cmp.exit.thread:                    ; preds = %bb.f, %.thread, %rstring_cache_cmp.exit
  %.0.i36 = phi i32 [ %i.ai, %rstring_cache_cmp.exit ], [ %i.ag, %bb.f ], [ %i.z, %.thread ]
  %i.aj = icmp sgt i32 %.0.i36, 0                 ; 2 uses
  %i.ak = add nuw nsw i32 %i.e, 1
  %i.al = add nsw i32 %i.e, -1
  %.128 = select i1 %i.aj, i32 %.02758, i32 %i.al ; 2 uses
  %.125 = select i1 %i.aj, i32 %i.ak, i32 %.02459 ; 3 uses
  %.not = icmp sgt i32 %.125, %.128
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %rstring_cache_cmp.exit.thread, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %.125, %rstring_cache_cmp.exit.thread ] ; 2 uses
  %i.am = load ptr, ptr @enc_utf8, align 8, !tbaa !12
  %i.an = tail call i64 @rb_enc_interned_str(ptr noundef %1, i64 noundef %2, ptr noundef %i.am) #19
  %i.ao = tail call i64 @rb_str_intern(i64 noundef %i.an) #19 ; 3 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !95    ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 63
  br i1 %i.aq, label %bb.g, label %.thread42

bb.g:                                             ; preds = %._crit_edge
  %i.ar = sub nsw i32 %i.ap, %.024.lcssa          ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp slt i32 %i.ar, 0
  br i1 %i.at, label %bb.h, label %rvalue_cache_insert_at.exit, !prof !67

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.as) #21
  unreachable

rvalue_cache_insert_at.exit:                      ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
