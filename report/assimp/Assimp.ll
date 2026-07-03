inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL13stbi__do_zlibP10stbi__zbufPciii:bb.a
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i, %bb.dg
  %.promoted.i.i105.i.i = phi i32 [ %i.sl, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i ], [ %.promoted.i.i86.i54.i, %bb.dg ] ; 3 uses
  %i.so = phi i32 [ %i.sm, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i ], [ %i.qn, %bb.dg ] ; 4 uses
  %.060.i.i = phi i32 [ %i.sn, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i ], [ %i.rr, %bb.dg ] ; 12 uses
  %i.sp = icmp slt i32 %i.so, 16
  br i1 %i.sp, label %bb.dl, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i

bb.dl:                                            ; preds = %thread-pre-split.i.i
  %.val.i101.i.i = load ptr, ptr %0, align 8      ; 2 uses
  %.val20.i102.i.i = load ptr, ptr %i.ab, align 8 ; 3 uses
  %.not22.i103.i.i = icmp ult ptr %.val.i101.i.i, %.val20.i102.i.i
  br i1 %.not22.i103.i.i, label %.preheader.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sq = load i32, ptr %i.aa, align 4
  %.not18.i104.i.i = icmp eq i32 %i.sq, 0
  br i1 %.not18.i104.i.i, label %bb.dn, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i

bb.dn:                                            ; preds = %bb.dm
  store i32 1, ptr %i.aa, align 4
  %i.sr = add nsw i32 %i.so, 16                   ; 2 uses
  store i32 %i.sr, ptr %i.y, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i

.preheader.i:                                     ; preds = %bb.dl, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i
  %.val.i.i.i106.i.i = phi ptr [ %.val.i.i23.i111.i.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ], [ %.val.i101.i.i, %bb.dl ] ; 4 uses
  %i.ss = phi i32 [ %i.ta, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ], [ %i.so, %bb.dl ] ; 5 uses
  %i.st = phi i32 [ %i.sz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ], [ %.promoted.i.i105.i.i, %bb.dl ] ; 3 uses
  %.highbits.i.i107.i.i = lshr i32 %i.st, %i.ss
  %.not.i.i108.i.i = icmp eq i32 %.highbits.i.i107.i.i, 0
  br i1 %.not.i.i108.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.preheader.i
  store ptr %.val20.i102.i.i, ptr %0, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i

bb.dp:                                            ; preds = %.preheader.i
  %.not3.i.i.i109.i.i = icmp ult ptr %.val.i.i.i106.i.i, %.val20.i102.i.i
  br i1 %.not3.i.i.i109.i.i, label %bb.dq, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.su = getelementptr inbounds nuw i8, ptr %.val.i.i.i106.i.i, i64 1 ; 2 uses
  store ptr %i.su, ptr %0, align 8
  %i.sv = load i8, ptr %.val.i.i.i106.i.i, align 1
  %i.sw = zext i8 %i.sv to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i:    ; preds = %bb.dq, %bb.dp
  %.val.i.i23.i111.i.i = phi ptr [ %i.su, %bb.dq ], [ %.val.i.i.i106.i.i, %bb.dp ]
  %i.sx = phi i32 [ %i.sw, %bb.dq ], [ 0, %bb.dp ]
  %i.sy = shl i32 %i.sx, %i.ss
  %i.sz = or i32 %i.sy, %i.st                     ; 3 uses
  store i32 %i.sz, ptr %i.z, align 8
  %i.ta = add nsw i32 %i.ss, 8                    ; 3 uses
  store i32 %i.ta, ptr %i.y, align 8
  %i.tb = icmp slt i32 %i.ss, 17
  br i1 %i.tb, label %.preheader.i, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i, !llvm.loop !44

_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i:   ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i, %bb.do, %bb.dn, %thread-pre-split.i.i
  %i.tc = phi i32 [ %.promoted.i.i105.i.i, %thread-pre-split.i.i ], [ %i.st, %bb.do ], [ %.promoted.i.i105.i.i, %bb.dn ], [ %i.sz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ] ; 4 uses
  %i.td = phi i32 [ %i.so, %thread-pre-split.i.i ], [ %i.ss, %bb.do ], [ %i.sr, %bb.dn ], [ %i.ta, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ] ; 2 uses
  %i.te = and i32 %i.tc, 511
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.tf
  %i.th = load i16, ptr %i.tg, align 2            ; 2 uses
  %.not19.i94.i.i = icmp eq i16 %i.th, 0
  br i1 %.not19.i94.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i
  %i.ti = zext i16 %i.th to i32                   ; 2 uses
  %i.tj = lshr i32 %i.ti, 9                       ; 2 uses
  %i.tk = lshr i32 %i.tc, %i.tj                   ; 2 uses
  store i32 %i.tk, ptr %i.z, align 8
  %i.tl = sub nsw i32 %i.td, %i.tj                ; 2 uses
  store i32 %i.tl, ptr %i.y, align 8
  %i.tm = and i32 %i.ti, 511
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit112.i.i

bb.ds:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i
  %trunc.i.i.i.i96.i.i = trunc i32 %i.tc to i16
  %rev.i.i.i.i97.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i96.i.i)
  %i.tn = zext i16 %rev.i.i.i.i97.i.i to i32      ; 2 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %bb.ds
  %indvars.iv.i.i98.i.i = phi i64 [ %indvars.iv.next.i.i99.i.i, %bb.dt ], [ 10, %bb.ds ] ; 7 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i98.i.i
  %i.tp = load i32, ptr %i.to, align 4
  %i.tq = icmp sgt i32 %i.tp, %i.tn
  %indvars.iv.next.i.i99.i.i = add nuw nsw i64 %indvars.iv.i.i98.i.i, 1
  br i1 %i.tq, label %bb.du, label %bb.dt, !llvm.loop !51

bb.du:                                            ; preds = %bb.dt
  %i.tr = trunc nuw nsw i64 %indvars.iv.i.i98.i.i to i32 ; 3 uses
  %i.ts = icmp samesign ugt i64 %indvars.iv.i.i98.i.i, 15
  br i1 %i.ts, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.tt = sub nuw nsw i32 16, %i.tr
  %i.tu = lshr i32 %i.tn, %i.tt
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i98.i.i
  %i.tw = load i16, ptr %i.tv, align 2
  %i.tx = zext i16 %i.tw to i32
  %i.ty = sub nsw i32 %i.tu, %i.tx
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i98.i.i
  %i.ua = load i16, ptr %i.tz, align 2
  %i.ub = zext i16 %i.ua to i32
  %i.uc = add nsw i32 %i.ty, %i.ub                ; 2 uses
  %i.ud = icmp sgt i32 %i.uc, 287
  br i1 %i.ud, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ue = sext i32 %i.uc to i64                   ; 2 uses
  %i.uf = getelementptr inbounds i8, ptr %i.ar, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1
  %i.uh = zext i8 %i.ug to i64
  %.not.i21.i100.i.i = icmp eq i64 %indvars.iv.i.i98.i.i, %i.uh
  br i1 %.not.i21.i100.i.i, label %bb.dx, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i

bb.dx:                                            ; preds = %bb.dw
  %i.ui = lshr i32 %i.tc, %i.tr                   ; 2 uses
  store i32 %i.ui, ptr %i.z, align 8
  %i.uj = sub nsw i32 %i.td, %i.tr                ; 2 uses
  store i32 %i.uj, ptr %i.y, align 8
  %i.uk = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.ue
  %i.ul = load i16, ptr %i.uk, align 2
  %i.um = zext i16 %i.ul to i32
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit112.i.i

_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit112.i.i: ; preds = %bb.dx, %bb.dr
  %.promoted.i.i113.i.i = phi i32 [ %i.ui, %bb.dx ], [ %i.tk, %bb.dr ] ; 2 uses
  %i.un = phi i32 [ %i.uj, %bb.dx ], [ %i.tl, %bb.dr ] ; 3 uses
  %.0.i95.i.i = phi i32 [ %i.um, %bb.dx ], [ %i.tm, %bb.dr ] ; 3 uses
  %or.cond.i58.i = icmp samesign ugt i32 %.0.i95.i.i, 29
  br i1 %or.cond.i58.i, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.dy

bb.dy:                                            ; preds = %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit112.i.i
  %i.uo = zext nneg i32 %.0.i95.i.i to i64        ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr @_ZL16stbi__zdist_base, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4            ; 2 uses
  %.not76.i.i = icmp samesign ult i32 %.0.i95.i.i, 4
  br i1 %.not76.i.i, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr @_ZL17stbi__zdist_extra, i64 %i.uo
  %i.us = load i32, ptr %i.ur, align 4            ; 4 uses
  %i.ut = icmp slt i32 %i.un, %i.us
  br i1 %i.ut, label %.preheader194.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit122.i.i

.preheader194.i.i:                                ; preds = %bb.dz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i
  %i.uu = phi i32 [ %i.vd, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i ], [ %i.un, %bb.dz ] ; 5 uses
  %i.uv = phi i32 [ %i.vc, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i ], [ %.promoted.i.i113.i.i, %bb.dz ] ; 3 uses
  %.highbits.i.i116.i.i = lshr i32 %i.uv, %i.uu
  %.not.i.i117.i.i = icmp eq i32 %.highbits.i.i116.i.i, 0
  br i1 %.not.i.i117.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.preheader194.i.i
  %i.uw = load ptr, ptr %i.ab, align 8
  store ptr %i.uw, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit122.i.i

bb.eb:                                            ; preds = %.preheader194.i.i
  %.val.i.i.i118.i.i = load ptr, ptr %0, align 8  ; 3 uses
  %.val2.i.i.i119.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i120.i.i = icmp ult ptr %.val.i.i.i118.i.i, %.val2.i.i.i119.i.i
  br i1 %.not3.i.i.i120.i.i, label %bb.ec, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.ux = getelementptr inbounds nuw i8, ptr %.val.i.i.i118.i.i, i64 1
  store ptr %i.ux, ptr %0, align 8
  %i.uy = load i8, ptr %.val.i.i.i118.i.i, align 1
  %i.uz = zext i8 %i.uy to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i:    ; preds = %bb.ec, %bb.eb
  %i.va = phi i32 [ %i.uz, %bb.ec ], [ 0, %bb.eb ]
  %i.vb = shl i32 %i.va, %i.uu
  %i.vc = or i32 %i.vb, %i.uv                     ; 3 uses
  store i32 %i.vc, ptr %i.z, align 8
  %i.vd = add nsw i32 %i.uu, 8                    ; 3 uses
  store i32 %i.vd, ptr %i.y, align 8
  %i.ve = icmp slt i32 %i.uu, 17
  br i1 %i.ve, label %.preheader194.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit122.i.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit122.i.i:    ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i, %bb.ea, %bb.dz
  %i.vf = phi i32 [ %i.un, %bb.dz ], [ %i.uu, %bb.ea ], [ %i.vd, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i ]
  %i.vg = phi i32 [ %.promoted.i.i113.i.i, %bb.dz ], [ %i.uv, %bb.ea ], [ %i.vc, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i121.i.i ] ; 2 uses
  %notmask.i115.i.i = shl nsw i32 -1, %i.us
  %i.vh = xor i32 %notmask.i115.i.i, -1
  %i.vi = and i32 %i.vg, %i.vh
  %i.vj = lshr i32 %i.vg, %i.us
  store i32 %i.vj, ptr %i.z, align 8
  %i.vk = sub nsw i32 %i.vf, %i.us
  store i32 %i.vk, ptr %i.y, align 8
  %i.vl = add i32 %i.vi, %i.uq
  br label %bb.ed

bb.ed:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit122.i.i, %bb.dy
  %.059.i.i = phi i32 [ %i.vl, %_ZL14stbi__zreceiveP10stbi__zbufi.exit122.i.i ], [ %i.uq, %bb.dy ] ; 3 uses
  %i.vm = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.vn = ptrtoint ptr %.066.i.i to i64           ; 2 uses
  %i.vo = ptrtoint ptr %i.vm to i64               ; 2 uses
  %i.vp = sub i64 %i.vn, %i.vo                    ; 3 uses
  %i.vq = sext i32 %.059.i.i to i64               ; 2 uses
  %i.vr = icmp slt i64 %i.vp, %i.vq
  br i1 %i.vr, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vs = sext i32 %.060.i.i to i64
  %i.vt = load ptr, ptr %i.h, align 8
  %i.vu = ptrtoint ptr %i.vt to i64               ; 2 uses
  %i.vv = sub i64 %i.vu, %i.vn
  %i.vw = icmp slt i64 %i.vv, %i.vs
  br i1 %i.vw, label %bb.ef, label %bb.ej

bb.ef:                                            ; preds = %bb.ee
  store ptr %.066.i.i, ptr %i.e, align 8
  %i.vx = load i32, ptr %i.i, align 8
  %.not.i123.i.i = icmp eq i32 %i.vx, 0
  br i1 %.not.i123.i.i, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vy = trunc i64 %i.vp to i32                  ; 2 uses
  %i.vz = xor i32 %i.vy, -1
  %i.wa = icmp ugt i32 %.060.i.i, %i.vz
  br i1 %i.wa, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %.preheader.i124.i.i

.preheader.i124.i.i:                              ; preds = %bb.eg
  %i.wb = sub i64 %i.vu, %i.vo
  %i.wc = trunc i64 %i.wb to i32                  ; 3 uses
  %i.wd = add i32 %.060.i.i, %i.vy                ; 2 uses
  %i.we = icmp ugt i32 %i.wd, %i.wc
  br i1 %i.we, label %.lr.ph.i128.i.i, label %._crit_edge.i125.i.i

.lr.ph.i128.i.i:                                  ; preds = %.preheader.i124.i.i, %bb.eh
  %.02528.i129.i.i = phi i32 [ %i.wg, %bb.eh ], [ %i.wc, %.preheader.i124.i.i ] ; 2 uses
  %i.wf = icmp slt i32 %.02528.i129.i.i, 0
  br i1 %i.wf, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph.i128.i.i
  %i.wg = shl nuw i32 %.02528.i129.i.i, 1         ; 3 uses
  %i.wh = icmp ugt i32 %i.wd, %i.wg
  br i1 %i.wh, label %.lr.ph.i128.i.i, label %._crit_edge.i125.i.i, !llvm.loop !49

._crit_edge.i125.i.i:                             ; preds = %bb.eh, %.preheader.i124.i.i
  %.025.lcssa.i126.i.i = phi i32 [ %i.wc, %.preheader.i124.i.i ], [ %i.wg, %bb.eh ]
  %i.wi = zext i32 %.025.lcssa.i126.i.i to i64    ; 2 uses
  %i.wj = tail call ptr @realloc(ptr noundef %i.vm, i64 noundef %i.wi) #51 ; 4 uses
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge.i125.i.i
  store ptr %i.wj, ptr %i.d, align 8
  %i.wl = and i64 %i.vp, 4294967295
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wl ; 2 uses
  store ptr %i.wm, ptr %i.e, align 8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wi
  store ptr %i.wn, ptr %i.h, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ee
  %.268.i.i = phi ptr [ %i.wm, %bb.ei ], [ %.066.i.i, %bb.ee ] ; 10 uses
  %i.wo = sub nsw i64 0, %i.vq
  %i.wp = getelementptr inbounds i8, ptr %.268.i.i, i64 %i.wo ; 6 uses
  %i.wq = icmp eq i32 %.059.i.i, 1
  %.not80.i.i = icmp eq i32 %.060.i.i, 0          ; 2 uses
  br i1 %i.wq, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  br i1 %.not80.i.i, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ek
  %i.wr = load i8, ptr %i.wp, align 1
  %i.ws = zext i32 %.060.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.268.i.i, i8 %i.wr, i64 %i.ws, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %.268.i.i, i64 1
  %i.wt = add i32 %.060.i.i, -1
  %i.wu = zext i32 %i.wt to i64
  %scevgep229.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.wu
  br label %.loopexit.i.i

bb.el:                                            ; preds = %bb.ej
  br i1 %.not80.i.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.el
  %i.wv = zext i32 %.060.i.i to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %.060.i.i, 4
  %diff.check = icmp ult i32 %.059.i.i, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader145.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check455 = icmp ult i32 %.060.i.i, 32
  br i1 %min.iters.check455, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.wv, 28
  %n.vec = and i64 %i.wv, 4294967264              ; 6 uses
  %i.ww = getelementptr i8, ptr %.268.i.i, i64 %n.vec ; 2 uses
  %i.wx = getelementptr i8, ptr %i.wp, i64 %n.vec
  %i.wy = trunc nuw i64 %n.vec to i32
  %i.wz = sub i32 %.060.i.i, %i.wy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.268.i.i, i64 %index ; 2 uses
  %next.gep456 = getelementptr i8, ptr %i.wp, i64 %index ; 2 uses
  %i.xa = getelementptr i8, ptr %next.gep456, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep456, align 1
  %wide.load457 = load <16 x i8>, ptr %i.xa, align 1
  %i.xb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load457, ptr %i.xb, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xc = icmp eq i64 %index.next, %n.vec
  br i1 %i.xc, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.wv
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader145.i.i.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec461 = and i64 %i.wv, 4294967292           ; 5 uses
  %i.xd = getelementptr i8, ptr %.268.i.i, i64 %n.vec461 ; 2 uses
  %i.xe = getelementptr i8, ptr %i.wp, i64 %n.vec461
  %i.xf = trunc nuw i64 %n.vec461 to i32
  %i.xg = sub i32 %.060.i.i, %i.xf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index462 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next466, %vec.epilog.vector.body ] ; 3 uses
  %next.gep463 = getelementptr i8, ptr %.268.i.i, i64 %index462
  %next.gep464 = getelementptr i8, ptr %i.wp, i64 %index462
  %wide.load465 = load <4 x i8>, ptr %next.gep464, align 1
  store <4 x i8> %wide.load465, ptr %next.gep463, align 1
  %index.next466 = add nuw i64 %index462, 4       ; 2 uses
  %i.xh = icmp eq i64 %index.next466, %n.vec461
  br i1 %i.xh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !55

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n467 = icmp eq i64 %n.vec461, %i.wv
  br i1 %cmp.n467, label %.loopexit.i.i, label %.preheader145.i.i.preheader

.preheader145.i.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5.i.i.ph = phi ptr [ %.268.i.i, %iter.check ], [ %i.ww, %vec.epilog.iter.check ], [ %i.xd, %vec.epilog.middle.block ] ; 2 uses
  %.063.i.i.ph = phi ptr [ %i.wp, %iter.check ], [ %i.wx, %vec.epilog.iter.check ], [ %i.xe, %vec.epilog.middle.block ] ; 2 uses
  %.262.i.i.ph = phi i32 [ %.060.i.i, %iter.check ], [ %i.wz, %vec.epilog.iter.check ], [ %i.xg, %vec.epilog.middle.block ] ; 4 uses
  %i.xi = add nsw i32 %.262.i.i.ph, -1
  %xtraiter = and i32 %.262.i.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader145.i.i.prol.loopexit, label %.preheader145.i.i.prol

.preheader145.i.i.prol:                           ; preds = %.preheader145.i.i.preheader, %.preheader145.i.i.prol
  %.5.i.i.prol = phi ptr [ %i.xl, %.preheader145.i.i.prol ], [ %.5.i.i.ph, %.preheader145.i.i.preheader ] ; 2 uses
  %.063.i.i.prol = phi ptr [ %i.xj, %.preheader145.i.i.prol ], [ %.063.i.i.ph, %.preheader145.i.i.preheader ] ; 2 uses
  %.262.i.i.prol = phi i32 [ %i.xm, %.preheader145.i.i.prol ], [ %.262.i.i.ph, %.preheader145.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader145.i.i.prol ], [ 0, %.preheader145.i.i.preheader ]
  %i.xj = getelementptr inbounds nuw i8, ptr %.063.i.i.prol, i64 1 ; 2 uses
  %i.xk = load i8, ptr %.063.i.i.prol, align 1
  %i.xl = getelementptr inbounds nuw i8, ptr %.5.i.i.prol, i64 1 ; 3 uses
  store i8 %i.xk, ptr %.5.i.i.prol, align 1
  %i.xm = add nsw i32 %.262.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader145.i.i.prol.loopexit, label %.preheader145.i.i.prol, !llvm.loop !56

.preheader145.i.i.prol.loopexit:                  ; preds = %.preheader145.i.i.prol, %.preheader145.i.i.preheader
  %.lcssa553.unr = phi ptr [ poison, %.preheader145.i.i.preheader ], [ %i.xl, %.preheader145.i.i.prol ]
  %.5.i.i.unr = phi ptr [ %.5.i.i.ph, %.preheader145.i.i.preheader ], [ %i.xl, %.preheader145.i.i.prol ]
  %.063.i.i.unr = phi ptr [ %.063.i.i.ph, %.preheader145.i.i.preheader ], [ %i.xj, %.preheader145.i.i.prol ]
  %.262.i.i.unr = phi i32 [ %.262.i.i.ph, %.preheader145.i.i.preheader ], [ %i.xm, %.preheader145.i.i.prol ]
  %i.xn = icmp ult i32 %i.xi, 7
  br i1 %i.xn, label %.loopexit.i.i, label %.preheader145.i.i

.preheader145.i.i:                                ; preds = %.preheader145.i.i.prol.loopexit, %.preheader145.i.i
  %.5.i.i = phi ptr [ %i.yl, %.preheader145.i.i ], [ %.5.i.i.unr, %.preheader145.i.i.prol.loopexit ] ; 9 uses
  %.063.i.i = phi ptr [ %i.yj, %.preheader145.i.i ], [ %.063.i.i.unr, %.preheader145.i.i.prol.loopexit ] ; 9 uses
  %.262.i.i = phi i32 [ %i.ym, %.preheader145.i.i ], [ %.262.i.i.unr, %.preheader145.i.i.prol.loopexit ]
  %i.xo = getelementptr inbounds nuw i8, ptr %.063.i.i, i64 1
  %i.xp = load i8, ptr %.063.i.i, align 1
  %i.xq = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 1
  store i8 %i.xp, ptr %.5.i.i, align 1
  %i.xr = getelementptr inbounds nuw i8, ptr %.063.i.i, i64 2
  %i.xs = load i8, ptr %i.xo, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 2
  store i8 %i.xs, ptr %i.xq, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.063.i.i, i64 3
  %i.xv = load i8, ptr %i.xr, align 1
  %i.xw = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 3
  store i8 %i.xv, ptr %i.xt, align 1
  %i.xx = getelementptr inbounds nuw i8, ptr %.063.i.i, i64 4
  %i.xy = load i8, ptr %i.xu, align 1
  %i.xz = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 4
  store i8 %i.xy, ptr %i.xw, align 1
  %i.ya = getelementptr inbounds nuw i8, ptr %.063.i.i, i64 5
  %i.yb = load i8, ptr %i.xx, align 1
  %i.yc = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 5
  store i8 %i.yb, ptr %i.xz, align 1
  %i.yd = getelementptr inbounds nuw i8, ptr %.063.i.i, i64 6
  %i.ye = load i8, ptr %i.ya, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 6
  store i8 %i.ye, ptr %i.yc, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.063.i.i, i64 7
  %i.yh = load i8, ptr %i.yd, align 1
  %i.yi = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 7
  store i8 %i.yh, ptr %i.yf, align 1
  %i.yj = getelementptr inbounds nuw i8, ptr %.063.i.i, i64 8
  %i.yk = load i8, ptr %i.yg, align 1
  %i.yl = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 8 ; 2 uses
  store i8 %i.yk, ptr %i.yi, align 1
  %i.ym = add nsw i32 %.262.i.i, -8               ; 2 uses
  %.not79.i.i.7 = icmp eq i32 %i.ym, 0
  br i1 %.not79.i.i.7, label %.loopexit.i.i, label %.preheader145.i.i, !llvm.loop !57

.loopexit.i.i:                                    ; preds = %.preheader145.i.i.prol.loopexit, %.preheader145.i.i, %middle.block, %vec.epilog.middle.block, %bb.el, %.preheader.preheader.i.i, %bb.ek, %bb.dc
  %.9.i.i = phi ptr [ %.268.i.i, %bb.ek ], [ %.268.i.i, %bb.el ], [ %i.rj, %bb.dc ], [ %scevgep229.i.i, %.preheader.preheader.i.i ], [ %i.xd, %vec.epilog.middle.block ], [ %i.ww, %middle.block ], [ %.lcssa553.unr, %.preheader145.i.i.prol.loopexit ], [ %i.yl, %.preheader145.i.i ]
  br label %bb.ch, !llvm.loop !58

_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i: ; preds = %bb.de, %._crit_edge.i125.i.i, %bb.eg, %bb.ef, %bb.ed, %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit112.i.i, %bb.dw, %bb.dv, %bb.du, %bb.dm, %bb.df, %._crit_edge.i.i66.i, %bb.cz, %bb.cy, %bb.cv, %bb.cu, %bb.ct, %bb.cj, %.lr.ph.i128.i.i, %.lr.ph.i.i64.i
  %.str.37.sink.i.i = phi ptr [ @.str.26, %.lr.ph.i128.i.i ], [ @.str.26, %.lr.ph.i.i64.i ], [ @.str.42, %bb.ed ], [ @.str.26, %bb.eg ], [ @.str.37, %bb.ef ], [ @.str.40, %bb.cv ], [ @.str.26, %._crit_edge.i125.i.i ], [ @.str.26, %bb.cz ], [ @.str.37, %bb.cy ], [ @.str.40, %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit112.i.i ], [ @.str.26, %._crit_edge.i.i66.i ], [ @.str.40, %bb.df ], [ @.str.40, %bb.cj ], [ @.str.40, %bb.ct ], [ @.str.40, %bb.cu ], [ @.str.40, %bb.dw ], [ @.str.40, %bb.dv ], [ @.str.40, %bb.du ], [ @.str.40, %bb.dm ], [ @.str.41, %bb.de ]
  %i.yn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr %.str.37.sink.i.i, ptr %i.yn, align 8
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i: ; preds = %bb.de, %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i
  %i.yo = phi ptr [ %.066.i.i, %bb.de ], [ %i.gi, %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i ]
  %.not23.i = icmp eq i32 %i.cc, 0
  br i1 %.not23.i, label %thread-pre-split.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, !llvm.loop !59

_ZL16stbi__parse_zlibP10stbi__zbufi.exit:         ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i, %bb.ae, %bb.af, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i, %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i, %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.thread.i, %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i, %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i
  %.0.i = phi i32 [ 0, %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i ], [ 0, %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.thread.i ], [ 0, %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i ], [ 0, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i ], [ 0, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i ], [ 0, %bb.ae ], [ 0, %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i ], [ 0, %bb.af ], [ 1, %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden ptr @assimp_stbi_zlib_decode_malloc(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #30 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = tail call noalias noundef dereferenceable_or_null(16384) ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) 16384) #50 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %assimp_stbi_zlib_decode_malloc_guesssize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef 16384, i32 noundef 1, i32 noundef 1)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not11.i = icmp eq ptr %2, null
  br i1 %.not11.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %assimp_stbi_zlib_decode_malloc_guesssize.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %2, align 4
  br label %assimp_stbi_zlib_decode_malloc_guesssize.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  call void @free(ptr noundef %i.p) #47
  br label %assimp_stbi_zlib_decode_malloc_guesssize.exit

assimp_stbi_zlib_decode_malloc_guesssize.exit:    ; preds = %bb.a, %._crit_edge.i, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %.pre.i, %._crit_edge.i ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
end_hunk_0
begin_hunk_1_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.ca, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bx = load i8, ptr %.04616.epil, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %.04616.epil, align 1
  store i8 %i.bx, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !190

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.bw, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.ce, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.cb = load i8, ptr %.24813.epil, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  store i8 %i.cd, ptr %.24813.epil, align 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !191

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #30 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.v, align 8
  br label %bb.al

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.e, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.af, align 8
  br label %bb.al

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 13 uses
  %or.cond.not.i.i298 = icmp sgt i32 %5, -1
  br i1 %or.cond.not.i.i298, label %bb.h, label %_ZL21stbi__mad2sizes_validiii.exit.thread

bb.h:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299

_ZL21stbi__mul2sizes_validii.exit.i299:           ; preds = %bb.h
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %bb.h, %_ZL21stbi__mul2sizes_validii.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp samesign ugt i32 %i.aj, %i.ak
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.i

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.al, align 8
  br label %bb.al

bb.i:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ap, align 8
  br label %bb.al

bb.k:                                             ; preds = %bb.i
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #50 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.at, align 8
  br label %bb.al

bb.m:                                             ; preds = %bb.k
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.m
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 14 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = zext nneg i32 %i.ah to i64
  %i.aw = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ax = sext i32 %spec.select to i64            ; 36 uses
  %i.ay = icmp slt i32 %spec.select, %i.aw        ; 4 uses
  %i.az = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ba = icmp sgt i32 %i.aw, 0
  %i.bb = sext i32 %i.aw to i64                   ; 13 uses
  %i.bc = icmp eq i32 %6, 8
  %i.bd = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.be = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.bf = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bg = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bh = zext i32 %i.z to i64
  %i.bi = icmp eq i32 %7, 0
  %i.bj = sext i32 %6 to i64
  %i.bk = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.bj
  %wide.trip.count460 = zext nneg i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %i.bl = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bm = add i32 %i.z, -1                        ; 3 uses
  %i.bn = add nuw nsw i64 %i.bg, 1
  %min.iters.check711 = icmp ult i64 %i.bl, 8
  %diff.check709 = icmp ult i32 %spec.select, 32
  %or.cond747 = select i1 %min.iters.check711, i1 true, i1 %diff.check709
  %min.iters.check713 = icmp ult i64 %i.bl, 32
  %n.mod.vf715 = and i64 %i.bl, 24
  %n.vec716 = and i64 %i.bl, -32                  ; 4 uses
  %i.bo = add nsw i64 %n.vec716, %i.ax
  %cmp.n725 = icmp eq i64 %i.bl, %n.vec716
  %min.epilog.iters.check731 = icmp eq i64 %n.mod.vf715, 0
  %n.vec734 = and i64 %i.bl, -8                   ; 3 uses
  %i.bp = add nsw i64 %n.vec734, %i.ax
  %cmp.n741 = icmp eq i64 %i.bl, %n.vec734
  %i.bq = add nsw i64 %i.bb, -1
  %min.iters.check677 = icmp ult i32 %spec.select, 4
  %min.iters.check679 = icmp ult i32 %spec.select, 32
  %n.mod.vf681 = and i64 %wide.trip.count424, 28
  %n.vec682 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n691 = icmp eq i64 %n.vec682, %wide.trip.count424
  %min.epilog.iters.check696 = icmp eq i64 %n.mod.vf681, 0
  %n.vec699 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n706 = icmp eq i64 %n.vec699, %wide.trip.count424
  %xtraiter761 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  %min.iters.check640 = icmp ult i64 %i.bl, 4
  %diff.check634 = icmp ult i32 %spec.select, 16
  %min.iters.check642 = icmp ult i64 %i.bl, 16
  %n.mod.vf644 = and i64 %i.bl, 12
  %n.vec645 = and i64 %i.bl, -16                  ; 4 uses
  %i.br = add nsw i64 %n.vec645, %i.ax
  %cmp.n654 = icmp eq i64 %i.bl, %n.vec645
  %min.epilog.iters.check660 = icmp eq i64 %n.mod.vf644, 0
  %n.vec663 = and i64 %i.bl, -4                   ; 3 uses
  %i.bs = add nsw i64 %n.vec663, %i.ax
  %cmp.n672 = icmp eq i64 %i.bl, %n.vec663
  %min.iters.check602 = icmp ult i32 %spec.select, 4
  %min.iters.check604 = icmp ult i32 %spec.select, 32
  %n.mod.vf606 = and i64 %wide.trip.count424, 28
  %n.vec607 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n616 = icmp eq i64 %n.vec607, %wide.trip.count424
  %min.epilog.iters.check621 = icmp eq i64 %n.mod.vf606, 0
  %n.vec624 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n631 = icmp eq i64 %n.vec624, %wide.trip.count424
  %xtraiter763 = and i64 %wide.trip.count424, 1
  %lcmp.mod764.not = icmp eq i64 %xtraiter763, 0
  %i.bt = add nsw i64 %wide.trip.count424, -1
  %min.iters.check567 = icmp ult i64 %i.bl, 4
  %diff.check565 = icmp ult i32 %spec.select, 16
  %min.iters.check569 = icmp ult i64 %i.bl, 16
  %n.mod.vf571 = and i64 %i.bl, 12
  %n.vec572 = and i64 %i.bl, -16                  ; 4 uses
  %i.bu = add nsw i64 %n.vec572, %i.ax
  %cmp.n580 = icmp eq i64 %i.bl, %n.vec572
  %min.epilog.iters.check586 = icmp eq i64 %n.mod.vf571, 0
  %n.vec589 = and i64 %i.bl, -4                   ; 3 uses
  %i.bv = add nsw i64 %n.vec589, %i.ax
  %cmp.n597 = icmp eq i64 %i.bl, %n.vec589
  %i.bw = add nsw i64 %i.bb, -1
  %min.iters.check532 = icmp ult i32 %i.aw, 4
  %min.iters.check534 = icmp ult i32 %i.aw, 32
  %n.mod.vf536 = and i64 %wide.trip.count444, 28
  %n.vec537 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n546 = icmp eq i64 %n.vec537, %wide.trip.count444
  %min.epilog.iters.check551 = icmp eq i64 %n.mod.vf536, 0
  %n.vec554 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec554, %wide.trip.count444
  %xtraiter769.a = and i64 %wide.trip.count444, 3 ; 2 uses
  %lcmp.mod770.not.a = icmp eq i64 %xtraiter769.a, 0
  %min.iters.check506 = icmp ult i64 %i.bl, 8
  %diff.check = icmp ult i32 %spec.select, 32
  %or.cond746.a = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bl, 32
  %n.mod.vf509 = and i64 %i.bl, 24
  %n.vec510 = and i64 %i.bl, -32                  ; 4 uses
  %i.bx = add nsw i64 %n.vec510, %i.ax
  %cmp.n519 = icmp eq i64 %i.bl, %n.vec510
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf509, 0
  %n.vec522 = and i64 %i.bl, -8                   ; 3 uses
  %i.by = add nsw i64 %n.vec522, %i.ax
  %cmp.n527 = icmp eq i64 %i.bl, %n.vec522
  %i.bz = add nsw i64 %i.bb, -1
  %xtraiter775.a = and i32 %4, 1
  %i.ca = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod776.not.a = icmp eq i32 %xtraiter775.a, 0
  %lcmp.mod777 = trunc i32 %4 to i1
  %xtraiter778 = and i32 %i.z, 3                  ; 3 uses
  %i.cb = icmp ult i32 %i.z, 4
  %unroll_iter781 = and i32 %i.z, -4
  %lcmp.mod779.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod780 = icmp ne i32 %xtraiter778, 0
  %i.cc = and i64 %i.bg, 1
  %lcmp.mod784.not.not = icmp eq i64 %i.cc, 0
  %i.cd = shl nuw nsw i64 %i.bg, 2
  %i.ce = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.cf = icmp eq i32 %.030.i305, 0
  %i.cg = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cg, 4294967288              ; 3 uses
  %i.ch = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  %xtraiter786 = and i32 %i.z, 1
  %i.ci = icmp eq i32 %i.bm, 0
  %unroll_iter790 = and i32 %i.z, -2
  %lcmp.mod788.not = icmp eq i32 %xtraiter786, 0
  %lcmp.mod789 = trunc i32 %i.z to i1
  %xtraiter792 = and i32 %i.z, 1
  %i.cj = icmp eq i32 %i.bm, 0
  %unroll_iter796 = and i32 %i.z, -2
  %lcmp.mod794.not = icmp eq i32 %xtraiter792, 0
  %lcmp.mod795 = trunc i32 %i.z to i1
  %xtraiter798 = and i32 %i.z, 1
  %i.ck = icmp eq i32 %i.bm, 0
  %unroll_iter802 = and i32 %i.z, -2
  %lcmp.mod800.not = icmp eq i32 %xtraiter798, 0
  %lcmp.mod801 = trunc i32 %i.z to i1
  %i.cl = and i64 %i.bg, 1
  %lcmp.mod805.not.not = icmp eq i64 %i.cl, 0
  %i.cm = shl nuw nsw i64 %i.bg, 2
  %i.cn = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.co = icmp eq i32 %.030.i305, 0
  %xtraiter807 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod808.not = icmp eq i64 %xtraiter807, 0
  %i.cp = icmp ult i32 %.030.i305, 3
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0237399 = phi ptr [ %1, %.lr.ph400 ], [ %i.qu, %.loopexit ] ; 2 uses
  %i.cq = trunc i64 %indvars.iv457 to i32
  %i.cr = and i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 1
  %i.ct = mul nuw nsw i32 %i.ah, %i.cs
  %8 = zext nneg i32 %i.ct to i64
  %i.cu = trunc i64 %indvars.iv457 to i32
  %i.cv = and i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 1
  %i.cx = mul nuw nsw i32 %i.ah, %i.cw
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = trunc i64 %indvars.iv457 to i32
  %i.da = and i32 %i.cz, 1
  %i.db = xor i32 %i.da, 1
  %i.dc = mul nuw nsw i32 %i.ah, %i.db
  %9 = zext nneg i32 %i.dc to i64
  %i.dd = trunc i64 %indvars.iv457 to i32
  %i.de = and i32 %i.dd, 1
  %i.df = xor i32 %i.de, 1
  %i.dg = mul nuw nsw i32 %i.ah, %i.df
  %10 = zext nneg i32 %i.dg to i64
  %i.dh = trunc i64 %indvars.iv457 to i32
  %i.di = and i32 %i.dh, 1
  %i.dj = xor i32 %i.di, 1
  %i.dk = mul nuw nsw i32 %i.ah, %i.dj
  %11 = zext nneg i32 %i.dk to i64
  %i.dl = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.dm = trunc i64 %indvars.iv457 to i1
  %i.dn = select i1 %i.dm, i64 %i.av, i64 0       ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dn ; 75 uses
  %i.dp = and i32 %i.dl, 1
  %i.dq = xor i32 %i.dp, 1
  %i.dr = mul nuw nsw i32 %i.dq, %i.ah
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ds ; 30 uses
  %i.du = load ptr, ptr %i.u, align 8
  %i.dv = mul i32 %i.e, %i.dl
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw ; 33 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0237399, i64 1 ; 41 uses
  %i.dz = load i8, ptr %.0237399, align 1         ; 3 uses
  %i.ea = icmp ugt i8 %i.dz, 4
  br i1 %i.ea, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = icmp eq i64 %indvars.iv457, 0
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = zext nneg i8 %i.dz to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0257.in = phi i8 [ %i.ee, %bb.p ], [ %i.dz, %bb.o ]
  switch i8 %.0257.in, label %.loopexit348 [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.t
  ]

.preheader356:                                    ; preds = %bb.q
  br i1 %i.az, label %iter.check693, label %.preheader354

iter.check693:                                    ; preds = %.preheader356
  %i.ef = sub nsw i64 %i.dn, %8
  %diff.check675 = icmp ult i64 %i.ef, 32
  %or.cond743 = select i1 %min.iters.check677, i1 true, i1 %diff.check675
  br i1 %or.cond743, label %.lr.ph360.preheader, label %vector.main.loop.iter.check678

vector.main.loop.iter.check678:                   ; preds = %iter.check693
  br i1 %min.iters.check679, label %vec.epilog.ph697, label %vector.body683

vector.body683:                                   ; preds = %vector.main.loop.iter.check678, %vector.body683
  %index684 = phi i64 [ %index.next689, %vector.body683 ], [ 0, %vector.main.loop.iter.check678 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index684 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load685 = load <16 x i8>, ptr %i.eg, align 1
  %wide.load686 = load <16 x i8>, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index684 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load687 = load <16 x i8>, ptr %i.ei, align 1
  %wide.load688 = load <16 x i8>, ptr %i.ej, align 1
  %i.ek = add <16 x i8> %wide.load687, %wide.load685
  %i.el = add <16 x i8> %wide.load688, %wide.load686
  %i.em = getelementptr inbounds nuw i8, ptr %i.do, i64 %index684 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <16 x i8> %i.ek, ptr %i.em, align 1
  store <16 x i8> %i.el, ptr %i.en, align 1
  %index.next689 = add nuw i64 %index684, 32      ; 2 uses
  %i.eo = icmp eq i64 %index.next689, %n.vec682
  br i1 %i.eo, label %middle.block690, label %vector.body683, !llvm.loop !192

middle.block690:                                  ; preds = %vector.body683
  br i1 %cmp.n691, label %.preheader354, label %vec.epilog.iter.check695

vec.epilog.iter.check695:                         ; preds = %middle.block690
  br i1 %min.epilog.iters.check696, label %.lr.ph360.preheader, label %vec.epilog.ph697, !prof !54

vec.epilog.ph697:                                 ; preds = %vector.main.loop.iter.check678, %vec.epilog.iter.check695
  %vec.epilog.resume.val692 = phi i64 [ %n.vec682, %vec.epilog.iter.check695 ], [ 0, %vector.main.loop.iter.check678 ]
  br label %vec.epilog.vector.body700

vec.epilog.vector.body700:                        ; preds = %vec.epilog.vector.body700, %vec.epilog.ph697
  %index701 = phi i64 [ %vec.epilog.resume.val692, %vec.epilog.ph697 ], [ %index.next704, %vec.epilog.vector.body700 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index701
  %wide.load702 = load <4 x i8>, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index701
  %wide.load703 = load <4 x i8>, ptr %i.eq, align 1
  %i.er = add <4 x i8> %wide.load703, %wide.load702
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %index701
  store <4 x i8> %i.er, ptr %i.es, align 1
  %index.next704 = add nuw i64 %index701, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next704, %n.vec699
  br i1 %i.et, label %vec.epilog.middle.block705, label %vec.epilog.vector.body700, !llvm.loop !193

vec.epilog.middle.block705:                       ; preds = %vec.epilog.vector.body700
  br i1 %cmp.n706, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check693, %vec.epilog.iter.check695, %vec.epilog.middle.block705
  %indvars.iv421.ph = phi i64 [ 0, %iter.check693 ], [ %n.vec682, %vec.epilog.iter.check695 ], [ %n.vec699, %vec.epilog.middle.block705 ] ; 3 uses
  br i1 %lcmp.mod762.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv421.prol
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv421.prol
  %i.ex = load i8, ptr %i.ew, align 1
  %.narrow286.prol = add i8 %i.ex, %i.ev
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.ey, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter761
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !194

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ez = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.q
  br i1 %i.az, label %iter.check618, label %.preheader351

iter.check618:                                    ; preds = %.preheader353
  %i.fb = sub nsw i64 %i.dn, %9
  %diff.check600 = icmp ult i64 %i.fb, 32
  %or.cond744 = select i1 %min.iters.check602, i1 true, i1 %diff.check600
  br i1 %or.cond744, label %.lr.ph364.preheader, label %vector.main.loop.iter.check603

vector.main.loop.iter.check603:                   ; preds = %iter.check618
  br i1 %min.iters.check604, label %vec.epilog.ph622, label %vector.body608

vector.body608:                                   ; preds = %vector.main.loop.iter.check603, %vector.body608
  %index609 = phi i64 [ %index.next614, %vector.body608 ], [ 0, %vector.main.loop.iter.check603 ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index609 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load610 = load <16 x i8>, ptr %i.fc, align 1
  %wide.load611 = load <16 x i8>, ptr %i.fd, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index609 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load612 = load <16 x i8>, ptr %i.fe, align 1
  %wide.load613 = load <16 x i8>, ptr %i.ff, align 1
  %i.fg = lshr <16 x i8> %wide.load612, splat (i8 1)
  %i.fh = lshr <16 x i8> %wide.load613, splat (i8 1)
  %i.fi = add <16 x i8> %i.fg, %wide.load610
  %i.fj = add <16 x i8> %i.fh, %wide.load611
  %i.fk = getelementptr inbounds nuw i8, ptr %i.do, i64 %index609 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <16 x i8> %i.fi, ptr %i.fk, align 1
  store <16 x i8> %i.fj, ptr %i.fl, align 1
  %index.next614 = add nuw i64 %index609, 32      ; 2 uses
  %i.fm = icmp eq i64 %index.next614, %n.vec607
  br i1 %i.fm, label %middle.block615, label %vector.body608, !llvm.loop !195

middle.block615:                                  ; preds = %vector.body608
  br i1 %cmp.n616, label %.preheader351, label %vec.epilog.iter.check620

vec.epilog.iter.check620:                         ; preds = %middle.block615
  br i1 %min.epilog.iters.check621, label %.lr.ph364.preheader, label %vec.epilog.ph622, !prof !54

vec.epilog.ph622:                                 ; preds = %vector.main.loop.iter.check603, %vec.epilog.iter.check620
  %vec.epilog.resume.val617 = phi i64 [ %n.vec607, %vec.epilog.iter.check620 ], [ 0, %vector.main.loop.iter.check603 ]
  br label %vec.epilog.vector.body625

vec.epilog.vector.body625:                        ; preds = %vec.epilog.vector.body625, %vec.epilog.ph622
  %index626 = phi i64 [ %vec.epilog.resume.val617, %vec.epilog.ph622 ], [ %index.next629, %vec.epilog.vector.body625 ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index626
  %wide.load627 = load <4 x i8>, ptr %i.fn, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index626
  %wide.load628 = load <4 x i8>, ptr %i.fo, align 1
  %i.fp = lshr <4 x i8> %wide.load628, splat (i8 1)
  %i.fq = add <4 x i8> %i.fp, %wide.load627
  %i.fr = getelementptr inbounds nuw i8, ptr %i.do, i64 %index626
  store <4 x i8> %i.fq, ptr %i.fr, align 1
  %index.next629 = add nuw i64 %index626, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next629, %n.vec624
  br i1 %i.fs, label %vec.epilog.middle.block630, label %vec.epilog.vector.body625, !llvm.loop !196

vec.epilog.middle.block630:                       ; preds = %vec.epilog.vector.body625
  br i1 %cmp.n631, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check618, %vec.epilog.iter.check620, %vec.epilog.middle.block630
  %indvars.iv431.ph = phi i64 [ 0, %iter.check618 ], [ %n.vec607, %vec.epilog.iter.check620 ], [ %n.vec624, %vec.epilog.middle.block630 ] ; 6 uses
  br i1 %lcmp.mod764.not, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv431.ph
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv431.ph
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = lshr i8 %i.fw, 1
  %.narrow290.prol = add i8 %i.fx, %i.fu
  %i.fy = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.fy, align 1
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.fz = icmp eq i64 %indvars.iv431.ph, %i.bt
  br i1 %i.fz, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.q
  br i1 %i.ba, label %iter.check548, label %.loopexit348

iter.check548:                                    ; preds = %.preheader349
  %i.ga = sub nsw i64 %i.dn, %11
  %diff.check530 = icmp ult i64 %i.ga, 32
  %or.cond745 = select i1 %min.iters.check532, i1 true, i1 %diff.check530
  br i1 %or.cond745, label %.lr.ph368.preheader, label %vector.main.loop.iter.check533

vector.main.loop.iter.check533:                   ; preds = %iter.check548
  br i1 %min.iters.check534, label %vec.epilog.ph552, label %vector.body538

vector.body538:                                   ; preds = %vector.main.loop.iter.check533, %vector.body538
  %index539 = phi i64 [ %index.next544, %vector.body538 ], [ 0, %vector.main.loop.iter.check533 ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index539 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load540 = load <16 x i8>, ptr %i.gb, align 1
  %wide.load541 = load <16 x i8>, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index539 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load542 = load <16 x i8>, ptr %i.gd, align 1
  %wide.load543 = load <16 x i8>, ptr %i.ge, align 1
  %i.gf = add <16 x i8> %wide.load542, %wide.load540
  %i.gg = add <16 x i8> %wide.load543, %wide.load541
  %i.gh = getelementptr inbounds nuw i8, ptr %i.do, i64 %index539 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <16 x i8> %i.gf, ptr %i.gh, align 1
  store <16 x i8> %i.gg, ptr %i.gi, align 1
  %index.next544 = add nuw i64 %index539, 32      ; 2 uses
  %i.gj = icmp eq i64 %index.next544, %n.vec537
  br i1 %i.gj, label %middle.block545, label %vector.body538, !llvm.loop !197

middle.block545:                                  ; preds = %vector.body538
  br i1 %cmp.n546, label %.loopexit348, label %vec.epilog.iter.check550

vec.epilog.iter.check550:                         ; preds = %middle.block545
  br i1 %min.epilog.iters.check551, label %.lr.ph368.preheader, label %vec.epilog.ph552, !prof !54

vec.epilog.ph552:                                 ; preds = %vector.main.loop.iter.check533, %vec.epilog.iter.check550
  %vec.epilog.resume.val547 = phi i64 [ %n.vec537, %vec.epilog.iter.check550 ], [ 0, %vector.main.loop.iter.check533 ]
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph552
  %index556 = phi i64 [ %vec.epilog.resume.val547, %vec.epilog.ph552 ], [ %index.next559, %vec.epilog.vector.body555 ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index556
  %wide.load557 = load <4 x i8>, ptr %i.gk, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index556
  %wide.load558 = load <4 x i8>, ptr %i.gl, align 1
  %i.gm = add <4 x i8> %wide.load558, %wide.load557
  %i.gn = getelementptr inbounds nuw i8, ptr %i.do, i64 %index556
  store <4 x i8> %i.gm, ptr %i.gn, align 1
  %index.next559 = add nuw i64 %index556, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next559, %n.vec554
  br i1 %i.go, label %vec.epilog.middle.block560, label %vec.epilog.vector.body555, !llvm.loop !198

vec.epilog.middle.block560:                       ; preds = %vec.epilog.vector.body555
  br i1 %cmp.n561, label %.loopexit348, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check548, %vec.epilog.iter.check550, %vec.epilog.middle.block560
  %indvars.iv441.ph = phi i64 [ 0, %iter.check548 ], [ %n.vec537, %vec.epilog.iter.check550 ], [ %n.vec554, %vec.epilog.middle.block560 ] ; 3 uses
  br i1 %lcmp.mod770.not.a, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %indvars.iv441.prol = phi i64 [ %indvars.iv.next442.prol, %.lr.ph368.prol ], [ %indvars.iv441.ph, %.lr.ph368.preheader ] ; 4 uses
  %prol.iter771 = phi i64 [ %prol.iter771.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv441.prol
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv441.prol
  %i.gs = load i8, ptr %i.gr, align 1
  %.narrow292.prol = add i8 %i.gs, %i.gq
  %i.gt = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv441.prol
  store i8 %.narrow292.prol, ptr %i.gt, align 1
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.prol, 1 ; 2 uses
  %prol.iter771.next = add i64 %prol.iter771, 1   ; 2 uses
  %prol.iter771.cmp.not = icmp eq i64 %prol.iter771.next, %xtraiter769.a
  br i1 %prol.iter771.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !199

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph368.preheader ], [ %indvars.iv.next442.prol, %.lr.ph368.prol ]
  %i.gu = sub nsw i64 %indvars.iv441.ph, %wide.trip.count444
  %i.gv = icmp ugt i64 %i.gu, -4
  br i1 %i.gv, label %.loopexit348, label %.lr.ph368

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %i.dy, i64 %i.bb, i1 false)
  br label %.loopexit348

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %i.dy, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check, label %.loopexit348

iter.check:                                       ; preds = %bb.s
  br i1 %or.cond746.a, label %.lr.ph370.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check507, label %vec.epilog.ph, label %vector.body511

vector.body511:                                   ; preds = %vector.main.loop.iter.check, %vector.body511
  %index512 = phi i64 [ %index.next517, %vector.body511 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.gw = add i64 %index512, %i.ax                ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.dy, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load513 = load <16 x i8>, ptr %i.gx, align 1
  %wide.load514 = load <16 x i8>, ptr %i.gy, align 1
  %i.gz = getelementptr inbounds i8, ptr %i.do, i64 %index512 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load515 = load <16 x i8>, ptr %i.gz, align 1
  %wide.load516 = load <16 x i8>, ptr %i.ha, align 1
  %i.hb = add <16 x i8> %wide.load515, %wide.load513
  %i.hc = add <16 x i8> %wide.load516, %wide.load514
  %i.hd = getelementptr inbounds i8, ptr %i.do, i64 %i.gw ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <16 x i8> %i.hb, ptr %i.hd, align 1
  store <16 x i8> %i.hc, ptr %i.he, align 1
  %index.next517 = add nuw i64 %index512, 32      ; 2 uses
  %i.hf = icmp eq i64 %index.next517, %n.vec510
  br i1 %i.hf, label %middle.block518, label %vector.body511, !llvm.loop !200

middle.block518:                                  ; preds = %vector.body511
  br i1 %cmp.n519, label %.loopexit348, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block518
  br i1 %min.epilog.iters.check, label %.lr.ph370.preheader, label %vec.epilog.ph, !prof !201

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec510, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index523 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next526, %vec.epilog.vector.body ] ; 3 uses
  %i.hg = add i64 %index523, %i.ax                ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.dy, i64 %i.hg
  %wide.load524 = load <8 x i8>, ptr %i.hh, align 1
  %i.hi = getelementptr inbounds i8, ptr %i.do, i64 %index523
  %wide.load525 = load <8 x i8>, ptr %i.hi, align 1
  %i.hj = add <8 x i8> %wide.load525, %wide.load524
  %i.hk = getelementptr inbounds i8, ptr %i.do, i64 %i.hg
  store <8 x i8> %i.hj, ptr %i.hk, align 1
  %index.next526 = add nuw i64 %index523, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next526, %n.vec522
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !202

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n527, label %.loopexit348, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ] ; 7 uses
  %i.hm = sub nsw i64 %i.bb, %indvars.iv446.ph
  %xtraiter772 = and i64 %i.hm, 1
  %lcmp.mod773.not = icmp eq i64 %xtraiter772, 0
  br i1 %lcmp.mod773.not, label %.lr.ph370.prol.loopexit, label %.lr.ph370.prol

.lr.ph370.prol:                                   ; preds = %.lr.ph370.preheader
  %i.hn = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv446.ph
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = sub nsw i64 %indvars.iv446.ph, %i.ax
  %i.hq = getelementptr inbounds i8, ptr %i.do, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1
  %.narrow294.prol = add i8 %i.hr, %i.ho
  %i.hs = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv446.ph
  store i8 %.narrow294.prol, ptr %i.hs, align 1
  %indvars.iv.next447.prol = add nsw i64 %indvars.iv446.ph, 1
  br label %.lr.ph370.prol.loopexit

.lr.ph370.prol.loopexit:                          ; preds = %.lr.ph370.prol, %.lr.ph370.preheader
  %indvars.iv446.unr = phi i64 [ %indvars.iv446.ph, %.lr.ph370.preheader ], [ %indvars.iv.next447.prol, %.lr.ph370.prol ]
  %i.ht = icmp eq i64 %indvars.iv446.ph, %i.bz
  br i1 %i.ht, label %.loopexit348, label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.prol.loopexit, %.lr.ph370
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.1, %.lr.ph370 ], [ %indvars.iv446.unr, %.lr.ph370.prol.loopexit ] ; 5 uses
  %i.hu = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv446
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = sub nsw i64 %indvars.iv446, %i.ax
  %i.hx = getelementptr inbounds i8, ptr %i.do, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  %.narrow294 = add i8 %i.hy, %i.hv
  %i.hz = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv446
  store i8 %.narrow294, ptr %i.hz, align 1
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 3 uses
  %i.ia = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv.next447
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = sub nsw i64 %indvars.iv.next447, %i.ax
  %i.id = getelementptr inbounds i8, ptr %i.do, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1
  %.narrow294.1 = add i8 %i.ie, %i.ib
  %i.if = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv.next447
  store i8 %.narrow294.1, ptr %i.if, align 1
  %indvars.iv.next447.1 = add nsw i64 %indvars.iv446, 2 ; 2 uses
  %exitcond450.not.1 = icmp eq i64 %indvars.iv.next447.1, %i.bb
  br i1 %exitcond450.not.1, label %.loopexit348, label %.lr.ph370, !llvm.loop !203

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph368 ], [ %indvars.iv441.unr, %.lr.ph368.prol.loopexit ] ; 7 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv441
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv441
  %i.ij = load i8, ptr %i.ii, align 1
  %.narrow292 = add i8 %i.ij, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.ik, align 1
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next442
  %i.im = load i8, ptr %i.il, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next442
  %i.io = load i8, ptr %i.in, align 1
  %.narrow292.1 = add i8 %i.io, %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.ip, align 1
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next442.1
  %i.ir = load i8, ptr %i.iq, align 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next442.1
  %i.it = load i8, ptr %i.is, align 1
  %.narrow292.2 = add i8 %i.it, %i.ir
  %i.iu = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.iu, align 1
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next442.2
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next442.2
  %i.iy = load i8, ptr %i.ix, align 1
  %.narrow292.3 = add i8 %i.iy, %i.iw
  %i.iz = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.iz, align 1
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !204

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block615, %vec.epilog.middle.block630, %.preheader353
  br i1 %i.ay, label %iter.check583, label %.loopexit348

iter.check583:                                    ; preds = %.preheader351
  br i1 %min.iters.check567, label %.lr.ph366.preheader, label %vector.memcheck563

vector.memcheck563:                               ; preds = %iter.check583
  %i.ja = sub nsw i64 %i.dn, %10
  %diff.check564 = icmp ult i64 %i.ja, 16
  %conflict.rdx = or i1 %diff.check564, %diff.check565
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check568

vector.main.loop.iter.check568:                   ; preds = %vector.memcheck563
  br i1 %min.iters.check569, label %vec.epilog.ph587, label %vector.body573

vector.body573:                                   ; preds = %vector.main.loop.iter.check568, %vector.body573
  %index574 = phi i64 [ %index.next578, %vector.body573 ], [ 0, %vector.main.loop.iter.check568 ] ; 3 uses
  %i.jb = add i64 %index574, %i.ax                ; 3 uses
  %i.jc = getelementptr inbounds i8, ptr %i.dy, i64 %i.jb
  %wide.load575 = load <16 x i8>, ptr %i.jc, align 1
  %i.jd = getelementptr inbounds i8, ptr %i.dt, i64 %i.jb
  %wide.load576 = load <16 x i8>, ptr %i.jd, align 1
  %i.je = zext <16 x i8> %wide.load576 to <16 x i16>
  %i.jf = getelementptr inbounds i8, ptr %i.do, i64 %index574
  %wide.load577 = load <16 x i8>, ptr %i.jf, align 1
  %i.jg = zext <16 x i8> %wide.load577 to <16 x i16>
  %i.jh = add nuw nsw <16 x i16> %i.jg, %i.je
  %i.ji = lshr <16 x i16> %i.jh, splat (i16 1)
  %i.jj = trunc nuw <16 x i16> %i.ji to <16 x i8>
  %i.jk = add <16 x i8> %wide.load575, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.do, i64 %i.jb
  store <16 x i8> %i.jk, ptr %i.jl, align 1
  %index.next578 = add nuw i64 %index574, 16      ; 2 uses
  %i.jm = icmp eq i64 %index.next578, %n.vec572
  br i1 %i.jm, label %middle.block579, label %vector.body573, !llvm.loop !205

middle.block579:                                  ; preds = %vector.body573
  br i1 %cmp.n580, label %.loopexit348, label %vec.epilog.iter.check585

vec.epilog.iter.check585:                         ; preds = %middle.block579
  br i1 %min.epilog.iters.check586, label %.lr.ph366.preheader, label %vec.epilog.ph587, !prof !30

vec.epilog.ph587:                                 ; preds = %vector.main.loop.iter.check568, %vec.epilog.iter.check585
  %vec.epilog.resume.val581 = phi i64 [ %n.vec572, %vec.epilog.iter.check585 ], [ 0, %vector.main.loop.iter.check568 ]
  br label %vec.epilog.vector.body590

vec.epilog.vector.body590:                        ; preds = %vec.epilog.vector.body590, %vec.epilog.ph587
  %index591 = phi i64 [ %vec.epilog.resume.val581, %vec.epilog.ph587 ], [ %index.next595, %vec.epilog.vector.body590 ] ; 3 uses
  %i.jn = add i64 %index591, %i.ax                ; 3 uses
  %i.jo = getelementptr inbounds i8, ptr %i.dy, i64 %i.jn
  %wide.load592 = load <4 x i8>, ptr %i.jo, align 1
  %i.jp = getelementptr inbounds i8, ptr %i.dt, i64 %i.jn
  %wide.load593 = load <4 x i8>, ptr %i.jp, align 1
  %i.jq = zext <4 x i8> %wide.load593 to <4 x i16>
  %i.jr = getelementptr inbounds i8, ptr %i.do, i64 %index591
  %wide.load594 = load <4 x i8>, ptr %i.jr, align 1
  %i.js = zext <4 x i8> %wide.load594 to <4 x i16>
  %i.jt = add nuw nsw <4 x i16> %i.js, %i.jq
  %i.ju = lshr <4 x i16> %i.jt, splat (i16 1)
  %i.jv = trunc nuw <4 x i16> %i.ju to <4 x i8>
  %i.jw = add <4 x i8> %wide.load592, %i.jv
  %i.jx = getelementptr inbounds i8, ptr %i.do, i64 %i.jn
  store <4 x i8> %i.jw, ptr %i.jx, align 1
  %index.next595 = add nuw i64 %index591, 4       ; 2 uses
  %i.jy = icmp eq i64 %index.next595, %n.vec589
  br i1 %i.jy, label %vec.epilog.middle.block596, label %vec.epilog.vector.body590, !llvm.loop !206

vec.epilog.middle.block596:                       ; preds = %vec.epilog.vector.body590
  br i1 %cmp.n597, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %vector.memcheck563, %iter.check583, %vec.epilog.iter.check585, %vec.epilog.middle.block596
  %indvars.iv436.ph = phi i64 [ %i.ax, %iter.check583 ], [ %i.ax, %vector.memcheck563 ], [ %i.bu, %vec.epilog.iter.check585 ], [ %i.bv, %vec.epilog.middle.block596 ] ; 8 uses
  %i.jz = sub nsw i64 %i.bb, %indvars.iv436.ph
  %xtraiter766 = and i64 %i.jz, 1
  %lcmp.mod767.not = icmp eq i64 %xtraiter766, 0
  br i1 %lcmp.mod767.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.ka = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv436.ph
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = getelementptr inbounds i8, ptr %i.dt, i64 %indvars.iv436.ph
  %i.kd = load i8, ptr %i.kc, align 1
  %i.ke = zext i8 %i.kd to i16
  %i.kf = sub nsw i64 %indvars.iv436.ph, %i.ax
  %i.kg = getelementptr inbounds i8, ptr %i.do, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = zext i8 %i.kh to i16
  %i.kj = add nuw nsw i16 %i.ki, %i.ke
  %i.kk = lshr i16 %i.kj, 1
  %.tr287.prol = trunc nuw i16 %i.kk to i8
  %.narrow288.prol = add i8 %i.kb, %.tr287.prol
  %i.kl = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.kl, align 1
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.km = icmp eq i64 %indvars.iv436.ph, %i.bw
  br i1 %i.km, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv431
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv431
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = lshr i8 %i.kq, 1
  %.narrow290 = add i8 %i.kr, %i.ko
  %i.ks = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.ks, align 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next432
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next432
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = lshr i8 %i.kw, 1
  %.narrow290.1 = add i8 %i.kx, %i.ku
  %i.ky = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.ky, align 1
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !207

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.kz = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv436
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = getelementptr inbounds i8, ptr %i.dt, i64 %indvars.iv436
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = zext i8 %i.lc to i16
  %i.le = sub nsw i64 %indvars.iv436, %i.ax
  %i.lf = getelementptr inbounds i8, ptr %i.do, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = zext i8 %i.lg to i16
  %i.li = add nuw nsw i16 %i.lh, %i.ld
  %i.lj = lshr i16 %i.li, 1
  %.tr287 = trunc nuw i16 %i.lj to i8
  %.narrow288 = add i8 %i.la, %.tr287
  %i.lk = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.lk, align 1
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.ll = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv.next437
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = getelementptr inbounds i8, ptr %i.dt, i64 %indvars.iv.next437
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = zext i8 %i.lo to i16
  %i.lq = sub nsw i64 %indvars.iv.next437, %i.ax
  %i.lr = getelementptr inbounds i8, ptr %i.do, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1
  %i.lt = zext i8 %i.ls to i16
  %i.lu = add nuw nsw i16 %i.lt, %i.lp
  %i.lv = lshr i16 %i.lu, 1
  %.tr287.1 = trunc nuw i16 %i.lv to i8
  %.narrow288.1 = add i8 %i.lm, %.tr287.1
  %i.lw = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.lw, align 1
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.bb
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !208

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block690, %vec.epilog.middle.block705, %.preheader356
  br i1 %i.ay, label %iter.check657, label %.loopexit348

iter.check657:                                    ; preds = %.preheader354
  br i1 %min.iters.check640, label %.lr.ph362.preheader, label %vector.memcheck633

vector.memcheck633:                               ; preds = %iter.check657
  %i.lx = sub nsw i64 %i.dn, %i.cy
  %diff.check635 = icmp ult i64 %i.lx, 16
  %conflict.rdx636 = or i1 %diff.check634, %diff.check635
  %i.ly = add nsw i64 %i.dn, %i.ax
  %i.lz = sub nsw i64 %i.ly, %i.cy
  %diff.check637 = icmp ult i64 %i.lz, 16
  %conflict.rdx638 = or i1 %conflict.rdx636, %diff.check637
  br i1 %conflict.rdx638, label %.lr.ph362.preheader, label %vector.main.loop.iter.check641

vector.main.loop.iter.check641:                   ; preds = %vector.memcheck633
  br i1 %min.iters.check642, label %vec.epilog.ph661, label %vector.body646

vector.body646:                                   ; preds = %vector.main.loop.iter.check641, %vector.body646
  %index647 = phi i64 [ %index.next652, %vector.body646 ], [ 0, %vector.main.loop.iter.check641 ] ; 4 uses
  %i.ma = add i64 %index647, %i.ax                ; 3 uses
  %i.mb = getelementptr inbounds i8, ptr %i.dy, i64 %i.ma
  %wide.load648 = load <16 x i8>, ptr %i.mb, align 1
  %i.mc = getelementptr inbounds i8, ptr %i.do, i64 %index647
  %wide.load649 = load <16 x i8>, ptr %i.mc, align 1
  %i.md = zext <16 x i8> %wide.load649 to <16 x i32> ; 3 uses
  %i.me = getelementptr inbounds i8, ptr %i.dt, i64 %i.ma
  %wide.load650 = load <16 x i8>, ptr %i.me, align 1
  %i.mf = zext <16 x i8> %wide.load650 to <16 x i32> ; 3 uses
  %i.mg = getelementptr inbounds i8, ptr %i.dt, i64 %index647
  %wide.load651 = load <16 x i8>, ptr %i.mg, align 1
  %i.mh = zext <16 x i8> %wide.load651 to <16 x i32> ; 2 uses
  %i.mi = mul nuw nsw <16 x i32> %i.mh, splat (i32 3)
  %i.mj = add nuw nsw <16 x i32> %i.mf, %i.md
  %i.mk = sub nsw <16 x i32> %i.mi, %i.mj         ; 2 uses
  %i.ml = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.md, <16 x i32> %i.mf) ; 2 uses
  %i.mm = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.md, <16 x i32> %i.mf) ; 2 uses
  %i.mn = icmp sgt <16 x i32> %i.mm, %i.mk
  %i.mo = select <16 x i1> %i.mn, <16 x i32> %i.mh, <16 x i32> %i.ml
  %i.mp = icmp sgt <16 x i32> %i.mk, %i.ml
  %i.mq = select <16 x i1> %i.mp, <16 x i32> %i.mo, <16 x i32> %i.mm
  %i.mr = trunc nuw <16 x i32> %i.mq to <16 x i8>
  %i.ms = add <16 x i8> %wide.load648, %i.mr
  %i.mt = getelementptr inbounds i8, ptr %i.do, i64 %i.ma
  store <16 x i8> %i.ms, ptr %i.mt, align 1
  %index.next652 = add nuw i64 %index647, 16      ; 2 uses
  %i.mu = icmp eq i64 %index.next652, %n.vec645
  br i1 %i.mu, label %middle.block653, label %vector.body646, !llvm.loop !209

middle.block653:                                  ; preds = %vector.body646
  br i1 %cmp.n654, label %.loopexit348, label %vec.epilog.iter.check659

vec.epilog.iter.check659:                         ; preds = %middle.block653
  br i1 %min.epilog.iters.check660, label %.lr.ph362.preheader, label %vec.epilog.ph661, !prof !30

vec.epilog.ph661:                                 ; preds = %vector.main.loop.iter.check641, %vec.epilog.iter.check659
  %vec.epilog.resume.val655 = phi i64 [ %n.vec645, %vec.epilog.iter.check659 ], [ 0, %vector.main.loop.iter.check641 ]
  br label %vec.epilog.vector.body664

vec.epilog.vector.body664:                        ; preds = %vec.epilog.vector.body664, %vec.epilog.ph661
  %index665 = phi i64 [ %vec.epilog.resume.val655, %vec.epilog.ph661 ], [ %index.next670, %vec.epilog.vector.body664 ] ; 4 uses
  %i.mv = add i64 %index665, %i.ax                ; 3 uses
  %i.mw = getelementptr inbounds i8, ptr %i.dy, i64 %i.mv
  %wide.load666 = load <4 x i8>, ptr %i.mw, align 1
  %i.mx = getelementptr inbounds i8, ptr %i.do, i64 %index665
  %wide.load667 = load <4 x i8>, ptr %i.mx, align 1
  %i.my = zext <4 x i8> %wide.load667 to <4 x i32> ; 3 uses
  %i.mz = getelementptr inbounds i8, ptr %i.dt, i64 %i.mv
  %wide.load668 = load <4 x i8>, ptr %i.mz, align 1
  %i.na = zext <4 x i8> %wide.load668 to <4 x i32> ; 3 uses
  %i.nb = getelementptr inbounds i8, ptr %i.dt, i64 %index665
  %wide.load669 = load <4 x i8>, ptr %i.nb, align 1
  %i.nc = zext <4 x i8> %wide.load669 to <4 x i32> ; 2 uses
  %i.nd = mul nuw nsw <4 x i32> %i.nc, splat (i32 3)
  %i.ne = add nuw nsw <4 x i32> %i.na, %i.my
  %i.nf = sub nsw <4 x i32> %i.nd, %i.ne          ; 2 uses
  %i.ng = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.my, <4 x i32> %i.na) ; 2 uses
  %i.nh = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.my, <4 x i32> %i.na) ; 2 uses
  %i.ni = icmp sgt <4 x i32> %i.nh, %i.nf
  %i.nj = select <4 x i1> %i.ni, <4 x i32> %i.nc, <4 x i32> %i.ng
  %i.nk = icmp sgt <4 x i32> %i.nf, %i.ng
  %i.nl = select <4 x i1> %i.nk, <4 x i32> %i.nj, <4 x i32> %i.nh
  %i.nm = trunc nuw <4 x i32> %i.nl to <4 x i8>
  %i.nn = add <4 x i8> %wide.load666, %i.nm
  %i.no = getelementptr inbounds i8, ptr %i.do, i64 %i.mv
  store <4 x i8> %i.nn, ptr %i.no, align 1
  %index.next670 = add nuw i64 %index665, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next670, %n.vec663
  br i1 %i.np, label %vec.epilog.middle.block671, label %vec.epilog.vector.body664, !llvm.loop !210

vec.epilog.middle.block671:                       ; preds = %vec.epilog.vector.body664
  br i1 %cmp.n672, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %vector.memcheck633, %iter.check657, %vec.epilog.iter.check659, %vec.epilog.middle.block671
  %indvars.iv426.ph = phi i64 [ %i.ax, %iter.check657 ], [ %i.ax, %vector.memcheck633 ], [ %i.br, %vec.epilog.iter.check659 ], [ %i.bs, %vec.epilog.middle.block671 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv421
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv421
  %i.nt = load i8, ptr %i.ns, align 1
  %.narrow286 = add i8 %i.nt, %i.nr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nu, align 1
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next422
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next422
  %i.ny = load i8, ptr %i.nx, align 1
  %.narrow286.1 = add i8 %i.ny, %i.nw
  %i.nz = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.nz, align 1
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next422.1
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next422.1
  %i.od = load i8, ptr %i.oc, align 1
  %.narrow286.2 = add i8 %i.od, %i.ob
  %i.oe = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.oe, align 1
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next422.2
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next422.2
  %i.oi = load i8, ptr %i.oh, align 1
  %.narrow286.3 = add i8 %i.oi, %i.og
  %i.oj = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.oj, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !211

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.ok = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv426
  %i.ol = load i8, ptr %i.ok, align 1
  %i.om = sub nsw i64 %indvars.iv426, %i.ax       ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %i.do, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = zext i8 %i.oo to i32                    ; 3 uses
  %i.oq = getelementptr inbounds i8, ptr %i.dt, i64 %indvars.iv426
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = zext i8 %i.or to i32                    ; 3 uses
  %i.ot = getelementptr inbounds i8, ptr %i.dt, i64 %i.om
  %i.ou = load i8, ptr %i.ot, align 1
  %i.ov = zext i8 %i.ou to i32                    ; 2 uses
  %i.ow = mul nuw nsw i32 %i.ov, 3
  %i.ox = add nuw nsw i32 %i.os, %i.op
  %i.oy = sub nsw i32 %i.ow, %i.ox                ; 2 uses
  %i.oz = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.op, i32 range(i32 0, 256) %i.os) ; 2 uses
  %i.pa = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.op, i32 range(i32 0, 256) %i.os) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.pa, %i.oy
  %i.pb = select i1 %.not.i303, i32 %i.ov, i32 %i.oz
  %.not20.i = icmp sgt i32 %i.oy, %i.oz
  %i.pc = select i1 %.not20.i, i32 %i.pb, i32 %i.pa
  %.tr = trunc nuw i32 %i.pc to i8
  %.narrow284 = add i8 %i.ol, %.tr
  %i.pd = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.pd, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.bb
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !212

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %i.dy, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check728, label %.loopexit348

iter.check728:                                    ; preds = %bb.t
  br i1 %or.cond747, label %.lr.ph.preheader, label %vector.main.loop.iter.check712

vector.main.loop.iter.check712:                   ; preds = %iter.check728
  br i1 %min.iters.check713, label %vec.epilog.ph732, label %vector.body717

vector.body717:                                   ; preds = %vector.main.loop.iter.check712, %vector.body717
  %index718 = phi i64 [ %index.next723, %vector.body717 ], [ 0, %vector.main.loop.iter.check712 ] ; 3 uses
  %i.pe = add i64 %index718, %i.ax                ; 2 uses
  %i.pf = getelementptr inbounds i8, ptr %i.dy, i64 %i.pe ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %wide.load719 = load <16 x i8>, ptr %i.pf, align 1
  %wide.load720 = load <16 x i8>, ptr %i.pg, align 1
  %i.ph = getelementptr inbounds i8, ptr %i.do, i64 %index718 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %wide.load721 = load <16 x i8>, ptr %i.ph, align 1
  %wide.load722 = load <16 x i8>, ptr %i.pi, align 1
  %i.pj = lshr <16 x i8> %wide.load721, splat (i8 1)
  %i.pk = lshr <16 x i8> %wide.load722, splat (i8 1)
  %i.pl = add <16 x i8> %i.pj, %wide.load719
  %i.pm = add <16 x i8> %i.pk, %wide.load720
  %i.pn = getelementptr inbounds i8, ptr %i.do, i64 %i.pe ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  store <16 x i8> %i.pl, ptr %i.pn, align 1
  store <16 x i8> %i.pm, ptr %i.po, align 1
  %index.next723 = add nuw i64 %index718, 32      ; 2 uses
  %i.pp = icmp eq i64 %index.next723, %n.vec716
  br i1 %i.pp, label %middle.block724, label %vector.body717, !llvm.loop !213

middle.block724:                                  ; preds = %vector.body717
  br i1 %cmp.n725, label %.loopexit348, label %vec.epilog.iter.check730

vec.epilog.iter.check730:                         ; preds = %middle.block724
  br i1 %min.epilog.iters.check731, label %.lr.ph.preheader, label %vec.epilog.ph732, !prof !201

vec.epilog.ph732:                                 ; preds = %vector.main.loop.iter.check712, %vec.epilog.iter.check730
  %vec.epilog.resume.val726 = phi i64 [ %n.vec716, %vec.epilog.iter.check730 ], [ 0, %vector.main.loop.iter.check712 ]
  br label %vec.epilog.vector.body735

vec.epilog.vector.body735:                        ; preds = %vec.epilog.vector.body735, %vec.epilog.ph732
  %index736 = phi i64 [ %vec.epilog.resume.val726, %vec.epilog.ph732 ], [ %index.next739, %vec.epilog.vector.body735 ] ; 3 uses
  %i.pq = add i64 %index736, %i.ax                ; 2 uses
  %i.pr = getelementptr inbounds i8, ptr %i.dy, i64 %i.pq
end_hunk_1
