Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 556
begin_hunk_0_@_ZN8tetgenio9load_polyEPc:bb.a

bb.v:                                             ; preds = %.thread
  %i.bb = call noundef zeroext i1 @_ZN8tetgenio14load_node_callEP8_IO_FILEiiPc(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %.0174, i32 noundef %.0170706, i32 noundef %.0169, ptr nonnull poison)
  br i1 %i.bb, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.x:                                             ; preds = %.thread
  %i.bd = call noundef zeroext i1 @_ZN8tetgenio9load_nodeEPc(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %1)
  br i1 %i.bd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.z:                                             ; preds = %bb.x, %bb.v
  %i.bf = load i32, ptr %i.l, align 4, !tbaa !56  ; 4 uses
  %i.bg = and i32 %i.bf, -2
  %switch = icmp eq i32 %i.bg, 2
  br i1 %switch, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.bh = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.ab:                                            ; preds = %bb.z
  %i.bi = load i32, ptr %i.w, align 8, !tbaa !44
  %.not198 = icmp sgt i32 %i.bi, %i.bf
  br i1 %.not198, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = add nuw nsw i32 %i.bf, 1
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %i.bj) ; 0 uses
  %i.bl = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.ad:                                            ; preds = %bb.ab
  %i.bm = icmp eq i32 %i.bf, 3
  br i1 %i.bm, label %bb.ae, label %bb.fo

bb.ae:                                            ; preds = %bb.ad
  %i.bn = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.loopexit411, label %.preheader.i234

.preheader.i234:                                  ; preds = %bb.ae, %.preheader.i234.backedge
  %.0.i235 = phi ptr [ %.0.i235.be, %.preheader.i234.backedge ], [ %i.bn, %bb.ae ] ; 4 uses
  %i.bp = load i8, ptr %.0.i235, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.bp, label %bb.af [
    i8 35, label %.critedge4.backedge.i237
    i8 0, label %.critedge4.backedge.i237
    i8 43, label %bb.ag
    i8 45, label %bb.ag
    i8 46, label %bb.ag
  ]

bb.af:                                            ; preds = %.preheader.i234
  %i.bq = add i8 %i.bp, -58
  %or.cond.i238 = icmp ult i8 %i.bq, -10
  br i1 %or.cond.i238, label %.critedge2.i239, label %bb.ag

.critedge2.i239:                                  ; preds = %bb.af
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i235, i64 1
  br label %.preheader.i234.backedge

.preheader.i234.backedge:                         ; preds = %.critedge2.i239, %.critedge4.backedge.i237
  %.0.i235.be = phi ptr [ %i.br, %.critedge2.i239 ], [ %i.bs, %.critedge4.backedge.i237 ]
  br label %.preheader.i234, !llvm.loop !0

.critedge4.backedge.i237:                         ; preds = %.preheader.i234, %.preheader.i234
  %i.bs = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.loopexit411, label %.preheader.i234.backedge

.loopexit411:                                     ; preds = %.critedge4.backedge.i237, %bb.ae
  store ptr null, ptr %i.d, align 8, !tbaa !53
  %i.bu = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.ag:                                            ; preds = %bb.af, %.preheader.i234, %.preheader.i234, %.preheader.i234
  store ptr %.0.i235, ptr %i.d, align 8, !tbaa !53
  %i.bv = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i235, ptr noundef nonnull %i.d, i32 noundef 0) #40
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 10 uses
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !82
  %i.by = icmp slt i32 %i.bw, 1
  br i1 %i.by, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bz = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.ai:                                            ; preds = %bb.ag
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %.0.i241 = phi ptr [ %i.ca, %bb.ai ], [ %i.cc, %bb.ak ] ; 3 uses
  %i.cb = load i8, ptr %.0.i241, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.cb, label %bb.ak [
    i8 0, label %.critedge.i242.preheader
    i8 35, label %.critedge.i242.preheader
    i8 32, label %.critedge.i242.preheader
    i8 9, label %.critedge.i242.preheader
    i8 44, label %.critedge.i242.preheader
  ]

.critedge.i242.preheader:                         ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj
  br label %.critedge.i242

bb.ak:                                            ; preds = %bb.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i241, i64 1
  br label %bb.aj, !llvm.loop !1

.critedge.i242:                                   ; preds = %.critedge.i242.preheader, %.critedge4.i245
  %i.cd = phi i8 [ %.pre.i246, %.critedge4.i245 ], [ %i.cb, %.critedge.i242.preheader ] ; 2 uses
  %.1.i243 = phi ptr [ %i.cf, %.critedge4.i245 ], [ %.0.i241, %.critedge.i242.preheader ] ; 5 uses
  switch i8 %i.cd, label %bb.al [
    i8 35, label %bb.am
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit247
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit247
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit247
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit247
  ]

bb.al:                                            ; preds = %.critedge.i242
  %i.ce = add i8 %i.cd, -58
  %or.cond.i244 = icmp ult i8 %i.ce, -10
  br i1 %or.cond.i244, label %.critedge4.i245, label %_ZN8tetgenio14findnextnumberEPc.exit247

.critedge4.i245:                                  ; preds = %bb.al
  %i.cf = getelementptr inbounds nuw i8, ptr %.1.i243, i64 1 ; 2 uses
  %.pre.i246 = load i8, ptr %i.cf, align 1, !tbaa !50
  br label %.critedge.i242, !llvm.loop !2

bb.am:                                            ; preds = %.critedge.i242
  store i8 0, ptr %.1.i243, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit247

_ZN8tetgenio14findnextnumberEPc.exit247:          ; preds = %.critedge.i242, %.critedge.i242, %.critedge.i242, %.critedge.i242, %bb.al, %bb.am
  store ptr %.1.i243, ptr %i.d, align 8, !tbaa !53
  %i.cg = load i8, ptr %.1.i243, align 1, !tbaa !50
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit247
  %i.ci = call i64 @__isoc23_strtol(ptr noundef nonnull %.1.i243, ptr noundef nonnull %i.d, i32 noundef 0) #40
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = icmp eq i64 %i.cj, 1
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit247, %bb.an
  %.1171 = phi i1 [ %i.ck, %bb.an ], [ false, %_ZN8tetgenio14findnextnumberEPc.exit247 ] ; 4 uses
  %i.cl = load i32, ptr %i.bx, align 8, !tbaa !82 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i32 %i.cl, 0
  %i.co = shl nsw i64 %i.cm, 5
  %i.cp = select i1 %i.cn, i64 -1, i64 %i.co
  %i.cq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #41
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !83
  br i1 %.1171, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cs = load i32, ptr %i.bx, align 8, !tbaa !82 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i32 %i.cs, 0
  %i.cv = shl nsw i64 %i.ct, 2
  %i.cw = select i1 %i.cu, i64 -1, i64 %i.cv
  %i.cx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #41
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !84
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cz = load i32, ptr %i.bx, align 8, !tbaa !82
  %.not200526 = icmp slt i32 %i.cz, 1             ; 2 uses
  br i1 %.not199, label %.preheader, label %.preheader409

.preheader409:                                    ; preds = %bb.aq
  br i1 %.not200526, label %.loopexit410, label %.lr.ph518

.lr.ph518:                                        ; preds = %.preheader409
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.ar

.preheader:                                       ; preds = %bb.aq
  br i1 %.not200526, label %.loopexit401, label %.lr.ph528

.lr.ph528:                                        ; preds = %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.cq

bb.ar:                                            ; preds = %.lr.ph518, %bb.co
  %indvars.iv646 = phi i64 [ 1, %.lr.ph518 ], [ %indvars.iv.next647, %bb.co ] ; 9 uses
  %i.dc = load ptr, ptr %i.cr, align 8, !tbaa !83
  %i.dd = add nsw i64 %indvars.iv646, -1          ; 2 uses
  %i.de = getelementptr inbounds [32 x i8], ptr %i.dc, i64 %i.dd ; 7 uses
  store ptr null, ptr %i.de, align 8, !tbaa !86
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 7 uses
  store i32 0, ptr %i.df, align 8, !tbaa !87
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 5 uses
  store ptr null, ptr %i.dg, align 8, !tbaa !88
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 7 uses
  store i32 0, ptr %i.dh, align 8, !tbaa !89
  %i.di = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254, label %.preheader.i248

.preheader.i248:                                  ; preds = %bb.ar, %.preheader.i248.backedge
  %.0.i249 = phi ptr [ %.0.i249.be, %.preheader.i248.backedge ], [ %i.di, %bb.ar ] ; 6 uses
  %i.dk = load i8, ptr %.0.i249, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.dk, label %bb.as [
    i8 35, label %.critedge4.backedge.i251
    i8 0, label %.critedge4.backedge.i251
    i8 43, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254
    i8 45, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254
    i8 46, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254
  ]

bb.as:                                            ; preds = %.preheader.i248
  %i.dl = add i8 %i.dk, -58
  %or.cond.i252 = icmp ult i8 %i.dl, -10
  br i1 %or.cond.i252, label %.critedge2.i253, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254

.critedge2.i253:                                  ; preds = %bb.as
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i249, i64 1
  br label %.preheader.i248.backedge

.preheader.i248.backedge:                         ; preds = %.critedge2.i253, %.critedge4.backedge.i251
  %.0.i249.be = phi ptr [ %i.dm, %.critedge2.i253 ], [ %i.dn, %.critedge4.backedge.i251 ]
  br label %.preheader.i248, !llvm.loop !0

.critedge4.backedge.i251:                         ; preds = %.preheader.i248, %.preheader.i248
  %i.dn = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254, label %.preheader.i248.backedge

_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254: ; preds = %.critedge4.backedge.i251, %.preheader.i248, %.preheader.i248, %.preheader.i248, %bb.as, %bb.ar
  %.020.i250 = phi ptr [ null, %bb.ar ], [ null, %.critedge4.backedge.i251 ], [ %.0.i249, %.preheader.i248 ], [ %.0.i249, %.preheader.i248 ], [ %.0.i249, %bb.as ], [ %.0.i249, %.preheader.i248 ] ; 2 uses
  store ptr %.020.i250, ptr %i.d, align 8, !tbaa !53
  %i.dp = call i64 @__isoc23_strtol(ptr noundef %.020.i250, ptr noundef nonnull %i.d, i32 noundef 0) #40
  %i.dq = trunc i64 %i.dp to i32
  store i32 %i.dq, ptr %i.df, align 8, !tbaa !87
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254
  %.0.i255 = phi ptr [ %i.dr, %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit254 ], [ %i.dt, %bb.au ] ; 3 uses
  %i.ds = load i8, ptr %.0.i255, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.ds, label %bb.au [
    i8 0, label %.critedge.i256.preheader
    i8 35, label %.critedge.i256.preheader
    i8 32, label %.critedge.i256.preheader
    i8 9, label %.critedge.i256.preheader
    i8 44, label %.critedge.i256.preheader
  ]

.critedge.i256.preheader:                         ; preds = %bb.at, %bb.at, %bb.at, %bb.at, %bb.at
  br label %.critedge.i256

bb.au:                                            ; preds = %bb.at
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i255, i64 1
  br label %bb.at, !llvm.loop !1

.critedge.i256:                                   ; preds = %.critedge.i256.preheader, %.critedge4.i259
  %i.du = phi i8 [ %.pre.i260, %.critedge4.i259 ], [ %i.ds, %.critedge.i256.preheader ] ; 2 uses
  %.1.i257 = phi ptr [ %i.dw, %.critedge4.i259 ], [ %.0.i255, %.critedge.i256.preheader ] ; 5 uses
  switch i8 %i.du, label %bb.av [
    i8 35, label %bb.aw
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit261
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit261
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit261
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit261
  ]

bb.av:                                            ; preds = %.critedge.i256
  %i.dv = add i8 %i.du, -58
  %or.cond.i258 = icmp ult i8 %i.dv, -10
  br i1 %or.cond.i258, label %.critedge4.i259, label %_ZN8tetgenio14findnextnumberEPc.exit261

.critedge4.i259:                                  ; preds = %bb.av
  %i.dw = getelementptr inbounds nuw i8, ptr %.1.i257, i64 1 ; 2 uses
  %.pre.i260 = load i8, ptr %i.dw, align 1, !tbaa !50
  br label %.critedge.i256, !llvm.loop !2

bb.aw:                                            ; preds = %.critedge.i256
  store i8 0, ptr %.1.i257, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit261

_ZN8tetgenio14findnextnumberEPc.exit261:          ; preds = %.critedge.i256, %.critedge.i256, %.critedge.i256, %.critedge.i256, %bb.av, %bb.aw
  store ptr %.1.i257, ptr %i.d, align 8, !tbaa !53
  %i.dx = load i8, ptr %.1.i257, align 1, !tbaa !50
  %.not205 = icmp eq i8 %i.dx, 0
  br i1 %.not205, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit261
  %i.dy = call i64 @__isoc23_strtol(ptr noundef nonnull %.1.i257, ptr noundef nonnull %i.d, i32 noundef 0) #40
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dh, align 8, !tbaa !89
  br i1 %.1171, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.0.i262 = phi ptr [ %i.ea, %bb.ay ], [ %i.ec, %bb.ba ] ; 3 uses
  %i.eb = load i8, ptr %.0.i262, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.eb, label %bb.ba [
    i8 0, label %.critedge.i263.preheader
    i8 35, label %.critedge.i263.preheader
    i8 32, label %.critedge.i263.preheader
    i8 9, label %.critedge.i263.preheader
    i8 44, label %.critedge.i263.preheader
  ]

.critedge.i263.preheader:                         ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  br label %.critedge.i263

bb.ba:                                            ; preds = %bb.az
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i262, i64 1
  br label %bb.az, !llvm.loop !1

.critedge.i263:                                   ; preds = %.critedge.i263.preheader, %.critedge4.i266
  %i.ed = phi i8 [ %.pre.i267, %.critedge4.i266 ], [ %i.eb, %.critedge.i263.preheader ] ; 2 uses
  %.1.i264 = phi ptr [ %i.ef, %.critedge4.i266 ], [ %.0.i262, %.critedge.i263.preheader ] ; 5 uses
  switch i8 %i.ed, label %bb.bb [
    i8 35, label %bb.bc
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit268
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit268
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit268
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit268
  ]

bb.bb:                                            ; preds = %.critedge.i263
  %i.ee = add i8 %i.ed, -58
  %or.cond.i265 = icmp ult i8 %i.ee, -10
  br i1 %or.cond.i265, label %.critedge4.i266, label %_ZN8tetgenio14findnextnumberEPc.exit268

.critedge4.i266:                                  ; preds = %bb.bb
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i264, i64 1 ; 2 uses
  %.pre.i267 = load i8, ptr %i.ef, align 1, !tbaa !50
  br label %.critedge.i263, !llvm.loop !2

bb.bc:                                            ; preds = %.critedge.i263
  store i8 0, ptr %.1.i264, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit268

_ZN8tetgenio14findnextnumberEPc.exit268:          ; preds = %.critedge.i263, %.critedge.i263, %.critedge.i263, %.critedge.i263, %bb.bb, %bb.bc
  store ptr %.1.i264, ptr %i.d, align 8, !tbaa !53
  %i.eg = load i8, ptr %.1.i264, align 1, !tbaa !50
  %.not206 = icmp eq i8 %i.eg, 0
  br i1 %.not206, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit268
  %i.eh = call i64 @__isoc23_strtol(ptr noundef nonnull %.1.i264, ptr noundef nonnull %i.d, i32 noundef 0) #40
  %i.ei = trunc i64 %i.eh to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN8tetgenio14findnextnumberEPc.exit268, %_ZN8tetgenio14findnextnumberEPc.exit261
  %.0167 = phi i32 [ %i.ei, %bb.bd ], [ 0, %_ZN8tetgenio14findnextnumberEPc.exit268 ], [ 0, %_ZN8tetgenio14findnextnumberEPc.exit261 ]
  br i1 %.1171, label %bb.bf, label %.critedge

bb.bf:                                            ; preds = %bb.be
  %i.ej = load ptr, ptr %i.da, align 8, !tbaa !84
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.dd
  store i32 %.0167, ptr %i.ek, align 4, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %bb.ax, %bb.bf, %bb.be
  %i.el = load i32, ptr %i.df, align 8, !tbaa !87 ; 2 uses
  %i.em = icmp slt i32 %i.el, 1
  br i1 %i.em, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.critedge
  %i.en = trunc nuw nsw i64 %indvars.iv646 to i32 ; 2 uses
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.en) ; 0 uses
  br label %.loopexit410

bb.bh:                                            ; preds = %.critedge
  %i.ep = zext nneg i32 %i.el to i64
  %i.eq = shl nuw nsw i64 %i.ep, 4
  %i.er = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #41
  store ptr %i.er, ptr %i.de, align 8, !tbaa !86
  %i.es = load i32, ptr %i.df, align 8, !tbaa !87
  %.not207505 = icmp slt i32 %i.es, 1
  br i1 %.not207505, label %.loopexit407.thread, label %.lr.ph508.preheader

.lr.ph508.preheader:                              ; preds = %bb.bh
  %i.et = trunc nuw nsw i64 %indvars.iv646 to i32
  br label %.lr.ph508

.lr.ph508:                                        ; preds = %.lr.ph508.preheader, %.loopexit404
  %indvars.iv640 = phi i64 [ 1, %.lr.ph508.preheader ], [ %indvars.iv.next641, %.loopexit404 ] ; 5 uses
  %i.eu = load ptr, ptr %i.de, align 8, !tbaa !86
  %i.ev = getelementptr [16 x i8], ptr %i.eu, i64 %indvars.iv640 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 -16    ; 3 uses
  store ptr null, ptr %i.ew, align 8, !tbaa !91
  %i.ex = getelementptr i8, ptr %i.ev, i64 -8     ; 5 uses
  store i32 0, ptr %i.ex, align 8, !tbaa !92
  %i.ey = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275, label %.preheader.i269

.preheader.i269:                                  ; preds = %.lr.ph508, %.preheader.i269.backedge
  %.0.i270 = phi ptr [ %.0.i270.be, %.preheader.i269.backedge ], [ %i.ey, %.lr.ph508 ] ; 6 uses
  %i.fa = load i8, ptr %.0.i270, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.fa, label %bb.bi [
    i8 35, label %.critedge4.backedge.i272
    i8 0, label %.critedge4.backedge.i272
    i8 43, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275
    i8 45, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275
    i8 46, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275
  ]

bb.bi:                                            ; preds = %.preheader.i269
  %i.fb = add i8 %i.fa, -58
  %or.cond.i273 = icmp ult i8 %i.fb, -10
  br i1 %or.cond.i273, label %.critedge2.i274, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275

.critedge2.i274:                                  ; preds = %bb.bi
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i270, i64 1
  br label %.preheader.i269.backedge

.preheader.i269.backedge:                         ; preds = %.critedge2.i274, %.critedge4.backedge.i272
  %.0.i270.be = phi ptr [ %i.fc, %.critedge2.i274 ], [ %i.fd, %.critedge4.backedge.i272 ]
  br label %.preheader.i269, !llvm.loop !0

.critedge4.backedge.i272:                         ; preds = %.preheader.i269, %.preheader.i269
  %i.fd = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275, label %.preheader.i269.backedge

_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275: ; preds = %.critedge4.backedge.i272, %.preheader.i269, %.preheader.i269, %.preheader.i269, %bb.bi, %.lr.ph508
  %.020.i271 = phi ptr [ null, %.lr.ph508 ], [ null, %.critedge4.backedge.i272 ], [ %.0.i270, %.preheader.i269 ], [ %.0.i270, %.preheader.i269 ], [ %.0.i270, %bb.bi ], [ %.0.i270, %.preheader.i269 ] ; 2 uses
  store ptr %.020.i271, ptr %i.d, align 8, !tbaa !53
  %i.ff = call i64 @__isoc23_strtol(ptr noundef %.020.i271, ptr noundef nonnull %i.d, i32 noundef 0) #40 ; 2 uses
  %i.fg = trunc i64 %i.ff to i32                  ; 2 uses
  store i32 %i.fg, ptr %i.ex, align 8, !tbaa !92
  %i.fh = icmp slt i32 %i.fg, 1
  br i1 %i.fh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275
  %i.fi = trunc nuw nsw i64 %indvars.iv640 to i32 ; 2 uses
  %i.fj = trunc nuw nsw i64 %indvars.iv646 to i32
  %i.fk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.fi, i32 noundef %i.fj) ; 0 uses
  %.pre668 = load i32, ptr %i.df, align 8, !tbaa !87
  br label %.loopexit407

bb.bk:                                            ; preds = %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit275
  %i.fl = shl i64 %i.ff, 2
  %i.fm = and i64 %i.fl, 8589934588
  %i.fn = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fm) #41
  store ptr %i.fn, ptr %i.ew, align 8, !tbaa !91
  %i.fo = load i32, ptr %i.ex, align 8, !tbaa !92
  %.not208503 = icmp slt i32 %i.fo, 1
  br i1 %.not208503, label %.loopexit404, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk, %bb.bs
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bs ], [ 1, %bb.bk ] ; 4 uses
  %i.fp = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %.lr.ph
  %.0.i276 = phi ptr [ %i.fp, %.lr.ph ], [ %i.fr, %bb.bm ] ; 3 uses
  %i.fq = load i8, ptr %.0.i276, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.fq, label %bb.bm [
    i8 0, label %.critedge.i277.preheader
    i8 35, label %.critedge.i277.preheader
    i8 32, label %.critedge.i277.preheader
    i8 9, label %.critedge.i277.preheader
    i8 44, label %.critedge.i277.preheader
  ]

.critedge.i277.preheader:                         ; preds = %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl
  br label %.critedge.i277

bb.bm:                                            ; preds = %bb.bl
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i276, i64 1
  br label %bb.bl, !llvm.loop !1

.critedge.i277:                                   ; preds = %.critedge.i277.preheader, %.critedge4.i280
  %i.fs = phi i8 [ %.pre.i281, %.critedge4.i280 ], [ %i.fq, %.critedge.i277.preheader ] ; 2 uses
  %.1.i278 = phi ptr [ %i.fu, %.critedge4.i280 ], [ %.0.i276, %.critedge.i277.preheader ] ; 5 uses
  switch i8 %i.fs, label %bb.bn [
    i8 35, label %bb.bo
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit282
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit282
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit282
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit282
  ]

bb.bn:                                            ; preds = %.critedge.i277
  %i.ft = add i8 %i.fs, -58
  %or.cond.i279 = icmp ult i8 %i.ft, -10
  br i1 %or.cond.i279, label %.critedge4.i280, label %_ZN8tetgenio14findnextnumberEPc.exit282

.critedge4.i280:                                  ; preds = %bb.bn
  %i.fu = getelementptr inbounds nuw i8, ptr %.1.i278, i64 1 ; 2 uses
  %.pre.i281 = load i8, ptr %i.fu, align 1, !tbaa !50
  br label %.critedge.i277, !llvm.loop !2

bb.bo:                                            ; preds = %.critedge.i277
  store i8 0, ptr %.1.i278, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit282

_ZN8tetgenio14findnextnumberEPc.exit282:          ; preds = %.critedge.i277, %.critedge.i277, %.critedge.i277, %.critedge.i277, %bb.bn, %bb.bo
  store ptr %.1.i278, ptr %i.d, align 8, !tbaa !53
  %i.fv = load i8, ptr %.1.i278, align 1, !tbaa !50
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit282
  %i.fx = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289, label %.preheader.i283

.preheader.i283:                                  ; preds = %bb.bp, %.preheader.i283.backedge
  %.0.i284 = phi ptr [ %.0.i284.be, %.preheader.i283.backedge ], [ %i.fx, %bb.bp ] ; 6 uses
  %i.fz = load i8, ptr %.0.i284, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.fz, label %bb.bq [
    i8 35, label %.critedge4.backedge.i286
    i8 0, label %.critedge4.backedge.i286
    i8 43, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289
    i8 45, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289
    i8 46, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289
  ]

bb.bq:                                            ; preds = %.preheader.i283
  %i.ga = add i8 %i.fz, -58
  %or.cond.i287 = icmp ult i8 %i.ga, -10
  br i1 %or.cond.i287, label %.critedge2.i288, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289

.critedge2.i288:                                  ; preds = %bb.bq
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i284, i64 1
  br label %.preheader.i283.backedge

.preheader.i283.backedge:                         ; preds = %.critedge2.i288, %.critedge4.backedge.i286
  %.0.i284.be = phi ptr [ %i.gb, %.critedge2.i288 ], [ %i.gc, %.critedge4.backedge.i286 ]
  br label %.preheader.i283, !llvm.loop !0

.critedge4.backedge.i286:                         ; preds = %.preheader.i283, %.preheader.i283
  %i.gc = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289, label %.preheader.i283.backedge

_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289: ; preds = %.critedge4.backedge.i286, %.preheader.i283, %.preheader.i283, %.preheader.i283, %bb.bq, %bb.bp
  %.020.i285 = phi ptr [ null, %bb.bp ], [ null, %.critedge4.backedge.i286 ], [ %.0.i284, %.preheader.i283 ], [ %.0.i284, %.preheader.i283 ], [ %.0.i284, %bb.bq ], [ %.0.i284, %.preheader.i283 ] ; 3 uses
  store ptr %.020.i285, ptr %i.d, align 8, !tbaa !53
  %i.ge = load i8, ptr %.020.i285, align 1, !tbaa !50
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289
  %i.gg = trunc nuw nsw i64 %indvars.iv to i32
  %i.gh = load i32, ptr %i.ex, align 8, !tbaa !92
  %i.gi = sub nsw i32 %i.gh, %i.gg
  %i.gj = trunc nuw nsw i64 %indvars.iv640 to i32
  %i.gk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.gi, i32 noundef %i.gj, i32 noundef %i.et) ; 0 uses
  br label %.loopexit404

bb.bs:                                            ; preds = %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289, %_ZN8tetgenio14findnextnumberEPc.exit282
  %i.gl = phi ptr [ %.020.i285, %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit289 ], [ %.1.i278, %_ZN8tetgenio14findnextnumberEPc.exit282 ]
  %i.gm = call i64 @__isoc23_strtol(ptr noundef nonnull %i.gl, ptr noundef nonnull %i.d, i32 noundef 0) #40
  %i.gn = trunc i64 %i.gm to i32
  %i.go = load ptr, ptr %i.ew, align 8, !tbaa !91
end_hunk_0
begin_hunk_1_@_ZN8tetgenio9load_polyEPc:bb.a
  br label %bb.bz, !llvm.loop !1

.critedge.i298:                                   ; preds = %.critedge.i298.preheader, %.critedge4.i301
  %i.hs = phi i8 [ %.pre.i302, %.critedge4.i301 ], [ %i.hq, %.critedge.i298.preheader ] ; 2 uses
  %.1.i299 = phi ptr [ %i.hu, %.critedge4.i301 ], [ %.0.i297, %.critedge.i298.preheader ] ; 5 uses
  switch i8 %i.hs, label %bb.cb [
    i8 35, label %bb.cc
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit303
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit303
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit303
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit303
  ]

bb.cb:                                            ; preds = %.critedge.i298
  %i.ht = add i8 %i.hs, -58
  %or.cond.i300 = icmp ult i8 %i.ht, -10
  br i1 %or.cond.i300, label %.critedge4.i301, label %_ZN8tetgenio14findnextnumberEPc.exit303

.critedge4.i301:                                  ; preds = %bb.cb
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i299, i64 1 ; 2 uses
  %.pre.i302 = load i8, ptr %i.hu, align 1, !tbaa !50
  br label %.critedge.i298, !llvm.loop !2

bb.cc:                                            ; preds = %.critedge.i298
  store i8 0, ptr %.1.i299, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit303

_ZN8tetgenio14findnextnumberEPc.exit303:          ; preds = %.critedge.i298, %.critedge.i298, %.critedge.i298, %.critedge.i298, %bb.cb, %bb.cc
  store ptr %.1.i299, ptr %i.d, align 8, !tbaa !53
  %i.hv = load i8, ptr %.1.i299, align 1, !tbaa !50
  %i.hw = icmp eq i8 %i.hv, 0
  br i1 %i.hw, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit303.2, %_ZN8tetgenio14findnextnumberEPc.exit303.1, %_ZN8tetgenio14findnextnumberEPc.exit303
  %i.hx = trunc nuw nsw i64 %indvars.iv646 to i32
  %i.hy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %.1160513, i32 noundef %i.hx) ; 0 uses
  %.pre669 = load i32, ptr %i.dh, align 8, !tbaa !89
  br label %.loopexit406

bb.ce:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit303
  %i.hz = call double @strtod(ptr noundef nonnull %.1.i299, ptr noundef nonnull %i.d) #40
  %i.ia = load ptr, ptr %i.dg, align 8, !tbaa !88
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.0164512
  store double %i.hz, ptr %i.ib, align 8, !tbaa !58
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %bb.ce
  %.0.i297.1 = phi ptr [ %i.ic, %bb.ce ], [ %i.io, %bb.cj ] ; 3 uses
  %i.id = load i8, ptr %.0.i297.1, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.id, label %bb.cj [
    i8 0, label %.critedge.i298.1.preheader
    i8 35, label %.critedge.i298.1.preheader
    i8 32, label %.critedge.i298.1.preheader
    i8 9, label %.critedge.i298.1.preheader
    i8 44, label %.critedge.i298.1.preheader
  ]

.critedge.i298.1.preheader:                       ; preds = %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf
  br label %.critedge.i298.1

.critedge.i298.1:                                 ; preds = %.critedge.i298.1.preheader, %.critedge4.i301.1
  %i.ie = phi i8 [ %.pre.i302.1, %.critedge4.i301.1 ], [ %i.id, %.critedge.i298.1.preheader ] ; 2 uses
  %.1.i299.1 = phi ptr [ %i.in, %.critedge4.i301.1 ], [ %.0.i297.1, %.critedge.i298.1.preheader ] ; 5 uses
  switch i8 %i.ie, label %bb.ch [
    i8 35, label %bb.cg
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit303.1
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit303.1
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit303.1
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit303.1
  ]

bb.cg:                                            ; preds = %.critedge.i298.1
  store i8 0, ptr %.1.i299.1, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit303.1

bb.ch:                                            ; preds = %.critedge.i298.1
  %i.if = add i8 %i.ie, -58
  %or.cond.i300.1 = icmp ult i8 %i.if, -10
  br i1 %or.cond.i300.1, label %.critedge4.i301.1, label %_ZN8tetgenio14findnextnumberEPc.exit303.1

_ZN8tetgenio14findnextnumberEPc.exit303.1:        ; preds = %.critedge.i298.1, %.critedge.i298.1, %.critedge.i298.1, %.critedge.i298.1, %bb.ch, %bb.cg
  store ptr %.1.i299.1, ptr %i.d, align 8, !tbaa !53
  %i.ig = load i8, ptr %.1.i299.1, align 1, !tbaa !50
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.cd, label %bb.ci

bb.ci:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit303.1
  %i.ii = call double @strtod(ptr noundef nonnull %.1.i299.1, ptr noundef nonnull %i.d) #40
  %i.ij = load ptr, ptr %i.dg, align 8, !tbaa !88
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.0164512
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store double %i.ii, ptr %i.il, align 8, !tbaa !58
  %i.im = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.ck

.critedge4.i301.1:                                ; preds = %bb.ch
  %i.in = getelementptr inbounds nuw i8, ptr %.1.i299.1, i64 1 ; 2 uses
  %.pre.i302.1 = load i8, ptr %i.in, align 1, !tbaa !50
  br label %.critedge.i298.1, !llvm.loop !2

bb.cj:                                            ; preds = %bb.cf
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i297.1, i64 1
  br label %bb.cf, !llvm.loop !1

bb.ck:                                            ; preds = %bb.cn, %bb.ci
  %.0.i297.2 = phi ptr [ %i.im, %bb.ci ], [ %i.jb, %bb.cn ] ; 3 uses
  %i.ip = load i8, ptr %.0.i297.2, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.ip, label %bb.cn [
    i8 0, label %.critedge.i298.2.preheader
    i8 35, label %.critedge.i298.2.preheader
    i8 32, label %.critedge.i298.2.preheader
    i8 9, label %.critedge.i298.2.preheader
    i8 44, label %.critedge.i298.2.preheader
  ]

.critedge.i298.2.preheader:                       ; preds = %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.ck
  br label %.critedge.i298.2

.critedge.i298.2:                                 ; preds = %.critedge.i298.2.preheader, %.critedge4.i301.2
  %i.iq = phi i8 [ %.pre.i302.2, %.critedge4.i301.2 ], [ %i.ip, %.critedge.i298.2.preheader ] ; 2 uses
  %.1.i299.2 = phi ptr [ %i.ja, %.critedge4.i301.2 ], [ %.0.i297.2, %.critedge.i298.2.preheader ] ; 5 uses
  switch i8 %i.iq, label %bb.cm [
    i8 35, label %bb.cl
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit303.2
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit303.2
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit303.2
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit303.2
  ]

bb.cl:                                            ; preds = %.critedge.i298.2
  store i8 0, ptr %.1.i299.2, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit303.2

bb.cm:                                            ; preds = %.critedge.i298.2
  %i.ir = add i8 %i.iq, -58
  %or.cond.i300.2 = icmp ult i8 %i.ir, -10
  br i1 %or.cond.i300.2, label %.critedge4.i301.2, label %_ZN8tetgenio14findnextnumberEPc.exit303.2

_ZN8tetgenio14findnextnumberEPc.exit303.2:        ; preds = %.critedge.i298.2, %.critedge.i298.2, %.critedge.i298.2, %.critedge.i298.2, %bb.cm, %bb.cl
  store ptr %.1.i299.2, ptr %i.d, align 8, !tbaa !53
  %i.is = load i8, ptr %.1.i299.2, align 1, !tbaa !50
  %i.it = icmp eq i8 %i.is, 0
  br i1 %i.it, label %bb.cd, label %.critedge217

.critedge217:                                     ; preds = %_ZN8tetgenio14findnextnumberEPc.exit303.2
  %i.iu = call double @strtod(ptr noundef nonnull %.1.i299.2, ptr noundef nonnull %i.d) #40
  %i.iv = load ptr, ptr %i.dg, align 8, !tbaa !88
  %indvars.iv.next644.2 = add nuw nsw i64 %.0164512, 3
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.0164512
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store double %i.iu, ptr %i.ix, align 8, !tbaa !58
  %i.iy = add nuw nsw i32 %.1160513, 1            ; 2 uses
  %i.iz = load i32, ptr %i.dh, align 8, !tbaa !89 ; 2 uses
  %.not210.not = icmp slt i32 %.1160513, %i.iz
  br i1 %.not210.not, label %.lr.ph514, label %.loopexit406, !llvm.loop !462

.critedge4.i301.2:                                ; preds = %bb.cm
  %i.ja = getelementptr inbounds nuw i8, ptr %.1.i299.2, i64 1 ; 2 uses
  %.pre.i302.2 = load i8, ptr %i.ja, align 1, !tbaa !50
  br label %.critedge.i298.2, !llvm.loop !2

bb.cn:                                            ; preds = %bb.ck
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i297.2, i64 1
  br label %bb.ck, !llvm.loop !1

.loopexit406:                                     ; preds = %.critedge217, %bb.bx, %bb.cd
  %i.jc = phi i32 [ %.pre669, %bb.cd ], [ %i.hi, %bb.bx ], [ %i.iz, %.critedge217 ]
  %.1160479 = phi i32 [ %.1160513, %bb.cd ], [ 1, %bb.bx ], [ %i.iy, %.critedge217 ]
  %.not211 = icmp sgt i32 %.1160479, %i.jc
  br i1 %.not211, label %bb.co, label %.loopexit410.loopexit

bb.co:                                            ; preds = %.loopexit407.thread, %.loopexit406
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %i.jd = load i32, ptr %i.bx, align 8, !tbaa !82
  %i.je = sext i32 %i.jd to i64
  %.not204.not = icmp slt i64 %indvars.iv646, %i.je
  br i1 %.not204.not, label %bb.ar, label %.loopexit410.loopexit, !llvm.loop !463

.loopexit410.loopexit:                            ; preds = %.loopexit406, %bb.co
  %.0161488.ph.in = phi i64 [ %indvars.iv646, %.loopexit406 ], [ %indvars.iv.next647, %bb.co ]
  %.0161488.ph = trunc i64 %.0161488.ph.in to i32
  br label %.loopexit410

.loopexit410:                                     ; preds = %.loopexit410.loopexit, %.preheader409, %bb.bw, %bb.bg
  %.0161488 = phi i32 [ %i.en, %bb.bg ], [ %i.gx, %bb.bw ], [ 1, %.preheader409 ], [ %.0161488.ph, %.loopexit410.loopexit ] ; 2 uses
  %i.jf = load i32, ptr %i.bx, align 8, !tbaa !82
  %.not212 = icmp sgt i32 %.0161488, %i.jf
  br i1 %.not212, label %bb.dm, label %bb.cp

bb.cp:                                            ; preds = %.loopexit410
  %i.jg = add nsw i32 %.0161488, -1
  store i32 %i.jg, ptr %i.bx, align 8, !tbaa !82
  %i.jh = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.cq:                                            ; preds = %.lr.ph528, %bb.dk
  %indvars.iv653 = phi i64 [ 1, %.lr.ph528 ], [ %indvars.iv.next654, %bb.dk ] ; 6 uses
  %i.ji = load ptr, ptr %i.cr, align 8, !tbaa !83
  %i.jj = add nsw i64 %indvars.iv653, -1          ; 2 uses
  %i.jk = getelementptr inbounds [32 x i8], ptr %i.ji, i64 %i.jj ; 5 uses
  store ptr null, ptr %i.jk, align 8, !tbaa !86
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store ptr null, ptr %i.jm, align 8, !tbaa !88
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  store i32 0, ptr %i.jn, align 8, !tbaa !89
  store i32 1, ptr %i.jl, align 8, !tbaa !87
  %i.jo = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 5 uses
  store ptr %i.jo, ptr %i.jk, align 8, !tbaa !86
  store ptr null, ptr %i.jo, align 8, !tbaa !91
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 6 uses
  store i32 0, ptr %i.jp, align 8, !tbaa !92
  %i.jq = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310, label %.preheader.i304

.preheader.i304:                                  ; preds = %bb.cq, %.preheader.i304.backedge
  %.0.i305 = phi ptr [ %.0.i305.be, %.preheader.i304.backedge ], [ %i.jq, %bb.cq ] ; 6 uses
  %i.js = load i8, ptr %.0.i305, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.js, label %bb.cr [
    i8 35, label %.critedge4.backedge.i307
    i8 0, label %.critedge4.backedge.i307
    i8 43, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310
    i8 45, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310
    i8 46, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310
  ]

bb.cr:                                            ; preds = %.preheader.i304
  %i.jt = add i8 %i.js, -58
  %or.cond.i308 = icmp ult i8 %i.jt, -10
  br i1 %or.cond.i308, label %.critedge2.i309, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310

.critedge2.i309:                                  ; preds = %bb.cr
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i305, i64 1
  br label %.preheader.i304.backedge

.preheader.i304.backedge:                         ; preds = %.critedge2.i309, %.critedge4.backedge.i307
  %.0.i305.be = phi ptr [ %i.ju, %.critedge2.i309 ], [ %i.jv, %.critedge4.backedge.i307 ]
  br label %.preheader.i304, !llvm.loop !0

.critedge4.backedge.i307:                         ; preds = %.preheader.i304, %.preheader.i304
  %i.jv = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310, label %.preheader.i304.backedge

_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310: ; preds = %.critedge4.backedge.i307, %.preheader.i304, %.preheader.i304, %.preheader.i304, %bb.cr, %bb.cq
  %.020.i306 = phi ptr [ null, %bb.cq ], [ null, %.critedge4.backedge.i307 ], [ %.0.i305, %.preheader.i304 ], [ %.0.i305, %.preheader.i304 ], [ %.0.i305, %bb.cr ], [ %.0.i305, %.preheader.i304 ] ; 2 uses
  store ptr %.020.i306, ptr %i.d, align 8, !tbaa !53
  %i.jx = call i64 @__isoc23_strtol(ptr noundef %.020.i306, ptr noundef nonnull %i.d, i32 noundef 0) #40 ; 2 uses
  %i.jy = trunc i64 %i.jx to i32                  ; 2 uses
  store i32 %i.jy, ptr %i.jp, align 8, !tbaa !92
  %i.jz = icmp slt i32 %i.jy, 1
  br i1 %i.jz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310
  %i.ka = trunc nuw nsw i64 %indvars.iv653 to i32 ; 2 uses
  %i.kb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %i.ka) ; 0 uses
  br label %.loopexit401

bb.ct:                                            ; preds = %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit310
  %i.kc = shl i64 %i.jx, 2
  %i.kd = and i64 %i.kc, 8589934588
  %i.ke = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kd) #41
  store ptr %i.ke, ptr %i.jo, align 8, !tbaa !91
  %i.kf = load i32, ptr %i.jp, align 8, !tbaa !92 ; 2 uses
  %.not201522 = icmp slt i32 %i.kf, 1
  br i1 %.not201522, label %.loopexit399, label %.lr.ph524

.lr.ph524:                                        ; preds = %bb.ct, %bb.db
  %indvars.iv649 = phi i64 [ %indvars.iv.next650, %bb.db ], [ 1, %bb.ct ] ; 4 uses
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %.lr.ph524
  %.0.i311 = phi ptr [ %i.kg, %.lr.ph524 ], [ %i.ki, %bb.cv ] ; 3 uses
  %i.kh = load i8, ptr %.0.i311, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.kh, label %bb.cv [
    i8 0, label %.critedge.i312.preheader
    i8 35, label %.critedge.i312.preheader
    i8 32, label %.critedge.i312.preheader
    i8 9, label %.critedge.i312.preheader
    i8 44, label %.critedge.i312.preheader
  ]

.critedge.i312.preheader:                         ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu
  br label %.critedge.i312

bb.cv:                                            ; preds = %bb.cu
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i311, i64 1
  br label %bb.cu, !llvm.loop !1

.critedge.i312:                                   ; preds = %.critedge.i312.preheader, %.critedge4.i315
  %i.kj = phi i8 [ %.pre.i316, %.critedge4.i315 ], [ %i.kh, %.critedge.i312.preheader ] ; 2 uses
  %.1.i313 = phi ptr [ %i.kl, %.critedge4.i315 ], [ %.0.i311, %.critedge.i312.preheader ] ; 5 uses
  switch i8 %i.kj, label %bb.cw [
    i8 35, label %bb.cx
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit317
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit317
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit317
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit317
  ]

bb.cw:                                            ; preds = %.critedge.i312
  %i.kk = add i8 %i.kj, -58
  %or.cond.i314 = icmp ult i8 %i.kk, -10
  br i1 %or.cond.i314, label %.critedge4.i315, label %_ZN8tetgenio14findnextnumberEPc.exit317

.critedge4.i315:                                  ; preds = %bb.cw
  %i.kl = getelementptr inbounds nuw i8, ptr %.1.i313, i64 1 ; 2 uses
  %.pre.i316 = load i8, ptr %i.kl, align 1, !tbaa !50
  br label %.critedge.i312, !llvm.loop !2

bb.cx:                                            ; preds = %.critedge.i312
  store i8 0, ptr %.1.i313, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit317

_ZN8tetgenio14findnextnumberEPc.exit317:          ; preds = %.critedge.i312, %.critedge.i312, %.critedge.i312, %.critedge.i312, %bb.cw, %bb.cx
  store ptr %.1.i313, ptr %i.d, align 8, !tbaa !53
  %i.km = load i8, ptr %.1.i313, align 1, !tbaa !50
  %i.kn = icmp eq i8 %i.km, 0
  br i1 %i.kn, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit317
  %i.ko = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324, label %.preheader.i318

.preheader.i318:                                  ; preds = %bb.cy, %.preheader.i318.backedge
  %.0.i319 = phi ptr [ %.0.i319.be, %.preheader.i318.backedge ], [ %i.ko, %bb.cy ] ; 6 uses
  %i.kq = load i8, ptr %.0.i319, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.kq, label %bb.cz [
    i8 35, label %.critedge4.backedge.i321
    i8 0, label %.critedge4.backedge.i321
    i8 43, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324
    i8 45, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324
    i8 46, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324
  ]

bb.cz:                                            ; preds = %.preheader.i318
  %i.kr = add i8 %i.kq, -58
  %or.cond.i322 = icmp ult i8 %i.kr, -10
  br i1 %or.cond.i322, label %.critedge2.i323, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324

.critedge2.i323:                                  ; preds = %bb.cz
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i319, i64 1
  br label %.preheader.i318.backedge

.preheader.i318.backedge:                         ; preds = %.critedge2.i323, %.critedge4.backedge.i321
  %.0.i319.be = phi ptr [ %i.ks, %.critedge2.i323 ], [ %i.kt, %.critedge4.backedge.i321 ]
  br label %.preheader.i318, !llvm.loop !0

.critedge4.backedge.i321:                         ; preds = %.preheader.i318, %.preheader.i318
  %i.kt = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324, label %.preheader.i318.backedge

_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324: ; preds = %.critedge4.backedge.i321, %.preheader.i318, %.preheader.i318, %.preheader.i318, %bb.cz, %bb.cy
  %.020.i320 = phi ptr [ null, %bb.cy ], [ null, %.critedge4.backedge.i321 ], [ %.0.i319, %.preheader.i318 ], [ %.0.i319, %.preheader.i318 ], [ %.0.i319, %bb.cz ], [ %.0.i319, %.preheader.i318 ] ; 3 uses
  store ptr %.020.i320, ptr %i.d, align 8, !tbaa !53
  %i.kv = load i8, ptr %.020.i320, align 1, !tbaa !50
  %i.kw = icmp eq i8 %i.kv, 0
  br i1 %i.kw, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324
  %i.kx = trunc nuw nsw i64 %indvars.iv649 to i32 ; 2 uses
  %i.ky = load i32, ptr %i.jp, align 8, !tbaa !92
  %i.kz = sub nsw i32 %i.ky, %i.kx
  %i.la = trunc nuw nsw i64 %indvars.iv653 to i32
  %i.lb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %i.kz, i32 noundef %i.la) ; 0 uses
  %.pre670 = load i32, ptr %i.jp, align 8, !tbaa !92
  br label %.loopexit399

bb.db:                                            ; preds = %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324, %_ZN8tetgenio14findnextnumberEPc.exit317
  %i.lc = phi ptr [ %.020.i320, %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit324 ], [ %.1.i313, %_ZN8tetgenio14findnextnumberEPc.exit317 ]
  %i.ld = call i64 @__isoc23_strtol(ptr noundef nonnull %i.lc, ptr noundef nonnull %i.d, i32 noundef 0) #40
  %i.le = trunc i64 %i.ld to i32
  %i.lf = load ptr, ptr %i.jo, align 8, !tbaa !91
  %i.lg = getelementptr [4 x i8], ptr %i.lf, i64 %indvars.iv649
  %i.lh = getelementptr i8, ptr %i.lg, i64 -4
  store i32 %i.le, ptr %i.lh, align 4, !tbaa !59
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %i.li = load i32, ptr %i.jp, align 8, !tbaa !92 ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %.not201.not = icmp slt i64 %indvars.iv649, %i.lj
  br i1 %.not201.not, label %.lr.ph524, label %.loopexit399.loopexit, !llvm.loop !464

.loopexit399.loopexit:                            ; preds = %bb.db
  %i.lk = trunc nuw i64 %indvars.iv.next650 to i32
  br label %.loopexit399

.loopexit399:                                     ; preds = %.loopexit399.loopexit, %bb.ct, %bb.da
  %i.ll = phi i32 [ %.pre670, %bb.da ], [ %i.kf, %bb.ct ], [ %i.li, %.loopexit399.loopexit ]
  %.2452 = phi i32 [ %i.kx, %bb.da ], [ 1, %bb.ct ], [ %i.lk, %.loopexit399.loopexit ]
  %.not202 = icmp sgt i32 %.2452, %i.ll
  br i1 %.not202, label %bb.dc, label %.loopexit401.loopexit

bb.dc:                                            ; preds = %.loopexit399
  br i1 %.1171, label %bb.dd, label %bb.dk

bb.dd:                                            ; preds = %bb.dc
  %i.lm = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.de

bb.de:                                            ; preds = %bb.df, %bb.dd
  %.0.i325 = phi ptr [ %i.lm, %bb.dd ], [ %i.lo, %bb.df ] ; 3 uses
  %i.ln = load i8, ptr %.0.i325, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.ln, label %bb.df [
    i8 0, label %.critedge.i326.preheader
    i8 35, label %.critedge.i326.preheader
    i8 32, label %.critedge.i326.preheader
    i8 9, label %.critedge.i326.preheader
    i8 44, label %.critedge.i326.preheader
  ]

.critedge.i326.preheader:                         ; preds = %bb.de, %bb.de, %bb.de, %bb.de, %bb.de
  br label %.critedge.i326

bb.df:                                            ; preds = %bb.de
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i325, i64 1
  br label %bb.de, !llvm.loop !1

.critedge.i326:                                   ; preds = %.critedge.i326.preheader, %.critedge4.i329
  %i.lp = phi i8 [ %.pre.i330, %.critedge4.i329 ], [ %i.ln, %.critedge.i326.preheader ] ; 2 uses
  %.1.i327 = phi ptr [ %i.lr, %.critedge4.i329 ], [ %.0.i325, %.critedge.i326.preheader ] ; 5 uses
  switch i8 %i.lp, label %bb.dg [
    i8 35, label %bb.dh
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit331
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit331
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit331
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit331
  ]

bb.dg:                                            ; preds = %.critedge.i326
  %i.lq = add i8 %i.lp, -58
  %or.cond.i328 = icmp ult i8 %i.lq, -10
  br i1 %or.cond.i328, label %.critedge4.i329, label %_ZN8tetgenio14findnextnumberEPc.exit331

.critedge4.i329:                                  ; preds = %bb.dg
  %i.lr = getelementptr inbounds nuw i8, ptr %.1.i327, i64 1 ; 2 uses
  %.pre.i330 = load i8, ptr %i.lr, align 1, !tbaa !50
  br label %.critedge.i326, !llvm.loop !2

bb.dh:                                            ; preds = %.critedge.i326
  store i8 0, ptr %.1.i327, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit331

_ZN8tetgenio14findnextnumberEPc.exit331:          ; preds = %.critedge.i326, %.critedge.i326, %.critedge.i326, %.critedge.i326, %bb.dg, %bb.dh
  store ptr %.1.i327, ptr %i.d, align 8, !tbaa !53
  %i.ls = load i8, ptr %.1.i327, align 1, !tbaa !50
  %i.lt = icmp eq i8 %i.ls, 0
  br i1 %i.lt, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit331
  %i.lu = call i64 @__isoc23_strtol(ptr noundef nonnull %.1.i327, ptr noundef nonnull %i.d, i32 noundef 0) #40
  %i.lv = trunc i64 %i.lu to i32
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit331, %bb.di
  %.1168 = phi i32 [ %i.lv, %bb.di ], [ 0, %_ZN8tetgenio14findnextnumberEPc.exit331 ]
  %i.lw = load ptr, ptr %i.db, align 8, !tbaa !84
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.jj
  store i32 %.1168, ptr %i.lx, align 4, !tbaa !59
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dc, %bb.dj
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %i.ly = load i32, ptr %i.bx, align 8, !tbaa !82
  %i.lz = sext i32 %i.ly to i64
  %.not200.not = icmp slt i64 %indvars.iv653, %i.lz
  br i1 %.not200.not, label %bb.cq, label %.loopexit401.loopexit, !llvm.loop !465

.loopexit401.loopexit:                            ; preds = %.loopexit399, %bb.dk
  %.1162457.ph.in = phi i64 [ %indvars.iv653, %.loopexit399 ], [ %indvars.iv.next654, %bb.dk ]
  %.1162457.ph = trunc i64 %.1162457.ph.in to i32
  br label %.loopexit401

.loopexit401:                                     ; preds = %.loopexit401.loopexit, %.preheader, %bb.cs
  %.1162457 = phi i32 [ %i.ka, %bb.cs ], [ 1, %.preheader ], [ %.1162457.ph, %.loopexit401.loopexit ] ; 2 uses
  %i.ma = load i32, ptr %i.bx, align 8, !tbaa !82
  %.not203 = icmp sgt i32 %.1162457, %i.ma
  br i1 %.not203, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.loopexit401
  %i.mb = add nsw i32 %.1162457, -1
  store i32 %i.mb, ptr %i.bx, align 8, !tbaa !82
  %i.mc = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.dm:                                            ; preds = %.loopexit401, %.loopexit410
  %i.md = call noundef ptr @_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_(ptr nonnull align 8 poison, ptr noundef nonnull %i.c, ptr noundef nonnull %.0174, ptr nonnull poison) ; 4 uses
  store ptr %i.md, ptr %i.d, align 8, !tbaa !53
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.mf = call i32 @fclose(ptr noundef nonnull %.0174) ; 0 uses
  br label %bb.fp

bb.do:                                            ; preds = %bb.dm
  %i.mg = load i8, ptr %i.md, align 1, !tbaa !50
  %.not213 = icmp eq i8 %i.mg, 0
  br i1 %.not213, label %.thread714, label %bb.dp

.thread714:                                       ; preds = %bb.do
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.mh, align 8, !tbaa !93
  br label %bb.ei

bb.dp:                                            ; preds = %bb.do
  %i.mi = call i64 @__isoc23_strtol(ptr noundef nonnull %i.md, ptr noundef nonnull %i.d, i32 noundef 0) #40 ; 2 uses
  %i.mj = trunc i64 %i.mi to i32                  ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  store i32 %i.mj, ptr %i.mk, align 8, !tbaa !93
  %i.ml = icmp sgt i32 %i.mj, 0
  br i1 %i.ml, label %bb.dq, label %bb.ei

bb.dq:                                            ; preds = %bb.dp
  %i.mm = mul i64 %i.mi, 24
  %i.mn = and i64 %i.mm, 34359738360
  %i.mo = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mn) #41
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !94
  %i.mq = load i32, ptr %i.mk, align 8, !tbaa !93
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %.lr.ph533, label %.loopexit397

.lr.ph533:                                        ; preds = %bb.dq, %bb.eg
  %indvars.iv657 = phi i64 [ %indvars.iv.next658, %bb.eg ], [ 0, %bb.dq ] ; 5 uses
  %i.ms = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338, label %.preheader.i332

.preheader.i332:                                  ; preds = %.lr.ph533, %.preheader.i332.backedge
  %.0.i333 = phi ptr [ %.0.i333.be, %.preheader.i332.backedge ], [ %i.ms, %.lr.ph533 ] ; 6 uses
  %i.mu = load i8, ptr %.0.i333, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.mu, label %bb.dr [
    i8 35, label %.critedge4.backedge.i335
    i8 0, label %.critedge4.backedge.i335
    i8 43, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338
    i8 45, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338
    i8 46, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338
  ]

bb.dr:                                            ; preds = %.preheader.i332
  %i.mv = add i8 %i.mu, -58
  %or.cond.i336 = icmp ult i8 %i.mv, -10
  br i1 %or.cond.i336, label %.critedge2.i337, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338

.critedge2.i337:                                  ; preds = %bb.dr
  %i.mw = getelementptr inbounds nuw i8, ptr %.0.i333, i64 1
  br label %.preheader.i332.backedge

.preheader.i332.backedge:                         ; preds = %.critedge2.i337, %.critedge4.backedge.i335
  %.0.i333.be = phi ptr [ %i.mw, %.critedge2.i337 ], [ %i.mx, %.critedge4.backedge.i335 ]
  br label %.preheader.i332, !llvm.loop !0

.critedge4.backedge.i335:                         ; preds = %.preheader.i332, %.preheader.i332
  %i.mx = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 2048, ptr noundef nonnull %.0174) ; 2 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338, label %.preheader.i332.backedge

_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338: ; preds = %.critedge4.backedge.i335, %.preheader.i332, %.preheader.i332, %.preheader.i332, %bb.dr, %.lr.ph533
  %.020.i334 = phi ptr [ null, %.lr.ph533 ], [ null, %.critedge4.backedge.i335 ], [ %.0.i333, %.preheader.i332 ], [ %.0.i333, %.preheader.i332 ], [ %.0.i333, %bb.dr ], [ %.0.i333, %.preheader.i332 ] ; 2 uses
  store ptr %.020.i334, ptr %i.d, align 8, !tbaa !53
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dt, %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338
  %.0.i339 = phi ptr [ %.020.i334, %_ZN8tetgenio14readnumberlineEPcP8_IO_FILES0_.exit338 ], [ %i.na, %bb.dt ] ; 3 uses
  %i.mz = load i8, ptr %.0.i339, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.mz, label %bb.dt [
    i8 0, label %.critedge.i340.preheader
    i8 35, label %.critedge.i340.preheader
    i8 32, label %.critedge.i340.preheader
    i8 9, label %.critedge.i340.preheader
    i8 44, label %.critedge.i340.preheader
  ]

.critedge.i340.preheader:                         ; preds = %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds
  br label %.critedge.i340

bb.dt:                                            ; preds = %bb.ds
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i339, i64 1
  br label %bb.ds, !llvm.loop !1

.critedge.i340:                                   ; preds = %.critedge.i340.preheader, %.critedge4.i343
  %i.nb = phi i8 [ %.pre.i344, %.critedge4.i343 ], [ %i.mz, %.critedge.i340.preheader ] ; 2 uses
  %.1.i341 = phi ptr [ %i.nd, %.critedge4.i343 ], [ %.0.i339, %.critedge.i340.preheader ] ; 5 uses
  switch i8 %i.nb, label %bb.du [
    i8 35, label %bb.dv
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit345
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit345
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit345
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit345
  ]

bb.du:                                            ; preds = %.critedge.i340
  %i.nc = add i8 %i.nb, -58
  %or.cond.i342 = icmp ult i8 %i.nc, -10
  br i1 %or.cond.i342, label %.critedge4.i343, label %_ZN8tetgenio14findnextnumberEPc.exit345

.critedge4.i343:                                  ; preds = %bb.du
  %i.nd = getelementptr inbounds nuw i8, ptr %.1.i341, i64 1 ; 2 uses
  %.pre.i344 = load i8, ptr %i.nd, align 1, !tbaa !50
  br label %.critedge.i340, !llvm.loop !2

bb.dv:                                            ; preds = %.critedge.i340
  store i8 0, ptr %.1.i341, align 1, !tbaa !50
  br label %_ZN8tetgenio14findnextnumberEPc.exit345

_ZN8tetgenio14findnextnumberEPc.exit345:          ; preds = %.critedge.i340, %.critedge.i340, %.critedge.i340, %.critedge.i340, %bb.du, %bb.dv
  store ptr %.1.i341, ptr %i.d, align 8, !tbaa !53
  %i.ne = load i8, ptr %.1.i341, align 1, !tbaa !50
  %i.nf = icmp eq i8 %i.ne, 0
  br i1 %i.nf, label %.loopexit397.sink.split, label %bb.dw

bb.dw:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit345
  %i.ng = call double @strtod(ptr noundef nonnull %.1.i341, ptr noundef nonnull %i.d) #40
  %i.nh = load ptr, ptr %i.mp, align 8, !tbaa !94
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv657
  store double %i.ng, ptr %i.ni, align 8, !tbaa !58
  %i.nj = load ptr, ptr %i.d, align 8, !tbaa !53
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %.0.i346 = phi ptr [ %i.nj, %bb.dw ], [ %i.nl, %bb.dy ] ; 3 uses
  %i.nk = load i8, ptr %.0.i346, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.nk, label %bb.dy [
    i8 0, label %.critedge.i347.preheader
    i8 35, label %.critedge.i347.preheader
    i8 32, label %.critedge.i347.preheader
    i8 9, label %.critedge.i347.preheader
    i8 44, label %.critedge.i347.preheader
  ]

.critedge.i347.preheader:                         ; preds = %bb.dx, %bb.dx, %bb.dx, %bb.dx, %bb.dx
  br label %.critedge.i347

bb.dy:                                            ; preds = %bb.dx
  %i.nl = getelementptr inbounds nuw i8, ptr %.0.i346, i64 1
  br label %bb.dx, !llvm.loop !1

.critedge.i347:                                   ; preds = %.critedge.i347.preheader, %.critedge4.i350
  %i.nm = phi i8 [ %.pre.i351, %.critedge4.i350 ], [ %i.nk, %.critedge.i347.preheader ] ; 2 uses
  %.1.i348 = phi ptr [ %i.no, %.critedge4.i350 ], [ %.0.i346, %.critedge.i347.preheader ] ; 5 uses
  switch i8 %i.nm, label %bb.dz [
    i8 35, label %bb.ea
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit352
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit352
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit352
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit352
  ]

bb.dz:                                            ; preds = %.critedge.i347
  %i.nn = add i8 %i.nm, -58
  %or.cond.i349 = icmp ult i8 %i.nn, -10
  br i1 %or.cond.i349, label %.critedge4.i350, label %_ZN8tetgenio14findnextnumberEPc.exit352

.critedge4.i350:                                  ; preds = %bb.dz
  %i.no = getelementptr inbounds nuw i8, ptr %.1.i348, i64 1 ; 2 uses
  %.pre.i351 = load i8, ptr %i.no, align 1, !tbaa !50
  br label %.critedge.i347, !llvm.loop !2
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.j
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !58
  %i.aq = fcmp ugt double %i.ap, %.066
  br i1 %i.aq, label %bb.i, label %._crit_edge.loopexit.split.loop.exit

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !734

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.ar = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit.split.loop.exit, %.preheader68
  %.365.lcssa = phi i32 [ %.264, %.preheader68 ], [ %i.ar, %._crit_edge.loopexit.split.loop.exit ], [ %2, %bb.i ] ; 4 uses
  %i.as = icmp sgt i32 %.2, -1
  br i1 %i.as, label %.lr.ph75.preheader, label %._crit_edge76

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %i.at = zext nneg i32 %.2 to i64
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %bb.j
  %indvars.iv96 = phi i64 [ %i.at, %.lr.ph75.preheader ], [ %indvars.iv.next97, %bb.j ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !112
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.j
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !58
  %i.ay = fcmp ogt double %i.ax, %.066
  br i1 %i.ay, label %._crit_edge76.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph75
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  %i.az = icmp sgt i64 %indvars.iv96, 0
  br i1 %i.az, label %.lr.ph75, label %._crit_edge76, !llvm.loop !735

._crit_edge76.loopexit.split.loop.exit:           ; preds = %.lr.ph75
  %i.ba = trunc nuw nsw i64 %indvars.iv96 to i32
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.j, %._crit_edge76.loopexit.split.loop.exit, %._crit_edge
  %.3.lcssa = phi i32 [ %.2, %._crit_edge ], [ %i.ba, %._crit_edge76.loopexit.split.loop.exit ], [ -1, %bb.j ] ; 3 uses
  %i.bb = add nsw i32 %.3.lcssa, 1
  %i.bc = icmp eq i32 %.365.lcssa, %i.bb
  br i1 %i.bc, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge76
  %i.bd = sext i32 %.365.lcssa to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !112
  %i.bg = sext i32 %.3.lcssa to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !112
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !112
  br label %.preheader68, !llvm.loop !736

.loopexit:                                        ; preds = %._crit_edge76, %._crit_edge90
  %.4 = phi i32 [ %.163.lcssa, %._crit_edge90 ], [ %.365.lcssa, %._crit_edge76 ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10tetgenmesh13hilbert_sort3EPPdiiiddddddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, i32 noundef %11) local_unnamed_addr #32 align 2 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %2, ptr %i.b, align 16, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 69184
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr inbounds [96 x i8], ptr %i.c, i64 %i.d
  %i.f = sext i32 %4 to i64
  %i.g = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.f ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !59
  %i.l = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %2, i32 noundef %i.i, i32 noundef %i.k, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.l, ptr %i.m, align 16, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !59
  %i.r = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.q, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.r, ptr %i.s, align 8, !tbaa !59
  %i.t = load i32, ptr %i.g, align 8, !tbaa !59
  %i.u = load i32, ptr %i.n, align 4, !tbaa !59
  %i.v = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.u, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !59
  %i.x = sext i32 %i.r to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.z = sub nsw i32 %i.l, %i.r
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !59
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !59
  %i.ac = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ab, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10)
  %i.ad = add nsw i32 %i.ac, %i.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !59
  %i.af = sext i32 %i.l to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = sub nsw i32 %2, %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.am = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.al, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) ; 2 uses
  %i.an = add nsw i32 %i.am, %i.l                 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !59
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !59
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !59
  %i.ar = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %i.ag, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.aq, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10)
  %i.as = add nsw i32 %i.ar, %i.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.as, ptr %i.at, align 4, !tbaa !59
  %i.au = sext i32 %i.an to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %1, i64 %i.au
  %i.aw = sub nsw i32 %2, %i.an
  %i.ax = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !59
  %i.ba = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %i.az, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10)
  %i.bb = add nsw i32 %i.ba, %i.an
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !218 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 244
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !140 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = add nsw i32 %11, 1                      ; 3 uses
  %i.bj = icmp eq i32 %i.bi, %i.bg
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.bk = add i32 %4, 1                           ; 3 uses
  %i.bl = sub i32 2, %4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 69952
  %i.bn = fadd double %5, %6
  %i.bo = fadd double %7, %8
  %i.bp = insertelement <4 x double> poison, double %5, i64 0
  %i.bq = insertelement <4 x double> %i.bp, double %i.bn, i64 1
  %i.br = insertelement <4 x double> %i.bq, double %7, i64 2
  %i.bs = insertelement <4 x double> %i.br, double %i.bo, i64 3
  %i.bt = fmul <4 x double> %i.bs, <double 1.000000e+00, double 5.000000e-01, double 1.000000e+00, double 5.000000e-01> ; 4 uses
  %i.bu = fadd double %9, %10
  %i.bv = fmul double %i.bu, 5.000000e-01         ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 248
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !139
  %i.by = icmp sgt i32 %i.v, %i.bx
  br i1 %i.by, label %bb.b, label %.peel.next.preheader

bb.b:                                             ; preds = %.preheader
  %i.bz = srem i32 %i.bk, 3
  %i.ca = load i32, ptr %i.g, align 8, !tbaa !59  ; 3 uses
  %i.cb = and i32 %i.ca, 1
  %.not.peel = icmp eq i32 %i.cb, 0               ; 2 uses
  %i.cc = extractelement <4 x double> %i.bt, i64 1 ; 2 uses
  %.0151.peel = select i1 %.not.peel, double %5, double %i.cc
  %.0150.peel = select i1 %.not.peel, double %i.cc, double %6
  %i.cd = and i32 %i.ca, 2
  %.not153.peel = icmp eq i32 %i.cd, 0            ; 2 uses
  %i.ce = extractelement <4 x double> %i.bt, i64 3 ; 2 uses
  %.0149.peel = select i1 %.not153.peel, double %7, double %i.ce
  %.0148.peel = select i1 %.not153.peel, double %i.ce, double %8
  %i.cf = and i32 %i.ca, 4
  %.not154.peel = icmp eq i32 %i.cf, 0            ; 2 uses
  %.0147.peel = select i1 %.not154.peel, double %9, double %i.bv
  %.0146.peel = select i1 %.not154.peel, double %i.bv, double %10
  tail call void @_ZN10tetgenmesh13hilbert_sort3EPPdiiiddddddi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1, i32 noundef %i.v, i32 noundef %3, i32 noundef %i.bz, double noundef %.0151.peel, double noundef %.0150.peel, double noundef %.0149.peel, double noundef %.0148.peel, double noundef %.0147.peel, double noundef %.0146.peel, i32 noundef %i.bi)
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.preheader, %bb.b
  %i.cg = shufflevector <4 x double> %i.bt, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ch = insertelement <4 x double> %i.cg, double %6, i64 1
  %i.ci = insertelement <4 x double> %i.ch, double %8, i64 3
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.d
  %i.cj = phi i32 [ %i.cl, %bb.d ], [ %i.v, %.peel.next.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %.peel.next.preheader ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !59 ; 2 uses
  %i.cm = sub nsw i32 %i.cl, %i.cj                ; 2 uses
  %i.cn = load ptr, ptr %i.bd, align 8, !tbaa !218
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 248
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !139
  %i.cq = icmp sgt i32 %i.cm, %i.cp
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.peel.next
  %i.cr = trunc i64 %indvars.iv to i32
  %i.cs = add i32 %i.cr, 255
  %12 = lshr i32 %i.cs, 1
  %.zext = and i32 %12, 127                       ; 2 uses
  %13 = shl nuw nsw i32 %.zext, 1
  %i.ct = xor i32 %13, %.zext                     ; 2 uses
  %i.cu = shl i32 %i.ct, %i.bk
  %14 = lshr i32 %i.ct, %i.bl
  %i.cv = or i32 %i.cu, %14
  %i.cw = and i32 %i.cv, 7
  %i.cx = xor i32 %i.cw, %3
  %i.cy = and i64 %indvars.iv, 1
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.db = getelementptr i8, ptr %i.da, i64 69948
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %.in = select i1 %i.cz, ptr %i.db, ptr %i.dc
  %i.dd = load i32, ptr %.in, align 4, !tbaa !59
  %i.de = add i32 %i.bk, %i.dd
  %i.df = srem i32 %i.de, 3
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !59 ; 2 uses
  %i.di = insertelement <2 x i32> poison, i32 %i.dh, i64 0
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dk = and <2 x i32> %i.dj, <i32 1, i32 2>
  %i.dl = icmp eq <2 x i32> %i.dk, zeroinitializer
  %i.dm = shufflevector <2 x i1> %i.dl, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dn = select <4 x i1> %i.dm, <4 x double> %i.bt, <4 x double> %i.ci ; 4 uses
  %i.do = and i32 %i.dh, 4
  %.not154 = icmp eq i32 %i.do, 0                 ; 2 uses
  %.0147 = select i1 %.not154, double %9, double %i.bv
  %.0146 = select i1 %.not154, double %i.bv, double %10
  %i.dp = sext i32 %i.cj to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dp
  %i.dr = extractelement <4 x double> %i.dn, i64 0
  %i.ds = extractelement <4 x double> %i.dn, i64 1
  %i.dt = extractelement <4 x double> %i.dn, i64 2
  %i.du = extractelement <4 x double> %i.dn, i64 3
  tail call void @_ZN10tetgenmesh13hilbert_sort3EPPdiiiddddddi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.dq, i32 noundef %i.cm, i32 noundef %i.cx, i32 noundef %i.df, double noundef %i.dr, double noundef %i.ds, double noundef %i.dt, double noundef %i.du, double noundef %.0147, double noundef %.0146, i32 noundef %i.bi)
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.c
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !737

.loopexit:                                        ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10tetgenmesh20brio_multiscale_sortEPPdiidPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, double noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #32 align 2 {
bb.a:
  %.not = icmp slt i32 %2, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %5, align 4, !tbaa !59
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %5, align 4, !tbaa !59
  %i.c = sitofp i32 %2 to double
  %i.d = fmul double %4, %i.c
  %i.e = fptosi double %i.d to i32                ; 2 uses
  tail call void @_ZN10tetgenmesh20brio_multiscale_sortEPPdiidPi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1, i32 noundef %i.e, i32 noundef %3, double noundef %4, ptr noundef nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.f = sext i32 %.0 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = sub nsw i32 %2, %.0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68856
  %i.j = load double, ptr %i.i, align 8, !tbaa !359
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68848
  %i.l = load double, ptr %i.k, align 8, !tbaa !358
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68872
  %i.n = load double, ptr %i.m, align 8, !tbaa !361
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68864
  %i.p = load double, ptr %i.o, align 8, !tbaa !360
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68888
  %i.r = load double, ptr %i.q, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68880
  %i.t = load double, ptr %i.s, align 8, !tbaa !362
  tail call void @_ZN10tetgenmesh13hilbert_sort3EPPdiiiddddddi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.g, i32 noundef %i.h, i32 noundef 0, i32 noundef 0, double noundef %i.j, double noundef %i.l, double noundef %i.n, double noundef %i.p, double noundef %i.r, double noundef %i.t, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, 6) i32 @_ZN10tetgenmesh9locate_dtEPdPNS_7trifaceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((8, 12)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !231    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352  ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !231
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !220
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !220
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -16
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %2, align 8, !tbaa !231
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 22 uses
  store i32 0, ptr %i.p, align 8, !tbaa !236
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %storemerge73 = phi i32 [ 0, %bb.e ], [ %i.aj, %bb.g ]
  %i.q = load ptr, ptr %2, align 8, !tbaa !231    ; 3 uses
  %i.r = sext i32 %storemerge73 to i64            ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !59
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !220
  %i.x = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.r
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !220
  %i.ac = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.r
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !220
  %i.ah = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.w, ptr noundef %i.ab, ptr noundef %i.ag, ptr noundef %1)
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  %.pr = load i32, ptr %i.p, align 8, !tbaa !236  ; 3 uses
  br i1 %i.ai, label %.loopexit65, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %.pr, 1                     ; 3 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !236
  %i.ak = icmp slt i32 %.pr, 3
  br i1 %i.ak, label %bb.f, label %.loopexit65, !llvm.loop !738

.loopexit65:                                      ; preds = %bb.g, %bb.f
  %i.al = phi i32 [ %.pr, %bb.f ], [ %i.aj, %bb.g ] ; 2 uses
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.h, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit65
  %.pre = load ptr, ptr %2, align 8, !tbaa !231
  br label %.preheader

bb.h:                                             ; preds = %.loopexit65
  %i.an = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.an, align 16, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %bb.w
  %i.ao = phi i32 [ %i.al, %.preheader.preheader ], [ %i.eu, %bb.w ]
  %i.ap = phi ptr [ %.pre, %.preheader.preheader ], [ %i.ew, %bb.w ]
  %i.aq = sext i32 %i.ao to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !59
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !220 ; 4 uses
  %i.aw = icmp eq ptr %i.av, %1
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aq
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !59 ; 2 uses
  store i32 %i.ay, ptr %i.p, align 8, !tbaa !236
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !59
  store i32 %i.bb, ptr %i.p, align 8, !tbaa !236
  br label %.loopexit

bb.j:                                             ; preds = %.preheader
  %i.bc = tail call i32 @rand() #40
  %i.bd = srem i32 %i.bc, 3                       ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %.pre82 = load i32, ptr %i.p, align 8, !tbaa !236 ; 2 uses
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.bf = sext i32 %.pre82 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !59 ; 3 uses
  store i32 %i.bh, ptr %i.p, align 8, !tbaa !236
  %exitcond.not = icmp eq i32 %i.bd, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN10tetgenmesh11mergefacetsEv:bb.a
  %i.wt = insertelement <2 x double> %i.ws, double %i.we, i64 1
  %i.wu = insertelement <2 x double> poison, double %i.wi, i64 0
  %i.wv = shufflevector <2 x double> %i.wu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ww = fsub <2 x double> %i.wt, %i.wv          ; 4 uses
  %i.wx = extractelement <2 x double> %i.wn, i64 0
  %i.wy = extractelement <2 x double> %i.wn, i64 1
  %i.wz = extractelement <2 x double> %i.ww, i64 0
  %i.xa = extractelement <2 x double> %i.ww, i64 1
  %i.xb = fmul <2 x double> %i.wr, %i.wr
  %i.xc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wn, <2 x double> %i.xb)
  %i.xd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ww, <2 x double> %i.ww, <2 x double> %i.xc)
  %i.xe = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.xd) ; 2 uses
  %i.xf = shufflevector <2 x double> %i.wr, <2 x double> %i.xe, <2 x i32> <i32 0, i32 2>
  %i.xg = shufflevector <2 x double> %i.wr, <2 x double> %i.xe, <2 x i32> <i32 1, i32 3>
  %i.xh = fmul <2 x double> %i.xf, %i.xg          ; 2 uses
  %i.xi = extractelement <2 x double> %i.xh, i64 0
  %i.xj = tail call double @llvm.fmuladd.f64(double %i.wx, double %i.wy, double %i.xi)
  %i.xk = tail call noundef double @llvm.fmuladd.f64(double %i.wz, double %i.xa, double %i.xj)
  %i.xl = extractelement <2 x double> %i.xh, i64 1
  %i.xm = fdiv double %i.xk, %i.xl
  %i.xn = fcmp ogt double %i.xm, %i.ll
  br i1 %i.xn, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.preheader.preheader.2
  %i.xo = ptrtoint ptr %i.ve to i64
  %i.xp = and i64 %i.xo, -8
  %i.xq = inttoptr i64 %i.xp to ptr               ; 2 uses
  %i.xr = ptrtoint ptr %i.vj to i64
  %i.xs = and i64 %i.xr, -8
  %i.xt = inttoptr i64 %i.xs to ptr               ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 48
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !220 ; 2 uses
  %.not51.2 = icmp eq ptr %i.xv, null
  br i1 %.not51.2, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !58
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.041.2 = phi double [ %i.xw, %bb.au ], [ 1.000000e+00, %bb.at ] ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 48
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !220 ; 2 uses
  %.not52.2 = icmp eq ptr %i.xy, null
  br i1 %.not52.2, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !58
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.040.2 = phi double [ %i.xz, %bb.aw ], [ 1.000000e+00, %bb.av ] ; 2 uses
  %i.ya = fcmp olt double %.041.2, %i.ln
  br i1 %i.ya, label %bb.aj, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.yb = fcmp olt double %.040.2, %i.ln
  br i1 %i.yb, label %.loopexit223, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge280, %bb.as, %.preheader.preheader.2, %bb.ay, %.loopexit223
  %i.yc = phi ptr [ %.pre287, %.loopexit223 ], [ %i.nj, %bb.as ], [ %i.nj, %bb.ay ], [ %i.nj, %.preheader.preheader.2 ], [ %i.nj, %._crit_edge280 ] ; 8 uses
  %.sroa.10.1226 = phi i32 [ %.sroa.10.1237252, %.loopexit223 ], [ %.pre286, %bb.as ], [ %.pre286, %bb.ay ], [ %.pre286, %.preheader.preheader.2 ], [ %.pre286, %._crit_edge280 ]
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 40 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !198
  %.promoted.i74 = load ptr, ptr %i.yd, align 8, !tbaa !204
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 84 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 32 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yc, i64 48
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yc, i64 60
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yc, i64 52
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %.loopexit
  %i.yl = phi ptr [ %i.zg, %bb.bc ], [ %.promoted.i74, %.loopexit ] ; 2 uses
  %i.ym = icmp eq ptr %i.yl, %i.yf
  br i1 %i.ym, label %._crit_edge242, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.yn = load i32, ptr %i.yg, align 4, !tbaa !205 ; 2 uses
  %i.yo = icmp eq i32 %i.yn, 0
  br i1 %i.yo, label %bb.bb, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i75

bb.bb:                                            ; preds = %bb.ba
  %i.yp = load ptr, ptr %i.yh, align 8, !tbaa !203
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !111 ; 2 uses
  store ptr %i.yq, ptr %i.yh, align 8, !tbaa !203
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.ys = ptrtoint ptr %i.yr to i64               ; 2 uses
  %i.yt = load i32, ptr %i.yi, align 8, !tbaa !192
  %i.yu = sext i32 %i.yt to i64                   ; 2 uses
  %i.yv = add i64 %i.yu, %i.ys
  %i.yw = urem i64 %i.ys, %i.yu
  %i.yx = sub i64 %i.yv, %i.yw
  %i.yy = inttoptr i64 %i.yx to ptr
  %i.yz = load i32, ptr %i.yj, align 4, !tbaa !195
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i75

_ZN10tetgenmesh10memorypool8traverseEv.exit.i75:  ; preds = %bb.bb, %bb.ba
  %i.za = phi i32 [ %i.yz, %bb.bb ], [ %i.yn, %bb.ba ]
  %i.zb = phi ptr [ %i.yy, %bb.bb ], [ %i.yl, %bb.ba ] ; 4 uses
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = load i32, ptr %i.yk, align 4, !tbaa !194
  %i.ze = sext i32 %i.zd to i64
  %i.zf = add i64 %i.ze, %i.zc
  %i.zg = inttoptr i64 %i.zf to ptr               ; 2 uses
  store ptr %i.zg, ptr %i.yd, align 8, !tbaa !204
  %i.zh = add nsw i32 %i.za, -1
  store i32 %i.zh, ptr %i.yg, align 4, !tbaa !205
  %i.zi = icmp eq ptr %i.zb, null
  br i1 %i.zi, label %._crit_edge242, label %bb.bc

bb.bc:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i75
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !220
  %i.zl = icmp eq ptr %i.zk, null
  br i1 %i.zl, label %bb.az, label %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit77, !llvm.loop !7

_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit77: ; preds = %bb.bc
  br label %.preheader222, !llvm.loop !818

._crit_edge242:                                   ; preds = %bb.z, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i71, %bb.az, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i75
  tail call void @_ZN10tetgenmesh9arraypoolD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #42
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !290
  %.not48 = icmp eq ptr %i.zn, null
  br i1 %.not48, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge242
  %i.zo = tail call noundef i64 @_ZN10tetgenmesh10lawsonflipEv(ptr noundef nonnull align 8 dereferenceable(69984) %0) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge242
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh11meshsurfaceEv(ptr noundef nonnull align 8 dereferenceable(69984) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.e = load i32, ptr %i.d, align 4, !tbaa !183
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.88) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN10tetgenmesh18makeindex2pointmapERPPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 15 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef 8, i32 noundef 8)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 12 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i32 noundef 16, i32 noundef 8)
          to label %.preheader165 unwind label %bb.j

.preheader165:                                    ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !221    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !82
  %.not107182 = icmp slt i32 %i.j, 1
  br i1 %.not107182, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %.preheader165
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68992
  %i.l = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68660
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph184, %bb.au
  %indvars.iv204 = phi i64 [ 1, %.lr.ph184 ], [ %indvars.iv.next205, %bb.au ] ; 6 uses
  %i.ab = phi ptr [ %i.h, %.lr.ph184 ], [ %i.ov, %bb.au ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.ae = add nsw i64 %indvars.iv204, -1          ; 2 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %i.ad, i64 %i.ae ; 6 uses
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !367
  %i.ah = icmp sgt i64 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !87 ; 3 uses
  br i1 %i.ah, label %.preheader163, label %.loopexit164

.preheader163:                                    ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph168, label %.preheader

.lr.ph168:                                        ; preds = %.preheader163
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph168, %._crit_edge
  %i.am = phi i32 [ %i.aj, %.lr.ph168 ], [ %i.bq, %._crit_edge ]
  %indvars.iv192 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next193, %._crit_edge ] ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv192 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !92 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.as = phi i32 [ %i.ap, %.lr.ph ], [ %i.bn, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !59
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 2 uses
  %i.ay = load i32, ptr %i.m, align 8, !tbaa !223
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.ax, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !59
  %.mask = and i32 %i.bc, -256
  %i.bd = icmp eq i32 %.mask, 256
  br i1 %i.bd, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.be = load i32, ptr %i.n, align 4, !tbaa !244
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [8 x i8], ptr %i.ax, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !220
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.az
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59
  store i32 %i.bk, ptr %i.at, align 4, !tbaa !59
  %.pre = load i32, ptr %i.ao, align 8, !tbaa !92
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.j:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.k:                                             ; preds = %bb.g, %bb.h
  %i.bn = phi i32 [ %i.as, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !819

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre210 = load i32, ptr %i.ai, align 8, !tbaa !87
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.bq = phi i32 [ %.pre210, %._crit_edge.loopexit ], [ %i.am, %bb.f ] ; 3 uses
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next193, %i.br
  br i1 %i.bs, label %bb.f, label %.loopexit164, !llvm.loop !820

.loopexit164:                                     ; preds = %._crit_edge, %bb.e
  %i.bt = phi i32 [ %i.aj, %bb.e ], [ %i.bq, %._crit_edge ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bv = icmp sgt i32 %i.bt, 0
  br i1 %i.bv, label %.lr.ph178.preheader, label %.preheader

.lr.ph178.preheader:                              ; preds = %.loopexit164
  %i.bw = trunc nuw nsw i64 %indvars.iv204 to i32
  %i.bx = trunc nuw nsw i64 %indvars.iv204 to i32
  %i.by = trunc nuw nsw i64 %indvars.iv204 to i32
  br label %.lr.ph178

.preheader:                                       ; preds = %.loopexit, %.preheader163, %.loopexit164
  %i.bz = load i64, ptr %i.o, align 8, !tbaa !100 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph180, label %._crit_edge181

.lr.ph180:                                        ; preds = %.preheader
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !104
  br label %bb.as

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %.loopexit
  %indvars.iv198 = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next199, %.loopexit ] ; 4 uses
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !86
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv198 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !91
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !59 ; 5 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !221   ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !55 ; 2 uses
  %i.ci = icmp slt i32 %i.cf, %i.ch
  br i1 %i.ci, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph178
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !44
  %i.cl = add nsw i32 %i.ck, %i.ch
  %.not114 = icmp slt i32 %i.cf, %i.cl
  br i1 %.not114, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph178
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 148
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !183
  %.not120 = icmp eq i32 %i.co, 0
  br i1 %.not120, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.305, i32 noundef %i.cf) ; 0 uses
  %i.cq = trunc i64 %indvars.iv198 to i32
  %i.cr = add i32 %i.cq, 1
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.306, i32 noundef %i.cr, i32 noundef %i.by) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.l
  %i.ct = sext i32 %i.cf to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !112 ; 3 uses
  %i.cw = load i32, ptr %i.m, align 8, !tbaa !223
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [4 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 4      ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !59 ; 2 uses
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = or disjoint i32 %i.da, 1
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !59
  %i.dd = load i64, ptr %i.o, align 8, !tbaa !100
  %i.de = trunc i64 %i.dd to i32
  %i.df = load i32, ptr %i.p, align 8, !tbaa !103
  %i.dg = ashr i32 %i.de, %i.df                   ; 6 uses
  %i.dh = load ptr, ptr %i.q, align 8, !tbaa !104 ; 10 uses
  %i.di = ptrtoaddr ptr %i.dh to i64
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dk = add nsw i32 %i.dg, 128                  ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 3                    ; 2 uses
  %i.dn = tail call noalias ptr @malloc(i64 noundef %i.dm) #45 ; 3 uses
  store ptr %i.dn, ptr %i.q, align 8, !tbaa !104
  store i32 %i.dk, ptr %i.r, align 8, !tbaa !105
  %i.do = icmp sgt i32 %i.dg, -128
  br i1 %i.do, label %.lr.ph45.preheader.i, label %._crit_edge46.i

.lr.ph45.preheader.i:                             ; preds = %bb.q
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i8 0, i64 %i.dq, i1 false), !tbaa !53
  br label %._crit_edge46.i

._crit_edge46.i:                                  ; preds = %.lr.ph45.preheader.i, %bb.q
  store i64 %i.dm, ptr %i.s, align 8, !tbaa !106
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.dr = load i32, ptr %i.r, align 8, !tbaa !105 ; 8 uses
  %.not.i = icmp slt i32 %i.dg, %i.dr
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = mul nsw i32 %i.dr, 3                    ; 2 uses
  %.not39.i = icmp slt i32 %i.dg, %i.ds
  %i.dt = add nsw i32 %i.dg, 128
  %spec.select.i = select i1 %.not39.i, i32 %i.ds, i32 %i.dt ; 5 uses
  %i.du = sext i32 %spec.select.i to i64
  %i.dv = shl nsw i64 %i.du, 3
  %i.dw = tail call noalias ptr @malloc(i64 noundef %i.dv) #45 ; 10 uses
  %i.dx = icmp sgt i32 %i.dr, 0
  br i1 %i.dx, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.dy = ptrtoaddr ptr %i.dw to i64
  %wide.trip.count.i = zext nneg i32 %i.dr to i64 ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN10tetgenmesh11meshsurfaceEv:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %index ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %wide.load = load <2 x ptr>, ptr %i.lc, align 8, !tbaa !53
  %wide.load273 = load <2 x ptr>, ptr %i.ld, align 8, !tbaa !53
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %index ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <2 x ptr> %wide.load, ptr %i.le, align 8, !tbaa !53
  store <2 x ptr> %wide.load273, ptr %i.lf, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lg = icmp eq i64 %index.next, %n.vec
  br i1 %i.lg, label %middle.block, label %vector.body, !llvm.loop !827

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i151
  br i1 %cmp.n, label %.preheader.i145, label %.lr.ph.i152.preheader

.lr.ph.i152.preheader:                            ; preds = %.lr.ph.preheader.i150, %middle.block
  %indvars.iv.i153.ph = phi i64 [ 0, %.lr.ph.preheader.i150 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter315 = and i64 %wide.trip.count.i151, 3 ; 2 uses
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %.lr.ph.i152.prol.loopexit, label %.lr.ph.i152.prol

.lr.ph.i152.prol:                                 ; preds = %.lr.ph.i152.preheader, %.lr.ph.i152.prol
  %indvars.iv.i153.prol = phi i64 [ %indvars.iv.next.i154.prol, %.lr.ph.i152.prol ], [ %indvars.iv.i153.ph, %.lr.ph.i152.preheader ] ; 3 uses
  %prol.iter317 = phi i64 [ %prol.iter317.next, %.lr.ph.i152.prol ], [ 0, %.lr.ph.i152.preheader ]
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv.i153.prol
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !53
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.i153.prol
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !53
  %indvars.iv.next.i154.prol = add nuw nsw i64 %indvars.iv.i153.prol, 1 ; 2 uses
  %prol.iter317.next = add i64 %prol.iter317, 1   ; 2 uses
  %prol.iter317.cmp.not = icmp eq i64 %prol.iter317.next, %xtraiter315
  br i1 %prol.iter317.cmp.not, label %.lr.ph.i152.prol.loopexit, label %.lr.ph.i152.prol, !llvm.loop !828

.lr.ph.i152.prol.loopexit:                        ; preds = %.lr.ph.i152.prol, %.lr.ph.i152.preheader
  %indvars.iv.i153.unr = phi i64 [ %indvars.iv.i153.ph, %.lr.ph.i152.preheader ], [ %indvars.iv.next.i154.prol, %.lr.ph.i152.prol ]
  %i.lk = sub nsw i64 %indvars.iv.i153.ph, %wide.trip.count.i151
  %i.ll = icmp ugt i64 %i.lk, -4
  br i1 %i.ll, label %.preheader.i145, label %.lr.ph.i152

.preheader.i145:                                  ; preds = %.lr.ph.i152.prol.loopexit, %.lr.ph.i152, %middle.block, %bb.al
  %i.lm = icmp slt i32 %i.kt, %spec.select.i144
  br i1 %i.lm, label %.lr.ph42.preheader.i148, label %._crit_edge.i146

.lr.ph42.preheader.i148:                          ; preds = %.preheader.i145
  %i.ln = sext i32 %i.kt to i64
  %i.lo = shl nsw i64 %i.ln, 3
  %scevgep.i149 = getelementptr i8, ptr %i.ky, i64 %i.lo
  %i.lp = xor i32 %i.kt, -1
  %i.lq = add i32 %spec.select.i144, %i.lp
  %i.lr = zext i32 %i.lq to i64
  %i.ls = shl nuw nsw i64 %i.lr, 3
  %i.lt = add nuw nsw i64 %i.ls, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i149, i8 0, i64 %i.lt, i1 false), !tbaa !53
  br label %._crit_edge.i146

.lr.ph.i152:                                      ; preds = %.lr.ph.i152.prol.loopexit, %.lr.ph.i152
  %indvars.iv.i153 = phi i64 [ %indvars.iv.next.i154.3, %.lr.ph.i152 ], [ %indvars.iv.i153.unr, %.lr.ph.i152.prol.loopexit ] ; 6 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv.i153
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !53
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.i153
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !53
  %indvars.iv.next.i154 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv.next.i154
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !53
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.next.i154
  store ptr %i.ly, ptr %i.lz, align 8, !tbaa !53
  %indvars.iv.next.i154.1 = add nuw nsw i64 %indvars.iv.i153, 2 ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv.next.i154.1
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !53
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.next.i154.1
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !53
  %indvars.iv.next.i154.2 = add nuw nsw i64 %indvars.iv.i153, 3 ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv.next.i154.2
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !53
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.next.i154.2
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !53
  %indvars.iv.next.i154.3 = add nuw nsw i64 %indvars.iv.i153, 4 ; 2 uses
  %exitcond.not.i155.3 = icmp eq i64 %indvars.iv.next.i154.3, %wide.trip.count.i151
  br i1 %exitcond.not.i155.3, label %.preheader.i145, label %.lr.ph.i152, !llvm.loop !829

._crit_edge.i146:                                 ; preds = %.lr.ph42.preheader.i148, %.preheader.i145
  tail call void @free(ptr noundef nonnull %i.kj) #40
  %i.mg = load i32, ptr %i.x, align 8, !tbaa !105
  %i.mh = sub nsw i32 %spec.select.i144, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = shl nsw i64 %i.mi, 3
  %i.mk = load i64, ptr %i.y, align 8, !tbaa !106
  %i.ml = add i64 %i.mj, %i.mk
  store i64 %i.ml, ptr %i.y, align 8, !tbaa !106
  store ptr %i.ky, ptr %i.w, align 8, !tbaa !104
  store i32 %spec.select.i144, ptr %i.x, align 8, !tbaa !105
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i146, %bb.ak, %._crit_edge46.i156
  %i.mm = phi ptr [ %i.kj, %bb.ak ], [ %i.ky, %._crit_edge.i146 ], [ %i.kp, %._crit_edge46.i156 ]
  %i.mn = sext i32 %i.ki to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.mn ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !53 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, null
  %.pre216 = load i32, ptr %i.z, align 4, !tbaa !101 ; 2 uses
  %.pre217 = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  br i1 %i.mq, label %bb.an, label %_ZN10tetgenmesh9arraypool8getblockEi.exit158

bb.an:                                            ; preds = %bb.am
  %i.mr = mul nsw i32 %.pre217, %.pre216
  %i.ms = sext i32 %i.mr to i64                   ; 2 uses
  %i.mt = tail call noalias ptr @malloc(i64 noundef %i.ms) #45 ; 2 uses
  store ptr %i.mt, ptr %i.mo, align 8, !tbaa !53
  %i.mu = load i64, ptr %i.y, align 8, !tbaa !106
  %i.mv = add i64 %i.mu, %i.ms
  store i64 %i.mv, ptr %i.y, align 8, !tbaa !106
  br label %_ZN10tetgenmesh9arraypool8getblockEi.exit158

_ZN10tetgenmesh9arraypool8getblockEi.exit158:     ; preds = %bb.am, %bb.an
  %.033.i147 = phi ptr [ %i.mt, %bb.an ], [ %i.mp, %bb.am ]
  %i.mw = load i64, ptr %i.u, align 8, !tbaa !100 ; 2 uses
  %i.mx = add nsw i32 %.pre216, -1
  %i.my = sext i32 %i.mx to i64
  %i.mz = and i64 %i.mw, %i.my
  %i.na = sext i32 %.pre217 to i64
  %i.nb = mul nsw i64 %i.mz, %i.na
  %i.nc = getelementptr inbounds i8, ptr %.033.i147, i64 %i.nb ; 2 uses
  %i.nd = add nsw i64 %i.mw, 1
  store i64 %i.nd, ptr %i.u, align 8, !tbaa !100
  store ptr %.097170, ptr %i.nc, align 8, !tbaa !112
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr %i.gy, ptr %i.ne, align 8, !tbaa !112
  br label %bb.ar

bb.ao:                                            ; preds = %bb.aa
  %i.nf = icmp sgt i32 %i.gh, 2
  br i1 %i.nf, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ng = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 148
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !183
  %.not118 = icmp eq i32 %i.ni, 0
  br i1 %.not118, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.nj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.309, i32 noundef %i.gf) ; 0 uses
  %i.nk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.308, i32 noundef %i.bw) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN10tetgenmesh9arraypool8getblockEi.exit158, %bb.ap, %bb.aq, %bb.ao, %bb.y, %bb.z
  %.198 = phi ptr [ %.097170, %bb.y ], [ %.097170, %bb.z ], [ %i.gy, %_ZN10tetgenmesh9arraypool8getblockEi.exit158 ], [ %.097170, %bb.ap ], [ %.097170, %bb.aq ], [ %.097170, %bb.ao ]
  %.196 = phi i32 [ %.095171, %bb.y ], [ %.095171, %bb.z ], [ %.094, %_ZN10tetgenmesh9arraypool8getblockEi.exit158 ], [ %.095171, %bb.ap ], [ %.095171, %bb.aq ], [ %.095171, %bb.ao ]
  %i.nl = load i32, ptr %i.gc, align 8, !tbaa !92 ; 3 uses
  %i.nm = icmp ne i32 %i.nl, 2
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1
  %i.nn = sext i32 %i.nl to i64
  %.not115.not = icmp slt i64 %indvars.iv195, %i.nn
  %or.cond = and i1 %i.nm, %.not115.not
  br i1 %or.cond, label %bb.w, label %.loopexit, !llvm.loop !830

.loopexit:                                        ; preds = %bb.ar, %bb.v, %bb.m, %bb.n
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.no = load i32, ptr %i.bu, align 8, !tbaa !87
  %i.np = sext i32 %i.no to i64
  %i.nq = icmp slt i64 %indvars.iv.next199, %i.np
  br i1 %i.nq, label %.lr.ph178, label %.preheader, !llvm.loop !831

bb.as:                                            ; preds = %.lr.ph180, %bb.as
  %indvars.iv201 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next202, %bb.as ] ; 2 uses
  %i.nr = load i32, ptr %i.p, align 8, !tbaa !103
  %i.ns = trunc nuw nsw i64 %indvars.iv201 to i32 ; 2 uses
  %i.nt = lshr i32 %i.ns, %i.nr
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.nu
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !53
  %i.nx = load i32, ptr %i.aa, align 4, !tbaa !110
  %i.ny = and i32 %i.nx, %i.ns
  %i.nz = load i32, ptr %i.f, align 8, !tbaa !102
  %i.oa = mul nsw i32 %i.ny, %i.nz
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds i8, ptr %i.nw, i64 %i.ob
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !112
  %i.oe = load i32, ptr %i.m, align 8, !tbaa !223
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr [4 x i8], ptr %i.od, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.og, i64 4      ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !59
  %i.oj = and i32 %i.oi, -2
  store i32 %i.oj, ptr %i.oh, align 4, !tbaa !59
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next202, %i.bz
  br i1 %exitcond.not, label %._crit_edge181, label %bb.as, !llvm.loop !832

._crit_edge181:                                   ; preds = %bb.as, %.preheader
  %i.ok = load ptr, ptr %0, align 8, !tbaa !221
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 152
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !84 ; 2 uses
  %.not113 = icmp eq ptr %i.om, null
  br i1 %.not113, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge181
  %i.on = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.ae
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !59
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge181, %bb.at
  %i.op = phi i32 [ %i.oo, %bb.at ], [ -1, %._crit_edge181 ]
  %i.oq = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !89
  %i.os = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !88
  %i.ou = tail call noundef i32 @_ZN10tetgenmesh11triangulateEiPNS_9arraypoolES1_iPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef %i.op, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef %i.or, ptr noundef %i.ot) ; 0 uses
  store i64 0, ptr %i.o, align 8, !tbaa !100
  store i64 0, ptr %i.u, align 8, !tbaa !100
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1
  %i.ov = load ptr, ptr %0, align 8, !tbaa !221   ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 160
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !82
  %i.oy = sext i32 %i.ox to i64
  %.not107.not = icmp slt i64 %indvars.iv204, %i.oy
  br i1 %.not107.not, label %bb.e, label %._crit_edge185, !llvm.loop !833

._crit_edge185:                                   ; preds = %bb.au, %.preheader165
  tail call void @_ZN10tetgenmesh13unifysegmentsEv(ptr noundef nonnull align 8 dereferenceable(69984) %0)
  %i.oz = load ptr, ptr %0, align 8, !tbaa !221
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 336
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !60
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge185
  %i.pd = load ptr, ptr %i.a, align 8, !tbaa !220
  tail call void @_ZN10tetgenmesh18identifyinputedgesEPPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.pd)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge185
  %i.pe = load ptr, ptr %i.b, align 8, !tbaa !218 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 64
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !152
  %.not108 = icmp eq i32 %i.pg, 0
  br i1 %.not108, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 72
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !154
  %.not109 = icmp eq i32 %i.pi, 0
  br i1 %.not109, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !121
  %.not110 = icmp eq i32 %i.pk, 0
  br i1 %.not110, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZN10tetgenmesh11mergefacetsEv(ptr noundef nonnull align 8 dereferenceable(69984) %0)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !252 ; 9 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !196 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 32 ; 3 uses
  store ptr %i.pn, ptr %i.po, align 8, !tbaa !203
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pq = ptrtoint ptr %i.pp to i64               ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 48 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !192
  %i.pt = sext i32 %i.ps to i64                   ; 4 uses
  %i.pu = add i64 %i.pt, %i.pq
  %i.pv = urem i64 %i.pq, %i.pt
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = inttoptr i64 %i.pw to ptr               ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pm, i64 40 ; 3 uses
  store ptr %i.px, ptr %i.py, align 8, !tbaa !204
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pm, i64 60 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !195 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pm, i64 84 ; 4 uses
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !205
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !198 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pm, i64 52 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.be, %bb.ba
  %i.qf = phi ptr [ %i.qr, %bb.be ], [ %i.pn, %bb.ba ] ; 2 uses
  %i.qg = phi i32 [ %i.qz, %bb.be ], [ %i.qa, %bb.ba ] ; 2 uses
  %i.qh = phi ptr [ %i.qy, %bb.be ], [ %i.px, %bb.ba ] ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.qd
  br i1 %i.qi, label %._crit_edge190, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qj = icmp eq i32 %i.qg, 0
  br i1 %i.qj, label %bb.bd, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.qk = load ptr, ptr %i.qf, align 8, !tbaa !111 ; 3 uses
  store ptr %i.qk, ptr %i.po, align 8, !tbaa !203
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = ptrtoint ptr %i.ql to i64               ; 2 uses
  %i.qn = add i64 %i.qm, %i.pt
  %i.qo = urem i64 %i.qm, %i.pt
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = inttoptr i64 %i.qp to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

_ZN10tetgenmesh10memorypool8traverseEv.exit.i:    ; preds = %bb.bd, %bb.bc
  %i.qr = phi ptr [ %i.qk, %bb.bd ], [ %i.qf, %bb.bc ] ; 2 uses
  %i.qs = phi i32 [ %i.qa, %bb.bd ], [ %i.qg, %bb.bc ]
  %i.qt = phi ptr [ %i.qq, %bb.bd ], [ %i.qh, %bb.bc ] ; 4 uses
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = load i32, ptr %i.qe, align 4, !tbaa !194
  %i.qw = sext i32 %i.qv to i64
  %i.qx = add i64 %i.qw, %i.qu
  %i.qy = inttoptr i64 %i.qx to ptr               ; 3 uses
  store ptr %i.qy, ptr %i.py, align 8, !tbaa !204
  %i.qz = add nsw i32 %i.qs, -1                   ; 2 uses
  store i32 %i.qz, ptr %i.qb, align 4, !tbaa !205
  %i.ra = icmp eq ptr %i.qt, null
  br i1 %i.ra, label %._crit_edge190, label %bb.be

bb.be:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !220
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %bb.bb, label %.lr.ph189, !llvm.loop !7

.lr.ph189:                                        ; preds = %bb.be
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit124, %.lr.ph189
  %i.rf = phi ptr [ %i.qr, %.lr.ph189 ], [ %i.sm, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit124 ]
  %.promoted.i121 = phi ptr [ %i.qy, %.lr.ph189 ], [ %i.st, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit124 ]
  %storemerge188 = phi ptr [ %i.qt, %.lr.ph189 ], [ %i.so, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit124 ] ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %storemerge188, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !112
  %i.ri = load i32, ptr %i.re, align 8, !tbaa !223
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr [4 x i8], ptr %i.rh, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 4      ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !59
  %i.rn = and i32 %i.rm, 255
  %i.ro = or disjoint i32 %i.rn, 512
  store i32 %i.ro, ptr %i.rl, align 4, !tbaa !59
  %i.rp = getelementptr inbounds nuw i8, ptr %storemerge188, i64 32
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !112
  %i.rr = load i32, ptr %i.re, align 8, !tbaa !223
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr [4 x i8], ptr %i.rq, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.rt, i64 4      ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !59
  %i.rw = and i32 %i.rv, 255
  %i.rx = or disjoint i32 %i.rw, 512
  store i32 %i.rx, ptr %i.ru, align 4, !tbaa !59
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bj, %bb.bf
  %i.ry = phi ptr [ %i.sm, %bb.bj ], [ %i.rf, %bb.bf ] ; 2 uses
  %.promoted.i121218 = phi ptr [ %i.st, %bb.bj ], [ %.promoted.i121, %bb.bf ] ; 2 uses
  %i.rz = icmp eq ptr %.promoted.i121218, %i.qd
  br i1 %i.rz, label %._crit_edge190, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sa = load i32, ptr %i.qb, align 4, !tbaa !205 ; 2 uses
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %bb.bi, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i122

bb.bi:                                            ; preds = %bb.bh
  %i.sc = load ptr, ptr %i.ry, align 8, !tbaa !111 ; 3 uses
  store ptr %i.sc, ptr %i.po, align 8, !tbaa !203
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = ptrtoint ptr %i.sd to i64               ; 2 uses
  %i.sf = load i32, ptr %i.pr, align 8, !tbaa !192
  %i.sg = sext i32 %i.sf to i64                   ; 2 uses
  %i.sh = add i64 %i.sg, %i.se
  %i.si = urem i64 %i.se, %i.sg
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = inttoptr i64 %i.sj to ptr
  %i.sl = load i32, ptr %i.pz, align 4, !tbaa !195
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i122

_ZN10tetgenmesh10memorypool8traverseEv.exit.i122: ; preds = %bb.bi, %bb.bh
  %i.sm = phi ptr [ %i.sc, %bb.bi ], [ %i.ry, %bb.bh ] ; 2 uses
  %i.sn = phi i32 [ %i.sl, %bb.bi ], [ %i.sa, %bb.bh ]
  %i.so = phi ptr [ %i.sk, %bb.bi ], [ %.promoted.i121218, %bb.bh ] ; 4 uses
  %i.sp = ptrtoint ptr %i.so to i64
  %i.sq = load i32, ptr %i.qe, align 4, !tbaa !194
  %i.sr = sext i32 %i.sq to i64
  %i.ss = add i64 %i.sr, %i.sp
  %i.st = inttoptr i64 %i.ss to ptr               ; 3 uses
  store ptr %i.st, ptr %i.py, align 8, !tbaa !204
  %i.su = add nsw i32 %i.sn, -1
  store i32 %i.su, ptr %i.qb, align 4, !tbaa !205
  %i.sv = icmp eq ptr %i.so, null
  br i1 %i.sv, label %._crit_edge190, label %bb.bj

bb.bj:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i122
  %i.sw = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !220
  %i.sy = icmp eq ptr %i.sx, null
  br i1 %i.sy, label %bb.bg, label %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit124, !llvm.loop !7
end_hunk_4
begin_hunk_5_@_ZN10tetgenmesh12refineregionERNS_4faceEPNS_9arraypoolES3_S3_S3_S3_S3_:bb.a
  %i.uf = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.uf, align 16, !tbaa !59
  call void @__cxa_throw(ptr nonnull %i.uf, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

.backedge:                                        ; preds = %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit, %bb.ax, %bb.ay, %bb.ae
  %i.ug = load ptr, ptr %i.mu, align 8, !tbaa !253 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 32 ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !100 ; 2 uses
  %i.uj = icmp sgt i64 %i.ui, 0
  br i1 %i.uj, label %bb.ae, label %._crit_edge, !llvm.loop !996

._crit_edge:                                      ; preds = %.backedge, %bb.ad
  %i.uk = load ptr, ptr %i.aw, align 8, !tbaa !218
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 156
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !185
  %i.un = icmp sgt i32 %i.um, 2
  br i1 %i.un, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge
  %i.uo = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 64
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !202
  %i.ur = sub nsw i64 %i.uq, %i.k
  %i.us = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.331, i64 noundef %i.ur) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh17constrainedfacetsEv(ptr noundef nonnull align 8 dereferenceable(69984) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.tetgenmesh::triface", align 8 ; 12 uses
  %2 = alloca %"class.tetgenmesh::triface", align 8 ; 7 uses
  %3 = alloca %"class.tetgenmesh::face", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr null, ptr %1, align 8, !tbaa !231
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr null, ptr %2, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr null, ptr %3, align 8, !tbaa !224
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.c, align 8, !tbaa !225
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 14 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef 16, i32 noundef 10)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 11 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 16, i32 noundef 10)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 10 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef 16, i32 noundef 10)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 9 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i32 noundef 16, i32 noundef 10)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 8 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 16, i32 noundef 10)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 9 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i32 noundef 16, i32 noundef 10)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 10 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i32 noundef 8, i32 noundef 8)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 9 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 8, i32 noundef 8)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 21 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 16, i32 noundef 10)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.m = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 8 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i32 noundef 16, i32 noundef 10)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.n = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 7 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i32 noundef 16, i32 noundef 10)
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %bb.k
  %i.o = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 15 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i32 noundef 16, i32 noundef 10)
          to label %bb.m unwind label %bb.ac

bb.m:                                             ; preds = %bb.l
  %i.p = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 10 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef 16, i32 noundef 10)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.q = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 12 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i32 noundef 8, i32 noundef 8)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.r = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 3 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i32 noundef 16, i32 noundef 4)
          to label %bb.p unwind label %bb.af

bb.p:                                             ; preds = %bb.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68472 ; 4 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !330
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68440 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !254  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %.promoted314 = load i64, ptr %i.v, align 8, !tbaa !100 ; 2 uses
  %i.w = icmp sgt i64 %.promoted314, 0
  br i1 %i.w, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.p
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68688 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 17 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 11 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 15 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68608 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68616
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2856 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %.backedge
  br label %.loopexit, !llvm.loop !997

.loopexit:                                        ; preds = %..loopexit_crit_edge, %._crit_edge289._crit_edge
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !254 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %.promoted = load i64, ptr %i.bb, align 8, !tbaa !100 ; 2 uses
  %i.bc = icmp sgt i64 %.promoted, 0
  br i1 %i.bc, label %.lr.ph, label %.outer._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.loopexit
  %.promoted318 = phi i64 [ %.promoted314, %.lr.ph.lr.ph ], [ %.promoted, %.loopexit ]
  %i.bd = phi ptr [ %i.v, %.lr.ph.lr.ph ], [ %i.bb, %.loopexit ] ; 2 uses
  %i.be = phi ptr [ %i.u, %.lr.ph.lr.ph ], [ %i.ba, %.loopexit ] ; 4 uses
  %.0178.ph317 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.jy, %.loopexit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !104
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !103
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !110
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i32, ptr %i.be, align 8, !tbaa !102
  %i.bo = sext i32 %i.bn to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %.backedge250
  %i.bp = phi i64 [ %.promoted318, %.lr.ph ], [ %i.bq, %.backedge250 ] ; 2 uses
  %i.bq = add nsw i64 %i.bp, -1                   ; 4 uses
  %i.br = lshr i64 %i.bq, %i.bj
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.bu = and i64 %i.bq, %i.bm
  %i.bv = mul nsw i64 %i.bu, %i.bo
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !224 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !220
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.backedge250, label %bb.ag

.backedge250:                                     ; preds = %bb.q, %bb.ag
  %i.cb = icmp samesign ugt i64 %i.bp, 1
  br i1 %i.cb, label %bb.q, label %._crit_edge, !llvm.loop !997

bb.r:                                             ; preds = %bb.a
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.s:                                             ; preds = %bb.b
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.t:                                             ; preds = %bb.c
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.u:                                             ; preds = %bb.d
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.v:                                             ; preds = %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.w:                                             ; preds = %bb.f
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.x:                                             ; preds = %bb.g
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.y:                                             ; preds = %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.z:                                             ; preds = %bb.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.aa:                                            ; preds = %bb.j
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ab:                                            ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ac:                                            ; preds = %bb.l
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ad:                                            ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ae:                                            ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.af:                                            ; preds = %bb.o
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ag:                                            ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !225 ; 5 uses
  %i.ct = and i32 %i.cs, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !220
  %.not = icmp eq ptr %i.cx, null
  br i1 %.not, label %bb.ah, label %.backedge250

bb.ah:                                            ; preds = %bb.ag
  store i64 %i.bq, ptr %i.bd, align 8, !tbaa !100
  store ptr %i.bx, ptr %3, align 8
  store i32 %i.cs, ptr %i.c, align 8
  %i.cy = load i32, ptr %i.x, align 8, !tbaa !239
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [4 x i8], ptr %i.bx, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 4      ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !59
  %i.dd = or i32 %i.dc, 2
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !59
  %i.de = load i64, ptr %i.y, align 8, !tbaa !100
  %i.df = trunc i64 %i.de to i32
  %i.dg = call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef %i.df)
  %i.dh = load i64, ptr %i.y, align 8, !tbaa !100 ; 3 uses
  %i.di = load i32, ptr %i.z, align 4, !tbaa !101
  %i.dj = add nsw i32 %i.di, -1
  %i.dk = sext i32 %i.dj to i64
  %i.dl = and i64 %i.dh, %i.dk
  %i.dm = load i32, ptr %i.l, align 8, !tbaa !102 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %i.dl, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %i.dg, i64 %i.do ; 2 uses
  %i.dq = add nsw i64 %i.dh, 1                    ; 3 uses
  store i64 %i.dq, ptr %i.y, align 8, !tbaa !100
  store ptr %i.bx, ptr %i.dp, align 8, !tbaa !224
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %i.cs, ptr %i.dr, align 8, !tbaa !225
  %i.ds = icmp sgt i64 %i.dh, -1
  br i1 %i.ds, label %.lr.ph283.preheader, label %.preheader249.thread

.preheader249.thread:                             ; preds = %bb.ah
  store i32 %i.cs, ptr %i.c, align 8
  store ptr %i.bx, ptr %3, align 8
  br label %._crit_edge289

.lr.ph283.preheader:                              ; preds = %bb.ah
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !104 ; 2 uses
  br label %.lr.ph283

.preheader249:                                    ; preds = %bb.as
  store i32 %i.iv, ptr %i.c, align 8
  store ptr %i.iu, ptr %3, align 8
  %i.dt = icmp sgt i64 %i.io, 0
  br i1 %i.dt, label %.lr.ph288, label %._crit_edge289

.lr.ph288:                                        ; preds = %.preheader249
  %i.du = load ptr, ptr %i.aa, align 8, !tbaa !104
  br label %bb.at

.lr.ph283:                                        ; preds = %.lr.ph283.preheader, %bb.as
  %i.dv = phi i64 [ %i.dq, %.lr.ph283.preheader ], [ %i.io, %bb.as ] ; 2 uses
  %i.dw = phi ptr [ %.pre, %.lr.ph283.preheader ], [ %i.iq, %bb.as ]
  %i.dx = phi i32 [ %i.dm, %.lr.ph283.preheader ], [ %i.is, %bb.as ] ; 2 uses
  %i.dy = phi ptr [ %.pre, %.lr.ph283.preheader ], [ %i.it, %bb.as ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph283.preheader ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %.lcssa271276280 = phi i32 [ %i.cs, %.lr.ph283.preheader ], [ %i.iv, %bb.as ]
  %.lcssa273278279 = phi ptr [ %i.bx, %.lr.ph283.preheader ], [ %i.iu, %bb.as ]
  %i.dz = load i32, ptr %i.ab, align 8, !tbaa !103
  %i.ea = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.eb = lshr i32 %i.ea, %i.dz
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !53
  %i.ef = load i32, ptr %i.ac, align 4, !tbaa !110
  %i.eg = and i32 %i.ef, %i.ea
  %i.eh = mul nsw i32 %i.eg, %i.dx
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %.pre357 = load i32, ptr %i.ek, align 8, !tbaa !225
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph283, %bb.ar
  %i.el = phi i64 [ %i.dv, %.lr.ph283 ], [ %i.io, %bb.ar ] ; 3 uses
  %i.em = phi ptr [ %i.dw, %.lr.ph283 ], [ %i.iq, %bb.ar ] ; 13 uses
  %i.en = phi i64 [ %i.dv, %.lr.ph283 ], [ %i.ir, %bb.ar ] ; 4 uses
  %i.eo = phi i32 [ %.pre357, %.lr.ph283 ], [ %i.iy, %bb.ar ] ; 4 uses
  %i.ep = phi i32 [ %i.dx, %.lr.ph283 ], [ %i.is, %bb.ar ] ; 3 uses
  %i.eq = phi ptr [ %i.dy, %.lr.ph283 ], [ %i.it, %bb.ar ] ; 3 uses
  %.0174274 = phi i32 [ 0, %.lr.ph283 ], [ %i.iz, %bb.ar ]
  %i.er = phi i32 [ %.lcssa271276280, %.lr.ph283 ], [ %i.iv, %bb.ar ]
  %i.es = phi ptr [ %.lcssa273278279, %.lr.ph283 ], [ %i.iu, %bb.ar ]
  %i.et = ptrtoaddr ptr %i.em to i64
  %i.eu = load ptr, ptr %i.ej, align 8, !tbaa !224
  %i.ev = ashr i32 %i.eo, 1
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr [8 x i8], ptr %i.eu, i64 %i.ew ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !220
  %.not193 = icmp eq ptr %i.ez, null
  br i1 %.not193, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !220
  %i.fb = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = and i32 %i.fc, 7                        ; 4 uses
  %i.fe = and i64 %i.fb, -8
  %i.ff = inttoptr i64 %i.fe to ptr               ; 6 uses
end_hunk_5
begin_hunk_6_@_ZN10tetgenmesh18recoverfacebyflipsEPdS0_S0_PNS_4faceEPNS_7trifaceERiPS0_S6_:bb.a
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !220
  %i.sh = ptrtoint ptr %i.sg to i64               ; 2 uses
  %i.si = and i64 %i.sh, 15
  %i.sj = and i64 %i.sh, -16
  %i.sk = inttoptr i64 %i.sj to ptr               ; 2 uses
  %i.sl = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.bt
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.si
  %i.sn = icmp eq ptr %i.sb, %i.sk
  br i1 %i.sn, label %bb.as, label %.preheader437, !llvm.loop !1087

bb.as:                                            ; preds = %bb.ar
  %i.so = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.so, align 16, !tbaa !59
  call void @__cxa_throw(ptr nonnull %i.so, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.at:                                            ; preds = %split.thread, %split, %bb.j
  %i.sp = sext i32 %i.cj to i64                   ; 2 uses
  %i.sq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !59
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [8 x i8], ptr %.sroa.0191.1, i64 %i.ss
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !220
  store ptr %i.su, ptr %7, align 8, !tbaa !112
  %i.sv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.sp
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !59
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [8 x i8], ptr %.sroa.0191.1, i64 %i.sx
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !220
  store ptr %i.sz, ptr %8, align 8, !tbaa !112
  %i.ta = call noundef i32 @_ZN10tetgenmesh17removeedgebyflipsEPNS_7trifaceEPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %i.tb = icmp eq i32 %i.ta, 2
  br i1 %i.tb, label %bb.b, label %.loopexit, !llvm.loop !1088

.loopexit:                                        ; preds = %bb.at
  %i.tc = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.tc, label %.preheader214, label %.critedge, !llvm.loop !1089

.critedge:                                        ; preds = %.loopexit, %.loopexit.thread, %.critedge162, %bb.ao, %bb.p
  %.6 = phi i32 [ 0, %bb.p ], [ 0, %.critedge162 ], [ %.3, %bb.ao ], [ 1, %.loopexit.thread ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret i32 %.6
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN10tetgenmesh15recoversubfacesEPNS_9arraypoolEi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tetgenmesh::triface", align 8 ; 32 uses
  %4 = alloca %"class.tetgenmesh::face", align 8  ; 19 uses
  %5 = alloca [3 x %"class.tetgenmesh::face"], align 16 ; 15 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %"class.tetgenmesh::insertvertexflags", align 8 ; 29 uses
  %i.c = alloca i32, align 4                      ; 21 uses
  %i.d = alloca [3 x double], align 16            ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca [3 x double], align 16            ; 4 uses
  %i.g = alloca double, align 8                   ; 3 uses
  %7 = alloca %"class.tetgenmesh::triface", align 8 ; 6 uses
  %8 = alloca %"class.tetgenmesh::face", align 8  ; 5 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr null, ptr %3, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 20 uses
  store i32 0, ptr %i.i, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr null, ptr %4, align 8, !tbaa !224
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  store i32 0, ptr %i.j, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr null, ptr %5, align 16, !tbaa !224
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !225
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %.ptr.1, align 16, !tbaa !224
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !225
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr null, ptr %.ptr.2, align 16, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store ptr null, ptr %i.a, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store ptr null, ptr %i.b, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 0, ptr %i.o, align 8, !tbaa !225
  store ptr null, ptr %i.n, align 8, !tbaa !366
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !336
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, i8 0, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !218  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !185
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 188
  %i.x = load i32, ptr %i.w, align 4, !tbaa !298  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0                     ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.378, ptr @.str.379
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 68716
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !299
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ac = phi i32 [ %i.ab, %bb.c ], [ %i.x, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68440
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !100
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.389, ptr noundef nonnull %i.z, i32 noundef %i.ac, i64 noundef %i.ag) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 68440 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !254 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %.promoted534 = load i64, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %i.al = icmp sgt i64 %.promoted534, 0
  br i1 %i.al, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 68688 ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 16 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68708
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 68692
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68720
  %i.au = icmp sgt i32 %2, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 68640 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 68648 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68652 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2776 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68448 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 69024 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 69032 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 68984 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 68840 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 68832 ; 2 uses
  %i.bu = icmp sgt i32 %2, 1                      ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 69008 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bx = icmp ne i32 %2, 0
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68816 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 68464 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %.promoted540 = phi i64 [ %.promoted534, %.lr.ph.lr.ph ], [ %.promoted, %.outer.backedge ]
  %i.cc = phi ptr [ %i.ak, %.lr.ph.lr.ph ], [ %i.bpc, %.outer.backedge ] ; 2 uses
  %i.cd = phi ptr [ %i.aj, %.lr.ph.lr.ph ], [ %i.bpb, %.outer.backedge ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !103
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !110
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load i32, ptr %i.cd, align 8, !tbaa !102
  %i.cn = sext i32 %i.cm to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge
  %i.co = phi i64 [ %.promoted540, %.lr.ph ], [ %i.cp, %.backedge ] ; 2 uses
  %i.cp = add nsw i64 %i.co, -1                   ; 4 uses
  %i.cq = lshr i64 %i.cp, %i.ci
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !53
  %i.ct = and i64 %i.cp, %i.cl
  %i.cu = mul nsw i64 %i.ct, %i.cn
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !224 ; 16 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !225 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !220
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.backedge, label %bb.g

.backedge:                                        ; preds = %bb.f, %bb.g, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit
  %i.dc = icmp samesign ugt i64 %i.co, 1
  br i1 %i.dc, label %bb.f, label %._crit_edge, !llvm.loop !1090

bb.g:                                             ; preds = %bb.f
  %i.dd = load i32, ptr %i.am, align 8, !tbaa !239
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr %i.cw, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !59
  %i.di = and i32 %i.dh, 8
  %.not453 = icmp eq i32 %i.di, 0
  br i1 %.not453, label %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit, label %.backedge

_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit: ; preds = %bb.g
  %i.dj = and i32 %i.cy, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !220
  %.not = icmp ult ptr %i.dn, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.h, label %.backedge

bb.h:                                             ; preds = %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit
  store i64 %i.cp, ptr %i.cc, align 8, !tbaa !100
  store ptr %i.cw, ptr %4, align 8
  store i32 %i.cy, ptr %i.j, align 8
  %i.do = load ptr, ptr %i.r, align 8, !tbaa !218
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 156
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !185
  %i.dr = icmp sgt i32 %i.dq, 2
  br i1 %i.dr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ds = sext i32 %i.cy to i64                   ; 3 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !59
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !220
  %i.dy = load i32, ptr %i.an, align 8, !tbaa !223
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !59
  %i.ec = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.ds
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !59
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !220
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.dz
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !59
  %i.ej = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.ds
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !59
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !220
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.dz
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !59
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.390, i32 noundef %i.eb, i32 noundef %i.ei, i32 noundef %i.ep) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.c, align 4, !tbaa !59
  %i.er = ptrtoint ptr %i.cw to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.es = phi i32 [ %i.cy, %bb.j ], [ %i.zt, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.eu = ashr i32 %i.es, 1
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [8 x i8], ptr %i.cw, i64 %i.ev ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 48     ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !220 ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = and i32 %i.fa, 7
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !225
  %i.fd = and i64 %i.ez, -8                       ; 2 uses
  %i.fe = inttoptr i64 %i.fd to ptr               ; 2 uses
  store ptr %i.fe, ptr %i.et, align 16, !tbaa !224
  %.not206 = icmp eq i64 %i.fd, 0
  br i1 %.not206, label %bb.am, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 72 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !220
  %i.fh = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = and i32 %i.fi, 15
  store i32 %i.fj, ptr %i.i, align 8, !tbaa !236
  %i.fk = and i64 %i.fh, -16                      ; 2 uses
  %i.fl = inttoptr i64 %i.fk to ptr
  store ptr %i.fl, ptr %3, align 8, !tbaa !231
  %i.fm = icmp eq i64 %i.fk, 0
  %i.fn = sext i32 %i.es to i64                   ; 4 uses
  br i1 %i.fm, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.fo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !59
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !220 ; 6 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.fn
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !59
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !220 ; 6 uses
  %i.fy = call noundef i32 @_ZN10tetgenmesh18recoveredgebyflipsEPdS0_PNS_4faceEPNS_7trifaceEiRi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.fs, ptr noundef %i.fx, ptr noundef nonnull %i.et, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.not213 = icmp eq i32 %i.fy, 0
  br i1 %.not213, label %bb.n, label %.critedge239

bb.n:                                             ; preds = %bb.m
  %i.fz = load i32, ptr %i.c, align 4, !tbaa !59
  %.not214 = icmp eq i32 %i.fz, 10
  br i1 %.not214, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ga = call noundef i32 @_ZN10tetgenmesh18recoveredgebyflipsEPdS0_PNS_4faceEPNS_7trifaceEiRi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.fx, ptr noundef %i.fs, ptr noundef nonnull %i.et, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.not215 = icmp eq i32 %i.ga, 0
  br i1 %.not215, label %.critedge, label %.critedge239

.critedge239:                                     ; preds = %bb.m, %bb.o
  %i.gb = load ptr, ptr %3, align 8, !tbaa !231   ; 3 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = load i32, ptr %i.i, align 8, !tbaa !236 ; 2 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = or i64 %i.ge, %i.gc
  %i.gg = inttoptr i64 %i.gf to ptr
  store ptr %i.gg, ptr %i.ff, align 8, !tbaa !220
  br label %bb.p

bb.p:                                             ; preds = %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit, %.critedge239
  %.sroa.0394.0 = phi ptr [ %i.gb, %.critedge239 ], [ %i.jf, %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit ] ; 2 uses
  %.sroa.31.0 = phi i32 [ %i.gd, %.critedge239 ], [ %i.ji, %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0394.0, i64 64 ; 8 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !220 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %.loopexit.loopexit.i, label %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit

.loopexit.loopexit.i:                             ; preds = %bb.p
  %i.gk = load ptr, ptr %i.ao, align 8, !tbaa !228 ; 13 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !200 ; 3 uses
  %.not.i313 = icmp eq ptr %i.gm, null
  br i1 %.not.i313, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.loopexit.i
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !111
  store ptr %i.gn, ptr %i.gl, align 8, !tbaa !200
  br label %_ZN10tetgenmesh10memorypool5allocEv.exit

bb.r:                                             ; preds = %.loopexit.loopexit.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 80 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !199 ; 2 uses
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.s, label %._crit_edge.i314

._crit_edge.i314:                                 ; preds = %bb.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !198
  br label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 3 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !197 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !111 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.t, label %._crit_edge617

._crit_edge617:                                   ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !192
  %.phi.trans.insert618 = getelementptr inbounds nuw i8, ptr %i.gk, i64 60
  %.pre619 = load i32, ptr %.phi.trans.insert618, align 4, !tbaa !195
  %.pre637 = sext i32 %.pre to i64
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 60
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !195 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !194
  %i.gz = mul nsw i32 %i.gy, %i.gw
  %i.ha = sext i32 %i.gz to i64
end_hunk_6
begin_hunk_7_@_ZN10tetgenmesh19removevertexbyflipsEPd:bb.a
.lr.ph680.prol:                                   ; preds = %.lr.ph680.preheader
  %indvars.iv.next743.prol = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %i.aro = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv.next743.prol ; 2 uses
  %i.arp = sext i32 %.pre764 to i64               ; 2 uses
  %i.arq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.arp
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !59
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr inbounds [8 x i8], ptr %.pre762, i64 %i.ars
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !220
  %i.arv = ptrtoint ptr %i.aru to i64             ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aro, i64 8
  %i.arx = and i64 %i.arv, -16
  %i.ary = inttoptr i64 %i.arx to ptr             ; 2 uses
  store ptr %i.ary, ptr %i.aro, align 8, !tbaa !231
  %i.arz = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.arp
  %i.asa = and i64 %i.arv, 15
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.arz, i64 %i.asa
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !59 ; 2 uses
  store i32 %i.asc, ptr %i.arw, align 8, !tbaa !236
  br label %.lr.ph680.prol.loopexit

.lr.ph680.prol.loopexit:                          ; preds = %.lr.ph680.prol, %.lr.ph680.preheader
  %.unr937 = phi i32 [ %.pre764, %.lr.ph680.preheader ], [ %i.asc, %.lr.ph680.prol ]
  %.unr938 = phi ptr [ %.pre762, %.lr.ph680.preheader ], [ %i.ary, %.lr.ph680.prol ]
  %indvars.iv742.unr = phi i64 [ %indvars.iv740, %.lr.ph680.preheader ], [ %indvars.iv.next743.prol, %.lr.ph680.prol ]
  %i.asd = icmp eq i64 %i.arn, %.neg
  br i1 %i.asd, label %._crit_edge681.loopexit, label %.lr.ph680

.lr.ph680:                                        ; preds = %.lr.ph680.prol.loopexit, %.lr.ph680
  %i.ase = phi i32 [ %i.atk, %.lr.ph680 ], [ %.unr937, %.lr.ph680.prol.loopexit ]
  %i.asf = phi ptr [ %i.atg, %.lr.ph680 ], [ %.unr938, %.lr.ph680.prol.loopexit ]
  %indvars.iv742 = phi i64 [ %indvars.iv.next743.1, %.lr.ph680 ], [ %indvars.iv742.unr, %.lr.ph680.prol.loopexit ] ; 2 uses
  %i.asg = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv742 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  %i.asi = sext i32 %i.ase to i64                 ; 2 uses
  %i.asj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.asi
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !59
  %i.asl = sext i32 %i.ask to i64
  %i.asm = getelementptr inbounds [8 x i8], ptr %i.asf, i64 %i.asl
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !220
  %i.aso = ptrtoint ptr %i.asn to i64             ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asg, i64 24
  %i.asq = and i64 %i.aso, -16
  %i.asr = inttoptr i64 %i.asq to ptr             ; 2 uses
  store ptr %i.asr, ptr %i.ash, align 8, !tbaa !231
  %i.ass = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.asi
  %i.ast = and i64 %i.aso, 15
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.ass, i64 %i.ast
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !59 ; 2 uses
  store i32 %i.asv, ptr %i.asp, align 8, !tbaa !236
  %indvars.iv.next743.1 = add nuw nsw i64 %indvars.iv742, 2 ; 3 uses
  %i.asw = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv.next743.1 ; 2 uses
  %i.asx = sext i32 %i.asv to i64                 ; 2 uses
  %i.asy = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.asx
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !59
  %i.ata = sext i32 %i.asz to i64
  %i.atb = getelementptr inbounds [8 x i8], ptr %i.asr, i64 %i.ata
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !220
  %i.atd = ptrtoint ptr %i.atc to i64             ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  %i.atf = and i64 %i.atd, -16
  %i.atg = inttoptr i64 %i.atf to ptr             ; 2 uses
  store ptr %i.atg, ptr %i.asw, align 8, !tbaa !231
  %i.ath = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.asx
  %i.ati = and i64 %i.atd, 15
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !59 ; 2 uses
  store i32 %i.atk, ptr %i.ate, align 8, !tbaa !236
  %exitcond748.not.1 = icmp eq i64 %indvars.iv.next743.1, %wide.trip.count747
  br i1 %exitcond748.not.1, label %._crit_edge681.loopexit, label %.lr.ph680, !llvm.loop !1123

._crit_edge681.loopexit:                          ; preds = %.lr.ph680, %.lr.ph680.prol.loopexit
  %.pre765 = load ptr, ptr %i.aqm, align 8, !tbaa !231
  %.pre766 = load i32, ptr %i.aqq, align 8, !tbaa !236
  br label %._crit_edge681

._crit_edge681:                                   ; preds = %._crit_edge681.loopexit, %._crit_edge
  %i.atl = phi i32 [ %.pre766, %._crit_edge681.loopexit ], [ %i.arj, %._crit_edge ]
  %i.atm = phi ptr [ %.pre765, %._crit_edge681.loopexit ], [ %i.aqz, %._crit_edge ]
  store ptr %i.xo, ptr %2, align 16, !tbaa !231
  %i.atn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aqr
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !59
  %i.atp = sext i32 %i.ato to i64
  %i.atq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.atp
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !59
  store i32 %i.atr, ptr %i.a, align 8, !tbaa !236
  store ptr %i.atm, ptr %.ptr.1, align 16, !tbaa !231
  %i.ats = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.att = sext i32 %i.atl to i64
  %i.atu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.att
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !59
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.atw
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !59
  %i.atz = sext i32 %i.aty to i64
  %i.aua = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.atz
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !59
  store i32 %i.aub, ptr %i.ats, align 8, !tbaa !236
  call void @_ZN10tetgenmesh6flip23EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %6)
  %i.auc = load ptr, ptr %.ptr.2, align 16, !tbaa !231 ; 2 uses
  store ptr %i.auc, ptr %i.aqm, align 8, !tbaa !231
  %i.aud = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.aue = load i32, ptr %i.aud, align 8, !tbaa !236 ; 2 uses
  store i32 %i.aue, ptr %i.aqq, align 8, !tbaa !236
  %i.auf = load ptr, ptr %2, align 16, !tbaa !231
  store ptr %i.auf, ptr %i.anl, align 8, !tbaa !231
  %i.aug = load i32, ptr %i.a, align 8, !tbaa !236
  store i32 %i.aug, ptr %i.aom, align 8, !tbaa !236
  %i.auh = icmp samesign ugt i32 %.0307, 1
  %wide.trip.count753 = zext nneg i32 %.0307 to i64 ; 2 uses
  br i1 %i.auh, label %.lr.ph684.preheader, label %._crit_edge685

.lr.ph684.preheader:                              ; preds = %._crit_edge681
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %i.aql
  br label %.lr.ph684

.lr.ph684:                                        ; preds = %.lr.ph684.preheader, %.lr.ph684
  %indvars.iv749 = phi i64 [ 1, %.lr.ph684.preheader ], [ %indvars.iv.next750, %.lr.ph684 ] ; 3 uses
  %i.aui = load ptr, ptr %.ptr.1, align 16, !tbaa !231
  store ptr %i.aui, ptr %2, align 16, !tbaa !231
  %i.auj = load i32, ptr %i.ats, align 8, !tbaa !236
  %i.auk = sext i32 %i.auj to i64
  %i.aul = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.auk
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !59
  %i.aun = sext i32 %i.aum to i64
  %i.auo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aun
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !59
  %i.auq = sext i32 %i.aup to i64
  %i.aur = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.auq
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !59
  store i32 %i.aus, ptr %i.a, align 8, !tbaa !236
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv749 ; 2 uses
  %i.aut = load ptr, ptr %gep, align 8, !tbaa !231
  store ptr %i.aut, ptr %.ptr.1, align 16, !tbaa !231
  %i.auu = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.auv = load i32, ptr %i.auu, align 8, !tbaa !236
  %i.auw = sext i32 %i.auv to i64
  %i.aux = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.auw
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !59
  store i32 %i.auy, ptr %i.ats, align 8, !tbaa !236
  %i.auz = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv749 ; 3 uses
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !231
  store ptr %i.ava, ptr %.ptr.2, align 16, !tbaa !231
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auz, i64 8 ; 2 uses
  %i.avc = load i32, ptr %i.avb, align 8, !tbaa !236
  %i.avd = sext i32 %i.avc to i64
  %i.ave = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.avd
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !59
  %i.avg = sext i32 %i.avf to i64
  %i.avh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.avg
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !59
  store i32 %i.avi, ptr %i.aud, align 8, !tbaa !236
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %6)
  %i.avj = load ptr, ptr %2, align 16, !tbaa !231
  store ptr %i.avj, ptr %i.auz, align 8, !tbaa !231
  %i.avk = load i32, ptr %i.a, align 8, !tbaa !236
  %i.avl = sext i32 %i.avk to i64
  %i.avm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.avl
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !59
  store i32 %i.avn, ptr %i.avb, align 8, !tbaa !236
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond754.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count753
  br i1 %exitcond754.not, label %._crit_edge685.loopexit, label %.lr.ph684, !llvm.loop !1124

._crit_edge685.loopexit:                          ; preds = %.lr.ph684
  %.pre767 = load ptr, ptr %i.aqm, align 8, !tbaa !231
  %.pre768 = load i32, ptr %i.aqq, align 8, !tbaa !236
  br label %._crit_edge685

._crit_edge685:                                   ; preds = %._crit_edge681, %._crit_edge685.loopexit
  %i.avo = phi i32 [ %.pre768, %._crit_edge685.loopexit ], [ %i.aue, %._crit_edge681 ]
  %i.avp = phi ptr [ %.pre767, %._crit_edge685.loopexit ], [ %i.auc, %._crit_edge681 ]
  %i.avq = load ptr, ptr %.ptr.1, align 16, !tbaa !231
  store ptr %i.avq, ptr %.ptr.3, align 16, !tbaa !231
  %i.avr = load i32, ptr %i.ats, align 8, !tbaa !236
  %i.avs = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.avr, ptr %i.avs, align 8, !tbaa !236
  store ptr %i.avp, ptr %2, align 16, !tbaa !231
  %i.avt = sext i32 %i.avo to i64
  %i.avu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.avt
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !59
  %i.avw = sext i32 %i.avv to i64
  %i.avx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.avw
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !59
  %i.avz = sext i32 %i.avy to i64
  %i.awa = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.avz
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !59
  store i32 %i.awb, ptr %i.a, align 8, !tbaa !236
  %i.awc = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %wide.trip.count753 ; 3 uses
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !231
  store ptr %i.awd, ptr %.ptr.1, align 16, !tbaa !231
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awc, i64 8 ; 2 uses
  %i.awf = load i32, ptr %i.awe, align 8, !tbaa !236
  %i.awg = sext i32 %i.awf to i64
  %i.awh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.awg
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !59
  %i.awj = sext i32 %i.awi to i64
  %i.awk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.awj
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !59
  store i32 %i.awl, ptr %i.ats, align 8, !tbaa !236
  %7 = sext i32 %i.ark to i64
  %i.awm = getelementptr inbounds [16 x i8], ptr %i.anl, i64 %7 ; 2 uses
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !231
  store ptr %i.awn, ptr %.ptr.2, align 16, !tbaa !231
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %i.awp = load i32, ptr %i.awo, align 8, !tbaa !236
  %i.awq = sext i32 %i.awp to i64
  %i.awr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.awq
  %i.aws = load i32, ptr %i.awr, align 4, !tbaa !59
  %i.awt = sext i32 %i.aws to i64
  %i.awu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.awt
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !59
  %i.aww = sext i32 %i.awv to i64
  %i.awx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.aww
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !59
  store i32 %i.awy, ptr %i.aud, align 8, !tbaa !236
  call void @_ZN10tetgenmesh6flip41EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %6)
  %i.awz = load ptr, ptr %2, align 16, !tbaa !231
  store ptr %i.awz, ptr %i.awc, align 8, !tbaa !231
  %i.axa = load i32, ptr %i.a, align 8, !tbaa !236
  store i32 %i.axa, ptr %i.awe, align 8, !tbaa !236
  br label %bb.ca

bb.ca:                                            ; preds = %.critedge.thread, %._crit_edge685, %.critedge386.thread
  %.0318 = phi ptr [ %i.xq, %.critedge.thread ], [ %i.adt, %.critedge386.thread ], [ %i.anl, %._crit_edge685 ]
  call void @_ZdaPv(ptr noundef nonnull %.0318) #42
  br i1 %i.t, label %bb.cb, label %bb.ck

bb.cb:                                            ; preds = %bb.ca
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 68700 ; 2 uses
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !276
  %.not368 = icmp eq i32 %i.axc, 0
  %i.axd = zext i1 %.not368 to i32
  %i.axe = load ptr, ptr %5, align 8, !tbaa !224
  %i.axf = load i32, ptr %i.g, align 8, !tbaa !225
  %i.axg = ashr i32 %i.axf, 1
  %i.axh = sext i32 %i.axg to i64
  %i.axi = getelementptr inbounds [8 x i8], ptr %i.axe, i64 %i.axh
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !220
  %i.axk = ptrtoint ptr %i.axj to i64             ; 2 uses
  %i.axl = trunc i64 %i.axk to i32
  %i.axm = and i32 %i.axl, 7
  store i32 %i.axm, ptr %i.f, align 8, !tbaa !225
  %i.axn = and i64 %i.axk, -8
  %i.axo = inttoptr i64 %i.axn to ptr
  store ptr %i.axo, ptr %4, align 8, !tbaa !224
  %i.axp = call noundef i32 @_ZN10tetgenmesh13sremovevertexEPdPNS_4faceES2_i(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %i.axd) ; 0 uses
  store i32 0, ptr %i.g, align 8, !tbaa !225
  %i.axq = getelementptr inbounds nuw i8, ptr %0, i64 68660
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !244
  %i.axs = sext i32 %i.axr to i64
  %i.axt = getelementptr inbounds [8 x i8], ptr %.0317, i64 %i.axs
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !220
  %i.axv = ptrtoint ptr %i.axu to i64
  %i.axw = and i64 %i.axv, -16
  %i.axx = inttoptr i64 %i.axw to ptr             ; 4 uses
  store ptr %i.axx, ptr %3, align 8, !tbaa !231
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 32
  %i.axz = load ptr, ptr %i.axy, align 16, !tbaa !220
  %i.aya = icmp eq ptr %i.axz, %.0317
  br i1 %i.aya, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit398, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axx, i64 40
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !220
  %i.ayd = icmp eq ptr %i.ayc, %.0317
  br i1 %i.ayd, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit398, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axx, i64 48
  %i.ayf = load ptr, ptr %i.aye, align 16, !tbaa !220
  %i.ayg = icmp eq ptr %i.ayf, %.0317
  %..i396 = select i1 %i.ayg, i32 7, i32 0
  br label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit398

_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit398: ; preds = %bb.cb, %bb.cc, %bb.cd
  %.sink.i397 = phi i32 [ 11, %bb.cb ], [ 3, %bb.cc ], [ %..i396, %bb.cd ]
  store i32 %.sink.i397, ptr %i.e, align 8, !tbaa !236
  %i.ayh = call noundef i32 @_ZN10tetgenmesh13finddirectionEPNS_7trifaceEPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %3, ptr noundef %.0316) ; 0 uses
  %i.ayi = load ptr, ptr %3, align 8, !tbaa !231  ; 7 uses
  %i.ayj = load i32, ptr %i.e, align 8, !tbaa !236 ; 3 uses
  %i.ayk = sext i32 %i.ayj to i64                 ; 5 uses
  %i.ayl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.ayk
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !59
  %i.ayn = sext i32 %i.aym to i64
  %i.ayo = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.ayn
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !220
  %.not369 = icmp eq ptr %i.ayp, %.0316
  br i1 %.not369, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit398
  %i.ayq = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.ayq, align 16, !tbaa !59
  call void @__cxa_throw(ptr nonnull %i.ayq, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.cf:                                            ; preds = %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit398
  %i.ayr = ptrtoint ptr %i.ayi to i64
  %i.ays = or i64 %i.ayk, %i.ayr
  %i.ayt = inttoptr i64 %i.ays to ptr
  %i.ayu = load ptr, ptr %5, align 8, !tbaa !224  ; 3 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 72
  store ptr %i.ayt, ptr %i.ayv, align 8, !tbaa !220
  %i.ayw = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit401, %bb.cf
  %.sroa.0523.7 = phi ptr [ %i.ayi, %bb.cf ], [ %i.baa, %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit401 ] ; 2 uses
  %.sroa.51.7 = phi i32 [ %i.ayj, %bb.cf ], [ %i.bad, %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit401 ]
  %i.ayx = getelementptr inbounds nuw i8, ptr %.sroa.0523.7, i64 64 ; 8 uses
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !220 ; 2 uses
  %i.ayz = icmp eq ptr %i.ayy, null
  br i1 %i.ayz, label %.loopexit.loopexit.i399, label %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit401

.loopexit.loopexit.i399:                          ; preds = %bb.cg
  %i.aza = load ptr, ptr %i.ayw, align 8, !tbaa !228
  %i.azb = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aza) ; 2 uses
  store ptr %i.azb, ptr %i.ayx, align 8, !tbaa !220
  store ptr null, ptr %i.azb, align 8, !tbaa !220
  %i.azc = load ptr, ptr %i.ayx, align 8, !tbaa !220
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 8
  store ptr null, ptr %i.azd, align 8, !tbaa !220
  %i.aze = load ptr, ptr %i.ayx, align 8, !tbaa !220
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 16
  store ptr null, ptr %i.azf, align 8, !tbaa !220
  %i.azg = load ptr, ptr %i.ayx, align 8, !tbaa !220
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 24
  store ptr null, ptr %i.azh, align 8, !tbaa !220
  %i.azi = load ptr, ptr %i.ayx, align 8, !tbaa !220
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 32
  store ptr null, ptr %i.azj, align 8, !tbaa !220
  %i.azk = load ptr, ptr %i.ayx, align 8, !tbaa !220
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 40
  store ptr null, ptr %i.azl, align 8, !tbaa !220
  %.pre.i400 = load ptr, ptr %i.ayx, align 8, !tbaa !220
  br label %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit401

_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit401: ; preds = %bb.cg, %.loopexit.loopexit.i399
  %i.azm = phi ptr [ %.pre.i400, %.loopexit.loopexit.i399 ], [ %i.ayy, %bb.cg ]
  %i.azn = sext i32 %.sroa.51.7 to i64            ; 3 uses
  %i.azo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.azn
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !59
  %i.azq = sext i32 %i.azp to i64
  %i.azr = getelementptr inbounds [8 x i8], ptr %i.azm, i64 %i.azq
  store ptr %i.ayu, ptr %i.azr, align 8, !tbaa !220
  %i.azs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.azn
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !59
  %i.azu = sext i32 %i.azt to i64
  %i.azv = getelementptr inbounds [8 x i8], ptr %.sroa.0523.7, i64 %i.azu
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !220
  %i.azx = ptrtoint ptr %i.azw to i64             ; 2 uses
  %i.azy = and i64 %i.azx, 15
  %i.azz = and i64 %i.azx, -16
  %i.baa = inttoptr i64 %i.azz to ptr             ; 2 uses
  %i.bab = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.azn
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %i.bab, i64 %i.azy
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !59
  %i.bae = icmp eq ptr %i.ayi, %i.baa
  br i1 %i.bae, label %bb.ch, label %bb.cg, !llvm.loop !1125

bb.ch:                                            ; preds = %_ZN10tetgenmesh8tssbond1ERNS_7trifaceERNS_4faceE.exit401
  %i.baf = load i32, ptr %i.axb, align 4, !tbaa !276
  %.not370 = icmp eq i32 %i.baf, 0
  br i1 %.not370, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.bag = load ptr, ptr %i.ayu, align 8, !tbaa !220
  %i.bah = ptrtoint ptr %i.bag to i64             ; 2 uses
  %i.bai = and i64 %i.bah, -8                     ; 3 uses
  %.not371 = icmp eq i64 %i.bai, 0
  br i1 %.not371, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ci
  %i.baj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ayk
  %i.bak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %.preheader, %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit406
  %.sroa.0471.1.in = phi i64 [ %i.bef, %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit406 ], [ %i.bai, %.preheader ] ; 3 uses
  %.sroa.18.1.in.in = phi i64 [ %i.bee, %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit406 ], [ %i.bah, %.preheader ] ; 2 uses
  %.sroa.18.1.in = trunc i64 %.sroa.18.1.in.in to i32
  %.sroa.18.1 = and i32 %.sroa.18.1.in, 7         ; 2 uses
  %.sroa.0471.1 = inttoptr i64 %.sroa.0471.1.in to ptr ; 5 uses
  %i.bal = and i64 %.sroa.18.1.in.in, 7
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.bal
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !59
  %i.bao = sext i32 %i.ban to i64
  %i.bap = getelementptr inbounds [8 x i8], ptr %.sroa.0471.1, i64 %i.bao
  %i.baq = load ptr, ptr %i.bap, align 8, !tbaa !220
  %.not372 = icmp ne ptr %i.baq, %.0317
  %i.bar = zext i1 %.not372 to i32
  %spec.select617 = xor i32 %.sroa.18.1, %i.bar   ; 3 uses
  %i.bas = zext nneg i32 %spec.select617 to i64   ; 3 uses
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.bas
  %i.bau = load i32, ptr %i.bat, align 4, !tbaa !59
  %i.bav = sext i32 %i.bau to i64
  %i.baw = getelementptr inbounds [8 x i8], ptr %.sroa.0471.1, i64 %i.bav
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !220 ; 2 uses
  %i.bay = load i32, ptr %i.baj, align 4, !tbaa !59
  %i.baz = sext i32 %i.bay to i64
  %i.bba = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.baz
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !220
end_hunk_7
