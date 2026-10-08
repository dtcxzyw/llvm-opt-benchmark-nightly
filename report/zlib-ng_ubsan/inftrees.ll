Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/inftrees?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zng_inflate_table:bb.a
bb.ai:                                            ; preds = %bb.ah
  br i1 %.not229.12, label %bb.aj, label %bb.ak, !prof !22, !nosanitize !21

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.c, i64 %i.ab) #5, !nosanitize !21
  br label %bb.ak, !nosanitize !21

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.bk = load i16, ptr %i.aa, align 8, !tbaa !24
  %.not210.3 = icmp eq i16 %i.bk, 0
  br i1 %.not210.3, label %bb.al, label %.lr.ph308

bb.al:                                            ; preds = %bb.ak
  br i1 %.not229.11, label %bb.am, label %bb.an, !prof !22, !nosanitize !21

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.c, i64 %i.z) #5, !nosanitize !21
  br label %bb.an, !nosanitize !21

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.bl = load i16, ptr %i.y, align 2, !tbaa !24
  %.not210.4 = icmp eq i16 %i.bl, 0
  br i1 %.not210.4, label %bb.ao, label %.lr.ph308

bb.ao:                                            ; preds = %bb.an
  br i1 %.not229.10, label %bb.ap, label %bb.aq, !prof !22, !nosanitize !21

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.c, i64 %i.x) #5, !nosanitize !21
  br label %bb.aq, !nosanitize !21

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.bm = load i16, ptr %i.w, align 4, !tbaa !24
  %.not210.5 = icmp eq i16 %i.bm, 0
  br i1 %.not210.5, label %bb.ar, label %.lr.ph308

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not229.9416, label %bb.as, label %bb.at, !prof !22, !nosanitize !21

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.c, i64 %i.u) #5, !nosanitize !21
  br label %bb.at, !nosanitize !21

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.bn = load i16, ptr %i.v, align 2, !tbaa !24
  %.not210.6 = icmp eq i16 %i.bn, 0
  br i1 %.not210.6, label %bb.au, label %.lr.ph308

bb.au:                                            ; preds = %bb.at
  br i1 %.not229.8, label %bb.av, label %bb.aw, !prof !22, !nosanitize !21

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.c, i64 %i.l) #5, !nosanitize !21
  br label %bb.aw, !nosanitize !21

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.bo = load i16, ptr %i.k, align 16, !tbaa !24
  %.not210.7 = icmp eq i16 %i.bo, 0
  br i1 %.not210.7, label %bb.ax, label %.lr.ph308

bb.ax:                                            ; preds = %bb.aw
  %i.bp = load i16, ptr %i.j, align 2, !tbaa !24
  %.not210.8 = icmp eq i16 %i.bp, 0
  br i1 %.not210.8, label %bb.ay, label %.lr.ph308

bb.ay:                                            ; preds = %bb.ax
  %i.bq = load i16, ptr %i.i, align 4, !tbaa !24
  %.not210.9 = icmp eq i16 %i.bq, 0
  br i1 %.not210.9, label %bb.az, label %.lr.ph308

bb.az:                                            ; preds = %bb.ay
  %i.br = load i16, ptr %i.h, align 2, !tbaa !24
  %.not210.10 = icmp eq i16 %i.br, 0
  br i1 %.not210.10, label %bb.ba, label %.lr.ph308

bb.ba:                                            ; preds = %bb.az
  %i.bs = load i16, ptr %i.g, align 8, !tbaa !24
  %.not210.11 = icmp eq i16 %i.bs, 0
  br i1 %.not210.11, label %bb.bb, label %.lr.ph308

bb.bb:                                            ; preds = %bb.ba
  %i.bt = load i16, ptr %i.f, align 2, !tbaa !24
  %.not210.12 = icmp eq i16 %i.bt, 0
  br i1 %.not210.12, label %bb.bc, label %.lr.ph308

bb.bc:                                            ; preds = %bb.bb
  %i.bu = load i16, ptr %i.e, align 4, !tbaa !24
  %.not210.13 = icmp eq i16 %i.bu, 0
  br i1 %.not210.13, label %bb.bd, label %.lr.ph308

bb.bd:                                            ; preds = %bb.bc
  %i.bv = load i16, ptr %i.d, align 2, !tbaa !24
  %.not210.14 = icmp eq i16 %i.bv, 0
  br i1 %.not210.14, label %bb.be, label %._crit_edge309

bb.be:                                            ; preds = %bb.bd
  %i.bw = load ptr, ptr %3, align 8, !tbaa !30
  %.fr = freeze ptr %i.bw                         ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.fr, i64 4
  %i.by = ptrtoint ptr %.fr to i64, !nosanitize !21 ; 5 uses
  %i.bz = icmp ne ptr %.fr, null, !nosanitize !21
  %i.ca = add i64 %i.by, -1
  %or.cond235 = icmp ult i64 %i.ca, -5
  br i1 %or.cond235, label %bb.bg, label %bb.bf, !prof !31

.lr.ph308:                                        ; preds = %bb.ab, %bb.ae, %bb.ah, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %.0182305.lcssa.ph = phi i32 [ 2, %bb.bc ], [ 3, %bb.bb ], [ 4, %bb.ba ], [ 5, %bb.az ], [ 6, %bb.ay ], [ 7, %bb.ax ], [ 8, %bb.aw ], [ 9, %bb.at ], [ 10, %bb.aq ], [ 11, %bb.an ], [ 12, %bb.ak ], [ 13, %bb.ah ], [ 14, %bb.ae ], [ 15, %bb.ab ] ; 6 uses
  %i.cb = call i32 @llvm.umin.i32(i32 %i.bg, i32 %.0182305.lcssa.ph)
  %wide.trip.count341 = zext nneg i32 %.0182305.lcssa.ph to i64
  br label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.cc = add nsw i64 %i.by, 4, !nosanitize !21
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @11, i64 %i.by, i64 %i.cc) #5, !nosanitize !21
  br label %bb.bg, !nosanitize !21

bb.bg:                                            ; preds = %bb.be, %bb.bf
  store ptr %i.bx, ptr %3, align 8, !tbaa !30
  %i.cd = and i64 %i.by, 1, !nosanitize !21
  %i.ce = icmp eq i64 %i.cd, 0, !nosanitize !21
  %i.cf = and i1 %i.bz, %i.ce
  br i1 %i.cf, label %bb.bi, label %bb.bh, !prof !26, !nosanitize !21

bb.bh:                                            ; preds = %bb.bg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %i.by) #5, !nosanitize !21
  br label %bb.bi, !nosanitize !21

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store i32 320, ptr %.fr, align 2
  %i.cg = load ptr, ptr %3, align 8, !tbaa !30
  %.fr285 = freeze ptr %i.cg                      ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.fr285, i64 4
  %i.ci = ptrtoint ptr %.fr285 to i64, !nosanitize !21 ; 5 uses
  %i.cj = icmp ne ptr %.fr285, null, !nosanitize !21
  %i.ck = add i64 %i.ci, -1
  %or.cond233 = icmp ult i64 %i.ck, -5
  br i1 %or.cond233, label %bb.bk, label %bb.bj, !prof !31

bb.bj:                                            ; preds = %bb.bi
  %i.cl = add nsw i64 %i.ci, 4, !nosanitize !21
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @14, i64 %i.ci, i64 %i.cl) #5, !nosanitize !21
  br label %bb.bk, !nosanitize !21

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  store ptr %i.ch, ptr %3, align 8, !tbaa !30
  %i.cm = and i64 %i.ci, 1, !nosanitize !21
  %i.cn = icmp eq i64 %i.cm, 0, !nosanitize !21
  %i.co = and i1 %i.cj, %i.cn
  br i1 %i.co, label %bb.bm, label %bb.bl, !prof !26, !nosanitize !21

bb.bl:                                            ; preds = %bb.bk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @15, i64 %i.ci) #5, !nosanitize !21
  br label %bb.bm, !nosanitize !21

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store i32 320, ptr %.fr285, align 2
  br i1 %i.be, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split, !prof !26, !nosanitize !21

bb.bn:                                            ; preds = %.lr.ph308, %bb.bq
  %indvars.iv338 = phi i64 [ 1, %.lr.ph308 ], [ %indvars.iv.next339, %bb.bq ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv338
  %i.cq = shl nuw nsw i64 %indvars.iv338, 1
  %i.cr = add i64 %i.cq, %i.c, !nosanitize !21    ; 2 uses
  %.not211 = icmp ult i64 %i.cr, %i.c, !nosanitize !21
  br i1 %.not211, label %bb.bo, label %bb.bp, !prof !22, !nosanitize !21

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @17, i64 %i.c, i64 %i.cr) #5, !nosanitize !21
  br label %bb.bp, !nosanitize !21

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.cs = load i16, ptr %i.cp, align 2, !tbaa !24
  %.not212 = icmp eq i16 %i.cs, 0
  br i1 %.not212, label %bb.bq, label %._crit_edge309.loopexit.split.loop.exit

bb.bq:                                            ; preds = %bb.bp
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %wide.trip.count341
  br i1 %exitcond342.not, label %._crit_edge309, label %bb.bn, !llvm.loop !13

._crit_edge309.loopexit.split.loop.exit:          ; preds = %bb.bp
  %i.ct = trunc nuw nsw i64 %indvars.iv338 to i32 ; 2 uses
  %i.cu = call i32 @llvm.umax.i32(i32 %i.cb, i32 %i.ct)
  br label %._crit_edge309

._crit_edge309:                                   ; preds = %bb.bq, %bb.bd, %._crit_edge309.loopexit.split.loop.exit
  %i.cv = phi i32 [ 1, %bb.bd ], [ %i.cu, %._crit_edge309.loopexit.split.loop.exit ], [ %.0182305.lcssa.ph, %bb.bq ] ; 11 uses
  %.0182305.lcssa420 = phi i32 [ 1, %bb.bd ], [ %.0182305.lcssa.ph, %._crit_edge309.loopexit.split.loop.exit ], [ %.0182305.lcssa.ph, %bb.bq ] ; 3 uses
  %i.cw = phi i1 [ false, %bb.bd ], [ true, %._crit_edge309.loopexit.split.loop.exit ], [ true, %bb.bq ]
  %.0183.lcssa = phi i32 [ 1, %bb.bd ], [ %i.ct, %._crit_edge309.loopexit.split.loop.exit ], [ %.0182305.lcssa.ph, %bb.bq ]
  br label %bb.bs

bb.br:                                            ; preds = %bb.by
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next344, 16
  br i1 %exitcond346.not, label %bb.bz, label %bb.bs, !llvm.loop !14

bb.bs:                                            ; preds = %._crit_edge309, %bb.br
  %indvars.iv343 = phi i64 [ 1, %._crit_edge309 ], [ %indvars.iv.next344, %bb.br ] ; 3 uses
  %.0175313 = phi i32 [ 1, %._crit_edge309 ], [ %i.dg, %bb.br ] ; 3 uses
  %i.cx = icmp samesign ult i32 %.0175313, 1073741824
  br i1 %i.cx, label %bb.bu, label %bb.bt, !prof !26, !nosanitize !21

bb.bt:                                            ; preds = %bb.bs
  %i.cy = zext nneg i32 %.0175313 to i64, !nosanitize !21
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @19, i64 %i.cy, i64 1) #5, !nosanitize !21
  br label %bb.bu, !nosanitize !21

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.cz = shl nuw i32 %.0175313, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv343
  %i.db = shl nuw nsw i64 %indvars.iv343, 1
  %i.dc = add i64 %i.db, %i.c, !nosanitize !21    ; 2 uses
  %.not227 = icmp ult i64 %i.dc, %i.c, !nosanitize !21
  br i1 %.not227, label %bb.bv, label %bb.bw, !prof !22, !nosanitize !21

bb.bv:                                            ; preds = %bb.bu
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @20, i64 %i.c, i64 %i.dc) #5, !nosanitize !21
  br label %bb.bw, !nosanitize !21

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %i.dd = load i16, ptr %i.da, align 2, !tbaa !24 ; 2 uses
  %i.de = zext i16 %i.dd to i32
  %i.df = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cz, i32 %i.de), !nosanitize !21 ; 2 uses
  %i.dg = extractvalue { i32, i1 } %i.df, 0, !nosanitize !21 ; 3 uses
  %i.dh = extractvalue { i32, i1 } %i.df, 1, !nosanitize !21
  br i1 %i.dh, label %bb.bx, label %bb.by, !prof !22, !nosanitize !21

bb.bx:                                            ; preds = %bb.bw
  %i.di = zext i32 %i.cz to i64, !nosanitize !21
  %i.dj = zext i16 %i.dd to i64
  call void @__ubsan_handle_sub_overflow(ptr nonnull @21, i64 %i.di, i64 %i.dj) #5, !nosanitize !21
  br label %bb.by, !nosanitize !21

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.dk = icmp slt i32 %i.dg, 0
  br i1 %i.dk, label %.loopexit, label %bb.br

bb.bz:                                            ; preds = %bb.br
  %.not281 = icmp ne i32 %i.dg, 0
  %i.dl = icmp eq i32 %0, 0
  %or.cond = or i1 %i.dl, %i.cw
  %or.cond440 = and i1 %.not281, %or.cond
  br i1 %or.cond440, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.dn = ptrtoint ptr %i.b to i64, !nosanitize !21 ; 9 uses
  store i16 0, ptr %i.dm, align 2, !tbaa !24
  br label %bb.cb

.preheader286:                                    ; preds = %bb.ch
  br i1 %.not318, label %._crit_edge317, label %.lr.ph316

.lr.ph316:                                        ; preds = %.preheader286
  %i.do = ptrtoint ptr %1 to i64, !nosanitize !21 ; 4 uses
  %i.dp = icmp ne ptr %1, null, !nosanitize !21   ; 2 uses
  %i.dq = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.dr = icmp ne ptr %5, null                    ; 2 uses
  %wide.trip.count354 = zext i32 %2 to i64
  br label %bb.ci

bb.cb:                                            ; preds = %bb.ca, %bb.ch
  %indvars.iv347 = phi i64 [ 1, %bb.ca ], [ %indvars.iv.next348, %bb.ch ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv347
  %i.dt = shl nuw nsw i64 %indvars.iv347, 1       ; 2 uses
  %i.du = add i64 %i.dt, %i.dn, !nosanitize !21   ; 2 uses
  %.not224 = icmp ult i64 %i.du, %i.dn, !nosanitize !21
  br i1 %.not224, label %bb.cc, label %bb.cd, !prof !22, !nosanitize !21

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @22, i64 %i.dn, i64 %i.du) #5, !nosanitize !21
  br label %bb.cd, !nosanitize !21

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.dv = load i16, ptr %i.ds, align 2, !tbaa !24
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv347
  %i.dx = add i64 %i.dt, %i.c, !nosanitize !21    ; 2 uses
  %.not225 = icmp ult i64 %i.dx, %i.c, !nosanitize !21
  br i1 %.not225, label %bb.ce, label %bb.cf, !prof !22, !nosanitize !21

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @23, i64 %i.c, i64 %i.dx) #5, !nosanitize !21
  br label %bb.cf, !nosanitize !21

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.dy = load i16, ptr %i.dw, align 2, !tbaa !24
  %i.dz = add i16 %i.dy, %i.dv
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 4 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next348
  %i.eb = shl nuw nsw i64 %indvars.iv.next348, 1
  %i.ec = add i64 %i.eb, %i.dn, !nosanitize !21   ; 2 uses
  %.not226 = icmp ult i64 %i.ec, %i.dn, !nosanitize !21
  br i1 %.not226, label %bb.cg, label %bb.ch, !prof !22, !nosanitize !21

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @24, i64 %i.dn, i64 %i.ec) #5, !nosanitize !21
  br label %bb.ch, !nosanitize !21

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !24
  %exitcond350.not = icmp eq i64 %indvars.iv.next348, 15
  br i1 %exitcond350.not, label %.preheader286, label %bb.cb, !llvm.loop !15

bb.ci:                                            ; preds = %.lr.ph316, %bb.da
  %indvars.iv351 = phi i64 [ 0, %.lr.ph316 ], [ %indvars.iv.next352, %bb.da ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv351 ; 3 uses
  %i.ee = shl nuw nsw i64 %indvars.iv351, 1
  %i.ef = add i64 %i.ee, %i.do, !nosanitize !21   ; 4 uses
  %i.eg = icmp eq i64 %i.ef, 0
  %i.eh = xor i1 %i.dp, %i.eg
  %i.ei = icmp uge i64 %i.ef, %i.do, !nosanitize !21
  %i.ej = and i1 %i.ei, %i.eh, !nosanitize !21    ; 2 uses
  br i1 %i.ej, label %bb.ck, label %bb.cj, !prof !26, !nosanitize !21

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @25, i64 %i.do, i64 %i.ef) #5, !nosanitize !21
  br label %bb.ck, !nosanitize !21

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ek = ptrtoint ptr %i.ed to i64, !nosanitize !21 ; 3 uses
  %i.el = and i64 %i.ek, 1, !nosanitize !21
  %i.em = icmp eq i64 %i.el, 0, !nosanitize !21   ; 2 uses
  %i.en = and i1 %i.dp, %i.em, !nosanitize !21
  br i1 %i.en, label %bb.cm, label %bb.cl, !prof !26, !nosanitize !21

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @26, i64 %i.ek) #5, !nosanitize !21
  br label %bb.cm, !nosanitize !21

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.eo = load i16, ptr %i.ed, align 2, !tbaa !24
  %.not222 = icmp eq i16 %i.eo, 0
  br i1 %.not222, label %bb.da, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ep = trunc i64 %indvars.iv351 to i16
  br i1 %i.ej, label %bb.cp, label %bb.co, !prof !26, !nosanitize !21

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @27, i64 %i.do, i64 %i.ef) #5, !nosanitize !21
  br label %bb.cp, !nosanitize !21

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %i.em, label %bb.cr, label %bb.cq, !prof !26, !nosanitize !21

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @28, i64 %i.ek) #5, !nosanitize !21
  br label %bb.cr, !nosanitize !21

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.eq = load i16, ptr %i.ed, align 2, !tbaa !24 ; 2 uses
  %i.er = zext i16 %i.eq to i64, !nosanitize !21  ; 3 uses
  %i.es = icmp ult i16 %i.eq, 17
  br i1 %i.es, label %bb.ct, label %bb.cs, !prof !26, !nosanitize !21

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @29, i64 %i.er) #5, !nosanitize !21
  br label %bb.ct, !nosanitize !21

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.er ; 2 uses
  %i.eu = shl nuw nsw i64 %i.er, 1
  %i.ev = add i64 %i.eu, %i.dn, !nosanitize !21   ; 2 uses
  %.not223 = icmp ult i64 %i.ev, %i.dn, !nosanitize !21
  br i1 %.not223, label %bb.cu, label %bb.cv, !prof !22, !nosanitize !21

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @30, i64 %i.dn, i64 %i.ev) #5, !nosanitize !21
  br label %bb.cv, !nosanitize !21

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.ew = load i16, ptr %i.et, align 2, !tbaa !24 ; 2 uses
  %i.ex = add i16 %i.ew, 1
  store i16 %i.ex, ptr %i.et, align 2, !tbaa !24
  %i.ey = zext i16 %i.ew to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ey ; 2 uses
  %i.fa = shl nuw nsw i64 %i.ey, 1
  %i.fb = add i64 %i.fa, %i.dq, !nosanitize !21   ; 3 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = xor i1 %i.dr, %i.fc
  %i.fe = icmp uge i64 %i.fb, %i.dq, !nosanitize !21
  %i.ff = and i1 %i.fe, %i.fd, !nosanitize !21
  br i1 %i.ff, label %bb.cx, label %bb.cw, !prof !26, !nosanitize !21

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @31, i64 %i.dq, i64 %i.fb) #5, !nosanitize !21
  br label %bb.cx, !nosanitize !21

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.fg = ptrtoint ptr %i.ez to i64, !nosanitize !21 ; 2 uses
  %i.fh = and i64 %i.fg, 1, !nosanitize !21
  %i.fi = icmp eq i64 %i.fh, 0, !nosanitize !21
  %i.fj = and i1 %i.dr, %i.fi
  br i1 %i.fj, label %bb.cz, label %bb.cy, !prof !26, !nosanitize !21

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @32, i64 %i.fg) #5, !nosanitize !21
  br label %bb.cz, !nosanitize !21

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  store i16 %i.ep, ptr %i.ez, align 2, !tbaa !24
  br label %bb.da

bb.da:                                            ; preds = %bb.cm, %bb.cz
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %exitcond355.not = icmp eq i64 %indvars.iv.next352, %wide.trip.count354
  br i1 %exitcond355.not, label %._crit_edge317, label %bb.ci, !llvm.loop !16

._crit_edge317:                                   ; preds = %bb.da, %.preheader286
end_hunk_0
