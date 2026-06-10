inline.NumInlined: 34
inline.NumDeleted: 5
begin_hunk_0_@BrotliCompressFragmentTwoPassImpl16:bb.a
  br i1 %i.f, label %bb.c, label %.thread125, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.d, -6
  %i.h = add i64 %.037.i284, -16
  %i.i = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 range(i64 -15, -16) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i285, i64 %i.i ; 6 uses
  %i.k = ptrtoint ptr %i.e to i64
  %.neg137 = add i64 %i.k, -6                     ; 2 uses
  br label %IsMatch.exit13.thread

IsMatch.exit13.thread:                            ; preds = %IsMatch.exit13.thread.backedge, %bb.c
  %.190 = phi ptr [ %3, %bb.c ], [ %.190.be, %IsMatch.exit13.thread.backedge ] ; 11 uses
  %.1 = phi ptr [ %4, %bb.c ], [ %i.ex, %IsMatch.exit13.thread.backedge ] ; 6 uses
  %.0276.i = phi i32 [ -1, %bb.c ], [ %.0276.i.be, %IsMatch.exit13.thread.backedge ]
  %.0273.i = phi ptr [ %.0.i285, %bb.c ], [ %.0273.i.be, %IsMatch.exit13.thread.backedge ] ; 7 uses
  %.0276.i.fr = freeze i32 %.0276.i               ; 4 uses
  %.0.i9 = getelementptr inbounds nuw i8, ptr %.0273.i, i64 1 ; 3 uses
  %.0281.i.in.in.in = load i64, ptr %.0.i9, align 1
  %.0281.i.in.in = mul i64 %.0281.i.in.in.in, 33215796281344
  %.0281.i.in = lshr i64 %.0281.i.in.in, 48       ; 2 uses
  %i.l = sext i32 %.0276.i.fr to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = icmp sgt i32 %.0276.i.fr, 0
  br i1 %i.n, label %.split.us.preheader, label %.split, !prof !411

.split.us.preheader:                              ; preds = %IsMatch.exit13.thread
  %.0281.i = trunc nuw nsw i64 %.0281.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us209
  %.0287.i.us = phi ptr [ %i.s, %.loopexit.split.us209 ], [ %.0.i9, %.split.us.preheader ] ; 2 uses
  %.0285.i.us = phi i32 [ %i.t, %.loopexit.split.us209 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1282.i.us = phi i32 [ %i.w, %.loopexit.split.us209 ], [ %.0281.i, %.split.us.preheader ]
  %i.o = lshr i32 %.0285.i.us, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.0287.i.us, i64 %i.p ; 2 uses
  %i.r = icmp ugt ptr %i.q, %i.j
  br i1 %i.r, label %.thread125, label %.lr.ph.us, !prof !412

.lr.ph.us:                                        ; preds = %.split.us, %.backedge.us215
  %i.s = phi ptr [ %i.bl, %.backedge.us215 ], [ %i.q, %.split.us ] ; 4 uses
  %.in288 = phi i32 [ %i.t, %.backedge.us215 ], [ %.0285.i.us, %.split.us ]
  %.2283.i184.us198 = phi i32 [ %i.w, %.backedge.us215 ], [ %.1282.i.us, %.split.us ] ; 2 uses
  %.1288.i183.us199 = phi ptr [ %i.s, %.backedge.us215 ], [ %.0287.i.us, %.split.us ] ; 10 uses
  %i.t = add i32 %.in288, 1                       ; 3 uses
  %.0.copyload.i41.us200 = load i64, ptr %i.s, align 1
  %i.u = mul i64 %.0.copyload.i41.us200, 33215796281344
  %i.v = lshr i64 %i.u, 48
  %i.w = trunc nuw nsw i64 %i.v to i32            ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.1288.i183.us199, i64 %i.m ; 4 uses
  %.0.copyload.i50.us201 = load i32, ptr %.1288.i183.us199, align 1
  %.0.copyload.i49.us202 = load i32, ptr %i.x, align 1
  %i.y = icmp eq i32 %.0.copyload.i50.us201, %.0.copyload.i49.us202
  br i1 %i.y, label %bb.d, label %IsMatch.exit15.thread.us204

bb.d:                                             ; preds = %.lr.ph.us
  %i.z = getelementptr inbounds nuw i8, ptr %.1288.i183.us199, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %IsMatch.exit15.us203, label %IsMatch.exit15.thread.us204

IsMatch.exit15.us203:                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.1288.i183.us199, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %IsMatch.exit15.thread.us204, !prof !411

IsMatch.exit15.thread.us204:                      ; preds = %IsMatch.exit15.us203, %bb.d, %.lr.ph.us
  %i.aj = zext nneg i32 %.2283.i184.us198 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !5
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.am ; 4 uses
  %i.ao = ptrtoint ptr %.1288.i183.us199 to i64   ; 2 uses
  %i.ap = sub i64 %i.ao, %i.a
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.ak, align 4, !tbaa !5
  %.0.copyload.i54.us205 = load i32, ptr %.1288.i183.us199, align 1
  %.0.copyload.i53.us206 = load i32, ptr %i.an, align 1
  %i.ar = icmp eq i32 %.0.copyload.i54.us205, %.0.copyload.i53.us206
  br i1 %i.ar, label %bb.e, label %.backedge.us215

bb.e:                                             ; preds = %IsMatch.exit15.thread.us204
  %i.as = getelementptr inbounds nuw i8, ptr %.1288.i183.us199, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %IsMatch.exit.us208, label %.backedge.us215

IsMatch.exit.us208:                               ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.1288.i183.us199, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %.not289 = icmp eq i8 %i.ay, %i.ba
  br i1 %.not289, label %.loopexit.split.us209, label %.backedge.us215, !prof !43

bb.f:                                             ; preds = %IsMatch.exit15.us203
  %i.bb = ptrtoint ptr %.1288.i183.us199 to i64   ; 2 uses
  %i.bc = sub i64 %i.bb, %i.a
  %i.bd = trunc i64 %i.bc to i32
  %i.be = zext nneg i32 %.2283.i184.us198 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.be
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !5
  br label %.loopexit.split.us209

.loopexit.split.us209:                            ; preds = %IsMatch.exit.us208, %bb.f
  %.pre-phi = phi i64 [ %i.bb, %bb.f ], [ %i.ao, %IsMatch.exit.us208 ] ; 2 uses
  %.3292.i103.us = phi ptr [ %i.x, %bb.f ], [ %i.an, %IsMatch.exit.us208 ] ; 2 uses
  %i.bg = ptrtoint ptr %.3292.i103.us to i64
  %i.bh = sub i64 %.pre-phi, %i.bg                ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 262128
  br i1 %i.bi, label %.split.us, label %.split221.us

.backedge.us215:                                  ; preds = %IsMatch.exit15.thread.us204, %bb.e, %IsMatch.exit.us208
  %i.bj = lshr i32 %i.t, 5
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bk ; 2 uses
  %i.bm = icmp ugt ptr %i.bl, %i.j
  br i1 %i.bm, label %.thread125, label %.lr.ph.us, !prof !413, !llvm.loop !45

.split:                                           ; preds = %IsMatch.exit13.thread, %.loopexit.split.us
  %.0287.i = phi ptr [ %i.br, %.loopexit.split.us ], [ %.0.i9, %IsMatch.exit13.thread ] ; 2 uses
  %.0285.i = phi i32 [ %i.bs, %.loopexit.split.us ], [ 32, %IsMatch.exit13.thread ] ; 2 uses
  %.1282.i = phi i64 [ %i.bu, %.loopexit.split.us ], [ %.0281.i.in, %IsMatch.exit13.thread ]
  %i.bn = lshr i32 %.0285.i, 5
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0287.i, i64 %i.bo ; 2 uses
  %i.bq = icmp ugt ptr %i.bp, %i.j
  br i1 %i.bq, label %.thread125, label %.lr.ph, !prof !412

.lr.ph:                                           ; preds = %.split, %.backedge.us
  %i.br = phi ptr [ %i.co, %.backedge.us ], [ %i.bp, %.split ] ; 4 uses
  %.in = phi i32 [ %i.bs, %.backedge.us ], [ %.0285.i, %.split ]
  %.2283.i184.us = phi i64 [ %i.bu, %.backedge.us ], [ %.1282.i, %.split ]
  %.1288.i183.us = phi ptr [ %i.br, %.backedge.us ], [ %.0287.i, %.split ] ; 5 uses
  %i.bs = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.br, align 1
  %i.bt = mul i64 %.0.copyload.i41.us, 33215796281344
  %i.bu = lshr i64 %i.bt, 48                      ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2283.i184.us ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !5
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %1, i64 %i.bx ; 5 uses
  %i.bz = ptrtoint ptr %.1288.i183.us to i64      ; 3 uses
  %i.ca = sub i64 %i.bz, %i.a
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bv, align 4, !tbaa !5
  %.0.copyload.i54.us = load i32, ptr %.1288.i183.us, align 1
  %.0.copyload.i53.us = load i32, ptr %i.by, align 1
  %i.cc = icmp eq i32 %.0.copyload.i54.us, %.0.copyload.i53.us
  br i1 %i.cc, label %bb.g, label %.backedge.us

bb.g:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %.1288.i183.us, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = icmp eq i8 %i.ce, %i.cg
  br i1 %i.ch, label %IsMatch.exit.us, label %.backedge.us

IsMatch.exit.us:                                  ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %.1288.i183.us, i64 5
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %.not287 = icmp eq i8 %i.cj, %i.cl
  br i1 %.not287, label %.loopexit.split.us, label %.backedge.us, !prof !43

.backedge.us:                                     ; preds = %.lr.ph, %bb.g, %IsMatch.exit.us
  %i.cm = lshr i32 %i.bs, 5
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cn ; 2 uses
  %i.cp = icmp ugt ptr %i.co, %i.j
  br i1 %i.cp, label %.thread125, label %.lr.ph, !prof !413, !llvm.loop !45

.loopexit.split.us:                               ; preds = %IsMatch.exit.us
  %i.cq = ptrtoint ptr %i.by to i64
  %i.cr = sub i64 %i.bz, %i.cq                    ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 262128
  br i1 %i.cs, label %.split, label %.split221.us

.split221.us:                                     ; preds = %.loopexit.split.us, %.loopexit.split.us209
  %.us-phi222 = phi ptr [ %.3292.i103.us, %.loopexit.split.us209 ], [ %i.by, %.loopexit.split.us ]
  %.us-phi223 = phi i64 [ %.pre-phi, %.loopexit.split.us209 ], [ %i.bz, %.loopexit.split.us ] ; 2 uses
  %.us-phi224 = phi i64 [ %i.bh, %.loopexit.split.us209 ], [ %i.cr, %.loopexit.split.us ]
  %.us-phi225 = phi ptr [ %.1288.i183.us199, %.loopexit.split.us209 ], [ %.1288.i183.us, %.loopexit.split.us ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.us-phi222, i64 6 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.us-phi225, i64 6 ; 2 uses
  %i.cv = sub i64 %.neg137, %.us-phi223           ; 3 uses
  %i.cw = icmp ugt i64 %i.cv, 7
  br i1 %i.cw, label %.lr.ph235, label %.preheader143

.preheader143:                                    ; preds = %bb.i, %.split221.us
  %.027.i20.lcssa = phi i64 [ %i.cv, %.split221.us ], [ %i.dg, %bb.i ] ; 3 uses
  %.025.i21.lcssa = phi ptr [ %i.cu, %.split221.us ], [ %i.de, %bb.i ]
  %.022.i22.lcssa = phi ptr [ %i.ct, %.split221.us ], [ %i.df, %bb.i ] ; 3 uses
  %.not.i27239 = icmp eq i64 %.027.i20.lcssa, 0
  br i1 %.not.i27239, label %.critedge.i28, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader143
  %scevgep = getelementptr i8, ptr %.022.i22.lcssa, i64 %.027.i20.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %.split221.us, %bb.i
  %.022.i22234 = phi ptr [ %i.df, %bb.i ], [ %i.ct, %.split221.us ] ; 3 uses
  %.025.i21233 = phi ptr [ %i.de, %bb.i ], [ %i.cu, %.split221.us ] ; 2 uses
  %.027.i20232 = phi i64 [ %i.dg, %bb.i ], [ %i.cv, %.split221.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i21233, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i22234, align 1 ; 2 uses
  %.not30.i30 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph235
  %i.cx = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.cy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cx, i1 true)
  %i.cz = ptrtoint ptr %.022.i22234 to i64
  %i.da = ptrtoint ptr %i.ct to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr i64 %i.cy, 3
  %i.dd = add i64 %i.db, %i.dc
  br label %FindMatchLengthWithLimit.exit33

bb.i:                                             ; preds = %.lr.ph235
  %i.de = getelementptr inbounds nuw i8, ptr %.025.i21233, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.022.i22234, i64 8 ; 2 uses
  %i.dg = add i64 %.027.i20232, -8                ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 7
  br i1 %i.dh, label %.lr.ph235, label %.preheader143, !llvm.loop !47

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.j
  %.224.i26242 = phi ptr [ %9, %bb.j ], [ %.022.i22.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %.126.i25241 = phi ptr [ %i.dl, %bb.j ], [ %.025.i21.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.128.i24240 = phi i64 [ %8, %bb.j ], [ %.027.i20.lcssa, %.lr.ph243.preheader ]
  %i.di = load i8, ptr %.224.i26242, align 1, !tbaa !11
  %i.dj = load i8, ptr %.126.i25241, align 1, !tbaa !11
  %i.dk = icmp eq i8 %i.di, %i.dj
  br i1 %i.dk, label %bb.j, label %.critedge.i28

bb.j:                                             ; preds = %.lr.ph243
  %8 = add nsw i64 %.128.i24240, -1               ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.126.i25241, i64 1
  %9 = getelementptr inbounds nuw i8, ptr %.224.i26242, i64 1
  %.not.i27.a = icmp eq i64 %8, 0
  br i1 %.not.i27.a, label %.critedge.i28, label %.lr.ph243, !llvm.loop !48

.critedge.i28:                                    ; preds = %bb.j, %.lr.ph243, %.preheader143
  %.224.i26.lcssa = phi ptr [ %.022.i22.lcssa, %.preheader143 ], [ %.224.i26242, %.lr.ph243 ], [ %scevgep, %bb.j ]
  %i.dm = ptrtoint ptr %.224.i26.lcssa to i64
  %i.dn = ptrtoint ptr %i.ct to i64
  %i.do = sub i64 %i.dm, %i.dn
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.h, %.critedge.i28
  %.2.i29 = phi i64 [ %i.dd, %bb.h ], [ %i.do, %.critedge.i28 ] ; 4 uses
  %i.dp = add i64 %.2.i29, 6                      ; 7 uses
  %i.dq = trunc i64 %.us-phi224 to i32            ; 3 uses
  %i.dr = ptrtoint ptr %.0273.i to i64
  %i.ds = sub i64 %.us-phi223, %i.dr              ; 2 uses
  %i.dt = trunc i64 %i.ds to i32                  ; 10 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.us-phi225, i64 %i.dp ; 9 uses
  %i.dv = icmp ult i32 %i.dt, 6
  br i1 %i.dv, label %EmitInsertLen.exit, label %bb.k

bb.k:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.dw = icmp ult i32 %i.dt, 130
  br i1 %i.dw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dx = add nsw i32 %i.dt, -2                   ; 3 uses
  %i.dy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dx, i1 true)
  %i.dz = sub nuw nsw i32 30, %i.dy               ; 3 uses
  %i.ea = lshr i32 %i.dx, %i.dz                   ; 2 uses
  %i.eb = shl nuw nsw i32 %i.dz, 1
  %i.ec = add nuw nsw i32 %i.ea, 2
  %i.ed = add nuw nsw i32 %i.ec, %i.eb
  %i.ee = shl nuw nsw i32 %i.ea, %i.dz
  %i.ef = sub nsw i32 %i.dx, %i.ee
  %i.eg = shl nsw i32 %i.ef, 8
  %i.eh = or i32 %i.eg, %i.ed
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.ei = icmp ult i32 %i.dt, 2114
  br i1 %i.ei, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ej = add nsw i32 %i.dt, -66                  ; 2 uses
  %i.ek = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ej, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.ek
  %i.el = add nsw i32 %.neg.i, %i.ej
  %i.em = shl nsw i32 %i.el, 8
  %reass.sub = sub nsw i32 %i.em, %i.ek
  %i.en = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.eo = icmp ult i32 %i.dt, 6210
  br i1 %i.eo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ep = shl nuw nsw i32 %i.dt, 8
  %i.eq = add nsw i32 %i.ep, -541163
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.er = icmp ult i32 %i.dt, 22594
  %i.es = shl i32 %i.dt, 8                        ; 2 uses
  br i1 %i.er, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.et = add nsw i32 %i.es, -1589738
  br label %EmitInsertLen.exit

bb.s:                                             ; preds = %bb.q
  %i.eu = add i32 %i.es, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.l, %bb.n, %bb.p, %bb.r, %bb.s
  %.sink = phi i32 [ %i.eu, %bb.s ], [ %i.eh, %bb.l ], [ %i.en, %bb.n ], [ %i.eq, %bb.p ], [ %i.et, %bb.r ], [ %i.dt, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.190, align 4, !tbaa !5
  %i.ev = getelementptr inbounds nuw i8, ptr %.190, i64 4
  %sext.i = shl i64 %i.ds, 32
  %i.ew = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0273.i, i64 %i.ew, i1 false)
  %i.ex = getelementptr inbounds i8, ptr %.1, i64 %i.ew ; 3 uses
  %i.ey = icmp eq i32 %.0276.i.fr, %i.dq
  br i1 %i.ey, label %bb.u, label %bb.t

bb.t:                                             ; preds = %EmitInsertLen.exit
  %i.ez = add i32 %i.dq, 3                        ; 3 uses
  %i.fa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ez, i1 true) ; 2 uses
  %i.fb = sub nsw i32 30, %i.fa                   ; 2 uses
  %i.fc = lshr i32 %i.ez, %i.fb
  %i.fd = and i32 %i.fc, 1                        ; 2 uses
  %i.fe = or disjoint i32 %i.fd, 2
  %i.ff = shl nuw i32 %i.fe, %i.fb
  %i.fg = shl nuw nsw i32 %i.fa, 1
  %reass.sub290 = sub nsw i32 %i.fd, %i.fg
  %i.fh = add nsw i32 %reass.sub290, 138
  %i.fi = sub i32 %i.ez, %i.ff
  %i.fj = shl i32 %i.fi, 8
  %i.fk = or i32 %i.fj, %i.fh
  br label %bb.u

bb.u:                                             ; preds = %EmitInsertLen.exit, %bb.t
  %storemerge = phi i32 [ %i.fk, %bb.t ], [ 64, %EmitInsertLen.exit ]
  %.1277.i = phi i32 [ %i.dq, %bb.t ], [ %.0276.i.fr, %EmitInsertLen.exit ] ; 3 uses
  store i32 %storemerge, ptr %i.ev, align 4, !tbaa !5
  %.291 = getelementptr inbounds nuw i8, ptr %.190, i64 8 ; 5 uses
  %i.fl = icmp ult i64 %i.dp, 12
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fm = trunc nuw nsw i64 %i.dp to i32
  %i.fn = add nuw nsw i32 %i.fm, 20
  store i32 %i.fn, ptr %.291, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.fo = icmp ult i64 %i.dp, 72
  br i1 %i.fo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fp = add nsw i64 %.2.i29, -2                 ; 3 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fq, i1 true)
  %i.fs = sub nuw nsw i32 30, %i.fr
  %i.ft = zext nneg i32 %i.fs to i64              ; 3 uses
  %i.fu = lshr i64 %i.fp, %i.ft                   ; 2 uses
  %i.fv = shl nuw nsw i64 %i.ft, 1
  %i.fw = add nuw nsw i64 %i.fu, 28
  %i.fx = add nuw nsw i64 %i.fw, %i.fv
  %i.fy = shl nuw nsw i64 %i.fu, %i.ft
  %i.fz = sub nsw i64 %i.fp, %i.fy
  %i.ga = shl nsw i64 %i.fz, 8
  %i.gb = or i64 %i.ga, %i.fx
  %i.gc = trunc i64 %i.gb to i32
  store i32 %i.gc, ptr %.291, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.gd = icmp ult i64 %i.dp, 136
  br i1 %i.gd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ge = add nsw i64 %.2.i29, -2                 ; 2 uses
  %i.gf = lshr i64 %i.ge, 5
  %i.gg = add nuw nsw i64 %i.gf, 54
  %i.gh = shl nuw nsw i64 %i.ge, 8
  %i.gi = and i64 %i.gh, 7936
  %i.gj = or i64 %i.gg, %i.gi
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  store i32 %i.gk, ptr %.291, align 4, !tbaa !5
  %i.gl = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gl, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %i.gm = icmp ult i64 %i.dp, 2120
  br i1 %i.gm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gn = add nsw i64 %.2.i29, -66                ; 2 uses
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %i.gp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.go, i1 true)
  %i.gq = xor i32 %i.gp, 31
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.gs = add nuw nsw i64 %i.gr, 52
  %.neg.i36 = shl nsw i64 -1, %i.gr
  %i.gt = add nsw i64 %.neg.i36, %i.gn
  %i.gu = shl nsw i64 %i.gt, 8
  %i.gv = or disjoint i64 %i.gu, %i.gs
  %i.gw = trunc i64 %i.gv to i32
  store i32 %i.gw, ptr %.291, align 4, !tbaa !5
  %i.gx = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gx, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

bb.ac:                                            ; preds = %bb.aa
  %.tr.i = trunc i64 %i.dp to i32
  %i.gy = shl i32 %.tr.i, 8
  %i.gz = add i32 %i.gy, -542657
  store i32 %i.gz, ptr %.291, align 4, !tbaa !5
  %i.ha = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.ha, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ac
  %.sink475 = phi i64 [ 12, %bb.v ], [ 12, %bb.x ], [ 16, %bb.z ], [ 16, %bb.ab ], [ 16, %bb.ac ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.190, i64 %.sink475 ; 4 uses
  %.not312.i = icmp ult ptr %i.du, %i.j
  br i1 %.not312.i, label %bb.ad, label %.thread125, !prof !42

bb.ad:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.hc = getelementptr inbounds i8, ptr %i.du, i64 -5
  %.0.copyload.i44 = load i64, ptr %i.hc, align 1 ; 3 uses
  %i.hd = mul i64 %.0.copyload.i44, 33215796281344
  %i.he = lshr i64 %i.hd, 48
  %i.hf = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.hg = sub i64 %i.hf, %i.a
  %i.hh = trunc i64 %i.hg to i32                  ; 6 uses
  %i.hi = add i32 %i.hh, -5
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.he
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !5
  %i.hk = shl i64 %.0.copyload.i44, 8
  %i.hl = and i64 %i.hk, -65536
  %i.hm = mul i64 %i.hl, 506832829
end_hunk_0
begin_hunk_1_@BrotliCompressFragmentTwoPassImpl17:bb.a
  br i1 %i.f, label %bb.c, label %.thread125, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.d, -6
  %i.h = add i64 %.037.i284, -16
  %i.i = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 range(i64 -15, -16) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i285, i64 %i.i ; 6 uses
  %i.k = ptrtoint ptr %i.e to i64
  %.neg137 = add i64 %i.k, -6                     ; 2 uses
  br label %IsMatch.exit13.thread

IsMatch.exit13.thread:                            ; preds = %IsMatch.exit13.thread.backedge, %bb.c
  %.190 = phi ptr [ %3, %bb.c ], [ %.190.be, %IsMatch.exit13.thread.backedge ] ; 11 uses
  %.1 = phi ptr [ %4, %bb.c ], [ %i.ex, %IsMatch.exit13.thread.backedge ] ; 6 uses
  %.0276.i = phi i32 [ -1, %bb.c ], [ %.0276.i.be, %IsMatch.exit13.thread.backedge ]
  %.0273.i = phi ptr [ %.0.i285, %bb.c ], [ %.0273.i.be, %IsMatch.exit13.thread.backedge ] ; 7 uses
  %.0276.i.fr = freeze i32 %.0276.i               ; 4 uses
  %.0.i9 = getelementptr inbounds nuw i8, ptr %.0273.i, i64 1 ; 3 uses
  %.0281.i.in.in.in = load i64, ptr %.0.i9, align 1
  %.0281.i.in.in = mul i64 %.0281.i.in.in.in, 33215796281344
  %.0281.i.in = lshr i64 %.0281.i.in.in, 47       ; 2 uses
  %i.l = sext i32 %.0276.i.fr to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = icmp sgt i32 %.0276.i.fr, 0
  br i1 %i.n, label %.split.us.preheader, label %.split, !prof !411

.split.us.preheader:                              ; preds = %IsMatch.exit13.thread
  %.0281.i = trunc nuw nsw i64 %.0281.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us209
  %.0287.i.us = phi ptr [ %i.s, %.loopexit.split.us209 ], [ %.0.i9, %.split.us.preheader ] ; 2 uses
  %.0285.i.us = phi i32 [ %i.t, %.loopexit.split.us209 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1282.i.us = phi i32 [ %i.w, %.loopexit.split.us209 ], [ %.0281.i, %.split.us.preheader ]
  %i.o = lshr i32 %.0285.i.us, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.0287.i.us, i64 %i.p ; 2 uses
  %i.r = icmp ugt ptr %i.q, %i.j
  br i1 %i.r, label %.thread125, label %.lr.ph.us, !prof !412

.lr.ph.us:                                        ; preds = %.split.us, %.backedge.us215
  %i.s = phi ptr [ %i.bl, %.backedge.us215 ], [ %i.q, %.split.us ] ; 4 uses
  %.in288 = phi i32 [ %i.t, %.backedge.us215 ], [ %.0285.i.us, %.split.us ]
  %.2283.i184.us198 = phi i32 [ %i.w, %.backedge.us215 ], [ %.1282.i.us, %.split.us ] ; 2 uses
  %.1288.i183.us199 = phi ptr [ %i.s, %.backedge.us215 ], [ %.0287.i.us, %.split.us ] ; 10 uses
  %i.t = add i32 %.in288, 1                       ; 3 uses
  %.0.copyload.i41.us200 = load i64, ptr %i.s, align 1
  %i.u = mul i64 %.0.copyload.i41.us200, 33215796281344
  %i.v = lshr i64 %i.u, 47
  %i.w = trunc nuw nsw i64 %i.v to i32            ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.1288.i183.us199, i64 %i.m ; 4 uses
  %.0.copyload.i50.us201 = load i32, ptr %.1288.i183.us199, align 1
  %.0.copyload.i49.us202 = load i32, ptr %i.x, align 1
  %i.y = icmp eq i32 %.0.copyload.i50.us201, %.0.copyload.i49.us202
  br i1 %i.y, label %bb.d, label %IsMatch.exit15.thread.us204

bb.d:                                             ; preds = %.lr.ph.us
  %i.z = getelementptr inbounds nuw i8, ptr %.1288.i183.us199, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %IsMatch.exit15.us203, label %IsMatch.exit15.thread.us204

IsMatch.exit15.us203:                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.1288.i183.us199, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %IsMatch.exit15.thread.us204, !prof !411

IsMatch.exit15.thread.us204:                      ; preds = %IsMatch.exit15.us203, %bb.d, %.lr.ph.us
  %i.aj = zext nneg i32 %.2283.i184.us198 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !5
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.am ; 4 uses
  %i.ao = ptrtoint ptr %.1288.i183.us199 to i64   ; 2 uses
  %i.ap = sub i64 %i.ao, %i.a
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.ak, align 4, !tbaa !5
  %.0.copyload.i54.us205 = load i32, ptr %.1288.i183.us199, align 1
  %.0.copyload.i53.us206 = load i32, ptr %i.an, align 1
  %i.ar = icmp eq i32 %.0.copyload.i54.us205, %.0.copyload.i53.us206
  br i1 %i.ar, label %bb.e, label %.backedge.us215

bb.e:                                             ; preds = %IsMatch.exit15.thread.us204
  %i.as = getelementptr inbounds nuw i8, ptr %.1288.i183.us199, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %IsMatch.exit.us208, label %.backedge.us215

IsMatch.exit.us208:                               ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.1288.i183.us199, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %.not289 = icmp eq i8 %i.ay, %i.ba
  br i1 %.not289, label %.loopexit.split.us209, label %.backedge.us215, !prof !43

bb.f:                                             ; preds = %IsMatch.exit15.us203
  %i.bb = ptrtoint ptr %.1288.i183.us199 to i64   ; 2 uses
  %i.bc = sub i64 %i.bb, %i.a
  %i.bd = trunc i64 %i.bc to i32
  %i.be = zext nneg i32 %.2283.i184.us198 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.be
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !5
  br label %.loopexit.split.us209

.loopexit.split.us209:                            ; preds = %IsMatch.exit.us208, %bb.f
  %.pre-phi = phi i64 [ %i.bb, %bb.f ], [ %i.ao, %IsMatch.exit.us208 ] ; 2 uses
  %.3292.i103.us = phi ptr [ %i.x, %bb.f ], [ %i.an, %IsMatch.exit.us208 ] ; 2 uses
  %i.bg = ptrtoint ptr %.3292.i103.us to i64
  %i.bh = sub i64 %.pre-phi, %i.bg                ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 262128
  br i1 %i.bi, label %.split.us, label %.split221.us

.backedge.us215:                                  ; preds = %IsMatch.exit15.thread.us204, %bb.e, %IsMatch.exit.us208
  %i.bj = lshr i32 %i.t, 5
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bk ; 2 uses
  %i.bm = icmp ugt ptr %i.bl, %i.j
  br i1 %i.bm, label %.thread125, label %.lr.ph.us, !prof !413, !llvm.loop !45

.split:                                           ; preds = %IsMatch.exit13.thread, %.loopexit.split.us
  %.0287.i = phi ptr [ %i.br, %.loopexit.split.us ], [ %.0.i9, %IsMatch.exit13.thread ] ; 2 uses
  %.0285.i = phi i32 [ %i.bs, %.loopexit.split.us ], [ 32, %IsMatch.exit13.thread ] ; 2 uses
  %.1282.i = phi i64 [ %i.bu, %.loopexit.split.us ], [ %.0281.i.in, %IsMatch.exit13.thread ]
  %i.bn = lshr i32 %.0285.i, 5
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0287.i, i64 %i.bo ; 2 uses
  %i.bq = icmp ugt ptr %i.bp, %i.j
  br i1 %i.bq, label %.thread125, label %.lr.ph, !prof !412

.lr.ph:                                           ; preds = %.split, %.backedge.us
  %i.br = phi ptr [ %i.co, %.backedge.us ], [ %i.bp, %.split ] ; 4 uses
  %.in = phi i32 [ %i.bs, %.backedge.us ], [ %.0285.i, %.split ]
  %.2283.i184.us = phi i64 [ %i.bu, %.backedge.us ], [ %.1282.i, %.split ]
  %.1288.i183.us = phi ptr [ %i.br, %.backedge.us ], [ %.0287.i, %.split ] ; 5 uses
  %i.bs = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.br, align 1
  %i.bt = mul i64 %.0.copyload.i41.us, 33215796281344
  %i.bu = lshr i64 %i.bt, 47                      ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2283.i184.us ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !5
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %1, i64 %i.bx ; 5 uses
  %i.bz = ptrtoint ptr %.1288.i183.us to i64      ; 3 uses
  %i.ca = sub i64 %i.bz, %i.a
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bv, align 4, !tbaa !5
  %.0.copyload.i54.us = load i32, ptr %.1288.i183.us, align 1
  %.0.copyload.i53.us = load i32, ptr %i.by, align 1
  %i.cc = icmp eq i32 %.0.copyload.i54.us, %.0.copyload.i53.us
  br i1 %i.cc, label %bb.g, label %.backedge.us

bb.g:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %.1288.i183.us, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = icmp eq i8 %i.ce, %i.cg
  br i1 %i.ch, label %IsMatch.exit.us, label %.backedge.us

IsMatch.exit.us:                                  ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %.1288.i183.us, i64 5
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %.not287 = icmp eq i8 %i.cj, %i.cl
  br i1 %.not287, label %.loopexit.split.us, label %.backedge.us, !prof !43

.backedge.us:                                     ; preds = %.lr.ph, %bb.g, %IsMatch.exit.us
  %i.cm = lshr i32 %i.bs, 5
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cn ; 2 uses
  %i.cp = icmp ugt ptr %i.co, %i.j
  br i1 %i.cp, label %.thread125, label %.lr.ph, !prof !413, !llvm.loop !45

.loopexit.split.us:                               ; preds = %IsMatch.exit.us
  %i.cq = ptrtoint ptr %i.by to i64
  %i.cr = sub i64 %i.bz, %i.cq                    ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 262128
  br i1 %i.cs, label %.split, label %.split221.us

.split221.us:                                     ; preds = %.loopexit.split.us, %.loopexit.split.us209
  %.us-phi222 = phi ptr [ %.3292.i103.us, %.loopexit.split.us209 ], [ %i.by, %.loopexit.split.us ]
  %.us-phi223 = phi i64 [ %.pre-phi, %.loopexit.split.us209 ], [ %i.bz, %.loopexit.split.us ] ; 2 uses
  %.us-phi224 = phi i64 [ %i.bh, %.loopexit.split.us209 ], [ %i.cr, %.loopexit.split.us ]
  %.us-phi225 = phi ptr [ %.1288.i183.us199, %.loopexit.split.us209 ], [ %.1288.i183.us, %.loopexit.split.us ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.us-phi222, i64 6 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.us-phi225, i64 6 ; 2 uses
  %i.cv = sub i64 %.neg137, %.us-phi223           ; 3 uses
  %i.cw = icmp ugt i64 %i.cv, 7
  br i1 %i.cw, label %.lr.ph235, label %.preheader143

.preheader143:                                    ; preds = %bb.i, %.split221.us
  %.027.i20.lcssa = phi i64 [ %i.cv, %.split221.us ], [ %i.dg, %bb.i ] ; 3 uses
  %.025.i21.lcssa = phi ptr [ %i.cu, %.split221.us ], [ %i.de, %bb.i ]
  %.022.i22.lcssa = phi ptr [ %i.ct, %.split221.us ], [ %i.df, %bb.i ] ; 3 uses
  %.not.i27239 = icmp eq i64 %.027.i20.lcssa, 0
  br i1 %.not.i27239, label %.critedge.i28, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader143
  %scevgep = getelementptr i8, ptr %.022.i22.lcssa, i64 %.027.i20.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %.split221.us, %bb.i
  %.022.i22234 = phi ptr [ %i.df, %bb.i ], [ %i.ct, %.split221.us ] ; 3 uses
  %.025.i21233 = phi ptr [ %i.de, %bb.i ], [ %i.cu, %.split221.us ] ; 2 uses
  %.027.i20232 = phi i64 [ %i.dg, %bb.i ], [ %i.cv, %.split221.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i21233, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i22234, align 1 ; 2 uses
  %.not30.i30 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph235
  %i.cx = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.cy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cx, i1 true)
  %i.cz = ptrtoint ptr %.022.i22234 to i64
  %i.da = ptrtoint ptr %i.ct to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr i64 %i.cy, 3
  %i.dd = add i64 %i.db, %i.dc
  br label %FindMatchLengthWithLimit.exit33

bb.i:                                             ; preds = %.lr.ph235
  %i.de = getelementptr inbounds nuw i8, ptr %.025.i21233, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.022.i22234, i64 8 ; 2 uses
  %i.dg = add i64 %.027.i20232, -8                ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 7
  br i1 %i.dh, label %.lr.ph235, label %.preheader143, !llvm.loop !47

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.j
  %.224.i26242 = phi ptr [ %9, %bb.j ], [ %.022.i22.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %.126.i25241 = phi ptr [ %i.dl, %bb.j ], [ %.025.i21.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.128.i24240 = phi i64 [ %8, %bb.j ], [ %.027.i20.lcssa, %.lr.ph243.preheader ]
  %i.di = load i8, ptr %.224.i26242, align 1, !tbaa !11
  %i.dj = load i8, ptr %.126.i25241, align 1, !tbaa !11
  %i.dk = icmp eq i8 %i.di, %i.dj
  br i1 %i.dk, label %bb.j, label %.critedge.i28

bb.j:                                             ; preds = %.lr.ph243
  %8 = add nsw i64 %.128.i24240, -1               ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.126.i25241, i64 1
  %9 = getelementptr inbounds nuw i8, ptr %.224.i26242, i64 1
  %.not.i27.a = icmp eq i64 %8, 0
  br i1 %.not.i27.a, label %.critedge.i28, label %.lr.ph243, !llvm.loop !48

.critedge.i28:                                    ; preds = %bb.j, %.lr.ph243, %.preheader143
  %.224.i26.lcssa = phi ptr [ %.022.i22.lcssa, %.preheader143 ], [ %.224.i26242, %.lr.ph243 ], [ %scevgep, %bb.j ]
  %i.dm = ptrtoint ptr %.224.i26.lcssa to i64
  %i.dn = ptrtoint ptr %i.ct to i64
  %i.do = sub i64 %i.dm, %i.dn
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.h, %.critedge.i28
  %.2.i29 = phi i64 [ %i.dd, %bb.h ], [ %i.do, %.critedge.i28 ] ; 4 uses
  %i.dp = add i64 %.2.i29, 6                      ; 7 uses
  %i.dq = trunc i64 %.us-phi224 to i32            ; 3 uses
  %i.dr = ptrtoint ptr %.0273.i to i64
  %i.ds = sub i64 %.us-phi223, %i.dr              ; 2 uses
  %i.dt = trunc i64 %i.ds to i32                  ; 10 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.us-phi225, i64 %i.dp ; 9 uses
  %i.dv = icmp ult i32 %i.dt, 6
  br i1 %i.dv, label %EmitInsertLen.exit, label %bb.k

bb.k:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.dw = icmp ult i32 %i.dt, 130
  br i1 %i.dw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dx = add nsw i32 %i.dt, -2                   ; 3 uses
  %i.dy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dx, i1 true)
  %i.dz = sub nuw nsw i32 30, %i.dy               ; 3 uses
  %i.ea = lshr i32 %i.dx, %i.dz                   ; 2 uses
  %i.eb = shl nuw nsw i32 %i.dz, 1
  %i.ec = add nuw nsw i32 %i.ea, 2
  %i.ed = add nuw nsw i32 %i.ec, %i.eb
  %i.ee = shl nuw nsw i32 %i.ea, %i.dz
  %i.ef = sub nsw i32 %i.dx, %i.ee
  %i.eg = shl nsw i32 %i.ef, 8
  %i.eh = or i32 %i.eg, %i.ed
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.ei = icmp ult i32 %i.dt, 2114
  br i1 %i.ei, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ej = add nsw i32 %i.dt, -66                  ; 2 uses
  %i.ek = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ej, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.ek
  %i.el = add nsw i32 %.neg.i, %i.ej
  %i.em = shl nsw i32 %i.el, 8
  %reass.sub = sub nsw i32 %i.em, %i.ek
  %i.en = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.eo = icmp ult i32 %i.dt, 6210
  br i1 %i.eo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ep = shl nuw nsw i32 %i.dt, 8
  %i.eq = add nsw i32 %i.ep, -541163
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.er = icmp ult i32 %i.dt, 22594
  %i.es = shl i32 %i.dt, 8                        ; 2 uses
  br i1 %i.er, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.et = add nsw i32 %i.es, -1589738
  br label %EmitInsertLen.exit

bb.s:                                             ; preds = %bb.q
  %i.eu = add i32 %i.es, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.l, %bb.n, %bb.p, %bb.r, %bb.s
  %.sink = phi i32 [ %i.eu, %bb.s ], [ %i.eh, %bb.l ], [ %i.en, %bb.n ], [ %i.eq, %bb.p ], [ %i.et, %bb.r ], [ %i.dt, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.190, align 4, !tbaa !5
  %i.ev = getelementptr inbounds nuw i8, ptr %.190, i64 4
  %sext.i = shl i64 %i.ds, 32
  %i.ew = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0273.i, i64 %i.ew, i1 false)
  %i.ex = getelementptr inbounds i8, ptr %.1, i64 %i.ew ; 3 uses
  %i.ey = icmp eq i32 %.0276.i.fr, %i.dq
  br i1 %i.ey, label %bb.u, label %bb.t

bb.t:                                             ; preds = %EmitInsertLen.exit
  %i.ez = add i32 %i.dq, 3                        ; 3 uses
  %i.fa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ez, i1 true) ; 2 uses
  %i.fb = sub nsw i32 30, %i.fa                   ; 2 uses
  %i.fc = lshr i32 %i.ez, %i.fb
  %i.fd = and i32 %i.fc, 1                        ; 2 uses
  %i.fe = or disjoint i32 %i.fd, 2
  %i.ff = shl nuw i32 %i.fe, %i.fb
  %i.fg = shl nuw nsw i32 %i.fa, 1
  %reass.sub290 = sub nsw i32 %i.fd, %i.fg
  %i.fh = add nsw i32 %reass.sub290, 138
  %i.fi = sub i32 %i.ez, %i.ff
  %i.fj = shl i32 %i.fi, 8
  %i.fk = or i32 %i.fj, %i.fh
  br label %bb.u

bb.u:                                             ; preds = %EmitInsertLen.exit, %bb.t
  %storemerge = phi i32 [ %i.fk, %bb.t ], [ 64, %EmitInsertLen.exit ]
  %.1277.i = phi i32 [ %i.dq, %bb.t ], [ %.0276.i.fr, %EmitInsertLen.exit ] ; 3 uses
  store i32 %storemerge, ptr %i.ev, align 4, !tbaa !5
  %.291 = getelementptr inbounds nuw i8, ptr %.190, i64 8 ; 5 uses
  %i.fl = icmp ult i64 %i.dp, 12
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fm = trunc nuw nsw i64 %i.dp to i32
  %i.fn = add nuw nsw i32 %i.fm, 20
  store i32 %i.fn, ptr %.291, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.fo = icmp ult i64 %i.dp, 72
  br i1 %i.fo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fp = add nsw i64 %.2.i29, -2                 ; 3 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fq, i1 true)
  %i.fs = sub nuw nsw i32 30, %i.fr
  %i.ft = zext nneg i32 %i.fs to i64              ; 3 uses
  %i.fu = lshr i64 %i.fp, %i.ft                   ; 2 uses
  %i.fv = shl nuw nsw i64 %i.ft, 1
  %i.fw = add nuw nsw i64 %i.fu, 28
  %i.fx = add nuw nsw i64 %i.fw, %i.fv
  %i.fy = shl nuw nsw i64 %i.fu, %i.ft
  %i.fz = sub nsw i64 %i.fp, %i.fy
  %i.ga = shl nsw i64 %i.fz, 8
  %i.gb = or i64 %i.ga, %i.fx
  %i.gc = trunc i64 %i.gb to i32
  store i32 %i.gc, ptr %.291, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.gd = icmp ult i64 %i.dp, 136
  br i1 %i.gd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ge = add nsw i64 %.2.i29, -2                 ; 2 uses
  %i.gf = lshr i64 %i.ge, 5
  %i.gg = add nuw nsw i64 %i.gf, 54
  %i.gh = shl nuw nsw i64 %i.ge, 8
  %i.gi = and i64 %i.gh, 7936
  %i.gj = or i64 %i.gg, %i.gi
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  store i32 %i.gk, ptr %.291, align 4, !tbaa !5
  %i.gl = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gl, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %i.gm = icmp ult i64 %i.dp, 2120
  br i1 %i.gm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gn = add nsw i64 %.2.i29, -66                ; 2 uses
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %i.gp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.go, i1 true)
  %i.gq = xor i32 %i.gp, 31
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.gs = add nuw nsw i64 %i.gr, 52
  %.neg.i36 = shl nsw i64 -1, %i.gr
  %i.gt = add nsw i64 %.neg.i36, %i.gn
  %i.gu = shl nsw i64 %i.gt, 8
  %i.gv = or disjoint i64 %i.gu, %i.gs
  %i.gw = trunc i64 %i.gv to i32
  store i32 %i.gw, ptr %.291, align 4, !tbaa !5
  %i.gx = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gx, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

bb.ac:                                            ; preds = %bb.aa
  %.tr.i = trunc i64 %i.dp to i32
  %i.gy = shl i32 %.tr.i, 8
  %i.gz = add i32 %i.gy, -542657
  store i32 %i.gz, ptr %.291, align 4, !tbaa !5
  %i.ha = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.ha, align 4, !tbaa !5
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ac
  %.sink475 = phi i64 [ 12, %bb.v ], [ 12, %bb.x ], [ 16, %bb.z ], [ 16, %bb.ab ], [ 16, %bb.ac ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.190, i64 %.sink475 ; 4 uses
  %.not312.i = icmp ult ptr %i.du, %i.j
  br i1 %.not312.i, label %bb.ad, label %.thread125, !prof !42

bb.ad:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.hc = getelementptr inbounds i8, ptr %i.du, i64 -5
  %.0.copyload.i44 = load i64, ptr %i.hc, align 1 ; 3 uses
  %i.hd = mul i64 %.0.copyload.i44, 33215796281344
  %i.he = lshr i64 %i.hd, 47
  %i.hf = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.hg = sub i64 %i.hf, %i.a
  %i.hh = trunc i64 %i.hg to i32                  ; 6 uses
  %i.hi = add i32 %i.hh, -5
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.he
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !5
  %i.hk = shl i64 %.0.copyload.i44, 8
  %i.hl = and i64 %i.hk, -65536
  %i.hm = mul i64 %i.hl, 506832829
end_hunk_1
