Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-enc-zrle?download=true
inline.NumInlined: 86
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zrle_encode_tile16be:bb.a
  %.not210 = icmp eq i64 %i.ah, 0
  br i1 %.not210, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g, %.lr.ph188
  %i.an = phi i64 [ %i.as, %.lr.ph188 ], [ 0, %bb.g ]
  %.0123186 = phi i32 [ %i.ar, %.lr.ph188 ], [ 0, %bb.g ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.aq, ptr %i.c, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ar = add i32 %.0123186, 1                    ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp ugt i64 %i.ah, %i.as
  br i1 %i.at, label %.lr.ph188, label %._crit_edge189, !llvm.loop !43

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  %i.au = trunc nuw i8 %i.ai to i1
  br i1 %i.au, label %.preheader, label %bb.q

.thread144:                                       ; preds = %bb.f
  %i.av = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.aw = shl nuw i8 %i.av, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.aw) #9
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %.preheader, label %.thread145

.preheader:                                       ; preds = %._crit_edge189, %.thread144
  br i1 %i.p, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader, %bb.p
  %.3208 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.ay = load i16, ptr %.3208, align 2           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph209
  %.3.pn = phi ptr [ %.3208, %.lr.ph209 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2 ; 5 uses
  %i.az = load i16, ptr %.4, align 2
  %i.ba = icmp eq i16 %i.az, %i.ay
  %i.bb = icmp ult ptr %.4, %i.l                  ; 2 uses
  %i.bc = and i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i, !llvm.loop !44

bb.i:                                             ; preds = %bb.h
  %i.bd = ptrtoint ptr %.4 to i64
  %i.be = ptrtoint ptr %.3208 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 1
  %i.bh = trunc i64 %i.bg to i32                  ; 3 uses
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = zext i16 %i.ay to i32
  %i.bj = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.bi) #9
  %i.bk = trunc i32 %i.bj to i8                   ; 4 uses
  %i.bl = icmp slt i32 %i.bh, 3
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp eq i32 %i.bh, 2
  br i1 %i.bm, label %bb.l, label %bb.p, !llvm.loop !45

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bk) #9
  br label %bb.p, !llvm.loop !45

bb.m:                                             ; preds = %bb.j
  %i.bn = or i8 %i.bk, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bn) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ay, ptr %i.b, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = add i32 %i.bh, -1                       ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 254
  br i1 %i.bp, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.o, %.lr.ph205
  %.0120203 = phi i32 [ %i.bq, %.lr.ph205 ], [ %i.bo, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bq = add nsw i32 %.0120203, -255             ; 2 uses
  %i.br = icmp samesign ugt i32 %.0120203, 509
  br i1 %i.br, label %.lr.ph205, label %._crit_edge206, !llvm.loop !46

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.o
  %.0120.lcssa = phi i32 [ %i.bo, %bb.o ], [ %i.bq, %.lr.ph205 ]
  %i.bs = trunc i32 %.0120.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge206
  %.sink = phi i8 [ %i.bs, %._crit_edge206 ], [ %i.bk, %bb.l ], [ %i.bk, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.bb, label %.lr.ph209, label %.loopexit

bb.q:                                             ; preds = %._crit_edge189
  %i.bt = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bu = icmp ult i64 %i.bt, 17
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__.zrle_encode_tile16be) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bv = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bw = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = icmp sgt i32 %4, 0
  br i1 %i.bz, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %bb.s
  %i.ca = sext i32 %3 to i64
  %i.cb = trunc i32 %i.by to i8
  %.idx211 = shl nsw i64 %i.ca, 1
  %i.cc = icmp sgt i32 %3, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph202, %._crit_edge195.thread
  %.5200 = phi ptr [ %2, %.lr.ph202 ], [ %.6.lcssa285, %._crit_edge195.thread ] ; 3 uses
  %.1124199 = phi i32 [ 0, %.lr.ph202 ], [ %i.ct, %._crit_edge195.thread ]
  %i.cd = getelementptr inbounds i8, ptr %.5200, i64 %.idx211 ; 2 uses
  br i1 %i.cc, label %.lr.ph194, label %._crit_edge195.thread

.lr.ph194:                                        ; preds = %bb.t, %.lr.ph194.backedge
  %.0192 = phi i32 [ %i.cj, %.lr.ph194.backedge ], [ 0, %bb.t ]
  %.0118191 = phi i8 [ %.0118191.be, %.lr.ph194.backedge ], [ 0, %bb.t ]
  %.6190 = phi ptr [ %i.ce, %.lr.ph194.backedge ], [ %.5200, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.6190, i64 2 ; 6 uses
  %i.cf = load i16, ptr %.6190, align 2
  %i.cg = zext i16 %i.cf to i32
  %i.ch = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.cg) #9
  %i.ci = shl i32 %.0192, %i.by
  %i.cj = or i32 %i.ch, %i.ci                     ; 3 uses
  %i.ck = add i8 %.0118191, %i.cb                 ; 4 uses
  %i.cl = icmp ugt i8 %i.ck, 7
  br i1 %i.cl, label %.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph194
  %i.cm = icmp ult ptr %i.ce, %i.cd
  br i1 %i.cm, label %.lr.ph194.backedge, label %._crit_edge195

.lr.ph194.backedge:                               ; preds = %bb.u, %.thread
  %.0118191.be = phi i8 [ 0, %.thread ], [ %i.ck, %bb.u ]
  br label %.lr.ph194, !llvm.loop !47

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
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !48

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
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %.idx432.i = shl nsw i64 %i.dd, 2               ; 9 uses
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
  br i1 %i.dr, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !49

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.df ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.dj
  br i1 %i.dt, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !50

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

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.preheader.us, %.lr.ph327.i.us
  %.4230325.i.us = phi ptr [ %i.eg, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.eh, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ef = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ef, ptr %.4238324.i.us, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.ei = icmp ult ptr %i.eg, %i.ee
  br i1 %i.ei, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !51

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.ec ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.dz
  br i1 %i.ek, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !52

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

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.preheader.us, %.lr.ph341.i.us
  %.7233339.i.us = phi ptr [ %i.er, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.es, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eq = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eq, ptr %.7241338.i.us, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.et = icmp ult ptr %i.er, %i.ep
  br i1 %i.et, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !53

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.eb ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %i.en
  br i1 %i.ev, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !54

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
  %i.fl = and i64 %i.fk, -4
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %i.fl
  %scevgep354 = getelementptr i8, ptr %.04657.i.us.i, i64 2
  %i.fm = lshr i64 %i.fk, 1
  %i.fn = and i64 %i.fm, 9223372036854775806
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.fn
  %bound0 = icmp ult ptr %.04558.i.us.i, %scevgep355
  %bound1 = icmp ult ptr %.04657.i.us.i, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fe, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fo = and i64 %i.fg, 8
  %n.vec = and i64 %i.fg, 9223372036854775792     ; 5 uses
  %i.fp = shl i64 %n.vec, 2
  %i.fq = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fp ; 2 uses
  %i.fr = shl nuw i64 %n.vec, 1
  %i.fs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fr ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %i.fu = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fu, i64 4
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fv, i64 8
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.fw, i64 12
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fx, i64 16
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fy, i64 20
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.fz, i64 24
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.ga, i64 28
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.gb, i64 32
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
end_hunk_0
begin_hunk_1_@zrle_encode_tile16be:bb.a

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_16be.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef range(i32 1, 256) %5)
  %i.ux = icmp slt i32 %i.cw, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_16be.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_16be.exit.i ], [ %i.yl, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_16be.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.uy = shl i32 2, %.0243417.i                  ; 3 uses
  %i.uz = ashr exact i32 %i.uy, 1                 ; 2 uses
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.va ; 3 uses
  %i.vc = mul i32 %i.uz, %i.cw
  %i.vd = sext i32 %i.vc to i64                   ; 2 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.vd ; 2 uses
  %i.vf = getelementptr inbounds i8, ptr %i.ve, i64 %.idx432.i
  br i1 %i.ew, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vg = sext i32 %i.uy to i64                   ; 4 uses
  %i.vh = add i32 %i.uy, -1
  %i.vi = mul i32 %i.vh, %i.cw
  %i.vj = sext i32 %i.vi to i64                   ; 4 uses
  br i1 %i.ux, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wb, %._crit_edge355.i.loopexit.us ], [ %i.ve, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.vy, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vk = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.preheader.us, %.lr.ph354.i.us
  %.1352.i.us = phi ptr [ %i.vz, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.vy, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vm = load i8, ptr %i.vl, align 1
  %i.vn = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vo = load i8, ptr %i.vn, align 1             ; 2 uses
  %i.vp = load i8, ptr %.1352.i.us, align 1
  %i.vq = and i8 %i.vm, -8
  %i.vr = lshr i8 %i.vo, 5
  %i.vs = or disjoint i8 %i.vr, %i.vq
  store i8 %i.vs, ptr %.2247350.i.us, align 1
  %i.vt = lshr i8 %i.vp, 3
  %i.vu = shl i8 %i.vo, 3
  %i.vv = and i8 %i.vu, -32
  %i.vw = or disjoint i8 %i.vv, %i.vt
  %i.vx = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vw, ptr %i.vx, align 1
  %i.vy = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vg ; 3 uses
  %i.wa = icmp ult ptr %i.vz, %i.vk
  br i1 %i.wa, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !67

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.vj ; 2 uses
  %i.wc = icmp ult ptr %i.wb, %i.vf
  br i1 %i.wc, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !68

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vd ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.ww, %._crit_edge372.i.loopexit.us ], [ %i.wd, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wt, %._crit_edge372.i.loopexit.us ], [ %i.vy, %._crit_edge364.i ]
  %i.wf = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.preheader.us, %.lr.ph371.i.us
  %.3369.i.us = phi ptr [ %i.wu, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wt, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wh = load i8, ptr %i.wg, align 1
  %i.wi = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wj = load i8, ptr %i.wi, align 1             ; 2 uses
  %i.wk = load i8, ptr %.3369.i.us, align 1
  %i.wl = and i8 %i.wh, -8
  %i.wm = lshr i8 %i.wj, 5
  %i.wn = or disjoint i8 %i.wm, %i.wl
  store i8 %i.wn, ptr %.5250367.i.us, align 1
  %i.wo = lshr i8 %i.wk, 3
  %i.wp = shl i8 %i.wj, 3
  %i.wq = and i8 %i.wp, -32
  %i.wr = or disjoint i8 %i.wq, %i.wo
  %i.ws = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wr, ptr %i.ws, align 1
  %i.wt = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wu = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vg ; 3 uses
  %i.wv = icmp ult ptr %i.wu, %i.wf
  br i1 %i.wv, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !69

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.vj ; 2 uses
  %i.wx = icmp ult ptr %i.ww, %i.we
  br i1 %i.wx, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !70

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xq, %._crit_edge389.i.loopexit.us ], [ %i.vb, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xn, %._crit_edge389.i.loopexit.us ], [ %i.wt, %._crit_edge381.i ]
  %i.wz = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.preheader.us, %.lr.ph388.i.us
  %.5386.i.us = phi ptr [ %i.xo, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xn, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xb = load i8, ptr %i.xa, align 1
  %i.xc = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xd = load i8, ptr %i.xc, align 1             ; 2 uses
  %i.xe = load i8, ptr %.5386.i.us, align 1
  %i.xf = and i8 %i.xb, -8
  %i.xg = lshr i8 %i.xd, 5
  %i.xh = or disjoint i8 %i.xg, %i.xf
  store i8 %i.xh, ptr %.8253384.i.us, align 1
  %i.xi = lshr i8 %i.xe, 3
  %i.xj = shl i8 %i.xd, 3
  %i.xk = and i8 %i.xj, -32
  %i.xl = or disjoint i8 %i.xk, %i.xi
  %i.xm = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xl, ptr %i.xm, align 1
  %i.xn = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xo = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vg ; 3 uses
  %i.xp = icmp ult ptr %i.xo, %i.wz
  br i1 %i.xp, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !71

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xo, i64 %i.vj ; 2 uses
  %i.xr = icmp ult ptr %i.xq, %i.wy
  br i1 %i.xr, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !72

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xn, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.cu
  %brmerge = or i1 %.not, %i.ux
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yj, %._crit_edge406.i.loopexit.us ], [ %i.cv, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yg, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xs = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph413.i.us, %.lr.ph405.i.us
  %.7403.i.us = phi ptr [ %i.yh, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yg, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.xu = load i8, ptr %i.xt, align 1
  %i.xv = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.xw = load i8, ptr %i.xv, align 1             ; 2 uses
  %i.xx = load i8, ptr %.7403.i.us, align 1
  %i.xy = and i8 %i.xu, -8
  %i.xz = lshr i8 %i.xw, 5
  %i.ya = or disjoint i8 %i.xz, %i.xy
  store i8 %i.ya, ptr %.11256401.i.us, align 1
  %i.yb = lshr i8 %i.xx, 3
  %i.yc = shl i8 %i.xw, 3
  %i.yd = and i8 %i.yc, -32
  %i.ye = or disjoint i8 %i.yd, %i.yb
  %i.yf = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.ye, ptr %i.yf, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yh = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vg ; 3 uses
  %i.yi = icmp ult ptr %i.yh, %i.xs
  br i1 %i.yi, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !73

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.vj ; 2 uses
  %i.yk = icmp ult ptr %i.yj, %i.de
  br i1 %i.yk, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !74

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yg, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.yl = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.yl, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !75

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.k, 2                ; 4 uses
  %i.ym = getelementptr inbounds i8, ptr %i.cv, i64 %.idx440.i
  %i.yn = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yn, label %.lr.ph423.i.preheader, label %zywrle_analyze_16be.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %i.yo = add i64 %.idx432.i, %i.a
  %i.yp = add i64 %i.yo, 86852
  %i.yq = add i64 %.idx440.i, %i.a
  %i.yr = add i64 %i.yq, 86848
  %i.ys = tail call i64 @llvm.umax.i64(i64 %i.yp, i64 %i.yr)
  %i.yt = add i64 %i.ys, -86849
  %6 = shl nsw i64 %i.dd, 2
  %i.yu = add i64 %6, %i.a
  %i.yv = sub i64 %i.yt, %i.yu                    ; 2 uses
  %i.yw = lshr i64 %i.yv, 2
  %i.yx = add nuw nsw i64 %i.yw, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.yv, 240
  br i1 %min.iters.check419, label %.lr.ph423.i.preheader440, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph423.i.preheader
  %i.yy = add i64 %.idx432.i, %i.a
  %i.yz = add i64 %i.yy, 86852
  %i.za = add i64 %.idx440.i, %i.a
  %i.zb = add i64 %i.za, 86848
  %umax413 = tail call i64 @llvm.umax.i64(i64 %i.yz, i64 %i.zb)
  %i.zc = add i64 %umax413, -86849
  %i.zd = add i64 %.idx432.i, %i.a
  %i.ze = sub i64 %i.zc, %i.zd                    ; 2 uses
  %i.zf = lshr i64 %i.ze, 1
  %i.zg = and i64 %i.zf, 9223372036854775806
  %i.zh = getelementptr i8, ptr %.13258.i, i64 %i.zg
  %scevgep414 = getelementptr i8, ptr %i.zh, i64 2
  %i.zi = and i64 %i.ze, -4
  %i.zj = getelementptr i8, ptr %0, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 %.idx432.i
  %scevgep415 = getelementptr i8, ptr %i.zk, i64 86850
  %bound0416 = icmp ult ptr %.13258.i, %scevgep415
  %bound1417 = icmp ult ptr %i.de, %scevgep414
  %found.conflict418 = and i1 %bound0416, %bound1417
  br i1 %found.conflict418, label %.lr.ph423.i.preheader440, label %vector.ph420

vector.ph420:                                     ; preds = %vector.memcheck412
  %i.zl = and i64 %i.yx, 7                        ; 2 uses
  %i.zm = icmp eq i64 %i.zl, 0
  %i.zn = select i1 %i.zm, i64 8, i64 %i.zl
  %n.vec421 = sub nsw i64 %i.yx, %i.zn            ; 3 uses
  %i.zo = shl i64 %n.vec421, 2
  %i.zp = getelementptr i8, ptr %i.de, i64 %i.zo
  %i.zq = shl i64 %n.vec421, 1
  %i.zr = getelementptr i8, ptr %.13258.i, i64 %i.zq
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next429, %vector.body422 ] ; 3 uses
  %i.zs = shl i64 %index423, 2                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.de, i64 %i.zs
  %i.zt = getelementptr i8, ptr %i.de, i64 %i.zs
  %next.gep425 = getelementptr i8, ptr %i.zt, i64 16
  %i.zu = shl i64 %index423, 1
  %next.gep426 = getelementptr i8, ptr %.13258.i, i64 %i.zu ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep424, align 2, !alias.scope !76
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec427 = load <8 x i16>, ptr %next.gep425, align 2, !alias.scope !76
  %strided.vec428 = shufflevector <8 x i16> %wide.vec427, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zv = getelementptr i8, ptr %next.gep426, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep426, align 2, !alias.scope !79, !noalias !76
  store <4 x i16> %strided.vec428, ptr %i.zv, align 2, !alias.scope !79, !noalias !76
  %index.next429 = add nuw i64 %index423, 8       ; 2 uses
  %i.zw = icmp eq i64 %index.next429, %n.vec421
  br i1 %i.zw, label %.lr.ph423.i.preheader440, label %vector.body422, !llvm.loop !81

.lr.ph423.i.preheader440:                         ; preds = %vector.body422, %vector.memcheck412, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.de, %vector.memcheck412 ], [ %i.de, %.lr.ph423.i.preheader ], [ %i.zp, %vector.body422 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck412 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zr, %vector.body422 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader440, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.zz, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader440 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.zy, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader440 ] ; 2 uses
  %i.zx = load i16, ptr %.8242420.i, align 2
  store i16 %i.zx, ptr %.14259419.i, align 2
  %i.zy = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.zz = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.aaa = icmp ult ptr %i.zz, %i.ym
  br i1 %i.aaa, label %.lr.ph423.i, label %zywrle_analyze_16be.exit, !llvm.loop !82

zywrle_analyze_16be.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.aab = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile16be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.aab)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  %i.aac = shl i32 %i.j, 1
  %i.aad = sext i32 %i.aac to i64
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.aad) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_16be.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @wavelet(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 256) %3) unnamed_addr #5 {
bb.a:
  %i.a = mul i32 %2, %1                           ; 2 uses
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 2
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %i.a, 0
  %i.e = sext i32 %1 to i64
  %.idx63 = shl nsw i64 %i.e, 2
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx63
  %i.g = icmp sgt i32 %1, 0
  %i.h = zext nneg i32 %3 to i64                  ; 2 uses
  %i.i = getelementptr [72 x i8], ptr @zywrle_param, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -72
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %filter_wavelet_square.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %filter_wavelet_square.exit ] ; 6 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.l = shl i32 %1, %i.k
  %i.m = shl i32 8, %i.k                          ; 2 uses
  %i.n = trunc i64 %indvars.iv to i32
  %i.o = add i32 %i.n, 1
  %i.p = ashr i32 %1, %i.o
  %i.q = mul i32 %i.p, %i.m                       ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp sgt i32 %i.q, 0
  %i.t = shl i32 4, %i.k
  %i.u = add i32 %i.m, -2
  %i.v = sext i32 %i.t to i64                     ; 3 uses
  %i.w = sext i32 %i.u to i64
  %i.x = sext i32 %i.l to i64
  br i1 %i.s, label %.lr.ph.i.us, label %._crit_edge

.lr.ph.i.us:                                      ; preds = %.lr.ph, %wavelet_level.exit.loopexit.us
  %.057.us = phi ptr [ %i.cc, %wavelet_level.exit.loopexit.us ], [ %0, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.057.us, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %harr.exit35.i.us, %.lr.ph.i.us
  %.036.i.us = phi ptr [ %.057.us, %.lr.ph.i.us ], [ %i.ca, %harr.exit35.i.us ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.036.i.us, i64 %i.v ; 2 uses
  %i.aa = load i8, ptr %.036.i.us, align 1
  %i.ab = zext i8 %i.aa to i32                    ; 6 uses
  %i.ac = load i8, ptr %i.z, align 1
  %i.ad = zext i8 %i.ac to i32                    ; 6 uses
  %i.ae = xor i32 %i.ad, %i.ab
  %.not.i.i.us = icmp samesign ult i32 %i.ae, 128
  br i1 %.not.i.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = add nuw nsw i32 %i.ad, %i.ab            ; 2 uses
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = and i32 %i.ag, 128
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = sub nsw i32 0, %i.ad
  %spec.select.i.i.us = select i1 %i.ai, i32 %i.aj, i32 %i.ab
  br label %harr.exit.i.us

bb.e:                                             ; preds = %bb.c
  %i.ak = sub nsw i32 %i.ab, %i.ad                ; 2 uses
  %i.al = xor i32 %i.ak, %i.ab
  %i.am = and i32 %i.al, 128
  %i.an = icmp eq i32 %i.am, 0
  %spec.select22.i.i.us = select i1 %i.an, i32 %i.ab, i32 %i.ad
  br label %harr.exit.i.us

harr.exit.i.us:                                   ; preds = %bb.e, %bb.d
  %.021.i.i.us = phi i32 [ %spec.select.i.i.us, %bb.d ], [ %i.ak, %bb.e ]
  %.0.i.i.us = phi i32 [ %i.af, %bb.d ], [ %spec.select22.i.i.us, %bb.e ]
  %i.ao = trunc i32 %.0.i.i.us to i8
  store i8 %i.ao, ptr %.036.i.us, align 1
  %i.ap = trunc i32 %.021.i.i.us to i8
  store i8 %i.ap, ptr %i.z, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 1 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.v ; 2 uses
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i32                    ; 6 uses
  %i.au = load i8, ptr %i.ar, align 1
  %i.av = zext i8 %i.au to i32                    ; 6 uses
  %i.aw = xor i32 %i.av, %i.at
  %.not.i24.i.us = icmp samesign ult i32 %i.aw, 128
  br i1 %.not.i24.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %harr.exit.i.us
  %i.ax = add nuw nsw i32 %i.av, %i.at            ; 2 uses
  %i.ay = xor i32 %i.ax, %i.av
  %i.az = and i32 %i.ay, 128
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = sub nsw i32 0, %i.av
  %spec.select.i25.i.us = select i1 %i.ba, i32 %i.bb, i32 %i.at
  br label %harr.exit29.i.us

bb.g:                                             ; preds = %harr.exit.i.us
  %i.bc = sub nsw i32 %i.at, %i.av                ; 2 uses
  %i.bd = xor i32 %i.bc, %i.at
  %i.be = and i32 %i.bd, 128
  %i.bf = icmp eq i32 %i.be, 0
  %spec.select22.i28.i.us = select i1 %i.bf, i32 %i.at, i32 %i.av
  br label %harr.exit29.i.us

harr.exit29.i.us:                                 ; preds = %bb.g, %bb.f
  %.021.i26.i.us = phi i32 [ %spec.select.i25.i.us, %bb.f ], [ %i.bc, %bb.g ]
  %.0.i27.i.us = phi i32 [ %i.ax, %bb.f ], [ %spec.select22.i28.i.us, %bb.g ]
  %i.bg = trunc i32 %.0.i27.i.us to i8
  store i8 %i.bg, ptr %i.aq, align 1
end_hunk_1
begin_hunk_2_@zrle_encode_tile16le:bb.a
  %.not210 = icmp eq i64 %i.ah, 0
  br i1 %.not210, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g, %.lr.ph188
  %i.an = phi i64 [ %i.as, %.lr.ph188 ], [ 0, %bb.g ]
  %.0123186 = phi i32 [ %i.ar, %.lr.ph188 ], [ 0, %bb.g ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.aq, ptr %i.c, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ar = add i32 %.0123186, 1                    ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp ugt i64 %i.ah, %i.as
  br i1 %i.at, label %.lr.ph188, label %._crit_edge189, !llvm.loop !91

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  %i.au = trunc nuw i8 %i.ai to i1
  br i1 %i.au, label %.preheader, label %bb.q

.thread144:                                       ; preds = %bb.f
  %i.av = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.aw = shl nuw i8 %i.av, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.aw) #9
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %.preheader, label %.thread145

.preheader:                                       ; preds = %._crit_edge189, %.thread144
  br i1 %i.p, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader, %bb.p
  %.3208 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.ay = load i16, ptr %.3208, align 2           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph209
  %.3.pn = phi ptr [ %.3208, %.lr.ph209 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2 ; 5 uses
  %i.az = load i16, ptr %.4, align 2
  %i.ba = icmp eq i16 %i.az, %i.ay
  %i.bb = icmp ult ptr %.4, %i.l                  ; 2 uses
  %i.bc = and i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i, !llvm.loop !92

bb.i:                                             ; preds = %bb.h
  %i.bd = ptrtoint ptr %.4 to i64
  %i.be = ptrtoint ptr %.3208 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 1
  %i.bh = trunc i64 %i.bg to i32                  ; 3 uses
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = zext i16 %i.ay to i32
  %i.bj = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.bi) #9
  %i.bk = trunc i32 %i.bj to i8                   ; 4 uses
  %i.bl = icmp slt i32 %i.bh, 3
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp eq i32 %i.bh, 2
  br i1 %i.bm, label %bb.l, label %bb.p, !llvm.loop !93

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bk) #9
  br label %bb.p, !llvm.loop !93

bb.m:                                             ; preds = %bb.j
  %i.bn = or i8 %i.bk, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bn) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ay, ptr %i.b, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = add i32 %i.bh, -1                       ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 254
  br i1 %i.bp, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.o, %.lr.ph205
  %.0120203 = phi i32 [ %i.bq, %.lr.ph205 ], [ %i.bo, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bq = add nsw i32 %.0120203, -255             ; 2 uses
  %i.br = icmp samesign ugt i32 %.0120203, 509
  br i1 %i.br, label %.lr.ph205, label %._crit_edge206, !llvm.loop !94

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.o
  %.0120.lcssa = phi i32 [ %i.bo, %bb.o ], [ %i.bq, %.lr.ph205 ]
  %i.bs = trunc i32 %.0120.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge206
  %.sink = phi i8 [ %i.bs, %._crit_edge206 ], [ %i.bk, %bb.l ], [ %i.bk, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.bb, label %.lr.ph209, label %.loopexit

bb.q:                                             ; preds = %._crit_edge189
  %i.bt = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bu = icmp ult i64 %i.bt, 17
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__.zrle_encode_tile16le) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bv = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bw = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = icmp sgt i32 %4, 0
  br i1 %i.bz, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %bb.s
  %i.ca = sext i32 %3 to i64
  %i.cb = trunc i32 %i.by to i8
  %.idx211 = shl nsw i64 %i.ca, 1
  %i.cc = icmp sgt i32 %3, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph202, %._crit_edge195.thread
  %.5200 = phi ptr [ %2, %.lr.ph202 ], [ %.6.lcssa285, %._crit_edge195.thread ] ; 3 uses
  %.1124199 = phi i32 [ 0, %.lr.ph202 ], [ %i.ct, %._crit_edge195.thread ]
  %i.cd = getelementptr inbounds i8, ptr %.5200, i64 %.idx211 ; 2 uses
  br i1 %i.cc, label %.lr.ph194, label %._crit_edge195.thread

.lr.ph194:                                        ; preds = %bb.t, %.lr.ph194.backedge
  %.0192 = phi i32 [ %i.cj, %.lr.ph194.backedge ], [ 0, %bb.t ]
  %.0118191 = phi i8 [ %.0118191.be, %.lr.ph194.backedge ], [ 0, %bb.t ]
  %.6190 = phi ptr [ %i.ce, %.lr.ph194.backedge ], [ %.5200, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.6190, i64 2 ; 6 uses
  %i.cf = load i16, ptr %.6190, align 2
  %i.cg = zext i16 %i.cf to i32
  %i.ch = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.cg) #9
  %i.ci = shl i32 %.0192, %i.by
  %i.cj = or i32 %i.ch, %i.ci                     ; 3 uses
  %i.ck = add i8 %.0118191, %i.cb                 ; 4 uses
  %i.cl = icmp ugt i8 %i.ck, 7
  br i1 %i.cl, label %.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph194
  %i.cm = icmp ult ptr %i.ce, %i.cd
  br i1 %i.cm, label %.lr.ph194.backedge, label %._crit_edge195

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
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %.idx432.i = shl nsw i64 %i.dd, 2               ; 9 uses
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

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.preheader.us, %.lr.ph327.i.us
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

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.preheader.us, %.lr.ph341.i.us
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
  %i.fl = and i64 %i.fk, -4
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %i.fl
  %scevgep354 = getelementptr i8, ptr %.04657.i.us.i, i64 2
  %i.fm = lshr i64 %i.fk, 1
  %i.fn = and i64 %i.fm, 9223372036854775806
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.fn
  %bound0 = icmp ult ptr %.04558.i.us.i, %scevgep355
  %bound1 = icmp ult ptr %.04657.i.us.i, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fe, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fo = and i64 %i.fg, 8
  %n.vec = and i64 %i.fg, 9223372036854775792     ; 5 uses
  %i.fp = shl i64 %n.vec, 2
  %i.fq = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fp ; 2 uses
  %i.fr = shl nuw i64 %n.vec, 1
  %i.fs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fr ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %i.fu = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fu, i64 4
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fv, i64 8
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.fw, i64 12
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fx, i64 16
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fy, i64 20
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.fz, i64 24
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.ga, i64 28
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.gb, i64 32
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
end_hunk_2
begin_hunk_3_@zrle_encode_tile16le:bb.a

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_16le.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef range(i32 1, 256) %5)
  %i.ux = icmp slt i32 %i.cw, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_16le.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_16le.exit.i ], [ %i.yl, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_16le.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.uy = shl i32 2, %.0243417.i                  ; 3 uses
  %i.uz = ashr exact i32 %i.uy, 1                 ; 2 uses
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.va ; 3 uses
  %i.vc = mul i32 %i.uz, %i.cw
  %i.vd = sext i32 %i.vc to i64                   ; 2 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.vd ; 2 uses
  %i.vf = getelementptr inbounds i8, ptr %i.ve, i64 %.idx432.i
  br i1 %i.ew, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vg = sext i32 %i.uy to i64                   ; 4 uses
  %i.vh = add i32 %i.uy, -1
  %i.vi = mul i32 %i.vh, %i.cw
  %i.vj = sext i32 %i.vi to i64                   ; 4 uses
  br i1 %i.ux, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wb, %._crit_edge355.i.loopexit.us ], [ %i.ve, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.vy, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vk = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.preheader.us, %.lr.ph354.i.us
  %.1352.i.us = phi ptr [ %i.vz, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.vy, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vm = load i8, ptr %i.vl, align 1
  %i.vn = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vo = load i8, ptr %i.vn, align 1             ; 2 uses
  %i.vp = load i8, ptr %.1352.i.us, align 1
  %i.vq = and i8 %i.vm, -8
  %i.vr = lshr i8 %i.vo, 5
  %i.vs = or disjoint i8 %i.vr, %i.vq
  %i.vt = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vs, ptr %i.vt, align 1
  %i.vu = lshr i8 %i.vp, 3
  %i.vv = shl i8 %i.vo, 3
  %i.vw = and i8 %i.vv, -32
  %i.vx = or disjoint i8 %i.vw, %i.vu
  store i8 %i.vx, ptr %.2247350.i.us, align 1
  %i.vy = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vg ; 3 uses
  %i.wa = icmp ult ptr %i.vz, %i.vk
  br i1 %i.wa, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !112

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.vj ; 2 uses
  %i.wc = icmp ult ptr %i.wb, %i.vf
  br i1 %i.wc, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !113

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vd ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.ww, %._crit_edge372.i.loopexit.us ], [ %i.wd, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wt, %._crit_edge372.i.loopexit.us ], [ %i.vy, %._crit_edge364.i ]
  %i.wf = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.preheader.us, %.lr.ph371.i.us
  %.3369.i.us = phi ptr [ %i.wu, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wt, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wh = load i8, ptr %i.wg, align 1
  %i.wi = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wj = load i8, ptr %i.wi, align 1             ; 2 uses
  %i.wk = load i8, ptr %.3369.i.us, align 1
  %i.wl = and i8 %i.wh, -8
  %i.wm = lshr i8 %i.wj, 5
  %i.wn = or disjoint i8 %i.wm, %i.wl
  %i.wo = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wn, ptr %i.wo, align 1
  %i.wp = lshr i8 %i.wk, 3
  %i.wq = shl i8 %i.wj, 3
  %i.wr = and i8 %i.wq, -32
  %i.ws = or disjoint i8 %i.wr, %i.wp
  store i8 %i.ws, ptr %.5250367.i.us, align 1
  %i.wt = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wu = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vg ; 3 uses
  %i.wv = icmp ult ptr %i.wu, %i.wf
  br i1 %i.wv, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !114

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.vj ; 2 uses
  %i.wx = icmp ult ptr %i.ww, %i.we
  br i1 %i.wx, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !115

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xq, %._crit_edge389.i.loopexit.us ], [ %i.vb, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xn, %._crit_edge389.i.loopexit.us ], [ %i.wt, %._crit_edge381.i ]
  %i.wz = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.preheader.us, %.lr.ph388.i.us
  %.5386.i.us = phi ptr [ %i.xo, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xn, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xb = load i8, ptr %i.xa, align 1
  %i.xc = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xd = load i8, ptr %i.xc, align 1             ; 2 uses
  %i.xe = load i8, ptr %.5386.i.us, align 1
  %i.xf = and i8 %i.xb, -8
  %i.xg = lshr i8 %i.xd, 5
  %i.xh = or disjoint i8 %i.xg, %i.xf
  %i.xi = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xh, ptr %i.xi, align 1
  %i.xj = lshr i8 %i.xe, 3
  %i.xk = shl i8 %i.xd, 3
  %i.xl = and i8 %i.xk, -32
  %i.xm = or disjoint i8 %i.xl, %i.xj
  store i8 %i.xm, ptr %.8253384.i.us, align 1
  %i.xn = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xo = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vg ; 3 uses
  %i.xp = icmp ult ptr %i.xo, %i.wz
  br i1 %i.xp, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !116

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xo, i64 %i.vj ; 2 uses
  %i.xr = icmp ult ptr %i.xq, %i.wy
  br i1 %i.xr, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !117

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xn, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.cu
  %brmerge = or i1 %.not, %i.ux
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yj, %._crit_edge406.i.loopexit.us ], [ %i.cv, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yg, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xs = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph413.i.us, %.lr.ph405.i.us
  %.7403.i.us = phi ptr [ %i.yh, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yg, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.xu = load i8, ptr %i.xt, align 1
  %i.xv = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.xw = load i8, ptr %i.xv, align 1             ; 2 uses
  %i.xx = load i8, ptr %.7403.i.us, align 1
  %i.xy = and i8 %i.xu, -8
  %i.xz = lshr i8 %i.xw, 5
  %i.ya = or disjoint i8 %i.xz, %i.xy
  %i.yb = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.ya, ptr %i.yb, align 1
  %i.yc = lshr i8 %i.xx, 3
  %i.yd = shl i8 %i.xw, 3
  %i.ye = and i8 %i.yd, -32
  %i.yf = or disjoint i8 %i.ye, %i.yc
  store i8 %i.yf, ptr %.11256401.i.us, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yh = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vg ; 3 uses
  %i.yi = icmp ult ptr %i.yh, %i.xs
  br i1 %i.yi, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !118

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.vj ; 2 uses
  %i.yk = icmp ult ptr %i.yj, %i.de
  br i1 %i.yk, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !119

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yg, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.yl = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.yl, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !120

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.k, 2                ; 4 uses
  %i.ym = getelementptr inbounds i8, ptr %i.cv, i64 %.idx440.i
  %i.yn = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yn, label %.lr.ph423.i.preheader, label %zywrle_analyze_16le.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %i.yo = add i64 %.idx432.i, %i.a
  %i.yp = add i64 %i.yo, 86852
  %i.yq = add i64 %.idx440.i, %i.a
  %i.yr = add i64 %i.yq, 86848
  %i.ys = tail call i64 @llvm.umax.i64(i64 %i.yp, i64 %i.yr)
  %i.yt = add i64 %i.ys, -86849
  %6 = shl nsw i64 %i.dd, 2
  %i.yu = add i64 %6, %i.a
  %i.yv = sub i64 %i.yt, %i.yu                    ; 2 uses
  %i.yw = lshr i64 %i.yv, 2
  %i.yx = add nuw nsw i64 %i.yw, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.yv, 240
  br i1 %min.iters.check419, label %.lr.ph423.i.preheader440, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph423.i.preheader
  %i.yy = add i64 %.idx432.i, %i.a
  %i.yz = add i64 %i.yy, 86852
  %i.za = add i64 %.idx440.i, %i.a
  %i.zb = add i64 %i.za, 86848
  %umax413 = tail call i64 @llvm.umax.i64(i64 %i.yz, i64 %i.zb)
  %i.zc = add i64 %umax413, -86849
  %i.zd = add i64 %.idx432.i, %i.a
  %i.ze = sub i64 %i.zc, %i.zd                    ; 2 uses
  %i.zf = lshr i64 %i.ze, 1
  %i.zg = and i64 %i.zf, 9223372036854775806
  %i.zh = getelementptr i8, ptr %.13258.i, i64 %i.zg
  %scevgep414 = getelementptr i8, ptr %i.zh, i64 2
  %i.zi = and i64 %i.ze, -4
  %i.zj = getelementptr i8, ptr %0, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 %.idx432.i
  %scevgep415 = getelementptr i8, ptr %i.zk, i64 86850
  %bound0416 = icmp ult ptr %.13258.i, %scevgep415
  %bound1417 = icmp ult ptr %i.de, %scevgep414
  %found.conflict418 = and i1 %bound0416, %bound1417
  br i1 %found.conflict418, label %.lr.ph423.i.preheader440, label %vector.ph420

vector.ph420:                                     ; preds = %vector.memcheck412
  %i.zl = and i64 %i.yx, 7                        ; 2 uses
  %i.zm = icmp eq i64 %i.zl, 0
  %i.zn = select i1 %i.zm, i64 8, i64 %i.zl
  %n.vec421 = sub nsw i64 %i.yx, %i.zn            ; 3 uses
  %i.zo = shl i64 %n.vec421, 2
  %i.zp = getelementptr i8, ptr %i.de, i64 %i.zo
  %i.zq = shl i64 %n.vec421, 1
  %i.zr = getelementptr i8, ptr %.13258.i, i64 %i.zq
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next429, %vector.body422 ] ; 3 uses
  %i.zs = shl i64 %index423, 2                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.de, i64 %i.zs
  %i.zt = getelementptr i8, ptr %i.de, i64 %i.zs
  %next.gep425 = getelementptr i8, ptr %i.zt, i64 16
  %i.zu = shl i64 %index423, 1
  %next.gep426 = getelementptr i8, ptr %.13258.i, i64 %i.zu ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep424, align 2, !alias.scope !121
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec427 = load <8 x i16>, ptr %next.gep425, align 2, !alias.scope !121
  %strided.vec428 = shufflevector <8 x i16> %wide.vec427, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zv = getelementptr i8, ptr %next.gep426, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep426, align 2, !alias.scope !124, !noalias !121
  store <4 x i16> %strided.vec428, ptr %i.zv, align 2, !alias.scope !124, !noalias !121
  %index.next429 = add nuw i64 %index423, 8       ; 2 uses
  %i.zw = icmp eq i64 %index.next429, %n.vec421
  br i1 %i.zw, label %.lr.ph423.i.preheader440, label %vector.body422, !llvm.loop !126

.lr.ph423.i.preheader440:                         ; preds = %vector.body422, %vector.memcheck412, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.de, %vector.memcheck412 ], [ %i.de, %.lr.ph423.i.preheader ], [ %i.zp, %vector.body422 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck412 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zr, %vector.body422 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader440, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.zz, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader440 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.zy, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader440 ] ; 2 uses
  %i.zx = load i16, ptr %.8242420.i, align 2
  store i16 %i.zx, ptr %.14259419.i, align 2
  %i.zy = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.zz = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.aaa = icmp ult ptr %i.zz, %i.ym
  br i1 %i.aaa, label %.lr.ph423.i, label %zywrle_analyze_16le.exit, !llvm.loop !127

zywrle_analyze_16le.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.aab = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile16le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.aab)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  %i.aac = shl i32 %i.j, 1
  %i.aad = sext i32 %i.aac to i64
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.aad) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_16le.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile15be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca [256 x i32], align 16             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.j = mul i32 %4, %3                           ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %.idx = shl nsw i64 %i.k, 1
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = xor i16 %i.n, -1
  store i16 %i.o, ptr %i.l, align 2
  tail call void @palette_init(ptr noundef nonnull %i.i, i64 noundef 256, i32 noundef 15) #9
  %i.p = icmp sgt i32 %i.j, 0                     ; 2 uses
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0121170 = phi ptr [ %.2, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.0125169 = phi i32 [ %.1126, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0127168 = phi i32 [ %.1128, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.q = load i16, ptr %.0121170, align 2         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0121170, i64 2 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.q to i32
  %.not136 = icmp eq i16 %i.s, %i.q
  br i1 %.not136, label %.preheader147, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = add i32 %.0125169, 1
  br label %bb.d

.preheader147:                                    ; preds = %.lr.ph, %.preheader147
  %.1122 = phi ptr [ %i.v, %.preheader147 ], [ %i.r, %.lr.ph ]
  %i.v = getelementptr inbounds nuw i8, ptr %.1122, i64 2 ; 3 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = icmp eq i16 %i.w, %i.q
  br i1 %i.x, label %.preheader147, label %bb.c, !llvm.loop !128

bb.c:                                             ; preds = %.preheader147
  %i.y = add i32 %.0127168, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1128 = phi i32 [ %.0127168, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %.1126 = phi i32 [ %i.u, %bb.b ], [ %.0125169, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.r, %bb.b ], [ %i.v, %bb.c ]  ; 2 uses
  %i.z = tail call i32 @palette_put(ptr noundef nonnull %i.i, i32 noundef %i.t) #9 ; 0 uses
  %i.aa = icmp ult ptr %.2, %i.l
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0127.lcssa = phi i32 [ 0, %bb.a ], [ %.1128, %bb.d ]
  %.0125.lcssa = phi i32 [ 0, %bb.a ], [ %.1126, %bb.d ]
  %i.ab = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i8 0, ptr %i.g, align 1, !annotation !12
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ad = call i32 @palette_color(ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef nonnull %i.g) #9
  %i.ae = trunc i32 %i.ad to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.ae, ptr %i.d, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.i, i32 noundef 16, i32 noundef %.0127.lcssa, i32 noundef %.0125.lcssa, i32 noundef %5, ptr noundef %i.e, ptr noundef %i.f)
  %i.af = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1                ; 2 uses
  br i1 %i.ag, label %bb.g, label %.thread144

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !12
  %i.ah = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9 ; 3 uses
  %i.ai = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.aj = shl nuw i8 %i.ai, 7
  %i.ak = trunc i64 %i.ah to i8
  %i.al = or i8 %i.aj, %i.ak
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.al) #9
  %i.am = call i64 @palette_fill(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #9 ; 0 uses
  %.not210 = icmp eq i64 %i.ah, 0
  br i1 %.not210, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g, %.lr.ph188
  %i.an = phi i64 [ %i.as, %.lr.ph188 ], [ 0, %bb.g ]
  %.0123186 = phi i32 [ %i.ar, %.lr.ph188 ], [ 0, %bb.g ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.aq, ptr %i.c, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ar = add i32 %.0123186, 1                    ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp ugt i64 %i.ah, %i.as
  br i1 %i.at, label %.lr.ph188, label %._crit_edge189, !llvm.loop !130

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  %i.au = trunc nuw i8 %i.ai to i1
  br i1 %i.au, label %.preheader, label %bb.q

.thread144:                                       ; preds = %bb.f
  %i.av = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.aw = shl nuw i8 %i.av, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.aw) #9
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %.preheader, label %.thread145

.preheader:                                       ; preds = %._crit_edge189, %.thread144
  br i1 %i.p, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader, %bb.p
  %.3208 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.ay = load i16, ptr %.3208, align 2           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph209
  %.3.pn = phi ptr [ %.3208, %.lr.ph209 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2 ; 5 uses
  %i.az = load i16, ptr %.4, align 2
  %i.ba = icmp eq i16 %i.az, %i.ay
  %i.bb = icmp ult ptr %.4, %i.l                  ; 2 uses
  %i.bc = and i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i, !llvm.loop !131

bb.i:                                             ; preds = %bb.h
  %i.bd = ptrtoint ptr %.4 to i64
  %i.be = ptrtoint ptr %.3208 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 1
  %i.bh = trunc i64 %i.bg to i32                  ; 3 uses
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = zext i16 %i.ay to i32
  %i.bj = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.bi) #9
  %i.bk = trunc i32 %i.bj to i8                   ; 4 uses
  %i.bl = icmp slt i32 %i.bh, 3
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp eq i32 %i.bh, 2
  br i1 %i.bm, label %bb.l, label %bb.p, !llvm.loop !132

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bk) #9
  br label %bb.p, !llvm.loop !132

bb.m:                                             ; preds = %bb.j
  %i.bn = or i8 %i.bk, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bn) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ay, ptr %i.b, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = add i32 %i.bh, -1                       ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 254
  br i1 %i.bp, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.o, %.lr.ph205
  %.0120203 = phi i32 [ %i.bq, %.lr.ph205 ], [ %i.bo, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bq = add nsw i32 %.0120203, -255             ; 2 uses
  %i.br = icmp samesign ugt i32 %.0120203, 509
  br i1 %i.br, label %.lr.ph205, label %._crit_edge206, !llvm.loop !133

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.o
  %.0120.lcssa = phi i32 [ %i.bo, %bb.o ], [ %i.bq, %.lr.ph205 ]
  %i.bs = trunc i32 %.0120.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge206
  %.sink = phi i8 [ %i.bs, %._crit_edge206 ], [ %i.bk, %bb.l ], [ %i.bk, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.bb, label %.lr.ph209, label %.loopexit

bb.q:                                             ; preds = %._crit_edge189
  %i.bt = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bu = icmp ult i64 %i.bt, 17
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__.zrle_encode_tile15be) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bv = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bw = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = icmp sgt i32 %4, 0
  br i1 %i.bz, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %bb.s
  %i.ca = sext i32 %3 to i64
  %i.cb = trunc i32 %i.by to i8
  %.idx211 = shl nsw i64 %i.ca, 1
  %i.cc = icmp sgt i32 %3, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph202, %._crit_edge195.thread
  %.5200 = phi ptr [ %2, %.lr.ph202 ], [ %.6.lcssa285, %._crit_edge195.thread ] ; 3 uses
  %.1124199 = phi i32 [ 0, %.lr.ph202 ], [ %i.ct, %._crit_edge195.thread ]
  %i.cd = getelementptr inbounds i8, ptr %.5200, i64 %.idx211 ; 2 uses
  br i1 %i.cc, label %.lr.ph194, label %._crit_edge195.thread

.lr.ph194:                                        ; preds = %bb.t, %.lr.ph194.backedge
  %.0192 = phi i32 [ %i.cj, %.lr.ph194.backedge ], [ 0, %bb.t ]
  %.0118191 = phi i8 [ %.0118191.be, %.lr.ph194.backedge ], [ 0, %bb.t ]
  %.6190 = phi ptr [ %i.ce, %.lr.ph194.backedge ], [ %.5200, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.6190, i64 2 ; 6 uses
  %i.cf = load i16, ptr %.6190, align 2
  %i.cg = zext i16 %i.cf to i32
  %i.ch = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.cg) #9
  %i.ci = shl i32 %.0192, %i.by
  %i.cj = or i32 %i.ch, %i.ci                     ; 3 uses
  %i.ck = add i8 %.0118191, %i.cb                 ; 4 uses
  %i.cl = icmp ugt i8 %i.ck, 7
  br i1 %i.cl, label %.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph194
  %i.cm = icmp ult ptr %i.ce, %i.cd
  br i1 %i.cm, label %.lr.ph194.backedge, label %._crit_edge195

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
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %.idx432.i = shl nsw i64 %i.dd, 2               ; 9 uses
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

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.preheader.us, %.lr.ph327.i.us
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

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.preheader.us, %.lr.ph341.i.us
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
  %.04657.i.us.i = phi ptr [ %i.uy, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
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
  %i.fl = and i64 %i.fk, -4
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %i.fl
  %scevgep354 = getelementptr i8, ptr %.04657.i.us.i, i64 2
  %i.fm = lshr i64 %i.fk, 1
  %i.fn = and i64 %i.fm, 9223372036854775806
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.fn
  %bound0 = icmp ult ptr %.04558.i.us.i, %scevgep355
  %bound1 = icmp ult ptr %.04657.i.us.i, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fe, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fo = and i64 %i.fg, 8
  %n.vec = and i64 %i.fg, 9223372036854775792     ; 5 uses
  %i.fp = shl i64 %n.vec, 2
  %i.fq = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fp ; 2 uses
  %i.fr = shl nuw i64 %n.vec, 1
  %i.fs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fr ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %i.fu = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fu, i64 4
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fv, i64 8
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.fw, i64 12
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fx, i64 16
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fy, i64 20
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.fz, i64 24
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.ga, i64 28
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.gb, i64 32
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
end_hunk_3
begin_hunk_4_@zrle_encode_tile15be:bb.a
zywrle_rgbyuv_15be.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef range(i32 1, 256) %5)
  %i.va = icmp slt i32 %i.cw, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_15be.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_15be.exit.i ], [ %i.ys, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_15be.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.vb = shl i32 2, %.0243417.i                  ; 3 uses
  %i.vc = ashr exact i32 %i.vb, 1                 ; 2 uses
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vd ; 3 uses
  %i.vf = mul i32 %i.vc, %i.cw
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.vg ; 2 uses
  %i.vi = getelementptr inbounds i8, ptr %i.vh, i64 %.idx432.i
  br i1 %i.ew, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vj = sext i32 %i.vb to i64                   ; 4 uses
  %i.vk = add i32 %i.vb, -1
  %i.vl = mul i32 %i.vk, %i.cw
  %i.vm = sext i32 %i.vl to i64                   ; 4 uses
  br i1 %i.va, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wf, %._crit_edge355.i.loopexit.us ], [ %i.vh, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.wc, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vn = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.preheader.us, %.lr.ph354.i.us
  %.1352.i.us = phi ptr [ %i.wd, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.wc, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vp = load i8, ptr %i.vo, align 1
  %i.vq = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vr = load i8, ptr %i.vq, align 1             ; 2 uses
  %i.vs = load i8, ptr %.1352.i.us, align 1
  %i.vt = lshr i8 %i.vp, 1
  %i.vu = and i8 %i.vt, 124
  %i.vv = lshr i8 %i.vr, 6
  %i.vw = or disjoint i8 %i.vv, %i.vu
  store i8 %i.vw, ptr %.2247350.i.us, align 1
  %i.vx = lshr i8 %i.vs, 3
  %i.vy = shl i8 %i.vr, 2
  %i.vz = and i8 %i.vy, -32
  %i.wa = or disjoint i8 %i.vz, %i.vx
  %i.wb = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.wa, ptr %i.wb, align 1
  %i.wc = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vj ; 3 uses
  %i.we = icmp ult ptr %i.wd, %i.vn
  br i1 %i.we, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !151

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.vm ; 2 uses
  %i.wg = icmp ult ptr %i.wf, %i.vi
  br i1 %i.wg, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !152

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vg ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.xb, %._crit_edge372.i.loopexit.us ], [ %i.wh, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wy, %._crit_edge372.i.loopexit.us ], [ %i.wc, %._crit_edge364.i ]
  %i.wj = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.preheader.us, %.lr.ph371.i.us
  %.3369.i.us = phi ptr [ %i.wz, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wy, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wl = load i8, ptr %i.wk, align 1
  %i.wm = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wn = load i8, ptr %i.wm, align 1             ; 2 uses
  %i.wo = load i8, ptr %.3369.i.us, align 1
  %i.wp = lshr i8 %i.wl, 1
  %i.wq = and i8 %i.wp, 124
  %i.wr = lshr i8 %i.wn, 6
  %i.ws = or disjoint i8 %i.wr, %i.wq
  store i8 %i.ws, ptr %.5250367.i.us, align 1
  %i.wt = lshr i8 %i.wo, 3
  %i.wu = shl i8 %i.wn, 2
  %i.wv = and i8 %i.wu, -32
  %i.ww = or disjoint i8 %i.wv, %i.wt
  %i.wx = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.ww, ptr %i.wx, align 1
  %i.wy = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wz = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vj ; 3 uses
  %i.xa = icmp ult ptr %i.wz, %i.wj
  br i1 %i.xa, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !153

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.vm ; 2 uses
  %i.xc = icmp ult ptr %i.xb, %i.wi
  br i1 %i.xc, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !154

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xw, %._crit_edge389.i.loopexit.us ], [ %i.ve, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xt, %._crit_edge389.i.loopexit.us ], [ %i.wy, %._crit_edge381.i ]
  %i.xe = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.preheader.us, %.lr.ph388.i.us
  %.5386.i.us = phi ptr [ %i.xu, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xt, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xg = load i8, ptr %i.xf, align 1
  %i.xh = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xi = load i8, ptr %i.xh, align 1             ; 2 uses
  %i.xj = load i8, ptr %.5386.i.us, align 1
  %i.xk = lshr i8 %i.xg, 1
  %i.xl = and i8 %i.xk, 124
  %i.xm = lshr i8 %i.xi, 6
  %i.xn = or disjoint i8 %i.xm, %i.xl
  store i8 %i.xn, ptr %.8253384.i.us, align 1
  %i.xo = lshr i8 %i.xj, 3
  %i.xp = shl i8 %i.xi, 2
  %i.xq = and i8 %i.xp, -32
  %i.xr = or disjoint i8 %i.xq, %i.xo
  %i.xs = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xr, ptr %i.xs, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xu = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vj ; 3 uses
  %i.xv = icmp ult ptr %i.xu, %i.xe
  br i1 %i.xv, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !155

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xu, i64 %i.vm ; 2 uses
  %i.xx = icmp ult ptr %i.xw, %i.xd
  br i1 %i.xx, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !156

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xt, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.cu
  %brmerge = or i1 %.not, %i.va
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yq, %._crit_edge406.i.loopexit.us ], [ %i.cv, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yn, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xy = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph413.i.us, %.lr.ph405.i.us
  %.7403.i.us = phi ptr [ %i.yo, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yn, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.ya = load i8, ptr %i.xz, align 1
  %i.yb = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.yc = load i8, ptr %i.yb, align 1             ; 2 uses
  %i.yd = load i8, ptr %.7403.i.us, align 1
  %i.ye = lshr i8 %i.ya, 1
  %i.yf = and i8 %i.ye, 124
  %i.yg = lshr i8 %i.yc, 6
  %i.yh = or disjoint i8 %i.yg, %i.yf
  store i8 %i.yh, ptr %.11256401.i.us, align 1
  %i.yi = lshr i8 %i.yd, 3
  %i.yj = shl i8 %i.yc, 2
  %i.yk = and i8 %i.yj, -32
  %i.yl = or disjoint i8 %i.yk, %i.yi
  %i.ym = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.yl, ptr %i.ym, align 1
  %i.yn = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yo = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vj ; 3 uses
  %i.yp = icmp ult ptr %i.yo, %i.xy
  br i1 %i.yp, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !157

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.yo, i64 %i.vm ; 2 uses
  %i.yr = icmp ult ptr %i.yq, %i.de
  br i1 %i.yr, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !158

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yn, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.ys = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ys, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !159

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.k, 2                ; 4 uses
  %i.yt = getelementptr inbounds i8, ptr %i.cv, i64 %.idx440.i
  %i.yu = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yu, label %.lr.ph423.i.preheader, label %zywrle_analyze_15be.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %i.yv = add i64 %.idx432.i, %i.a
  %i.yw = add i64 %i.yv, 86852
  %i.yx = add i64 %.idx440.i, %i.a
  %i.yy = add i64 %i.yx, 86848
  %i.yz = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yy)
  %i.za = add i64 %i.yz, -86849
  %6 = shl nsw i64 %i.dd, 2
  %i.zb = add i64 %6, %i.a
  %i.zc = sub i64 %i.za, %i.zb                    ; 2 uses
  %i.zd = lshr i64 %i.zc, 2
  %i.ze = add nuw nsw i64 %i.zd, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.zc, 240
  br i1 %min.iters.check419, label %.lr.ph423.i.preheader440, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph423.i.preheader
  %i.zf = add i64 %.idx432.i, %i.a
  %i.zg = add i64 %i.zf, 86852
  %i.zh = add i64 %.idx440.i, %i.a
  %i.zi = add i64 %i.zh, 86848
  %umax413 = tail call i64 @llvm.umax.i64(i64 %i.zg, i64 %i.zi)
  %i.zj = add i64 %umax413, -86849
  %i.zk = add i64 %.idx432.i, %i.a
  %i.zl = sub i64 %i.zj, %i.zk                    ; 2 uses
  %i.zm = lshr i64 %i.zl, 1
  %i.zn = and i64 %i.zm, 9223372036854775806
  %i.zo = getelementptr i8, ptr %.13258.i, i64 %i.zn
  %scevgep414 = getelementptr i8, ptr %i.zo, i64 2
  %i.zp = and i64 %i.zl, -4
  %i.zq = getelementptr i8, ptr %0, i64 %i.zp
  %i.zr = getelementptr i8, ptr %i.zq, i64 %.idx432.i
  %scevgep415 = getelementptr i8, ptr %i.zr, i64 86850
  %bound0416 = icmp ult ptr %.13258.i, %scevgep415
  %bound1417 = icmp ult ptr %i.de, %scevgep414
  %found.conflict418 = and i1 %bound0416, %bound1417
  br i1 %found.conflict418, label %.lr.ph423.i.preheader440, label %vector.ph420

vector.ph420:                                     ; preds = %vector.memcheck412
  %i.zs = and i64 %i.ze, 7                        ; 2 uses
  %i.zt = icmp eq i64 %i.zs, 0
  %i.zu = select i1 %i.zt, i64 8, i64 %i.zs
  %n.vec421 = sub nsw i64 %i.ze, %i.zu            ; 3 uses
  %i.zv = shl i64 %n.vec421, 2
  %i.zw = getelementptr i8, ptr %i.de, i64 %i.zv
  %i.zx = shl i64 %n.vec421, 1
  %i.zy = getelementptr i8, ptr %.13258.i, i64 %i.zx
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next429, %vector.body422 ] ; 3 uses
  %i.zz = shl i64 %index423, 2                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.de, i64 %i.zz
  %i.aaa = getelementptr i8, ptr %i.de, i64 %i.zz
  %next.gep425 = getelementptr i8, ptr %i.aaa, i64 16
  %i.aab = shl i64 %index423, 1
  %next.gep426 = getelementptr i8, ptr %.13258.i, i64 %i.aab ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep424, align 2, !alias.scope !160
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec427 = load <8 x i16>, ptr %next.gep425, align 2, !alias.scope !160
  %strided.vec428 = shufflevector <8 x i16> %wide.vec427, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aac = getelementptr i8, ptr %next.gep426, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep426, align 2, !alias.scope !163, !noalias !160
  store <4 x i16> %strided.vec428, ptr %i.aac, align 2, !alias.scope !163, !noalias !160
  %index.next429 = add nuw i64 %index423, 8       ; 2 uses
  %i.aad = icmp eq i64 %index.next429, %n.vec421
  br i1 %i.aad, label %.lr.ph423.i.preheader440, label %vector.body422, !llvm.loop !165

.lr.ph423.i.preheader440:                         ; preds = %vector.body422, %vector.memcheck412, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.de, %vector.memcheck412 ], [ %i.de, %.lr.ph423.i.preheader ], [ %i.zw, %vector.body422 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck412 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zy, %vector.body422 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader440, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.aag, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader440 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.aaf, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader440 ] ; 2 uses
  %i.aae = load i16, ptr %.8242420.i, align 2
  store i16 %i.aae, ptr %.14259419.i, align 2
  %i.aaf = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.aag = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.aah = icmp ult ptr %i.aag, %i.yt
  br i1 %i.aah, label %.lr.ph423.i, label %zywrle_analyze_15be.exit, !llvm.loop !166

zywrle_analyze_15be.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.aai = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile15be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.aai)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.k) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_15be.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile15le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca [256 x i32], align 16             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.j = mul i32 %4, %3                           ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %.idx = shl nsw i64 %i.k, 1
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = xor i16 %i.n, -1
  store i16 %i.o, ptr %i.l, align 2
  tail call void @palette_init(ptr noundef nonnull %i.i, i64 noundef 256, i32 noundef 15) #9
  %i.p = icmp sgt i32 %i.j, 0                     ; 2 uses
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0121170 = phi ptr [ %.2, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.0125169 = phi i32 [ %.1126, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0127168 = phi i32 [ %.1128, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.q = load i16, ptr %.0121170, align 2         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0121170, i64 2 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.q to i32
  %.not136 = icmp eq i16 %i.s, %i.q
  br i1 %.not136, label %.preheader147, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = add i32 %.0125169, 1
  br label %bb.d

.preheader147:                                    ; preds = %.lr.ph, %.preheader147
  %.1122 = phi ptr [ %i.v, %.preheader147 ], [ %i.r, %.lr.ph ]
  %i.v = getelementptr inbounds nuw i8, ptr %.1122, i64 2 ; 3 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = icmp eq i16 %i.w, %i.q
  br i1 %i.x, label %.preheader147, label %bb.c, !llvm.loop !167

bb.c:                                             ; preds = %.preheader147
  %i.y = add i32 %.0127168, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1128 = phi i32 [ %.0127168, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %.1126 = phi i32 [ %i.u, %bb.b ], [ %.0125169, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.r, %bb.b ], [ %i.v, %bb.c ]  ; 2 uses
  %i.z = tail call i32 @palette_put(ptr noundef nonnull %i.i, i32 noundef %i.t) #9 ; 0 uses
  %i.aa = icmp ult ptr %.2, %i.l
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0127.lcssa = phi i32 [ 0, %bb.a ], [ %.1128, %bb.d ]
  %.0125.lcssa = phi i32 [ 0, %bb.a ], [ %.1126, %bb.d ]
  %i.ab = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i8 0, ptr %i.g, align 1, !annotation !12
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ad = call i32 @palette_color(ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef nonnull %i.g) #9
  %i.ae = trunc i32 %i.ad to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.ae, ptr %i.d, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.i, i32 noundef 16, i32 noundef %.0127.lcssa, i32 noundef %.0125.lcssa, i32 noundef %5, ptr noundef %i.e, ptr noundef %i.f)
  %i.af = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1                ; 2 uses
  br i1 %i.ag, label %bb.g, label %.thread144

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !12
  %i.ah = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9 ; 3 uses
  %i.ai = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.aj = shl nuw i8 %i.ai, 7
  %i.ak = trunc i64 %i.ah to i8
  %i.al = or i8 %i.aj, %i.ak
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.al) #9
  %i.am = call i64 @palette_fill(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #9 ; 0 uses
  %.not210 = icmp eq i64 %i.ah, 0
  br i1 %.not210, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g, %.lr.ph188
  %i.an = phi i64 [ %i.as, %.lr.ph188 ], [ 0, %bb.g ]
  %.0123186 = phi i32 [ %i.ar, %.lr.ph188 ], [ 0, %bb.g ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.aq, ptr %i.c, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ar = add i32 %.0123186, 1                    ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp ugt i64 %i.ah, %i.as
  br i1 %i.at, label %.lr.ph188, label %._crit_edge189, !llvm.loop !169

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  %i.au = trunc nuw i8 %i.ai to i1
  br i1 %i.au, label %.preheader, label %bb.q

.thread144:                                       ; preds = %bb.f
  %i.av = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.aw = shl nuw i8 %i.av, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.aw) #9
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %.preheader, label %.thread145

.preheader:                                       ; preds = %._crit_edge189, %.thread144
  br i1 %i.p, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader, %bb.p
  %.3208 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.ay = load i16, ptr %.3208, align 2           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph209
  %.3.pn = phi ptr [ %.3208, %.lr.ph209 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2 ; 5 uses
  %i.az = load i16, ptr %.4, align 2
  %i.ba = icmp eq i16 %i.az, %i.ay
  %i.bb = icmp ult ptr %.4, %i.l                  ; 2 uses
  %i.bc = and i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i, !llvm.loop !170

bb.i:                                             ; preds = %bb.h
  %i.bd = ptrtoint ptr %.4 to i64
  %i.be = ptrtoint ptr %.3208 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 1
  %i.bh = trunc i64 %i.bg to i32                  ; 3 uses
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = zext i16 %i.ay to i32
  %i.bj = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.bi) #9
  %i.bk = trunc i32 %i.bj to i8                   ; 4 uses
  %i.bl = icmp slt i32 %i.bh, 3
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp eq i32 %i.bh, 2
  br i1 %i.bm, label %bb.l, label %bb.p, !llvm.loop !171

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bk) #9
  br label %bb.p, !llvm.loop !171

bb.m:                                             ; preds = %bb.j
  %i.bn = or i8 %i.bk, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bn) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ay, ptr %i.b, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = add i32 %i.bh, -1                       ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 254
  br i1 %i.bp, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.o, %.lr.ph205
  %.0120203 = phi i32 [ %i.bq, %.lr.ph205 ], [ %i.bo, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bq = add nsw i32 %.0120203, -255             ; 2 uses
  %i.br = icmp samesign ugt i32 %.0120203, 509
  br i1 %i.br, label %.lr.ph205, label %._crit_edge206, !llvm.loop !172

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.o
  %.0120.lcssa = phi i32 [ %i.bo, %bb.o ], [ %i.bq, %.lr.ph205 ]
  %i.bs = trunc i32 %.0120.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge206
  %.sink = phi i8 [ %i.bs, %._crit_edge206 ], [ %i.bk, %bb.l ], [ %i.bk, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.bb, label %.lr.ph209, label %.loopexit

bb.q:                                             ; preds = %._crit_edge189
  %i.bt = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bu = icmp ult i64 %i.bt, 17
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__.zrle_encode_tile15le) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bv = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bw = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = icmp sgt i32 %4, 0
  br i1 %i.bz, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %bb.s
  %i.ca = sext i32 %3 to i64
  %i.cb = trunc i32 %i.by to i8
  %.idx211 = shl nsw i64 %i.ca, 1
  %i.cc = icmp sgt i32 %3, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph202, %._crit_edge195.thread
  %.5200 = phi ptr [ %2, %.lr.ph202 ], [ %.6.lcssa285, %._crit_edge195.thread ] ; 3 uses
  %.1124199 = phi i32 [ 0, %.lr.ph202 ], [ %i.ct, %._crit_edge195.thread ]
  %i.cd = getelementptr inbounds i8, ptr %.5200, i64 %.idx211 ; 2 uses
  br i1 %i.cc, label %.lr.ph194, label %._crit_edge195.thread

.lr.ph194:                                        ; preds = %bb.t, %.lr.ph194.backedge
  %.0192 = phi i32 [ %i.cj, %.lr.ph194.backedge ], [ 0, %bb.t ]
  %.0118191 = phi i8 [ %.0118191.be, %.lr.ph194.backedge ], [ 0, %bb.t ]
  %.6190 = phi ptr [ %i.ce, %.lr.ph194.backedge ], [ %.5200, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.6190, i64 2 ; 6 uses
  %i.cf = load i16, ptr %.6190, align 2
  %i.cg = zext i16 %i.cf to i32
  %i.ch = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.cg) #9
  %i.ci = shl i32 %.0192, %i.by
  %i.cj = or i32 %i.ch, %i.ci                     ; 3 uses
  %i.ck = add i8 %.0118191, %i.cb                 ; 4 uses
  %i.cl = icmp ugt i8 %i.ck, 7
  br i1 %i.cl, label %.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph194
  %i.cm = icmp ult ptr %i.ce, %i.cd
  br i1 %i.cm, label %.lr.ph194.backedge, label %._crit_edge195

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
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %.idx432.i = shl nsw i64 %i.dd, 2               ; 9 uses
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

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.preheader.us, %.lr.ph327.i.us
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

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.preheader.us, %.lr.ph341.i.us
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
  %.04657.i.us.i = phi ptr [ %i.uy, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
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
  %i.fl = and i64 %i.fk, -4
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %i.fl
  %scevgep354 = getelementptr i8, ptr %.04657.i.us.i, i64 2
  %i.fm = lshr i64 %i.fk, 1
  %i.fn = and i64 %i.fm, 9223372036854775806
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.fn
  %bound0 = icmp ult ptr %.04558.i.us.i, %scevgep355
  %bound1 = icmp ult ptr %.04657.i.us.i, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fe, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fo = and i64 %i.fg, 8
  %n.vec = and i64 %i.fg, 9223372036854775792     ; 5 uses
  %i.fp = shl i64 %n.vec, 2
  %i.fq = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fp ; 2 uses
  %i.fr = shl nuw i64 %n.vec, 1
  %i.fs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fr ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %i.fu = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fu, i64 4
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fv, i64 8
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.fw, i64 12
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fx, i64 16
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fy, i64 20
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.fz, i64 24
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.ga, i64 28
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.gb, i64 32
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.ft ; 3 uses
end_hunk_4
begin_hunk_5_@zrle_encode_tile15le:bb.a
zywrle_rgbyuv_15le.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef range(i32 1, 256) %5)
  %i.va = icmp slt i32 %i.cw, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_15le.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_15le.exit.i ], [ %i.ys, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_15le.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.vb = shl i32 2, %.0243417.i                  ; 3 uses
  %i.vc = ashr exact i32 %i.vb, 1                 ; 2 uses
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vd ; 3 uses
  %i.vf = mul i32 %i.vc, %i.cw
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.vg ; 2 uses
  %i.vi = getelementptr inbounds i8, ptr %i.vh, i64 %.idx432.i
  br i1 %i.ew, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vj = sext i32 %i.vb to i64                   ; 4 uses
  %i.vk = add i32 %i.vb, -1
  %i.vl = mul i32 %i.vk, %i.cw
  %i.vm = sext i32 %i.vl to i64                   ; 4 uses
  br i1 %i.va, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wf, %._crit_edge355.i.loopexit.us ], [ %i.vh, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.wc, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vn = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.preheader.us, %.lr.ph354.i.us
  %.1352.i.us = phi ptr [ %i.wd, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.wc, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vp = load i8, ptr %i.vo, align 1
  %i.vq = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vr = load i8, ptr %i.vq, align 1             ; 2 uses
  %i.vs = load i8, ptr %.1352.i.us, align 1
  %i.vt = lshr i8 %i.vp, 1
  %i.vu = and i8 %i.vt, 124
  %i.vv = lshr i8 %i.vr, 6
  %i.vw = or disjoint i8 %i.vv, %i.vu
  %i.vx = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vw, ptr %i.vx, align 1
  %i.vy = lshr i8 %i.vs, 3
  %i.vz = shl i8 %i.vr, 2
  %i.wa = and i8 %i.vz, -32
  %i.wb = or disjoint i8 %i.wa, %i.vy
  store i8 %i.wb, ptr %.2247350.i.us, align 1
  %i.wc = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vj ; 3 uses
  %i.we = icmp ult ptr %i.wd, %i.vn
  br i1 %i.we, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !190

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.vm ; 2 uses
  %i.wg = icmp ult ptr %i.wf, %i.vi
  br i1 %i.wg, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !191

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vg ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.xb, %._crit_edge372.i.loopexit.us ], [ %i.wh, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wy, %._crit_edge372.i.loopexit.us ], [ %i.wc, %._crit_edge364.i ]
  %i.wj = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.preheader.us, %.lr.ph371.i.us
  %.3369.i.us = phi ptr [ %i.wz, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wy, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wl = load i8, ptr %i.wk, align 1
  %i.wm = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wn = load i8, ptr %i.wm, align 1             ; 2 uses
  %i.wo = load i8, ptr %.3369.i.us, align 1
  %i.wp = lshr i8 %i.wl, 1
  %i.wq = and i8 %i.wp, 124
  %i.wr = lshr i8 %i.wn, 6
  %i.ws = or disjoint i8 %i.wr, %i.wq
  %i.wt = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.ws, ptr %i.wt, align 1
  %i.wu = lshr i8 %i.wo, 3
  %i.wv = shl i8 %i.wn, 2
  %i.ww = and i8 %i.wv, -32
  %i.wx = or disjoint i8 %i.ww, %i.wu
  store i8 %i.wx, ptr %.5250367.i.us, align 1
  %i.wy = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wz = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vj ; 3 uses
  %i.xa = icmp ult ptr %i.wz, %i.wj
  br i1 %i.xa, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !192

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.vm ; 2 uses
  %i.xc = icmp ult ptr %i.xb, %i.wi
  br i1 %i.xc, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !193

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xw, %._crit_edge389.i.loopexit.us ], [ %i.ve, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xt, %._crit_edge389.i.loopexit.us ], [ %i.wy, %._crit_edge381.i ]
  %i.xe = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.preheader.us, %.lr.ph388.i.us
  %.5386.i.us = phi ptr [ %i.xu, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xt, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xg = load i8, ptr %i.xf, align 1
  %i.xh = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xi = load i8, ptr %i.xh, align 1             ; 2 uses
  %i.xj = load i8, ptr %.5386.i.us, align 1
  %i.xk = lshr i8 %i.xg, 1
  %i.xl = and i8 %i.xk, 124
  %i.xm = lshr i8 %i.xi, 6
  %i.xn = or disjoint i8 %i.xm, %i.xl
  %i.xo = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xn, ptr %i.xo, align 1
  %i.xp = lshr i8 %i.xj, 3
  %i.xq = shl i8 %i.xi, 2
  %i.xr = and i8 %i.xq, -32
  %i.xs = or disjoint i8 %i.xr, %i.xp
  store i8 %i.xs, ptr %.8253384.i.us, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xu = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vj ; 3 uses
  %i.xv = icmp ult ptr %i.xu, %i.xe
  br i1 %i.xv, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !194

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xu, i64 %i.vm ; 2 uses
  %i.xx = icmp ult ptr %i.xw, %i.xd
  br i1 %i.xx, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !195

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xt, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.cu
  %brmerge = or i1 %.not, %i.va
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yq, %._crit_edge406.i.loopexit.us ], [ %i.cv, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yn, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xy = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph413.i.us, %.lr.ph405.i.us
  %.7403.i.us = phi ptr [ %i.yo, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yn, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.ya = load i8, ptr %i.xz, align 1
  %i.yb = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.yc = load i8, ptr %i.yb, align 1             ; 2 uses
  %i.yd = load i8, ptr %.7403.i.us, align 1
  %i.ye = lshr i8 %i.ya, 1
  %i.yf = and i8 %i.ye, 124
  %i.yg = lshr i8 %i.yc, 6
  %i.yh = or disjoint i8 %i.yg, %i.yf
  %i.yi = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.yh, ptr %i.yi, align 1
  %i.yj = lshr i8 %i.yd, 3
  %i.yk = shl i8 %i.yc, 2
  %i.yl = and i8 %i.yk, -32
  %i.ym = or disjoint i8 %i.yl, %i.yj
  store i8 %i.ym, ptr %.11256401.i.us, align 1
  %i.yn = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yo = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vj ; 3 uses
  %i.yp = icmp ult ptr %i.yo, %i.xy
  br i1 %i.yp, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !196

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.yo, i64 %i.vm ; 2 uses
  %i.yr = icmp ult ptr %i.yq, %i.de
  br i1 %i.yr, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !197

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yn, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.ys = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ys, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !198

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.k, 2                ; 4 uses
  %i.yt = getelementptr inbounds i8, ptr %i.cv, i64 %.idx440.i
  %i.yu = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yu, label %.lr.ph423.i.preheader, label %zywrle_analyze_15le.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %i.yv = add i64 %.idx432.i, %i.a
  %i.yw = add i64 %i.yv, 86852
  %i.yx = add i64 %.idx440.i, %i.a
  %i.yy = add i64 %i.yx, 86848
  %i.yz = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yy)
  %i.za = add i64 %i.yz, -86849
  %6 = shl nsw i64 %i.dd, 2
  %i.zb = add i64 %6, %i.a
  %i.zc = sub i64 %i.za, %i.zb                    ; 2 uses
  %i.zd = lshr i64 %i.zc, 2
  %i.ze = add nuw nsw i64 %i.zd, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.zc, 240
  br i1 %min.iters.check419, label %.lr.ph423.i.preheader440, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph423.i.preheader
  %i.zf = add i64 %.idx432.i, %i.a
  %i.zg = add i64 %i.zf, 86852
  %i.zh = add i64 %.idx440.i, %i.a
  %i.zi = add i64 %i.zh, 86848
  %umax413 = tail call i64 @llvm.umax.i64(i64 %i.zg, i64 %i.zi)
  %i.zj = add i64 %umax413, -86849
  %i.zk = add i64 %.idx432.i, %i.a
  %i.zl = sub i64 %i.zj, %i.zk                    ; 2 uses
  %i.zm = lshr i64 %i.zl, 1
  %i.zn = and i64 %i.zm, 9223372036854775806
  %i.zo = getelementptr i8, ptr %.13258.i, i64 %i.zn
  %scevgep414 = getelementptr i8, ptr %i.zo, i64 2
  %i.zp = and i64 %i.zl, -4
  %i.zq = getelementptr i8, ptr %0, i64 %i.zp
  %i.zr = getelementptr i8, ptr %i.zq, i64 %.idx432.i
  %scevgep415 = getelementptr i8, ptr %i.zr, i64 86850
  %bound0416 = icmp ult ptr %.13258.i, %scevgep415
  %bound1417 = icmp ult ptr %i.de, %scevgep414
  %found.conflict418 = and i1 %bound0416, %bound1417
  br i1 %found.conflict418, label %.lr.ph423.i.preheader440, label %vector.ph420

vector.ph420:                                     ; preds = %vector.memcheck412
  %i.zs = and i64 %i.ze, 7                        ; 2 uses
  %i.zt = icmp eq i64 %i.zs, 0
  %i.zu = select i1 %i.zt, i64 8, i64 %i.zs
  %n.vec421 = sub nsw i64 %i.ze, %i.zu            ; 3 uses
  %i.zv = shl i64 %n.vec421, 2
  %i.zw = getelementptr i8, ptr %i.de, i64 %i.zv
  %i.zx = shl i64 %n.vec421, 1
  %i.zy = getelementptr i8, ptr %.13258.i, i64 %i.zx
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next429, %vector.body422 ] ; 3 uses
  %i.zz = shl i64 %index423, 2                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.de, i64 %i.zz
  %i.aaa = getelementptr i8, ptr %i.de, i64 %i.zz
  %next.gep425 = getelementptr i8, ptr %i.aaa, i64 16
  %i.aab = shl i64 %index423, 1
  %next.gep426 = getelementptr i8, ptr %.13258.i, i64 %i.aab ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep424, align 2, !alias.scope !199
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec427 = load <8 x i16>, ptr %next.gep425, align 2, !alias.scope !199
  %strided.vec428 = shufflevector <8 x i16> %wide.vec427, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aac = getelementptr i8, ptr %next.gep426, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep426, align 2, !alias.scope !202, !noalias !199
  store <4 x i16> %strided.vec428, ptr %i.aac, align 2, !alias.scope !202, !noalias !199
  %index.next429 = add nuw i64 %index423, 8       ; 2 uses
  %i.aad = icmp eq i64 %index.next429, %n.vec421
  br i1 %i.aad, label %.lr.ph423.i.preheader440, label %vector.body422, !llvm.loop !204

.lr.ph423.i.preheader440:                         ; preds = %vector.body422, %vector.memcheck412, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.de, %vector.memcheck412 ], [ %i.de, %.lr.ph423.i.preheader ], [ %i.zw, %vector.body422 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck412 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zy, %vector.body422 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader440, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.aag, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader440 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.aaf, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader440 ] ; 2 uses
  %i.aae = load i16, ptr %.8242420.i, align 2
  store i16 %i.aae, ptr %.14259419.i, align 2
  %i.aaf = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.aag = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.aah = icmp ult ptr %i.aag, %i.yt
  br i1 %i.aah, label %.lr.ph423.i, label %zywrle_analyze_15le.exit, !llvm.loop !205

zywrle_analyze_15le.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.aai = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile15le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.aai)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.k) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_15le.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile24abe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca [256 x i32], align 16             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.j = mul i32 %4, %3                           ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = xor i32 %i.n, -1
  store i32 %i.o, ptr %i.l, align 4
  tail call void @palette_init(ptr noundef nonnull %i.i, i64 noundef 256, i32 noundef 32) #9
  %i.p = icmp sgt i32 %i.j, 0                     ; 3 uses
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0125156 = phi ptr [ %.2, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.0129155 = phi i32 [ %.1130, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0131154 = phi i32 [ %.1132, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.q = load i32, ptr %.0125156, align 4         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0125156, i64 4 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %.not140 = icmp eq i32 %i.s, %i.q
  br i1 %.not140, label %.preheader153, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i32 %.0129155, 1
  br label %bb.d

.preheader153:                                    ; preds = %.lr.ph, %.preheader153
  %.1126 = phi ptr [ %i.u, %.preheader153 ], [ %i.r, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1126, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, %i.q
  br i1 %i.w, label %.preheader153, label %bb.c, !llvm.loop !206

bb.c:                                             ; preds = %.preheader153
  %i.x = add i32 %.0131154, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1132 = phi i32 [ %.0131154, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.1130 = phi i32 [ %i.t, %bb.b ], [ %.0129155, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.r, %bb.b ], [ %i.u, %bb.c ]  ; 2 uses
  %i.y = tail call i32 @palette_put(ptr noundef nonnull %i.i, i32 noundef %i.q) #9 ; 0 uses
  %i.z = icmp ult ptr %.2, %i.l
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0131.lcssa = phi i32 [ 0, %bb.a ], [ %.1132, %bb.d ]
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.1130, %bb.d ]
  %i.aa = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i8 0, ptr %i.g, align 1, !annotation !12
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ac = call i32 @palette_color(ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ac, ptr %i.d, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.i, i32 noundef 24, i32 noundef %.0131.lcssa, i32 noundef %.0129.lcssa, i32 noundef %5, ptr noundef %i.e, ptr noundef %i.f)
  %i.ad = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  br i1 %i.ae, label %bb.g, label %.thread148

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !12
  %i.af = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9 ; 3 uses
  %i.ag = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.ah = shl nuw i8 %i.ag, 7
  %i.ai = trunc i64 %i.af to i8
  %i.aj = or i8 %i.ah, %i.ai
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.aj) #9
  %i.ak = call i64 @palette_fill(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #9 ; 0 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.g, %.lr.ph162
  %i.al = phi i64 [ %i.ap, %.lr.ph162 ], [ 0, %bb.g ]
  %.0127160 = phi i32 [ %i.ao, %.lr.ph162 ], [ 0, %bb.g ]
  %i.am = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.an, ptr %i.c, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = add i32 %.0127160, 1                    ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp ugt i64 %i.af, %i.ap
  br i1 %i.aq, label %.lr.ph162, label %._crit_edge163, !llvm.loop !208

._crit_edge163:                                   ; preds = %.lr.ph162, %bb.g
end_hunk_5
