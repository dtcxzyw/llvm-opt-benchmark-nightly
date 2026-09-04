Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wavpack?download=true
inline.NumInlined: 58
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@wavpack_decode_frame:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ap, i64 1556 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ap, i64 1560
  %i.dp = icmp eq i32 %i.br, 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 92 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.backedge.i, %.lr.ph1056.i
  %i.dr = phi i64 [ %i.cy, %.lr.ph1056.i ], [ %i.et, %.backedge.i ]
  %.04351055.i = phi i64 [ 0, %.lr.ph1056.i ], [ %.0435.be.i, %.backedge.i ] ; 34 uses
  %.04371054.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0437.be.i, %.backedge.i ] ; 45 uses
  %.04391053.i = phi i32 [ 1, %.lr.ph1056.i ], [ %.0439.be.i, %.backedge.i ] ; 45 uses
  %.04411052.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0441.be.i, %.backedge.i ] ; 44 uses
  %.04431051.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0443.be.i, %.backedge.i ] ; 33 uses
  %.04571050.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0457.be.i, %.backedge.i ] ; 45 uses
  %.04591049.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0459.be.i, %.backedge.i ] ; 41 uses
  %.04611048.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0461.be.i, %.backedge.i ] ; 45 uses
  %.04631047.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0463.be.i, %.backedge.i ] ; 45 uses
  %.04651046.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0465.be.i, %.backedge.i ] ; 44 uses
  %.04671045.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0467.be.i, %.backedge.i ] ; 44 uses
  %.04691044.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0469.be.i, %.backedge.i ] ; 44 uses
  %.04711043.i = phi i32 [ 0, %.lr.ph1056.i ], [ %.0471.be.i, %.backedge.i ] ; 39 uses
  %.sroa.0690.01042.i = phi ptr [ %.sroa.0690.21.i, %.lr.ph1056.i ], [ %.sroa.0690.0.be.i, %.backedge.i ] ; 2 uses
  %i.ds = icmp slt i64 %i.dr, 1
  br i1 %i.ds, label %bytestream2_get_byte.exit601.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0690.01042.i, i64 1 ; 2 uses
  %i.du = load i8, ptr %.sroa.0690.01042.i, align 1, !tbaa !41
  %i.dv = zext i8 %i.du to i32
  %.pre1211.i = ptrtoint ptr %i.dt to i64
  br label %bytestream2_get_byte.exit601.i

bytestream2_get_byte.exit601.i:                   ; preds = %bb.s, %bb.r
  %.pre-phi1212.i = phi i64 [ %i.az, %bb.r ], [ %.pre1211.i, %bb.s ]
  %.sroa.0690.39.i = phi ptr [ %i.ay, %bb.r ], [ %i.dt, %bb.s ] ; 2 uses
  %.0.i600.i = phi i32 [ 0, %bb.r ], [ %i.dv, %bb.s ] ; 4 uses
  %i.dw = sub i64 %i.az, %.pre-phi1212.i
  %i.dx = icmp slt i64 %i.dw, 1
  br i1 %i.dx, label %bytestream2_get_byte.exit599.i, label %bb.t

bb.t:                                             ; preds = %bytestream2_get_byte.exit601.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0690.39.i, i64 1
  %i.dz = load i8, ptr %.sroa.0690.39.i, align 1, !tbaa !41
  %i.ea = zext i8 %i.dz to i32
  br label %bytestream2_get_byte.exit599.i

bytestream2_get_byte.exit599.i:                   ; preds = %bb.t, %bytestream2_get_byte.exit601.i
  %.sroa.0690.38.i = phi ptr [ %i.dy, %bb.t ], [ %i.ay, %bytestream2_get_byte.exit601.i ] ; 3 uses
  %.0.i598.i = phi i32 [ %i.ea, %bb.t ], [ 0, %bytestream2_get_byte.exit601.i ] ; 2 uses
  %.not511.i = icmp samesign ult i32 %.0.i600.i, 128
  br i1 %.not511.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bytestream2_get_byte.exit599.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0690.38.i, i64 2
  %i.ec = load i16, ptr %.sroa.0690.38.i, align 1, !tbaa !41
  %i.ed = zext i16 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 8
  %i.ef = or disjoint i32 %i.ee, %.0.i598.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bytestream2_get_byte.exit599.i
  %.sroa.0690.1.i = phi ptr [ %.sroa.0690.38.i, %bytestream2_get_byte.exit599.i ], [ %i.eb, %bb.u ] ; 39 uses
  %.0447.i = phi i32 [ %.0.i598.i, %bytestream2_get_byte.exit599.i ], [ %i.ef, %bb.u ]
  %i.eg = shl nuw nsw i32 %.0447.i, 1             ; 8 uses
  %i.eh = and i32 %.0.i600.i, 64
  %.not512.i = icmp ne i32 %i.eh, 0               ; 2 uses
  %i.ei = sext i1 %.not512.i to i32
  %spec.select557.i = add nsw i32 %i.eg, %i.ei    ; 32 uses
  %i.ej = icmp slt i32 %spec.select557.i, 0
  br i1 %i.ej, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %.0.i600.i, i32 noundef -1) #13
  br label %.loopexit887.i

bb.x:                                             ; preds = %bb.v
  %i.ek = ptrtoint ptr %.sroa.0690.1.i to i64
  %i.el = sub i64 %i.az, %i.ek                    ; 16 uses
  %i.em = trunc i64 %i.el to i32
  %i.en = icmp sgt i32 %i.eg, %i.em
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %spec.select557.i) #13
  br label %.loopexit887.i

bb.z:                                             ; preds = %bb.x
  %i.eo = and i32 %.0.i600.i, 63
  switch i32 %i.eo, label %bb.gc [
    i32 2, label %bb.aa
    i32 3, label %bb.ae
    i32 4, label %bb.ao
    i32 5, label %bb.dl
    i32 6, label %bb.dt
    i32 9, label %bb.eb
    i32 8, label %bb.er
    i32 10, label %bb.ez
    i32 14, label %bb.fa
    i32 12, label %bb.fe
    i32 13, label %bb.fh
    i32 39, label %bb.fy
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ep = icmp samesign ugt i32 %spec.select557.i, 16
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #13
  store i32 0, ptr %i.dq, align 4, !tbaa !58
  %i.eq = zext nneg i32 %i.eg to i64
  %..i613.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.eq)
  %i.er = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i613.i
  br label %.backedge.i

.backedge.i:                                      ; preds = %bytestream2_get_le24.exit.i, %bb.ff, %bb.fb, %bb.ex, %bb.es, %bb.eq, %bb.dm, %bb.ap, %bb.ai, %bb.af, %bb.ab
  %.sroa.0690.0.be.i = phi ptr [ %.sroa.0690.18.i, %bytestream2_get_le24.exit.i ], [ %i.er, %bb.ab ], [ %.sroa.0690.1.i, %bb.af ], [ %i.fp, %bb.ai ], [ %.sroa.0690.1.i, %bb.ap ], [ %i.ace, %bb.dm ], [ %.sroa.0690.16.i, %bb.eq ], [ %.sroa.0690.32.i, %bb.ex ], [ %i.ajw, %bb.es ], [ %i.akv, %bb.fb ], [ %i.alp, %bb.ff ] ; 2 uses
  %.0471.be.i = phi i32 [ %.1472.i, %bytestream2_get_le24.exit.i ], [ %.04711043.i, %bb.ab ], [ 0, %bb.af ], [ 1, %bb.ai ], [ 0, %bb.ap ], [ %.04711043.i, %bb.dm ], [ %.04711043.i, %bb.eq ], [ %.04711043.i, %bb.ex ], [ %.04711043.i, %bb.es ], [ %.04711043.i, %bb.fb ], [ %.04711043.i, %bb.ff ] ; 2 uses
  %.0469.be.i = phi i32 [ %.1470.i, %bytestream2_get_le24.exit.i ], [ %.04691044.i, %bb.ab ], [ %.04691044.i, %bb.af ], [ %.04691044.i, %bb.ai ], [ %.04691044.i, %bb.ap ], [ %.04691044.i, %bb.dm ], [ %.04691044.i, %bb.eq ], [ %.04691044.i, %bb.ex ], [ %.04691044.i, %bb.es ], [ %.04691044.i, %bb.fb ], [ %.04691044.i, %bb.ff ] ; 2 uses
  %.0467.be.i = phi i32 [ %.1468.i, %bytestream2_get_le24.exit.i ], [ %.04671045.i, %bb.ab ], [ %.04671045.i, %bb.af ], [ %.04671045.i, %bb.ai ], [ %.04671045.i, %bb.ap ], [ %.04671045.i, %bb.dm ], [ %.04671045.i, %bb.eq ], [ %.04671045.i, %bb.ex ], [ %.04671045.i, %bb.es ], [ %.04671045.i, %bb.fb ], [ %.04671045.i, %bb.ff ] ; 2 uses
  %.0465.be.i = phi i32 [ %.1466.i, %bytestream2_get_le24.exit.i ], [ %.04651046.i, %bb.ab ], [ %.04651046.i, %bb.af ], [ %.04651046.i, %bb.ai ], [ %.04651046.i, %bb.ap ], [ %.04651046.i, %bb.dm ], [ %.04651046.i, %bb.eq ], [ %.04651046.i, %bb.ex ], [ %.04651046.i, %bb.es ], [ %.04651046.i, %bb.fb ], [ %.04651046.i, %bb.ff ] ; 2 uses
  %.0463.be.i = phi i32 [ %.1464.i, %bytestream2_get_le24.exit.i ], [ %.04631047.i, %bb.ab ], [ %.04631047.i, %bb.af ], [ %.04631047.i, %bb.ai ], [ %.04631047.i, %bb.ap ], [ %.04631047.i, %bb.dm ], [ %.04631047.i, %bb.eq ], [ %.04631047.i, %bb.ex ], [ %.04631047.i, %bb.es ], [ %.04631047.i, %bb.fb ], [ %.04631047.i, %bb.ff ] ; 2 uses
  %.0461.be.i = phi i32 [ %.1462.i, %bytestream2_get_le24.exit.i ], [ %.04611048.i, %bb.ab ], [ %.04611048.i, %bb.af ], [ %.04611048.i, %bb.ai ], [ %.04611048.i, %bb.ap ], [ %.04611048.i, %bb.dm ], [ %.04611048.i, %bb.eq ], [ %.04611048.i, %bb.ex ], [ %.04611048.i, %bb.es ], [ %.04611048.i, %bb.fb ], [ %.04611048.i, %bb.ff ] ; 2 uses
  %.0459.be.i = phi i32 [ %.1460.i, %bytestream2_get_le24.exit.i ], [ %.04591049.i, %bb.ab ], [ %.04591049.i, %bb.af ], [ %.04591049.i, %bb.ai ], [ %.04591049.i, %bb.ap ], [ %.04591049.i, %bb.dm ], [ %.04591049.i, %bb.eq ], [ %.04591049.i, %bb.ex ], [ %.04591049.i, %bb.es ], [ %.04591049.i, %bb.fb ], [ %.04591049.i, %bb.ff ] ; 2 uses
  %.0457.be.i = phi i32 [ %.1458.i, %bytestream2_get_le24.exit.i ], [ %.04571050.i, %bb.ab ], [ %.04571050.i, %bb.af ], [ %.04571050.i, %bb.ai ], [ %.04571050.i, %bb.ap ], [ %.04571050.i, %bb.dm ], [ %.04571050.i, %bb.eq ], [ %.04571050.i, %bb.ex ], [ %.04571050.i, %bb.es ], [ %.04571050.i, %bb.fb ], [ %.04571050.i, %bb.ff ] ; 2 uses
  %.0443.be.i = phi i32 [ %.1444.i, %bytestream2_get_le24.exit.i ], [ %.04431051.i, %bb.ab ], [ %.04431051.i, %bb.af ], [ %.04431051.i, %bb.ai ], [ %.04431051.i, %bb.ap ], [ %.04431051.i, %bb.dm ], [ %.04431051.i, %bb.eq ], [ %.04431051.i, %bb.ex ], [ %.04431051.i, %bb.es ], [ %.04431051.i, %bb.fb ], [ %.04431051.i, %bb.ff ] ; 2 uses
  %.0441.be.i = phi i32 [ %.1442.i, %bytestream2_get_le24.exit.i ], [ %.04411052.i, %bb.ab ], [ %.04411052.i, %bb.af ], [ %.04411052.i, %bb.ai ], [ %.04411052.i, %bb.ap ], [ %.04411052.i, %bb.dm ], [ %.04411052.i, %bb.eq ], [ %.04411052.i, %bb.ex ], [ %.04411052.i, %bb.es ], [ %.04411052.i, %bb.fb ], [ %.04411052.i, %bb.ff ] ; 2 uses
  %.0439.be.i = phi i32 [ %.1440.i, %bytestream2_get_le24.exit.i ], [ %.04391053.i, %bb.ab ], [ %.04391053.i, %bb.af ], [ %.04391053.i, %bb.ai ], [ %.04391053.i, %bb.ap ], [ %.04391053.i, %bb.dm ], [ %.04391053.i, %bb.eq ], [ %.04391053.i, %bb.ex ], [ %.04391053.i, %bb.es ], [ %.04391053.i, %bb.fb ], [ %.04391053.i, %bb.ff ] ; 2 uses
  %.0437.be.i = phi i32 [ %.1438.i, %bytestream2_get_le24.exit.i ], [ %.04371054.i, %bb.ab ], [ %.04371054.i, %bb.af ], [ %.04371054.i, %bb.ai ], [ %.04371054.i, %bb.ap ], [ %.04371054.i, %bb.dm ], [ %.04371054.i, %bb.eq ], [ %.04371054.i, %bb.ex ], [ %.04371054.i, %bb.es ], [ %.04371054.i, %bb.fb ], [ %.04371054.i, %bb.ff ] ; 2 uses
  %.0435.be.i = phi i64 [ %.1436.i, %bytestream2_get_le24.exit.i ], [ %.04351055.i, %bb.ab ], [ %.04351055.i, %bb.af ], [ %.04351055.i, %bb.ai ], [ %.04351055.i, %bb.ap ], [ %.04351055.i, %bb.dm ], [ %.04351055.i, %bb.eq ], [ %.04351055.i, %bb.ex ], [ %.04351055.i, %bb.es ], [ %.04351055.i, %bb.fb ], [ %.04351055.i, %bb.ff ] ; 2 uses
  %i.es = ptrtoint ptr %.sroa.0690.0.be.i to i64
  %i.et = sub i64 %i.az, %i.es                    ; 2 uses
  %i.eu = and i64 %i.et, 4294967295
  %.not510.i = icmp eq i64 %i.eu, 0
  br i1 %.not510.i, label %.loopexit887.i, label %bb.r, !llvm.loop !100

bb.ac:                                            ; preds = %bb.aa
  store i32 %spec.select557.i, ptr %i.dq, align 4, !tbaa !58
  %.not1071.i = icmp eq i32 %spec.select557.i, 0
  br i1 %.not1071.i, label %bytestream2_get_le24.exit.i, label %.lr.ph1039.preheader.i

.lr.ph1039.preheader.i:                           ; preds = %bb.ac
  %i.ev = zext nneg i32 %spec.select557.i to i64  ; 2 uses
  %i.ew = getelementptr [88 x i8], ptr %i.aq, i64 %i.ev
  br label %.lr.ph1039.i

.lr.ph1039.i:                                     ; preds = %bytestream2_get_byte.exit597.i, %.lr.ph1039.preheader.i
  %indvars.iv1204.i = phi i64 [ 0, %.lr.ph1039.preheader.i ], [ %indvars.iv.next1205.i, %bytestream2_get_byte.exit597.i ] ; 2 uses
  %.sroa.0690.21036.i = phi ptr [ %.sroa.0690.1.i, %.lr.ph1039.preheader.i ], [ %.sroa.0690.37.i, %bytestream2_get_byte.exit597.i ] ; 3 uses
  %i.ex = ptrtoint ptr %.sroa.0690.21036.i to i64
  %i.ey = sub i64 %i.az, %i.ex
  %i.ez = icmp slt i64 %i.ey, 1
  br i1 %i.ez, label %bytestream2_get_byte.exit597.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1039.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0690.21036.i, i64 1
  %i.fb = load i8, ptr %.sroa.0690.21036.i, align 1, !tbaa !41
  %i.fc = zext i8 %i.fb to i32
  br label %bytestream2_get_byte.exit597.i

bytestream2_get_byte.exit597.i:                   ; preds = %bb.ad, %.lr.ph1039.i
  %.sroa.0690.37.i = phi ptr [ %i.fa, %bb.ad ], [ %i.ay, %.lr.ph1039.i ] ; 2 uses
  %.0.i596.i = phi i32 [ %i.fc, %bb.ad ], [ 0, %.lr.ph1039.i ] ; 2 uses
  %i.fd = and i32 %.0.i596.i, 31
  %i.fe = add nsw i32 %i.fd, -5
  %i.ff = xor i64 %indvars.iv1204.i, -1
  %i.fg = getelementptr [88 x i8], ptr %i.ew, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.fe, ptr %i.fh, align 4, !tbaa !61
  %i.fi = lshr i32 %.0.i596.i, 5
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !62
  %indvars.iv.next1205.i = add nuw nsw i64 %indvars.iv1204.i, 1 ; 2 uses
  %exitcond1208.not.i = icmp eq i64 %indvars.iv.next1205.i, %i.ev
  br i1 %exitcond1208.not.i, label %bytestream2_get_le24.exit.i, label %.lr.ph1039.i, !llvm.loop !101

bb.ae:                                            ; preds = %bb.z
  %.not529.i = icmp eq i32 %.04711043.i, 0
  br i1 %.not529.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.10) #13
  br label %.backedge.i

bb.ag:                                            ; preds = %bb.ae
  %i.fj = load i32, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %i.fk = lshr i32 %spec.select557.i, %i.fj       ; 4 uses
  %i.fl = icmp samesign ugt i32 %i.fk, 16
  br i1 %i.fl, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fm = load i32, ptr %i.dq, align 4, !tbaa !58 ; 2 uses
  %i.fn = icmp sgt i32 %i.fk, %i.fm
  br i1 %i.fn, label %bb.ai, label %.preheader877.i

.preheader877.i:                                  ; preds = %bb.ah
  %.not1070.i = icmp eq i32 %i.fk, 0
  br i1 %.not1070.i, label %bytestream2_get_le24.exit.i, label %.lr.ph1034.i

.lr.ph1034.i:                                     ; preds = %.preheader877.i
  %.not530.i = icmp eq i32 %i.fj, 0
  %5 = zext nneg i32 %i.fm to i64
  %wide.trip.count1202.i = zext nneg i32 %i.fk to i64
  %6 = getelementptr [88 x i8], ptr %i.aq, i64 %5
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.11) #13
  %i.fo = zext nneg i32 %i.eg to i64
  %..i612.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.fo)
  %i.fp = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i612.i
  br label %.backedge.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph1034.i
  %indvars.iv1199.i = phi i64 [ 0, %.lr.ph1034.i ], [ %indvars.iv.next1200.i, %bb.an ] ; 2 uses
  %.sroa.0690.31032.i = phi ptr [ %.sroa.0690.1.i, %.lr.ph1034.i ], [ %.sroa.0690.4.i, %bb.an ] ; 3 uses
  %i.fq = ptrtoint ptr %.sroa.0690.31032.i to i64
  %i.fr = sub i64 %i.az, %i.fq
  %i.fs = icmp slt i64 %i.fr, 1
  br i1 %i.fs, label %bytestream2_get_byte.exit595.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0690.31032.i, i64 1
  %i.fu = load i8, ptr %.sroa.0690.31032.i, align 1, !tbaa !41
  %.fr.i = freeze i8 %i.fu
  %i.fv = zext i8 %.fr.i to i32
  %i.fw = shl nuw i32 %i.fv, 24
  %i.fx = ashr exact i32 %i.fw, 21                ; 3 uses
  %7 = icmp sgt i32 %i.fx, 0
  %8 = add nuw nsw i32 %i.fx, 64
  %9 = lshr i32 %8, 7
  %spec.select1419.i = select i1 %7, i32 %9, i32 0
  %10 = add nuw nsw i32 %spec.select1419.i, %i.fx
  br label %bytestream2_get_byte.exit595.i

bytestream2_get_byte.exit595.i:                   ; preds = %bb.aj, %bb.ak
  %.sroa.0690.36.i = phi ptr [ %i.ft, %bb.ak ], [ %i.ay, %bb.aj ] ; 4 uses
  %.0.i594.i = phi i32 [ %10, %bb.ak ], [ 0, %bb.aj ]
  %.pn = xor i64 %indvars.iv1199.i, -1
  %i.fy = getelementptr [88 x i8], ptr %6, i64 %.pn ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 %.0.i594.i, ptr %i.fz, align 8, !tbaa !63
  br i1 %.not530.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bytestream2_get_byte.exit595.i
  %i.ga = ptrtoint ptr %.sroa.0690.36.i to i64
  %i.gb = sub i64 %i.az, %i.ga
  %i.gc = icmp slt i64 %i.gb, 1
  br i1 %i.gc, label %bytestream2_get_byte.exit593.thread.i, label %bytestream2_get_byte.exit593.i

bytestream2_get_byte.exit593.thread.i:            ; preds = %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !64
  br label %bb.an

bytestream2_get_byte.exit593.i:                   ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0690.36.i, i64 1 ; 2 uses
  %i.gf = load i8, ptr %.sroa.0690.36.i, align 1, !tbaa !41
  %i.gg = zext i8 %i.gf to i32
  %sext531.i = shl nuw i32 %i.gg, 24
  %i.gh = ashr exact i32 %sext531.i, 21           ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 12 ; 2 uses
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !64
  %i.gj = icmp sgt i32 %i.gh, 0
  br i1 %i.gj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bytestream2_get_byte.exit593.i
  %i.gk = add nuw nsw i32 %i.gh, 64
  %i.gl = lshr i32 %i.gk, 7
  %i.gm = add nuw nsw i32 %i.gl, %i.gh
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bytestream2_get_byte.exit593.i, %bytestream2_get_byte.exit593.thread.i, %bytestream2_get_byte.exit595.i
  %.sroa.0690.4.i = phi ptr [ %.sroa.0690.36.i, %bytestream2_get_byte.exit595.i ], [ %i.ge, %bb.am ], [ %i.ge, %bytestream2_get_byte.exit593.i ], [ %i.ay, %bytestream2_get_byte.exit593.thread.i ] ; 2 uses
  %indvars.iv.next1200.i = add nuw nsw i64 %indvars.iv1199.i, 1 ; 2 uses
  %exitcond1203.not.i = icmp eq i64 %indvars.iv.next1200.i, %wide.trip.count1202.i
  br i1 %exitcond1203.not.i, label %bytestream2_get_le24.exit.i, label %bb.aj, !llvm.loop !102

bb.ao:                                            ; preds = %bb.z
  %.not526.i = icmp eq i32 %.04711043.i, 0
  br i1 %.not526.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.10) #13
  br label %.backedge.i

bb.aq:                                            ; preds = %bb.ao
  %i.gn = load i32, ptr %i.dq, align 4, !tbaa !58 ; 2 uses
  %i.go = icmp sgt i32 %i.gn, 0
  %i.gp = icmp ne i32 %spec.select557.i, 0
  %i.gq = and i1 %i.gp, %i.go
  br i1 %i.gq, label %.lr.ph1030.preheader.i, label %bytestream2_get_le24.exit.i

.lr.ph1030.preheader.i:                           ; preds = %bb.aq
  %i.gr = zext nneg i32 %i.gn to i64
  br label %.lr.ph1030.i

.lr.ph1030.i:                                     ; preds = %bb.dk, %.lr.ph1030.preheader.i
  %indvars.iv1196.i = phi i64 [ %i.gr, %.lr.ph1030.preheader.i ], [ %indvars.iv.next1197.i, %bb.dk ] ; 2 uses
  %.04451027.i = phi i32 [ 0, %.lr.ph1030.preheader.i ], [ %.2.i, %bb.dk ] ; 4 uses
  %.sroa.0690.51026.i = phi ptr [ %.sroa.0690.1.i, %.lr.ph1030.preheader.i ], [ %.sroa.0690.9.i, %bb.dk ] ; 10 uses
  %indvars.iv.next1197.i = add nsw i64 %indvars.iv1196.i, -1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [88 x i8], ptr %i.aq, i64 %indvars.iv.next1197.i ; 23 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !61 ; 11 uses
  %i.gv = icmp sgt i32 %i.gu, 8
  br i1 %i.gv, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %.lr.ph1030.i
  %i.gw = ptrtoint ptr %.sroa.0690.51026.i to i64
  %i.gx = sub i64 %i.az, %i.gw
  %i.gy = icmp slt i64 %i.gx, 2
  br i1 %i.gy, label %bytestream2_get_le16.exit668.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0690.51026.i, i64 2
  %i.ha = load i16, ptr %.sroa.0690.51026.i, align 1, !tbaa !41
  br label %bytestream2_get_le16.exit668.i

bytestream2_get_le16.exit668.i:                   ; preds = %bb.as, %bb.ar
  %.sroa.0690.52.i = phi ptr [ %i.gz, %bb.as ], [ %i.ay, %bb.ar ] ; 3 uses
  %.0.i667.i = phi i16 [ %i.ha, %bb.as ], [ 0, %bb.ar ] ; 2 uses
  %spec.select.i641.i = call i16 @llvm.abs.i16(i16 %.0.i667.i, i1 false) ; 2 uses
  %i.hb = ashr i16 %spec.select.i641.i, 8         ; 3 uses
  %i.hc = icmp ugt i16 %i.hb, 31
  br i1 %i.hc, label %wp_exp2.exit643.i, label %bb.at

bb.at:                                            ; preds = %bytestream2_get_le16.exit668.i
  %i.hd = zext nneg i16 %i.hb to i32              ; 2 uses
  %i.he = and i16 %spec.select.i641.i, 255
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @ff_wp_exp2_table, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !41
  %i.hi = zext i8 %i.hh to i32
  %i.hj = or disjoint i32 %i.hi, 256              ; 2 uses
  %i.hk = icmp samesign ugt i16 %i.hb, 9
  %i.hl = add nsw i32 %i.hd, -9
  %i.hm = shl nuw nsw i32 %i.hj, %i.hl
  %i.hn = sub nuw nsw i32 9, %i.hd
  %i.ho = lshr i32 %i.hj, %i.hn
  %i.hp = select i1 %i.hk, i32 %i.hm, i32 %i.ho   ; 2 uses
  %i.hq = sub nsw i32 0, %i.hp
  %i.hr = icmp slt i16 %.0.i667.i, 0
  %i.hs = select i1 %i.hr, i32 %i.hq, i32 %i.hp
  br label %wp_exp2.exit643.i

wp_exp2.exit643.i:                                ; preds = %bb.at, %bytestream2_get_le16.exit668.i
  %.015.i642.i = phi i32 [ %i.hs, %bb.at ], [ -2147483648, %bytestream2_get_le16.exit668.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store i32 %.015.i642.i, ptr %i.ht, align 4, !tbaa !53
  %i.hu = ptrtoint ptr %.sroa.0690.52.i to i64
  %i.hv = sub i64 %i.az, %i.hu
  %i.hw = icmp slt i64 %i.hv, 2
  br i1 %i.hw, label %bytestream2_get_le16.exit666.i, label %bb.au

bb.au:                                            ; preds = %wp_exp2.exit643.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0690.52.i, i64 2
  %i.hy = load i16, ptr %.sroa.0690.52.i, align 1, !tbaa !41
  br label %bytestream2_get_le16.exit666.i

bytestream2_get_le16.exit666.i:                   ; preds = %bb.au, %wp_exp2.exit643.i
  %.sroa.0690.51.i = phi ptr [ %i.hx, %bb.au ], [ %i.ay, %wp_exp2.exit643.i ] ; 4 uses
  %.0.i665.i = phi i16 [ %i.hy, %bb.au ], [ 0, %wp_exp2.exit643.i ] ; 2 uses
  %spec.select.i638.i = call i16 @llvm.abs.i16(i16 %.0.i665.i, i1 false) ; 2 uses
  %i.hz = ashr i16 %spec.select.i638.i, 8         ; 3 uses
  %i.ia = icmp ugt i16 %i.hz, 31
  br i1 %i.ia, label %wp_exp2.exit640.i, label %bb.av

bb.av:                                            ; preds = %bytestream2_get_le16.exit666.i
  %i.ib = zext nneg i16 %i.hz to i32              ; 2 uses
  %i.ic = and i16 %spec.select.i638.i, 255
  %i.id = zext nneg i16 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @ff_wp_exp2_table, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !41
  %i.ig = zext i8 %i.if to i32
  %i.ih = or disjoint i32 %i.ig, 256              ; 2 uses
  %i.ii = icmp samesign ugt i16 %i.hz, 9
  %i.ij = add nsw i32 %i.ib, -9
  %i.ik = shl nuw nsw i32 %i.ih, %i.ij
  %i.il = sub nuw nsw i32 9, %i.ib
  %i.im = lshr i32 %i.ih, %i.il
  %i.in = select i1 %i.ii, i32 %i.ik, i32 %i.im   ; 2 uses
  %i.io = sub nsw i32 0, %i.in
  %i.ip = icmp slt i16 %.0.i665.i, 0
  %i.iq = select i1 %i.ip, i32 %i.io, i32 %i.in
  br label %wp_exp2.exit640.i

wp_exp2.exit640.i:                                ; preds = %bb.av, %bytestream2_get_le16.exit666.i
  %.015.i639.i = phi i32 [ %i.iq, %bb.av ], [ -2147483648, %bytestream2_get_le16.exit666.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gs, i64 20
  store i32 %.015.i639.i, ptr %i.ir, align 4, !tbaa !53
  %i.is = load i32, ptr %i.cb, align 8, !tbaa !51
  %.not528.i = icmp eq i32 %i.is, 0
  br i1 %.not528.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %wp_exp2.exit640.i
  %i.it = ptrtoint ptr %.sroa.0690.51.i to i64
  %i.iu = sub i64 %i.az, %i.it
  %i.iv = icmp slt i64 %i.iu, 2
  br i1 %i.iv, label %bytestream2_get_le16.exit664.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0690.51.i, i64 2
  %i.ix = load i16, ptr %.sroa.0690.51.i, align 1, !tbaa !41
  br label %bytestream2_get_le16.exit664.i

bytestream2_get_le16.exit664.i:                   ; preds = %bb.ax, %bb.aw
  %.sroa.0690.50.i = phi ptr [ %i.iw, %bb.ax ], [ %i.ay, %bb.aw ] ; 3 uses
  %.0.i663.i = phi i16 [ %i.ix, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %spec.select.i635.i = call i16 @llvm.abs.i16(i16 %.0.i663.i, i1 false) ; 2 uses
  %i.iy = ashr i16 %spec.select.i635.i, 8         ; 3 uses
  %i.iz = icmp ugt i16 %i.iy, 31
  br i1 %i.iz, label %wp_exp2.exit637.i, label %bb.ay

bb.ay:                                            ; preds = %bytestream2_get_le16.exit664.i
  %i.ja = zext nneg i16 %i.iy to i32              ; 2 uses
  %i.jb = and i16 %spec.select.i635.i, 255
  %i.jc = zext nneg i16 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr @ff_wp_exp2_table, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !41
  %i.jf = zext i8 %i.je to i32
  %i.jg = or disjoint i32 %i.jf, 256              ; 2 uses
  %i.jh = icmp samesign ugt i16 %i.iy, 9
  %i.ji = add nsw i32 %i.ja, -9
  %i.jj = shl nuw nsw i32 %i.jg, %i.ji
  %i.jk = sub nuw nsw i32 9, %i.ja
  %i.jl = lshr i32 %i.jg, %i.jk
  %i.jm = select i1 %i.jh, i32 %i.jj, i32 %i.jl   ; 2 uses
  %i.jn = sub nsw i32 0, %i.jm
  %i.jo = icmp slt i16 %.0.i663.i, 0
  %i.jp = select i1 %i.jo, i32 %i.jn, i32 %i.jm
  br label %wp_exp2.exit637.i

wp_exp2.exit637.i:                                ; preds = %bb.ay, %bytestream2_get_le16.exit664.i
  %.015.i636.i = phi i32 [ %i.jp, %bb.ay ], [ -2147483648, %bytestream2_get_le16.exit664.i ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  store i32 %.015.i636.i, ptr %i.jq, align 4, !tbaa !53
  %i.jr = ptrtoint ptr %.sroa.0690.50.i to i64
  %i.js = sub i64 %i.az, %i.jr
  %i.jt = icmp slt i64 %i.js, 2
  br i1 %i.jt, label %bytestream2_get_le16.exit662.i, label %bb.az
end_hunk_0
