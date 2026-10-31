Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-enc-zrle?download=true
inline.NumInlined: 86
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zrle_encode_tile16be:bb.a

.lr.ph194.backedge:                               ; preds = %bb.u, %.thread
  %.0118191.be = phi i8 [ 0, %.thread ], [ %i.ck, %bb.u ]
  br label %.lr.ph194, !llvm.loop !50

.thread:                                          ; preds = %.lr.ph194
  %i.cn = trunc i32 %i.cj to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cn) #9
  %i.co = icmp ult ptr %i.ce, %i.cd
  br i1 %i.co, label %.lr.ph194.backedge, label %._crit_edge195.thread

._crit_edge195:                                   ; preds = %bb.u
  %.not135 = icmp eq i8 %i.ck, 0
  br i1 %.not135, label %._crit_edge195.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge195
  %i.cp = trunc i32 %i.cj to i16
  %narrow = sub nuw nsw i8 8, %i.ck
  %i.cq = zext nneg i8 %narrow to i16
  %i.cr = shl i16 %i.cp, %i.cq
  %i.cs = trunc i16 %i.cr to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cs) #9
  br label %._crit_edge195.thread

._crit_edge195.thread:                            ; preds = %.thread, %bb.t, %bb.v, %._crit_edge195
  %.6.lcssa285 = phi ptr [ %.5200, %bb.t ], [ %i.ce, %bb.v ], [ %i.ce, %._crit_edge195 ], [ %i.ce, %.thread ]
  %i.ct = add nuw nsw i32 %.1124199, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !51

.thread145:                                       ; preds = %.thread144
  %i.cu = add nsw i32 %5, -1                      ; 2 uses
  %or.cond137 = icmp ult i32 %i.cu, 127
  br i1 %or.cond137, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %.thread145
  %i.cv = getelementptr i8, ptr %0, i64 86848     ; 7 uses
  %notmask.i.i = shl nsw i32 -1, %5               ; 2 uses
  %i.cw = and i32 %notmask.i.i, %3                ; 13 uses
  %i.cx = and i32 %notmask.i.i, %4                ; 7 uses
  %i.cy = icmp eq i32 %i.cw, 0
  %i.cz = icmp eq i32 %i.cx, 0
  %or.cond.i = or i1 %i.cy, %i.cz
  br i1 %or.cond.i, label %zywrle_analyze_16be.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = sub i32 %3, %i.cw                       ; 5 uses
  %i.db = sub i32 %4, %i.cx
  %i.dc = mul i32 %i.cw, %i.cx                    ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %.idx432.i = shl nsw i64 %i.dd, 2               ; 8 uses
  %i.de = getelementptr i8, ptr %i.cv, i64 %.idx432.i ; 12 uses
  %.not311.i = icmp eq i32 %3, %i.cw              ; 2 uses
  br i1 %.not311.i, label %.loopexit313.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = sext i32 %i.cw to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.df ; 2 uses
  %i.dh = mul i32 %i.cx, %3                       ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %.idx.i = shl nsw i64 %i.di, 1
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %.idx.i
  %i.dk = icmp sgt i32 %i.dh, 0
  br i1 %i.dk, label %.lr.ph321.i, label %.loopexit313.i

.lr.ph321.i:                                      ; preds = %bb.y
  %i.dl = sext i32 %i.da to i64
  %.idx427.i = shl nuw nsw i64 %i.dl, 1
  %i.dm = icmp sgt i32 %i.da, 0
  br i1 %i.dm, label %.lr.ph.i.preheader.us, label %.loopexit313.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph321.i, %._crit_edge.i.loopexit.us
  %.0226319.i.us = phi ptr [ %i.ds, %._crit_edge.i.loopexit.us ], [ %i.dg, %.lr.ph321.i ] ; 2 uses
  %.0234318.i.us = phi ptr [ %i.dq, %._crit_edge.i.loopexit.us ], [ %i.de, %.lr.ph321.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0226319.i.us, i64 %.idx427.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.1227316.i.us = phi ptr [ %i.dp, %.lr.ph.i.us ], [ %.0226319.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.1235315.i.us = phi ptr [ %i.dq, %.lr.ph.i.us ], [ %.0234318.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.do = load i16, ptr %.1227316.i.us, align 2
  store i16 %i.do, ptr %.1235315.i.us, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.1227316.i.us, i64 2 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1235315.i.us, i64 4 ; 3 uses
  %i.dr = icmp ult ptr %i.dp, %i.dn
  br i1 %i.dr, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !52

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.df ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.dj
  br i1 %i.dt, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !53

.loopexit313.i:                                   ; preds = %._crit_edge.i.loopexit.us, %.lr.ph321.i, %bb.y, %bb.x
  %.2236.i = phi ptr [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.de, %.lr.ph321.i ], [ %i.dq, %._crit_edge.i.loopexit.us ] ; 2 uses
  %.not310.i = icmp eq i32 %4, %i.cx
  br i1 %.not310.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %.loopexit313.i
  %i.du = mul i32 %i.cx, %3
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dv ; 2 uses
  %i.dx = mul i32 %i.db, %3                       ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %.idx428.i = shl nsw i64 %i.dy, 1               ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 %.idx428.i
  %i.ea = icmp sgt i32 %i.dx, 0
  br i1 %i.ea, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %bb.z
  %i.eb = sext i32 %i.cw to i64                   ; 3 uses
  %i.ec = sext i32 %i.da to i64                   ; 2 uses
  %.idx429.i = shl nuw nsw i64 %i.eb, 1
  %i.ed = icmp sgt i32 %i.cw, 0
  br i1 %i.ed, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i

.lr.ph327.i.preheader.us:                         ; preds = %.lr.ph334.i, %._crit_edge328.i.loopexit.us
  %.3229332.i.us = phi ptr [ %i.ej, %._crit_edge328.i.loopexit.us ], [ %i.dw, %.lr.ph334.i ] ; 2 uses
  %.3237331.i.us = phi ptr [ %i.eh, %._crit_edge328.i.loopexit.us ], [ %.2236.i, %.lr.ph334.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.3229332.i.us, i64 %.idx429.i
  br label %.lr.ph327.i.us

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.us, %.lr.ph327.i.preheader.us
  %.4230325.i.us = phi ptr [ %i.eg, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.eh, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ef = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ef, ptr %.4238324.i.us, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.ei = icmp ult ptr %i.eg, %i.ee
  br i1 %i.ei, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !54

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.ec ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.dz
  br i1 %i.ek, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !55

._crit_edge335.i:                                 ; preds = %._crit_edge328.i.loopexit.us, %.lr.ph334.i
  %.us-phi173 = phi ptr [ %.2236.i, %.lr.ph334.i ], [ %i.eh, %._crit_edge328.i.loopexit.us ]
  br i1 %.not311.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge335.i
  %i.el = getelementptr inbounds [2 x i8], ptr %2, i64 %i.eb
  %i.em = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.dv ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx428.i
  %.idx431.i = shl nuw nsw i64 %i.ec, 1
  %i.eo = icmp sgt i32 %i.da, 0
  br i1 %i.eo, label %.lr.ph341.i.preheader.us, label %.thread.i

.lr.ph341.i.preheader.us:                         ; preds = %bb.aa, %._crit_edge342.i.loopexit.us
  %.6232346.i.us = phi ptr [ %i.eu, %._crit_edge342.i.loopexit.us ], [ %i.em, %bb.aa ] ; 2 uses
  %.6240345.i.us = phi ptr [ %i.es, %._crit_edge342.i.loopexit.us ], [ %.us-phi173, %bb.aa ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.6232346.i.us, i64 %.idx431.i
  br label %.lr.ph341.i.us

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.us, %.lr.ph341.i.preheader.us
  %.7233339.i.us = phi ptr [ %i.er, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.es, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eq = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eq, ptr %.7241338.i.us, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.et = icmp ult ptr %i.er, %i.ep
  br i1 %i.et, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !56

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.eb ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %i.en
  br i1 %i.ev, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !57

.thread.i:                                        ; preds = %._crit_edge342.i.loopexit.us, %bb.aa, %bb.z, %._crit_edge335.i, %.loopexit313.i
  %i.ew = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %i.ex = sext i32 %i.cw to i64                   ; 2 uses
  br i1 %i.ew, label %.lr.ph60.i.i, label %.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge

.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge:    ; preds = %.thread.i
  %.pre = shl nsw i64 %i.ex, 2
  br label %zywrle_rgbyuv_16be.exit.i

.lr.ph60.i.i:                                     ; preds = %.thread.i
  %i.ey = sext i32 %i.da to i64
  %.idx62.i.i = shl nsw i64 %i.ex, 2              ; 4 uses
  %i.ez = icmp sgt i32 %i.cw, 0
  br i1 %i.ez, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.lr.ph60.i.i, %._crit_edge.i.loopexit.us.i
  %.04558.i.us.i = phi ptr [ %.lcssa344, %._crit_edge.i.loopexit.us.i ], [ %i.cv, %.lr.ph60.i.i ] ; 32 uses
  %.04657.i.us.i = phi ptr [ %i.us, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
  %.04558.i.us.i352 = ptrtoaddr ptr %.04558.i.us.i to i64 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.04558.i.us.i, i64 %.idx62.i.i
  %i.fb = add i64 %.idx62.i.i, %.04558.i.us.i352
  %i.fc = add i64 %.04558.i.us.i352, 4
  %umax356 = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fc)
  %i.fd = xor i64 %.04558.i.us.i352, -1
  %i.fe = add i64 %umax356, %i.fd                 ; 3 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fe, 28
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.04558.i.us.i, i64 3
  %i.fh = add i64 %.idx62.i.i, %.04558.i.us.i352
  %i.fi = add i64 %.04558.i.us.i352, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.fi)
  %i.fj = xor i64 %.04558.i.us.i352, -1
  %i.fk = add i64 %umax, %i.fj                    ; 2 uses
  %6 = and i64 %i.fk, -4
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %6
  %scevgep354 = getelementptr i8, ptr %.04657.i.us.i, i64 2
  %7 = lshr i64 %i.fk, 1
  %8 = and i64 %7, 9223372036854775806
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %8
  %bound0 = icmp ult ptr %.04558.i.us.i, %scevgep355
  %bound1 = icmp ult ptr %.04657.i.us.i, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fe, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fl = and i64 %i.fg, 8
  %n.vec = and i64 %i.fg, 9223372036854775792     ; 5 uses
  %i.fm = shl i64 %n.vec, 2
  %i.fn = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fm ; 2 uses
  %i.fo = shl nuw i64 %n.vec, 1
  %i.fp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fq = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fs, i64 8
  %i.ft = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.ft, i64 12
  %i.fu = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fu, i64 16
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fv, i64 20
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.fw, i64 24
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.fx, i64 28
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.fy, i64 32
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep366 = getelementptr i8, ptr %i.fz, i64 36
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.ga, i64 40
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.gb, i64 44
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep369 = getelementptr i8, ptr %i.gc, i64 48
  %i.gd = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.gd, i64 52
  %i.ge = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep371 = getelementptr i8, ptr %i.ge, i64 56
  %i.gf = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep372 = getelementptr i8, ptr %i.gf, i64 60
  %i.gg = shl i64 %index, 1                       ; 16 uses
  %next.gep373 = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %i.gh = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.gh, i64 2
  %i.gi = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.gi, i64 4
  %i.gj = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gj, i64 6
  %i.gk = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.gl, i64 10
  %i.gm = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.gm, i64 12
  %i.gn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.gn, i64 14
  %i.go = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep381 = getelementptr i8, ptr %i.go, i64 16
  %i.gp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.gp, i64 18
  %i.gq = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.gq, i64 20
  %i.gr = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gr, i64 22
  %i.gs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gs, i64 24
  %i.gt = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.gt, i64 26
  %i.gu = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.gu, i64 28
  %i.gv = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.gv, i64 30
  %i.gw = load i8, ptr %next.gep373, align 1, !alias.scope !79
  %i.gx = load i8, ptr %next.gep374, align 1, !alias.scope !79
  %i.gy = load i8, ptr %next.gep375, align 1, !alias.scope !79
  %i.gz = load i8, ptr %next.gep376, align 1, !alias.scope !79
  %i.ha = load i8, ptr %next.gep377, align 1, !alias.scope !79
  %i.hb = load i8, ptr %next.gep378, align 1, !alias.scope !79
  %i.hc = load i8, ptr %next.gep379, align 1, !alias.scope !79
  %i.hd = load i8, ptr %next.gep380, align 1, !alias.scope !79
  %i.he = load i8, ptr %next.gep381, align 1, !alias.scope !79
  %i.hf = load i8, ptr %next.gep382, align 1, !alias.scope !79
  %i.hg = load i8, ptr %next.gep383, align 1, !alias.scope !79
  %i.hh = load i8, ptr %next.gep384, align 1, !alias.scope !79
  %i.hi = load i8, ptr %next.gep385, align 1, !alias.scope !79
  %i.hj = load i8, ptr %next.gep386, align 1, !alias.scope !79
  %i.hk = load i8, ptr %next.gep387, align 1, !alias.scope !79
  %i.hl = load i8, ptr %next.gep388, align 1, !alias.scope !79
  %i.hm = insertelement <16 x i8> poison, i8 %i.gw, i64 0
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 1
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 2
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 3
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 4
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 5
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 6
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 7
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 8
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 9
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 10
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 11
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 12
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 13
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 14
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 15
  %i.ic = zext <16 x i8> %i.ib to <16 x i32>      ; 3 uses
  %i.id = and <16 x i32> %i.ic, splat (i32 248)
  %i.ie = shl nuw nsw <16 x i32> %i.ic, splat (i32 5)
  %i.if = getelementptr inbounds nuw i8, ptr %next.gep373, i64 1
  %i.ig = getelementptr i8, ptr %i.gh, i64 3
  %i.ih = getelementptr i8, ptr %i.gi, i64 5
  %i.ii = getelementptr i8, ptr %i.gj, i64 7
  %i.ij = getelementptr i8, ptr %i.gk, i64 9
  %i.ik = getelementptr i8, ptr %i.gl, i64 11
  %i.il = getelementptr i8, ptr %i.gm, i64 13
  %i.im = getelementptr i8, ptr %i.gn, i64 15
  %i.in = getelementptr i8, ptr %i.go, i64 17
  %i.io = getelementptr i8, ptr %i.gp, i64 19
  %i.ip = getelementptr i8, ptr %i.gq, i64 21
  %i.iq = getelementptr i8, ptr %i.gr, i64 23
  %i.ir = getelementptr i8, ptr %i.gs, i64 25
  %i.is = getelementptr i8, ptr %i.gt, i64 27
  %i.it = getelementptr i8, ptr %i.gu, i64 29
  %i.iu = getelementptr i8, ptr %i.gv, i64 31
  %i.iv = load i8, ptr %i.if, align 1, !alias.scope !79
  %i.iw = load i8, ptr %i.ig, align 1, !alias.scope !79
  %i.ix = load i8, ptr %i.ih, align 1, !alias.scope !79
  %i.iy = load i8, ptr %i.ii, align 1, !alias.scope !79
  %i.iz = load i8, ptr %i.ij, align 1, !alias.scope !79
  %i.ja = load i8, ptr %i.ik, align 1, !alias.scope !79
  %i.jb = load i8, ptr %i.il, align 1, !alias.scope !79
  %i.jc = load i8, ptr %i.im, align 1, !alias.scope !79
  %i.jd = load i8, ptr %i.in, align 1, !alias.scope !79
  %i.je = load i8, ptr %i.io, align 1, !alias.scope !79
  %i.jf = load i8, ptr %i.ip, align 1, !alias.scope !79
  %i.jg = load i8, ptr %i.iq, align 1, !alias.scope !79
  %i.jh = load i8, ptr %i.ir, align 1, !alias.scope !79
  %i.ji = load i8, ptr %i.is, align 1, !alias.scope !79
  %i.jj = load i8, ptr %i.it, align 1, !alias.scope !79
  %i.jk = load i8, ptr %i.iu, align 1, !alias.scope !79
  %i.jl = insertelement <16 x i8> poison, i8 %i.iv, i64 0
  %i.jm = insertelement <16 x i8> %i.jl, i8 %i.iw, i64 1
  %i.jn = insertelement <16 x i8> %i.jm, i8 %i.ix, i64 2
  %i.jo = insertelement <16 x i8> %i.jn, i8 %i.iy, i64 3
  %i.jp = insertelement <16 x i8> %i.jo, i8 %i.iz, i64 4
  %i.jq = insertelement <16 x i8> %i.jp, i8 %i.ja, i64 5
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 6
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 7
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 8
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 9
  %i.jv = insertelement <16 x i8> %i.ju, i8 %i.jf, i64 10
  %i.jw = insertelement <16 x i8> %i.jv, i8 %i.jg, i64 11
  %i.jx = insertelement <16 x i8> %i.jw, i8 %i.jh, i64 12
  %i.jy = insertelement <16 x i8> %i.jx, i8 %i.ji, i64 13
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 14
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 15
  %i.kb = zext <16 x i8> %i.ka to <16 x i32>      ; 2 uses
  %i.kc = lshr <16 x i32> %i.kb, splat (i32 3)
  %i.kd = or disjoint <16 x i32> %i.kc, %i.ie
  %i.ke = and <16 x i32> %i.kd, splat (i32 252)   ; 3 uses
  %i.kf = shl nuw nsw <16 x i32> %i.kb, splat (i32 3)
  %i.kg = and <16 x i32> %i.kf, splat (i32 248)   ; 2 uses
  %i.kh = shl nuw nsw <16 x i32> %i.ke, splat (i32 1)
  %i.ki = add nuw nsw <16 x i32> %i.kg, %i.ic
  %i.kj = add nuw nsw <16 x i32> %i.ki, %i.kh
  %i.kk = lshr <16 x i32> %i.kj, splat (i32 2)
  %i.kl = sub nsw <16 x i32> %i.kg, %i.ke
  %i.km = sub nsw <16 x i32> %i.id, %i.ke
  %i.kn = ashr exact <16 x i32> %i.kl, splat (i32 1)
  %i.ko = ashr exact <16 x i32> %i.km, splat (i32 1)
  %i.kp = and <16 x i32> %i.kk, splat (i32 252)   ; 2 uses
  %i.kq = and <16 x i32> %i.kn, splat (i32 -8)    ; 2 uses
  %i.kr = and <16 x i32> %i.ko, splat (i32 -8)    ; 2 uses
  %i.ks = icmp eq <16 x i32> %i.kp, zeroinitializer
  %i.kt = icmp eq <16 x i32> %i.kq, splat (i32 -128)
  %i.ku = icmp eq <16 x i32> %i.kr, splat (i32 -128)
  %i.kv = trunc <16 x i32> %i.kr to <16 x i8>
  %i.kw = select <16 x i1> %i.ku, <16 x i8> splat (i8 -120), <16 x i8> %i.kv ; 16 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ky = getelementptr i8, ptr %i.fr, i64 6
  %i.kz = getelementptr i8, ptr %i.fs, i64 10
  %i.la = getelementptr i8, ptr %i.ft, i64 14
  %i.lb = getelementptr i8, ptr %i.fu, i64 18
  %i.lc = getelementptr i8, ptr %i.fv, i64 22
  %i.ld = getelementptr i8, ptr %i.fw, i64 26
  %i.le = getelementptr i8, ptr %i.fx, i64 30
  %i.lf = getelementptr i8, ptr %i.fy, i64 34
  %i.lg = getelementptr i8, ptr %i.fz, i64 38
  %i.lh = getelementptr i8, ptr %i.ga, i64 42
end_hunk_0
begin_hunk_1_@zrle_encode_tile16le:bb.a

.lr.ph194.backedge:                               ; preds = %bb.u, %.thread
  %.0118191.be = phi i8 [ 0, %.thread ], [ %i.ck, %bb.u ]
  br label %.lr.ph194, !llvm.loop !95

.thread:                                          ; preds = %.lr.ph194
  %i.cn = trunc i32 %i.cj to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cn) #9
  %i.co = icmp ult ptr %i.ce, %i.cd
  br i1 %i.co, label %.lr.ph194.backedge, label %._crit_edge195.thread

._crit_edge195:                                   ; preds = %bb.u
  %.not135 = icmp eq i8 %i.ck, 0
  br i1 %.not135, label %._crit_edge195.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge195
  %i.cp = trunc i32 %i.cj to i16
  %narrow = sub nuw nsw i8 8, %i.ck
  %i.cq = zext nneg i8 %narrow to i16
  %i.cr = shl i16 %i.cp, %i.cq
  %i.cs = trunc i16 %i.cr to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cs) #9
  br label %._crit_edge195.thread

._crit_edge195.thread:                            ; preds = %.thread, %bb.t, %bb.v, %._crit_edge195
  %.6.lcssa285 = phi ptr [ %.5200, %bb.t ], [ %i.ce, %bb.v ], [ %i.ce, %._crit_edge195 ], [ %i.ce, %.thread ]
  %i.ct = add nuw nsw i32 %.1124199, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !96

.thread145:                                       ; preds = %.thread144
  %i.cu = add nsw i32 %5, -1                      ; 2 uses
  %or.cond137 = icmp ult i32 %i.cu, 127
  br i1 %or.cond137, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %.thread145
  %i.cv = getelementptr i8, ptr %0, i64 86848     ; 7 uses
  %notmask.i.i = shl nsw i32 -1, %5               ; 2 uses
  %i.cw = and i32 %notmask.i.i, %3                ; 13 uses
  %i.cx = and i32 %notmask.i.i, %4                ; 7 uses
  %i.cy = icmp eq i32 %i.cw, 0
  %i.cz = icmp eq i32 %i.cx, 0
  %or.cond.i = or i1 %i.cy, %i.cz
  br i1 %or.cond.i, label %zywrle_analyze_16le.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = sub i32 %3, %i.cw                       ; 5 uses
  %i.db = sub i32 %4, %i.cx
  %i.dc = mul i32 %i.cw, %i.cx                    ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %.idx432.i = shl nsw i64 %i.dd, 2               ; 8 uses
  %i.de = getelementptr i8, ptr %i.cv, i64 %.idx432.i ; 12 uses
  %.not311.i = icmp eq i32 %3, %i.cw              ; 2 uses
  br i1 %.not311.i, label %.loopexit313.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = sext i32 %i.cw to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.df ; 2 uses
  %i.dh = mul i32 %i.cx, %3                       ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %.idx.i = shl nsw i64 %i.di, 1
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %.idx.i
  %i.dk = icmp sgt i32 %i.dh, 0
  br i1 %i.dk, label %.lr.ph321.i, label %.loopexit313.i

.lr.ph321.i:                                      ; preds = %bb.y
  %i.dl = sext i32 %i.da to i64
  %.idx427.i = shl nuw nsw i64 %i.dl, 1
  %i.dm = icmp sgt i32 %i.da, 0
  br i1 %i.dm, label %.lr.ph.i.preheader.us, label %.loopexit313.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph321.i, %._crit_edge.i.loopexit.us
  %.0226319.i.us = phi ptr [ %i.ds, %._crit_edge.i.loopexit.us ], [ %i.dg, %.lr.ph321.i ] ; 2 uses
  %.0234318.i.us = phi ptr [ %i.dq, %._crit_edge.i.loopexit.us ], [ %i.de, %.lr.ph321.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0226319.i.us, i64 %.idx427.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.1227316.i.us = phi ptr [ %i.dp, %.lr.ph.i.us ], [ %.0226319.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.1235315.i.us = phi ptr [ %i.dq, %.lr.ph.i.us ], [ %.0234318.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.do = load i16, ptr %.1227316.i.us, align 2
  store i16 %i.do, ptr %.1235315.i.us, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.1227316.i.us, i64 2 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1235315.i.us, i64 4 ; 3 uses
  %i.dr = icmp ult ptr %i.dp, %i.dn
  br i1 %i.dr, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !97

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.df ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.dj
  br i1 %i.dt, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !98

.loopexit313.i:                                   ; preds = %._crit_edge.i.loopexit.us, %.lr.ph321.i, %bb.y, %bb.x
  %.2236.i = phi ptr [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.de, %.lr.ph321.i ], [ %i.dq, %._crit_edge.i.loopexit.us ] ; 2 uses
  %.not310.i = icmp eq i32 %4, %i.cx
  br i1 %.not310.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %.loopexit313.i
  %i.du = mul i32 %i.cx, %3
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dv ; 2 uses
  %i.dx = mul i32 %i.db, %3                       ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %.idx428.i = shl nsw i64 %i.dy, 1               ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 %.idx428.i
  %i.ea = icmp sgt i32 %i.dx, 0
  br i1 %i.ea, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %bb.z
  %i.eb = sext i32 %i.cw to i64                   ; 3 uses
  %i.ec = sext i32 %i.da to i64                   ; 2 uses
  %.idx429.i = shl nuw nsw i64 %i.eb, 1
  %i.ed = icmp sgt i32 %i.cw, 0
  br i1 %i.ed, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i

.lr.ph327.i.preheader.us:                         ; preds = %.lr.ph334.i, %._crit_edge328.i.loopexit.us
  %.3229332.i.us = phi ptr [ %i.ej, %._crit_edge328.i.loopexit.us ], [ %i.dw, %.lr.ph334.i ] ; 2 uses
  %.3237331.i.us = phi ptr [ %i.eh, %._crit_edge328.i.loopexit.us ], [ %.2236.i, %.lr.ph334.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.3229332.i.us, i64 %.idx429.i
  br label %.lr.ph327.i.us

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.us, %.lr.ph327.i.preheader.us
  %.4230325.i.us = phi ptr [ %i.eg, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.eh, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ef = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ef, ptr %.4238324.i.us, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.ei = icmp ult ptr %i.eg, %i.ee
  br i1 %i.ei, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !99

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.ec ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.dz
  br i1 %i.ek, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !100

._crit_edge335.i:                                 ; preds = %._crit_edge328.i.loopexit.us, %.lr.ph334.i
  %.us-phi173 = phi ptr [ %.2236.i, %.lr.ph334.i ], [ %i.eh, %._crit_edge328.i.loopexit.us ]
  br i1 %.not311.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge335.i
  %i.el = getelementptr inbounds [2 x i8], ptr %2, i64 %i.eb
  %i.em = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.dv ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx428.i
  %.idx431.i = shl nuw nsw i64 %i.ec, 1
  %i.eo = icmp sgt i32 %i.da, 0
  br i1 %i.eo, label %.lr.ph341.i.preheader.us, label %.thread.i

.lr.ph341.i.preheader.us:                         ; preds = %bb.aa, %._crit_edge342.i.loopexit.us
  %.6232346.i.us = phi ptr [ %i.eu, %._crit_edge342.i.loopexit.us ], [ %i.em, %bb.aa ] ; 2 uses
  %.6240345.i.us = phi ptr [ %i.es, %._crit_edge342.i.loopexit.us ], [ %.us-phi173, %bb.aa ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.6232346.i.us, i64 %.idx431.i
  br label %.lr.ph341.i.us

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.us, %.lr.ph341.i.preheader.us
  %.7233339.i.us = phi ptr [ %i.er, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.es, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eq = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eq, ptr %.7241338.i.us, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.et = icmp ult ptr %i.er, %i.ep
  br i1 %i.et, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !101

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.eb ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %i.en
  br i1 %i.ev, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !102

.thread.i:                                        ; preds = %._crit_edge342.i.loopexit.us, %bb.aa, %bb.z, %._crit_edge335.i, %.loopexit313.i
  %i.ew = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %i.ex = sext i32 %i.cw to i64                   ; 2 uses
  br i1 %i.ew, label %.lr.ph60.i.i, label %.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge

.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge:    ; preds = %.thread.i
  %.pre = shl nsw i64 %i.ex, 2
  br label %zywrle_rgbyuv_16le.exit.i

.lr.ph60.i.i:                                     ; preds = %.thread.i
  %i.ey = sext i32 %i.da to i64
  %.idx62.i.i = shl nsw i64 %i.ex, 2              ; 4 uses
  %i.ez = icmp sgt i32 %i.cw, 0
  br i1 %i.ez, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.lr.ph60.i.i, %._crit_edge.i.loopexit.us.i
  %.04558.i.us.i = phi ptr [ %.lcssa344, %._crit_edge.i.loopexit.us.i ], [ %i.cv, %.lr.ph60.i.i ] ; 32 uses
  %.04657.i.us.i = phi ptr [ %i.us, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
  %.04558.i.us.i352 = ptrtoaddr ptr %.04558.i.us.i to i64 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.04558.i.us.i, i64 %.idx62.i.i
  %i.fb = add i64 %.idx62.i.i, %.04558.i.us.i352
  %i.fc = add i64 %.04558.i.us.i352, 4
  %umax356 = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fc)
  %i.fd = xor i64 %.04558.i.us.i352, -1
  %i.fe = add i64 %umax356, %i.fd                 ; 3 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fe, 28
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.04558.i.us.i, i64 3
  %i.fh = add i64 %.idx62.i.i, %.04558.i.us.i352
  %i.fi = add i64 %.04558.i.us.i352, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.fi)
  %i.fj = xor i64 %.04558.i.us.i352, -1
  %i.fk = add i64 %umax, %i.fj                    ; 2 uses
  %6 = and i64 %i.fk, -4
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %6
  %scevgep354 = getelementptr i8, ptr %.04657.i.us.i, i64 2
  %7 = lshr i64 %i.fk, 1
  %8 = and i64 %7, 9223372036854775806
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %8
  %bound0 = icmp ult ptr %.04558.i.us.i, %scevgep355
  %bound1 = icmp ult ptr %.04657.i.us.i, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fe, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fl = and i64 %i.fg, 8
  %n.vec = and i64 %i.fg, 9223372036854775792     ; 5 uses
  %i.fm = shl i64 %n.vec, 2
  %i.fn = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fm ; 2 uses
  %i.fo = shl nuw i64 %n.vec, 1
  %i.fp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fq = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fs, i64 8
  %i.ft = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.ft, i64 12
  %i.fu = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fu, i64 16
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fv, i64 20
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.fw, i64 24
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.fx, i64 28
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.fy, i64 32
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep366 = getelementptr i8, ptr %i.fz, i64 36
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.ga, i64 40
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.gb, i64 44
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep369 = getelementptr i8, ptr %i.gc, i64 48
  %i.gd = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.gd, i64 52
  %i.ge = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep371 = getelementptr i8, ptr %i.ge, i64 56
  %i.gf = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep372 = getelementptr i8, ptr %i.gf, i64 60
  %i.gg = shl i64 %index, 1                       ; 16 uses
  %next.gep373 = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %i.gh = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.gh, i64 2
  %i.gi = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.gi, i64 4
  %i.gj = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gj, i64 6
  %i.gk = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.gl, i64 10
  %i.gm = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.gm, i64 12
  %i.gn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.gn, i64 14
  %i.go = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep381 = getelementptr i8, ptr %i.go, i64 16
  %i.gp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.gp, i64 18
  %i.gq = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.gq, i64 20
  %i.gr = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gr, i64 22
  %i.gs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gs, i64 24
  %i.gt = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.gt, i64 26
  %i.gu = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.gu, i64 28
  %i.gv = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.gv, i64 30
  %i.gw = getelementptr inbounds nuw i8, ptr %next.gep373, i64 1
  %i.gx = getelementptr i8, ptr %i.gh, i64 3
  %i.gy = getelementptr i8, ptr %i.gi, i64 5
  %i.gz = getelementptr i8, ptr %i.gj, i64 7
  %i.ha = getelementptr i8, ptr %i.gk, i64 9
  %i.hb = getelementptr i8, ptr %i.gl, i64 11
  %i.hc = getelementptr i8, ptr %i.gm, i64 13
  %i.hd = getelementptr i8, ptr %i.gn, i64 15
  %i.he = getelementptr i8, ptr %i.go, i64 17
  %i.hf = getelementptr i8, ptr %i.gp, i64 19
  %i.hg = getelementptr i8, ptr %i.gq, i64 21
  %i.hh = getelementptr i8, ptr %i.gr, i64 23
  %i.hi = getelementptr i8, ptr %i.gs, i64 25
  %i.hj = getelementptr i8, ptr %i.gt, i64 27
  %i.hk = getelementptr i8, ptr %i.gu, i64 29
  %i.hl = getelementptr i8, ptr %i.gv, i64 31
  %i.hm = load i8, ptr %i.gw, align 1, !alias.scope !124
  %i.hn = load i8, ptr %i.gx, align 1, !alias.scope !124
  %i.ho = load i8, ptr %i.gy, align 1, !alias.scope !124
  %i.hp = load i8, ptr %i.gz, align 1, !alias.scope !124
  %i.hq = load i8, ptr %i.ha, align 1, !alias.scope !124
  %i.hr = load i8, ptr %i.hb, align 1, !alias.scope !124
  %i.hs = load i8, ptr %i.hc, align 1, !alias.scope !124
  %i.ht = load i8, ptr %i.hd, align 1, !alias.scope !124
  %i.hu = load i8, ptr %i.he, align 1, !alias.scope !124
  %i.hv = load i8, ptr %i.hf, align 1, !alias.scope !124
  %i.hw = load i8, ptr %i.hg, align 1, !alias.scope !124
  %i.hx = load i8, ptr %i.hh, align 1, !alias.scope !124
  %i.hy = load i8, ptr %i.hi, align 1, !alias.scope !124
  %i.hz = load i8, ptr %i.hj, align 1, !alias.scope !124
  %i.ia = load i8, ptr %i.hk, align 1, !alias.scope !124
  %i.ib = load i8, ptr %i.hl, align 1, !alias.scope !124
  %i.ic = insertelement <16 x i8> poison, i8 %i.hm, i64 0
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 1
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 2
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 3
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 4
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 5
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 6
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 7
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 8
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 9
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 10
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 11
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 12
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 13
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 14
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 15
  %i.is = zext <16 x i8> %i.ir to <16 x i32>      ; 3 uses
  %i.it = and <16 x i32> %i.is, splat (i32 248)
  %i.iu = shl nuw nsw <16 x i32> %i.is, splat (i32 5)
  %i.iv = load i8, ptr %next.gep373, align 1, !alias.scope !124
  %i.iw = load i8, ptr %next.gep374, align 1, !alias.scope !124
  %i.ix = load i8, ptr %next.gep375, align 1, !alias.scope !124
  %i.iy = load i8, ptr %next.gep376, align 1, !alias.scope !124
  %i.iz = load i8, ptr %next.gep377, align 1, !alias.scope !124
  %i.ja = load i8, ptr %next.gep378, align 1, !alias.scope !124
  %i.jb = load i8, ptr %next.gep379, align 1, !alias.scope !124
  %i.jc = load i8, ptr %next.gep380, align 1, !alias.scope !124
  %i.jd = load i8, ptr %next.gep381, align 1, !alias.scope !124
  %i.je = load i8, ptr %next.gep382, align 1, !alias.scope !124
  %i.jf = load i8, ptr %next.gep383, align 1, !alias.scope !124
  %i.jg = load i8, ptr %next.gep384, align 1, !alias.scope !124
  %i.jh = load i8, ptr %next.gep385, align 1, !alias.scope !124
  %i.ji = load i8, ptr %next.gep386, align 1, !alias.scope !124
  %i.jj = load i8, ptr %next.gep387, align 1, !alias.scope !124
  %i.jk = load i8, ptr %next.gep388, align 1, !alias.scope !124
  %i.jl = insertelement <16 x i8> poison, i8 %i.iv, i64 0
  %i.jm = insertelement <16 x i8> %i.jl, i8 %i.iw, i64 1
  %i.jn = insertelement <16 x i8> %i.jm, i8 %i.ix, i64 2
  %i.jo = insertelement <16 x i8> %i.jn, i8 %i.iy, i64 3
  %i.jp = insertelement <16 x i8> %i.jo, i8 %i.iz, i64 4
  %i.jq = insertelement <16 x i8> %i.jp, i8 %i.ja, i64 5
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 6
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 7
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 8
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 9
  %i.jv = insertelement <16 x i8> %i.ju, i8 %i.jf, i64 10
  %i.jw = insertelement <16 x i8> %i.jv, i8 %i.jg, i64 11
  %i.jx = insertelement <16 x i8> %i.jw, i8 %i.jh, i64 12
  %i.jy = insertelement <16 x i8> %i.jx, i8 %i.ji, i64 13
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 14
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 15
  %i.kb = zext <16 x i8> %i.ka to <16 x i32>      ; 2 uses
  %i.kc = lshr <16 x i32> %i.kb, splat (i32 3)
  %i.kd = or disjoint <16 x i32> %i.kc, %i.iu
  %i.ke = and <16 x i32> %i.kd, splat (i32 252)   ; 3 uses
  %i.kf = shl nuw nsw <16 x i32> %i.kb, splat (i32 3)
  %i.kg = and <16 x i32> %i.kf, splat (i32 248)   ; 2 uses
  %i.kh = shl nuw nsw <16 x i32> %i.ke, splat (i32 1)
  %i.ki = add nuw nsw <16 x i32> %i.kg, %i.is
  %i.kj = add nuw nsw <16 x i32> %i.ki, %i.kh
  %i.kk = lshr <16 x i32> %i.kj, splat (i32 2)
  %i.kl = sub nsw <16 x i32> %i.kg, %i.ke
  %i.km = sub nsw <16 x i32> %i.it, %i.ke
  %i.kn = ashr exact <16 x i32> %i.kl, splat (i32 1)
  %i.ko = ashr exact <16 x i32> %i.km, splat (i32 1)
  %i.kp = and <16 x i32> %i.kk, splat (i32 252)   ; 2 uses
  %i.kq = and <16 x i32> %i.kn, splat (i32 -8)    ; 2 uses
  %i.kr = and <16 x i32> %i.ko, splat (i32 -8)    ; 2 uses
  %i.ks = icmp eq <16 x i32> %i.kp, zeroinitializer
  %i.kt = icmp eq <16 x i32> %i.kq, splat (i32 -128)
  %i.ku = icmp eq <16 x i32> %i.kr, splat (i32 -128)
  %i.kv = trunc <16 x i32> %i.kr to <16 x i8>
  %i.kw = select <16 x i1> %i.ku, <16 x i8> splat (i8 -120), <16 x i8> %i.kv ; 16 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ky = getelementptr i8, ptr %i.fr, i64 6
  %i.kz = getelementptr i8, ptr %i.fs, i64 10
  %i.la = getelementptr i8, ptr %i.ft, i64 14
  %i.lb = getelementptr i8, ptr %i.fu, i64 18
  %i.lc = getelementptr i8, ptr %i.fv, i64 22
  %i.ld = getelementptr i8, ptr %i.fw, i64 26
  %i.le = getelementptr i8, ptr %i.fx, i64 30
  %i.lf = getelementptr i8, ptr %i.fy, i64 34
  %i.lg = getelementptr i8, ptr %i.fz, i64 38
  %i.lh = getelementptr i8, ptr %i.ga, i64 42
end_hunk_1
begin_hunk_2_@zrle_encode_tile15be:bb.a

.lr.ph194.backedge:                               ; preds = %bb.u, %.thread
  %.0118191.be = phi i8 [ 0, %.thread ], [ %i.ck, %bb.u ]
  br label %.lr.ph194, !llvm.loop !134

.thread:                                          ; preds = %.lr.ph194
  %i.cn = trunc i32 %i.cj to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cn) #9
  %i.co = icmp ult ptr %i.ce, %i.cd
  br i1 %i.co, label %.lr.ph194.backedge, label %._crit_edge195.thread

._crit_edge195:                                   ; preds = %bb.u
  %.not135 = icmp eq i8 %i.ck, 0
  br i1 %.not135, label %._crit_edge195.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge195
  %i.cp = trunc i32 %i.cj to i16
  %narrow = sub nuw nsw i8 8, %i.ck
  %i.cq = zext nneg i8 %narrow to i16
  %i.cr = shl i16 %i.cp, %i.cq
  %i.cs = trunc i16 %i.cr to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cs) #9
  br label %._crit_edge195.thread

._crit_edge195.thread:                            ; preds = %.thread, %bb.t, %bb.v, %._crit_edge195
  %.6.lcssa285 = phi ptr [ %.5200, %bb.t ], [ %i.ce, %bb.v ], [ %i.ce, %._crit_edge195 ], [ %i.ce, %.thread ]
  %i.ct = add nuw nsw i32 %.1124199, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !135

.thread145:                                       ; preds = %.thread144
  %i.cu = add nsw i32 %5, -1                      ; 2 uses
  %or.cond137 = icmp ult i32 %i.cu, 127
  br i1 %or.cond137, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %.thread145
  %i.cv = getelementptr i8, ptr %0, i64 86848     ; 7 uses
  %notmask.i.i = shl nsw i32 -1, %5               ; 2 uses
  %i.cw = and i32 %notmask.i.i, %3                ; 13 uses
  %i.cx = and i32 %notmask.i.i, %4                ; 7 uses
  %i.cy = icmp eq i32 %i.cw, 0
  %i.cz = icmp eq i32 %i.cx, 0
  %or.cond.i = or i1 %i.cy, %i.cz
  br i1 %or.cond.i, label %zywrle_analyze_15be.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = sub i32 %3, %i.cw                       ; 5 uses
  %i.db = sub i32 %4, %i.cx
  %i.dc = mul i32 %i.cw, %i.cx                    ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %.idx432.i = shl nsw i64 %i.dd, 2               ; 8 uses
  %i.de = getelementptr i8, ptr %i.cv, i64 %.idx432.i ; 12 uses
  %.not311.i = icmp eq i32 %3, %i.cw              ; 2 uses
  br i1 %.not311.i, label %.loopexit313.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = sext i32 %i.cw to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.df ; 2 uses
  %i.dh = mul i32 %i.cx, %3                       ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %.idx.i = shl nsw i64 %i.di, 1
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %.idx.i
  %i.dk = icmp sgt i32 %i.dh, 0
  br i1 %i.dk, label %.lr.ph321.i, label %.loopexit313.i

.lr.ph321.i:                                      ; preds = %bb.y
  %i.dl = sext i32 %i.da to i64
  %.idx427.i = shl nuw nsw i64 %i.dl, 1
  %i.dm = icmp sgt i32 %i.da, 0
  br i1 %i.dm, label %.lr.ph.i.preheader.us, label %.loopexit313.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph321.i, %._crit_edge.i.loopexit.us
  %.0226319.i.us = phi ptr [ %i.ds, %._crit_edge.i.loopexit.us ], [ %i.dg, %.lr.ph321.i ] ; 2 uses
  %.0234318.i.us = phi ptr [ %i.dq, %._crit_edge.i.loopexit.us ], [ %i.de, %.lr.ph321.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0226319.i.us, i64 %.idx427.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.1227316.i.us = phi ptr [ %i.dp, %.lr.ph.i.us ], [ %.0226319.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.1235315.i.us = phi ptr [ %i.dq, %.lr.ph.i.us ], [ %.0234318.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.do = load i16, ptr %.1227316.i.us, align 2
  store i16 %i.do, ptr %.1235315.i.us, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.1227316.i.us, i64 2 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1235315.i.us, i64 4 ; 3 uses
  %i.dr = icmp ult ptr %i.dp, %i.dn
  br i1 %i.dr, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !136

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.df ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.dj
  br i1 %i.dt, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !137

.loopexit313.i:                                   ; preds = %._crit_edge.i.loopexit.us, %.lr.ph321.i, %bb.y, %bb.x
  %.2236.i = phi ptr [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.de, %.lr.ph321.i ], [ %i.dq, %._crit_edge.i.loopexit.us ] ; 2 uses
  %.not310.i = icmp eq i32 %4, %i.cx
  br i1 %.not310.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %.loopexit313.i
  %i.du = mul i32 %i.cx, %3
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dv ; 2 uses
  %i.dx = mul i32 %i.db, %3                       ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %.idx428.i = shl nsw i64 %i.dy, 1               ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 %.idx428.i
  %i.ea = icmp sgt i32 %i.dx, 0
  br i1 %i.ea, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %bb.z
  %i.eb = sext i32 %i.cw to i64                   ; 3 uses
  %i.ec = sext i32 %i.da to i64                   ; 2 uses
  %.idx429.i = shl nuw nsw i64 %i.eb, 1
  %i.ed = icmp sgt i32 %i.cw, 0
  br i1 %i.ed, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i

.lr.ph327.i.preheader.us:                         ; preds = %.lr.ph334.i, %._crit_edge328.i.loopexit.us
  %.3229332.i.us = phi ptr [ %i.ej, %._crit_edge328.i.loopexit.us ], [ %i.dw, %.lr.ph334.i ] ; 2 uses
  %.3237331.i.us = phi ptr [ %i.eh, %._crit_edge328.i.loopexit.us ], [ %.2236.i, %.lr.ph334.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.3229332.i.us, i64 %.idx429.i
  br label %.lr.ph327.i.us

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.us, %.lr.ph327.i.preheader.us
  %.4230325.i.us = phi ptr [ %i.eg, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.eh, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ef = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ef, ptr %.4238324.i.us, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.ei = icmp ult ptr %i.eg, %i.ee
  br i1 %i.ei, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !138

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.ec ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.dz
  br i1 %i.ek, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !139

._crit_edge335.i:                                 ; preds = %._crit_edge328.i.loopexit.us, %.lr.ph334.i
  %.us-phi173 = phi ptr [ %.2236.i, %.lr.ph334.i ], [ %i.eh, %._crit_edge328.i.loopexit.us ]
  br i1 %.not311.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge335.i
  %i.el = getelementptr inbounds [2 x i8], ptr %2, i64 %i.eb
  %i.em = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.dv ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx428.i
  %.idx431.i = shl nuw nsw i64 %i.ec, 1
  %i.eo = icmp sgt i32 %i.da, 0
  br i1 %i.eo, label %.lr.ph341.i.preheader.us, label %.thread.i

.lr.ph341.i.preheader.us:                         ; preds = %bb.aa, %._crit_edge342.i.loopexit.us
  %.6232346.i.us = phi ptr [ %i.eu, %._crit_edge342.i.loopexit.us ], [ %i.em, %bb.aa ] ; 2 uses
  %.6240345.i.us = phi ptr [ %i.es, %._crit_edge342.i.loopexit.us ], [ %.us-phi173, %bb.aa ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.6232346.i.us, i64 %.idx431.i
  br label %.lr.ph341.i.us

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.us, %.lr.ph341.i.preheader.us
  %.7233339.i.us = phi ptr [ %i.er, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.es, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eq = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eq, ptr %.7241338.i.us, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.et = icmp ult ptr %i.er, %i.ep
  br i1 %i.et, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !140

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.eb ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %i.en
  br i1 %i.ev, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !141

.thread.i:                                        ; preds = %._crit_edge342.i.loopexit.us, %bb.aa, %bb.z, %._crit_edge335.i, %.loopexit313.i
  %i.ew = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %i.ex = sext i32 %i.cw to i64                   ; 2 uses
  br i1 %i.ew, label %.lr.ph60.i.i, label %.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge

.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge:    ; preds = %.thread.i
  %.pre = shl nsw i64 %i.ex, 2
  br label %zywrle_rgbyuv_15be.exit.i

.lr.ph60.i.i:                                     ; preds = %.thread.i
  %i.ey = sext i32 %i.da to i64
  %.idx62.i.i = shl nsw i64 %i.ex, 2              ; 4 uses
  %i.ez = icmp sgt i32 %i.cw, 0
  br i1 %i.ez, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.lr.ph60.i.i, %._crit_edge.i.loopexit.us.i
  %.04558.i.us.i = phi ptr [ %.lcssa344, %._crit_edge.i.loopexit.us.i ], [ %i.cv, %.lr.ph60.i.i ] ; 32 uses
  %.04657.i.us.i = phi ptr [ %i.uv, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
  %.04558.i.us.i352 = ptrtoaddr ptr %.04558.i.us.i to i64 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.04558.i.us.i, i64 %.idx62.i.i
  %i.fb = add i64 %.idx62.i.i, %.04558.i.us.i352
  %i.fc = add i64 %.04558.i.us.i352, 4
  %umax356 = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fc)
  %i.fd = xor i64 %.04558.i.us.i352, -1
  %i.fe = add i64 %umax356, %i.fd                 ; 3 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fe, 28
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.04558.i.us.i, i64 3
  %i.fh = add i64 %.idx62.i.i, %.04558.i.us.i352
  %i.fi = add i64 %.04558.i.us.i352, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.fi)
  %i.fj = xor i64 %.04558.i.us.i352, -1
  %i.fk = add i64 %umax, %i.fj                    ; 2 uses
  %6 = and i64 %i.fk, -4
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %6
  %scevgep354 = getelementptr i8, ptr %.04657.i.us.i, i64 2
  %7 = lshr i64 %i.fk, 1
  %8 = and i64 %7, 9223372036854775806
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %8
  %bound0 = icmp ult ptr %.04558.i.us.i, %scevgep355
  %bound1 = icmp ult ptr %.04657.i.us.i, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fe, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fl = and i64 %i.fg, 8
  %n.vec = and i64 %i.fg, 9223372036854775792     ; 5 uses
  %i.fm = shl i64 %n.vec, 2
  %i.fn = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fm ; 2 uses
  %i.fo = shl nuw i64 %n.vec, 1
  %i.fp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fq = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fs, i64 8
  %i.ft = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.ft, i64 12
  %i.fu = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fu, i64 16
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fv, i64 20
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.fw, i64 24
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.fx, i64 28
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.fy, i64 32
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep366 = getelementptr i8, ptr %i.fz, i64 36
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.ga, i64 40
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.gb, i64 44
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep369 = getelementptr i8, ptr %i.gc, i64 48
  %i.gd = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.gd, i64 52
  %i.ge = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep371 = getelementptr i8, ptr %i.ge, i64 56
  %i.gf = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep372 = getelementptr i8, ptr %i.gf, i64 60
  %i.gg = shl i64 %index, 1                       ; 16 uses
  %next.gep373 = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %i.gh = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.gh, i64 2
  %i.gi = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.gi, i64 4
  %i.gj = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gj, i64 6
  %i.gk = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.gl, i64 10
  %i.gm = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.gm, i64 12
  %i.gn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.gn, i64 14
  %i.go = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep381 = getelementptr i8, ptr %i.go, i64 16
  %i.gp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.gp, i64 18
  %i.gq = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.gq, i64 20
  %i.gr = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gr, i64 22
  %i.gs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gs, i64 24
  %i.gt = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.gt, i64 26
  %i.gu = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.gu, i64 28
  %i.gv = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.gv, i64 30
  %i.gw = load i8, ptr %next.gep373, align 1, !alias.scope !163
  %i.gx = load i8, ptr %next.gep374, align 1, !alias.scope !163
  %i.gy = load i8, ptr %next.gep375, align 1, !alias.scope !163
  %i.gz = load i8, ptr %next.gep376, align 1, !alias.scope !163
  %i.ha = load i8, ptr %next.gep377, align 1, !alias.scope !163
  %i.hb = load i8, ptr %next.gep378, align 1, !alias.scope !163
  %i.hc = load i8, ptr %next.gep379, align 1, !alias.scope !163
  %i.hd = load i8, ptr %next.gep380, align 1, !alias.scope !163
  %i.he = load i8, ptr %next.gep381, align 1, !alias.scope !163
  %i.hf = load i8, ptr %next.gep382, align 1, !alias.scope !163
  %i.hg = load i8, ptr %next.gep383, align 1, !alias.scope !163
  %i.hh = load i8, ptr %next.gep384, align 1, !alias.scope !163
  %i.hi = load i8, ptr %next.gep385, align 1, !alias.scope !163
  %i.hj = load i8, ptr %next.gep386, align 1, !alias.scope !163
  %i.hk = load i8, ptr %next.gep387, align 1, !alias.scope !163
  %i.hl = load i8, ptr %next.gep388, align 1, !alias.scope !163
  %i.hm = insertelement <16 x i8> poison, i8 %i.gw, i64 0
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 1
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 2
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 3
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 4
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 5
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 6
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 7
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 8
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 9
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 10
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 11
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 12
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 13
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 14
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 15
  %i.ic = zext <16 x i8> %i.ib to <16 x i32>      ; 2 uses
  %i.id = shl nuw nsw <16 x i32> %i.ic, splat (i32 1)
  %i.ie = and <16 x i32> %i.id, splat (i32 248)   ; 2 uses
  %i.if = shl nuw nsw <16 x i32> %i.ic, splat (i32 6)
  %i.ig = getelementptr inbounds nuw i8, ptr %next.gep373, i64 1
  %i.ih = getelementptr i8, ptr %i.gh, i64 3
  %i.ii = getelementptr i8, ptr %i.gi, i64 5
  %i.ij = getelementptr i8, ptr %i.gj, i64 7
  %i.ik = getelementptr i8, ptr %i.gk, i64 9
  %i.il = getelementptr i8, ptr %i.gl, i64 11
  %i.im = getelementptr i8, ptr %i.gm, i64 13
  %i.in = getelementptr i8, ptr %i.gn, i64 15
  %i.io = getelementptr i8, ptr %i.go, i64 17
  %i.ip = getelementptr i8, ptr %i.gp, i64 19
  %i.iq = getelementptr i8, ptr %i.gq, i64 21
  %i.ir = getelementptr i8, ptr %i.gr, i64 23
  %i.is = getelementptr i8, ptr %i.gs, i64 25
  %i.it = getelementptr i8, ptr %i.gt, i64 27
  %i.iu = getelementptr i8, ptr %i.gu, i64 29
  %i.iv = getelementptr i8, ptr %i.gv, i64 31
  %i.iw = load i8, ptr %i.ig, align 1, !alias.scope !163
  %i.ix = load i8, ptr %i.ih, align 1, !alias.scope !163
  %i.iy = load i8, ptr %i.ii, align 1, !alias.scope !163
  %i.iz = load i8, ptr %i.ij, align 1, !alias.scope !163
  %i.ja = load i8, ptr %i.ik, align 1, !alias.scope !163
  %i.jb = load i8, ptr %i.il, align 1, !alias.scope !163
  %i.jc = load i8, ptr %i.im, align 1, !alias.scope !163
  %i.jd = load i8, ptr %i.in, align 1, !alias.scope !163
  %i.je = load i8, ptr %i.io, align 1, !alias.scope !163
  %i.jf = load i8, ptr %i.ip, align 1, !alias.scope !163
  %i.jg = load i8, ptr %i.iq, align 1, !alias.scope !163
  %i.jh = load i8, ptr %i.ir, align 1, !alias.scope !163
  %i.ji = load i8, ptr %i.is, align 1, !alias.scope !163
  %i.jj = load i8, ptr %i.it, align 1, !alias.scope !163
  %i.jk = load i8, ptr %i.iu, align 1, !alias.scope !163
  %i.jl = load i8, ptr %i.iv, align 1, !alias.scope !163
  %i.jm = insertelement <16 x i8> poison, i8 %i.iw, i64 0
  %i.jn = insertelement <16 x i8> %i.jm, i8 %i.ix, i64 1
  %i.jo = insertelement <16 x i8> %i.jn, i8 %i.iy, i64 2
  %i.jp = insertelement <16 x i8> %i.jo, i8 %i.iz, i64 3
  %i.jq = insertelement <16 x i8> %i.jp, i8 %i.ja, i64 4
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 5
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 6
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 7
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 8
  %i.jv = insertelement <16 x i8> %i.ju, i8 %i.jf, i64 9
  %i.jw = insertelement <16 x i8> %i.jv, i8 %i.jg, i64 10
  %i.jx = insertelement <16 x i8> %i.jw, i8 %i.jh, i64 11
  %i.jy = insertelement <16 x i8> %i.jx, i8 %i.ji, i64 12
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 13
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 14
  %i.kb = insertelement <16 x i8> %i.ka, i8 %i.jl, i64 15
  %i.kc = zext <16 x i8> %i.kb to <16 x i32>      ; 2 uses
  %i.kd = lshr <16 x i32> %i.kc, splat (i32 2)
  %i.ke = or disjoint <16 x i32> %i.kd, %i.if
  %i.kf = and <16 x i32> %i.ke, splat (i32 248)   ; 3 uses
  %i.kg = shl nuw nsw <16 x i32> %i.kc, splat (i32 3)
  %i.kh = and <16 x i32> %i.kg, splat (i32 248)   ; 2 uses
  %i.ki = shl nuw nsw <16 x i32> %i.kf, splat (i32 1)
  %i.kj = add nuw nsw <16 x i32> %i.kh, %i.ie
  %i.kk = add nuw nsw <16 x i32> %i.kj, %i.ki
  %i.kl = lshr exact <16 x i32> %i.kk, splat (i32 2)
  %i.km = sub nsw <16 x i32> %i.kh, %i.kf
  %i.kn = sub nsw <16 x i32> %i.ie, %i.kf
  %i.ko = ashr exact <16 x i32> %i.km, splat (i32 1)
  %i.kp = ashr exact <16 x i32> %i.kn, splat (i32 1)
  %i.kq = and <16 x i32> %i.kl, splat (i32 248)   ; 2 uses
  %i.kr = and <16 x i32> %i.ko, splat (i32 -8)    ; 2 uses
  %i.ks = and <16 x i32> %i.kp, splat (i32 -8)    ; 2 uses
  %i.kt = icmp eq <16 x i32> %i.kq, zeroinitializer
  %i.ku = icmp eq <16 x i32> %i.kr, splat (i32 -128)
  %i.kv = icmp eq <16 x i32> %i.ks, splat (i32 -128)
  %i.kw = trunc <16 x i32> %i.ks to <16 x i8>
  %i.kx = select <16 x i1> %i.kv, <16 x i8> splat (i8 -120), <16 x i8> %i.kw ; 16 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.kz = getelementptr i8, ptr %i.fr, i64 6
  %i.la = getelementptr i8, ptr %i.fs, i64 10
  %i.lb = getelementptr i8, ptr %i.ft, i64 14
  %i.lc = getelementptr i8, ptr %i.fu, i64 18
  %i.ld = getelementptr i8, ptr %i.fv, i64 22
  %i.le = getelementptr i8, ptr %i.fw, i64 26
  %i.lf = getelementptr i8, ptr %i.fx, i64 30
  %i.lg = getelementptr i8, ptr %i.fy, i64 34
  %i.lh = getelementptr i8, ptr %i.fz, i64 38
end_hunk_2
begin_hunk_3_@zrle_encode_tile15le:bb.a

.lr.ph194.backedge:                               ; preds = %bb.u, %.thread
  %.0118191.be = phi i8 [ 0, %.thread ], [ %i.ck, %bb.u ]
  br label %.lr.ph194, !llvm.loop !173

.thread:                                          ; preds = %.lr.ph194
  %i.cn = trunc i32 %i.cj to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cn) #9
  %i.co = icmp ult ptr %i.ce, %i.cd
  br i1 %i.co, label %.lr.ph194.backedge, label %._crit_edge195.thread

._crit_edge195:                                   ; preds = %bb.u
  %.not135 = icmp eq i8 %i.ck, 0
  br i1 %.not135, label %._crit_edge195.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge195
  %i.cp = trunc i32 %i.cj to i16
  %narrow = sub nuw nsw i8 8, %i.ck
  %i.cq = zext nneg i8 %narrow to i16
  %i.cr = shl i16 %i.cp, %i.cq
  %i.cs = trunc i16 %i.cr to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cs) #9
  br label %._crit_edge195.thread

._crit_edge195.thread:                            ; preds = %.thread, %bb.t, %bb.v, %._crit_edge195
  %.6.lcssa285 = phi ptr [ %.5200, %bb.t ], [ %i.ce, %bb.v ], [ %i.ce, %._crit_edge195 ], [ %i.ce, %.thread ]
  %i.ct = add nuw nsw i32 %.1124199, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !174

.thread145:                                       ; preds = %.thread144
  %i.cu = add nsw i32 %5, -1                      ; 2 uses
  %or.cond137 = icmp ult i32 %i.cu, 127
  br i1 %or.cond137, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %.thread145
  %i.cv = getelementptr i8, ptr %0, i64 86848     ; 7 uses
  %notmask.i.i = shl nsw i32 -1, %5               ; 2 uses
  %i.cw = and i32 %notmask.i.i, %3                ; 13 uses
  %i.cx = and i32 %notmask.i.i, %4                ; 7 uses
  %i.cy = icmp eq i32 %i.cw, 0
  %i.cz = icmp eq i32 %i.cx, 0
  %or.cond.i = or i1 %i.cy, %i.cz
  br i1 %or.cond.i, label %zywrle_analyze_15le.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = sub i32 %3, %i.cw                       ; 5 uses
  %i.db = sub i32 %4, %i.cx
  %i.dc = mul i32 %i.cw, %i.cx                    ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %.idx432.i = shl nsw i64 %i.dd, 2               ; 8 uses
  %i.de = getelementptr i8, ptr %i.cv, i64 %.idx432.i ; 12 uses
  %.not311.i = icmp eq i32 %3, %i.cw              ; 2 uses
  br i1 %.not311.i, label %.loopexit313.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = sext i32 %i.cw to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.df ; 2 uses
  %i.dh = mul i32 %i.cx, %3                       ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %.idx.i = shl nsw i64 %i.di, 1
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %.idx.i
  %i.dk = icmp sgt i32 %i.dh, 0
  br i1 %i.dk, label %.lr.ph321.i, label %.loopexit313.i

.lr.ph321.i:                                      ; preds = %bb.y
  %i.dl = sext i32 %i.da to i64
  %.idx427.i = shl nuw nsw i64 %i.dl, 1
  %i.dm = icmp sgt i32 %i.da, 0
  br i1 %i.dm, label %.lr.ph.i.preheader.us, label %.loopexit313.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph321.i, %._crit_edge.i.loopexit.us
  %.0226319.i.us = phi ptr [ %i.ds, %._crit_edge.i.loopexit.us ], [ %i.dg, %.lr.ph321.i ] ; 2 uses
  %.0234318.i.us = phi ptr [ %i.dq, %._crit_edge.i.loopexit.us ], [ %i.de, %.lr.ph321.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0226319.i.us, i64 %.idx427.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.1227316.i.us = phi ptr [ %i.dp, %.lr.ph.i.us ], [ %.0226319.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.1235315.i.us = phi ptr [ %i.dq, %.lr.ph.i.us ], [ %.0234318.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.do = load i16, ptr %.1227316.i.us, align 2
  store i16 %i.do, ptr %.1235315.i.us, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.1227316.i.us, i64 2 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1235315.i.us, i64 4 ; 3 uses
  %i.dr = icmp ult ptr %i.dp, %i.dn
  br i1 %i.dr, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !175

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.df ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.dj
  br i1 %i.dt, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !176

.loopexit313.i:                                   ; preds = %._crit_edge.i.loopexit.us, %.lr.ph321.i, %bb.y, %bb.x
  %.2236.i = phi ptr [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.de, %.lr.ph321.i ], [ %i.dq, %._crit_edge.i.loopexit.us ] ; 2 uses
  %.not310.i = icmp eq i32 %4, %i.cx
  br i1 %.not310.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %.loopexit313.i
  %i.du = mul i32 %i.cx, %3
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dv ; 2 uses
  %i.dx = mul i32 %i.db, %3                       ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %.idx428.i = shl nsw i64 %i.dy, 1               ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 %.idx428.i
  %i.ea = icmp sgt i32 %i.dx, 0
  br i1 %i.ea, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %bb.z
  %i.eb = sext i32 %i.cw to i64                   ; 3 uses
  %i.ec = sext i32 %i.da to i64                   ; 2 uses
  %.idx429.i = shl nuw nsw i64 %i.eb, 1
  %i.ed = icmp sgt i32 %i.cw, 0
  br i1 %i.ed, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i

.lr.ph327.i.preheader.us:                         ; preds = %.lr.ph334.i, %._crit_edge328.i.loopexit.us
  %.3229332.i.us = phi ptr [ %i.ej, %._crit_edge328.i.loopexit.us ], [ %i.dw, %.lr.ph334.i ] ; 2 uses
  %.3237331.i.us = phi ptr [ %i.eh, %._crit_edge328.i.loopexit.us ], [ %.2236.i, %.lr.ph334.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.3229332.i.us, i64 %.idx429.i
  br label %.lr.ph327.i.us

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.us, %.lr.ph327.i.preheader.us
  %.4230325.i.us = phi ptr [ %i.eg, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.eh, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ef = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ef, ptr %.4238324.i.us, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.ei = icmp ult ptr %i.eg, %i.ee
  br i1 %i.ei, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !177

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.ec ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.dz
  br i1 %i.ek, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !178

._crit_edge335.i:                                 ; preds = %._crit_edge328.i.loopexit.us, %.lr.ph334.i
  %.us-phi173 = phi ptr [ %.2236.i, %.lr.ph334.i ], [ %i.eh, %._crit_edge328.i.loopexit.us ]
  br i1 %.not311.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge335.i
  %i.el = getelementptr inbounds [2 x i8], ptr %2, i64 %i.eb
  %i.em = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.dv ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx428.i
  %.idx431.i = shl nuw nsw i64 %i.ec, 1
  %i.eo = icmp sgt i32 %i.da, 0
  br i1 %i.eo, label %.lr.ph341.i.preheader.us, label %.thread.i

.lr.ph341.i.preheader.us:                         ; preds = %bb.aa, %._crit_edge342.i.loopexit.us
  %.6232346.i.us = phi ptr [ %i.eu, %._crit_edge342.i.loopexit.us ], [ %i.em, %bb.aa ] ; 2 uses
  %.6240345.i.us = phi ptr [ %i.es, %._crit_edge342.i.loopexit.us ], [ %.us-phi173, %bb.aa ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.6232346.i.us, i64 %.idx431.i
  br label %.lr.ph341.i.us

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.us, %.lr.ph341.i.preheader.us
  %.7233339.i.us = phi ptr [ %i.er, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.es, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eq = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eq, ptr %.7241338.i.us, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.et = icmp ult ptr %i.er, %i.ep
  br i1 %i.et, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !179

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.eb ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %i.en
  br i1 %i.ev, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !180

.thread.i:                                        ; preds = %._crit_edge342.i.loopexit.us, %bb.aa, %bb.z, %._crit_edge335.i, %.loopexit313.i
  %i.ew = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %i.ex = sext i32 %i.cw to i64                   ; 2 uses
  br i1 %i.ew, label %.lr.ph60.i.i, label %.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge

.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge:    ; preds = %.thread.i
  %.pre = shl nsw i64 %i.ex, 2
  br label %zywrle_rgbyuv_15le.exit.i

.lr.ph60.i.i:                                     ; preds = %.thread.i
  %i.ey = sext i32 %i.da to i64
  %.idx62.i.i = shl nsw i64 %i.ex, 2              ; 4 uses
  %i.ez = icmp sgt i32 %i.cw, 0
  br i1 %i.ez, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.lr.ph60.i.i, %._crit_edge.i.loopexit.us.i
  %.04558.i.us.i = phi ptr [ %.lcssa344, %._crit_edge.i.loopexit.us.i ], [ %i.cv, %.lr.ph60.i.i ] ; 32 uses
  %.04657.i.us.i = phi ptr [ %i.uv, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
  %.04558.i.us.i352 = ptrtoaddr ptr %.04558.i.us.i to i64 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.04558.i.us.i, i64 %.idx62.i.i
  %i.fb = add i64 %.idx62.i.i, %.04558.i.us.i352
  %i.fc = add i64 %.04558.i.us.i352, 4
  %umax356 = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fc)
  %i.fd = xor i64 %.04558.i.us.i352, -1
  %i.fe = add i64 %umax356, %i.fd                 ; 3 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fe, 28
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.04558.i.us.i, i64 3
  %i.fh = add i64 %.idx62.i.i, %.04558.i.us.i352
  %i.fi = add i64 %.04558.i.us.i352, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.fi)
  %i.fj = xor i64 %.04558.i.us.i352, -1
  %i.fk = add i64 %umax, %i.fj                    ; 2 uses
  %6 = and i64 %i.fk, -4
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %6
  %scevgep354 = getelementptr i8, ptr %.04657.i.us.i, i64 2
  %7 = lshr i64 %i.fk, 1
  %8 = and i64 %7, 9223372036854775806
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %8
  %bound0 = icmp ult ptr %.04558.i.us.i, %scevgep355
  %bound1 = icmp ult ptr %.04657.i.us.i, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fe, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fl = and i64 %i.fg, 8
  %n.vec = and i64 %i.fg, 9223372036854775792     ; 5 uses
  %i.fm = shl i64 %n.vec, 2
  %i.fn = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fm ; 2 uses
  %i.fo = shl nuw i64 %n.vec, 1
  %i.fp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fq = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fs, i64 8
  %i.ft = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.ft, i64 12
  %i.fu = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fu, i64 16
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fv, i64 20
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.fw, i64 24
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.fx, i64 28
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.fy, i64 32
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep366 = getelementptr i8, ptr %i.fz, i64 36
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.ga, i64 40
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.gb, i64 44
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep369 = getelementptr i8, ptr %i.gc, i64 48
  %i.gd = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.gd, i64 52
  %i.ge = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep371 = getelementptr i8, ptr %i.ge, i64 56
  %i.gf = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 3 uses
  %next.gep372 = getelementptr i8, ptr %i.gf, i64 60
  %i.gg = shl i64 %index, 1                       ; 16 uses
  %next.gep373 = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %i.gh = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.gh, i64 2
  %i.gi = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.gi, i64 4
  %i.gj = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gj, i64 6
  %i.gk = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.gl, i64 10
  %i.gm = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.gm, i64 12
  %i.gn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.gn, i64 14
  %i.go = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep381 = getelementptr i8, ptr %i.go, i64 16
  %i.gp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.gp, i64 18
  %i.gq = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.gq, i64 20
  %i.gr = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gr, i64 22
  %i.gs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gs, i64 24
  %i.gt = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.gt, i64 26
  %i.gu = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.gu, i64 28
  %i.gv = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gg ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.gv, i64 30
  %i.gw = getelementptr inbounds nuw i8, ptr %next.gep373, i64 1
  %i.gx = getelementptr i8, ptr %i.gh, i64 3
  %i.gy = getelementptr i8, ptr %i.gi, i64 5
  %i.gz = getelementptr i8, ptr %i.gj, i64 7
  %i.ha = getelementptr i8, ptr %i.gk, i64 9
  %i.hb = getelementptr i8, ptr %i.gl, i64 11
  %i.hc = getelementptr i8, ptr %i.gm, i64 13
  %i.hd = getelementptr i8, ptr %i.gn, i64 15
  %i.he = getelementptr i8, ptr %i.go, i64 17
  %i.hf = getelementptr i8, ptr %i.gp, i64 19
  %i.hg = getelementptr i8, ptr %i.gq, i64 21
  %i.hh = getelementptr i8, ptr %i.gr, i64 23
  %i.hi = getelementptr i8, ptr %i.gs, i64 25
  %i.hj = getelementptr i8, ptr %i.gt, i64 27
  %i.hk = getelementptr i8, ptr %i.gu, i64 29
  %i.hl = getelementptr i8, ptr %i.gv, i64 31
  %i.hm = load i8, ptr %i.gw, align 1, !alias.scope !202
  %i.hn = load i8, ptr %i.gx, align 1, !alias.scope !202
  %i.ho = load i8, ptr %i.gy, align 1, !alias.scope !202
  %i.hp = load i8, ptr %i.gz, align 1, !alias.scope !202
  %i.hq = load i8, ptr %i.ha, align 1, !alias.scope !202
  %i.hr = load i8, ptr %i.hb, align 1, !alias.scope !202
  %i.hs = load i8, ptr %i.hc, align 1, !alias.scope !202
  %i.ht = load i8, ptr %i.hd, align 1, !alias.scope !202
  %i.hu = load i8, ptr %i.he, align 1, !alias.scope !202
  %i.hv = load i8, ptr %i.hf, align 1, !alias.scope !202
  %i.hw = load i8, ptr %i.hg, align 1, !alias.scope !202
  %i.hx = load i8, ptr %i.hh, align 1, !alias.scope !202
  %i.hy = load i8, ptr %i.hi, align 1, !alias.scope !202
  %i.hz = load i8, ptr %i.hj, align 1, !alias.scope !202
  %i.ia = load i8, ptr %i.hk, align 1, !alias.scope !202
  %i.ib = load i8, ptr %i.hl, align 1, !alias.scope !202
  %i.ic = insertelement <16 x i8> poison, i8 %i.hm, i64 0
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 1
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 2
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 3
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 4
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 5
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 6
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 7
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 8
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 9
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 10
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 11
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 12
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 13
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 14
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 15
  %i.is = zext <16 x i8> %i.ir to <16 x i32>      ; 2 uses
  %i.it = shl nuw nsw <16 x i32> %i.is, splat (i32 1)
  %i.iu = and <16 x i32> %i.it, splat (i32 248)   ; 2 uses
  %i.iv = shl nuw nsw <16 x i32> %i.is, splat (i32 6)
  %i.iw = load i8, ptr %next.gep373, align 1, !alias.scope !202
  %i.ix = load i8, ptr %next.gep374, align 1, !alias.scope !202
  %i.iy = load i8, ptr %next.gep375, align 1, !alias.scope !202
  %i.iz = load i8, ptr %next.gep376, align 1, !alias.scope !202
  %i.ja = load i8, ptr %next.gep377, align 1, !alias.scope !202
  %i.jb = load i8, ptr %next.gep378, align 1, !alias.scope !202
  %i.jc = load i8, ptr %next.gep379, align 1, !alias.scope !202
  %i.jd = load i8, ptr %next.gep380, align 1, !alias.scope !202
  %i.je = load i8, ptr %next.gep381, align 1, !alias.scope !202
  %i.jf = load i8, ptr %next.gep382, align 1, !alias.scope !202
  %i.jg = load i8, ptr %next.gep383, align 1, !alias.scope !202
  %i.jh = load i8, ptr %next.gep384, align 1, !alias.scope !202
  %i.ji = load i8, ptr %next.gep385, align 1, !alias.scope !202
  %i.jj = load i8, ptr %next.gep386, align 1, !alias.scope !202
  %i.jk = load i8, ptr %next.gep387, align 1, !alias.scope !202
  %i.jl = load i8, ptr %next.gep388, align 1, !alias.scope !202
  %i.jm = insertelement <16 x i8> poison, i8 %i.iw, i64 0
  %i.jn = insertelement <16 x i8> %i.jm, i8 %i.ix, i64 1
  %i.jo = insertelement <16 x i8> %i.jn, i8 %i.iy, i64 2
  %i.jp = insertelement <16 x i8> %i.jo, i8 %i.iz, i64 3
  %i.jq = insertelement <16 x i8> %i.jp, i8 %i.ja, i64 4
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 5
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 6
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 7
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 8
  %i.jv = insertelement <16 x i8> %i.ju, i8 %i.jf, i64 9
  %i.jw = insertelement <16 x i8> %i.jv, i8 %i.jg, i64 10
  %i.jx = insertelement <16 x i8> %i.jw, i8 %i.jh, i64 11
  %i.jy = insertelement <16 x i8> %i.jx, i8 %i.ji, i64 12
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 13
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 14
  %i.kb = insertelement <16 x i8> %i.ka, i8 %i.jl, i64 15
  %i.kc = zext <16 x i8> %i.kb to <16 x i32>      ; 2 uses
  %i.kd = lshr <16 x i32> %i.kc, splat (i32 2)
  %i.ke = or disjoint <16 x i32> %i.kd, %i.iv
  %i.kf = and <16 x i32> %i.ke, splat (i32 248)   ; 3 uses
  %i.kg = shl nuw nsw <16 x i32> %i.kc, splat (i32 3)
  %i.kh = and <16 x i32> %i.kg, splat (i32 248)   ; 2 uses
  %i.ki = shl nuw nsw <16 x i32> %i.kf, splat (i32 1)
  %i.kj = add nuw nsw <16 x i32> %i.kh, %i.iu
  %i.kk = add nuw nsw <16 x i32> %i.kj, %i.ki
  %i.kl = lshr exact <16 x i32> %i.kk, splat (i32 2)
  %i.km = sub nsw <16 x i32> %i.kh, %i.kf
  %i.kn = sub nsw <16 x i32> %i.iu, %i.kf
  %i.ko = ashr exact <16 x i32> %i.km, splat (i32 1)
  %i.kp = ashr exact <16 x i32> %i.kn, splat (i32 1)
  %i.kq = and <16 x i32> %i.kl, splat (i32 248)   ; 2 uses
  %i.kr = and <16 x i32> %i.ko, splat (i32 -8)    ; 2 uses
  %i.ks = and <16 x i32> %i.kp, splat (i32 -8)    ; 2 uses
  %i.kt = icmp eq <16 x i32> %i.kq, zeroinitializer
  %i.ku = icmp eq <16 x i32> %i.kr, splat (i32 -128)
  %i.kv = icmp eq <16 x i32> %i.ks, splat (i32 -128)
  %i.kw = trunc <16 x i32> %i.ks to <16 x i8>
  %i.kx = select <16 x i1> %i.kv, <16 x i8> splat (i8 -120), <16 x i8> %i.kw ; 16 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.kz = getelementptr i8, ptr %i.fr, i64 6
  %i.la = getelementptr i8, ptr %i.fs, i64 10
  %i.lb = getelementptr i8, ptr %i.ft, i64 14
  %i.lc = getelementptr i8, ptr %i.fu, i64 18
  %i.ld = getelementptr i8, ptr %i.fv, i64 22
  %i.le = getelementptr i8, ptr %i.fw, i64 26
  %i.lf = getelementptr i8, ptr %i.fx, i64 30
  %i.lg = getelementptr i8, ptr %i.fy, i64 34
  %i.lh = getelementptr i8, ptr %i.fz, i64 38
end_hunk_3
