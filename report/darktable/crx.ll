Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/crx?download=true
inline.NumInlined: 287
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_Z12crxMakeQStepP8CrxImageP7CrxTilePij:bb.a
bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge172.us = phi i32 [ %i.cd, %bb.p ], [ %i.ck, %bb.q ]
  store i32 %storemerge172.us, ptr %.1147175.us, align 4, !tbaa !29
  %i.cl = add nuw nsw i32 %.0139180.us, 1         ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1147175.us, i64 4 ; 3 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.h
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.o, !llvm.loop !312

._crit_edge.us:                                   ; preds = %bb.r
  %i.cn = add nuw nsw i32 %.0144182.us, 1         ; 2 uses
  %i.co = add nuw nsw <4 x i32> %i.bk, splat (i32 4)
  %exitcond243.not = icmp eq i32 %i.cn, %i.r
  br i1 %exitcond243.not, label %._crit_edge185, label %.lr.ph.us, !llvm.loop !313

._crit_edge185:                                   ; preds = %._crit_edge.us, %.lr.ph184, %bb.n
  %.0146.lcssa = phi ptr [ %i.bc, %bb.n ], [ %i.bc, %.lr.ph184 ], [ %i.cm, %._crit_edge.us ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge185, %_ZN13libraw_memmgr6mallocEm.exit
  %.2 = phi ptr [ %.0146.lcssa, %._crit_edge185 ], [ %i.bc, %_ZN13libraw_memmgr6mallocEm.exit ] ; 4 uses
  %.0145 = phi ptr [ %i.cp, %._crit_edge185 ], [ %i.af, %_ZN13libraw_memmgr6mallocEm.exit ] ; 4 uses
  store ptr %.2, ptr %.0145, align 8, !tbaa !93
  %i.cq = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  store i32 %i.h, ptr %i.cq, align 8, !tbaa !94
  %i.cr = getelementptr inbounds nuw i8, ptr %.0145, i64 12
  store i32 %i.p, ptr %i.cr, align 4, !tbaa !318
  %.not211 = icmp eq i32 %i.p, 0
  br i1 %.not211, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.s
  %i.cs = add nsw i32 %i.n, -1                    ; 2 uses
  %.not212 = icmp eq i32 %i.h, 0
  br i1 %.not212, label %._crit_edge195, label %.lr.ph.us197

.lr.ph.us197:                                     ; preds = %.lr.ph194, %._crit_edge.us198
  %indvars.iv249 = phi i32 [ %indvars.iv.next250, %._crit_edge.us198 ], [ 0, %.lr.ph194 ] ; 2 uses
  %indvars.iv244 = phi i32 [ %indvars.iv.next245, %._crit_edge.us198 ], [ 1, %.lr.ph194 ] ; 2 uses
  %.0138192.us = phi i32 [ %i.du, %._crit_edge.us198 ], [ 0, %.lr.ph194 ]
  %.3191.us = phi ptr [ %i.dt, %._crit_edge.us198 ], [ %.2, %.lr.ph194 ]
  %smin246 = tail call i32 @llvm.smin.i32(i32 %indvars.iv244, i32 %i.cs)
  %i.ct = mul i32 %i.h, %smin246
  %i.cu = sext i32 %i.ct to i64
  %smin251 = tail call i32 @llvm.smin.i32(i32 %indvars.iv249, i32 %i.cs)
  %i.cv = mul i32 %i.h, %smin251
  %i.cw = sext i32 %i.cv to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.us197, %bb.w
  %indvars.iv252 = phi i64 [ %i.cw, %.lr.ph.us197 ], [ %indvars.iv.next253, %bb.w ] ; 2 uses
  %indvars.iv247 = phi i64 [ %i.cu, %.lr.ph.us197 ], [ %indvars.iv.next248, %bb.w ] ; 2 uses
  %.0135190.us = phi i32 [ 0, %.lr.ph.us197 ], [ %i.ds, %bb.w ]
  %.4187.us = phi ptr [ %.3191.us, %.lr.ph.us197 ], [ %i.dt, %bb.w ] ; 2 uses
  %indvars.iv.next253 = add nsw i64 %indvars.iv252, 1
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv252
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !29
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, 1
  %i.cz = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv247
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !29
  %i.db = add nsw i32 %i.da, %i.cy                ; 3 uses
  %i.dc = sdiv i32 %i.db, 2                       ; 2 uses
  %i.dd = sdiv i32 %i.db, 12                      ; 2 uses
  %i.de = icmp sgt i32 %i.db, 71
  br i1 %i.de, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = srem i32 %i.dc, 6
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr @q_step_tbl, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !29
  %i.dj = sub nsw i32 6, %i.dd
  %i.dk = ashr i32 %i.di, %i.dj
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dl = urem i32 %i.dc, 6
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @q_step_tbl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !29
  %i.dp = add nuw nsw i32 %i.dd, 26
  %i.dq = and i32 %i.dp, 31
  %i.dr = shl i32 %i.do, %i.dq
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge171.us = phi i32 [ %i.dk, %bb.u ], [ %i.dr, %bb.v ]
  store i32 %storemerge171.us, ptr %.4187.us, align 4, !tbaa !29
  %i.ds = add nuw nsw i32 %.0135190.us, 1         ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.4187.us, i64 4 ; 3 uses
  %exitcond257.not = icmp eq i32 %i.ds, %i.h
  br i1 %exitcond257.not, label %._crit_edge.us198, label %bb.t, !llvm.loop !314

._crit_edge.us198:                                ; preds = %bb.w
  %i.du = add nuw nsw i32 %.0138192.us, 1         ; 2 uses
  %indvars.iv.next245 = add nuw nsw i32 %indvars.iv244, 2
  %indvars.iv.next250 = add nuw nsw i32 %indvars.iv249, 2
  %exitcond258.not = icmp eq i32 %i.du, %i.p
  br i1 %exitcond258.not, label %._crit_edge195, label %.lr.ph.us197, !llvm.loop !315

._crit_edge195:                                   ; preds = %._crit_edge.us198, %.lr.ph194, %bb.s
  %.3.lcssa = phi ptr [ %.2, %bb.s ], [ %.2, %.lr.ph194 ], [ %i.dt, %._crit_edge.us198 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge195, %_ZN13libraw_memmgr6mallocEm.exit
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge195 ], [ %i.bc, %_ZN13libraw_memmgr6mallocEm.exit ] ; 2 uses
  %.1 = phi ptr [ %i.dv, %._crit_edge195 ], [ %i.af, %_ZN13libraw_memmgr6mallocEm.exit ] ; 3 uses
  store ptr %.5, ptr %.1, align 8, !tbaa !93
  %i.dw = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i32 %i.h, ptr %i.dw, align 8, !tbaa !94
  %i.dx = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 %i.n, ptr %i.dx, align 4, !tbaa !318
  %i.dy = icmp ne i32 %i.n, 0
  %i.dz = icmp ne i32 %i.h, 0
  %or.cond208 = and i1 %i.dy, %i.dz
  br i1 %or.cond208, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.x, %._crit_edge
  %.0134207 = phi i32 [ %i.ea, %._crit_edge ], [ 0, %bb.x ]
  %.6206 = phi ptr [ %i.es, %._crit_edge ], [ %.5, %bb.x ]
  %.0152205 = phi ptr [ %i.et, %._crit_edge ], [ %2, %bb.x ]
  br label %bb.y

._crit_edge:                                      ; preds = %bb.ab
  %i.ea = add nuw nsw i32 %.0134207, 1            ; 2 uses
  %exitcond260.not = icmp eq i32 %i.ea, %i.n
  br i1 %exitcond260.not, label %.loopexit, label %.preheader, !llvm.loop !316

bb.y:                                             ; preds = %.preheader, %bb.ab
  %.0203 = phi i32 [ 0, %.preheader ], [ %i.er, %bb.ab ]
  %.7202 = phi ptr [ %.6206, %.preheader ], [ %i.es, %bb.ab ] ; 2 uses
  %.1153201 = phi ptr [ %.0152205, %.preheader ], [ %i.et, %bb.ab ] ; 2 uses
  %i.eb = load i32, ptr %.1153201, align 4, !tbaa !29 ; 4 uses
  %i.ec = sdiv i32 %i.eb, 6                       ; 2 uses
  %i.ed = srem i32 %i.eb, 6
  %i.ee = icmp sgt i32 %i.eb, 35
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ef = urem i32 %i.eb, 6
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @q_step_tbl, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !29
  %i.ej = add nuw nsw i32 %i.ec, 26
  %i.ek = and i32 %i.ej, 31
  %i.el = shl i32 %i.ei, %i.ek
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.em = sext i32 %i.ed to i64
  %i.en = getelementptr inbounds [4 x i8], ptr @q_step_tbl, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !29
  %i.ep = sub nsw i32 6, %i.ec
  %i.eq = ashr i32 %i.eo, %i.ep
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %storemerge = phi i32 [ %i.eq, %bb.aa ], [ %i.el, %bb.z ]
  store i32 %storemerge, ptr %.7202, align 4, !tbaa !29
  %i.er = add nuw nsw i32 %.0203, 1               ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.7202, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1153201, i64 4 ; 2 uses
  %exitcond259.not = icmp eq i32 %i.er, %i.h
  br i1 %exitcond259.not, label %._crit_edge, label %bb.y, !llvm.loop !317

.loopexit:                                        ; preds = %._crit_edge, %bb.x, %_ZN13libraw_memmgr6mallocEm.exit.thread, %_ZN13libraw_memmgr6mallocEm.exit, %bb.a
  %.1151 = phi i32 [ -1, %bb.a ], [ -1, %_ZN13libraw_memmgr6mallocEm.exit.thread ], [ 0, %_ZN13libraw_memmgr6mallocEm.exit ], [ 0, %bb.x ], [ 0, %._crit_edge ]
  ret i32 %.1151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z18crxProcessSubbandsP17crx_data_header_tP8CrxImageP7CrxTileP12CrxPlaneComp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !131
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.h = load i16, ptr %i.g, align 2, !tbaa !150  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.j = load i16, ptr %i.i, align 4, !tbaa !163  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !144   ; 5 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -64
  store i16 %i.j, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -62
  store i16 %i.h, ptr %i.n, align 2, !tbaa !96
  br label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 -88 ; 4 uses
  %i.p = zext i16 %i.j to i32                     ; 5 uses
  %i.q = zext i16 %i.h to i32                     ; 5 uses
  %i.r = zext i8 %i.l to i64                      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 192
  %4 = getelementptr i8, ptr @exCoefNumTbl, i64 %i.s
  %5 = getelementptr i8, ptr %4, i64 -192         ; 2 uses
  %i.t = and i32 %i.p, 7
  %i.u = mul nuw nsw i32 %i.t, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.v ; 4 uses
  %i.x = and i32 %i.q, 7
  %i.y = mul nuw nsw i32 %i.x, 6
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.z ; 4 uses
  %i.ab = zext i8 %i.l to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !164 ; 4 uses
  %i.ae = and i8 %i.ad, 1
  %.not122 = icmp eq i8 %i.ae, 0                  ; 3 uses
  %i.af = lshr i8 %i.ad, 1
  %.lobit = and i8 %i.af, 1                       ; 2 uses
  %i.ag = zext nneg i8 %.lobit to i32             ; 4 uses
  %i.ah = and i8 %i.ad, 4
  %.not124 = icmp eq i8 %i.ah, 0                  ; 4 uses
  %i.ai = lshr i8 %i.ad, 3
  %.lobit138 = and i8 %i.ai, 1                    ; 2 uses
  %i.aj = zext nneg i8 %.lobit138 to i32          ; 4 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !167
  %i.al = icmp eq i32 %i.ak, 512                  ; 2 uses
  %i.am = zext nneg i8 %.lobit138 to i16          ; 2 uses
  %i.an = zext nneg i8 %.lobit to i16             ; 2 uses
  %wide.trip.count218 = zext i8 %i.l to i64       ; 4 uses
  br i1 %i.al, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us ], [ 0, %bb.b ] ; 4 uses
  %.0110143.us = phi i32 [ %i.ar, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us ], [ %i.p, %bb.b ] ; 2 uses
  %.0112142.us = phi i32 [ %i.at, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us ], [ %i.q, %bb.b ] ; 2 uses
  %.0114141.us = phi ptr [ %i.cn, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us ], [ %i.o, %bb.b ] ; 22 uses
  %i.ao = and i32 %.0110143.us, 1                 ; 2 uses
  %i.ap = and i32 %.0112142.us, 1                 ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, %.0110143.us
  %i.ar = lshr i32 %i.aq, 1                       ; 4 uses
  %i.as = add nuw nsw i32 %i.ap, %.0112142.us
  %i.at = lshr i32 %i.as, 1                       ; 4 uses
  br i1 %.not122, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.us
  %.idx222.a = shl nuw nsw i64 %indvars.iv215, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx222.a ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us
  %.0103.us = phi i32 [ %i.av, %bb.c ], [ 0, %.split.us ] ; 2 uses
  %.0102.us = phi i32 [ %i.ax, %bb.c ], [ 0, %.split.us ] ; 2 uses
  %spec.select.us = add nsw i32 %.0103.us, %i.ag
  br i1 %.not124, label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx223 = shl nuw nsw i64 %indvars.iv215, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx223 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !29
  br label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us

_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us: ; preds = %bb.e, %bb.d
  %.0101.us = phi i32 [ %i.az, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.0100.us = phi i32 [ %i.bb, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %spec.select127.us = add nsw i32 %.0101.us, %i.aj
  %i.bc = sub nsw i32 %i.ar, %i.ao
  %i.bd = add i32 %i.bc, %spec.select.us
  %i.be = trunc i32 %i.bd to i16                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0114141.us, i64 24
  store i16 %i.be, ptr %i.bf, align 8, !tbaa !91
  %i.bg = sub nsw i32 %i.at, %i.ap
  %i.bh = add i32 %i.bg, %spec.select127.us
  %i.bi = trunc i32 %i.bh to i16                  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0114141.us, i64 26
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !96
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.bk = trunc i32 %.0101.us to i16              ; 2 uses
  %i.bl = trunc i32 %.0103.us to i16              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0114141.us, i64 72
  store i16 %i.am, ptr %i.bm, align 8, !tbaa !95
  %i.bn = getelementptr inbounds nuw i8, ptr %.0114141.us, i64 74
  store i16 %i.bk, ptr %i.bn, align 2, !tbaa !97
  %i.bo = getelementptr inbounds nuw i8, ptr %.0114141.us, i64 76
  store i16 %i.an, ptr %i.bo, align 4, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %.0114141.us, i64 78
  store i16 %i.bl, ptr %i.bp, align 2, !tbaa !102
  %i.bq = getelementptr inbounds nuw i8, ptr %.0114141.us, i64 80
  %i.br = trunc i64 %indvars.iv215 to i16
  %i.bs = sub i16 2, %i.br                        ; 3 uses
  store i16 %i.bs, ptr %i.bq, align 8, !tbaa !103
  %i.bt = add i32 %.0102.us, %i.ar
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = getelementptr inbounds i8, ptr %.0114141.us, i64 -64
  store i16 %i.bu, ptr %i.bv, align 8, !tbaa !91
  %i.bw = getelementptr inbounds i8, ptr %.0114141.us, i64 -62
  store i16 %i.bi, ptr %i.bw, align 2, !tbaa !96
  %i.bx = trunc i32 %.0102.us to i16
  %i.by = getelementptr inbounds i8, ptr %.0114141.us, i64 -16
  store i16 %i.am, ptr %i.by, align 8, !tbaa !95
  %i.bz = getelementptr inbounds i8, ptr %.0114141.us, i64 -14
  store i16 %i.bk, ptr %i.bz, align 2, !tbaa !97
  %i.ca = getelementptr inbounds i8, ptr %.0114141.us, i64 -12
  store i16 0, ptr %i.ca, align 4, !tbaa !98
  %i.cb = getelementptr inbounds i8, ptr %.0114141.us, i64 -10
  store i16 %i.bx, ptr %i.cb, align 2, !tbaa !102
  %i.cc = getelementptr inbounds i8, ptr %.0114141.us, i64 -8
  store i16 %i.bs, ptr %i.cc, align 8, !tbaa !103
  %i.cd = getelementptr inbounds i8, ptr %.0114141.us, i64 -152
  store i16 %i.be, ptr %i.cd, align 8, !tbaa !91
  %i.ce = add i32 %.0100.us, %i.at
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = getelementptr inbounds i8, ptr %.0114141.us, i64 -150
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !96
  %i.ch = trunc i32 %.0100.us to i16
  %i.ci = getelementptr inbounds i8, ptr %.0114141.us, i64 -104
  store i16 0, ptr %i.ci, align 8, !tbaa !95
  %i.cj = getelementptr inbounds i8, ptr %.0114141.us, i64 -102
  store i16 %i.ch, ptr %i.cj, align 2, !tbaa !97
  %i.ck = getelementptr inbounds i8, ptr %.0114141.us, i64 -100
  store i16 %i.an, ptr %i.ck, align 4, !tbaa !98
  %i.cl = getelementptr inbounds i8, ptr %.0114141.us, i64 -98
  store i16 %i.bl, ptr %i.cl, align 2, !tbaa !102
  %i.cm = getelementptr inbounds i8, ptr %.0114141.us, i64 -96
  store i16 %i.bs, ptr %i.cm, align 8, !tbaa !103
  %i.cn = getelementptr inbounds i8, ptr %.0114141.us, i64 -264 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %.split146.us, label %.split.us, !llvm.loop !319

.split:                                           ; preds = %bb.b
  br i1 %.not122, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us157
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us157 ], [ 0, %.split ] ; 2 uses
  %.0110143.us151 = phi i32 [ %i.cr, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us157 ], [ %i.p, %.split ] ; 2 uses
  %.0112142.us152 = phi i32 [ %i.ct, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us157 ], [ %i.q, %.split ] ; 2 uses
  %.0114141.us153 = phi ptr [ %i.dq, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us157 ], [ %i.o, %.split ] ; 10 uses
  %i.co = and i32 %.0110143.us151, 1              ; 2 uses
  %i.cp = and i32 %.0112142.us152, 1              ; 2 uses
  %i.cq = add nuw nsw i32 %i.co, %.0110143.us151
  %i.cr = lshr i32 %i.cq, 1                       ; 4 uses
  %i.cs = add nuw nsw i32 %i.cp, %.0112142.us152
  %i.ct = lshr i32 %i.cs, 1                       ; 4 uses
  br i1 %.not124, label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us157, label %bb.f

bb.f:                                             ; preds = %.split.split.us
  %.idx221.a = shl nuw nsw i64 %indvars.iv210, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx221.a ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !29
  br label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us157

_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us157: ; preds = %bb.f, %.split.split.us
  %.0101.us158 = phi i32 [ %i.cv, %bb.f ], [ 0, %.split.split.us ]
  %.0100.us159 = phi i32 [ %i.cx, %bb.f ], [ 0, %.split.split.us ]
  %spec.select127.us160 = add nsw i32 %.0101.us158, %i.aj
  %i.cy = sub nsw i32 %i.cr, %i.co
  %i.cz = add nsw i32 %i.cy, %i.ag
  %i.da = trunc i32 %i.cz to i16                  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0114141.us153, i64 24
  store i16 %i.da, ptr %i.db, align 8, !tbaa !91
  %i.dc = sub nsw i32 %i.ct, %i.cp
  %i.dd = add i32 %i.dc, %spec.select127.us160
  %i.de = trunc i32 %i.dd to i16                  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0114141.us153, i64 26
  store i16 %i.de, ptr %i.df, align 2, !tbaa !96
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0114141.us153, i64 72
  %i.dh = trunc nuw i32 %i.cr to i16
  %i.di = getelementptr inbounds i8, ptr %.0114141.us153, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dg, i8 0, i64 10, i1 false)
  store i16 %i.dh, ptr %i.di, align 8, !tbaa !91
  %i.dj = getelementptr inbounds i8, ptr %.0114141.us153, i64 -62
  store i16 %i.de, ptr %i.dj, align 2, !tbaa !96
  %i.dk = getelementptr inbounds i8, ptr %.0114141.us153, i64 -16
  %i.dl = getelementptr inbounds i8, ptr %.0114141.us153, i64 -152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dk, i8 0, i64 10, i1 false)
  store i16 %i.da, ptr %i.dl, align 8, !tbaa !91
  %i.dm = add i32 %.0100.us159, %i.ct
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr inbounds i8, ptr %.0114141.us153, i64 -150
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !96
  %i.dp = getelementptr inbounds i8, ptr %.0114141.us153, i64 -104
  %i.dq = getelementptr inbounds i8, ptr %.0114141.us153, i64 -264 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count218
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dp, i8 0, i64 10, i1 false)
  br i1 %exitcond214.not, label %.split146.us, label %.split.split.us, !llvm.loop !319

.split.split:                                     ; preds = %.split
  br i1 %.not124, label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us176, label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129

_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us176: ; preds = %.split.split, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us176
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us176 ], [ 0, %.split.split ] ; 2 uses
  %.0110143.us172 = phi i32 [ %i.du, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us176 ], [ %i.p, %.split.split ] ; 2 uses
  %.0112142.us173 = phi i32 [ %i.dw, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us176 ], [ %i.q, %.split.split ] ; 2 uses
  %.0114141.us174 = phi ptr [ %i.et, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit129.us176 ], [ %i.o, %.split.split ] ; 10 uses
  %i.dr = and i32 %.0110143.us172, 1              ; 2 uses
  %i.ds = and i32 %.0112142.us173, 1              ; 2 uses
  %i.dt = add nuw nsw i32 %i.dr, %.0110143.us172
  %i.du = lshr i32 %i.dt, 1                       ; 4 uses
  %i.dv = add nuw nsw i32 %i.ds, %.0112142.us173
  %i.dw = lshr i32 %i.dv, 1                       ; 4 uses
  %.idx220 = shl nuw nsw i64 %indvars.iv205, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx220 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
end_hunk_0
