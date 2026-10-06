Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres_select_filter?download=true
inline.NumInlined: 23
inline.NumDeleted: 17
begin_hunk_0_@_foreach_remove_unusable:bb.a
  %.not170 = icmp eq i64 %i.s, 0
  br i1 %.not170, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i16, ptr %i.t, align 8              ; 2 uses
  %.not171 = icmp eq i16 %i.u, -2
  %narrow226 = select i1 %.not171, i16 1, i16 %i.u
  %i.v = zext i16 %narrow226 to i64
  %.1140 = mul i64 %i.s, %i.v
  %i.w = tail call i64 @llvm.umax.i64(i64 %.1142, i64 %.1140)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i64 [ %i.w, %bb.g ], [ %.1142, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %.not172 = icmp eq i16 %i.y, 0
  br i1 %.not172, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aa = load i16, ptr %i.z, align 8             ; 2 uses
  switch i16 %i.aa, label %bb.j [
    i16 0, label %bb.k
    i16 -2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = mul i16 %i.ac, %i.aa
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  %i.af = load i16, ptr %i.ae, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0143 = phi i16 [ %i.af, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  %.not175 = icmp eq i16 %.0143, 0
  br i1 %.not175, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.h, %bb.l
  %.0143202 = phi i16 [ %.0143, %bb.l ], [ %i.y, %bb.h ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 46 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = zext i16 %.0143202 to i32
  %i.aj = udiv i16 %i.ah, %.0143202
  %i.ak = zext i16 %i.aj to i64                   ; 4 uses
  %i.al = icmp ugt i16 %.0143202, %i.ah
  br i1 %i.al, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ugt i64 %i.an, %i.ak
  %i.ap = icmp ugt i64 %i.s, %i.ak
  %or.cond224 = or i1 %i.ap, %i.ao
  %i.aq = icmp ugt i64 %i.m, %i.ak
  %or.cond225 = or i1 %i.aq, %or.cond224
  br i1 %or.cond225, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.thread, %bb.m
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.as = and i64 %i.ar, 1
  %.not192 = icmp eq i64 %i.as, 0
  br i1 %.not192, label %.thread223, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call i32 @slurm_get_log_level() #7
  %i.au = icmp sgt i32 %i.at, 3
  br i1 %i.au, label %bb.p, label %.thread223

bb.p:                                             ; preds = %bb.o
  %i.av = load i16, ptr %i.ag, align 2
  %i.aw = zext i16 %i.av to i32
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_remove_unusable, i64 noundef %i.ak, i32 noundef %i.aw, i32 noundef %i.ai) #7
  br label %.thread223

bb.q:                                             ; preds = %bb.m, %bb.l
  %.not175205 = phi i1 [ false, %bb.m ], [ true, %bb.l ]
  %.0143203 = phi i16 [ %.0143202, %bb.m ], [ 0, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %.not176 = icmp eq i64 %i.ay, 0
  br i1 %.not176, label %bb.r, label %.thread206

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %.not177 = icmp eq i64 %i.ba, 0
  br i1 %.not177, label %bb.x, label %.thread206

.thread206:                                       ; preds = %bb.q, %bb.r
  %.0147209 = phi i64 [ %i.ba, %bb.r ], [ %i.ay, %bb.q ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %.not178 = icmp eq i64 %i.bc, -2
  br i1 %.not178, label %bb.x, label %bb.s

bb.s:                                             ; preds = %.thread206
  %.not179 = icmp ugt i64 %.0147209, %i.bc
  br i1 %.not179, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = udiv i64 %i.bc, %.0147209
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bd, ptr %i.be, align 8
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bg = and i64 %i.bf, 1
  %.not180 = icmp eq i64 %i.bg, 0
  br i1 %.not180, label %.thread223, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call i32 @slurm_get_log_level() #7
  %i.bi = icmp sgt i32 %i.bh, 3
  br i1 %i.bi, label %bb.w, label %.thread223

bb.w:                                             ; preds = %bb.v
  %i.bj = load i64, ptr %i.bb, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_remove_unusable, i64 noundef %.0147209, i64 noundef %i.bj) #7
  br label %.thread223

bb.x:                                             ; preds = %bb.t, %.thread206, %bb.r
  %.not177212 = phi i1 [ false, %bb.t ], [ false, %.thread206 ], [ true, %bb.r ]
  %.0147210 = phi i64 [ %.0147209, %bb.t ], [ %.0147209, %.thread206 ], [ 0, %bb.r ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not181 = icmp eq ptr %i.bl, null
  br i1 %.not181, label %.loopexit.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %1, align 8               ; 2 uses
  %.not182 = icmp eq ptr %i.bm, null
  br i1 %.not182, label %bb.z, label %.thread216

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bq = load i16, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i16, ptr %i.br, align 8            ; 2 uses
  %i.bt = zext i16 %i.bq to i64                   ; 2 uses
  %i.bu = tail call ptr @slurm_xcalloc(i64 noundef %i.bt, i64 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 74, ptr noundef nonnull @__func__._build_avail_cores_by_sock) #7 ; 3 uses
  %i.bv = tail call i64 @slurm_bit_size(ptr noundef %i.bo) #7
  %.not.i = icmp eq i16 %i.bq, 0
  %.not26.i = icmp eq i16 %i.bs, 0
  %or.cond.i = or i1 %.not.i, %.not26.i
  br i1 %or.cond.i, label %.loopexit227, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.z
  %sext.i = shl i64 %i.bv, 32
  %i.bw = ashr exact i64 %sext.i, 32
  %i.bx = zext i16 %i.bs to i64                   ; 2 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %..loopexit_crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next31.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.by = mul nuw nsw i64 %indvars.iv30.i, %i.bx
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ac
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bx
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %bb.ab, !llvm.loop !14

bb.ab:                                            ; preds = %bb.aa, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.aa ] ; 2 uses
  %i.bz = add nuw nsw i64 %indvars.iv.i, %i.by    ; 2 uses
  %.not.us.i = icmp slt i64 %i.bz, %i.bw
  br i1 %.not.us.i, label %bb.ac, label %.loopexit227

bb.ac:                                            ; preds = %bb.ab
  %i.ca = tail call i32 @slurm_bit_test(ptr noundef %i.bo, i64 noundef %i.bz) #7
  %.not20.us.i = icmp eq i32 %i.ca, 0
  br i1 %.not20.us.i, label %bb.aa, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv30.i
  store i8 1, ptr %i.cb, align 1
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %bb.aa, %bb.ad
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %i.bt
  br i1 %exitcond34.not.i, label %.loopexit227, label %.preheader.us.i, !llvm.loop !15

.loopexit227:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.ab, %bb.z
  store ptr %i.bu, ptr %1, align 8
  %.pr = load ptr, ptr %i.bk, align 8             ; 2 uses
  %.not183 = icmp eq ptr %.pr, null
  br i1 %.not183, label %.loopexit.sink.split, label %.thread216

.thread216:                                       ; preds = %bb.y, %.loopexit227
  %i.cc = phi ptr [ %i.bu, %.loopexit227 ], [ %i.bm, %bb.y ]
  %i.cd = phi ptr [ %.pr, %.loopexit227 ], [ %i.bl, %bb.y ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cf = load i8, ptr %i.ce, align 4, !range !8, !noundef !9
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %.preheader, label %bb.ah

.preheader:                                       ; preds = %.thread216
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 8            ; 2 uses
  %.not233 = icmp eq i16 %i.ci, 0
  br i1 %.not233, label %.loopexit.sink.split, label %.lr.ph232

.lr.ph232:                                        ; preds = %.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph232, %bb.ag
  %i.ck = phi i16 [ %i.ci, %.lr.ph232 ], [ %i.ct, %bb.ag ]
  %indvars.iv236 = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next237, %bb.ag ] ; 3 uses
  %2 = load ptr, ptr %1, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv236
  %i.cm = load i8, ptr %i.cl, align 1, !range !8, !noundef !9
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %i.bk, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv236 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = load i64, ptr %i.cj, align 8
  %i.cs = sub i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.cj, align 8
  store i64 0, ptr %i.cp, align 8
  %.pre.a = load i16, ptr %i.ch, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ct = phi i16 [ %i.ck, %bb.ae ], [ %.pre.a, %bb.af ] ; 2 uses
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.cu = zext i16 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next237, %i.cu
  br i1 %i.cv, label %bb.ae, label %.loopexit.sink.split, !llvm.loop !16

bb.ah:                                            ; preds = %.thread216
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cz = load i16, ptr %i.cy, align 8            ; 2 uses
  %.not = icmp eq i16 %i.cz, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %wide.trip.count = zext i16 %i.cz to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ak
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 3 uses
  %.0144229 = phi i64 [ %i.cx, %.lr.ph ], [ %.1145, %bb.ak ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !range !8, !noundef !9
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = sub i64 %.0144229, %i.de
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.1145 = phi i64 [ %.0144229, %bb.ai ], [ %i.df, %bb.aj ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.ai, !llvm.loop !17

.loopexit.sink.split:                             ; preds = %bb.ag, %.loopexit227, %bb.x, %.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = load i64, ptr %i.dg, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ak, %.loopexit.sink.split, %bb.ah
  %.2146 = phi i64 [ %i.cx, %bb.ah ], [ %i.dh, %.loopexit.sink.split ], [ %.1145, %bb.ak ] ; 2 uses
  %i.di = load i8, ptr %i.e, align 2, !range !8, !noundef !9
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_set_max_node_gres.exit199, label %bb.al

bb.al:                                            ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dl = load i64, ptr %i.dk, align 8            ; 3 uses
  %.not.i195 = icmp eq i64 %i.dl, 0
  br i1 %.not.i195, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = add i64 %i.dn, -1
  %or.cond.not.i = icmp ult i64 %i.do, %i.dl
  br i1 %or.cond.not.i, label %bb.an, label %_set_max_node_gres.exit

_set_max_node_gres.exit:                          ; preds = %bb.am
  store i64 %i.dl, ptr %i.dm, align 8
  br label %_set_max_node_gres.exit199

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dq = load i64, ptr %i.dp, align 8            ; 3 uses
  %.not.i196 = icmp eq i64 %i.dq, 0
  br i1 %.not.i196, label %_set_max_node_gres.exit199, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = add i64 %i.ds, -1
  %or.cond.not.i197 = icmp ult i64 %i.dt, %i.dq
  br i1 %or.cond.not.i197, label %_set_max_node_gres.exit199, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.dq, ptr %i.dr, align 8
  br label %_set_max_node_gres.exit199

_set_max_node_gres.exit199:                       ; preds = %bb.ap, %bb.ao, %bb.an, %_set_max_node_gres.exit, %.loopexit
  %i.du = zext i16 %.0143203 to i32               ; 2 uses
  br i1 %.not175205, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %_set_max_node_gres.exit199
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.dw = load i16, ptr %i.dv, align 8
  %i.dx = icmp eq i16 %i.dw, -2
  br i1 %i.dx, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dy = load i8, ptr %i.e, align 2, !range !8, !noundef !9
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call i32 @slurm_bit_set_count(ptr noundef %i.eb) #7
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ee = load i16, ptr %i.ed, align 8
  %i.ef = zext i16 %i.ee to i32
  %i.eg = mul nsw i32 %i.ec, %i.ef                ; 2 uses
  %i.eh = sdiv i32 %i.eg, %i.du                   ; 2 uses
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %.not187 = icmp eq i32 %i.eh, 0
  br i1 %.not187, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ej = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ek = and i64 %i.ej, 1
  %.not186 = icmp eq i64 %i.ek, 0
  br i1 %.not186, label %.thread223, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.el = tail call i32 @slurm_get_log_level() #7
  %i.em = icmp sgt i32 %i.el, 3
  br i1 %i.em, label %bb.av, label %.thread223

bb.av:                                            ; preds = %bb.au
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_remove_unusable, i32 noundef %i.eg, i32 noundef %i.du) #7
  br label %.thread223

bb.aw:                                            ; preds = %bb.as
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = add i64 %i.eo, -1
  %or.cond.not = icmp ult i64 %i.ep, %i.ei
  br i1 %or.cond.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i64 %i.ei, ptr %i.en, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.ar, %_set_max_node_gres.exit199
  br i1 %.not177212, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.er = load i64, ptr %i.eq, align 8            ; 2 uses
  %.not188 = icmp eq i64 %i.er, -2
  br i1 %.not188, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.es = udiv i64 %i.er, %.0147210
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8
  %. = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.es)
  store i64 %., ptr %i.et, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = icmp ult i64 %i.ew, %.2
  br i1 %i.ex, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8            ; 2 uses
  %.not189 = icmp ne i64 %i.ez, 0
  %i.fa = icmp ult i64 %i.ez, %.2
  %or.cond193 = select i1 %.not189, i1 %i.fa, i1 false
  br i1 %or.cond193, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fb = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fc = and i64 %i.fb, 1
  %.not191 = icmp eq i64 %i.fc, 0
  br i1 %.not191, label %.thread223, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fd = tail call i32 @slurm_get_log_level() #7
  %i.fe = icmp sgt i32 %i.fd, 3
  br i1 %i.fe, label %bb.bf, label %.thread223

bb.bf:                                            ; preds = %bb.be
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = load i64, ptr %i.ev, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_remove_unusable, i64 noundef %.2, i64 noundef %i.fg, i64 noundef %i.fh) #7
  br label %.thread223

bb.bg:                                            ; preds = %bb.bc
  %i.fi = load ptr, ptr %i.a, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = tail call zeroext i1 @gres_id_sharing(i32 noundef %i.fk) #7
  br i1 %i.fl, label %bb.bh, label %.thread223

bb.bh:                                            ; preds = %bb.bg
  %i.fm = load i64, ptr %i.ev, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2
  %i.fq = trunc i64 %i.fm to i16
  %i.fr = add i16 %i.fp, %i.fq
  store i16 %i.fr, ptr %i.fo, align 2
end_hunk_0
