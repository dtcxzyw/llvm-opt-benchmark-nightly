Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 28
begin_hunk_0_@js_atod:bb.a
  %i.cf = phi ptr [ %i.dn, %bb.bh ], [ %.ph465, %.preheader464 ] ; 7 uses
  %.0199 = phi i32 [ %.3202, %bb.bh ], [ 0, %.preheader464 ] ; 3 uses
  %.0196 = phi i32 [ %.2198, %bb.bh ], [ 0, %.preheader464 ] ; 3 uses
  %.0192 = phi i32 [ %.2194, %bb.bh ], [ 0, %.preheader464 ] ; 7 uses
  %.0188 = phi i32 [ %.3191, %bb.bh ], [ 0, %.preheader464 ] ; 4 uses
  %.3 = phi i32 [ %.4, %bb.bh ], [ %.3.ph, %.preheader464 ] ; 5 uses
  %.1173 = phi i32 [ %i.do, %bb.bh ], [ %.0172, %.preheader464 ] ; 3 uses
  %i.cg = icmp eq i8 %i.ce, 46
  br i1 %i.cg, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.ch = icmp ugt ptr %i.cf, %i.h
  br i1 %i.ch, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.ck = sext i8 %i.cj to i32                    ; 5 uses
  %i.cl = add nsw i32 %i.ck, -48                  ; 2 uses
  %or.cond.i277 = icmp ult i32 %i.cl, 10
  br i1 %or.cond.i277, label %to_digit.exit282, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cm = add nsw i32 %i.ck, -65
  %or.cond3.i278 = icmp ult i32 %i.cm, 26
  br i1 %or.cond3.i278, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cn = add nsw i32 %i.ck, -55
  br label %to_digit.exit282

bb.ao:                                            ; preds = %bb.am
  %i.co = add nsw i32 %i.ck, -97
  %or.cond5.i279 = icmp ult i32 %i.co, 26
  %i.cp = add nsw i32 %i.ck, -87
  %spec.select.i280 = select i1 %or.cond5.i279, i32 %i.cp, i32 36
  br label %to_digit.exit282

to_digit.exit282:                                 ; preds = %bb.al, %bb.an, %bb.ao
  %.0.i281 = phi i32 [ %spec.select.i280, %bb.ao ], [ %i.cn, %bb.an ], [ %i.cl, %bb.al ]
  %i.cq = icmp slt i32 %.0.i281, %i.an
  %or.cond259 = and i1 %.not239, %i.cq
  br i1 %or.cond259, label %bb.aq, label %bb.as

bb.ap:                                            ; preds = %bb.ak
  br i1 %.not239, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap, %to_digit.exit282
  %i.cr = icmp sgt i32 %.3, -1
  br i1 %i.cr, label %bb.bi, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 3 uses
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !38
  %.pre420 = load i8, ptr %i.cs, align 1, !tbaa !17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %to_digit.exit282, %bb.aj
  %i.ct = phi i8 [ 46, %bb.ap ], [ %.pre420, %bb.ar ], [ 46, %to_digit.exit282 ], [ %i.ce, %bb.aj ]
  %i.cu = phi ptr [ %i.cf, %bb.ap ], [ %i.cs, %bb.ar ], [ %i.cf, %to_digit.exit282 ], [ %i.cf, %bb.aj ] ; 4 uses
  %.4 = phi i32 [ %.3, %bb.ap ], [ %.1173, %bb.ar ], [ %.3, %to_digit.exit282 ], [ %.3, %bb.aj ] ; 2 uses
  %i.cv = sext i8 %i.ct to i32                    ; 3 uses
  %i.cw = icmp eq i32 %.1187329, %i.cv
  %i.cx = icmp ugt ptr %i.cu, %i.h
  %or.cond261 = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond261, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 4 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !17
  %i.da = sext i8 %i.cz to i32                    ; 5 uses
  %i.db = add nsw i32 %i.da, -48                  ; 2 uses
  %or.cond.i283 = icmp ult i32 %i.db, 10
  br i1 %or.cond.i283, label %to_digit.exit288, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dc = add nsw i32 %i.da, -65
  %or.cond3.i284 = icmp ult i32 %i.dc, 26
  br i1 %or.cond3.i284, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dd = add nsw i32 %i.da, -55
  br label %to_digit.exit288

bb.aw:                                            ; preds = %bb.au
  %i.de = add nsw i32 %i.da, -97
  %or.cond5.i285 = icmp ult i32 %i.de, 26
  %i.df = add nsw i32 %i.da, -87
  %spec.select.i286 = select i1 %or.cond5.i285, i32 %i.df, i32 36
  br label %to_digit.exit288

to_digit.exit288:                                 ; preds = %bb.at, %bb.av, %bb.aw
  %.0.i287 = phi i32 [ %spec.select.i286, %bb.aw ], [ %i.dd, %bb.av ], [ %i.db, %bb.at ]
  %i.dg = icmp slt i32 %.0.i287, %i.an
  br i1 %i.dg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %to_digit.exit288
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !38
  %.pre421 = load i8, ptr %i.cy, align 1, !tbaa !17
  %.pre425 = sext i8 %.pre421 to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %to_digit.exit288, %bb.as
  %.pre-phi426 = phi i32 [ %.pre425, %bb.ax ], [ %i.cv, %to_digit.exit288 ], [ %i.cv, %bb.as ] ; 5 uses
  %i.dh = phi ptr [ %i.cy, %bb.ax ], [ %i.cu, %to_digit.exit288 ], [ %i.cu, %bb.as ] ; 2 uses
  %i.di = add nsw i32 %.pre-phi426, -48           ; 2 uses
  %or.cond.i289 = icmp ult i32 %i.di, 10
  br i1 %or.cond.i289, label %to_digit.exit294, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dj = add nsw i32 %.pre-phi426, -65
  %or.cond3.i290 = icmp ult i32 %i.dj, 26
  br i1 %or.cond3.i290, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dk = add nsw i32 %.pre-phi426, -55
  br label %to_digit.exit294

bb.bb:                                            ; preds = %bb.az
  %i.dl = add nsw i32 %.pre-phi426, -97
  %or.cond5.i291 = icmp ult i32 %i.dl, 26
  %i.dm = add nsw i32 %.pre-phi426, -87
  %spec.select.i292 = select i1 %or.cond5.i291, i32 %i.dm, i32 36
  br label %to_digit.exit294

to_digit.exit294:                                 ; preds = %bb.ay, %bb.ba, %bb.bb
  %.0.i293 = phi i32 [ %spec.select.i292, %bb.bb ], [ %i.dk, %bb.ba ], [ %i.di, %bb.ay ] ; 3 uses
  %.not242 = icmp ult i32 %.0.i293, %i.an
  br i1 %.not242, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %to_digit.exit294
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 3 uses
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !38
  %i.do = add nuw nsw i32 %.1173, 1
  %i.dp = icmp slt i32 %.0192, %i.as
  br i1 %i.dp, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.dq = mul i32 %.0199, %i.an
  %i.dr = add i32 %.0.i293, %i.dq                 ; 2 uses
  %i.ds = add nsw i32 %.0188, 1                   ; 2 uses
  %i.dt = icmp eq i32 %i.ds, %i.av
  br i1 %i.dt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call fastcc void @mpb_mul1_base(ptr noundef nonnull %4, i32 noundef %i.ax, i32 noundef %i.dr) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.1200 = phi i32 [ 0, %bb.be ], [ %i.dr, %bb.bd ]
  %.1189 = phi i32 [ 0, %bb.be ], [ %i.ds, %bb.bd ]
  %i.du = add nsw i32 %.0192, 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc
  %i.dv = or i32 %.0.i293, %.0196
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.3202 = phi i32 [ %.1200, %bb.bf ], [ %.0199, %bb.bg ]
  %.2198 = phi i32 [ %.0196, %bb.bf ], [ %i.dv, %bb.bg ]
  %.2194 = phi i32 [ %i.du, %bb.bf ], [ %.0192, %bb.bg ]
  %.3191 = phi i32 [ %.1189, %bb.bf ], [ %.0188, %bb.bg ]
  %.pre419 = load i8, ptr %i.dn, align 1, !tbaa !17
  br label %bb.aj

bb.bi:                                            ; preds = %bb.aq, %to_digit.exit294
  %i.dw = phi ptr [ %i.dh, %to_digit.exit294 ], [ %i.cf, %bb.aq ] ; 9 uses
  %.5.ph = phi i32 [ %.4, %to_digit.exit294 ], [ %.3, %bb.aq ] ; 2 uses
  %.not243 = icmp eq i32 %.0188, 0
  br i1 %.not243, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dx = call fastcc i64 @pow_ui(i32 noundef %i.an, i32 noundef %.0188) #12
  %i.dy = trunc i64 %i.dx to i32
  call fastcc void @mpb_mul1_base(ptr noundef nonnull %4, i32 noundef %i.dy, i32 noundef %.0199) #12
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.dz = icmp ne i32 %.0192, 0                   ; 2 uses
  %i.ea = icmp slt i32 %.5.ph, 0
  %spec.select = select i1 %i.ea, i32 %.1173, i32 %.5.ph
  %i.eb = add nsw i32 %.0192, %.0172
  %i.ec = sub i32 %i.eb, %spec.select             ; 2 uses
  %i.ed = icmp ne i32 %., 0                       ; 2 uses
  %i.ee = icmp ne i32 %.0196, 0
  %or.cond12 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond12, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ef = load i32, ptr %i.bb, align 4, !tbaa !19
  %i.eg = or i32 %i.ef, 1
  store i32 %i.eg, ptr %i.bb, align 4, !tbaa !19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %.not239, label %bb.bn, label %.thread373

bb.bn:                                            ; preds = %bb.bm
  %cond = icmp eq i32 %i.an, 10
  %i.eh = load i8, ptr %i.dw, align 1, !tbaa !17  ; 7 uses
  br i1 %cond, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  switch i8 %i.eh, label %.thread373 [
    i8 101, label %bb.bs
    i8 69, label %bb.bs
  ]

bb.bp:                                            ; preds = %bb.bn
  %i.ei = icmp eq i8 %i.eh, 64
  br i1 %i.ei, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ej = add nsw i32 %., -1
  %or.cond15 = icmp ult i32 %i.ej, 4
  br i1 %or.cond15, label %bb.br, label %.thread373

bb.br:                                            ; preds = %bb.bq
  switch i8 %i.eh, label %.thread373 [
    i8 112, label %bb.bs
    i8 80, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br, %bb.bo, %bb.bo, %bb.bp
  %5 = phi i8 [ %i.eh, %bb.br ], [ %i.eh, %bb.br ], [ %i.eh, %bb.bo ], [ %i.eh, %bb.bo ], [ 64, %bb.bp ]
  %i.ek = icmp ugt ptr %i.dw, %i.h
  br i1 %i.ek, label %bb.bt, label %.thread373

bb.bt:                                            ; preds = %bb.bs
  %i.el = and i8 %5, -33
  %narrow = icmp ne i8 %i.el, 80
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 3 uses
  store ptr %i.em, ptr %i.a, align 8, !tbaa !38
  %i.en = load i8, ptr %i.em, align 1, !tbaa !17
  switch i8 %i.en, label %bb.bv [
    i8 43, label %.sink.split
    i8 45, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bt, %bb.bu
  %.not247.ph = phi i1 [ false, %bb.bu ], [ true, %bb.bt ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 2 ; 2 uses
  store ptr %i.eo, ptr %i.a, align 8, !tbaa !38
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %bb.bt
  %.promoted405 = phi ptr [ %i.em, %bb.bt ], [ %i.eo, %.sink.split ] ; 2 uses
  %.not247 = phi i1 [ true, %bb.bt ], [ %.not247.ph, %.sink.split ] ; 2 uses
  %i.ep = load i8, ptr %.promoted405, align 1, !tbaa !17 ; 2 uses
  %i.eq = sext i8 %i.ep to i32                    ; 4 uses
  %i.er = add nsw i32 %i.eq, -48                  ; 2 uses
  %or.cond.i295 = icmp ult i32 %i.er, 10
  br i1 %or.cond.i295, label %.preheader.preheader, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.es = add nsw i32 %i.eq, -65
  %or.cond3.i296 = icmp ult i32 %i.es, 26
  br i1 %or.cond3.i296, label %.thread349, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.et = add nsw i32 %i.eq, -123
  %or.cond5.i297 = icmp ult i32 %i.et, -26
  %i.eu = add nsw i32 %i.eq, -87
  %i.ev = icmp sgt i8 %i.ep, 96
  %or.cond463 = or i1 %or.cond5.i297, %i.ev
  br i1 %or.cond463, label %.thread349, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bx, %bb.bv
  %.0179.ph = phi i32 [ %i.er, %bb.bv ], [ %i.eu, %bb.bx ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %to_digit.exit312.thread364
  %.pn407 = phi ptr [ %.pn406, %to_digit.exit312.thread364 ], [ %.promoted405, %.preheader.preheader ] ; 2 uses
  %.0179 = phi i32 [ %.1180, %to_digit.exit312.thread364 ], [ %.0179.ph, %.preheader.preheader ] ; 5 uses
  %.0167 = phi i1 [ %or.cond268, %to_digit.exit312.thread364 ], [ false, %.preheader.preheader ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn407, i64 1 ; 5 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !38
  %i.ew = load i8, ptr %storemerge, align 1, !tbaa !17 ; 4 uses
  %i.ex = sext i8 %i.ew to i32                    ; 4 uses
  %i.ey = icmp eq i32 %.1187329, %i.ex
  br i1 %i.ey, label %bb.by, label %to_digit.exit306.thread

bb.by:                                            ; preds = %.preheader
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn407, i64 2 ; 4 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !17  ; 2 uses
  %i.fb = sext i8 %i.fa to i32                    ; 3 uses
  %i.fc = add nsw i32 %i.fb, -48
  %or.cond.i301 = icmp ult i32 %i.fc, 10
  br i1 %or.cond.i301, label %to_digit.exit306.thread360, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fd = add nsw i32 %i.fb, -65
  %or.cond3.i302 = icmp ult i32 %i.fd, 26
  br i1 %or.cond3.i302, label %to_digit.exit306.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fe = add nsw i32 %i.fb, -97
  %or.cond5.i303 = icmp ult i32 %i.fe, 26
  %i.ff = icmp slt i8 %i.fa, 97
  %or.cond393 = and i1 %i.ff, %or.cond5.i303
  br i1 %or.cond393, label %to_digit.exit306.thread360, label %to_digit.exit306.thread

to_digit.exit306.thread360:                       ; preds = %bb.ca, %bb.by
  store ptr %i.ez, ptr %i.a, align 8, !tbaa !38
  %.pre422 = load i8, ptr %i.ez, align 1, !tbaa !17 ; 2 uses
  %.pre424 = sext i8 %.pre422 to i32
  br label %to_digit.exit306.thread

to_digit.exit306.thread:                          ; preds = %bb.bz, %bb.ca, %to_digit.exit306.thread360, %.preheader
  %.pre-phi = phi i32 [ %i.ex, %bb.bz ], [ %i.ex, %bb.ca ], [ %.pre424, %to_digit.exit306.thread360 ], [ %i.ex, %.preheader ] ; 4 uses
  %i.fg = phi i8 [ %i.ew, %bb.bz ], [ %i.ew, %bb.ca ], [ %.pre422, %to_digit.exit306.thread360 ], [ %i.ew, %.preheader ]
  %.pn406 = phi ptr [ %storemerge, %bb.bz ], [ %storemerge, %bb.ca ], [ %i.ez, %to_digit.exit306.thread360 ], [ %storemerge, %.preheader ] ; 2 uses
  %i.fh = add nsw i32 %.pre-phi, -48              ; 2 uses
  %or.cond.i307 = icmp ult i32 %i.fh, 10
  br i1 %or.cond.i307, label %to_digit.exit312.thread364, label %bb.cb

bb.cb:                                            ; preds = %to_digit.exit306.thread
  %i.fi = add nsw i32 %.pre-phi, -65
  %or.cond3.i308 = icmp ult i32 %i.fi, 26
  br i1 %or.cond3.i308, label %to_digit.exit312.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fj = add nsw i32 %.pre-phi, -123
  %or.cond5.i309 = icmp ult i32 %i.fj, -26
  %i.fk = add nsw i32 %.pre-phi, -87
  %i.fl = icmp sgt i8 %i.fg, 96
  %or.cond395 = or i1 %i.fl, %or.cond5.i309
  br i1 %or.cond395, label %to_digit.exit312.thread, label %to_digit.exit312.thread364

to_digit.exit312.thread364:                       ; preds = %bb.cc, %to_digit.exit306.thread
  %.0.i311366 = phi i32 [ %i.fk, %bb.cc ], [ %i.fh, %to_digit.exit306.thread ]
  %i.fm = icmp sgt i32 %.0179, 214748363
  %or.cond268 = select i1 %.0167, i1 true, i1 %i.fm, !prof !39 ; 2 uses
  %i.fn = mul nsw i32 %.0179, 10
  %i.fo = add nsw i32 %.0.i311366, %i.fn
  %.1180 = select i1 %or.cond268, i32 %.0179, i32 %i.fo, !prof !39
  br label %.preheader

to_digit.exit312.thread:                          ; preds = %bb.cb, %bb.cc
  %i.fp = sub nsw i32 0, %.0179
  %spec.select263 = select i1 %.not247, i32 %.0179, i32 %i.fp
  %or.cond18 = and i1 %i.dz, %.0167
  %.264 = select i1 %.not247, i64 9218868437227405312, i64 0
  br i1 %or.cond18, label %bb.cr, label %.thread373

.thread373:                                       ; preds = %to_digit.exit312.thread, %bb.bo, %bb.br, %bb.bs, %bb.bq, %bb.bm
  %i.fq = phi ptr [ %i.dw, %bb.bm ], [ %i.dw, %bb.bo ], [ %i.dw, %bb.bs ], [ %i.dw, %bb.br ], [ %i.dw, %bb.bq ], [ %.pn406, %to_digit.exit312.thread ]
  %.4183 = phi i32 [ 0, %bb.bm ], [ 0, %bb.bo ], [ 0, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ], [ %spec.select263, %to_digit.exit312.thread ] ; 2 uses
  %.0170 = phi i1 [ true, %bb.bm ], [ true, %bb.bo ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.bq ], [ %narrow, %to_digit.exit312.thread ]
  %i.fr = icmp eq ptr %i.fq, %i.h
  br i1 %i.fr, label %.thread349, label %bb.cd

bb.cd:                                            ; preds = %.thread373
  br i1 %i.dz, label %bb.ce, label %bb.cr

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.ed, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.fs = select i1 %.0170, i32 %., i32 1
  %spec.select266 = mul nsw i32 %i.fs, %.4183
  %i.ft = mul nsw i32 %i.ec, %.
  %i.fu = sub nsw i32 %spec.select266, %i.ft      ; 2 uses
  %i.fv = mul nsw i32 %.0192, %.
  %i.fw = add nsw i32 %i.fu, %i.fv                ; 2 uses
  %i.fx = or disjoint i32 %., 1024
  %.not252 = icmp slt i32 %i.fw, %i.fx
  br i1 %.not252, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  %i.fy = icmp slt i32 %i.fw, -1074
  br i1 %i.fy, label %bb.cr, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fz = sub nsw i32 0, %i.fu
  %i.ga = call fastcc i64 @round_to_d(ptr noundef %i.b, ptr noundef nonnull %4, i32 noundef %i.fz) #12
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ce
  %i.gb = sub nsw i32 %.4183, %i.ec               ; 2 uses
  %i.gc = add nsw i32 %i.gb, %.0192               ; 2 uses
  %i.gd = getelementptr inbounds [2 x i8], ptr @max_exponent, i64 %i.ap
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !41
  %i.gf = sext i16 %i.ge to i32
  %.not249.not = icmp sgt i32 %i.gc, %i.gf
  br i1 %.not249.not, label %bb.cr, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gg = getelementptr inbounds [2 x i8], ptr @min_exponent, i64 %i.ap
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !41
  %i.gi = sext i16 %i.gh to i32
  %.not250 = icmp sgt i32 %i.gc, %i.gi
  br i1 %.not250, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  %i.gj = call fastcc i64 @mul_pow_round_to_d(ptr noundef %i.b, ptr noundef nonnull %4, i32 noundef %i.az, i32 noundef %i.ay, i32 noundef %i.gb) #12
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %.0166 = phi i64 [ %i.ga, %bb.ch ], [ %i.gj, %bb.ck ] ; 3 uses
  %i.gk = icmp eq i64 %.0166, 0
  br i1 %i.gk, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gl = load i32, ptr %i.b, align 4, !tbaa !19  ; 5 uses
  %i.gm = icmp sgt i32 %i.gl, 1024
  br i1 %i.gm, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gn = icmp slt i32 %i.gl, -1073
  br i1 %i.gn, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.go = icmp slt i32 %i.gl, -1021
  br i1 %i.go, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.gp = sub nuw nsw i32 -1021, %i.gl
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = lshr i64 %.0166, %i.gq
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.gs = add nsw i32 %i.gl, 1022
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 52
  %i.gv = and i64 %.0166, 4503599627370495
end_hunk_0
