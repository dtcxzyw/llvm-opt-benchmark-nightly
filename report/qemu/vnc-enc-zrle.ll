Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-enc-zrle?download=true
inline.NumInlined: 86
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zrle_encode_tile16be:bb.a

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !10
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
  br i1 %i.at, label %.lr.ph188, label %._crit_edge189, !llvm.loop !46

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
  br i1 %i.bc, label %bb.h, label %bb.i, !llvm.loop !47

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
  br i1 %i.bm, label %bb.l, label %bb.p, !llvm.loop !48

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bk) #9
  br label %bb.p, !llvm.loop !48

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
  br i1 %i.br, label %.lr.ph205, label %._crit_edge206, !llvm.loop !49

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
  %6 = sext i32 %i.da to i64
  %.idx427.i = shl nuw nsw i64 %6, 1
  %i.dl = icmp sgt i32 %i.da, 0
  br i1 %i.dl, label %.lr.ph.i.preheader.us, label %.loopexit313.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph321.i, %._crit_edge.i.loopexit.us
  %.0226319.i.us = phi ptr [ %i.dr, %._crit_edge.i.loopexit.us ], [ %i.dg, %.lr.ph321.i ] ; 2 uses
  %.0234318.i.us = phi ptr [ %i.dp, %._crit_edge.i.loopexit.us ], [ %i.de, %.lr.ph321.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0226319.i.us, i64 %.idx427.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.1227316.i.us = phi ptr [ %i.do, %.lr.ph.i.us ], [ %.0226319.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.1235315.i.us = phi ptr [ %i.dp, %.lr.ph.i.us ], [ %.0234318.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.dn = load i16, ptr %.1227316.i.us, align 2
  store i16 %i.dn, ptr %.1235315.i.us, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %.1227316.i.us, i64 2 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1235315.i.us, i64 4 ; 3 uses
  %i.dq = icmp ult ptr %i.do, %i.dm
  br i1 %i.dq, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !52

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.df ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dj
  br i1 %i.ds, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !53

.loopexit313.i:                                   ; preds = %._crit_edge.i.loopexit.us, %.lr.ph321.i, %bb.y, %bb.x
  %.2236.i = phi ptr [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.de, %.lr.ph321.i ], [ %i.dp, %._crit_edge.i.loopexit.us ] ; 2 uses
  %.not310.i = icmp eq i32 %4, %i.cx
  br i1 %.not310.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %.loopexit313.i
  %i.dt = mul i32 %i.cx, %3
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.du ; 2 uses
  %i.dw = mul i32 %i.db, %3                       ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %.idx428.i = shl nsw i64 %i.dx, 1               ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %.idx428.i
  %i.dz = icmp sgt i32 %i.dw, 0
  br i1 %i.dz, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %bb.z
  %7 = sext i32 %i.cw to i64                      ; 3 uses
  %i.ea = sext i32 %i.da to i64                   ; 2 uses
  %.idx429.i = shl nuw nsw i64 %7, 1
  %i.eb = icmp sgt i32 %i.cw, 0
  br i1 %i.eb, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i

.lr.ph327.i.preheader.us:                         ; preds = %.lr.ph334.i, %._crit_edge328.i.loopexit.us
  %.3229332.i.us = phi ptr [ %i.eh, %._crit_edge328.i.loopexit.us ], [ %i.dv, %.lr.ph334.i ] ; 2 uses
  %.3237331.i.us = phi ptr [ %i.ef, %._crit_edge328.i.loopexit.us ], [ %.2236.i, %.lr.ph334.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.3229332.i.us, i64 %.idx429.i
  br label %.lr.ph327.i.us

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.us, %.lr.ph327.i.preheader.us
  %.4230325.i.us = phi ptr [ %i.ee, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.ef, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ed = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ed, ptr %.4238324.i.us, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.eg = icmp ult ptr %i.ee, %i.ec
  br i1 %i.eg, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !54

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.ea ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.dy
  br i1 %i.ei, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !55

._crit_edge335.i:                                 ; preds = %._crit_edge328.i.loopexit.us, %.lr.ph334.i
  %.us-phi173 = phi ptr [ %.2236.i, %.lr.ph334.i ], [ %i.ef, %._crit_edge328.i.loopexit.us ]
  br i1 %.not311.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge335.i
  %i.ej = getelementptr inbounds [2 x i8], ptr %2, i64 %7
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.du ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx428.i
  %.idx431.i = shl nuw nsw i64 %i.ea, 1
  %i.em = icmp sgt i32 %i.da, 0
  br i1 %i.em, label %.lr.ph341.i.preheader.us, label %.thread.i

.lr.ph341.i.preheader.us:                         ; preds = %bb.aa, %._crit_edge342.i.loopexit.us
  %.6232346.i.us = phi ptr [ %i.es, %._crit_edge342.i.loopexit.us ], [ %i.ek, %bb.aa ] ; 2 uses
  %.6240345.i.us = phi ptr [ %i.eq, %._crit_edge342.i.loopexit.us ], [ %.us-phi173, %bb.aa ]
  %i.en = getelementptr inbounds nuw i8, ptr %.6232346.i.us, i64 %.idx431.i
  br label %.lr.ph341.i.us

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.us, %.lr.ph341.i.preheader.us
  %.7233339.i.us = phi ptr [ %i.ep, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.eq, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eo = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eo, ptr %.7241338.i.us, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.er = icmp ult ptr %i.ep, %i.en
  br i1 %i.er, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !56

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %7 ; 2 uses
  %i.et = icmp ult ptr %i.es, %i.el
  br i1 %i.et, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !57

.thread.i:                                        ; preds = %._crit_edge342.i.loopexit.us, %bb.aa, %bb.z, %._crit_edge335.i, %.loopexit313.i
  %i.eu = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %8 = sext i32 %i.cw to i64                      ; 2 uses
  br i1 %i.eu, label %.lr.ph60.i.i, label %.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge

.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge:    ; preds = %.thread.i
  %.pre = shl nsw i64 %8, 2
  br label %zywrle_rgbyuv_16be.exit.i

.lr.ph60.i.i:                                     ; preds = %.thread.i
  %i.ev = sext i32 %i.da to i64
  %.idx62.i.i = shl nsw i64 %8, 2                 ; 4 uses
  %i.ew = icmp sgt i32 %i.cw, 0
  br i1 %i.ew, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.lr.ph60.i.i, %._crit_edge.i.loopexit.us.i
  %.04558.i.us.i = phi ptr [ %.lcssa344, %._crit_edge.i.loopexit.us.i ], [ %i.cv, %.lr.ph60.i.i ] ; 32 uses
  %.04657.i.us.i = phi ptr [ %i.uw, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
  %.04558.i.us.i356 = ptrtoaddr ptr %.04558.i.us.i to i64 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.04558.i.us.i, i64 %.idx62.i.i
  %i.ey = add i64 %.idx62.i.i, %.04558.i.us.i356
  %i.ez = add i64 %.04558.i.us.i356, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ez)
  %i.fa = xor i64 %.04558.i.us.i356, -1
  %i.fb = add i64 %umax, %i.fa                    ; 3 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fb, 28
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fe = add i64 %.idx62.i.i, %.04558.i.us.i356
  %i.ff = add i64 %.04558.i.us.i356, 4
  %i.fg = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.ff)
  %i.fh = xor i64 %.04558.i.us.i356, -1
  %i.fi = add i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = or i64 %i.fi, 3
  %i.fk = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fj
  %i.fl = lshr i64 %i.fi, 1
  %i.fm = and i64 %i.fl, 9223372036854775806
  %i.fn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 2
  %bound0 = icmp ult ptr %.04558.i.us.i, %i.fo
  %bound1 = icmp ult ptr %.04657.i.us.i, %i.fk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fb, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fp = and i64 %i.fd, 8
  %n.vec = and i64 %i.fd, 9223372036854775792     ; 5 uses
  %i.fq = shl i64 %n.vec, 2
  %i.fr = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 2 uses
  %i.fs = shl nuw i64 %n.vec, 1
  %i.ft = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fs ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fv, i64 4
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fw, i64 8
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.fx, i64 12
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fy, i64 16
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fz, i64 20
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.ga, i64 24
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.gb, i64 28
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.gc, i64 32
  %i.gd = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep366 = getelementptr i8, ptr %i.gd, i64 36
  %i.ge = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.ge, i64 40
  %i.gf = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.gf, i64 44
  %i.gg = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep369 = getelementptr i8, ptr %i.gg, i64 48
  %i.gh = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.gh, i64 52
  %i.gi = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep371 = getelementptr i8, ptr %i.gi, i64 56
  %i.gj = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep372 = getelementptr i8, ptr %i.gj, i64 60
  %i.gk = shl i64 %index, 1                       ; 16 uses
  %next.gep373 = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %i.gl = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.gl, i64 2
  %i.gm = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.gm, i64 4
  %i.gn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gn, i64 6
  %i.go = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.go, i64 8
  %i.gp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.gp, i64 10
  %i.gq = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.gq, i64 12
  %i.gr = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.gr, i64 14
  %i.gs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep381 = getelementptr i8, ptr %i.gs, i64 16
  %i.gt = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.gt, i64 18
  %i.gu = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.gu, i64 20
  %i.gv = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gv, i64 22
  %i.gw = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gw, i64 24
  %i.gx = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.gx, i64 26
  %i.gy = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.gy, i64 28
  %i.gz = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.gz, i64 30
  %i.ha = load i8, ptr %next.gep373, align 1, !alias.scope !79
  %i.hb = load i8, ptr %next.gep374, align 1, !alias.scope !79
  %i.hc = load i8, ptr %next.gep375, align 1, !alias.scope !79
  %i.hd = load i8, ptr %next.gep376, align 1, !alias.scope !79
  %i.he = load i8, ptr %next.gep377, align 1, !alias.scope !79
  %i.hf = load i8, ptr %next.gep378, align 1, !alias.scope !79
  %i.hg = load i8, ptr %next.gep379, align 1, !alias.scope !79
  %i.hh = load i8, ptr %next.gep380, align 1, !alias.scope !79
  %i.hi = load i8, ptr %next.gep381, align 1, !alias.scope !79
  %i.hj = load i8, ptr %next.gep382, align 1, !alias.scope !79
  %i.hk = load i8, ptr %next.gep383, align 1, !alias.scope !79
  %i.hl = load i8, ptr %next.gep384, align 1, !alias.scope !79
  %i.hm = load i8, ptr %next.gep385, align 1, !alias.scope !79
  %i.hn = load i8, ptr %next.gep386, align 1, !alias.scope !79
  %i.ho = load i8, ptr %next.gep387, align 1, !alias.scope !79
  %i.hp = load i8, ptr %next.gep388, align 1, !alias.scope !79
  %i.hq = insertelement <16 x i8> poison, i8 %i.ha, i64 0
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 1
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 2
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 3
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 4
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 5
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 6
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 7
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 8
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 9
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 10
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 11
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 12
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 13
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 14
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 15
  %i.ig = zext <16 x i8> %i.if to <16 x i32>      ; 3 uses
  %i.ih = and <16 x i32> %i.ig, splat (i32 248)
  %i.ii = shl nuw nsw <16 x i32> %i.ig, splat (i32 5)
  %i.ij = getelementptr inbounds nuw i8, ptr %next.gep373, i64 1
  %i.ik = getelementptr i8, ptr %i.gl, i64 3
  %i.il = getelementptr i8, ptr %i.gm, i64 5
  %i.im = getelementptr i8, ptr %i.gn, i64 7
  %i.in = getelementptr i8, ptr %i.go, i64 9
  %i.io = getelementptr i8, ptr %i.gp, i64 11
  %i.ip = getelementptr i8, ptr %i.gq, i64 13
  %i.iq = getelementptr i8, ptr %i.gr, i64 15
  %i.ir = getelementptr i8, ptr %i.gs, i64 17
  %i.is = getelementptr i8, ptr %i.gt, i64 19
  %i.it = getelementptr i8, ptr %i.gu, i64 21
  %i.iu = getelementptr i8, ptr %i.gv, i64 23
  %i.iv = getelementptr i8, ptr %i.gw, i64 25
  %i.iw = getelementptr i8, ptr %i.gx, i64 27
  %i.ix = getelementptr i8, ptr %i.gy, i64 29
  %i.iy = getelementptr i8, ptr %i.gz, i64 31
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
  %i.jl = load i8, ptr %i.iv, align 1, !alias.scope !79
  %i.jm = load i8, ptr %i.iw, align 1, !alias.scope !79
  %i.jn = load i8, ptr %i.ix, align 1, !alias.scope !79
  %i.jo = load i8, ptr %i.iy, align 1, !alias.scope !79
  %i.jp = insertelement <16 x i8> poison, i8 %i.iz, i64 0
  %i.jq = insertelement <16 x i8> %i.jp, i8 %i.ja, i64 1
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 2
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 3
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 4
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 5
  %i.jv = insertelement <16 x i8> %i.ju, i8 %i.jf, i64 6
  %i.jw = insertelement <16 x i8> %i.jv, i8 %i.jg, i64 7
  %i.jx = insertelement <16 x i8> %i.jw, i8 %i.jh, i64 8
  %i.jy = insertelement <16 x i8> %i.jx, i8 %i.ji, i64 9
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 10
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 11
  %i.kb = insertelement <16 x i8> %i.ka, i8 %i.jl, i64 12
  %i.kc = insertelement <16 x i8> %i.kb, i8 %i.jm, i64 13
  %i.kd = insertelement <16 x i8> %i.kc, i8 %i.jn, i64 14
  %i.ke = insertelement <16 x i8> %i.kd, i8 %i.jo, i64 15
  %i.kf = zext <16 x i8> %i.ke to <16 x i32>      ; 2 uses
  %i.kg = lshr <16 x i32> %i.kf, splat (i32 3)
  %i.kh = or disjoint <16 x i32> %i.kg, %i.ii
end_hunk_0
begin_hunk_1_@zrle_encode_tile16be:bb.a
  %i.pg = load i8, ptr %next.gep402, align 1, !alias.scope !79
  %i.ph = load i8, ptr %next.gep403, align 1, !alias.scope !79
  %i.pi = load i8, ptr %next.gep404, align 1, !alias.scope !79
  %i.pj = load i8, ptr %next.gep405, align 1, !alias.scope !79
  %i.pk = load i8, ptr %next.gep406, align 1, !alias.scope !79
  %i.pl = insertelement <8 x i8> poison, i8 %i.pd, i64 0
  %i.pm = insertelement <8 x i8> %i.pl, i8 %i.pe, i64 1
  %i.pn = insertelement <8 x i8> %i.pm, i8 %i.pf, i64 2
  %i.po = insertelement <8 x i8> %i.pn, i8 %i.pg, i64 3
  %i.pp = insertelement <8 x i8> %i.po, i8 %i.ph, i64 4
  %i.pq = insertelement <8 x i8> %i.pp, i8 %i.pi, i64 5
  %i.pr = insertelement <8 x i8> %i.pq, i8 %i.pj, i64 6
  %i.ps = insertelement <8 x i8> %i.pr, i8 %i.pk, i64 7
  %i.pt = zext <8 x i8> %i.ps to <8 x i32>        ; 3 uses
  %i.pu = and <8 x i32> %i.pt, splat (i32 248)
  %i.pv = shl nuw nsw <8 x i32> %i.pt, splat (i32 5)
  %i.pw = getelementptr inbounds nuw i8, ptr %next.gep399, i64 1
  %i.px = getelementptr i8, ptr %i.ow, i64 3
  %i.py = getelementptr i8, ptr %i.ox, i64 5
  %i.pz = getelementptr i8, ptr %i.oy, i64 7
  %i.qa = getelementptr i8, ptr %i.oz, i64 9
  %i.qb = getelementptr i8, ptr %i.pa, i64 11
  %i.qc = getelementptr i8, ptr %i.pb, i64 13
  %i.qd = getelementptr i8, ptr %i.pc, i64 15
  %i.qe = load i8, ptr %i.pw, align 1, !alias.scope !79
  %i.qf = load i8, ptr %i.px, align 1, !alias.scope !79
  %i.qg = load i8, ptr %i.py, align 1, !alias.scope !79
  %i.qh = load i8, ptr %i.pz, align 1, !alias.scope !79
  %i.qi = load i8, ptr %i.qa, align 1, !alias.scope !79
  %i.qj = load i8, ptr %i.qb, align 1, !alias.scope !79
  %i.qk = load i8, ptr %i.qc, align 1, !alias.scope !79
  %i.ql = load i8, ptr %i.qd, align 1, !alias.scope !79
  %i.qm = insertelement <8 x i8> poison, i8 %i.qe, i64 0
  %i.qn = insertelement <8 x i8> %i.qm, i8 %i.qf, i64 1
  %i.qo = insertelement <8 x i8> %i.qn, i8 %i.qg, i64 2
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 3
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 4
  %i.qr = insertelement <8 x i8> %i.qq, i8 %i.qj, i64 5
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qk, i64 6
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 7
  %i.qu = zext <8 x i8> %i.qt to <8 x i32>        ; 2 uses
  %i.qv = lshr <8 x i32> %i.qu, splat (i32 3)
  %i.qw = or disjoint <8 x i32> %i.qv, %i.pv
  %i.qx = and <8 x i32> %i.qw, splat (i32 252)    ; 3 uses
  %i.qy = shl nuw nsw <8 x i32> %i.qu, splat (i32 3)
  %i.qz = and <8 x i32> %i.qy, splat (i32 248)    ; 2 uses
  %i.ra = shl nuw nsw <8 x i32> %i.qx, splat (i32 1)
  %i.rb = add nuw nsw <8 x i32> %i.qz, %i.pt
  %i.rc = add nuw nsw <8 x i32> %i.rb, %i.ra
  %i.rd = lshr <8 x i32> %i.rc, splat (i32 2)
  %i.re = sub nsw <8 x i32> %i.qz, %i.qx
  %i.rf = sub nsw <8 x i32> %i.pu, %i.qx
  %i.rg = ashr exact <8 x i32> %i.re, splat (i32 1)
  %i.rh = ashr exact <8 x i32> %i.rf, splat (i32 1)
  %i.ri = and <8 x i32> %i.rd, splat (i32 252)    ; 2 uses
  %i.rj = and <8 x i32> %i.rg, splat (i32 -8)     ; 2 uses
  %i.rk = and <8 x i32> %i.rh, splat (i32 -8)     ; 2 uses
  %i.rl = icmp eq <8 x i32> %i.ri, zeroinitializer
  %i.rm = icmp eq <8 x i32> %i.rj, splat (i32 -128)
  %i.rn = icmp eq <8 x i32> %i.rk, splat (i32 -128)
  %i.ro = trunc <8 x i32> %i.rk to <8 x i8>
  %i.rp = select <8 x i1> %i.rn, <8 x i8> splat (i8 -120), <8 x i8> %i.ro ; 8 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %next.gep391, i64 2
  %i.rr = getelementptr i8, ptr %i.oo, i64 6
  %i.rs = getelementptr i8, ptr %i.op, i64 10
  %i.rt = getelementptr i8, ptr %i.oq, i64 14
  %i.ru = getelementptr i8, ptr %i.or, i64 18
  %i.rv = getelementptr i8, ptr %i.os, i64 22
  %i.rw = getelementptr i8, ptr %i.ot, i64 26
  %i.rx = getelementptr i8, ptr %i.ou, i64 30
  %i.ry = extractelement <8 x i8> %i.rp, i64 0
  store i8 %i.ry, ptr %i.rq, align 1, !alias.scope !80, !noalias !79
  %i.rz = extractelement <8 x i8> %i.rp, i64 1
  store i8 %i.rz, ptr %i.rr, align 1, !alias.scope !80, !noalias !79
  %i.sa = extractelement <8 x i8> %i.rp, i64 2
  store i8 %i.sa, ptr %i.rs, align 1, !alias.scope !80, !noalias !79
  %i.sb = extractelement <8 x i8> %i.rp, i64 3
  store i8 %i.sb, ptr %i.rt, align 1, !alias.scope !80, !noalias !79
  %i.sc = extractelement <8 x i8> %i.rp, i64 4
  store i8 %i.sc, ptr %i.ru, align 1, !alias.scope !80, !noalias !79
  %i.sd = extractelement <8 x i8> %i.rp, i64 5
  store i8 %i.sd, ptr %i.rv, align 1, !alias.scope !80, !noalias !79
  %i.se = extractelement <8 x i8> %i.rp, i64 6
  store i8 %i.se, ptr %i.rw, align 1, !alias.scope !80, !noalias !79
  %i.sf = extractelement <8 x i8> %i.rp, i64 7
  store i8 %i.sf, ptr %i.rx, align 1, !alias.scope !80, !noalias !79
  %i.sg = trunc nuw <8 x i32> %i.ri to <8 x i8>
  %i.sh = xor <8 x i8> %i.sg, splat (i8 -128)
  %i.si = select <8 x i1> %i.rl, <8 x i8> splat (i8 -124), <8 x i8> %i.sh ; 8 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %next.gep391, i64 1
  %i.sk = getelementptr i8, ptr %i.oo, i64 5
  %i.sl = getelementptr i8, ptr %i.op, i64 9
  %i.sm = getelementptr i8, ptr %i.oq, i64 13
  %i.sn = getelementptr i8, ptr %i.or, i64 17
  %i.so = getelementptr i8, ptr %i.os, i64 21
  %i.sp = getelementptr i8, ptr %i.ot, i64 25
  %i.sq = getelementptr i8, ptr %i.ou, i64 29
  %i.sr = extractelement <8 x i8> %i.si, i64 0
  store i8 %i.sr, ptr %i.sj, align 1, !alias.scope !80, !noalias !79
  %i.ss = extractelement <8 x i8> %i.si, i64 1
  store i8 %i.ss, ptr %i.sk, align 1, !alias.scope !80, !noalias !79
  %i.st = extractelement <8 x i8> %i.si, i64 2
  store i8 %i.st, ptr %i.sl, align 1, !alias.scope !80, !noalias !79
  %i.su = extractelement <8 x i8> %i.si, i64 3
  store i8 %i.su, ptr %i.sm, align 1, !alias.scope !80, !noalias !79
  %i.sv = extractelement <8 x i8> %i.si, i64 4
  store i8 %i.sv, ptr %i.sn, align 1, !alias.scope !80, !noalias !79
  %i.sw = extractelement <8 x i8> %i.si, i64 5
  store i8 %i.sw, ptr %i.so, align 1, !alias.scope !80, !noalias !79
  %i.sx = extractelement <8 x i8> %i.si, i64 6
  store i8 %i.sx, ptr %i.sp, align 1, !alias.scope !80, !noalias !79
  %i.sy = extractelement <8 x i8> %i.si, i64 7
  store i8 %i.sy, ptr %i.sq, align 1, !alias.scope !80, !noalias !79
  %i.sz = trunc <8 x i32> %i.rj to <8 x i8>
  %i.ta = select <8 x i1> %i.rm, <8 x i8> splat (i8 -120), <8 x i8> %i.sz ; 8 uses
  %i.tb = extractelement <8 x i8> %i.ta, i64 0
  store i8 %i.tb, ptr %next.gep391, align 1, !alias.scope !80, !noalias !79
  %i.tc = extractelement <8 x i8> %i.ta, i64 1
  store i8 %i.tc, ptr %next.gep392, align 1, !alias.scope !80, !noalias !79
  %i.td = extractelement <8 x i8> %i.ta, i64 2
  store i8 %i.td, ptr %next.gep393, align 1, !alias.scope !80, !noalias !79
  %i.te = extractelement <8 x i8> %i.ta, i64 3
  store i8 %i.te, ptr %next.gep394, align 1, !alias.scope !80, !noalias !79
  %i.tf = extractelement <8 x i8> %i.ta, i64 4
  store i8 %i.tf, ptr %next.gep395, align 1, !alias.scope !80, !noalias !79
  %i.tg = extractelement <8 x i8> %i.ta, i64 5
  store i8 %i.tg, ptr %next.gep396, align 1, !alias.scope !80, !noalias !79
  %i.th = extractelement <8 x i8> %i.ta, i64 6
  store i8 %i.th, ptr %next.gep397, align 1, !alias.scope !80, !noalias !79
  %i.ti = extractelement <8 x i8> %i.ta, i64 7
  store i8 %i.ti, ptr %next.gep398, align 1, !alias.scope !80, !noalias !79
  %index.next407 = add nuw i64 %index390, 8       ; 2 uses
  %i.tj = icmp eq i64 %index.next407, %n.vec389
  br i1 %i.tj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n408 = icmp eq i64 %i.fd, %n.vec389
  br i1 %cmp.n408, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.155.i.us.i.ph = phi ptr [ %.04558.i.us.i, %iter.check ], [ %.04558.i.us.i, %vector.memcheck ], [ %i.fr, %vec.epilog.iter.check ], [ %i.ok, %vec.epilog.middle.block ]
  %.14754.i.us.i.ph = phi ptr [ %.04657.i.us.i, %iter.check ], [ %.04657.i.us.i, %vector.memcheck ], [ %i.ft, %vec.epilog.iter.check ], [ %i.om, %vec.epilog.middle.block ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %.155.i.us.i = phi ptr [ %i.ut, %.lr.ph.i.us.i ], [ %.155.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 4 uses
  %.14754.i.us.i = phi ptr [ %i.uu, %.lr.ph.i.us.i ], [ %.14754.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %i.tk = load i8, ptr %.14754.i.us.i, align 1
  %i.tl = zext i8 %i.tk to i32                    ; 3 uses
  %i.tm = and i32 %i.tl, 248
  %i.tn = shl nuw nsw i32 %i.tl, 5
  %i.to = getelementptr inbounds nuw i8, ptr %.14754.i.us.i, i64 1
  %i.tp = load i8, ptr %i.to, align 1
  %i.tq = zext i8 %i.tp to i32                    ; 2 uses
  %i.tr = lshr i32 %i.tq, 3
  %i.ts = or disjoint i32 %i.tr, %i.tn
  %i.tt = and i32 %i.ts, 252                      ; 3 uses
  %i.tu = shl nuw nsw i32 %i.tq, 3
  %i.tv = and i32 %i.tu, 248                      ; 2 uses
  %i.tw = shl nuw nsw i32 %i.tt, 1
  %i.tx = add nuw nsw i32 %i.tv, %i.tl
  %i.ty = add nuw nsw i32 %i.tx, %i.tw
  %i.tz = lshr i32 %i.ty, 2
  %i.ua = sub nsw i32 %i.tv, %i.tt
  %i.ub = sub nsw i32 %i.tm, %i.tt
  %i.uc = ashr exact i32 %i.ua, 1
  %i.ud = ashr exact i32 %i.ub, 1
  %i.ue = and i32 %i.tz, 252                      ; 2 uses
  %i.uf = and i32 %i.uc, -8                       ; 2 uses
  %i.ug = and i32 %i.ud, -8                       ; 2 uses
  %i.uh = icmp eq i32 %i.ue, 0
  %i.ui = icmp eq i32 %i.uf, -128
  %i.uj = icmp eq i32 %i.ug, -128
  %i.uk = trunc i32 %i.ug to i8
  %i.ul = select i1 %i.uj, i8 -120, i8 %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 2
  store i8 %i.ul, ptr %i.um, align 1
  %i.un = trunc nuw i32 %i.ue to i8
  %i.uo = xor i8 %i.un, -128
  %i.up = select i1 %i.uh, i8 -124, i8 %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 1
  store i8 %i.up, ptr %i.uq, align 1
  %i.ur = trunc i32 %i.uf to i8
  %i.us = select i1 %i.ui, i8 -120, i8 %i.ur
  store i8 %i.us, ptr %.155.i.us.i, align 1
  %i.ut = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 4 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.14754.i.us.i, i64 2 ; 2 uses
  %i.uv = icmp ult ptr %i.ut, %i.ex
  br i1 %i.uv, label %.lr.ph.i.us.i, label %._crit_edge.i.loopexit.us.i, !llvm.loop !63

._crit_edge.i.loopexit.us.i:                      ; preds = %.lr.ph.i.us.i, %vec.epilog.middle.block, %middle.block
  %.lcssa344 = phi ptr [ %i.ok, %vec.epilog.middle.block ], [ %i.fr, %middle.block ], [ %i.ut, %.lr.ph.i.us.i ] ; 2 uses
  %.lcssa343 = phi ptr [ %i.om, %vec.epilog.middle.block ], [ %i.ft, %middle.block ], [ %i.uu, %.lr.ph.i.us.i ]
  %i.uw = getelementptr inbounds [2 x i8], ptr %.lcssa343, i64 %i.ev
  %i.ux = icmp ult ptr %.lcssa344, %i.de
  br i1 %i.ux, label %iter.check, label %zywrle_rgbyuv_16be.exit.i, !llvm.loop !64

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_16be.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef range(i32 1, 256) %5)
  %i.uy = icmp slt i32 %i.cw, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_16be.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_16be.exit.i ], [ %i.ym, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_16be.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.uz = shl i32 2, %.0243417.i                  ; 3 uses
  %i.va = ashr exact i32 %i.uz, 1                 ; 2 uses
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vb ; 3 uses
  %i.vd = mul i32 %i.va, %i.cw
  %i.ve = sext i32 %i.vd to i64                   ; 2 uses
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.ve ; 2 uses
  %i.vg = getelementptr inbounds i8, ptr %i.vf, i64 %.idx432.i
  br i1 %i.eu, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vh = sext i32 %i.uz to i64                   ; 4 uses
  %i.vi = add i32 %i.uz, -1
  %i.vj = mul i32 %i.vi, %i.cw
  %i.vk = sext i32 %i.vj to i64                   ; 4 uses
  br i1 %i.uy, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wc, %._crit_edge355.i.loopexit.us ], [ %i.vf, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.vz, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vl = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.us, %.lr.ph354.i.preheader.us
  %.1352.i.us = phi ptr [ %i.wa, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.vz, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vn = load i8, ptr %i.vm, align 1
  %i.vo = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vp = load i8, ptr %i.vo, align 1             ; 2 uses
  %i.vq = load i8, ptr %.1352.i.us, align 1
  %i.vr = and i8 %i.vn, -8
  %i.vs = lshr i8 %i.vp, 5
  %i.vt = or disjoint i8 %i.vs, %i.vr
  store i8 %i.vt, ptr %.2247350.i.us, align 1
  %i.vu = lshr i8 %i.vq, 3
  %i.vv = shl i8 %i.vp, 3
  %i.vw = and i8 %i.vv, -32
  %i.vx = or disjoint i8 %i.vw, %i.vu
  %i.vy = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vx, ptr %i.vy, align 1
  %i.vz = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.wa = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vh ; 3 uses
  %i.wb = icmp ult ptr %i.wa, %i.vl
  br i1 %i.wb, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !65

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.vk ; 2 uses
  %i.wd = icmp ult ptr %i.wc, %i.vg
  br i1 %i.wd, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !66

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.we = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ve ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.wx, %._crit_edge372.i.loopexit.us ], [ %i.we, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wu, %._crit_edge372.i.loopexit.us ], [ %i.vz, %._crit_edge364.i ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.us, %.lr.ph371.i.preheader.us
  %.3369.i.us = phi ptr [ %i.wv, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wu, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wi = load i8, ptr %i.wh, align 1
  %i.wj = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wk = load i8, ptr %i.wj, align 1             ; 2 uses
  %i.wl = load i8, ptr %.3369.i.us, align 1
  %i.wm = and i8 %i.wi, -8
  %i.wn = lshr i8 %i.wk, 5
  %i.wo = or disjoint i8 %i.wn, %i.wm
  store i8 %i.wo, ptr %.5250367.i.us, align 1
  %i.wp = lshr i8 %i.wl, 3
  %i.wq = shl i8 %i.wk, 3
  %i.wr = and i8 %i.wq, -32
  %i.ws = or disjoint i8 %i.wr, %i.wp
  %i.wt = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.ws, ptr %i.wt, align 1
  %i.wu = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wv = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vh ; 3 uses
  %i.ww = icmp ult ptr %i.wv, %i.wg
  br i1 %i.ww, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !67

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.vk ; 2 uses
  %i.wy = icmp ult ptr %i.wx, %i.wf
  br i1 %i.wy, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !68

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vc, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xr, %._crit_edge389.i.loopexit.us ], [ %i.vc, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xo, %._crit_edge389.i.loopexit.us ], [ %i.wu, %._crit_edge381.i ]
  %i.xa = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.us, %.lr.ph388.i.preheader.us
  %.5386.i.us = phi ptr [ %i.xp, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xo, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xc = load i8, ptr %i.xb, align 1
  %i.xd = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xe = load i8, ptr %i.xd, align 1             ; 2 uses
  %i.xf = load i8, ptr %.5386.i.us, align 1
  %i.xg = and i8 %i.xc, -8
  %i.xh = lshr i8 %i.xe, 5
  %i.xi = or disjoint i8 %i.xh, %i.xg
  store i8 %i.xi, ptr %.8253384.i.us, align 1
  %i.xj = lshr i8 %i.xf, 3
  %i.xk = shl i8 %i.xe, 3
  %i.xl = and i8 %i.xk, -32
  %i.xm = or disjoint i8 %i.xl, %i.xj
  %i.xn = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xm, ptr %i.xn, align 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xp = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vh ; 3 uses
  %i.xq = icmp ult ptr %i.xp, %i.xa
  br i1 %i.xq, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !69

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %i.vk ; 2 uses
  %i.xs = icmp ult ptr %i.xr, %i.wz
  br i1 %i.xs, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !70

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xo, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.cu
  %brmerge = or i1 %.not, %i.uy
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yk, %._crit_edge406.i.loopexit.us ], [ %i.cv, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yh, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us, %.lr.ph413.i.us
  %.7403.i.us = phi ptr [ %i.yi, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yh, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.xv = load i8, ptr %i.xu, align 1
  %i.xw = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.xx = load i8, ptr %i.xw, align 1             ; 2 uses
  %i.xy = load i8, ptr %.7403.i.us, align 1
  %i.xz = and i8 %i.xv, -8
  %i.ya = lshr i8 %i.xx, 5
  %i.yb = or disjoint i8 %i.ya, %i.xz
  store i8 %i.yb, ptr %.11256401.i.us, align 1
  %i.yc = lshr i8 %i.xy, 3
  %i.yd = shl i8 %i.xx, 3
  %i.ye = and i8 %i.yd, -32
  %i.yf = or disjoint i8 %i.ye, %i.yc
  %i.yg = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.yf, ptr %i.yg, align 1
  %i.yh = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yi = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vh ; 3 uses
  %i.yj = icmp ult ptr %i.yi, %i.xt
  br i1 %i.yj, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !71

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.vk ; 2 uses
  %i.yl = icmp ult ptr %i.yk, %i.de
  br i1 %i.yl, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !72

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yh, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.ym = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ym, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !73

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.k, 2                ; 3 uses
  %i.yn = getelementptr inbounds i8, ptr %i.cv, i64 %.idx440.i
  %i.yo = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yo, label %.lr.ph423.i.preheader, label %zywrle_analyze_16be.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %i.yp = add i64 %.idx432.i, %i.a
  %i.yq = add i64 %i.yp, 86852
  %i.yr = add i64 %.idx440.i, %i.a
  %i.ys = add i64 %i.yr, 86848
  %i.yt = tail call i64 @llvm.umax.i64(i64 %i.yq, i64 %i.ys)
  %i.yu = add i64 %i.yt, -86849
  %i.yv = add i64 %.idx432.i, %i.a
  %i.yw = sub i64 %i.yu, %i.yv                    ; 4 uses
  %i.yx = lshr i64 %i.yw, 2
  %i.yy = add nuw nsw i64 %i.yx, 1                ; 2 uses
  %min.iters.check416 = icmp ult i64 %i.yw, 240
  br i1 %min.iters.check416, label %.lr.ph423.i.preheader442, label %vector.memcheck417

vector.memcheck417:                               ; preds = %.lr.ph423.i.preheader
  %i.yz = lshr i64 %i.yw, 1
  %i.za = and i64 %i.yz, 9223372036854775806
  %i.zb = getelementptr i8, ptr %.13258.i, i64 %i.za
  %i.zc = getelementptr i8, ptr %i.zb, i64 2
  %i.zd = and i64 %i.yw, -4
  %i.ze = getelementptr i8, ptr %0, i64 %i.zd
  %i.zf = getelementptr i8, ptr %i.ze, i64 %.idx432.i
  %i.zg = getelementptr i8, ptr %i.zf, i64 86850
  %bound0418 = icmp ult ptr %.13258.i, %i.zg
  %bound1419 = icmp ult ptr %i.de, %i.zc
  %found.conflict420 = and i1 %bound0418, %bound1419
  br i1 %found.conflict420, label %.lr.ph423.i.preheader442, label %vector.ph421

vector.ph421:                                     ; preds = %vector.memcheck417
  %i.zh = and i64 %i.yy, 7                        ; 2 uses
  %i.zi = icmp eq i64 %i.zh, 0
  %i.zj = select i1 %i.zi, i64 8, i64 %i.zh
  %n.vec422 = sub nsw i64 %i.yy, %i.zj            ; 3 uses
  %i.zk = shl i64 %n.vec422, 2
  %i.zl = getelementptr i8, ptr %i.de, i64 %i.zk
  %i.zm = shl i64 %n.vec422, 1
  %i.zn = getelementptr i8, ptr %.13258.i, i64 %i.zm
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph421
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next430, %vector.body423 ] ; 3 uses
  %i.zo = shl i64 %index424, 2                    ; 2 uses
  %next.gep425 = getelementptr i8, ptr %i.de, i64 %i.zo
  %i.zp = getelementptr i8, ptr %i.de, i64 %i.zo
  %next.gep426 = getelementptr i8, ptr %i.zp, i64 16
  %i.zq = shl i64 %index424, 1
  %next.gep427 = getelementptr i8, ptr %.13258.i, i64 %i.zq ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep425, align 2, !alias.scope !81
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec428 = load <8 x i16>, ptr %next.gep426, align 2, !alias.scope !81
  %strided.vec429 = shufflevector <8 x i16> %wide.vec428, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zr = getelementptr i8, ptr %next.gep427, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep427, align 2, !alias.scope !82, !noalias !81
  store <4 x i16> %strided.vec429, ptr %i.zr, align 2, !alias.scope !82, !noalias !81
  %index.next430 = add nuw i64 %index424, 8       ; 2 uses
  %i.zs = icmp eq i64 %index.next430, %n.vec422
  br i1 %i.zs, label %.lr.ph423.i.preheader442, label %vector.body423, !llvm.loop !77

.lr.ph423.i.preheader442:                         ; preds = %vector.body423, %vector.memcheck417, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.de, %vector.memcheck417 ], [ %i.de, %.lr.ph423.i.preheader ], [ %i.zl, %vector.body423 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck417 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zn, %vector.body423 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader442, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.zv, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader442 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.zu, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader442 ] ; 2 uses
  %i.zt = load i16, ptr %.8242420.i, align 2
  store i16 %i.zt, ptr %.14259419.i, align 2
  %i.zu = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.zv = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.zw = icmp ult ptr %i.zv, %i.yn
  br i1 %i.zw, label %.lr.ph423.i, label %zywrle_analyze_16be.exit, !llvm.loop !78

zywrle_analyze_16be.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.zx = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile16be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.zx)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  %i.zy = shl i32 %i.j, 1
  %i.zz = sext i32 %i.zy to i64
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.zz) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_16be.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @wavelet(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 256) %3) unnamed_addr #5 {
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
end_hunk_1
begin_hunk_2_@zrle_encode_tile16le:bb.a

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !10
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
  %6 = sext i32 %i.da to i64
  %.idx427.i = shl nuw nsw i64 %6, 1
  %i.dl = icmp sgt i32 %i.da, 0
  br i1 %i.dl, label %.lr.ph.i.preheader.us, label %.loopexit313.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph321.i, %._crit_edge.i.loopexit.us
  %.0226319.i.us = phi ptr [ %i.dr, %._crit_edge.i.loopexit.us ], [ %i.dg, %.lr.ph321.i ] ; 2 uses
  %.0234318.i.us = phi ptr [ %i.dp, %._crit_edge.i.loopexit.us ], [ %i.de, %.lr.ph321.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0226319.i.us, i64 %.idx427.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.1227316.i.us = phi ptr [ %i.do, %.lr.ph.i.us ], [ %.0226319.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.1235315.i.us = phi ptr [ %i.dp, %.lr.ph.i.us ], [ %.0234318.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.dn = load i16, ptr %.1227316.i.us, align 2
  store i16 %i.dn, ptr %.1235315.i.us, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %.1227316.i.us, i64 2 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1235315.i.us, i64 4 ; 3 uses
  %i.dq = icmp ult ptr %i.do, %i.dm
  br i1 %i.dq, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !97

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.df ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dj
  br i1 %i.ds, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !98

.loopexit313.i:                                   ; preds = %._crit_edge.i.loopexit.us, %.lr.ph321.i, %bb.y, %bb.x
  %.2236.i = phi ptr [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.de, %.lr.ph321.i ], [ %i.dp, %._crit_edge.i.loopexit.us ] ; 2 uses
  %.not310.i = icmp eq i32 %4, %i.cx
  br i1 %.not310.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %.loopexit313.i
  %i.dt = mul i32 %i.cx, %3
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.du ; 2 uses
  %i.dw = mul i32 %i.db, %3                       ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %.idx428.i = shl nsw i64 %i.dx, 1               ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %.idx428.i
  %i.dz = icmp sgt i32 %i.dw, 0
  br i1 %i.dz, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %bb.z
  %7 = sext i32 %i.cw to i64                      ; 3 uses
  %i.ea = sext i32 %i.da to i64                   ; 2 uses
  %.idx429.i = shl nuw nsw i64 %7, 1
  %i.eb = icmp sgt i32 %i.cw, 0
  br i1 %i.eb, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i

.lr.ph327.i.preheader.us:                         ; preds = %.lr.ph334.i, %._crit_edge328.i.loopexit.us
  %.3229332.i.us = phi ptr [ %i.eh, %._crit_edge328.i.loopexit.us ], [ %i.dv, %.lr.ph334.i ] ; 2 uses
  %.3237331.i.us = phi ptr [ %i.ef, %._crit_edge328.i.loopexit.us ], [ %.2236.i, %.lr.ph334.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.3229332.i.us, i64 %.idx429.i
  br label %.lr.ph327.i.us

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.us, %.lr.ph327.i.preheader.us
  %.4230325.i.us = phi ptr [ %i.ee, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.ef, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ed = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ed, ptr %.4238324.i.us, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.eg = icmp ult ptr %i.ee, %i.ec
  br i1 %i.eg, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !99

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.ea ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.dy
  br i1 %i.ei, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !100

._crit_edge335.i:                                 ; preds = %._crit_edge328.i.loopexit.us, %.lr.ph334.i
  %.us-phi173 = phi ptr [ %.2236.i, %.lr.ph334.i ], [ %i.ef, %._crit_edge328.i.loopexit.us ]
  br i1 %.not311.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge335.i
  %i.ej = getelementptr inbounds [2 x i8], ptr %2, i64 %7
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.du ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx428.i
  %.idx431.i = shl nuw nsw i64 %i.ea, 1
  %i.em = icmp sgt i32 %i.da, 0
  br i1 %i.em, label %.lr.ph341.i.preheader.us, label %.thread.i

.lr.ph341.i.preheader.us:                         ; preds = %bb.aa, %._crit_edge342.i.loopexit.us
  %.6232346.i.us = phi ptr [ %i.es, %._crit_edge342.i.loopexit.us ], [ %i.ek, %bb.aa ] ; 2 uses
  %.6240345.i.us = phi ptr [ %i.eq, %._crit_edge342.i.loopexit.us ], [ %.us-phi173, %bb.aa ]
  %i.en = getelementptr inbounds nuw i8, ptr %.6232346.i.us, i64 %.idx431.i
  br label %.lr.ph341.i.us

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.us, %.lr.ph341.i.preheader.us
  %.7233339.i.us = phi ptr [ %i.ep, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.eq, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eo = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eo, ptr %.7241338.i.us, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.er = icmp ult ptr %i.ep, %i.en
  br i1 %i.er, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !101

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %7 ; 2 uses
  %i.et = icmp ult ptr %i.es, %i.el
  br i1 %i.et, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !102

.thread.i:                                        ; preds = %._crit_edge342.i.loopexit.us, %bb.aa, %bb.z, %._crit_edge335.i, %.loopexit313.i
  %i.eu = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %8 = sext i32 %i.cw to i64                      ; 2 uses
  br i1 %i.eu, label %.lr.ph60.i.i, label %.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge

.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge:    ; preds = %.thread.i
  %.pre = shl nsw i64 %8, 2
  br label %zywrle_rgbyuv_16le.exit.i

.lr.ph60.i.i:                                     ; preds = %.thread.i
  %i.ev = sext i32 %i.da to i64
  %.idx62.i.i = shl nsw i64 %8, 2                 ; 4 uses
  %i.ew = icmp sgt i32 %i.cw, 0
  br i1 %i.ew, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.lr.ph60.i.i, %._crit_edge.i.loopexit.us.i
  %.04558.i.us.i = phi ptr [ %.lcssa344, %._crit_edge.i.loopexit.us.i ], [ %i.cv, %.lr.ph60.i.i ] ; 32 uses
  %.04657.i.us.i = phi ptr [ %i.uw, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
  %.04558.i.us.i356 = ptrtoaddr ptr %.04558.i.us.i to i64 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.04558.i.us.i, i64 %.idx62.i.i
  %i.ey = add i64 %.idx62.i.i, %.04558.i.us.i356
  %i.ez = add i64 %.04558.i.us.i356, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ez)
  %i.fa = xor i64 %.04558.i.us.i356, -1
  %i.fb = add i64 %umax, %i.fa                    ; 3 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fb, 28
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fe = add i64 %.idx62.i.i, %.04558.i.us.i356
  %i.ff = add i64 %.04558.i.us.i356, 4
  %i.fg = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.ff)
  %i.fh = xor i64 %.04558.i.us.i356, -1
  %i.fi = add i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = or i64 %i.fi, 3
  %i.fk = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fj
  %i.fl = lshr i64 %i.fi, 1
  %i.fm = and i64 %i.fl, 9223372036854775806
  %i.fn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 2
  %bound0 = icmp ult ptr %.04558.i.us.i, %i.fo
  %bound1 = icmp ult ptr %.04657.i.us.i, %i.fk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fb, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fp = and i64 %i.fd, 8
  %n.vec = and i64 %i.fd, 9223372036854775792     ; 5 uses
  %i.fq = shl i64 %n.vec, 2
  %i.fr = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 2 uses
  %i.fs = shl nuw i64 %n.vec, 1
  %i.ft = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fs ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fv, i64 4
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fw, i64 8
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.fx, i64 12
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fy, i64 16
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fz, i64 20
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.ga, i64 24
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.gb, i64 28
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.gc, i64 32
  %i.gd = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep366 = getelementptr i8, ptr %i.gd, i64 36
  %i.ge = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.ge, i64 40
  %i.gf = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.gf, i64 44
  %i.gg = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep369 = getelementptr i8, ptr %i.gg, i64 48
  %i.gh = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.gh, i64 52
  %i.gi = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep371 = getelementptr i8, ptr %i.gi, i64 56
  %i.gj = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep372 = getelementptr i8, ptr %i.gj, i64 60
  %i.gk = shl i64 %index, 1                       ; 16 uses
  %next.gep373 = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %i.gl = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.gl, i64 2
  %i.gm = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.gm, i64 4
  %i.gn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gn, i64 6
  %i.go = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.go, i64 8
  %i.gp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.gp, i64 10
  %i.gq = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.gq, i64 12
  %i.gr = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.gr, i64 14
  %i.gs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep381 = getelementptr i8, ptr %i.gs, i64 16
  %i.gt = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.gt, i64 18
  %i.gu = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.gu, i64 20
  %i.gv = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gv, i64 22
  %i.gw = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gw, i64 24
  %i.gx = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.gx, i64 26
  %i.gy = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.gy, i64 28
  %i.gz = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.gz, i64 30
  %i.ha = getelementptr inbounds nuw i8, ptr %next.gep373, i64 1
  %i.hb = getelementptr i8, ptr %i.gl, i64 3
  %i.hc = getelementptr i8, ptr %i.gm, i64 5
  %i.hd = getelementptr i8, ptr %i.gn, i64 7
  %i.he = getelementptr i8, ptr %i.go, i64 9
  %i.hf = getelementptr i8, ptr %i.gp, i64 11
  %i.hg = getelementptr i8, ptr %i.gq, i64 13
  %i.hh = getelementptr i8, ptr %i.gr, i64 15
  %i.hi = getelementptr i8, ptr %i.gs, i64 17
  %i.hj = getelementptr i8, ptr %i.gt, i64 19
  %i.hk = getelementptr i8, ptr %i.gu, i64 21
  %i.hl = getelementptr i8, ptr %i.gv, i64 23
  %i.hm = getelementptr i8, ptr %i.gw, i64 25
  %i.hn = getelementptr i8, ptr %i.gx, i64 27
  %i.ho = getelementptr i8, ptr %i.gy, i64 29
  %i.hp = getelementptr i8, ptr %i.gz, i64 31
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
  %i.ic = load i8, ptr %i.hm, align 1, !alias.scope !124
  %i.id = load i8, ptr %i.hn, align 1, !alias.scope !124
  %i.ie = load i8, ptr %i.ho, align 1, !alias.scope !124
  %i.if = load i8, ptr %i.hp, align 1, !alias.scope !124
  %i.ig = insertelement <16 x i8> poison, i8 %i.hq, i64 0
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 1
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 2
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 3
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 4
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 5
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 6
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 7
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 8
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 9
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 10
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 11
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 12
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 13
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 14
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 15
  %i.iw = zext <16 x i8> %i.iv to <16 x i32>      ; 3 uses
  %i.ix = and <16 x i32> %i.iw, splat (i32 248)
  %i.iy = shl nuw nsw <16 x i32> %i.iw, splat (i32 5)
  %i.iz = load i8, ptr %next.gep373, align 1, !alias.scope !124
  %i.ja = load i8, ptr %next.gep374, align 1, !alias.scope !124
  %i.jb = load i8, ptr %next.gep375, align 1, !alias.scope !124
  %i.jc = load i8, ptr %next.gep376, align 1, !alias.scope !124
  %i.jd = load i8, ptr %next.gep377, align 1, !alias.scope !124
  %i.je = load i8, ptr %next.gep378, align 1, !alias.scope !124
  %i.jf = load i8, ptr %next.gep379, align 1, !alias.scope !124
  %i.jg = load i8, ptr %next.gep380, align 1, !alias.scope !124
  %i.jh = load i8, ptr %next.gep381, align 1, !alias.scope !124
  %i.ji = load i8, ptr %next.gep382, align 1, !alias.scope !124
  %i.jj = load i8, ptr %next.gep383, align 1, !alias.scope !124
  %i.jk = load i8, ptr %next.gep384, align 1, !alias.scope !124
  %i.jl = load i8, ptr %next.gep385, align 1, !alias.scope !124
  %i.jm = load i8, ptr %next.gep386, align 1, !alias.scope !124
  %i.jn = load i8, ptr %next.gep387, align 1, !alias.scope !124
  %i.jo = load i8, ptr %next.gep388, align 1, !alias.scope !124
  %i.jp = insertelement <16 x i8> poison, i8 %i.iz, i64 0
  %i.jq = insertelement <16 x i8> %i.jp, i8 %i.ja, i64 1
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 2
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 3
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 4
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 5
  %i.jv = insertelement <16 x i8> %i.ju, i8 %i.jf, i64 6
  %i.jw = insertelement <16 x i8> %i.jv, i8 %i.jg, i64 7
  %i.jx = insertelement <16 x i8> %i.jw, i8 %i.jh, i64 8
  %i.jy = insertelement <16 x i8> %i.jx, i8 %i.ji, i64 9
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 10
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 11
  %i.kb = insertelement <16 x i8> %i.ka, i8 %i.jl, i64 12
  %i.kc = insertelement <16 x i8> %i.kb, i8 %i.jm, i64 13
  %i.kd = insertelement <16 x i8> %i.kc, i8 %i.jn, i64 14
  %i.ke = insertelement <16 x i8> %i.kd, i8 %i.jo, i64 15
  %i.kf = zext <16 x i8> %i.ke to <16 x i32>      ; 2 uses
  %i.kg = lshr <16 x i32> %i.kf, splat (i32 3)
  %i.kh = or disjoint <16 x i32> %i.kg, %i.iy
end_hunk_2
begin_hunk_3_@zrle_encode_tile16le:bb.a
  %i.pg = getelementptr i8, ptr %i.oy, i64 7
  %i.ph = getelementptr i8, ptr %i.oz, i64 9
  %i.pi = getelementptr i8, ptr %i.pa, i64 11
  %i.pj = getelementptr i8, ptr %i.pb, i64 13
  %i.pk = getelementptr i8, ptr %i.pc, i64 15
  %i.pl = load i8, ptr %i.pd, align 1, !alias.scope !124
  %i.pm = load i8, ptr %i.pe, align 1, !alias.scope !124
  %i.pn = load i8, ptr %i.pf, align 1, !alias.scope !124
  %i.po = load i8, ptr %i.pg, align 1, !alias.scope !124
  %i.pp = load i8, ptr %i.ph, align 1, !alias.scope !124
  %i.pq = load i8, ptr %i.pi, align 1, !alias.scope !124
  %i.pr = load i8, ptr %i.pj, align 1, !alias.scope !124
  %i.ps = load i8, ptr %i.pk, align 1, !alias.scope !124
  %i.pt = insertelement <8 x i8> poison, i8 %i.pl, i64 0
  %i.pu = insertelement <8 x i8> %i.pt, i8 %i.pm, i64 1
  %i.pv = insertelement <8 x i8> %i.pu, i8 %i.pn, i64 2
  %i.pw = insertelement <8 x i8> %i.pv, i8 %i.po, i64 3
  %i.px = insertelement <8 x i8> %i.pw, i8 %i.pp, i64 4
  %i.py = insertelement <8 x i8> %i.px, i8 %i.pq, i64 5
  %i.pz = insertelement <8 x i8> %i.py, i8 %i.pr, i64 6
  %i.qa = insertelement <8 x i8> %i.pz, i8 %i.ps, i64 7
  %i.qb = zext <8 x i8> %i.qa to <8 x i32>        ; 3 uses
  %i.qc = and <8 x i32> %i.qb, splat (i32 248)
  %i.qd = shl nuw nsw <8 x i32> %i.qb, splat (i32 5)
  %i.qe = load i8, ptr %next.gep399, align 1, !alias.scope !124
  %i.qf = load i8, ptr %next.gep400, align 1, !alias.scope !124
  %i.qg = load i8, ptr %next.gep401, align 1, !alias.scope !124
  %i.qh = load i8, ptr %next.gep402, align 1, !alias.scope !124
  %i.qi = load i8, ptr %next.gep403, align 1, !alias.scope !124
  %i.qj = load i8, ptr %next.gep404, align 1, !alias.scope !124
  %i.qk = load i8, ptr %next.gep405, align 1, !alias.scope !124
  %i.ql = load i8, ptr %next.gep406, align 1, !alias.scope !124
  %i.qm = insertelement <8 x i8> poison, i8 %i.qe, i64 0
  %i.qn = insertelement <8 x i8> %i.qm, i8 %i.qf, i64 1
  %i.qo = insertelement <8 x i8> %i.qn, i8 %i.qg, i64 2
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 3
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 4
  %i.qr = insertelement <8 x i8> %i.qq, i8 %i.qj, i64 5
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qk, i64 6
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 7
  %i.qu = zext <8 x i8> %i.qt to <8 x i32>        ; 2 uses
  %i.qv = lshr <8 x i32> %i.qu, splat (i32 3)
  %i.qw = or disjoint <8 x i32> %i.qv, %i.qd
  %i.qx = and <8 x i32> %i.qw, splat (i32 252)    ; 3 uses
  %i.qy = shl nuw nsw <8 x i32> %i.qu, splat (i32 3)
  %i.qz = and <8 x i32> %i.qy, splat (i32 248)    ; 2 uses
  %i.ra = shl nuw nsw <8 x i32> %i.qx, splat (i32 1)
  %i.rb = add nuw nsw <8 x i32> %i.qz, %i.qb
  %i.rc = add nuw nsw <8 x i32> %i.rb, %i.ra
  %i.rd = lshr <8 x i32> %i.rc, splat (i32 2)
  %i.re = sub nsw <8 x i32> %i.qz, %i.qx
  %i.rf = sub nsw <8 x i32> %i.qc, %i.qx
  %i.rg = ashr exact <8 x i32> %i.re, splat (i32 1)
  %i.rh = ashr exact <8 x i32> %i.rf, splat (i32 1)
  %i.ri = and <8 x i32> %i.rd, splat (i32 252)    ; 2 uses
  %i.rj = and <8 x i32> %i.rg, splat (i32 -8)     ; 2 uses
  %i.rk = and <8 x i32> %i.rh, splat (i32 -8)     ; 2 uses
  %i.rl = icmp eq <8 x i32> %i.ri, zeroinitializer
  %i.rm = icmp eq <8 x i32> %i.rj, splat (i32 -128)
  %i.rn = icmp eq <8 x i32> %i.rk, splat (i32 -128)
  %i.ro = trunc <8 x i32> %i.rk to <8 x i8>
  %i.rp = select <8 x i1> %i.rn, <8 x i8> splat (i8 -120), <8 x i8> %i.ro ; 8 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %next.gep391, i64 2
  %i.rr = getelementptr i8, ptr %i.oo, i64 6
  %i.rs = getelementptr i8, ptr %i.op, i64 10
  %i.rt = getelementptr i8, ptr %i.oq, i64 14
  %i.ru = getelementptr i8, ptr %i.or, i64 18
  %i.rv = getelementptr i8, ptr %i.os, i64 22
  %i.rw = getelementptr i8, ptr %i.ot, i64 26
  %i.rx = getelementptr i8, ptr %i.ou, i64 30
  %i.ry = extractelement <8 x i8> %i.rp, i64 0
  store i8 %i.ry, ptr %i.rq, align 1, !alias.scope !125, !noalias !124
  %i.rz = extractelement <8 x i8> %i.rp, i64 1
  store i8 %i.rz, ptr %i.rr, align 1, !alias.scope !125, !noalias !124
  %i.sa = extractelement <8 x i8> %i.rp, i64 2
  store i8 %i.sa, ptr %i.rs, align 1, !alias.scope !125, !noalias !124
  %i.sb = extractelement <8 x i8> %i.rp, i64 3
  store i8 %i.sb, ptr %i.rt, align 1, !alias.scope !125, !noalias !124
  %i.sc = extractelement <8 x i8> %i.rp, i64 4
  store i8 %i.sc, ptr %i.ru, align 1, !alias.scope !125, !noalias !124
  %i.sd = extractelement <8 x i8> %i.rp, i64 5
  store i8 %i.sd, ptr %i.rv, align 1, !alias.scope !125, !noalias !124
  %i.se = extractelement <8 x i8> %i.rp, i64 6
  store i8 %i.se, ptr %i.rw, align 1, !alias.scope !125, !noalias !124
  %i.sf = extractelement <8 x i8> %i.rp, i64 7
  store i8 %i.sf, ptr %i.rx, align 1, !alias.scope !125, !noalias !124
  %i.sg = trunc nuw <8 x i32> %i.ri to <8 x i8>
  %i.sh = xor <8 x i8> %i.sg, splat (i8 -128)
  %i.si = select <8 x i1> %i.rl, <8 x i8> splat (i8 -124), <8 x i8> %i.sh ; 8 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %next.gep391, i64 1
  %i.sk = getelementptr i8, ptr %i.oo, i64 5
  %i.sl = getelementptr i8, ptr %i.op, i64 9
  %i.sm = getelementptr i8, ptr %i.oq, i64 13
  %i.sn = getelementptr i8, ptr %i.or, i64 17
  %i.so = getelementptr i8, ptr %i.os, i64 21
  %i.sp = getelementptr i8, ptr %i.ot, i64 25
  %i.sq = getelementptr i8, ptr %i.ou, i64 29
  %i.sr = extractelement <8 x i8> %i.si, i64 0
  store i8 %i.sr, ptr %i.sj, align 1, !alias.scope !125, !noalias !124
  %i.ss = extractelement <8 x i8> %i.si, i64 1
  store i8 %i.ss, ptr %i.sk, align 1, !alias.scope !125, !noalias !124
  %i.st = extractelement <8 x i8> %i.si, i64 2
  store i8 %i.st, ptr %i.sl, align 1, !alias.scope !125, !noalias !124
  %i.su = extractelement <8 x i8> %i.si, i64 3
  store i8 %i.su, ptr %i.sm, align 1, !alias.scope !125, !noalias !124
  %i.sv = extractelement <8 x i8> %i.si, i64 4
  store i8 %i.sv, ptr %i.sn, align 1, !alias.scope !125, !noalias !124
  %i.sw = extractelement <8 x i8> %i.si, i64 5
  store i8 %i.sw, ptr %i.so, align 1, !alias.scope !125, !noalias !124
  %i.sx = extractelement <8 x i8> %i.si, i64 6
  store i8 %i.sx, ptr %i.sp, align 1, !alias.scope !125, !noalias !124
  %i.sy = extractelement <8 x i8> %i.si, i64 7
  store i8 %i.sy, ptr %i.sq, align 1, !alias.scope !125, !noalias !124
  %i.sz = trunc <8 x i32> %i.rj to <8 x i8>
  %i.ta = select <8 x i1> %i.rm, <8 x i8> splat (i8 -120), <8 x i8> %i.sz ; 8 uses
  %i.tb = extractelement <8 x i8> %i.ta, i64 0
  store i8 %i.tb, ptr %next.gep391, align 1, !alias.scope !125, !noalias !124
  %i.tc = extractelement <8 x i8> %i.ta, i64 1
  store i8 %i.tc, ptr %next.gep392, align 1, !alias.scope !125, !noalias !124
  %i.td = extractelement <8 x i8> %i.ta, i64 2
  store i8 %i.td, ptr %next.gep393, align 1, !alias.scope !125, !noalias !124
  %i.te = extractelement <8 x i8> %i.ta, i64 3
  store i8 %i.te, ptr %next.gep394, align 1, !alias.scope !125, !noalias !124
  %i.tf = extractelement <8 x i8> %i.ta, i64 4
  store i8 %i.tf, ptr %next.gep395, align 1, !alias.scope !125, !noalias !124
  %i.tg = extractelement <8 x i8> %i.ta, i64 5
  store i8 %i.tg, ptr %next.gep396, align 1, !alias.scope !125, !noalias !124
  %i.th = extractelement <8 x i8> %i.ta, i64 6
  store i8 %i.th, ptr %next.gep397, align 1, !alias.scope !125, !noalias !124
  %i.ti = extractelement <8 x i8> %i.ta, i64 7
  store i8 %i.ti, ptr %next.gep398, align 1, !alias.scope !125, !noalias !124
  %index.next407 = add nuw i64 %index390, 8       ; 2 uses
  %i.tj = icmp eq i64 %index.next407, %n.vec389
  br i1 %i.tj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n408 = icmp eq i64 %i.fd, %n.vec389
  br i1 %cmp.n408, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.155.i.us.i.ph = phi ptr [ %.04558.i.us.i, %iter.check ], [ %.04558.i.us.i, %vector.memcheck ], [ %i.fr, %vec.epilog.iter.check ], [ %i.ok, %vec.epilog.middle.block ]
  %.14754.i.us.i.ph = phi ptr [ %.04657.i.us.i, %iter.check ], [ %.04657.i.us.i, %vector.memcheck ], [ %i.ft, %vec.epilog.iter.check ], [ %i.om, %vec.epilog.middle.block ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %.155.i.us.i = phi ptr [ %i.ut, %.lr.ph.i.us.i ], [ %.155.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 4 uses
  %.14754.i.us.i = phi ptr [ %i.uu, %.lr.ph.i.us.i ], [ %.14754.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.14754.i.us.i, i64 1
  %i.tl = load i8, ptr %i.tk, align 1
  %i.tm = zext i8 %i.tl to i32                    ; 3 uses
  %i.tn = and i32 %i.tm, 248
  %i.to = shl nuw nsw i32 %i.tm, 5
  %i.tp = load i8, ptr %.14754.i.us.i, align 1
  %i.tq = zext i8 %i.tp to i32                    ; 2 uses
  %i.tr = lshr i32 %i.tq, 3
  %i.ts = or disjoint i32 %i.tr, %i.to
  %i.tt = and i32 %i.ts, 252                      ; 3 uses
  %i.tu = shl nuw nsw i32 %i.tq, 3
  %i.tv = and i32 %i.tu, 248                      ; 2 uses
  %i.tw = shl nuw nsw i32 %i.tt, 1
  %i.tx = add nuw nsw i32 %i.tv, %i.tm
  %i.ty = add nuw nsw i32 %i.tx, %i.tw
  %i.tz = lshr i32 %i.ty, 2
  %i.ua = sub nsw i32 %i.tv, %i.tt
  %i.ub = sub nsw i32 %i.tn, %i.tt
  %i.uc = ashr exact i32 %i.ua, 1
  %i.ud = ashr exact i32 %i.ub, 1
  %i.ue = and i32 %i.tz, 252                      ; 2 uses
  %i.uf = and i32 %i.uc, -8                       ; 2 uses
  %i.ug = and i32 %i.ud, -8                       ; 2 uses
  %i.uh = icmp eq i32 %i.ue, 0
  %i.ui = icmp eq i32 %i.uf, -128
  %i.uj = icmp eq i32 %i.ug, -128
  %i.uk = trunc i32 %i.ug to i8
  %i.ul = select i1 %i.uj, i8 -120, i8 %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 2
  store i8 %i.ul, ptr %i.um, align 1
  %i.un = trunc nuw i32 %i.ue to i8
  %i.uo = xor i8 %i.un, -128
  %i.up = select i1 %i.uh, i8 -124, i8 %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 1
  store i8 %i.up, ptr %i.uq, align 1
  %i.ur = trunc i32 %i.uf to i8
  %i.us = select i1 %i.ui, i8 -120, i8 %i.ur
  store i8 %i.us, ptr %.155.i.us.i, align 1
  %i.ut = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 4 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.14754.i.us.i, i64 2 ; 2 uses
  %i.uv = icmp ult ptr %i.ut, %i.ex
  br i1 %i.uv, label %.lr.ph.i.us.i, label %._crit_edge.i.loopexit.us.i, !llvm.loop !108

._crit_edge.i.loopexit.us.i:                      ; preds = %.lr.ph.i.us.i, %vec.epilog.middle.block, %middle.block
  %.lcssa344 = phi ptr [ %i.ok, %vec.epilog.middle.block ], [ %i.fr, %middle.block ], [ %i.ut, %.lr.ph.i.us.i ] ; 2 uses
  %.lcssa343 = phi ptr [ %i.om, %vec.epilog.middle.block ], [ %i.ft, %middle.block ], [ %i.uu, %.lr.ph.i.us.i ]
  %i.uw = getelementptr inbounds [2 x i8], ptr %.lcssa343, i64 %i.ev
  %i.ux = icmp ult ptr %.lcssa344, %i.de
  br i1 %i.ux, label %iter.check, label %zywrle_rgbyuv_16le.exit.i, !llvm.loop !109

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_16le.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef range(i32 1, 256) %5)
  %i.uy = icmp slt i32 %i.cw, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_16le.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_16le.exit.i ], [ %i.ym, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_16le.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.uz = shl i32 2, %.0243417.i                  ; 3 uses
  %i.va = ashr exact i32 %i.uz, 1                 ; 2 uses
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vb ; 3 uses
  %i.vd = mul i32 %i.va, %i.cw
  %i.ve = sext i32 %i.vd to i64                   ; 2 uses
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.ve ; 2 uses
  %i.vg = getelementptr inbounds i8, ptr %i.vf, i64 %.idx432.i
  br i1 %i.eu, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vh = sext i32 %i.uz to i64                   ; 4 uses
  %i.vi = add i32 %i.uz, -1
  %i.vj = mul i32 %i.vi, %i.cw
  %i.vk = sext i32 %i.vj to i64                   ; 4 uses
  br i1 %i.uy, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wc, %._crit_edge355.i.loopexit.us ], [ %i.vf, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.vz, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vl = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.us, %.lr.ph354.i.preheader.us
  %.1352.i.us = phi ptr [ %i.wa, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.vz, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vn = load i8, ptr %i.vm, align 1
  %i.vo = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vp = load i8, ptr %i.vo, align 1             ; 2 uses
  %i.vq = load i8, ptr %.1352.i.us, align 1
  %i.vr = and i8 %i.vn, -8
  %i.vs = lshr i8 %i.vp, 5
  %i.vt = or disjoint i8 %i.vs, %i.vr
  %i.vu = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vt, ptr %i.vu, align 1
  %i.vv = lshr i8 %i.vq, 3
  %i.vw = shl i8 %i.vp, 3
  %i.vx = and i8 %i.vw, -32
  %i.vy = or disjoint i8 %i.vx, %i.vv
  store i8 %i.vy, ptr %.2247350.i.us, align 1
  %i.vz = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.wa = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vh ; 3 uses
  %i.wb = icmp ult ptr %i.wa, %i.vl
  br i1 %i.wb, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !110

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.vk ; 2 uses
  %i.wd = icmp ult ptr %i.wc, %i.vg
  br i1 %i.wd, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !111

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.we = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ve ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.wx, %._crit_edge372.i.loopexit.us ], [ %i.we, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wu, %._crit_edge372.i.loopexit.us ], [ %i.vz, %._crit_edge364.i ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.us, %.lr.ph371.i.preheader.us
  %.3369.i.us = phi ptr [ %i.wv, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wu, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wi = load i8, ptr %i.wh, align 1
  %i.wj = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wk = load i8, ptr %i.wj, align 1             ; 2 uses
  %i.wl = load i8, ptr %.3369.i.us, align 1
  %i.wm = and i8 %i.wi, -8
  %i.wn = lshr i8 %i.wk, 5
  %i.wo = or disjoint i8 %i.wn, %i.wm
  %i.wp = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wo, ptr %i.wp, align 1
  %i.wq = lshr i8 %i.wl, 3
  %i.wr = shl i8 %i.wk, 3
  %i.ws = and i8 %i.wr, -32
  %i.wt = or disjoint i8 %i.ws, %i.wq
  store i8 %i.wt, ptr %.5250367.i.us, align 1
  %i.wu = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wv = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vh ; 3 uses
  %i.ww = icmp ult ptr %i.wv, %i.wg
  br i1 %i.ww, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !112

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.vk ; 2 uses
  %i.wy = icmp ult ptr %i.wx, %i.wf
  br i1 %i.wy, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !113

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vc, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xr, %._crit_edge389.i.loopexit.us ], [ %i.vc, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xo, %._crit_edge389.i.loopexit.us ], [ %i.wu, %._crit_edge381.i ]
  %i.xa = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.us, %.lr.ph388.i.preheader.us
  %.5386.i.us = phi ptr [ %i.xp, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xo, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xc = load i8, ptr %i.xb, align 1
  %i.xd = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xe = load i8, ptr %i.xd, align 1             ; 2 uses
  %i.xf = load i8, ptr %.5386.i.us, align 1
  %i.xg = and i8 %i.xc, -8
  %i.xh = lshr i8 %i.xe, 5
  %i.xi = or disjoint i8 %i.xh, %i.xg
  %i.xj = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xi, ptr %i.xj, align 1
  %i.xk = lshr i8 %i.xf, 3
  %i.xl = shl i8 %i.xe, 3
  %i.xm = and i8 %i.xl, -32
  %i.xn = or disjoint i8 %i.xm, %i.xk
  store i8 %i.xn, ptr %.8253384.i.us, align 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xp = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vh ; 3 uses
  %i.xq = icmp ult ptr %i.xp, %i.xa
  br i1 %i.xq, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !114

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %i.vk ; 2 uses
  %i.xs = icmp ult ptr %i.xr, %i.wz
  br i1 %i.xs, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !115

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xo, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.cu
  %brmerge = or i1 %.not, %i.uy
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yk, %._crit_edge406.i.loopexit.us ], [ %i.cv, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yh, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us, %.lr.ph413.i.us
  %.7403.i.us = phi ptr [ %i.yi, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yh, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.xv = load i8, ptr %i.xu, align 1
  %i.xw = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.xx = load i8, ptr %i.xw, align 1             ; 2 uses
  %i.xy = load i8, ptr %.7403.i.us, align 1
  %i.xz = and i8 %i.xv, -8
  %i.ya = lshr i8 %i.xx, 5
  %i.yb = or disjoint i8 %i.ya, %i.xz
  %i.yc = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.yb, ptr %i.yc, align 1
  %i.yd = lshr i8 %i.xy, 3
  %i.ye = shl i8 %i.xx, 3
  %i.yf = and i8 %i.ye, -32
  %i.yg = or disjoint i8 %i.yf, %i.yd
  store i8 %i.yg, ptr %.11256401.i.us, align 1
  %i.yh = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yi = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vh ; 3 uses
  %i.yj = icmp ult ptr %i.yi, %i.xt
  br i1 %i.yj, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !116

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.vk ; 2 uses
  %i.yl = icmp ult ptr %i.yk, %i.de
  br i1 %i.yl, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !117

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yh, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.ym = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ym, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !118

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.k, 2                ; 3 uses
  %i.yn = getelementptr inbounds i8, ptr %i.cv, i64 %.idx440.i
  %i.yo = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yo, label %.lr.ph423.i.preheader, label %zywrle_analyze_16le.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %i.yp = add i64 %.idx432.i, %i.a
  %i.yq = add i64 %i.yp, 86852
  %i.yr = add i64 %.idx440.i, %i.a
  %i.ys = add i64 %i.yr, 86848
  %i.yt = tail call i64 @llvm.umax.i64(i64 %i.yq, i64 %i.ys)
  %i.yu = add i64 %i.yt, -86849
  %i.yv = add i64 %.idx432.i, %i.a
  %i.yw = sub i64 %i.yu, %i.yv                    ; 4 uses
  %i.yx = lshr i64 %i.yw, 2
  %i.yy = add nuw nsw i64 %i.yx, 1                ; 2 uses
  %min.iters.check416 = icmp ult i64 %i.yw, 240
  br i1 %min.iters.check416, label %.lr.ph423.i.preheader442, label %vector.memcheck417

vector.memcheck417:                               ; preds = %.lr.ph423.i.preheader
  %i.yz = lshr i64 %i.yw, 1
  %i.za = and i64 %i.yz, 9223372036854775806
  %i.zb = getelementptr i8, ptr %.13258.i, i64 %i.za
  %i.zc = getelementptr i8, ptr %i.zb, i64 2
  %i.zd = and i64 %i.yw, -4
  %i.ze = getelementptr i8, ptr %0, i64 %i.zd
  %i.zf = getelementptr i8, ptr %i.ze, i64 %.idx432.i
  %i.zg = getelementptr i8, ptr %i.zf, i64 86850
  %bound0418 = icmp ult ptr %.13258.i, %i.zg
  %bound1419 = icmp ult ptr %i.de, %i.zc
  %found.conflict420 = and i1 %bound0418, %bound1419
  br i1 %found.conflict420, label %.lr.ph423.i.preheader442, label %vector.ph421

vector.ph421:                                     ; preds = %vector.memcheck417
  %i.zh = and i64 %i.yy, 7                        ; 2 uses
  %i.zi = icmp eq i64 %i.zh, 0
  %i.zj = select i1 %i.zi, i64 8, i64 %i.zh
  %n.vec422 = sub nsw i64 %i.yy, %i.zj            ; 3 uses
  %i.zk = shl i64 %n.vec422, 2
  %i.zl = getelementptr i8, ptr %i.de, i64 %i.zk
  %i.zm = shl i64 %n.vec422, 1
  %i.zn = getelementptr i8, ptr %.13258.i, i64 %i.zm
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph421
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next430, %vector.body423 ] ; 3 uses
  %i.zo = shl i64 %index424, 2                    ; 2 uses
  %next.gep425 = getelementptr i8, ptr %i.de, i64 %i.zo
  %i.zp = getelementptr i8, ptr %i.de, i64 %i.zo
  %next.gep426 = getelementptr i8, ptr %i.zp, i64 16
  %i.zq = shl i64 %index424, 1
  %next.gep427 = getelementptr i8, ptr %.13258.i, i64 %i.zq ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep425, align 2, !alias.scope !126
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec428 = load <8 x i16>, ptr %next.gep426, align 2, !alias.scope !126
  %strided.vec429 = shufflevector <8 x i16> %wide.vec428, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zr = getelementptr i8, ptr %next.gep427, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep427, align 2, !alias.scope !127, !noalias !126
  store <4 x i16> %strided.vec429, ptr %i.zr, align 2, !alias.scope !127, !noalias !126
  %index.next430 = add nuw i64 %index424, 8       ; 2 uses
  %i.zs = icmp eq i64 %index.next430, %n.vec422
  br i1 %i.zs, label %.lr.ph423.i.preheader442, label %vector.body423, !llvm.loop !122

.lr.ph423.i.preheader442:                         ; preds = %vector.body423, %vector.memcheck417, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.de, %vector.memcheck417 ], [ %i.de, %.lr.ph423.i.preheader ], [ %i.zl, %vector.body423 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck417 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zn, %vector.body423 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader442, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.zv, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader442 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.zu, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader442 ] ; 2 uses
  %i.zt = load i16, ptr %.8242420.i, align 2
  store i16 %i.zt, ptr %.14259419.i, align 2
  %i.zu = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.zv = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.zw = icmp ult ptr %i.zv, %i.yn
  br i1 %i.zw, label %.lr.ph423.i, label %zywrle_analyze_16le.exit, !llvm.loop !123

zywrle_analyze_16le.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.zx = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile16le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.zx)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  %i.zy = shl i32 %i.j, 1
  %i.zz = sext i32 %i.zy to i64
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.zz) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_16le.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile15be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
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
end_hunk_3
begin_hunk_4_@zrle_encode_tile15be:bb.a

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !10
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
  %6 = sext i32 %i.da to i64
  %.idx427.i = shl nuw nsw i64 %6, 1
  %i.dl = icmp sgt i32 %i.da, 0
  br i1 %i.dl, label %.lr.ph.i.preheader.us, label %.loopexit313.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph321.i, %._crit_edge.i.loopexit.us
  %.0226319.i.us = phi ptr [ %i.dr, %._crit_edge.i.loopexit.us ], [ %i.dg, %.lr.ph321.i ] ; 2 uses
  %.0234318.i.us = phi ptr [ %i.dp, %._crit_edge.i.loopexit.us ], [ %i.de, %.lr.ph321.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0226319.i.us, i64 %.idx427.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.1227316.i.us = phi ptr [ %i.do, %.lr.ph.i.us ], [ %.0226319.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.1235315.i.us = phi ptr [ %i.dp, %.lr.ph.i.us ], [ %.0234318.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.dn = load i16, ptr %.1227316.i.us, align 2
  store i16 %i.dn, ptr %.1235315.i.us, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %.1227316.i.us, i64 2 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1235315.i.us, i64 4 ; 3 uses
  %i.dq = icmp ult ptr %i.do, %i.dm
  br i1 %i.dq, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !136

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.df ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dj
  br i1 %i.ds, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !137

.loopexit313.i:                                   ; preds = %._crit_edge.i.loopexit.us, %.lr.ph321.i, %bb.y, %bb.x
  %.2236.i = phi ptr [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.de, %.lr.ph321.i ], [ %i.dp, %._crit_edge.i.loopexit.us ] ; 2 uses
  %.not310.i = icmp eq i32 %4, %i.cx
  br i1 %.not310.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %.loopexit313.i
  %i.dt = mul i32 %i.cx, %3
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.du ; 2 uses
  %i.dw = mul i32 %i.db, %3                       ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %.idx428.i = shl nsw i64 %i.dx, 1               ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %.idx428.i
  %i.dz = icmp sgt i32 %i.dw, 0
  br i1 %i.dz, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %bb.z
  %7 = sext i32 %i.cw to i64                      ; 3 uses
  %i.ea = sext i32 %i.da to i64                   ; 2 uses
  %.idx429.i = shl nuw nsw i64 %7, 1
  %i.eb = icmp sgt i32 %i.cw, 0
  br i1 %i.eb, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i

.lr.ph327.i.preheader.us:                         ; preds = %.lr.ph334.i, %._crit_edge328.i.loopexit.us
  %.3229332.i.us = phi ptr [ %i.eh, %._crit_edge328.i.loopexit.us ], [ %i.dv, %.lr.ph334.i ] ; 2 uses
  %.3237331.i.us = phi ptr [ %i.ef, %._crit_edge328.i.loopexit.us ], [ %.2236.i, %.lr.ph334.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.3229332.i.us, i64 %.idx429.i
  br label %.lr.ph327.i.us

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.us, %.lr.ph327.i.preheader.us
  %.4230325.i.us = phi ptr [ %i.ee, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.ef, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ed = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ed, ptr %.4238324.i.us, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.eg = icmp ult ptr %i.ee, %i.ec
  br i1 %i.eg, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !138

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.ea ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.dy
  br i1 %i.ei, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !139

._crit_edge335.i:                                 ; preds = %._crit_edge328.i.loopexit.us, %.lr.ph334.i
  %.us-phi173 = phi ptr [ %.2236.i, %.lr.ph334.i ], [ %i.ef, %._crit_edge328.i.loopexit.us ]
  br i1 %.not311.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge335.i
  %i.ej = getelementptr inbounds [2 x i8], ptr %2, i64 %7
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.du ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx428.i
  %.idx431.i = shl nuw nsw i64 %i.ea, 1
  %i.em = icmp sgt i32 %i.da, 0
  br i1 %i.em, label %.lr.ph341.i.preheader.us, label %.thread.i

.lr.ph341.i.preheader.us:                         ; preds = %bb.aa, %._crit_edge342.i.loopexit.us
  %.6232346.i.us = phi ptr [ %i.es, %._crit_edge342.i.loopexit.us ], [ %i.ek, %bb.aa ] ; 2 uses
  %.6240345.i.us = phi ptr [ %i.eq, %._crit_edge342.i.loopexit.us ], [ %.us-phi173, %bb.aa ]
  %i.en = getelementptr inbounds nuw i8, ptr %.6232346.i.us, i64 %.idx431.i
  br label %.lr.ph341.i.us

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.us, %.lr.ph341.i.preheader.us
  %.7233339.i.us = phi ptr [ %i.ep, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.eq, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eo = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eo, ptr %.7241338.i.us, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.er = icmp ult ptr %i.ep, %i.en
  br i1 %i.er, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !140

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %7 ; 2 uses
  %i.et = icmp ult ptr %i.es, %i.el
  br i1 %i.et, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !141

.thread.i:                                        ; preds = %._crit_edge342.i.loopexit.us, %bb.aa, %bb.z, %._crit_edge335.i, %.loopexit313.i
  %i.eu = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %8 = sext i32 %i.cw to i64                      ; 2 uses
  br i1 %i.eu, label %.lr.ph60.i.i, label %.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge

.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge:    ; preds = %.thread.i
  %.pre = shl nsw i64 %8, 2
  br label %zywrle_rgbyuv_15be.exit.i

.lr.ph60.i.i:                                     ; preds = %.thread.i
  %i.ev = sext i32 %i.da to i64
  %.idx62.i.i = shl nsw i64 %8, 2                 ; 4 uses
  %i.ew = icmp sgt i32 %i.cw, 0
  br i1 %i.ew, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.lr.ph60.i.i, %._crit_edge.i.loopexit.us.i
  %.04558.i.us.i = phi ptr [ %.lcssa344, %._crit_edge.i.loopexit.us.i ], [ %i.cv, %.lr.ph60.i.i ] ; 32 uses
  %.04657.i.us.i = phi ptr [ %i.uz, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
  %.04558.i.us.i356 = ptrtoaddr ptr %.04558.i.us.i to i64 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.04558.i.us.i, i64 %.idx62.i.i
  %i.ey = add i64 %.idx62.i.i, %.04558.i.us.i356
  %i.ez = add i64 %.04558.i.us.i356, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ez)
  %i.fa = xor i64 %.04558.i.us.i356, -1
  %i.fb = add i64 %umax, %i.fa                    ; 3 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fb, 28
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fe = add i64 %.idx62.i.i, %.04558.i.us.i356
  %i.ff = add i64 %.04558.i.us.i356, 4
  %i.fg = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.ff)
  %i.fh = xor i64 %.04558.i.us.i356, -1
  %i.fi = add i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = or i64 %i.fi, 3
  %i.fk = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fj
  %i.fl = lshr i64 %i.fi, 1
  %i.fm = and i64 %i.fl, 9223372036854775806
  %i.fn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 2
  %bound0 = icmp ult ptr %.04558.i.us.i, %i.fo
  %bound1 = icmp ult ptr %.04657.i.us.i, %i.fk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fb, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fp = and i64 %i.fd, 8
  %n.vec = and i64 %i.fd, 9223372036854775792     ; 5 uses
  %i.fq = shl i64 %n.vec, 2
  %i.fr = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 2 uses
  %i.fs = shl nuw i64 %n.vec, 1
  %i.ft = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fs ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fv, i64 4
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fw, i64 8
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.fx, i64 12
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fy, i64 16
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fz, i64 20
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.ga, i64 24
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.gb, i64 28
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.gc, i64 32
  %i.gd = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep366 = getelementptr i8, ptr %i.gd, i64 36
  %i.ge = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.ge, i64 40
  %i.gf = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.gf, i64 44
  %i.gg = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep369 = getelementptr i8, ptr %i.gg, i64 48
  %i.gh = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.gh, i64 52
  %i.gi = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep371 = getelementptr i8, ptr %i.gi, i64 56
  %i.gj = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep372 = getelementptr i8, ptr %i.gj, i64 60
  %i.gk = shl i64 %index, 1                       ; 16 uses
  %next.gep373 = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %i.gl = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.gl, i64 2
  %i.gm = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.gm, i64 4
  %i.gn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gn, i64 6
  %i.go = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.go, i64 8
  %i.gp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.gp, i64 10
  %i.gq = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.gq, i64 12
  %i.gr = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.gr, i64 14
  %i.gs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep381 = getelementptr i8, ptr %i.gs, i64 16
  %i.gt = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.gt, i64 18
  %i.gu = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.gu, i64 20
  %i.gv = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gv, i64 22
  %i.gw = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gw, i64 24
  %i.gx = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.gx, i64 26
  %i.gy = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.gy, i64 28
  %i.gz = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.gz, i64 30
  %i.ha = load i8, ptr %next.gep373, align 1, !alias.scope !163
  %i.hb = load i8, ptr %next.gep374, align 1, !alias.scope !163
  %i.hc = load i8, ptr %next.gep375, align 1, !alias.scope !163
  %i.hd = load i8, ptr %next.gep376, align 1, !alias.scope !163
  %i.he = load i8, ptr %next.gep377, align 1, !alias.scope !163
  %i.hf = load i8, ptr %next.gep378, align 1, !alias.scope !163
  %i.hg = load i8, ptr %next.gep379, align 1, !alias.scope !163
  %i.hh = load i8, ptr %next.gep380, align 1, !alias.scope !163
  %i.hi = load i8, ptr %next.gep381, align 1, !alias.scope !163
  %i.hj = load i8, ptr %next.gep382, align 1, !alias.scope !163
  %i.hk = load i8, ptr %next.gep383, align 1, !alias.scope !163
  %i.hl = load i8, ptr %next.gep384, align 1, !alias.scope !163
  %i.hm = load i8, ptr %next.gep385, align 1, !alias.scope !163
  %i.hn = load i8, ptr %next.gep386, align 1, !alias.scope !163
  %i.ho = load i8, ptr %next.gep387, align 1, !alias.scope !163
  %i.hp = load i8, ptr %next.gep388, align 1, !alias.scope !163
  %i.hq = insertelement <16 x i8> poison, i8 %i.ha, i64 0
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 1
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 2
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 3
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 4
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 5
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 6
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 7
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 8
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 9
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 10
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 11
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 12
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 13
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 14
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 15
  %i.ig = zext <16 x i8> %i.if to <16 x i32>      ; 2 uses
  %i.ih = shl nuw nsw <16 x i32> %i.ig, splat (i32 1)
  %i.ii = and <16 x i32> %i.ih, splat (i32 248)   ; 2 uses
  %i.ij = shl nuw nsw <16 x i32> %i.ig, splat (i32 6)
  %i.ik = getelementptr inbounds nuw i8, ptr %next.gep373, i64 1
  %i.il = getelementptr i8, ptr %i.gl, i64 3
  %i.im = getelementptr i8, ptr %i.gm, i64 5
  %i.in = getelementptr i8, ptr %i.gn, i64 7
  %i.io = getelementptr i8, ptr %i.go, i64 9
  %i.ip = getelementptr i8, ptr %i.gp, i64 11
  %i.iq = getelementptr i8, ptr %i.gq, i64 13
  %i.ir = getelementptr i8, ptr %i.gr, i64 15
  %i.is = getelementptr i8, ptr %i.gs, i64 17
  %i.it = getelementptr i8, ptr %i.gt, i64 19
  %i.iu = getelementptr i8, ptr %i.gu, i64 21
  %i.iv = getelementptr i8, ptr %i.gv, i64 23
  %i.iw = getelementptr i8, ptr %i.gw, i64 25
  %i.ix = getelementptr i8, ptr %i.gx, i64 27
  %i.iy = getelementptr i8, ptr %i.gy, i64 29
  %i.iz = getelementptr i8, ptr %i.gz, i64 31
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
  %i.jm = load i8, ptr %i.iw, align 1, !alias.scope !163
  %i.jn = load i8, ptr %i.ix, align 1, !alias.scope !163
  %i.jo = load i8, ptr %i.iy, align 1, !alias.scope !163
  %i.jp = load i8, ptr %i.iz, align 1, !alias.scope !163
  %i.jq = insertelement <16 x i8> poison, i8 %i.ja, i64 0
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 1
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 2
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 3
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 4
  %i.jv = insertelement <16 x i8> %i.ju, i8 %i.jf, i64 5
  %i.jw = insertelement <16 x i8> %i.jv, i8 %i.jg, i64 6
  %i.jx = insertelement <16 x i8> %i.jw, i8 %i.jh, i64 7
  %i.jy = insertelement <16 x i8> %i.jx, i8 %i.ji, i64 8
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 9
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 10
  %i.kb = insertelement <16 x i8> %i.ka, i8 %i.jl, i64 11
  %i.kc = insertelement <16 x i8> %i.kb, i8 %i.jm, i64 12
  %i.kd = insertelement <16 x i8> %i.kc, i8 %i.jn, i64 13
  %i.ke = insertelement <16 x i8> %i.kd, i8 %i.jo, i64 14
  %i.kf = insertelement <16 x i8> %i.ke, i8 %i.jp, i64 15
  %i.kg = zext <16 x i8> %i.kf to <16 x i32>      ; 2 uses
  %i.kh = lshr <16 x i32> %i.kg, splat (i32 2)
end_hunk_4
begin_hunk_5_@zrle_encode_tile15be:bb.a
  %i.pj = load i8, ptr %next.gep404, align 1, !alias.scope !163
  %i.pk = load i8, ptr %next.gep405, align 1, !alias.scope !163
  %i.pl = load i8, ptr %next.gep406, align 1, !alias.scope !163
  %i.pm = insertelement <8 x i8> poison, i8 %i.pe, i64 0
  %i.pn = insertelement <8 x i8> %i.pm, i8 %i.pf, i64 1
  %i.po = insertelement <8 x i8> %i.pn, i8 %i.pg, i64 2
  %i.pp = insertelement <8 x i8> %i.po, i8 %i.ph, i64 3
  %i.pq = insertelement <8 x i8> %i.pp, i8 %i.pi, i64 4
  %i.pr = insertelement <8 x i8> %i.pq, i8 %i.pj, i64 5
  %i.ps = insertelement <8 x i8> %i.pr, i8 %i.pk, i64 6
  %i.pt = insertelement <8 x i8> %i.ps, i8 %i.pl, i64 7
  %i.pu = zext <8 x i8> %i.pt to <8 x i32>        ; 2 uses
  %i.pv = shl nuw nsw <8 x i32> %i.pu, splat (i32 1)
  %i.pw = and <8 x i32> %i.pv, splat (i32 248)    ; 2 uses
  %i.px = shl nuw nsw <8 x i32> %i.pu, splat (i32 6)
  %i.py = getelementptr inbounds nuw i8, ptr %next.gep399, i64 1
  %i.pz = getelementptr i8, ptr %i.ox, i64 3
  %i.qa = getelementptr i8, ptr %i.oy, i64 5
  %i.qb = getelementptr i8, ptr %i.oz, i64 7
  %i.qc = getelementptr i8, ptr %i.pa, i64 9
  %i.qd = getelementptr i8, ptr %i.pb, i64 11
  %i.qe = getelementptr i8, ptr %i.pc, i64 13
  %i.qf = getelementptr i8, ptr %i.pd, i64 15
  %i.qg = load i8, ptr %i.py, align 1, !alias.scope !163
  %i.qh = load i8, ptr %i.pz, align 1, !alias.scope !163
  %i.qi = load i8, ptr %i.qa, align 1, !alias.scope !163
  %i.qj = load i8, ptr %i.qb, align 1, !alias.scope !163
  %i.qk = load i8, ptr %i.qc, align 1, !alias.scope !163
  %i.ql = load i8, ptr %i.qd, align 1, !alias.scope !163
  %i.qm = load i8, ptr %i.qe, align 1, !alias.scope !163
  %i.qn = load i8, ptr %i.qf, align 1, !alias.scope !163
  %i.qo = insertelement <8 x i8> poison, i8 %i.qg, i64 0
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 1
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 2
  %i.qr = insertelement <8 x i8> %i.qq, i8 %i.qj, i64 3
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qk, i64 4
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 5
  %i.qu = insertelement <8 x i8> %i.qt, i8 %i.qm, i64 6
  %i.qv = insertelement <8 x i8> %i.qu, i8 %i.qn, i64 7
  %i.qw = zext <8 x i8> %i.qv to <8 x i32>        ; 2 uses
  %i.qx = lshr <8 x i32> %i.qw, splat (i32 2)
  %i.qy = or disjoint <8 x i32> %i.qx, %i.px
  %i.qz = and <8 x i32> %i.qy, splat (i32 248)    ; 3 uses
  %i.ra = shl nuw nsw <8 x i32> %i.qw, splat (i32 3)
  %i.rb = and <8 x i32> %i.ra, splat (i32 248)    ; 2 uses
  %i.rc = shl nuw nsw <8 x i32> %i.qz, splat (i32 1)
  %i.rd = add nuw nsw <8 x i32> %i.rb, %i.pw
  %i.re = add nuw nsw <8 x i32> %i.rd, %i.rc
  %i.rf = lshr exact <8 x i32> %i.re, splat (i32 2)
  %i.rg = sub nsw <8 x i32> %i.rb, %i.qz
  %i.rh = sub nsw <8 x i32> %i.pw, %i.qz
  %i.ri = ashr exact <8 x i32> %i.rg, splat (i32 1)
  %i.rj = ashr exact <8 x i32> %i.rh, splat (i32 1)
  %i.rk = and <8 x i32> %i.rf, splat (i32 248)    ; 2 uses
  %i.rl = and <8 x i32> %i.ri, splat (i32 -8)     ; 2 uses
  %i.rm = and <8 x i32> %i.rj, splat (i32 -8)     ; 2 uses
  %i.rn = icmp eq <8 x i32> %i.rk, zeroinitializer
  %i.ro = icmp eq <8 x i32> %i.rl, splat (i32 -128)
  %i.rp = icmp eq <8 x i32> %i.rm, splat (i32 -128)
  %i.rq = trunc <8 x i32> %i.rm to <8 x i8>
  %i.rr = select <8 x i1> %i.rp, <8 x i8> splat (i8 -120), <8 x i8> %i.rq ; 8 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %next.gep391, i64 2
  %i.rt = getelementptr i8, ptr %i.op, i64 6
  %i.ru = getelementptr i8, ptr %i.oq, i64 10
  %i.rv = getelementptr i8, ptr %i.or, i64 14
  %i.rw = getelementptr i8, ptr %i.os, i64 18
  %i.rx = getelementptr i8, ptr %i.ot, i64 22
  %i.ry = getelementptr i8, ptr %i.ou, i64 26
  %i.rz = getelementptr i8, ptr %i.ov, i64 30
  %i.sa = extractelement <8 x i8> %i.rr, i64 0
  store i8 %i.sa, ptr %i.rs, align 1, !alias.scope !164, !noalias !163
  %i.sb = extractelement <8 x i8> %i.rr, i64 1
  store i8 %i.sb, ptr %i.rt, align 1, !alias.scope !164, !noalias !163
  %i.sc = extractelement <8 x i8> %i.rr, i64 2
  store i8 %i.sc, ptr %i.ru, align 1, !alias.scope !164, !noalias !163
  %i.sd = extractelement <8 x i8> %i.rr, i64 3
  store i8 %i.sd, ptr %i.rv, align 1, !alias.scope !164, !noalias !163
  %i.se = extractelement <8 x i8> %i.rr, i64 4
  store i8 %i.se, ptr %i.rw, align 1, !alias.scope !164, !noalias !163
  %i.sf = extractelement <8 x i8> %i.rr, i64 5
  store i8 %i.sf, ptr %i.rx, align 1, !alias.scope !164, !noalias !163
  %i.sg = extractelement <8 x i8> %i.rr, i64 6
  store i8 %i.sg, ptr %i.ry, align 1, !alias.scope !164, !noalias !163
  %i.sh = extractelement <8 x i8> %i.rr, i64 7
  store i8 %i.sh, ptr %i.rz, align 1, !alias.scope !164, !noalias !163
  %i.si = trunc nuw <8 x i32> %i.rk to <8 x i8>
  %i.sj = xor <8 x i8> %i.si, splat (i8 -128)
  %i.sk = select <8 x i1> %i.rn, <8 x i8> splat (i8 -120), <8 x i8> %i.sj ; 8 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %next.gep391, i64 1
  %i.sm = getelementptr i8, ptr %i.op, i64 5
  %i.sn = getelementptr i8, ptr %i.oq, i64 9
  %i.so = getelementptr i8, ptr %i.or, i64 13
  %i.sp = getelementptr i8, ptr %i.os, i64 17
  %i.sq = getelementptr i8, ptr %i.ot, i64 21
  %i.sr = getelementptr i8, ptr %i.ou, i64 25
  %i.ss = getelementptr i8, ptr %i.ov, i64 29
  %i.st = extractelement <8 x i8> %i.sk, i64 0
  store i8 %i.st, ptr %i.sl, align 1, !alias.scope !164, !noalias !163
  %i.su = extractelement <8 x i8> %i.sk, i64 1
  store i8 %i.su, ptr %i.sm, align 1, !alias.scope !164, !noalias !163
  %i.sv = extractelement <8 x i8> %i.sk, i64 2
  store i8 %i.sv, ptr %i.sn, align 1, !alias.scope !164, !noalias !163
  %i.sw = extractelement <8 x i8> %i.sk, i64 3
  store i8 %i.sw, ptr %i.so, align 1, !alias.scope !164, !noalias !163
  %i.sx = extractelement <8 x i8> %i.sk, i64 4
  store i8 %i.sx, ptr %i.sp, align 1, !alias.scope !164, !noalias !163
  %i.sy = extractelement <8 x i8> %i.sk, i64 5
  store i8 %i.sy, ptr %i.sq, align 1, !alias.scope !164, !noalias !163
  %i.sz = extractelement <8 x i8> %i.sk, i64 6
  store i8 %i.sz, ptr %i.sr, align 1, !alias.scope !164, !noalias !163
  %i.ta = extractelement <8 x i8> %i.sk, i64 7
  store i8 %i.ta, ptr %i.ss, align 1, !alias.scope !164, !noalias !163
  %i.tb = trunc <8 x i32> %i.rl to <8 x i8>
  %i.tc = select <8 x i1> %i.ro, <8 x i8> splat (i8 -120), <8 x i8> %i.tb ; 8 uses
  %i.td = extractelement <8 x i8> %i.tc, i64 0
  store i8 %i.td, ptr %next.gep391, align 1, !alias.scope !164, !noalias !163
  %i.te = extractelement <8 x i8> %i.tc, i64 1
  store i8 %i.te, ptr %next.gep392, align 1, !alias.scope !164, !noalias !163
  %i.tf = extractelement <8 x i8> %i.tc, i64 2
  store i8 %i.tf, ptr %next.gep393, align 1, !alias.scope !164, !noalias !163
  %i.tg = extractelement <8 x i8> %i.tc, i64 3
  store i8 %i.tg, ptr %next.gep394, align 1, !alias.scope !164, !noalias !163
  %i.th = extractelement <8 x i8> %i.tc, i64 4
  store i8 %i.th, ptr %next.gep395, align 1, !alias.scope !164, !noalias !163
  %i.ti = extractelement <8 x i8> %i.tc, i64 5
  store i8 %i.ti, ptr %next.gep396, align 1, !alias.scope !164, !noalias !163
  %i.tj = extractelement <8 x i8> %i.tc, i64 6
  store i8 %i.tj, ptr %next.gep397, align 1, !alias.scope !164, !noalias !163
  %i.tk = extractelement <8 x i8> %i.tc, i64 7
  store i8 %i.tk, ptr %next.gep398, align 1, !alias.scope !164, !noalias !163
  %index.next407 = add nuw i64 %index390, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next407, %n.vec389
  br i1 %i.tl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n408 = icmp eq i64 %i.fd, %n.vec389
  br i1 %cmp.n408, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.155.i.us.i.ph = phi ptr [ %.04558.i.us.i, %iter.check ], [ %.04558.i.us.i, %vector.memcheck ], [ %i.fr, %vec.epilog.iter.check ], [ %i.ol, %vec.epilog.middle.block ]
  %.14754.i.us.i.ph = phi ptr [ %.04657.i.us.i, %iter.check ], [ %.04657.i.us.i, %vector.memcheck ], [ %i.ft, %vec.epilog.iter.check ], [ %i.on, %vec.epilog.middle.block ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %.155.i.us.i = phi ptr [ %i.uw, %.lr.ph.i.us.i ], [ %.155.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 4 uses
  %.14754.i.us.i = phi ptr [ %i.ux, %.lr.ph.i.us.i ], [ %.14754.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %i.tm = load i8, ptr %.14754.i.us.i, align 1
  %i.tn = zext i8 %i.tm to i32                    ; 2 uses
  %i.to = shl nuw nsw i32 %i.tn, 1
  %i.tp = and i32 %i.to, 248                      ; 2 uses
  %i.tq = shl nuw nsw i32 %i.tn, 6
  %i.tr = getelementptr inbounds nuw i8, ptr %.14754.i.us.i, i64 1
  %i.ts = load i8, ptr %i.tr, align 1
  %i.tt = zext i8 %i.ts to i32                    ; 2 uses
  %i.tu = lshr i32 %i.tt, 2
  %i.tv = or disjoint i32 %i.tu, %i.tq
  %i.tw = and i32 %i.tv, 248                      ; 3 uses
  %i.tx = shl nuw nsw i32 %i.tt, 3
  %i.ty = and i32 %i.tx, 248                      ; 2 uses
  %i.tz = shl nuw nsw i32 %i.tw, 1
  %i.ua = add nuw nsw i32 %i.ty, %i.tp
  %i.ub = add nuw nsw i32 %i.ua, %i.tz
  %i.uc = lshr exact i32 %i.ub, 2
  %i.ud = sub nsw i32 %i.ty, %i.tw
  %i.ue = sub nsw i32 %i.tp, %i.tw
  %i.uf = ashr exact i32 %i.ud, 1
  %i.ug = ashr exact i32 %i.ue, 1
  %i.uh = and i32 %i.uc, 248                      ; 2 uses
  %i.ui = and i32 %i.uf, -8                       ; 2 uses
  %i.uj = and i32 %i.ug, -8                       ; 2 uses
  %i.uk = icmp eq i32 %i.uh, 0
  %i.ul = icmp eq i32 %i.ui, -128
  %i.um = icmp eq i32 %i.uj, -128
  %i.un = trunc i32 %i.uj to i8
  %i.uo = select i1 %i.um, i8 -120, i8 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 2
  store i8 %i.uo, ptr %i.up, align 1
  %i.uq = trunc nuw i32 %i.uh to i8
  %i.ur = xor i8 %i.uq, -128
  %i.us = select i1 %i.uk, i8 -120, i8 %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 1
  store i8 %i.us, ptr %i.ut, align 1
  %i.uu = trunc i32 %i.ui to i8
  %i.uv = select i1 %i.ul, i8 -120, i8 %i.uu
  store i8 %i.uv, ptr %.155.i.us.i, align 1
  %i.uw = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 4 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.14754.i.us.i, i64 2 ; 2 uses
  %i.uy = icmp ult ptr %i.uw, %i.ex
  br i1 %i.uy, label %.lr.ph.i.us.i, label %._crit_edge.i.loopexit.us.i, !llvm.loop !147

._crit_edge.i.loopexit.us.i:                      ; preds = %.lr.ph.i.us.i, %vec.epilog.middle.block, %middle.block
  %.lcssa344 = phi ptr [ %i.ol, %vec.epilog.middle.block ], [ %i.fr, %middle.block ], [ %i.uw, %.lr.ph.i.us.i ] ; 2 uses
  %.lcssa343 = phi ptr [ %i.on, %vec.epilog.middle.block ], [ %i.ft, %middle.block ], [ %i.ux, %.lr.ph.i.us.i ]
  %i.uz = getelementptr inbounds [2 x i8], ptr %.lcssa343, i64 %i.ev
  %i.va = icmp ult ptr %.lcssa344, %i.de
  br i1 %i.va, label %iter.check, label %zywrle_rgbyuv_15be.exit.i, !llvm.loop !148

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_15be.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef range(i32 1, 256) %5)
  %i.vb = icmp slt i32 %i.cw, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_15be.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_15be.exit.i ], [ %i.yt, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_15be.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.vc = shl i32 2, %.0243417.i                  ; 3 uses
  %i.vd = ashr exact i32 %i.vc, 1                 ; 2 uses
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ve ; 3 uses
  %i.vg = mul i32 %i.vd, %i.cw
  %i.vh = sext i32 %i.vg to i64                   ; 2 uses
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.vh ; 2 uses
  %i.vj = getelementptr inbounds i8, ptr %i.vi, i64 %.idx432.i
  br i1 %i.eu, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vk = sext i32 %i.vc to i64                   ; 4 uses
  %i.vl = add i32 %i.vc, -1
  %i.vm = mul i32 %i.vl, %i.cw
  %i.vn = sext i32 %i.vm to i64                   ; 4 uses
  br i1 %i.vb, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wg, %._crit_edge355.i.loopexit.us ], [ %i.vi, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.wd, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vo = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.us, %.lr.ph354.i.preheader.us
  %.1352.i.us = phi ptr [ %i.we, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.wd, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vq = load i8, ptr %i.vp, align 1
  %i.vr = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vs = load i8, ptr %i.vr, align 1             ; 2 uses
  %i.vt = load i8, ptr %.1352.i.us, align 1
  %i.vu = lshr i8 %i.vq, 1
  %i.vv = and i8 %i.vu, 124
  %i.vw = lshr i8 %i.vs, 6
  %i.vx = or disjoint i8 %i.vw, %i.vv
  store i8 %i.vx, ptr %.2247350.i.us, align 1
  %i.vy = lshr i8 %i.vt, 3
  %i.vz = shl i8 %i.vs, 2
  %i.wa = and i8 %i.vz, -32
  %i.wb = or disjoint i8 %i.wa, %i.vy
  %i.wc = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.wb, ptr %i.wc, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.we = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vk ; 3 uses
  %i.wf = icmp ult ptr %i.we, %i.vo
  br i1 %i.wf, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !149

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.vn ; 2 uses
  %i.wh = icmp ult ptr %i.wg, %i.vj
  br i1 %i.wh, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !150

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vh ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.xc, %._crit_edge372.i.loopexit.us ], [ %i.wi, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wz, %._crit_edge372.i.loopexit.us ], [ %i.wd, %._crit_edge364.i ]
  %i.wk = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.us, %.lr.ph371.i.preheader.us
  %.3369.i.us = phi ptr [ %i.xa, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wz, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wo = load i8, ptr %i.wn, align 1             ; 2 uses
  %i.wp = load i8, ptr %.3369.i.us, align 1
  %i.wq = lshr i8 %i.wm, 1
  %i.wr = and i8 %i.wq, 124
  %i.ws = lshr i8 %i.wo, 6
  %i.wt = or disjoint i8 %i.ws, %i.wr
  store i8 %i.wt, ptr %.5250367.i.us, align 1
  %i.wu = lshr i8 %i.wp, 3
  %i.wv = shl i8 %i.wo, 2
  %i.ww = and i8 %i.wv, -32
  %i.wx = or disjoint i8 %i.ww, %i.wu
  %i.wy = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wx, ptr %i.wy, align 1
  %i.wz = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vk ; 3 uses
  %i.xb = icmp ult ptr %i.xa, %i.wk
  br i1 %i.xb, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !151

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.vn ; 2 uses
  %i.xd = icmp ult ptr %i.xc, %i.wj
  br i1 %i.xd, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !152

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xx, %._crit_edge389.i.loopexit.us ], [ %i.vf, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xu, %._crit_edge389.i.loopexit.us ], [ %i.wz, %._crit_edge381.i ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.us, %.lr.ph388.i.preheader.us
  %.5386.i.us = phi ptr [ %i.xv, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xu, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xj = load i8, ptr %i.xi, align 1             ; 2 uses
  %i.xk = load i8, ptr %.5386.i.us, align 1
  %i.xl = lshr i8 %i.xh, 1
  %i.xm = and i8 %i.xl, 124
  %i.xn = lshr i8 %i.xj, 6
  %i.xo = or disjoint i8 %i.xn, %i.xm
  store i8 %i.xo, ptr %.8253384.i.us, align 1
  %i.xp = lshr i8 %i.xk, 3
  %i.xq = shl i8 %i.xj, 2
  %i.xr = and i8 %i.xq, -32
  %i.xs = or disjoint i8 %i.xr, %i.xp
  %i.xt = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xs, ptr %i.xt, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xv = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vk ; 3 uses
  %i.xw = icmp ult ptr %i.xv, %i.xf
  br i1 %i.xw, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !153

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.xv, i64 %i.vn ; 2 uses
  %i.xy = icmp ult ptr %i.xx, %i.xe
  br i1 %i.xy, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !154

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xu, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.cu
  %brmerge = or i1 %.not, %i.vb
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yr, %._crit_edge406.i.loopexit.us ], [ %i.cv, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yo, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xz = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us, %.lr.ph413.i.us
  %.7403.i.us = phi ptr [ %i.yp, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yo, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.yd = load i8, ptr %i.yc, align 1             ; 2 uses
  %i.ye = load i8, ptr %.7403.i.us, align 1
  %i.yf = lshr i8 %i.yb, 1
  %i.yg = and i8 %i.yf, 124
  %i.yh = lshr i8 %i.yd, 6
  %i.yi = or disjoint i8 %i.yh, %i.yg
  store i8 %i.yi, ptr %.11256401.i.us, align 1
  %i.yj = lshr i8 %i.ye, 3
  %i.yk = shl i8 %i.yd, 2
  %i.yl = and i8 %i.yk, -32
  %i.ym = or disjoint i8 %i.yl, %i.yj
  %i.yn = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.ym, ptr %i.yn, align 1
  %i.yo = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yp = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vk ; 3 uses
  %i.yq = icmp ult ptr %i.yp, %i.xz
  br i1 %i.yq, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !155

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.vn ; 2 uses
  %i.ys = icmp ult ptr %i.yr, %i.de
  br i1 %i.ys, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !156

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yo, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.yt = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.yt, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !157

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.k, 2                ; 3 uses
  %i.yu = getelementptr inbounds i8, ptr %i.cv, i64 %.idx440.i
  %i.yv = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yv, label %.lr.ph423.i.preheader, label %zywrle_analyze_15be.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %i.yw = add i64 %.idx432.i, %i.a
  %i.yx = add i64 %i.yw, 86852
  %i.yy = add i64 %.idx440.i, %i.a
  %i.yz = add i64 %i.yy, 86848
  %i.za = tail call i64 @llvm.umax.i64(i64 %i.yx, i64 %i.yz)
  %i.zb = add i64 %i.za, -86849
  %i.zc = add i64 %.idx432.i, %i.a
  %i.zd = sub i64 %i.zb, %i.zc                    ; 4 uses
  %i.ze = lshr i64 %i.zd, 2
  %i.zf = add nuw nsw i64 %i.ze, 1                ; 2 uses
  %min.iters.check416 = icmp ult i64 %i.zd, 240
  br i1 %min.iters.check416, label %.lr.ph423.i.preheader442, label %vector.memcheck417

vector.memcheck417:                               ; preds = %.lr.ph423.i.preheader
  %i.zg = lshr i64 %i.zd, 1
  %i.zh = and i64 %i.zg, 9223372036854775806
  %i.zi = getelementptr i8, ptr %.13258.i, i64 %i.zh
  %i.zj = getelementptr i8, ptr %i.zi, i64 2
  %i.zk = and i64 %i.zd, -4
  %i.zl = getelementptr i8, ptr %0, i64 %i.zk
  %i.zm = getelementptr i8, ptr %i.zl, i64 %.idx432.i
  %i.zn = getelementptr i8, ptr %i.zm, i64 86850
  %bound0418 = icmp ult ptr %.13258.i, %i.zn
  %bound1419 = icmp ult ptr %i.de, %i.zj
  %found.conflict420 = and i1 %bound0418, %bound1419
  br i1 %found.conflict420, label %.lr.ph423.i.preheader442, label %vector.ph421

vector.ph421:                                     ; preds = %vector.memcheck417
  %i.zo = and i64 %i.zf, 7                        ; 2 uses
  %i.zp = icmp eq i64 %i.zo, 0
  %i.zq = select i1 %i.zp, i64 8, i64 %i.zo
  %n.vec422 = sub nsw i64 %i.zf, %i.zq            ; 3 uses
  %i.zr = shl i64 %n.vec422, 2
  %i.zs = getelementptr i8, ptr %i.de, i64 %i.zr
  %i.zt = shl i64 %n.vec422, 1
  %i.zu = getelementptr i8, ptr %.13258.i, i64 %i.zt
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph421
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next430, %vector.body423 ] ; 3 uses
  %i.zv = shl i64 %index424, 2                    ; 2 uses
  %next.gep425 = getelementptr i8, ptr %i.de, i64 %i.zv
  %i.zw = getelementptr i8, ptr %i.de, i64 %i.zv
  %next.gep426 = getelementptr i8, ptr %i.zw, i64 16
  %i.zx = shl i64 %index424, 1
  %next.gep427 = getelementptr i8, ptr %.13258.i, i64 %i.zx ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep425, align 2, !alias.scope !165
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec428 = load <8 x i16>, ptr %next.gep426, align 2, !alias.scope !165
  %strided.vec429 = shufflevector <8 x i16> %wide.vec428, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zy = getelementptr i8, ptr %next.gep427, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep427, align 2, !alias.scope !166, !noalias !165
  store <4 x i16> %strided.vec429, ptr %i.zy, align 2, !alias.scope !166, !noalias !165
  %index.next430 = add nuw i64 %index424, 8       ; 2 uses
  %i.zz = icmp eq i64 %index.next430, %n.vec422
  br i1 %i.zz, label %.lr.ph423.i.preheader442, label %vector.body423, !llvm.loop !161

.lr.ph423.i.preheader442:                         ; preds = %vector.body423, %vector.memcheck417, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.de, %vector.memcheck417 ], [ %i.de, %.lr.ph423.i.preheader ], [ %i.zs, %vector.body423 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck417 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zu, %vector.body423 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader442, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.aac, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader442 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.aab, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader442 ] ; 2 uses
  %i.aaa = load i16, ptr %.8242420.i, align 2
  store i16 %i.aaa, ptr %.14259419.i, align 2
  %i.aab = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.aac = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.aad = icmp ult ptr %i.aac, %i.yu
  br i1 %i.aad, label %.lr.ph423.i, label %zywrle_analyze_15be.exit, !llvm.loop !162

zywrle_analyze_15be.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.aae = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile15be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.aae)
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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
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
end_hunk_5
begin_hunk_6_@zrle_encode_tile15le:bb.a

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !10
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
  %6 = sext i32 %i.da to i64
  %.idx427.i = shl nuw nsw i64 %6, 1
  %i.dl = icmp sgt i32 %i.da, 0
  br i1 %i.dl, label %.lr.ph.i.preheader.us, label %.loopexit313.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph321.i, %._crit_edge.i.loopexit.us
  %.0226319.i.us = phi ptr [ %i.dr, %._crit_edge.i.loopexit.us ], [ %i.dg, %.lr.ph321.i ] ; 2 uses
  %.0234318.i.us = phi ptr [ %i.dp, %._crit_edge.i.loopexit.us ], [ %i.de, %.lr.ph321.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0226319.i.us, i64 %.idx427.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.1227316.i.us = phi ptr [ %i.do, %.lr.ph.i.us ], [ %.0226319.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.1235315.i.us = phi ptr [ %i.dp, %.lr.ph.i.us ], [ %.0234318.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.dn = load i16, ptr %.1227316.i.us, align 2
  store i16 %i.dn, ptr %.1235315.i.us, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %.1227316.i.us, i64 2 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1235315.i.us, i64 4 ; 3 uses
  %i.dq = icmp ult ptr %i.do, %i.dm
  br i1 %i.dq, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !175

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.df ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dj
  br i1 %i.ds, label %.lr.ph.i.preheader.us, label %.loopexit313.i, !llvm.loop !176

.loopexit313.i:                                   ; preds = %._crit_edge.i.loopexit.us, %.lr.ph321.i, %bb.y, %bb.x
  %.2236.i = phi ptr [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.de, %.lr.ph321.i ], [ %i.dp, %._crit_edge.i.loopexit.us ] ; 2 uses
  %.not310.i = icmp eq i32 %4, %i.cx
  br i1 %.not310.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %.loopexit313.i
  %i.dt = mul i32 %i.cx, %3
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.du ; 2 uses
  %i.dw = mul i32 %i.db, %3                       ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %.idx428.i = shl nsw i64 %i.dx, 1               ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %.idx428.i
  %i.dz = icmp sgt i32 %i.dw, 0
  br i1 %i.dz, label %.lr.ph334.i, label %.thread.i

.lr.ph334.i:                                      ; preds = %bb.z
  %7 = sext i32 %i.cw to i64                      ; 3 uses
  %i.ea = sext i32 %i.da to i64                   ; 2 uses
  %.idx429.i = shl nuw nsw i64 %7, 1
  %i.eb = icmp sgt i32 %i.cw, 0
  br i1 %i.eb, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i

.lr.ph327.i.preheader.us:                         ; preds = %.lr.ph334.i, %._crit_edge328.i.loopexit.us
  %.3229332.i.us = phi ptr [ %i.eh, %._crit_edge328.i.loopexit.us ], [ %i.dv, %.lr.ph334.i ] ; 2 uses
  %.3237331.i.us = phi ptr [ %i.ef, %._crit_edge328.i.loopexit.us ], [ %.2236.i, %.lr.ph334.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.3229332.i.us, i64 %.idx429.i
  br label %.lr.ph327.i.us

.lr.ph327.i.us:                                   ; preds = %.lr.ph327.i.us, %.lr.ph327.i.preheader.us
  %.4230325.i.us = phi ptr [ %i.ee, %.lr.ph327.i.us ], [ %.3229332.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %.4238324.i.us = phi ptr [ %i.ef, %.lr.ph327.i.us ], [ %.3237331.i.us, %.lr.ph327.i.preheader.us ] ; 2 uses
  %i.ed = load i16, ptr %.4230325.i.us, align 2
  store i16 %i.ed, ptr %.4238324.i.us, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %.4230325.i.us, i64 2 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.4238324.i.us, i64 4 ; 3 uses
  %i.eg = icmp ult ptr %i.ee, %i.ec
  br i1 %i.eg, label %.lr.ph327.i.us, label %._crit_edge328.i.loopexit.us, !llvm.loop !177

._crit_edge328.i.loopexit.us:                     ; preds = %.lr.ph327.i.us
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.ea ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.dy
  br i1 %i.ei, label %.lr.ph327.i.preheader.us, label %._crit_edge335.i, !llvm.loop !178

._crit_edge335.i:                                 ; preds = %._crit_edge328.i.loopexit.us, %.lr.ph334.i
  %.us-phi173 = phi ptr [ %.2236.i, %.lr.ph334.i ], [ %i.ef, %._crit_edge328.i.loopexit.us ]
  br i1 %.not311.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge335.i
  %i.ej = getelementptr inbounds [2 x i8], ptr %2, i64 %7
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.du ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx428.i
  %.idx431.i = shl nuw nsw i64 %i.ea, 1
  %i.em = icmp sgt i32 %i.da, 0
  br i1 %i.em, label %.lr.ph341.i.preheader.us, label %.thread.i

.lr.ph341.i.preheader.us:                         ; preds = %bb.aa, %._crit_edge342.i.loopexit.us
  %.6232346.i.us = phi ptr [ %i.es, %._crit_edge342.i.loopexit.us ], [ %i.ek, %bb.aa ] ; 2 uses
  %.6240345.i.us = phi ptr [ %i.eq, %._crit_edge342.i.loopexit.us ], [ %.us-phi173, %bb.aa ]
  %i.en = getelementptr inbounds nuw i8, ptr %.6232346.i.us, i64 %.idx431.i
  br label %.lr.ph341.i.us

.lr.ph341.i.us:                                   ; preds = %.lr.ph341.i.us, %.lr.ph341.i.preheader.us
  %.7233339.i.us = phi ptr [ %i.ep, %.lr.ph341.i.us ], [ %.6232346.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %.7241338.i.us = phi ptr [ %i.eq, %.lr.ph341.i.us ], [ %.6240345.i.us, %.lr.ph341.i.preheader.us ] ; 2 uses
  %i.eo = load i16, ptr %.7233339.i.us, align 2
  store i16 %i.eo, ptr %.7241338.i.us, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %.7233339.i.us, i64 2 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.7241338.i.us, i64 4 ; 2 uses
  %i.er = icmp ult ptr %i.ep, %i.en
  br i1 %i.er, label %.lr.ph341.i.us, label %._crit_edge342.i.loopexit.us, !llvm.loop !179

._crit_edge342.i.loopexit.us:                     ; preds = %.lr.ph341.i.us
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %7 ; 2 uses
  %i.et = icmp ult ptr %i.es, %i.el
  br i1 %i.et, label %.lr.ph341.i.preheader.us, label %.thread.i, !llvm.loop !180

.thread.i:                                        ; preds = %._crit_edge342.i.loopexit.us, %bb.aa, %bb.z, %._crit_edge335.i, %.loopexit313.i
  %i.eu = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %8 = sext i32 %i.cw to i64                      ; 2 uses
  br i1 %i.eu, label %.lr.ph60.i.i, label %.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge

.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge:    ; preds = %.thread.i
  %.pre = shl nsw i64 %8, 2
  br label %zywrle_rgbyuv_15le.exit.i

.lr.ph60.i.i:                                     ; preds = %.thread.i
  %i.ev = sext i32 %i.da to i64
  %.idx62.i.i = shl nsw i64 %8, 2                 ; 4 uses
  %i.ew = icmp sgt i32 %i.cw, 0
  br i1 %i.ew, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.lr.ph60.i.i, %._crit_edge.i.loopexit.us.i
  %.04558.i.us.i = phi ptr [ %.lcssa344, %._crit_edge.i.loopexit.us.i ], [ %i.cv, %.lr.ph60.i.i ] ; 32 uses
  %.04657.i.us.i = phi ptr [ %i.uz, %._crit_edge.i.loopexit.us.i ], [ %2, %.lr.ph60.i.i ] ; 30 uses
  %.04558.i.us.i356 = ptrtoaddr ptr %.04558.i.us.i to i64 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.04558.i.us.i, i64 %.idx62.i.i
  %i.ey = add i64 %.idx62.i.i, %.04558.i.us.i356
  %i.ez = add i64 %.04558.i.us.i356, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ez)
  %i.fa = xor i64 %.04558.i.us.i356, -1
  %i.fb = add i64 %umax, %i.fa                    ; 3 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fb, 28
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fe = add i64 %.idx62.i.i, %.04558.i.us.i356
  %i.ff = add i64 %.04558.i.us.i356, 4
  %i.fg = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.ff)
  %i.fh = xor i64 %.04558.i.us.i356, -1
  %i.fi = add i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = or i64 %i.fi, 3
  %i.fk = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fj
  %i.fl = lshr i64 %i.fi, 1
  %i.fm = and i64 %i.fl, 9223372036854775806
  %i.fn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 2
  %bound0 = icmp ult ptr %.04558.i.us.i, %i.fo
  %bound1 = icmp ult ptr %.04657.i.us.i, %i.fk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check357 = icmp ult i64 %i.fb, 60
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fp = and i64 %i.fd, 8
  %n.vec = and i64 %i.fd, 9223372036854775792     ; 5 uses
  %i.fq = shl i64 %n.vec, 2
  %i.fr = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fq ; 2 uses
  %i.fs = shl nuw i64 %n.vec, 1
  %i.ft = getelementptr i8, ptr %.04657.i.us.i, i64 %i.fs ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %i.fv = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.fv, i64 4
  %i.fw = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep359 = getelementptr i8, ptr %i.fw, i64 8
  %i.fx = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.fx, i64 12
  %i.fy = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep361 = getelementptr i8, ptr %i.fy, i64 16
  %i.fz = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.fz, i64 20
  %i.ga = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.ga, i64 24
  %i.gb = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.gb, i64 28
  %i.gc = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep365 = getelementptr i8, ptr %i.gc, i64 32
  %i.gd = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep366 = getelementptr i8, ptr %i.gd, i64 36
  %i.ge = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.ge, i64 40
  %i.gf = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.gf, i64 44
  %i.gg = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep369 = getelementptr i8, ptr %i.gg, i64 48
  %i.gh = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.gh, i64 52
  %i.gi = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep371 = getelementptr i8, ptr %i.gi, i64 56
  %i.gj = getelementptr i8, ptr %.04558.i.us.i, i64 %i.fu ; 3 uses
  %next.gep372 = getelementptr i8, ptr %i.gj, i64 60
  %i.gk = shl i64 %index, 1                       ; 16 uses
  %next.gep373 = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %i.gl = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.gl, i64 2
  %i.gm = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.gm, i64 4
  %i.gn = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gn, i64 6
  %i.go = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.go, i64 8
  %i.gp = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.gp, i64 10
  %i.gq = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.gq, i64 12
  %i.gr = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.gr, i64 14
  %i.gs = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep381 = getelementptr i8, ptr %i.gs, i64 16
  %i.gt = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.gt, i64 18
  %i.gu = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.gu, i64 20
  %i.gv = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gv, i64 22
  %i.gw = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.gw, i64 24
  %i.gx = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.gx, i64 26
  %i.gy = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.gy, i64 28
  %i.gz = getelementptr i8, ptr %.04657.i.us.i, i64 %i.gk ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.gz, i64 30
  %i.ha = getelementptr inbounds nuw i8, ptr %next.gep373, i64 1
  %i.hb = getelementptr i8, ptr %i.gl, i64 3
  %i.hc = getelementptr i8, ptr %i.gm, i64 5
  %i.hd = getelementptr i8, ptr %i.gn, i64 7
  %i.he = getelementptr i8, ptr %i.go, i64 9
  %i.hf = getelementptr i8, ptr %i.gp, i64 11
  %i.hg = getelementptr i8, ptr %i.gq, i64 13
  %i.hh = getelementptr i8, ptr %i.gr, i64 15
  %i.hi = getelementptr i8, ptr %i.gs, i64 17
  %i.hj = getelementptr i8, ptr %i.gt, i64 19
  %i.hk = getelementptr i8, ptr %i.gu, i64 21
  %i.hl = getelementptr i8, ptr %i.gv, i64 23
  %i.hm = getelementptr i8, ptr %i.gw, i64 25
  %i.hn = getelementptr i8, ptr %i.gx, i64 27
  %i.ho = getelementptr i8, ptr %i.gy, i64 29
  %i.hp = getelementptr i8, ptr %i.gz, i64 31
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
  %i.ic = load i8, ptr %i.hm, align 1, !alias.scope !202
  %i.id = load i8, ptr %i.hn, align 1, !alias.scope !202
  %i.ie = load i8, ptr %i.ho, align 1, !alias.scope !202
  %i.if = load i8, ptr %i.hp, align 1, !alias.scope !202
  %i.ig = insertelement <16 x i8> poison, i8 %i.hq, i64 0
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 1
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 2
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 3
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 4
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 5
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 6
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 7
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 8
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 9
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 10
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 11
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 12
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 13
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 14
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 15
  %i.iw = zext <16 x i8> %i.iv to <16 x i32>      ; 2 uses
  %i.ix = shl nuw nsw <16 x i32> %i.iw, splat (i32 1)
  %i.iy = and <16 x i32> %i.ix, splat (i32 248)   ; 2 uses
  %i.iz = shl nuw nsw <16 x i32> %i.iw, splat (i32 6)
  %i.ja = load i8, ptr %next.gep373, align 1, !alias.scope !202
  %i.jb = load i8, ptr %next.gep374, align 1, !alias.scope !202
  %i.jc = load i8, ptr %next.gep375, align 1, !alias.scope !202
  %i.jd = load i8, ptr %next.gep376, align 1, !alias.scope !202
  %i.je = load i8, ptr %next.gep377, align 1, !alias.scope !202
  %i.jf = load i8, ptr %next.gep378, align 1, !alias.scope !202
  %i.jg = load i8, ptr %next.gep379, align 1, !alias.scope !202
  %i.jh = load i8, ptr %next.gep380, align 1, !alias.scope !202
  %i.ji = load i8, ptr %next.gep381, align 1, !alias.scope !202
  %i.jj = load i8, ptr %next.gep382, align 1, !alias.scope !202
  %i.jk = load i8, ptr %next.gep383, align 1, !alias.scope !202
  %i.jl = load i8, ptr %next.gep384, align 1, !alias.scope !202
  %i.jm = load i8, ptr %next.gep385, align 1, !alias.scope !202
  %i.jn = load i8, ptr %next.gep386, align 1, !alias.scope !202
  %i.jo = load i8, ptr %next.gep387, align 1, !alias.scope !202
  %i.jp = load i8, ptr %next.gep388, align 1, !alias.scope !202
  %i.jq = insertelement <16 x i8> poison, i8 %i.ja, i64 0
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 1
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 2
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 3
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 4
  %i.jv = insertelement <16 x i8> %i.ju, i8 %i.jf, i64 5
  %i.jw = insertelement <16 x i8> %i.jv, i8 %i.jg, i64 6
  %i.jx = insertelement <16 x i8> %i.jw, i8 %i.jh, i64 7
  %i.jy = insertelement <16 x i8> %i.jx, i8 %i.ji, i64 8
  %i.jz = insertelement <16 x i8> %i.jy, i8 %i.jj, i64 9
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 10
  %i.kb = insertelement <16 x i8> %i.ka, i8 %i.jl, i64 11
  %i.kc = insertelement <16 x i8> %i.kb, i8 %i.jm, i64 12
  %i.kd = insertelement <16 x i8> %i.kc, i8 %i.jn, i64 13
  %i.ke = insertelement <16 x i8> %i.kd, i8 %i.jo, i64 14
  %i.kf = insertelement <16 x i8> %i.ke, i8 %i.jp, i64 15
  %i.kg = zext <16 x i8> %i.kf to <16 x i32>      ; 2 uses
  %i.kh = lshr <16 x i32> %i.kg, splat (i32 2)
end_hunk_6
begin_hunk_7_@zrle_encode_tile15le:bb.a
  %i.pj = getelementptr i8, ptr %i.pb, i64 11
  %i.pk = getelementptr i8, ptr %i.pc, i64 13
  %i.pl = getelementptr i8, ptr %i.pd, i64 15
  %i.pm = load i8, ptr %i.pe, align 1, !alias.scope !202
  %i.pn = load i8, ptr %i.pf, align 1, !alias.scope !202
  %i.po = load i8, ptr %i.pg, align 1, !alias.scope !202
  %i.pp = load i8, ptr %i.ph, align 1, !alias.scope !202
  %i.pq = load i8, ptr %i.pi, align 1, !alias.scope !202
  %i.pr = load i8, ptr %i.pj, align 1, !alias.scope !202
  %i.ps = load i8, ptr %i.pk, align 1, !alias.scope !202
  %i.pt = load i8, ptr %i.pl, align 1, !alias.scope !202
  %i.pu = insertelement <8 x i8> poison, i8 %i.pm, i64 0
  %i.pv = insertelement <8 x i8> %i.pu, i8 %i.pn, i64 1
  %i.pw = insertelement <8 x i8> %i.pv, i8 %i.po, i64 2
  %i.px = insertelement <8 x i8> %i.pw, i8 %i.pp, i64 3
  %i.py = insertelement <8 x i8> %i.px, i8 %i.pq, i64 4
  %i.pz = insertelement <8 x i8> %i.py, i8 %i.pr, i64 5
  %i.qa = insertelement <8 x i8> %i.pz, i8 %i.ps, i64 6
  %i.qb = insertelement <8 x i8> %i.qa, i8 %i.pt, i64 7
  %i.qc = zext <8 x i8> %i.qb to <8 x i32>        ; 2 uses
  %i.qd = shl nuw nsw <8 x i32> %i.qc, splat (i32 1)
  %i.qe = and <8 x i32> %i.qd, splat (i32 248)    ; 2 uses
  %i.qf = shl nuw nsw <8 x i32> %i.qc, splat (i32 6)
  %i.qg = load i8, ptr %next.gep399, align 1, !alias.scope !202
  %i.qh = load i8, ptr %next.gep400, align 1, !alias.scope !202
  %i.qi = load i8, ptr %next.gep401, align 1, !alias.scope !202
  %i.qj = load i8, ptr %next.gep402, align 1, !alias.scope !202
  %i.qk = load i8, ptr %next.gep403, align 1, !alias.scope !202
  %i.ql = load i8, ptr %next.gep404, align 1, !alias.scope !202
  %i.qm = load i8, ptr %next.gep405, align 1, !alias.scope !202
  %i.qn = load i8, ptr %next.gep406, align 1, !alias.scope !202
  %i.qo = insertelement <8 x i8> poison, i8 %i.qg, i64 0
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 1
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 2
  %i.qr = insertelement <8 x i8> %i.qq, i8 %i.qj, i64 3
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qk, i64 4
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 5
  %i.qu = insertelement <8 x i8> %i.qt, i8 %i.qm, i64 6
  %i.qv = insertelement <8 x i8> %i.qu, i8 %i.qn, i64 7
  %i.qw = zext <8 x i8> %i.qv to <8 x i32>        ; 2 uses
  %i.qx = lshr <8 x i32> %i.qw, splat (i32 2)
  %i.qy = or disjoint <8 x i32> %i.qx, %i.qf
  %i.qz = and <8 x i32> %i.qy, splat (i32 248)    ; 3 uses
  %i.ra = shl nuw nsw <8 x i32> %i.qw, splat (i32 3)
  %i.rb = and <8 x i32> %i.ra, splat (i32 248)    ; 2 uses
  %i.rc = shl nuw nsw <8 x i32> %i.qz, splat (i32 1)
  %i.rd = add nuw nsw <8 x i32> %i.rb, %i.qe
  %i.re = add nuw nsw <8 x i32> %i.rd, %i.rc
  %i.rf = lshr exact <8 x i32> %i.re, splat (i32 2)
  %i.rg = sub nsw <8 x i32> %i.rb, %i.qz
  %i.rh = sub nsw <8 x i32> %i.qe, %i.qz
  %i.ri = ashr exact <8 x i32> %i.rg, splat (i32 1)
  %i.rj = ashr exact <8 x i32> %i.rh, splat (i32 1)
  %i.rk = and <8 x i32> %i.rf, splat (i32 248)    ; 2 uses
  %i.rl = and <8 x i32> %i.ri, splat (i32 -8)     ; 2 uses
  %i.rm = and <8 x i32> %i.rj, splat (i32 -8)     ; 2 uses
  %i.rn = icmp eq <8 x i32> %i.rk, zeroinitializer
  %i.ro = icmp eq <8 x i32> %i.rl, splat (i32 -128)
  %i.rp = icmp eq <8 x i32> %i.rm, splat (i32 -128)
  %i.rq = trunc <8 x i32> %i.rm to <8 x i8>
  %i.rr = select <8 x i1> %i.rp, <8 x i8> splat (i8 -120), <8 x i8> %i.rq ; 8 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %next.gep391, i64 2
  %i.rt = getelementptr i8, ptr %i.op, i64 6
  %i.ru = getelementptr i8, ptr %i.oq, i64 10
  %i.rv = getelementptr i8, ptr %i.or, i64 14
  %i.rw = getelementptr i8, ptr %i.os, i64 18
  %i.rx = getelementptr i8, ptr %i.ot, i64 22
  %i.ry = getelementptr i8, ptr %i.ou, i64 26
  %i.rz = getelementptr i8, ptr %i.ov, i64 30
  %i.sa = extractelement <8 x i8> %i.rr, i64 0
  store i8 %i.sa, ptr %i.rs, align 1, !alias.scope !203, !noalias !202
  %i.sb = extractelement <8 x i8> %i.rr, i64 1
  store i8 %i.sb, ptr %i.rt, align 1, !alias.scope !203, !noalias !202
  %i.sc = extractelement <8 x i8> %i.rr, i64 2
  store i8 %i.sc, ptr %i.ru, align 1, !alias.scope !203, !noalias !202
  %i.sd = extractelement <8 x i8> %i.rr, i64 3
  store i8 %i.sd, ptr %i.rv, align 1, !alias.scope !203, !noalias !202
  %i.se = extractelement <8 x i8> %i.rr, i64 4
  store i8 %i.se, ptr %i.rw, align 1, !alias.scope !203, !noalias !202
  %i.sf = extractelement <8 x i8> %i.rr, i64 5
  store i8 %i.sf, ptr %i.rx, align 1, !alias.scope !203, !noalias !202
  %i.sg = extractelement <8 x i8> %i.rr, i64 6
  store i8 %i.sg, ptr %i.ry, align 1, !alias.scope !203, !noalias !202
  %i.sh = extractelement <8 x i8> %i.rr, i64 7
  store i8 %i.sh, ptr %i.rz, align 1, !alias.scope !203, !noalias !202
  %i.si = trunc nuw <8 x i32> %i.rk to <8 x i8>
  %i.sj = xor <8 x i8> %i.si, splat (i8 -128)
  %i.sk = select <8 x i1> %i.rn, <8 x i8> splat (i8 -120), <8 x i8> %i.sj ; 8 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %next.gep391, i64 1
  %i.sm = getelementptr i8, ptr %i.op, i64 5
  %i.sn = getelementptr i8, ptr %i.oq, i64 9
  %i.so = getelementptr i8, ptr %i.or, i64 13
  %i.sp = getelementptr i8, ptr %i.os, i64 17
  %i.sq = getelementptr i8, ptr %i.ot, i64 21
  %i.sr = getelementptr i8, ptr %i.ou, i64 25
  %i.ss = getelementptr i8, ptr %i.ov, i64 29
  %i.st = extractelement <8 x i8> %i.sk, i64 0
  store i8 %i.st, ptr %i.sl, align 1, !alias.scope !203, !noalias !202
  %i.su = extractelement <8 x i8> %i.sk, i64 1
  store i8 %i.su, ptr %i.sm, align 1, !alias.scope !203, !noalias !202
  %i.sv = extractelement <8 x i8> %i.sk, i64 2
  store i8 %i.sv, ptr %i.sn, align 1, !alias.scope !203, !noalias !202
  %i.sw = extractelement <8 x i8> %i.sk, i64 3
  store i8 %i.sw, ptr %i.so, align 1, !alias.scope !203, !noalias !202
  %i.sx = extractelement <8 x i8> %i.sk, i64 4
  store i8 %i.sx, ptr %i.sp, align 1, !alias.scope !203, !noalias !202
  %i.sy = extractelement <8 x i8> %i.sk, i64 5
  store i8 %i.sy, ptr %i.sq, align 1, !alias.scope !203, !noalias !202
  %i.sz = extractelement <8 x i8> %i.sk, i64 6
  store i8 %i.sz, ptr %i.sr, align 1, !alias.scope !203, !noalias !202
  %i.ta = extractelement <8 x i8> %i.sk, i64 7
  store i8 %i.ta, ptr %i.ss, align 1, !alias.scope !203, !noalias !202
  %i.tb = trunc <8 x i32> %i.rl to <8 x i8>
  %i.tc = select <8 x i1> %i.ro, <8 x i8> splat (i8 -120), <8 x i8> %i.tb ; 8 uses
  %i.td = extractelement <8 x i8> %i.tc, i64 0
  store i8 %i.td, ptr %next.gep391, align 1, !alias.scope !203, !noalias !202
  %i.te = extractelement <8 x i8> %i.tc, i64 1
  store i8 %i.te, ptr %next.gep392, align 1, !alias.scope !203, !noalias !202
  %i.tf = extractelement <8 x i8> %i.tc, i64 2
  store i8 %i.tf, ptr %next.gep393, align 1, !alias.scope !203, !noalias !202
  %i.tg = extractelement <8 x i8> %i.tc, i64 3
  store i8 %i.tg, ptr %next.gep394, align 1, !alias.scope !203, !noalias !202
  %i.th = extractelement <8 x i8> %i.tc, i64 4
  store i8 %i.th, ptr %next.gep395, align 1, !alias.scope !203, !noalias !202
  %i.ti = extractelement <8 x i8> %i.tc, i64 5
  store i8 %i.ti, ptr %next.gep396, align 1, !alias.scope !203, !noalias !202
  %i.tj = extractelement <8 x i8> %i.tc, i64 6
  store i8 %i.tj, ptr %next.gep397, align 1, !alias.scope !203, !noalias !202
  %i.tk = extractelement <8 x i8> %i.tc, i64 7
  store i8 %i.tk, ptr %next.gep398, align 1, !alias.scope !203, !noalias !202
  %index.next407 = add nuw i64 %index390, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next407, %n.vec389
  br i1 %i.tl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !185

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n408 = icmp eq i64 %i.fd, %n.vec389
  br i1 %cmp.n408, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.155.i.us.i.ph = phi ptr [ %.04558.i.us.i, %iter.check ], [ %.04558.i.us.i, %vector.memcheck ], [ %i.fr, %vec.epilog.iter.check ], [ %i.ol, %vec.epilog.middle.block ]
  %.14754.i.us.i.ph = phi ptr [ %.04657.i.us.i, %iter.check ], [ %.04657.i.us.i, %vector.memcheck ], [ %i.ft, %vec.epilog.iter.check ], [ %i.on, %vec.epilog.middle.block ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %.155.i.us.i = phi ptr [ %i.uw, %.lr.ph.i.us.i ], [ %.155.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 4 uses
  %.14754.i.us.i = phi ptr [ %i.ux, %.lr.ph.i.us.i ], [ %.14754.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.14754.i.us.i, i64 1
  %i.tn = load i8, ptr %i.tm, align 1
  %i.to = zext i8 %i.tn to i32                    ; 2 uses
  %i.tp = shl nuw nsw i32 %i.to, 1
  %i.tq = and i32 %i.tp, 248                      ; 2 uses
  %i.tr = shl nuw nsw i32 %i.to, 6
  %i.ts = load i8, ptr %.14754.i.us.i, align 1
  %i.tt = zext i8 %i.ts to i32                    ; 2 uses
  %i.tu = lshr i32 %i.tt, 2
  %i.tv = or disjoint i32 %i.tu, %i.tr
  %i.tw = and i32 %i.tv, 248                      ; 3 uses
  %i.tx = shl nuw nsw i32 %i.tt, 3
  %i.ty = and i32 %i.tx, 248                      ; 2 uses
  %i.tz = shl nuw nsw i32 %i.tw, 1
  %i.ua = add nuw nsw i32 %i.ty, %i.tq
  %i.ub = add nuw nsw i32 %i.ua, %i.tz
  %i.uc = lshr exact i32 %i.ub, 2
  %i.ud = sub nsw i32 %i.ty, %i.tw
  %i.ue = sub nsw i32 %i.tq, %i.tw
  %i.uf = ashr exact i32 %i.ud, 1
  %i.ug = ashr exact i32 %i.ue, 1
  %i.uh = and i32 %i.uc, 248                      ; 2 uses
  %i.ui = and i32 %i.uf, -8                       ; 2 uses
  %i.uj = and i32 %i.ug, -8                       ; 2 uses
  %i.uk = icmp eq i32 %i.uh, 0
  %i.ul = icmp eq i32 %i.ui, -128
  %i.um = icmp eq i32 %i.uj, -128
  %i.un = trunc i32 %i.uj to i8
  %i.uo = select i1 %i.um, i8 -120, i8 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 2
  store i8 %i.uo, ptr %i.up, align 1
  %i.uq = trunc nuw i32 %i.uh to i8
  %i.ur = xor i8 %i.uq, -128
  %i.us = select i1 %i.uk, i8 -120, i8 %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 1
  store i8 %i.us, ptr %i.ut, align 1
  %i.uu = trunc i32 %i.ui to i8
  %i.uv = select i1 %i.ul, i8 -120, i8 %i.uu
  store i8 %i.uv, ptr %.155.i.us.i, align 1
  %i.uw = getelementptr inbounds nuw i8, ptr %.155.i.us.i, i64 4 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.14754.i.us.i, i64 2 ; 2 uses
  %i.uy = icmp ult ptr %i.uw, %i.ex
  br i1 %i.uy, label %.lr.ph.i.us.i, label %._crit_edge.i.loopexit.us.i, !llvm.loop !186

._crit_edge.i.loopexit.us.i:                      ; preds = %.lr.ph.i.us.i, %vec.epilog.middle.block, %middle.block
  %.lcssa344 = phi ptr [ %i.ol, %vec.epilog.middle.block ], [ %i.fr, %middle.block ], [ %i.uw, %.lr.ph.i.us.i ] ; 2 uses
  %.lcssa343 = phi ptr [ %i.on, %vec.epilog.middle.block ], [ %i.ft, %middle.block ], [ %i.ux, %.lr.ph.i.us.i ]
  %i.uz = getelementptr inbounds [2 x i8], ptr %.lcssa343, i64 %i.ev
  %i.va = icmp ult ptr %.lcssa344, %i.de
  br i1 %i.va, label %iter.check, label %zywrle_rgbyuv_15le.exit.i, !llvm.loop !187

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_15le.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef range(i32 1, 256) %5)
  %i.vb = icmp slt i32 %i.cw, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_15le.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_15le.exit.i ], [ %i.yt, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_15le.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.vc = shl i32 2, %.0243417.i                  ; 3 uses
  %i.vd = ashr exact i32 %i.vc, 1                 ; 2 uses
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ve ; 3 uses
  %i.vg = mul i32 %i.vd, %i.cw
  %i.vh = sext i32 %i.vg to i64                   ; 2 uses
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.vh ; 2 uses
  %i.vj = getelementptr inbounds i8, ptr %i.vi, i64 %.idx432.i
  br i1 %i.eu, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vk = sext i32 %i.vc to i64                   ; 4 uses
  %i.vl = add i32 %i.vc, -1
  %i.vm = mul i32 %i.vl, %i.cw
  %i.vn = sext i32 %i.vm to i64                   ; 4 uses
  br i1 %i.vb, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wg, %._crit_edge355.i.loopexit.us ], [ %i.vi, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.wd, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vo = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.us, %.lr.ph354.i.preheader.us
  %.1352.i.us = phi ptr [ %i.we, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.wd, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vq = load i8, ptr %i.vp, align 1
  %i.vr = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vs = load i8, ptr %i.vr, align 1             ; 2 uses
  %i.vt = load i8, ptr %.1352.i.us, align 1
  %i.vu = lshr i8 %i.vq, 1
  %i.vv = and i8 %i.vu, 124
  %i.vw = lshr i8 %i.vs, 6
  %i.vx = or disjoint i8 %i.vw, %i.vv
  %i.vy = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vx, ptr %i.vy, align 1
  %i.vz = lshr i8 %i.vt, 3
  %i.wa = shl i8 %i.vs, 2
  %i.wb = and i8 %i.wa, -32
  %i.wc = or disjoint i8 %i.wb, %i.vz
  store i8 %i.wc, ptr %.2247350.i.us, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.we = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vk ; 3 uses
  %i.wf = icmp ult ptr %i.we, %i.vo
  br i1 %i.wf, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !188

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.vn ; 2 uses
  %i.wh = icmp ult ptr %i.wg, %i.vj
  br i1 %i.wh, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !189

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.vh ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.xc, %._crit_edge372.i.loopexit.us ], [ %i.wi, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wz, %._crit_edge372.i.loopexit.us ], [ %i.wd, %._crit_edge364.i ]
  %i.wk = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.us, %.lr.ph371.i.preheader.us
  %.3369.i.us = phi ptr [ %i.xa, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wz, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wo = load i8, ptr %i.wn, align 1             ; 2 uses
  %i.wp = load i8, ptr %.3369.i.us, align 1
  %i.wq = lshr i8 %i.wm, 1
  %i.wr = and i8 %i.wq, 124
  %i.ws = lshr i8 %i.wo, 6
  %i.wt = or disjoint i8 %i.ws, %i.wr
  %i.wu = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wt, ptr %i.wu, align 1
  %i.wv = lshr i8 %i.wp, 3
  %i.ww = shl i8 %i.wo, 2
  %i.wx = and i8 %i.ww, -32
  %i.wy = or disjoint i8 %i.wx, %i.wv
  store i8 %i.wy, ptr %.5250367.i.us, align 1
  %i.wz = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vk ; 3 uses
  %i.xb = icmp ult ptr %i.xa, %i.wk
  br i1 %i.xb, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !190

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.vn ; 2 uses
  %i.xd = icmp ult ptr %i.xc, %i.wj
  br i1 %i.xd, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !191

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xx, %._crit_edge389.i.loopexit.us ], [ %i.vf, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xu, %._crit_edge389.i.loopexit.us ], [ %i.wz, %._crit_edge381.i ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.us, %.lr.ph388.i.preheader.us
  %.5386.i.us = phi ptr [ %i.xv, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xu, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xj = load i8, ptr %i.xi, align 1             ; 2 uses
  %i.xk = load i8, ptr %.5386.i.us, align 1
  %i.xl = lshr i8 %i.xh, 1
  %i.xm = and i8 %i.xl, 124
  %i.xn = lshr i8 %i.xj, 6
  %i.xo = or disjoint i8 %i.xn, %i.xm
  %i.xp = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xo, ptr %i.xp, align 1
  %i.xq = lshr i8 %i.xk, 3
  %i.xr = shl i8 %i.xj, 2
  %i.xs = and i8 %i.xr, -32
  %i.xt = or disjoint i8 %i.xs, %i.xq
  store i8 %i.xt, ptr %.8253384.i.us, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xv = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vk ; 3 uses
  %i.xw = icmp ult ptr %i.xv, %i.xf
  br i1 %i.xw, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !192

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.xv, i64 %i.vn ; 2 uses
  %i.xy = icmp ult ptr %i.xx, %i.xe
  br i1 %i.xy, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !193

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xu, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.cu
  %brmerge = or i1 %.not, %i.vb
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yr, %._crit_edge406.i.loopexit.us ], [ %i.cv, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yo, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xz = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us, %.lr.ph413.i.us
  %.7403.i.us = phi ptr [ %i.yp, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yo, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.yd = load i8, ptr %i.yc, align 1             ; 2 uses
  %i.ye = load i8, ptr %.7403.i.us, align 1
  %i.yf = lshr i8 %i.yb, 1
  %i.yg = and i8 %i.yf, 124
  %i.yh = lshr i8 %i.yd, 6
  %i.yi = or disjoint i8 %i.yh, %i.yg
  %i.yj = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.yi, ptr %i.yj, align 1
  %i.yk = lshr i8 %i.ye, 3
  %i.yl = shl i8 %i.yd, 2
  %i.ym = and i8 %i.yl, -32
  %i.yn = or disjoint i8 %i.ym, %i.yk
  store i8 %i.yn, ptr %.11256401.i.us, align 1
  %i.yo = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yp = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vk ; 3 uses
  %i.yq = icmp ult ptr %i.yp, %i.xz
  br i1 %i.yq, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !194

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.vn ; 2 uses
  %i.ys = icmp ult ptr %i.yr, %i.de
  br i1 %i.ys, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !195

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yo, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.yt = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.yt, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !196

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.k, 2                ; 3 uses
  %i.yu = getelementptr inbounds i8, ptr %i.cv, i64 %.idx440.i
  %i.yv = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yv, label %.lr.ph423.i.preheader, label %zywrle_analyze_15le.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %i.yw = add i64 %.idx432.i, %i.a
  %i.yx = add i64 %i.yw, 86852
  %i.yy = add i64 %.idx440.i, %i.a
  %i.yz = add i64 %i.yy, 86848
  %i.za = tail call i64 @llvm.umax.i64(i64 %i.yx, i64 %i.yz)
  %i.zb = add i64 %i.za, -86849
  %i.zc = add i64 %.idx432.i, %i.a
  %i.zd = sub i64 %i.zb, %i.zc                    ; 4 uses
  %i.ze = lshr i64 %i.zd, 2
  %i.zf = add nuw nsw i64 %i.ze, 1                ; 2 uses
  %min.iters.check416 = icmp ult i64 %i.zd, 240
  br i1 %min.iters.check416, label %.lr.ph423.i.preheader442, label %vector.memcheck417

vector.memcheck417:                               ; preds = %.lr.ph423.i.preheader
  %i.zg = lshr i64 %i.zd, 1
  %i.zh = and i64 %i.zg, 9223372036854775806
  %i.zi = getelementptr i8, ptr %.13258.i, i64 %i.zh
  %i.zj = getelementptr i8, ptr %i.zi, i64 2
  %i.zk = and i64 %i.zd, -4
  %i.zl = getelementptr i8, ptr %0, i64 %i.zk
  %i.zm = getelementptr i8, ptr %i.zl, i64 %.idx432.i
  %i.zn = getelementptr i8, ptr %i.zm, i64 86850
  %bound0418 = icmp ult ptr %.13258.i, %i.zn
  %bound1419 = icmp ult ptr %i.de, %i.zj
  %found.conflict420 = and i1 %bound0418, %bound1419
  br i1 %found.conflict420, label %.lr.ph423.i.preheader442, label %vector.ph421

vector.ph421:                                     ; preds = %vector.memcheck417
  %i.zo = and i64 %i.zf, 7                        ; 2 uses
  %i.zp = icmp eq i64 %i.zo, 0
  %i.zq = select i1 %i.zp, i64 8, i64 %i.zo
  %n.vec422 = sub nsw i64 %i.zf, %i.zq            ; 3 uses
  %i.zr = shl i64 %n.vec422, 2
  %i.zs = getelementptr i8, ptr %i.de, i64 %i.zr
  %i.zt = shl i64 %n.vec422, 1
  %i.zu = getelementptr i8, ptr %.13258.i, i64 %i.zt
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph421
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next430, %vector.body423 ] ; 3 uses
  %i.zv = shl i64 %index424, 2                    ; 2 uses
  %next.gep425 = getelementptr i8, ptr %i.de, i64 %i.zv
  %i.zw = getelementptr i8, ptr %i.de, i64 %i.zv
  %next.gep426 = getelementptr i8, ptr %i.zw, i64 16
  %i.zx = shl i64 %index424, 1
  %next.gep427 = getelementptr i8, ptr %.13258.i, i64 %i.zx ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep425, align 2, !alias.scope !204
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec428 = load <8 x i16>, ptr %next.gep426, align 2, !alias.scope !204
  %strided.vec429 = shufflevector <8 x i16> %wide.vec428, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zy = getelementptr i8, ptr %next.gep427, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep427, align 2, !alias.scope !205, !noalias !204
  store <4 x i16> %strided.vec429, ptr %i.zy, align 2, !alias.scope !205, !noalias !204
  %index.next430 = add nuw i64 %index424, 8       ; 2 uses
  %i.zz = icmp eq i64 %index.next430, %n.vec422
  br i1 %i.zz, label %.lr.ph423.i.preheader442, label %vector.body423, !llvm.loop !200

.lr.ph423.i.preheader442:                         ; preds = %vector.body423, %vector.memcheck417, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.de, %vector.memcheck417 ], [ %i.de, %.lr.ph423.i.preheader ], [ %i.zs, %vector.body423 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck417 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zu, %vector.body423 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader442, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.aac, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader442 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.aab, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader442 ] ; 2 uses
  %i.aaa = load i16, ptr %.8242420.i, align 2
  store i16 %i.aaa, ptr %.14259419.i, align 2
  %i.aab = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.aac = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.aad = icmp ult ptr %i.aac, %i.yu
  br i1 %i.aad, label %.lr.ph423.i, label %zywrle_analyze_15le.exit, !llvm.loop !201

zywrle_analyze_15le.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.aae = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile15le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.aae)
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
  store i8 0, ptr %i.g, align 1, !annotation !10
end_hunk_7
begin_hunk_8_@zrle_encode_tile24abe:bb.a
  %i.aq = icmp ugt i64 %i.af, %i.ap
  br i1 %i.aq, label %.lr.ph162, label %._crit_edge163, !llvm.loop !208

._crit_edge163:                                   ; preds = %.lr.ph162, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  %i.ar = trunc nuw i8 %i.ag to i1
  br i1 %i.ar, label %.preheader, label %bb.q

.thread148:                                       ; preds = %bb.f
  %i.as = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.at = shl nuw i8 %i.as, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.at) #9
  %i.au = trunc nuw i8 %i.as to i1
  br i1 %i.au, label %.preheader, label %.thread149

.preheader:                                       ; preds = %._crit_edge163, %.thread148
  br i1 %i.p, label %.lr.ph183, label %.loopexit

.lr.ph183:                                        ; preds = %.preheader, %bb.p
  %.3182 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.av = load i32, ptr %.3182, align 4           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph183
  %.3.pn = phi ptr [ %.3182, %.lr.ph183 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 4 ; 5 uses
  %i.aw = load i32, ptr %.4, align 4
  %i.ax = icmp eq i32 %i.aw, %i.av
  %i.ay = icmp ult ptr %.4, %i.l                  ; 2 uses
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.i, !llvm.loop !209

bb.i:                                             ; preds = %bb.h
  %i.ba = ptrtoint ptr %.4 to i64
  %i.bb = ptrtoint ptr %.3182 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = trunc i64 %i.bd to i32                  ; 3 uses
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bf = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.av) #9
  %i.bg = trunc i32 %i.bf to i8                   ; 4 uses
  %i.bh = icmp slt i32 %i.be, 3
  br i1 %i.bh, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp eq i32 %i.be, 2
  br i1 %i.bi, label %bb.l, label %bb.p, !llvm.loop !210

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bg) #9
  br label %bb.p, !llvm.loop !210

bb.m:                                             ; preds = %bb.j
  %i.bj = or i8 %i.bg, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bj) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.av, ptr %i.b, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = add i32 %i.be, -1                       ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 254
  br i1 %i.bl, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %bb.o, %.lr.ph179
  %.0124177 = phi i32 [ %i.bm, %.lr.ph179 ], [ %i.bk, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bm = add nsw i32 %.0124177, -255             ; 2 uses
  %i.bn = icmp samesign ugt i32 %.0124177, 509
  br i1 %i.bn, label %.lr.ph179, label %._crit_edge180, !llvm.loop !211

._crit_edge180:                                   ; preds = %.lr.ph179, %bb.o
  %.0124.lcssa = phi i32 [ %i.bk, %bb.o ], [ %i.bm, %.lr.ph179 ]
  %i.bo = trunc i32 %.0124.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge180
  %.sink = phi i8 [ %i.bo, %._crit_edge180 ], [ %i.bg, %bb.l ], [ %i.bg, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.ay, label %.lr.ph183, label %.loopexit

bb.q:                                             ; preds = %._crit_edge163
  %i.bp = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bq = icmp ult i64 %i.bp, 17
  br i1 %i.bq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__.zrle_encode_tile24abe) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.br = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bs = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = icmp sgt i32 %4, 0
  br i1 %i.bv, label %.lr.ph176, label %.loopexit

.lr.ph176:                                        ; preds = %bb.s
  %i.bw = sext i32 %3 to i64
  %i.bx = trunc i32 %i.bu to i8
  %.idx184 = shl nsw i64 %i.bw, 2
  %i.by = icmp sgt i32 %3, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph176, %._crit_edge169.thread
  %.5174 = phi ptr [ %2, %.lr.ph176 ], [ %.6.lcssa203, %._crit_edge169.thread ] ; 3 uses
  %.1128173 = phi i32 [ 0, %.lr.ph176 ], [ %i.co, %._crit_edge169.thread ]
  %i.bz = getelementptr inbounds i8, ptr %.5174, i64 %.idx184 ; 2 uses
  br i1 %i.by, label %.lr.ph168, label %._crit_edge169.thread

.lr.ph168:                                        ; preds = %bb.t, %.lr.ph168.backedge
  %.0166 = phi i32 [ %i.ce, %.lr.ph168.backedge ], [ 0, %bb.t ]
  %.0122165 = phi i8 [ %.0122165.be, %.lr.ph168.backedge ], [ 0, %bb.t ]
  %.6164 = phi ptr [ %i.ca, %.lr.ph168.backedge ], [ %.5174, %bb.t ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.6164, i64 4 ; 6 uses
  %i.cb = load i32, ptr %.6164, align 4
  %i.cc = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.cb) #9
  %i.cd = shl i32 %.0166, %i.bu
  %i.ce = or i32 %i.cc, %i.cd                     ; 3 uses
  %i.cf = add i8 %.0122165, %i.bx                 ; 4 uses
  %i.cg = icmp ugt i8 %i.cf, 7
  br i1 %i.cg, label %.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph168
  %i.ch = icmp ult ptr %i.ca, %i.bz
  br i1 %i.ch, label %.lr.ph168.backedge, label %._crit_edge169

.lr.ph168.backedge:                               ; preds = %bb.u, %.thread
  %.0122165.be = phi i8 [ 0, %.thread ], [ %i.cf, %bb.u ]
  br label %.lr.ph168, !llvm.loop !212

.thread:                                          ; preds = %.lr.ph168
  %i.ci = trunc i32 %i.ce to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ci) #9
  %i.cj = icmp ult ptr %i.ca, %i.bz
  br i1 %i.cj, label %.lr.ph168.backedge, label %._crit_edge169.thread

._crit_edge169:                                   ; preds = %bb.u
  %.not139 = icmp eq i8 %i.cf, 0
  br i1 %.not139, label %._crit_edge169.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge169
  %i.ck = trunc i32 %i.ce to i16
  %narrow = sub nuw nsw i8 8, %i.cf
  %i.cl = zext nneg i8 %narrow to i16
  %i.cm = shl i16 %i.ck, %i.cl
  %i.cn = trunc i16 %i.cm to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cn) #9
  br label %._crit_edge169.thread

._crit_edge169.thread:                            ; preds = %.thread, %bb.t, %bb.v, %._crit_edge169
  %.6.lcssa203 = phi ptr [ %.5174, %bb.t ], [ %i.ca, %bb.v ], [ %i.ca, %._crit_edge169 ], [ %i.ca, %.thread ]
  %i.co = add nuw nsw i32 %.1128173, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !213

.thread149:                                       ; preds = %.thread148
  %i.cp = add nsw i32 %5, -1
  %or.cond141 = icmp ult i32 %i.cp, 127
  br i1 %or.cond141, label %bb.w, label %.preheader151

.preheader151:                                    ; preds = %.thread149
  br i1 %i.p, label %.lr.ph159, label %.loopexit

bb.w:                                             ; preds = %.thread149
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 86848
  tail call fastcc void @zywrle_analyze_32be(ptr noundef %2, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %3, i32 noundef %5, ptr noundef nonnull %i.cq)
  %i.cr = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile24abe(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.cr)
  br label %.loopexit

.lr.ph159:                                        ; preds = %.preheader151, %.lr.ph159
  %.7158 = phi ptr [ %i.ct, %.lr.ph159 ], [ %2, %.preheader151 ] ; 2 uses
  %i.cs = load i32, ptr %.7158, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.cs, ptr %i.a, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = getelementptr inbounds nuw i8, ptr %.7158, i64 4 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.l
  br i1 %i.cu, label %.lr.ph159, label %.loopexit, !llvm.loop !214

.loopexit:                                        ; preds = %.lr.ph159, %._crit_edge169.thread, %bb.p, %.preheader151, %bb.s, %.preheader, %bb.w, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @zywrle_analyze_32be(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 1, 256) %5, ptr nofree noundef captures(address) %6) unnamed_addr #6 {
bb.a:
  %notmask.i = shl nsw i32 -1, %5                 ; 2 uses
  %i.a = and i32 %notmask.i, %2                   ; 23 uses
  %i.b = and i32 %notmask.i, %3                   ; 7 uses
  %i.c = icmp eq i32 %i.a, 0
  %i.d = icmp eq i32 %i.b, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i32 %2, %i.a                         ; 6 uses
  %i.f = sub i32 %3, %i.b
  %i.g = mul i32 %i.a, %i.b                       ; 3 uses
  %i.h = sext i32 %i.g to i64
  %.idx420 = shl nsw i64 %i.h, 2                  ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %6, i64 %.idx420 ; 6 uses
  %.not299 = icmp eq i32 %2, %i.a                 ; 3 uses
  br i1 %.not299, label %.loopexit301, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j ; 3 uses
  %i.l = mul i32 %i.b, %4                         ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.m, 2
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph309, label %.loopexit301

.lr.ph309:                                        ; preds = %bb.c
  %7 = sext i32 %i.e to i64
  %i.p = sub i32 %4, %i.e
  %i.q = sext i32 %i.p to i64
  %.idx415 = shl nsw i64 %7, 2                    ; 2 uses
  %i.r = icmp sgt i32 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph309, %._crit_edge
  %.0214307 = phi ptr [ %i.k, %.lr.ph309 ], [ %i.am, %._crit_edge ] ; 6 uses
  %.0222306 = phi ptr [ %i.i, %.lr.ph309 ], [ %.1223.lcssa, %._crit_edge ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0214307, i64 %.idx415
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %.021430718 = ptrtoaddr ptr %.0214307 to i64    ; 4 uses
  %.022230617 = ptrtoaddr ptr %.0222306 to i64
  %i.t = add i64 %.idx415, %.021430718
  %i.u = add i64 %.021430718, 4
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.w = xor i64 %.021430718, -1
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  %i.aa = sub i64 %.021430718, %.022230617
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond68 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond68, label %.lr.ph.preheader84, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %.0214307, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %.0222306, i64 %i.ab ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0214307, i64 %i.ae ; 2 uses
  %next.gep19 = getelementptr i8, ptr %.0222306, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load20 = load <4 x i32>, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %next.gep19, i64 16
  store <4 x i32> %wide.load, ptr %next.gep19, align 4
  store <4 x i32> %wide.load20, ptr %i.ag, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader84

.lr.ph.preheader84:                               ; preds = %.lr.ph.preheader, %middle.block
  %.1215304.ph = phi ptr [ %.0214307, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.1223303.ph = phi ptr [ %.0222306, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader84, %.lr.ph
  %.1215304 = phi ptr [ %i.aj, %.lr.ph ], [ %.1215304.ph, %.lr.ph.preheader84 ] ; 2 uses
  %.1223303 = phi ptr [ %i.ak, %.lr.ph ], [ %.1223303.ph, %.lr.ph.preheader84 ] ; 2 uses
  %i.ai = load i32, ptr %.1215304, align 4
  store i32 %i.ai, ptr %.1223303, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.1215304, i64 4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1223303, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.s
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.1223.lcssa = phi ptr [ %.0222306, %bb.d ], [ %i.ad, %middle.block ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.1215.lcssa = phi ptr [ %.0214307, %bb.d ], [ %i.ac, %middle.block ], [ %i.aj, %.lr.ph ]
  %i.am = getelementptr inbounds [4 x i8], ptr %.1215.lcssa, i64 %i.q ; 3 uses
  %i.an = icmp ult ptr %i.am, %i.n
  br i1 %i.an, label %bb.d, label %.loopexit301, !llvm.loop !217

.loopexit301:                                     ; preds = %._crit_edge, %bb.c, %bb.b
  %.2224 = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %.1223.lcssa, %._crit_edge ]
  %.2216 = phi ptr [ %0, %bb.b ], [ %i.k, %bb.c ], [ %i.am, %._crit_edge ]
  %.not298 = icmp eq i32 %3, %i.b
  br i1 %.not298, label %.thread, label %bb.e

bb.e:                                             ; preds = %.loopexit301
  %i.ao = mul i32 %i.b, %4
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap ; 3 uses
  %i.ar = mul i32 %i.f, %4                        ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %.idx416 = shl nsw i64 %i.as, 2                 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %.idx416
  %i.au = icmp sgt i32 %i.ar, 0
  br i1 %i.au, label %.lr.ph322, label %._crit_edge323.thread

.lr.ph322:                                        ; preds = %bb.e
  %8 = sext i32 %i.a to i64
  %i.av = sub i32 %4, %i.a
  %i.aw = sext i32 %i.av to i64
  %.idx417 = shl nsw i64 %8, 2                    ; 2 uses
  %i.ax = icmp sgt i32 %i.a, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph322, %._crit_edge316
  %.3217320 = phi ptr [ %i.aq, %.lr.ph322 ], [ %i.bs, %._crit_edge316 ] ; 6 uses
  %.3225319 = phi ptr [ %.2224, %.lr.ph322 ], [ %.4226.lcssa, %._crit_edge316 ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3217320, i64 %.idx417
  br i1 %i.ax, label %.lr.ph315.preheader, label %._crit_edge316

.lr.ph315.preheader:                              ; preds = %bb.f
  %.321732027 = ptrtoaddr ptr %.3217320 to i64    ; 4 uses
  %.322531926 = ptrtoaddr ptr %.3225319 to i64
  %i.az = add i64 %.idx417, %.321732027
  %i.ba = add i64 %.321732027, 4
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ba)
  %i.bc = xor i64 %.321732027, -1
  %i.bd = add i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check29 = icmp ult i64 %i.bd, 28
  %i.bg = sub i64 %.321732027, %.322531926
  %diff.check31 = icmp ugt i64 %i.bg, -32
  %or.cond69 = select i1 %min.iters.check29, i1 true, i1 %diff.check31
  br i1 %or.cond69, label %.lr.ph315.preheader80, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph315.preheader
  %n.vec33 = and i64 %i.bf, 9223372036854775800   ; 3 uses
  %i.bh = shl i64 %n.vec33, 2                     ; 2 uses
  %i.bi = getelementptr i8, ptr %.3217320, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %.3225319, i64 %i.bh ; 2 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.bk = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %.3217320, i64 %i.bk ; 2 uses
  %next.gep37 = getelementptr i8, ptr %.3225319, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load38 = load <4 x i32>, ptr %next.gep36, align 4
  %wide.load39 = load <4 x i32>, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %next.gep37, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep37, align 4
  store <4 x i32> %wide.load39, ptr %i.bm, align 4
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.bn, label %middle.block41, label %vector.body34, !llvm.loop !218

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %i.bf, %n.vec33
  br i1 %cmp.n42, label %._crit_edge316, label %.lr.ph315.preheader80

.lr.ph315.preheader80:                            ; preds = %.lr.ph315.preheader, %middle.block41
  %.4218313.ph = phi ptr [ %.3217320, %.lr.ph315.preheader ], [ %i.bi, %middle.block41 ]
  %.4226312.ph = phi ptr [ %.3225319, %.lr.ph315.preheader ], [ %i.bj, %middle.block41 ]
  br label %.lr.ph315

.lr.ph315:                                        ; preds = %.lr.ph315.preheader80, %.lr.ph315
  %.4218313 = phi ptr [ %i.bp, %.lr.ph315 ], [ %.4218313.ph, %.lr.ph315.preheader80 ] ; 2 uses
  %.4226312 = phi ptr [ %i.bq, %.lr.ph315 ], [ %.4226312.ph, %.lr.ph315.preheader80 ] ; 2 uses
  %i.bo = load i32, ptr %.4218313, align 4
  store i32 %i.bo, ptr %.4226312, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.4218313, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.4226312, i64 4 ; 2 uses
  %i.br = icmp ult ptr %i.bp, %i.ay
  br i1 %i.br, label %.lr.ph315, label %._crit_edge316, !llvm.loop !219

._crit_edge316:                                   ; preds = %.lr.ph315, %middle.block41, %bb.f
  %.4226.lcssa = phi ptr [ %.3225319, %bb.f ], [ %i.bj, %middle.block41 ], [ %i.bq, %.lr.ph315 ] ; 2 uses
  %.4218.lcssa = phi ptr [ %.3217320, %bb.f ], [ %i.bi, %middle.block41 ], [ %i.bp, %.lr.ph315 ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %.4218.lcssa, i64 %i.aw ; 3 uses
  %i.bt = icmp ult ptr %i.bs, %i.at
  br i1 %i.bt, label %bb.f, label %._crit_edge323, !llvm.loop !220

._crit_edge323:                                   ; preds = %._crit_edge316
  br i1 %.not299, label %.thread, label %.lr.ph336

._crit_edge323.thread:                            ; preds = %bb.e
  br i1 %.not299, label %.thread, label %.thread465

.thread465:                                       ; preds = %._crit_edge323.thread
  %i.bu = sext i32 %i.a to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ap
  br label %.thread

.lr.ph336:                                        ; preds = %._crit_edge323
  %i.bx = sext i32 %i.a to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ap ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx416
  %9 = sext i32 %i.e to i64
  %i.cb = sub i32 %4, %i.e
  %i.cc = sext i32 %i.cb to i64
  %.idx419 = shl nsw i64 %9, 2                    ; 2 uses
  %i.cd = icmp sgt i32 %i.e, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph336, %._crit_edge330
  %.6220334 = phi ptr [ %i.bz, %.lr.ph336 ], [ %i.cy, %._crit_edge330 ] ; 6 uses
  %.6228333 = phi ptr [ %.4226.lcssa, %.lr.ph336 ], [ %.7229.lcssa, %._crit_edge330 ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.6220334, i64 %.idx419
  br i1 %i.cd, label %.lr.ph329.preheader, label %._crit_edge330

.lr.ph329.preheader:                              ; preds = %bb.g
  %.622033450 = ptrtoaddr ptr %.6220334 to i64    ; 4 uses
  %.622833349 = ptrtoaddr ptr %.6228333 to i64
  %i.cf = add i64 %.idx419, %.622033450
  %i.cg = add i64 %.622033450, 4
  %i.ch = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.cg)
  %i.ci = xor i64 %.622033450, -1
  %i.cj = add i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.cj, 28
  %i.cm = sub i64 %.622033450, %.622833349
  %diff.check54 = icmp ugt i64 %i.cm, -32
  %or.cond70 = select i1 %min.iters.check52, i1 true, i1 %diff.check54
  br i1 %or.cond70, label %.lr.ph329.preheader76, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph329.preheader
  %n.vec56 = and i64 %i.cl, 9223372036854775800   ; 3 uses
  %i.cn = shl i64 %n.vec56, 2                     ; 2 uses
  %i.co = getelementptr i8, ptr %.6220334, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.6228333, i64 %i.cn ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next63, %vector.body57 ] ; 2 uses
  %i.cq = shl i64 %index58, 2                     ; 2 uses
  %next.gep59 = getelementptr i8, ptr %.6220334, i64 %i.cq ; 2 uses
  %next.gep60 = getelementptr i8, ptr %.6228333, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load61 = load <4 x i32>, ptr %next.gep59, align 4
  %wide.load62 = load <4 x i32>, ptr %i.cr, align 4
  %i.cs = getelementptr i8, ptr %next.gep60, i64 16
  store <4 x i32> %wide.load61, ptr %next.gep60, align 4
  store <4 x i32> %wide.load62, ptr %i.cs, align 4
  %index.next63 = add nuw i64 %index58, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.ct, label %middle.block64, label %vector.body57, !llvm.loop !221

middle.block64:                                   ; preds = %vector.body57
  %cmp.n65 = icmp eq i64 %i.cl, %n.vec56
  br i1 %cmp.n65, label %._crit_edge330, label %.lr.ph329.preheader76

.lr.ph329.preheader76:                            ; preds = %.lr.ph329.preheader, %middle.block64
  %.7221327.ph = phi ptr [ %.6220334, %.lr.ph329.preheader ], [ %i.co, %middle.block64 ]
  %.7229326.ph = phi ptr [ %.6228333, %.lr.ph329.preheader ], [ %i.cp, %middle.block64 ]
  br label %.lr.ph329

.lr.ph329:                                        ; preds = %.lr.ph329.preheader76, %.lr.ph329
  %.7221327 = phi ptr [ %i.cv, %.lr.ph329 ], [ %.7221327.ph, %.lr.ph329.preheader76 ] ; 2 uses
  %.7229326 = phi ptr [ %i.cw, %.lr.ph329 ], [ %.7229326.ph, %.lr.ph329.preheader76 ] ; 2 uses
  %i.cu = load i32, ptr %.7221327, align 4
  store i32 %i.cu, ptr %.7229326, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.7221327, i64 4 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.7229326, i64 4 ; 2 uses
  %i.cx = icmp ult ptr %i.cv, %i.ce
  br i1 %i.cx, label %.lr.ph329, label %._crit_edge330, !llvm.loop !222

._crit_edge330:                                   ; preds = %.lr.ph329, %middle.block64, %bb.g
  %.7229.lcssa = phi ptr [ %.6228333, %bb.g ], [ %i.cp, %middle.block64 ], [ %i.cw, %.lr.ph329 ]
  %.7221.lcssa = phi ptr [ %.6220334, %bb.g ], [ %i.co, %middle.block64 ], [ %i.cv, %.lr.ph329 ]
  %i.cy = getelementptr inbounds [4 x i8], ptr %.7221.lcssa, i64 %i.cc ; 3 uses
  %i.cz = icmp ult ptr %i.cy, %i.ca
  br i1 %i.cz, label %bb.g, label %.thread, !llvm.loop !223

.thread:                                          ; preds = %._crit_edge330, %.thread465, %._crit_edge323.thread, %.loopexit301, %._crit_edge323
  %.8 = phi ptr [ %.2216, %.loopexit301 ], [ %i.bs, %._crit_edge323 ], [ %i.aq, %._crit_edge323.thread ], [ %i.bw, %.thread465 ], [ %i.cy, %._crit_edge330 ]
  %i.da = icmp sgt i32 %i.g, 0                    ; 2 uses
  %10 = sext i32 %i.a to i64                      ; 5 uses
  br i1 %i.da, label %.lr.ph58.i, label %zywrle_rgbyuv_32be.exit

.lr.ph58.i:                                       ; preds = %.thread
  %i.db = sub i32 %4, %i.a
  %i.dc = sext i32 %i.db to i64
  %.idx60.i = shl nuw nsw i64 %10, 2
  %i.dd = icmp sgt i32 %i.a, 0
  br i1 %i.dd, label %.lr.ph.i.preheader.us, label %._crit_edge.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph58.i, %._crit_edge.i.loopexit.us
  %.04356.i.us = phi ptr [ %i.ei, %._crit_edge.i.loopexit.us ], [ %6, %.lr.ph58.i ] ; 2 uses
  %.04455.i.us = phi ptr [ %i.el, %._crit_edge.i.loopexit.us ], [ %1, %.lr.ph58.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.04356.i.us, i64 %.idx60.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.153.i.us = phi ptr [ %i.ei, %.lr.ph.i.us ], [ %.04356.i.us, %.lr.ph.i.preheader.us ] ; 4 uses
  %.14552.i.us = phi ptr [ %i.ej, %.lr.ph.i.us ], [ %.04455.i.us, %.lr.ph.i.preheader.us ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.14552.i.us, i64 1
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.14552.i.us, i64 2
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32                    ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.14552.i.us, i64 3
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i32                    ; 2 uses
  %i.do = shl nuw nsw i32 %i.dk, 1
  %i.dp = add nuw nsw i32 %i.do, %i.dh
  %i.dq = add nuw nsw i32 %i.dp, %i.dn
  %i.dr = lshr i32 %i.dq, 2                       ; 2 uses
  %i.ds = sub nsw i32 %i.dn, %i.dk
  %i.dt = sub nsw i32 %i.dh, %i.dk
  %i.du = ashr i32 %i.ds, 1                       ; 2 uses
  %i.dv = ashr i32 %i.dt, 1                       ; 2 uses
  %i.dw = icmp eq i32 %i.dr, 0
  %i.dx = icmp eq i32 %i.du, -128
  %i.dy = icmp eq i32 %i.dv, -128
  %i.dz = trunc nsw i32 %i.dv to i8
  %i.ea = select i1 %i.dy, i8 -127, i8 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %.153.i.us, i64 2
  store i8 %i.ea, ptr %i.eb, align 1
  %i.ec = trunc nuw i32 %i.dr to i8
  %i.ed = xor i8 %i.ec, -128
  %i.ee = select i1 %i.dw, i8 -127, i8 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.153.i.us, i64 1
  store i8 %i.ee, ptr %i.ef, align 1
  %i.eg = trunc nsw i32 %i.du to i8
  %i.eh = select i1 %i.dx, i8 -127, i8 %i.eg
  store i8 %i.eh, ptr %.153.i.us, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.153.i.us, i64 4 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.14552.i.us, i64 4 ; 2 uses
  %i.ek = icmp ult ptr %i.ei, %i.de
  br i1 %i.ek, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !224

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.dc
  %i.em = icmp ult ptr %i.ei, %i.i
  br i1 %i.em, label %.lr.ph.i.preheader.us, label %zywrle_rgbyuv_32be.exit, !llvm.loop !225

._crit_edge.i:                                    ; preds = %.lr.ph58.i, %._crit_edge.i
  br label %._crit_edge.i

zywrle_rgbyuv_32be.exit:                          ; preds = %._crit_edge.i.loopexit.us, %.thread
  tail call fastcc void @wavelet(ptr noundef %6, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %5)
  %i.en = add nsw i32 %5, -1
  %i.eo = sext i32 %2 to i64                      ; 5 uses
  %i.ep = sub i32 %4, %2
  %i.eq = sext i32 %i.ep to i64                   ; 5 uses
  %i.er = icmp slt i32 %i.g, 1
  %.idx422 = shl nsw i64 %10, 2
  %i.es = icmp sgt i32 %i.a, 0
  %.idx424 = shl nsw i64 %10, 2
  %i.et = icmp sgt i32 %i.a, 0
  %.idx426 = shl nsw i64 %10, 2
  %i.eu = icmp sgt i32 %i.a, 0
  %.idx427 = shl nsw i64 %10, 2
  %i.ev = icmp sgt i32 %i.a, 0
  br label %bb.h

bb.h:                                             ; preds = %zywrle_rgbyuv_32be.exit, %.loopexit300
  %.9406 = phi ptr [ %.8, %zywrle_rgbyuv_32be.exit ], [ %.22, %.loopexit300 ] ; 2 uses
  %.0231405 = phi i32 [ 0, %zywrle_rgbyuv_32be.exit ], [ %i.iw, %.loopexit300 ] ; 3 uses
  %.0233404 = phi ptr [ %0, %zywrle_rgbyuv_32be.exit ], [ %.13246, %.loopexit300 ] ; 2 uses
  %i.ew = shl i32 2, %.0231405                    ; 9 uses
  %i.ex = ashr exact i32 %i.ew, 1                 ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ey ; 3 uses
  %i.fa = mul i32 %i.ex, %i.a
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %.idx420
  br i1 %i.da, label %.lr.ph351, label %.loopexit300

.lr.ph351:                                        ; preds = %bb.h
  %i.fe = sext i32 %i.ew to i64
  %i.ff = add i32 %i.ew, -1
  %i.fg = mul i32 %i.ff, %i.a
  %i.fh = sext i32 %i.fg to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph351, %._crit_edge343
  %.0349 = phi ptr [ %i.fc, %.lr.ph351 ], [ %i.fz, %._crit_edge343 ] ; 3 uses
  %.10348 = phi ptr [ %.9406, %.lr.ph351 ], [ %.11.lcssa, %._crit_edge343 ] ; 2 uses
  %.1234347 = phi ptr [ %.0233404, %.lr.ph351 ], [ %.2235.lcssa, %._crit_edge343 ] ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.0349, i64 %.idx422
  br i1 %i.es, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %bb.i, %.lr.ph342
  %.1340 = phi ptr [ %i.fx, %.lr.ph342 ], [ %.0349, %bb.i ] ; 4 uses
  %.11339 = phi ptr [ %.12, %.lr.ph342 ], [ %.10348, %bb.i ] ; 2 uses
  %.2235338 = phi ptr [ %.3236, %.lr.ph342 ], [ %.1234347, %bb.i ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1340, i64 2
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.1340, i64 1
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = load i8, ptr %.1340, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.2235338, i64 1
  store i8 %i.fk, ptr %i.fo, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.2235338, i64 2
  store i8 %i.fm, ptr %i.fp, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.2235338, i64 3
  store i8 %i.fn, ptr %i.fq, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.2235338, i64 4 ; 3 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %.11339 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 2
  %.not259 = icmp slt i64 %i.fv, %i.eo            ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.eq ; 2 uses
  %.3236 = select i1 %.not259, ptr %i.fr, ptr %i.fw ; 2 uses
  %.12 = select i1 %.not259, ptr %.11339, ptr %i.fw ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %.1340, i64 %i.fe ; 3 uses
  %i.fy = icmp ult ptr %i.fx, %i.fi
  br i1 %i.fy, label %.lr.ph342, label %._crit_edge343, !llvm.loop !226

._crit_edge343:                                   ; preds = %.lr.ph342, %bb.i
  %.2235.lcssa = phi ptr [ %.1234347, %bb.i ], [ %.3236, %.lr.ph342 ] ; 2 uses
  %.11.lcssa = phi ptr [ %.10348, %bb.i ], [ %.12, %.lr.ph342 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0349, %bb.i ], [ %i.fx, %.lr.ph342 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.fh ; 2 uses
  %i.ga = icmp ult ptr %i.fz, %i.fd
  br i1 %i.ga, label %bb.i, label %._crit_edge352, !llvm.loop !227

._crit_edge352:                                   ; preds = %._crit_edge343
  %i.gb = getelementptr inbounds [4 x i8], ptr %6, i64 %i.fb ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.idx420
  %i.gd = sext i32 %i.ew to i64
  %i.ge = add i32 %i.ew, -1
  %i.gf = mul i32 %i.ge, %i.a
  %i.gg = sext i32 %i.gf to i64
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge352, %._crit_edge360
  %.2366 = phi ptr [ %i.gb, %._crit_edge352 ], [ %i.gy, %._crit_edge360 ] ; 3 uses
  %.13365 = phi ptr [ %.11.lcssa, %._crit_edge352 ], [ %.14.lcssa, %._crit_edge360 ] ; 2 uses
  %.4237364 = phi ptr [ %.2235.lcssa, %._crit_edge352 ], [ %.5238.lcssa, %._crit_edge360 ] ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.2366, i64 %.idx424
  br i1 %i.et, label %.lr.ph359, label %._crit_edge360

.lr.ph359:                                        ; preds = %bb.j, %.lr.ph359
  %.3357 = phi ptr [ %i.gw, %.lr.ph359 ], [ %.2366, %bb.j ] ; 4 uses
  %.14356 = phi ptr [ %.15, %.lr.ph359 ], [ %.13365, %bb.j ] ; 2 uses
  %.5238355 = phi ptr [ %.6239, %.lr.ph359 ], [ %.4237364, %bb.j ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.3357, i64 2
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.3357, i64 1
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = load i8, ptr %.3357, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.5238355, i64 1
  store i8 %i.gj, ptr %i.gn, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.5238355, i64 2
  store i8 %i.gl, ptr %i.go, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.5238355, i64 3
  store i8 %i.gm, ptr %i.gp, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.5238355, i64 4 ; 3 uses
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %.14356 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 2
  %.not258 = icmp slt i64 %i.gu, %i.eo            ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.eq ; 2 uses
  %.6239 = select i1 %.not258, ptr %i.gq, ptr %i.gv ; 2 uses
  %.15 = select i1 %.not258, ptr %.14356, ptr %i.gv ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %.3357, i64 %i.gd ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.gh
  br i1 %i.gx, label %.lr.ph359, label %._crit_edge360, !llvm.loop !228

._crit_edge360:                                   ; preds = %.lr.ph359, %bb.j
  %.5238.lcssa = phi ptr [ %.4237364, %bb.j ], [ %.6239, %.lr.ph359 ] ; 2 uses
  %.14.lcssa = phi ptr [ %.13365, %bb.j ], [ %.15, %.lr.ph359 ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2366, %bb.j ], [ %i.gw, %.lr.ph359 ]
  %i.gy = getelementptr inbounds [4 x i8], ptr %.3.lcssa, i64 %i.gg ; 2 uses
  %i.gz = icmp ult ptr %i.gy, %i.gc
  br i1 %i.gz, label %bb.j, label %._crit_edge369, !llvm.loop !229

._crit_edge369:                                   ; preds = %._crit_edge360
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx420
  %i.hb = sext i32 %i.ew to i64
  %i.hc = add i32 %i.ew, -1
  %i.hd = mul i32 %i.hc, %i.a
  %i.he = sext i32 %i.hd to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge369, %._crit_edge377
  %.4383 = phi ptr [ %i.ez, %._crit_edge369 ], [ %i.hw, %._crit_edge377 ] ; 3 uses
  %.16382 = phi ptr [ %.14.lcssa, %._crit_edge369 ], [ %.17.lcssa, %._crit_edge377 ] ; 2 uses
  %.7240381 = phi ptr [ %.5238.lcssa, %._crit_edge369 ], [ %.8241.lcssa, %._crit_edge377 ] ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.4383, i64 %.idx426
  br i1 %i.eu, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %bb.k, %.lr.ph376
  %.5374 = phi ptr [ %i.hu, %.lr.ph376 ], [ %.4383, %bb.k ] ; 4 uses
  %.17373 = phi ptr [ %.18, %.lr.ph376 ], [ %.16382, %bb.k ] ; 2 uses
  %.8241372 = phi ptr [ %.9242, %.lr.ph376 ], [ %.7240381, %bb.k ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.5374, i64 2
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.5374, i64 1
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = load i8, ptr %.5374, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.8241372, i64 1
  store i8 %i.hh, ptr %i.hl, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.8241372, i64 2
  store i8 %i.hj, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.8241372, i64 3
  store i8 %i.hk, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.8241372, i64 4 ; 3 uses
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %.17373 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 2
  %.not257 = icmp slt i64 %i.hs, %i.eo            ; 2 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.eq ; 2 uses
  %.9242 = select i1 %.not257, ptr %i.ho, ptr %i.ht ; 2 uses
  %.18 = select i1 %.not257, ptr %.17373, ptr %i.ht ; 2 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %.5374, i64 %i.hb ; 3 uses
  %i.hv = icmp ult ptr %i.hu, %i.hf
  br i1 %i.hv, label %.lr.ph376, label %._crit_edge377, !llvm.loop !230

._crit_edge377:                                   ; preds = %.lr.ph376, %bb.k
  %.8241.lcssa = phi ptr [ %.7240381, %bb.k ], [ %.9242, %.lr.ph376 ] ; 3 uses
  %.17.lcssa = phi ptr [ %.16382, %bb.k ], [ %.18, %.lr.ph376 ] ; 3 uses
  %.5.lcssa = phi ptr [ %.4383, %bb.k ], [ %i.hu, %.lr.ph376 ]
  %i.hw = getelementptr inbounds [4 x i8], ptr %.5.lcssa, i64 %i.he ; 2 uses
  %i.hx = icmp ult ptr %i.hw, %i.ha
  br i1 %i.hx, label %bb.k, label %._crit_edge386, !llvm.loop !231

._crit_edge386:                                   ; preds = %._crit_edge377
  %i.hy = icmp ne i32 %.0231405, %i.en
  %brmerge = or i1 %i.hy, %i.er
  br i1 %brmerge, label %.loopexit300, label %.lr.ph401

.lr.ph401:                                        ; preds = %._crit_edge386
  %i.hz = sext i32 %i.ew to i64
  %i.ia = add i32 %i.ew, -1
  %i.ib = mul i32 %i.ia, %i.a
  %i.ic = sext i32 %i.ib to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph401, %._crit_edge394
  %.6400 = phi ptr [ %6, %.lr.ph401 ], [ %i.iu, %._crit_edge394 ] ; 3 uses
  %.19399 = phi ptr [ %.17.lcssa, %.lr.ph401 ], [ %.20.lcssa, %._crit_edge394 ] ; 2 uses
  %.10243398 = phi ptr [ %.8241.lcssa, %.lr.ph401 ], [ %.11244.lcssa, %._crit_edge394 ] ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.6400, i64 %.idx427
  br i1 %i.ev, label %.lr.ph393, label %._crit_edge394

.lr.ph393:                                        ; preds = %bb.l, %.lr.ph393
  %.7391 = phi ptr [ %i.is, %.lr.ph393 ], [ %.6400, %bb.l ] ; 4 uses
  %.20390 = phi ptr [ %.21, %.lr.ph393 ], [ %.19399, %bb.l ] ; 2 uses
  %.11244389 = phi ptr [ %.12245, %.lr.ph393 ], [ %.10243398, %bb.l ] ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.7391, i64 2
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %.7391, i64 1
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = load i8, ptr %.7391, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.11244389, i64 1
  store i8 %i.if, ptr %i.ij, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.11244389, i64 2
  store i8 %i.ih, ptr %i.ik, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.11244389, i64 3
  store i8 %i.ii, ptr %i.il, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %.11244389, i64 4 ; 3 uses
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %.20390 to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = ashr exact i64 %i.ip, 2
  %.not256 = icmp slt i64 %i.iq, %i.eo            ; 2 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.eq ; 2 uses
  %.12245 = select i1 %.not256, ptr %i.im, ptr %i.ir ; 2 uses
  %.21 = select i1 %.not256, ptr %.20390, ptr %i.ir ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %.7391, i64 %i.hz ; 3 uses
  %i.it = icmp ult ptr %i.is, %i.id
  br i1 %i.it, label %.lr.ph393, label %._crit_edge394, !llvm.loop !232

._crit_edge394:                                   ; preds = %.lr.ph393, %bb.l
  %.11244.lcssa = phi ptr [ %.10243398, %bb.l ], [ %.12245, %.lr.ph393 ] ; 2 uses
  %.20.lcssa = phi ptr [ %.19399, %bb.l ], [ %.21, %.lr.ph393 ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6400, %bb.l ], [ %i.is, %.lr.ph393 ]
  %i.iu = getelementptr inbounds [4 x i8], ptr %.7.lcssa, i64 %i.ic ; 2 uses
  %i.iv = icmp ult ptr %i.iu, %i.i
  br i1 %i.iv, label %bb.l, label %.loopexit300, !llvm.loop !233

.loopexit300:                                     ; preds = %._crit_edge394, %bb.h, %._crit_edge386
  %.13246 = phi ptr [ %.8241.lcssa, %._crit_edge386 ], [ %.0233404, %bb.h ], [ %.11244.lcssa, %._crit_edge394 ] ; 2 uses
  %.22 = phi ptr [ %.17.lcssa, %._crit_edge386 ], [ %.9406, %bb.h ], [ %.20.lcssa, %._crit_edge394 ] ; 2 uses
  %i.iw = add nuw nsw i32 %.0231405, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.iw, %5
  br i1 %exitcond.not, label %bb.m, label %bb.h, !llvm.loop !234

bb.m:                                             ; preds = %.loopexit300
  %i.ix = mul i32 %3, %2
  %i.iy = sext i32 %i.ix to i64
  %.idx428 = shl nsw i64 %i.iy, 2                 ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %6, i64 %.idx428
  %i.ja = icmp slt i64 %.idx420, %.idx428
  br i1 %i.ja, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %bb.m, %.lr.ph411
  %.23409 = phi ptr [ %.24, %.lr.ph411 ], [ %.22, %bb.m ] ; 2 uses
  %.8230408 = phi ptr [ %i.ji, %.lr.ph411 ], [ %i.i, %bb.m ] ; 2 uses
  %.14247407 = phi ptr [ %.15248, %.lr.ph411 ], [ %.13246, %bb.m ] ; 2 uses
  %i.jb = load i32, ptr %.8230408, align 4
  store i32 %i.jb, ptr %.14247407, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %.14247407, i64 4 ; 3 uses
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %.23409 to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = ashr exact i64 %i.jf, 2
  %.not = icmp slt i64 %i.jg, %i.eo               ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.eq ; 2 uses
  %.15248 = select i1 %.not, ptr %i.jc, ptr %i.jh
  %.24 = select i1 %.not, ptr %.23409, ptr %i.jh
  %i.ji = getelementptr inbounds nuw i8, ptr %.8230408, i64 4 ; 2 uses
  %i.jj = icmp ult ptr %i.ji, %i.iz
  br i1 %i.jj, label %.lr.ph411, label %.loopexit, !llvm.loop !235

.loopexit:                                        ; preds = %.lr.ph411, %bb.m, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile24ale(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
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
  br i1 %i.w, label %.preheader153, label %bb.c, !llvm.loop !236

bb.c:                                             ; preds = %.preheader153
  %i.x = add i32 %.0131154, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1132 = phi i32 [ %.0131154, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.1130 = phi i32 [ %i.t, %bb.b ], [ %.0129155, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.r, %bb.b ], [ %i.u, %bb.c ]  ; 2 uses
  %i.y = tail call i32 @palette_put(ptr noundef nonnull %i.i, i32 noundef %i.q) #9 ; 0 uses
  %i.z = icmp ult ptr %.2, %i.l
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !237

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0131.lcssa = phi i32 [ 0, %bb.a ], [ %.1132, %bb.d ]
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.1130, %bb.d ]
  %i.aa = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i8 0, ptr %i.g, align 1, !annotation !10
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !10
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
  br i1 %i.aq, label %.lr.ph162, label %._crit_edge163, !llvm.loop !238

._crit_edge163:                                   ; preds = %.lr.ph162, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  %i.ar = trunc nuw i8 %i.ag to i1
  br i1 %i.ar, label %.preheader, label %bb.q

.thread148:                                       ; preds = %bb.f
  %i.as = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.at = shl nuw i8 %i.as, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.at) #9
  %i.au = trunc nuw i8 %i.as to i1
  br i1 %i.au, label %.preheader, label %.thread149

.preheader:                                       ; preds = %._crit_edge163, %.thread148
  br i1 %i.p, label %.lr.ph183, label %.loopexit

.lr.ph183:                                        ; preds = %.preheader, %bb.p
  %.3182 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.av = load i32, ptr %.3182, align 4           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph183
  %.3.pn = phi ptr [ %.3182, %.lr.ph183 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 4 ; 5 uses
  %i.aw = load i32, ptr %.4, align 4
  %i.ax = icmp eq i32 %i.aw, %i.av
  %i.ay = icmp ult ptr %.4, %i.l                  ; 2 uses
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.i, !llvm.loop !239

bb.i:                                             ; preds = %bb.h
  %i.ba = ptrtoint ptr %.4 to i64
  %i.bb = ptrtoint ptr %.3182 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = trunc i64 %i.bd to i32                  ; 3 uses
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bf = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.av) #9
  %i.bg = trunc i32 %i.bf to i8                   ; 4 uses
  %i.bh = icmp slt i32 %i.be, 3
  br i1 %i.bh, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp eq i32 %i.be, 2
  br i1 %i.bi, label %bb.l, label %bb.p, !llvm.loop !240

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bg) #9
  br label %bb.p, !llvm.loop !240

bb.m:                                             ; preds = %bb.j
  %i.bj = or i8 %i.bg, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bj) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.av, ptr %i.b, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = add i32 %i.be, -1                       ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 254
  br i1 %i.bl, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %bb.o, %.lr.ph179
  %.0124177 = phi i32 [ %i.bm, %.lr.ph179 ], [ %i.bk, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bm = add nsw i32 %.0124177, -255             ; 2 uses
  %i.bn = icmp samesign ugt i32 %.0124177, 509
  br i1 %i.bn, label %.lr.ph179, label %._crit_edge180, !llvm.loop !241

._crit_edge180:                                   ; preds = %.lr.ph179, %bb.o
  %.0124.lcssa = phi i32 [ %i.bk, %bb.o ], [ %i.bm, %.lr.ph179 ]
  %i.bo = trunc i32 %.0124.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge180
  %.sink = phi i8 [ %i.bo, %._crit_edge180 ], [ %i.bg, %bb.l ], [ %i.bg, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.ay, label %.lr.ph183, label %.loopexit

bb.q:                                             ; preds = %._crit_edge163
  %i.bp = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bq = icmp ult i64 %i.bp, 17
  br i1 %i.bq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__.zrle_encode_tile24ale) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.br = call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.bs = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = icmp sgt i32 %4, 0
  br i1 %i.bv, label %.lr.ph176, label %.loopexit

.lr.ph176:                                        ; preds = %bb.s
  %i.bw = sext i32 %3 to i64
  %i.bx = trunc i32 %i.bu to i8
  %.idx184 = shl nsw i64 %i.bw, 2
  %i.by = icmp sgt i32 %3, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph176, %._crit_edge169.thread
  %.5174 = phi ptr [ %2, %.lr.ph176 ], [ %.6.lcssa203, %._crit_edge169.thread ] ; 3 uses
  %.1128173 = phi i32 [ 0, %.lr.ph176 ], [ %i.co, %._crit_edge169.thread ]
  %i.bz = getelementptr inbounds i8, ptr %.5174, i64 %.idx184 ; 2 uses
  br i1 %i.by, label %.lr.ph168, label %._crit_edge169.thread

.lr.ph168:                                        ; preds = %bb.t, %.lr.ph168.backedge
  %.0166 = phi i32 [ %i.ce, %.lr.ph168.backedge ], [ 0, %bb.t ]
  %.0122165 = phi i8 [ %.0122165.be, %.lr.ph168.backedge ], [ 0, %bb.t ]
  %.6164 = phi ptr [ %i.ca, %.lr.ph168.backedge ], [ %.5174, %bb.t ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.6164, i64 4 ; 6 uses
  %i.cb = load i32, ptr %.6164, align 4
  %i.cc = call i32 @palette_idx(ptr noundef nonnull %i.i, i32 noundef %i.cb) #9
  %i.cd = shl i32 %.0166, %i.bu
  %i.ce = or i32 %i.cc, %i.cd                     ; 3 uses
  %i.cf = add i8 %.0122165, %i.bx                 ; 4 uses
  %i.cg = icmp ugt i8 %i.cf, 7
  br i1 %i.cg, label %.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph168
  %i.ch = icmp ult ptr %i.ca, %i.bz
  br i1 %i.ch, label %.lr.ph168.backedge, label %._crit_edge169

.lr.ph168.backedge:                               ; preds = %bb.u, %.thread
  %.0122165.be = phi i8 [ 0, %.thread ], [ %i.cf, %bb.u ]
  br label %.lr.ph168, !llvm.loop !242

.thread:                                          ; preds = %.lr.ph168
  %i.ci = trunc i32 %i.ce to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ci) #9
  %i.cj = icmp ult ptr %i.ca, %i.bz
  br i1 %i.cj, label %.lr.ph168.backedge, label %._crit_edge169.thread

._crit_edge169:                                   ; preds = %bb.u
  %.not139 = icmp eq i8 %i.cf, 0
  br i1 %.not139, label %._crit_edge169.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge169
  %i.ck = trunc i32 %i.ce to i16
  %narrow = sub nuw nsw i8 8, %i.cf
  %i.cl = zext nneg i8 %narrow to i16
  %i.cm = shl i16 %i.ck, %i.cl
  %i.cn = trunc i16 %i.cm to i8
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.cn) #9
  br label %._crit_edge169.thread

._crit_edge169.thread:                            ; preds = %.thread, %bb.t, %bb.v, %._crit_edge169
  %.6.lcssa203 = phi ptr [ %.5174, %bb.t ], [ %i.ca, %bb.v ], [ %i.ca, %._crit_edge169 ], [ %i.ca, %.thread ]
  %i.co = add nuw nsw i32 %.1128173, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !243

.thread149:                                       ; preds = %.thread148
  %i.cp = add nsw i32 %5, -1
  %or.cond141 = icmp ult i32 %i.cp, 127
  br i1 %or.cond141, label %bb.w, label %.preheader151

.preheader151:                                    ; preds = %.thread149
  br i1 %i.p, label %.lr.ph159, label %.loopexit

bb.w:                                             ; preds = %.thread149
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 86848
  tail call fastcc void @zywrle_analyze_32le(ptr noundef %2, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %3, i32 noundef %5, ptr noundef nonnull %i.cq)
  %i.cr = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile24ale(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.cr)
  br label %.loopexit

.lr.ph159:                                        ; preds = %.preheader151, %.lr.ph159
  %.7158 = phi ptr [ %i.ct, %.lr.ph159 ], [ %2, %.preheader151 ] ; 2 uses
  %i.cs = load i32, ptr %.7158, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.cs, ptr %i.a, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = getelementptr inbounds nuw i8, ptr %.7158, i64 4 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.l
  br i1 %i.cu, label %.lr.ph159, label %.loopexit, !llvm.loop !244

.loopexit:                                        ; preds = %.lr.ph159, %._crit_edge169.thread, %bb.p, %.preheader151, %bb.s, %.preheader, %bb.w, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @zywrle_analyze_32le(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 1, 256) %5, ptr nofree noundef captures(address) %6) unnamed_addr #6 {
bb.a:
  %notmask.i = shl nsw i32 -1, %5                 ; 2 uses
  %i.a = and i32 %notmask.i, %2                   ; 23 uses
  %i.b = and i32 %notmask.i, %3                   ; 7 uses
  %i.c = icmp eq i32 %i.a, 0
  %i.d = icmp eq i32 %i.b, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i32 %2, %i.a                         ; 6 uses
  %i.f = sub i32 %3, %i.b
  %i.g = mul i32 %i.a, %i.b                       ; 3 uses
  %i.h = sext i32 %i.g to i64
  %.idx420 = shl nsw i64 %i.h, 2                  ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %6, i64 %.idx420 ; 6 uses
  %.not299 = icmp eq i32 %2, %i.a                 ; 3 uses
  br i1 %.not299, label %.loopexit301, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j ; 3 uses
  %i.l = mul i32 %i.b, %4                         ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.m, 2
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph309, label %.loopexit301

.lr.ph309:                                        ; preds = %bb.c
  %7 = sext i32 %i.e to i64
  %i.p = sub i32 %4, %i.e
  %i.q = sext i32 %i.p to i64
  %.idx415 = shl nsw i64 %7, 2                    ; 2 uses
  %i.r = icmp sgt i32 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph309, %._crit_edge
  %.0214307 = phi ptr [ %i.k, %.lr.ph309 ], [ %i.am, %._crit_edge ] ; 6 uses
  %.0222306 = phi ptr [ %i.i, %.lr.ph309 ], [ %.1223.lcssa, %._crit_edge ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0214307, i64 %.idx415
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %.021430718 = ptrtoaddr ptr %.0214307 to i64    ; 4 uses
  %.022230617 = ptrtoaddr ptr %.0222306 to i64
  %i.t = add i64 %.idx415, %.021430718
  %i.u = add i64 %.021430718, 4
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.w = xor i64 %.021430718, -1
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  %i.aa = sub i64 %.021430718, %.022230617
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond68 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond68, label %.lr.ph.preheader84, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %.0214307, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %.0222306, i64 %i.ab ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0214307, i64 %i.ae ; 2 uses
  %next.gep19 = getelementptr i8, ptr %.0222306, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load20 = load <4 x i32>, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %next.gep19, i64 16
  store <4 x i32> %wide.load, ptr %next.gep19, align 4
  store <4 x i32> %wide.load20, ptr %i.ag, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader84

.lr.ph.preheader84:                               ; preds = %.lr.ph.preheader, %middle.block
  %.1215304.ph = phi ptr [ %.0214307, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.1223303.ph = phi ptr [ %.0222306, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader84, %.lr.ph
  %.1215304 = phi ptr [ %i.aj, %.lr.ph ], [ %.1215304.ph, %.lr.ph.preheader84 ] ; 2 uses
  %.1223303 = phi ptr [ %i.ak, %.lr.ph ], [ %.1223303.ph, %.lr.ph.preheader84 ] ; 2 uses
  %i.ai = load i32, ptr %.1215304, align 4
  store i32 %i.ai, ptr %.1223303, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.1215304, i64 4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1223303, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.s
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !246

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.1223.lcssa = phi ptr [ %.0222306, %bb.d ], [ %i.ad, %middle.block ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.1215.lcssa = phi ptr [ %.0214307, %bb.d ], [ %i.ac, %middle.block ], [ %i.aj, %.lr.ph ]
  %i.am = getelementptr inbounds [4 x i8], ptr %.1215.lcssa, i64 %i.q ; 3 uses
  %i.an = icmp ult ptr %i.am, %i.n
  br i1 %i.an, label %bb.d, label %.loopexit301, !llvm.loop !247

.loopexit301:                                     ; preds = %._crit_edge, %bb.c, %bb.b
  %.2224 = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %.1223.lcssa, %._crit_edge ]
  %.2216 = phi ptr [ %0, %bb.b ], [ %i.k, %bb.c ], [ %i.am, %._crit_edge ]
  %.not298 = icmp eq i32 %3, %i.b
  br i1 %.not298, label %.thread, label %bb.e

bb.e:                                             ; preds = %.loopexit301
  %i.ao = mul i32 %i.b, %4
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap ; 3 uses
  %i.ar = mul i32 %i.f, %4                        ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %.idx416 = shl nsw i64 %i.as, 2                 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %.idx416
  %i.au = icmp sgt i32 %i.ar, 0
  br i1 %i.au, label %.lr.ph322, label %._crit_edge323.thread

.lr.ph322:                                        ; preds = %bb.e
  %8 = sext i32 %i.a to i64
  %i.av = sub i32 %4, %i.a
  %i.aw = sext i32 %i.av to i64
  %.idx417 = shl nsw i64 %8, 2                    ; 2 uses
  %i.ax = icmp sgt i32 %i.a, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph322, %._crit_edge316
  %.3217320 = phi ptr [ %i.aq, %.lr.ph322 ], [ %i.bs, %._crit_edge316 ] ; 6 uses
  %.3225319 = phi ptr [ %.2224, %.lr.ph322 ], [ %.4226.lcssa, %._crit_edge316 ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3217320, i64 %.idx417
  br i1 %i.ax, label %.lr.ph315.preheader, label %._crit_edge316

.lr.ph315.preheader:                              ; preds = %bb.f
  %.321732027 = ptrtoaddr ptr %.3217320 to i64    ; 4 uses
  %.322531926 = ptrtoaddr ptr %.3225319 to i64
  %i.az = add i64 %.idx417, %.321732027
  %i.ba = add i64 %.321732027, 4
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ba)
  %i.bc = xor i64 %.321732027, -1
  %i.bd = add i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check29 = icmp ult i64 %i.bd, 28
  %i.bg = sub i64 %.321732027, %.322531926
  %diff.check31 = icmp ugt i64 %i.bg, -32
  %or.cond69 = select i1 %min.iters.check29, i1 true, i1 %diff.check31
  br i1 %or.cond69, label %.lr.ph315.preheader80, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph315.preheader
  %n.vec33 = and i64 %i.bf, 9223372036854775800   ; 3 uses
  %i.bh = shl i64 %n.vec33, 2                     ; 2 uses
  %i.bi = getelementptr i8, ptr %.3217320, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %.3225319, i64 %i.bh ; 2 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.bk = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %.3217320, i64 %i.bk ; 2 uses
  %next.gep37 = getelementptr i8, ptr %.3225319, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load38 = load <4 x i32>, ptr %next.gep36, align 4
  %wide.load39 = load <4 x i32>, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %next.gep37, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep37, align 4
  store <4 x i32> %wide.load39, ptr %i.bm, align 4
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.bn, label %middle.block41, label %vector.body34, !llvm.loop !248

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %i.bf, %n.vec33
  br i1 %cmp.n42, label %._crit_edge316, label %.lr.ph315.preheader80

.lr.ph315.preheader80:                            ; preds = %.lr.ph315.preheader, %middle.block41
  %.4218313.ph = phi ptr [ %.3217320, %.lr.ph315.preheader ], [ %i.bi, %middle.block41 ]
  %.4226312.ph = phi ptr [ %.3225319, %.lr.ph315.preheader ], [ %i.bj, %middle.block41 ]
  br label %.lr.ph315

.lr.ph315:                                        ; preds = %.lr.ph315.preheader80, %.lr.ph315
  %.4218313 = phi ptr [ %i.bp, %.lr.ph315 ], [ %.4218313.ph, %.lr.ph315.preheader80 ] ; 2 uses
  %.4226312 = phi ptr [ %i.bq, %.lr.ph315 ], [ %.4226312.ph, %.lr.ph315.preheader80 ] ; 2 uses
  %i.bo = load i32, ptr %.4218313, align 4
  store i32 %i.bo, ptr %.4226312, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.4218313, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.4226312, i64 4 ; 2 uses
  %i.br = icmp ult ptr %i.bp, %i.ay
  br i1 %i.br, label %.lr.ph315, label %._crit_edge316, !llvm.loop !249

._crit_edge316:                                   ; preds = %.lr.ph315, %middle.block41, %bb.f
  %.4226.lcssa = phi ptr [ %.3225319, %bb.f ], [ %i.bj, %middle.block41 ], [ %i.bq, %.lr.ph315 ] ; 2 uses
  %.4218.lcssa = phi ptr [ %.3217320, %bb.f ], [ %i.bi, %middle.block41 ], [ %i.bp, %.lr.ph315 ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %.4218.lcssa, i64 %i.aw ; 3 uses
  %i.bt = icmp ult ptr %i.bs, %i.at
  br i1 %i.bt, label %bb.f, label %._crit_edge323, !llvm.loop !250

._crit_edge323:                                   ; preds = %._crit_edge316
  br i1 %.not299, label %.thread, label %.lr.ph336

._crit_edge323.thread:                            ; preds = %bb.e
  br i1 %.not299, label %.thread, label %.thread465

.thread465:                                       ; preds = %._crit_edge323.thread
  %i.bu = sext i32 %i.a to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ap
  br label %.thread

.lr.ph336:                                        ; preds = %._crit_edge323
  %i.bx = sext i32 %i.a to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ap ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx416
  %9 = sext i32 %i.e to i64
  %i.cb = sub i32 %4, %i.e
  %i.cc = sext i32 %i.cb to i64
  %.idx419 = shl nsw i64 %9, 2                    ; 2 uses
  %i.cd = icmp sgt i32 %i.e, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph336, %._crit_edge330
  %.6220334 = phi ptr [ %i.bz, %.lr.ph336 ], [ %i.cy, %._crit_edge330 ] ; 6 uses
  %.6228333 = phi ptr [ %.4226.lcssa, %.lr.ph336 ], [ %.7229.lcssa, %._crit_edge330 ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.6220334, i64 %.idx419
  br i1 %i.cd, label %.lr.ph329.preheader, label %._crit_edge330

.lr.ph329.preheader:                              ; preds = %bb.g
  %.622033450 = ptrtoaddr ptr %.6220334 to i64    ; 4 uses
  %.622833349 = ptrtoaddr ptr %.6228333 to i64
  %i.cf = add i64 %.idx419, %.622033450
  %i.cg = add i64 %.622033450, 4
  %i.ch = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.cg)
  %i.ci = xor i64 %.622033450, -1
  %i.cj = add i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.cj, 28
  %i.cm = sub i64 %.622033450, %.622833349
  %diff.check54 = icmp ugt i64 %i.cm, -32
  %or.cond70 = select i1 %min.iters.check52, i1 true, i1 %diff.check54
  br i1 %or.cond70, label %.lr.ph329.preheader76, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph329.preheader
  %n.vec56 = and i64 %i.cl, 9223372036854775800   ; 3 uses
  %i.cn = shl i64 %n.vec56, 2                     ; 2 uses
  %i.co = getelementptr i8, ptr %.6220334, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.6228333, i64 %i.cn ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next63, %vector.body57 ] ; 2 uses
  %i.cq = shl i64 %index58, 2                     ; 2 uses
  %next.gep59 = getelementptr i8, ptr %.6220334, i64 %i.cq ; 2 uses
  %next.gep60 = getelementptr i8, ptr %.6228333, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load61 = load <4 x i32>, ptr %next.gep59, align 4
  %wide.load62 = load <4 x i32>, ptr %i.cr, align 4
  %i.cs = getelementptr i8, ptr %next.gep60, i64 16
  store <4 x i32> %wide.load61, ptr %next.gep60, align 4
  store <4 x i32> %wide.load62, ptr %i.cs, align 4
  %index.next63 = add nuw i64 %index58, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.ct, label %middle.block64, label %vector.body57, !llvm.loop !251

middle.block64:                                   ; preds = %vector.body57
  %cmp.n65 = icmp eq i64 %i.cl, %n.vec56
  br i1 %cmp.n65, label %._crit_edge330, label %.lr.ph329.preheader76

.lr.ph329.preheader76:                            ; preds = %.lr.ph329.preheader, %middle.block64
  %.7221327.ph = phi ptr [ %.6220334, %.lr.ph329.preheader ], [ %i.co, %middle.block64 ]
  %.7229326.ph = phi ptr [ %.6228333, %.lr.ph329.preheader ], [ %i.cp, %middle.block64 ]
  br label %.lr.ph329

.lr.ph329:                                        ; preds = %.lr.ph329.preheader76, %.lr.ph329
  %.7221327 = phi ptr [ %i.cv, %.lr.ph329 ], [ %.7221327.ph, %.lr.ph329.preheader76 ] ; 2 uses
  %.7229326 = phi ptr [ %i.cw, %.lr.ph329 ], [ %.7229326.ph, %.lr.ph329.preheader76 ] ; 2 uses
  %i.cu = load i32, ptr %.7221327, align 4
  store i32 %i.cu, ptr %.7229326, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.7221327, i64 4 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.7229326, i64 4 ; 2 uses
  %i.cx = icmp ult ptr %i.cv, %i.ce
  br i1 %i.cx, label %.lr.ph329, label %._crit_edge330, !llvm.loop !252

._crit_edge330:                                   ; preds = %.lr.ph329, %middle.block64, %bb.g
  %.7229.lcssa = phi ptr [ %.6228333, %bb.g ], [ %i.cp, %middle.block64 ], [ %i.cw, %.lr.ph329 ]
  %.7221.lcssa = phi ptr [ %.6220334, %bb.g ], [ %i.co, %middle.block64 ], [ %i.cv, %.lr.ph329 ]
  %i.cy = getelementptr inbounds [4 x i8], ptr %.7221.lcssa, i64 %i.cc ; 3 uses
  %i.cz = icmp ult ptr %i.cy, %i.ca
  br i1 %i.cz, label %bb.g, label %.thread, !llvm.loop !253

.thread:                                          ; preds = %._crit_edge330, %.thread465, %._crit_edge323.thread, %.loopexit301, %._crit_edge323
  %.8 = phi ptr [ %.2216, %.loopexit301 ], [ %i.bs, %._crit_edge323 ], [ %i.aq, %._crit_edge323.thread ], [ %i.bw, %.thread465 ], [ %i.cy, %._crit_edge330 ]
  %i.da = icmp sgt i32 %i.g, 0                    ; 2 uses
  %10 = sext i32 %i.a to i64                      ; 5 uses
  br i1 %i.da, label %.lr.ph58.i, label %zywrle_rgbyuv_32le.exit

.lr.ph58.i:                                       ; preds = %.thread
  %i.db = sub i32 %4, %i.a
  %i.dc = sext i32 %i.db to i64
  %.idx60.i = shl nuw nsw i64 %10, 2
  %i.dd = icmp sgt i32 %i.a, 0
  br i1 %i.dd, label %.lr.ph.i.preheader.us, label %._crit_edge.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph58.i, %._crit_edge.i.loopexit.us
  %.04356.i.us = phi ptr [ %i.eh, %._crit_edge.i.loopexit.us ], [ %6, %.lr.ph58.i ] ; 2 uses
  %.04455.i.us = phi ptr [ %i.ek, %._crit_edge.i.loopexit.us ], [ %1, %.lr.ph58.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.04356.i.us, i64 %.idx60.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.153.i.us = phi ptr [ %i.eh, %.lr.ph.i.us ], [ %.04356.i.us, %.lr.ph.i.preheader.us ] ; 4 uses
  %.14552.i.us = phi ptr [ %i.ei, %.lr.ph.i.us ], [ %.04455.i.us, %.lr.ph.i.preheader.us ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.14552.i.us, i64 2
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.14552.i.us, i64 1
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32                    ; 3 uses
  %i.dl = load i8, ptr %.14552.i.us, align 1
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = shl nuw nsw i32 %i.dk, 1
  %i.do = add nuw nsw i32 %i.dn, %i.dh
  %i.dp = add nuw nsw i32 %i.do, %i.dm
  %i.dq = lshr i32 %i.dp, 2                       ; 2 uses
  %i.dr = sub nsw i32 %i.dm, %i.dk
  %i.ds = sub nsw i32 %i.dh, %i.dk
  %i.dt = ashr i32 %i.dr, 1                       ; 2 uses
  %i.du = ashr i32 %i.ds, 1                       ; 2 uses
  %i.dv = icmp eq i32 %i.dq, 0
  %i.dw = icmp eq i32 %i.dt, -128
  %i.dx = icmp eq i32 %i.du, -128
  %i.dy = trunc nsw i32 %i.du to i8
  %i.dz = select i1 %i.dx, i8 -127, i8 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %.153.i.us, i64 2
  store i8 %i.dz, ptr %i.ea, align 1
  %i.eb = trunc nuw i32 %i.dq to i8
  %i.ec = xor i8 %i.eb, -128
  %i.ed = select i1 %i.dv, i8 -127, i8 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %.153.i.us, i64 1
  store i8 %i.ed, ptr %i.ee, align 1
  %i.ef = trunc nsw i32 %i.dt to i8
  %i.eg = select i1 %i.dw, i8 -127, i8 %i.ef
  store i8 %i.eg, ptr %.153.i.us, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.153.i.us, i64 4 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.14552.i.us, i64 4 ; 2 uses
  %i.ej = icmp ult ptr %i.eh, %i.de
  br i1 %i.ej, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !254

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.dc
  %i.el = icmp ult ptr %i.eh, %i.i
  br i1 %i.el, label %.lr.ph.i.preheader.us, label %zywrle_rgbyuv_32le.exit, !llvm.loop !255

._crit_edge.i:                                    ; preds = %.lr.ph58.i, %._crit_edge.i
  br label %._crit_edge.i

zywrle_rgbyuv_32le.exit:                          ; preds = %._crit_edge.i.loopexit.us, %.thread
  tail call fastcc void @wavelet(ptr noundef %6, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %5)
  %i.em = add nsw i32 %5, -1
  %i.en = sext i32 %2 to i64                      ; 5 uses
  %i.eo = sub i32 %4, %2
  %i.ep = sext i32 %i.eo to i64                   ; 5 uses
  %i.eq = icmp slt i32 %i.g, 1
  %.idx422 = shl nsw i64 %10, 2
  %i.er = icmp sgt i32 %i.a, 0
  %.idx424 = shl nsw i64 %10, 2
  %i.es = icmp sgt i32 %i.a, 0
  %.idx426 = shl nsw i64 %10, 2
  %i.et = icmp sgt i32 %i.a, 0
  %.idx427 = shl nsw i64 %10, 2
  %i.eu = icmp sgt i32 %i.a, 0
  br label %bb.h

bb.h:                                             ; preds = %zywrle_rgbyuv_32le.exit, %.loopexit300
  %.9406 = phi ptr [ %.8, %zywrle_rgbyuv_32le.exit ], [ %.22, %.loopexit300 ] ; 2 uses
  %.0231405 = phi i32 [ 0, %zywrle_rgbyuv_32le.exit ], [ %i.ir, %.loopexit300 ] ; 3 uses
  %.0233404 = phi ptr [ %0, %zywrle_rgbyuv_32le.exit ], [ %.13246, %.loopexit300 ] ; 2 uses
  %i.ev = shl i32 2, %.0231405                    ; 9 uses
  %i.ew = ashr exact i32 %i.ev, 1                 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ex ; 3 uses
  %i.ez = mul i32 %i.ew, %i.a
  %i.fa = sext i32 %i.ez to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %.idx420
  br i1 %i.da, label %.lr.ph351, label %.loopexit300

.lr.ph351:                                        ; preds = %bb.h
  %i.fd = sext i32 %i.ev to i64
  %i.fe = add i32 %i.ev, -1
  %i.ff = mul i32 %i.fe, %i.a
  %i.fg = sext i32 %i.ff to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph351, %._crit_edge343
  %.0349 = phi ptr [ %i.fb, %.lr.ph351 ], [ %i.fx, %._crit_edge343 ] ; 3 uses
  %.10348 = phi ptr [ %.9406, %.lr.ph351 ], [ %.11.lcssa, %._crit_edge343 ] ; 2 uses
  %.1234347 = phi ptr [ %.0233404, %.lr.ph351 ], [ %.2235.lcssa, %._crit_edge343 ] ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %.0349, i64 %.idx422
  br i1 %i.er, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %bb.i, %.lr.ph342
  %.1340 = phi ptr [ %i.fv, %.lr.ph342 ], [ %.0349, %bb.i ] ; 4 uses
  %.11339 = phi ptr [ %.12, %.lr.ph342 ], [ %.10348, %bb.i ] ; 2 uses
  %.2235338 = phi ptr [ %.3236, %.lr.ph342 ], [ %.1234347, %bb.i ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.1340, i64 2
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.1340, i64 1
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = load i8, ptr %.1340, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.2235338, i64 2
  store i8 %i.fj, ptr %i.fn, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.2235338, i64 1
  store i8 %i.fl, ptr %i.fo, align 1
  store i8 %i.fm, ptr %.2235338, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.2235338, i64 4 ; 3 uses
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %.11339 to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 2
  %.not259 = icmp slt i64 %i.ft, %i.en            ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ep ; 2 uses
  %.3236 = select i1 %.not259, ptr %i.fp, ptr %i.fu ; 2 uses
  %.12 = select i1 %.not259, ptr %.11339, ptr %i.fu ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %.1340, i64 %i.fd ; 3 uses
  %i.fw = icmp ult ptr %i.fv, %i.fh
  br i1 %i.fw, label %.lr.ph342, label %._crit_edge343, !llvm.loop !256

._crit_edge343:                                   ; preds = %.lr.ph342, %bb.i
  %.2235.lcssa = phi ptr [ %.1234347, %bb.i ], [ %.3236, %.lr.ph342 ] ; 2 uses
  %.11.lcssa = phi ptr [ %.10348, %bb.i ], [ %.12, %.lr.ph342 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0349, %bb.i ], [ %i.fv, %.lr.ph342 ]
  %i.fx = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.fg ; 2 uses
  %i.fy = icmp ult ptr %i.fx, %i.fc
  br i1 %i.fy, label %bb.i, label %._crit_edge352, !llvm.loop !257

._crit_edge352:                                   ; preds = %._crit_edge343
  %i.fz = getelementptr inbounds [4 x i8], ptr %6, i64 %i.fa ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx420
  %i.gb = sext i32 %i.ev to i64
  %i.gc = add i32 %i.ev, -1
  %i.gd = mul i32 %i.gc, %i.a
  %i.ge = sext i32 %i.gd to i64
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge352, %._crit_edge360
  %.2366 = phi ptr [ %i.fz, %._crit_edge352 ], [ %i.gv, %._crit_edge360 ] ; 3 uses
  %.13365 = phi ptr [ %.11.lcssa, %._crit_edge352 ], [ %.14.lcssa, %._crit_edge360 ] ; 2 uses
  %.4237364 = phi ptr [ %.2235.lcssa, %._crit_edge352 ], [ %.5238.lcssa, %._crit_edge360 ] ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.2366, i64 %.idx424
  br i1 %i.es, label %.lr.ph359, label %._crit_edge360

.lr.ph359:                                        ; preds = %bb.j, %.lr.ph359
  %.3357 = phi ptr [ %i.gt, %.lr.ph359 ], [ %.2366, %bb.j ] ; 4 uses
  %.14356 = phi ptr [ %.15, %.lr.ph359 ], [ %.13365, %bb.j ] ; 2 uses
  %.5238355 = phi ptr [ %.6239, %.lr.ph359 ], [ %.4237364, %bb.j ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.3357, i64 2
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.3357, i64 1
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = load i8, ptr %.3357, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.5238355, i64 2
  store i8 %i.gh, ptr %i.gl, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %.5238355, i64 1
  store i8 %i.gj, ptr %i.gm, align 1
  store i8 %i.gk, ptr %.5238355, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.5238355, i64 4 ; 3 uses
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %.14356 to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 2
  %.not258 = icmp slt i64 %i.gr, %i.en            ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.ep ; 2 uses
  %.6239 = select i1 %.not258, ptr %i.gn, ptr %i.gs ; 2 uses
  %.15 = select i1 %.not258, ptr %.14356, ptr %i.gs ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %.3357, i64 %i.gb ; 3 uses
  %i.gu = icmp ult ptr %i.gt, %i.gf
  br i1 %i.gu, label %.lr.ph359, label %._crit_edge360, !llvm.loop !258

._crit_edge360:                                   ; preds = %.lr.ph359, %bb.j
  %.5238.lcssa = phi ptr [ %.4237364, %bb.j ], [ %.6239, %.lr.ph359 ] ; 2 uses
  %.14.lcssa = phi ptr [ %.13365, %bb.j ], [ %.15, %.lr.ph359 ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2366, %bb.j ], [ %i.gt, %.lr.ph359 ]
  %i.gv = getelementptr inbounds [4 x i8], ptr %.3.lcssa, i64 %i.ge ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %i.ga
  br i1 %i.gw, label %bb.j, label %._crit_edge369, !llvm.loop !259

._crit_edge369:                                   ; preds = %._crit_edge360
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx420
  %i.gy = sext i32 %i.ev to i64
  %i.gz = add i32 %i.ev, -1
  %i.ha = mul i32 %i.gz, %i.a
  %i.hb = sext i32 %i.ha to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge369, %._crit_edge377
  %.4383 = phi ptr [ %i.ey, %._crit_edge369 ], [ %i.hs, %._crit_edge377 ] ; 3 uses
  %.16382 = phi ptr [ %.14.lcssa, %._crit_edge369 ], [ %.17.lcssa, %._crit_edge377 ] ; 2 uses
  %.7240381 = phi ptr [ %.5238.lcssa, %._crit_edge369 ], [ %.8241.lcssa, %._crit_edge377 ] ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %.4383, i64 %.idx426
  br i1 %i.et, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %bb.k, %.lr.ph376
  %.5374 = phi ptr [ %i.hq, %.lr.ph376 ], [ %.4383, %bb.k ] ; 4 uses
  %.17373 = phi ptr [ %.18, %.lr.ph376 ], [ %.16382, %bb.k ] ; 2 uses
  %.8241372 = phi ptr [ %.9242, %.lr.ph376 ], [ %.7240381, %bb.k ] ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.5374, i64 2
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.5374, i64 1
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = load i8, ptr %.5374, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.8241372, i64 2
  store i8 %i.he, ptr %i.hi, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.8241372, i64 1
  store i8 %i.hg, ptr %i.hj, align 1
  store i8 %i.hh, ptr %.8241372, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.8241372, i64 4 ; 3 uses
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %.17373 to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 2
  %.not257 = icmp slt i64 %i.ho, %i.en            ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.ep ; 2 uses
  %.9242 = select i1 %.not257, ptr %i.hk, ptr %i.hp ; 2 uses
  %.18 = select i1 %.not257, ptr %.17373, ptr %i.hp ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %.5374, i64 %i.gy ; 3 uses
  %i.hr = icmp ult ptr %i.hq, %i.hc
  br i1 %i.hr, label %.lr.ph376, label %._crit_edge377, !llvm.loop !260

._crit_edge377:                                   ; preds = %.lr.ph376, %bb.k
  %.8241.lcssa = phi ptr [ %.7240381, %bb.k ], [ %.9242, %.lr.ph376 ] ; 3 uses
  %.17.lcssa = phi ptr [ %.16382, %bb.k ], [ %.18, %.lr.ph376 ] ; 3 uses
  %.5.lcssa = phi ptr [ %.4383, %bb.k ], [ %i.hq, %.lr.ph376 ]
  %i.hs = getelementptr inbounds [4 x i8], ptr %.5.lcssa, i64 %i.hb ; 2 uses
  %i.ht = icmp ult ptr %i.hs, %i.gx
  br i1 %i.ht, label %bb.k, label %._crit_edge386, !llvm.loop !261

._crit_edge386:                                   ; preds = %._crit_edge377
  %i.hu = icmp ne i32 %.0231405, %i.em
  %brmerge = or i1 %i.hu, %i.eq
  br i1 %brmerge, label %.loopexit300, label %.lr.ph401

.lr.ph401:                                        ; preds = %._crit_edge386
  %i.hv = sext i32 %i.ev to i64
  %i.hw = add i32 %i.ev, -1
  %i.hx = mul i32 %i.hw, %i.a
  %i.hy = sext i32 %i.hx to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph401, %._crit_edge394
  %.6400 = phi ptr [ %6, %.lr.ph401 ], [ %i.ip, %._crit_edge394 ] ; 3 uses
  %.19399 = phi ptr [ %.17.lcssa, %.lr.ph401 ], [ %.20.lcssa, %._crit_edge394 ] ; 2 uses
  %.10243398 = phi ptr [ %.8241.lcssa, %.lr.ph401 ], [ %.11244.lcssa, %._crit_edge394 ] ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %.6400, i64 %.idx427
  br i1 %i.eu, label %.lr.ph393, label %._crit_edge394

.lr.ph393:                                        ; preds = %bb.l, %.lr.ph393
  %.7391 = phi ptr [ %i.in, %.lr.ph393 ], [ %.6400, %bb.l ] ; 4 uses
  %.20390 = phi ptr [ %.21, %.lr.ph393 ], [ %.19399, %bb.l ] ; 2 uses
  %.11244389 = phi ptr [ %.12245, %.lr.ph393 ], [ %.10243398, %bb.l ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.7391, i64 2
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.7391, i64 1
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = load i8, ptr %.7391, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.11244389, i64 2
  store i8 %i.ib, ptr %i.if, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %.11244389, i64 1
  store i8 %i.id, ptr %i.ig, align 1
  store i8 %i.ie, ptr %.11244389, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.11244389, i64 4 ; 3 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %.20390 to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = ashr exact i64 %i.ik, 2
  %.not256 = icmp slt i64 %i.il, %i.en            ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ep ; 2 uses
  %.12245 = select i1 %.not256, ptr %i.ih, ptr %i.im ; 2 uses
  %.21 = select i1 %.not256, ptr %.20390, ptr %i.im ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %.7391, i64 %i.hv ; 3 uses
  %i.io = icmp ult ptr %i.in, %i.hz
  br i1 %i.io, label %.lr.ph393, label %._crit_edge394, !llvm.loop !262

._crit_edge394:                                   ; preds = %.lr.ph393, %bb.l
  %.11244.lcssa = phi ptr [ %.10243398, %bb.l ], [ %.12245, %.lr.ph393 ] ; 2 uses
  %.20.lcssa = phi ptr [ %.19399, %bb.l ], [ %.21, %.lr.ph393 ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6400, %bb.l ], [ %i.in, %.lr.ph393 ]
  %i.ip = getelementptr inbounds [4 x i8], ptr %.7.lcssa, i64 %i.hy ; 2 uses
  %i.iq = icmp ult ptr %i.ip, %i.i
  br i1 %i.iq, label %bb.l, label %.loopexit300, !llvm.loop !263

.loopexit300:                                     ; preds = %._crit_edge394, %bb.h, %._crit_edge386
  %.13246 = phi ptr [ %.8241.lcssa, %._crit_edge386 ], [ %.0233404, %bb.h ], [ %.11244.lcssa, %._crit_edge394 ] ; 2 uses
  %.22 = phi ptr [ %.17.lcssa, %._crit_edge386 ], [ %.9406, %bb.h ], [ %.20.lcssa, %._crit_edge394 ] ; 2 uses
  %i.ir = add nuw nsw i32 %.0231405, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ir, %5
  br i1 %exitcond.not, label %bb.m, label %bb.h, !llvm.loop !264

bb.m:                                             ; preds = %.loopexit300
  %i.is = mul i32 %3, %2
  %i.it = sext i32 %i.is to i64
  %.idx428 = shl nsw i64 %i.it, 2                 ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %6, i64 %.idx428
  %i.iv = icmp slt i64 %.idx420, %.idx428
  br i1 %i.iv, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %bb.m, %.lr.ph411
  %.23409 = phi ptr [ %.24, %.lr.ph411 ], [ %.22, %bb.m ] ; 2 uses
  %.8230408 = phi ptr [ %i.jd, %.lr.ph411 ], [ %i.i, %bb.m ] ; 2 uses
  %.14247407 = phi ptr [ %.15248, %.lr.ph411 ], [ %.13246, %bb.m ] ; 2 uses
  %i.iw = load i32, ptr %.8230408, align 4
  store i32 %i.iw, ptr %.14247407, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.14247407, i64 4 ; 3 uses
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %.23409 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 2
  %.not = icmp slt i64 %i.jb, %i.en               ; 2 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.ep ; 2 uses
  %.15248 = select i1 %.not, ptr %i.ix, ptr %i.jc
  %.24 = select i1 %.not, ptr %.23409, ptr %i.jc
  %i.jd = getelementptr inbounds nuw i8, ptr %.8230408, i64 4 ; 2 uses
  %i.je = icmp ult ptr %i.jd, %i.iu
  br i1 %i.je, label %.lr.ph411, label %.loopexit, !llvm.loop !265

.loopexit:                                        ; preds = %.lr.ph411, %bb.m, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile24bbe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
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
  br i1 %i.w, label %.preheader153, label %bb.c, !llvm.loop !266

bb.c:                                             ; preds = %.preheader153
  %i.x = add i32 %.0131154, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1132 = phi i32 [ %.0131154, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.1130 = phi i32 [ %i.t, %bb.b ], [ %.0129155, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.r, %bb.b ], [ %i.u, %bb.c ]  ; 2 uses
  %i.y = tail call i32 @palette_put(ptr noundef nonnull %i.i, i32 noundef %i.q) #9 ; 0 uses
  %i.z = icmp ult ptr %.2, %i.l
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !267

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0131.lcssa = phi i32 [ 0, %bb.a ], [ %.1132, %bb.d ]
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.1130, %bb.d ]
  %i.aa = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i8 0, ptr %i.g, align 1, !annotation !10
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ac = call i32 @palette_color(ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ac, ptr %i.d, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.ad, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.i, i32 noundef 24, i32 noundef %.0131.lcssa, i32 noundef %.0129.lcssa, i32 noundef %5, ptr noundef %i.e, ptr noundef %i.f)
  %i.ae = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  br i1 %i.af, label %bb.g, label %.thread148

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !10
  %i.ag = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9 ; 3 uses
  %i.ah = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.ai = shl nuw i8 %i.ah, 7
  %i.aj = trunc i64 %i.ag to i8
  %i.ak = or i8 %i.ai, %i.aj
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ak) #9
  %i.al = call i64 @palette_fill(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #9 ; 0 uses
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph162, %bb.h
  %i.an = phi i64 [ 0, %.lr.ph162 ], [ %i.ar, %bb.h ]
  %.0127160 = phi i32 [ 0, %.lr.ph162 ], [ %i.aq, %bb.h ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.ap, ptr %i.c, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.am, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = add i32 %.0127160, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %i.ag, %i.ar
  br i1 %i.as, label %bb.h, label %._crit_edge163, !llvm.loop !268

._crit_edge163:                                   ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  %i.at = trunc nuw i8 %i.ah to i1
  br i1 %i.at, label %.preheader, label %bb.s

.thread148:                                       ; preds = %bb.f
  %i.au = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.av = shl nuw i8 %i.au, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.av) #9
end_hunk_8
