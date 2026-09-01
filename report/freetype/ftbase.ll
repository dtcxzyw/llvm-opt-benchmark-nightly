Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ft_open_face_internal:bb.a

FT_Stream_Close.exit.i157:                        ; preds = %bb.y, %bb.x
  %.not5.i158 = icmp eq i8 %i.bx, 0
  br i1 %.not5.i158, label %ft_mem_free.exit.i159, label %FT_Stream_Free.exit167

ft_mem_free.exit.i159:                            ; preds = %FT_Stream_Close.exit.i157
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !108
  tail call void %i.cd(ptr noundef %i.bz, ptr noundef nonnull %i.br) #30, !inline_history !344
  br label %FT_Stream_Free.exit167

bb.z:                                             ; preds = %bb.w, %bb.u, %bb.t
  %.2203 = phi i32 [ %i.bi, %bb.t ], [ %i.bw, %bb.w ], [ %i.bi, %bb.u ] ; 3 uses
  %i.ce = and i32 %.2203, 255
  %.not132 = icmp eq i32 %i.ce, 2
  br i1 %.not132, label %FT_Stream_Seek.exit.thread218, label %FT_Stream_Seek.exit.thread214

FT_Stream_Seek.exit.thread218:                    ; preds = %bb.z, %bb.p
  %.4205 = phi i32 [ %.1202296, %bb.p ], [ %.2203, %bb.z ] ; 2 uses
  %.1105 = phi ptr [ %.0104297, %bb.p ], [ %i.ba, %bb.z ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0100298, i64 8 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.ax
  br i1 %i.cg, label %bb.p, label %FT_Stream_Seek.exit.thread214, !llvm.loop !347

FT_Stream_Seek.exit.thread214:                    ; preds = %FT_Stream_Seek.exit.thread218, %bb.z, %bb.d
  %.5 = phi i32 [ %i.u, %bb.d ], [ %.2203, %bb.z ], [ %.4205, %FT_Stream_Seek.exit.thread218 ] ; 3 uses
  %.2106 = phi ptr [ null, %bb.d ], [ %i.ba, %bb.z ], [ %.1105, %FT_Stream_Seek.exit.thread218 ] ; 4 uses
  %.0102 = phi ptr [ null, %bb.d ], [ %i.x, %bb.z ], [ %i.x, %FT_Stream_Seek.exit.thread218 ] ; 4 uses
  %trunc = trunc i32 %.5 to i8
  switch i8 %trunc, label %.thread [
    i8 81, label %bb.aa
    i8 2, label %bb.aa
    i8 85, label %bb.aa
  ]

bb.aa:                                            ; preds = %FT_Stream_Seek.exit.thread214, %FT_Stream_Seek.exit.thread214, %FT_Stream_Seek.exit.thread214
  %.not146 = icmp eq i8 %4, 0
  br i1 %.not146, label %bb.bq, label %.thread279

.thread279:                                       ; preds = %bb.aa
  %.pre326 = load ptr, ptr %i.e, align 8, !tbaa !181 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.not.i187 = icmp eq ptr %.pre326, null
  br i1 %.not.i187, label %.thread236, label %bb.ab

bb.ab:                                            ; preds = %.thread279.thread, %.thread279
  %.0102278285391 = phi ptr [ %i.x, %.thread279.thread ], [ %.0102, %.thread279 ] ; 6 uses
  %.2106277288387 = phi ptr [ %i.ba, %.thread279.thread ], [ %.2106, %.thread279 ] ; 6 uses
  %i.ch = phi ptr [ %i.br, %.thread279.thread ], [ %.pre326, %.thread279 ] ; 14 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !345 ; 2 uses
  %.not.i.i188 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i188, label %bb.ac, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ab
  %i.ck = tail call i64 %i.cj(ptr noundef nonnull %i.ch, i64 noundef 0, ptr noundef null, i64 noundef 0) #30, !inline_history !348
  %.not10.i.i189 = icmp eq i64 %i.ck, 0
  br i1 %.not10.i.i189, label %bb.ac, label %.thread236

bb.ac:                                            ; preds = %bb.ab, %.split.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  store i64 0, ptr %i.cl, align 8, !tbaa !200
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.not, label %.thread236, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !345 ; 2 uses
  %.not31.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not31.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = call i64 %i.co(ptr noundef nonnull %i.ch, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 128) #30, !inline_history !349
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 128) ; 2 uses
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !191
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.cq, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1.i.i.i = phi i64 [ %i.cp, %bb.ae ], [ %spec.select.i.i.i, %bb.af ] ; 2 uses
  store i64 %.1.i.i.i, ptr %i.cl, align 8, !tbaa !200
  %i.cr = icmp ult i64 %.1.i.i.i, 128
  br i1 %i.cr, label %.thread236, label %FT_Stream_Read.exit.i

FT_Stream_Read.exit.i:                            ; preds = %bb.ag
  %i.cs = load i8, ptr %i.a, align 16, !tbaa !151
  %i.ct = icmp ne i8 %i.cs, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  %i.cv = load i8, ptr %i.cu, align 2
  %i.cw = icmp ne i8 %i.cv, 0
  %or.cond.i191 = select i1 %i.ct, i1 true, i1 %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  %i.cy = load i8, ptr %i.cx, align 2
  %i.cz = icmp ne i8 %i.cy, 0
  %or.cond7.i = select i1 %or.cond.i191, i1 true, i1 %i.cz
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.db = load i8, ptr %i.da, align 1             ; 2 uses
  %i.dc = add i8 %i.db, -34
  %i.dd = icmp ult i8 %i.dc, -33
  %or.cond15.i = select i1 %or.cond7.i, i1 true, i1 %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 63
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = icmp ne i8 %i.df, 0
  %or.cond19.i = select i1 %or.cond15.i, i1 true, i1 %i.dg
  br i1 %or.cond19.i, label %IsMacBinary.exit.thread234, label %bb.ah

bb.ah:                                            ; preds = %FT_Stream_Read.exit.i
  %i.dh = zext nneg i8 %i.db to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !151
  %i.dl = icmp ne i8 %i.dk, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 83
  %i.dn = load i8, ptr %i.dm, align 1             ; 2 uses
  %i.do = icmp slt i8 %i.dn, 0
  %or.cond23.i = select i1 %i.dl, i1 true, i1 %i.do
  br i1 %or.cond23.i, label %IsMacBinary.exit.thread234, label %IsMacBinary.exit

.thread236:                                       ; preds = %bb.ag, %bb.ac, %.split.i.i, %.thread279
  %.not.i187397 = phi i1 [ false, %bb.ag ], [ false, %bb.ac ], [ false, %.split.i.i ], [ true, %.thread279 ]
  %.0102278285392 = phi ptr [ %.0102278285391, %bb.ag ], [ %.0102278285391, %bb.ac ], [ %.0102278285391, %.split.i.i ], [ %.0102, %.thread279 ]
  %.2106277288388 = phi ptr [ %.2106277288387, %bb.ag ], [ %.2106277288387, %bb.ac ], [ %.2106277288387, %.split.i.i ], [ %.2106, %.thread279 ]
  %i.dp = phi ptr [ %i.ch, %bb.ag ], [ %i.ch, %bb.ac ], [ %i.ch, %.split.i.i ], [ null, %.thread279 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.ak

IsMacBinary.exit.thread234:                       ; preds = %FT_Stream_Read.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.ai

IsMacBinary.exit:                                 ; preds = %bb.ah
  %i.dq = zext nneg i8 %i.dn to i64
  %i.dr = shl nuw nsw i64 %i.dq, 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !151
  %i.du = zext i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 16
  %i.dw = or disjoint i64 %i.dv, %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 85
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !151
  %i.dz = zext i8 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 8
  %i.eb = or disjoint i64 %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 86
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !151
  %i.ee = zext i8 %i.ed to i64
  %i.ef = or disjoint i64 %i.eb, %i.ee
  %i.eg = add nuw nsw i64 %i.ef, 127
  %i.eh = and i64 %i.eg, 9223372036854775680
  %i.ei = add nuw nsw i64 %i.eh, 128
  %i.ej = call fastcc i32 @IsMacResource(ptr noundef %0, ptr noundef nonnull %i.ch, i64 noundef %i.ei, i64 noundef range(i64 -2147483647, 2147483648) %.0109, ptr noundef %3), !inline_history !350 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ek = and i32 %i.ej, 255
  %i.el = icmp eq i32 %i.ek, 2
  br i1 %i.el, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %IsMacBinary.exit.thread234, %IsMacBinary.exit
  %i.em = call fastcc i32 @IsMacResource(ptr noundef %0, ptr noundef nonnull %i.ch, i64 noundef 0, i64 noundef range(i64 -2147483647, 2147483648) %.0109, ptr noundef %3), !inline_history !351
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %IsMacBinary.exit
  %.0.i = phi i32 [ %i.em, %bb.ai ], [ %i.ej, %IsMacBinary.exit ] ; 4 uses
  %trunc290 = trunc i32 %.0.i to i8
  switch i8 %trunc290, label %load_mac_face.exit [
    i8 2, label %bb.ak
    i8 85, label %bb.ak
  ]

bb.ak:                                            ; preds = %.thread236, %bb.aj, %bb.aj
  %.not.i187394 = phi i1 [ %.not.i187397, %.thread236 ], [ false, %bb.aj ], [ false, %bb.aj ] ; 2 uses
  %.0102278285389 = phi ptr [ %.0102278285392, %.thread236 ], [ %.0102278285391, %bb.aj ], [ %.0102278285391, %bb.aj ] ; 2 uses
  %.2106277288385 = phi ptr [ %.2106277288388, %.thread236 ], [ %.2106277288387, %bb.aj ], [ %.2106277288387, %bb.aj ] ; 2 uses
  %i.en = phi ptr [ %i.dp, %.thread236 ], [ %i.ch, %bb.aj ], [ %i.ch, %bb.aj ] ; 3 uses
  %.0.i238 = phi i32 [ 85, %.thread236 ], [ %.0.i, %bb.aj ], [ %.0.i, %bb.aj ]
  %i.eo = load i32, ptr %1, align 8, !tbaa !186
  %i.ep = and i32 %i.eo, 4
  %.not.i161 = icmp eq i32 %i.ep, 0
  br i1 %.not.i161, label %load_mac_face.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eq = load ptr, ptr %0, align 8, !tbaa !182   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !196
  call void @FT_Raccess_Guess(ptr noundef nonnull %0, ptr noundef %i.en, ptr noundef %i.es, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d), !inline_history !352
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.av
  %indvars.iv317 = phi i64 [ 0, %bb.al ], [ %indvars.iv.next318, %bb.av ] ; 5 uses
  %.0.i180305 = phi i8 [ 0, %bb.al ], [ %.2.i, %bb.av ] ; 4 uses
  %.035.i303 = phi i32 [ 2, %bb.al ], [ %.136.i, %bb.av ] ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr @ft_raccess_guess_table, i64 %indvars.iv317
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !353
  %.off.i.i = add i32 %i.ev, -3                   ; 2 uses
  %switch.i.i = icmp ult i32 %.off.i.i, 2         ; 2 uses
  %i.ew = icmp ne i8 %.0.i180305, 0
  %or.cond.i = select i1 %switch.i.i, i1 %i.ew, i1 false
  br i1 %or.cond.i, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv317
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !98
  %.not.i182 = icmp eq i32 %i.ey, 0
  br i1 %.not.i182, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv317
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !105 ; 2 uses
  %.not43.i = icmp eq ptr %i.fa, null
  br i1 %.not43.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fb = load ptr, ptr %i.er, align 8, !tbaa !196
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fc = phi ptr [ %i.fb, %bb.ap ], [ %i.fa, %bb.ao ]
  %i.fd = load ptr, ptr %0, align 8, !tbaa !182   ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !87
  %i.fg = call ptr %i.ff(ptr noundef %i.fd, i64 noundef 80) #30, !inline_history !355 ; 9 uses
  %.not.i.not.i44.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.not.i44.i.i, label %FT_Stream_New.exit.i.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.fg, i8 0, i64 80, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56 ; 2 uses
  store ptr %i.fd, ptr %i.fh, align 8, !tbaa !195
  %i.fi = call i32 @FT_Stream_Open(ptr noundef nonnull %i.fg, ptr noundef %i.fc) #30, !inline_history !352 ; 2 uses
  %.not41.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not41.i.i, label %bb.as, label %ft_mem_free.exit.i.i

ft_mem_free.exit.i.i:                             ; preds = %bb.ar
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !108
  call void %i.fk(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fg) #30, !inline_history !356
  br label %FT_Stream_New.exit.i.thread

FT_Stream_New.exit.i.thread:                      ; preds = %ft_mem_free.exit.i.i, %bb.aq
  %.030.i.i.ph = phi i32 [ 64, %bb.aq ], [ %i.fi, %ft_mem_free.exit.i.i ] ; 2 uses
  %i.fl = and i32 %.030.i.i.ph, 255
  %i.fm = icmp eq i32 %i.fl, 81
  %or.cond50.i241 = and i1 %switch.i.i, %i.fm
  %.1.i185242 = select i1 %or.cond50.i241, i8 1, i8 %.0.i180305
  br label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv317
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !40
  %i.fp = call fastcc i32 @IsMacResource(ptr noundef nonnull %0, ptr noundef nonnull %i.fg, i64 noundef %i.fo, i64 noundef range(i64 -2147483647, 2147483648) %.0109, ptr noundef %3), !inline_history !352 ; 2 uses
  %i.fq = load ptr, ptr %i.fh, align 8, !tbaa !195 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !198 ; 2 uses
  %.not5.i.i52.i = icmp eq ptr %i.fs, null
  br i1 %.not5.i.i52.i, label %FT_Stream_Free.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void %i.fs(ptr noundef nonnull %i.fg) #30, !inline_history !357
  br label %FT_Stream_Free.exit.i

FT_Stream_Free.exit.i:                            ; preds = %bb.as, %bb.at
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !108
  call void %i.fu(ptr noundef %i.fq, ptr noundef nonnull %i.fg) #30, !inline_history !358
  %.not45.i = icmp eq i32 %i.fp, 0
  br i1 %.not45.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %FT_Stream_Free.exit.i
  %.not48.i = icmp ugt i32 %.off.i.i, 1
  %spec.select.i186 = select i1 %.not48.i, i8 %.0.i180305, i8 1
  br label %bb.av

bb.av:                                            ; preds = %FT_Stream_New.exit.i.thread, %bb.au, %bb.an, %bb.am
  %.136.i = phi i32 [ %.035.i303, %bb.am ], [ %.035.i303, %bb.an ], [ %.030.i.i.ph, %FT_Stream_New.exit.i.thread ], [ %i.fp, %bb.au ] ; 2 uses
  %.2.i = phi i8 [ 1, %bb.am ], [ %.0.i180305, %bb.an ], [ %.1.i185242, %FT_Stream_New.exit.i.thread ], [ %spec.select.i186, %bb.au ]
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next318, 9
  br i1 %exitcond319.not, label %bb.aw, label %bb.am, !llvm.loop !359

bb.aw:                                            ; preds = %FT_Stream_Free.exit.i, %bb.av
  %.237.i = phi i32 [ 0, %FT_Stream_Free.exit.i ], [ %.136.i, %bb.av ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 9 uses
  %i.fw = load ptr, ptr %i.b, align 16, !tbaa !105 ; 2 uses
  %.not47.i = icmp eq ptr %i.fw, null
  br i1 %.not47.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.fx(ptr noundef %i.eq, ptr noundef nonnull %i.fw) #30, !inline_history !360
  store ptr null, ptr %i.b, align 16, !tbaa !105
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !105 ; 2 uses
  %.not47.i.1 = icmp eq ptr %i.fz, null
  br i1 %.not47.i.1, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ga = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.ga(ptr noundef %i.eq, ptr noundef nonnull %i.fz) #30, !inline_history !360
  store ptr null, ptr %i.fy, align 8, !tbaa !105
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !105 ; 2 uses
  %.not47.i.2 = icmp eq ptr %i.gc, null
  br i1 %.not47.i.2, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gd = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.gd(ptr noundef %i.eq, ptr noundef nonnull %i.gc) #30, !inline_history !360
  store ptr null, ptr %i.gb, align 16, !tbaa !105
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !105 ; 2 uses
  %.not47.i.3 = icmp eq ptr %i.gf, null
  br i1 %.not47.i.3, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gg = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.gg(ptr noundef %i.eq, ptr noundef nonnull %i.gf) #30, !inline_history !360
  store ptr null, ptr %i.ge, align 8, !tbaa !105
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.gi = load ptr, ptr %i.gh, align 16, !tbaa !105 ; 2 uses
  %.not47.i.4 = icmp eq ptr %i.gi, null
  br i1 %.not47.i.4, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gj = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.gj(ptr noundef %i.eq, ptr noundef nonnull %i.gi) #30, !inline_history !360
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !105 ; 2 uses
  %.not47.i.5 = icmp eq ptr %i.gl, null
  br i1 %.not47.i.5, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gm = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.gm(ptr noundef %i.eq, ptr noundef nonnull %i.gl) #30, !inline_history !360
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.go = load ptr, ptr %i.gn, align 16, !tbaa !105 ; 2 uses
  %.not47.i.6 = icmp eq ptr %i.go, null
  br i1 %.not47.i.6, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gp = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.gp(ptr noundef %i.eq, ptr noundef nonnull %i.go) #30, !inline_history !360
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !105 ; 2 uses
  %.not47.i.7 = icmp eq ptr %i.gr, null
  br i1 %.not47.i.7, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gs = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.gs(ptr noundef %i.eq, ptr noundef nonnull %i.gr) #30, !inline_history !360
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.gu = load ptr, ptr %i.gt, align 16, !tbaa !105 ; 2 uses
  %.not47.i.8 = icmp eq ptr %i.gu, null
  br i1 %.not47.i.8, label %load_face_in_embedded_rfork.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gv = load ptr, ptr %i.fv, align 8, !tbaa !108
  call void %i.gv(ptr noundef %i.eq, ptr noundef nonnull %i.gu) #30, !inline_history !360
  br label %load_face_in_embedded_rfork.exit

load_face_in_embedded_rfork.exit:                 ; preds = %bb.bn, %bb.bm
  %.not46.i = icmp eq i32 %.237.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br i1 %.not46.i, label %load_mac_face.exit.thread, label %.thread

load_mac_face.exit:                               ; preds = %bb.aj, %bb.ak
  %.not.i187395 = phi i1 [ false, %bb.aj ], [ %.not.i187394, %bb.ak ]
  %.0102278285390 = phi ptr [ %.0102278285391, %bb.aj ], [ %.0102278285389, %bb.ak ]
  %.2106277288386 = phi ptr [ %.2106277288387, %bb.aj ], [ %.2106277288385, %bb.ak ]
  %i.gw = phi ptr [ %i.ch, %bb.aj ], [ %i.en, %bb.ak ]
  %.1.i = phi i32 [ %.0.i, %bb.aj ], [ %.0.i238, %bb.ak ] ; 2 uses
  %.not147 = icmp eq i32 %.1.i, 0
  br i1 %.not147, label %load_mac_face.exit.thread, label %bb.bq

load_mac_face.exit.thread:                        ; preds = %load_face_in_embedded_rfork.exit, %load_mac_face.exit
  %.not.i187393 = phi i1 [ %.not.i187394, %load_face_in_embedded_rfork.exit ], [ %.not.i187395, %load_mac_face.exit ]
  %i.gx = phi ptr [ %i.en, %load_face_in_embedded_rfork.exit ], [ %i.gw, %load_mac_face.exit ] ; 4 uses
  %i.gy = load i8, ptr %i.g, align 1, !tbaa !151
  br i1 %.not.i187393, label %FT_Stream_Free.exit167, label %bb.bo

bb.bo:                                            ; preds = %load_mac_face.exit.thread
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !195 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !198 ; 2 uses
  %.not5.i.i163 = icmp eq ptr %i.hc, null
  br i1 %.not5.i.i163, label %FT_Stream_Close.exit.i164, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void %i.hc(ptr noundef nonnull %i.gx) #30, !inline_history !343
  br label %FT_Stream_Close.exit.i164

FT_Stream_Close.exit.i164:                        ; preds = %bb.bp, %bb.bo
  %.not5.i165 = icmp eq i8 %i.gy, 0
  br i1 %.not5.i165, label %ft_mem_free.exit.i166, label %FT_Stream_Free.exit167

ft_mem_free.exit.i166:                            ; preds = %FT_Stream_Close.exit.i164
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !108
  call void %i.he(ptr noundef %i.ha, ptr noundef nonnull %i.gx) #30, !inline_history !344
  br label %FT_Stream_Free.exit167

bb.bq:                                            ; preds = %load_mac_face.exit, %bb.aa
  %.2106277289 = phi ptr [ %.2106, %bb.aa ], [ %.2106277288386, %load_mac_face.exit ]
  %.0102278286 = phi ptr [ %.0102, %bb.aa ], [ %.0102278285390, %load_mac_face.exit ]
  %.6 = phi i32 [ %.5, %bb.aa ], [ %.1.i, %load_mac_face.exit ] ; 2 uses
  %i.hf = and i32 %.6, 255
  %.not148 = icmp eq i32 %i.hf, 2
  %spec.select = select i1 %.not148, i32 2, i32 %.6
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.bq, %load_face_in_embedded_rfork.exit, %bb.e, %FT_Stream_Seek.exit.thread214
  %.0102226 = phi ptr [ %.0102, %FT_Stream_Seek.exit.thread214 ], [ null, %bb.e ], [ %.0102278286, %bb.bq ], [ %.0102278285389, %load_face_in_embedded_rfork.exit ], [ %i.x, %bb.o ] ; 3 uses
  %.2106225 = phi ptr [ %.2106, %FT_Stream_Seek.exit.thread214 ], [ null, %bb.e ], [ %.2106277289, %bb.bq ], [ %.2106277288385, %load_face_in_embedded_rfork.exit ], [ null, %bb.o ] ; 3 uses
  %.7 = phi i32 [ %.5, %FT_Stream_Seek.exit.thread214 ], [ 6, %bb.e ], [ %spec.select, %bb.bq ], [ 2, %load_face_in_embedded_rfork.exit ], [ 11, %bb.o ] ; 3 uses
  %i.hg = load ptr, ptr %i.e, align 8, !tbaa !181 ; 5 uses
  %i.hh = load i8, ptr %i.g, align 1, !tbaa !151
  %.not.i168 = icmp eq ptr %i.hg, null
  br i1 %.not.i168, label %FT_Stream_Free.exit.thread, label %bb.br

bb.br:                                            ; preds = %.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !195 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !198 ; 2 uses
  %.not5.i.i169 = icmp eq ptr %i.hl, null
  br i1 %.not5.i.i169, label %FT_Stream_Close.exit.i170, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void %i.hl(ptr noundef nonnull %i.hg) #30, !inline_history !343
  br label %FT_Stream_Close.exit.i170

FT_Stream_Close.exit.i170:                        ; preds = %bb.bs, %bb.br
  %.not5.i171 = icmp eq i8 %i.hh, 0
  br i1 %.not5.i171, label %ft_mem_free.exit.i172, label %FT_Stream_Free.exit.thread

ft_mem_free.exit.i172:                            ; preds = %FT_Stream_Close.exit.i170
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !108
  call void %i.hn(ptr noundef %i.hj, ptr noundef nonnull %i.hg) #30, !inline_history !344
  br label %FT_Stream_Free.exit.thread

FT_Stream_Seek.exit:                              ; preds = %bb.s, %bb.k
  %.3107 = phi ptr [ %i.ab, %bb.k ], [ %i.ba, %bb.s ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 8
end_hunk_0
begin_hunk_1_@FT_CMap_New:bb.a
  %i.ae = shl nuw nsw i64 %i.q, 3
  %i.af = shl nuw nsw i64 %i.s, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !130
  %i.ai = tail call ptr %i.ah(ptr noundef nonnull %i.e, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef %i.u) #30, !inline_history !129 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %ft_mem_qrealloc.exit, label %bb.l

ft_mem_qrealloc.exit:                             ; preds = %bb.j, %bb.k, %bb.e, %bb.h
  %.134.i = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.k ], [ %i.u, %bb.e ], [ null, %bb.j ]
  %.1.i = phi i32 [ 10, %bb.h ], [ 64, %bb.k ], [ 6, %bb.e ], [ 64, %bb.j ]
  store ptr %.134.i, ptr %i.t, align 8, !tbaa !325
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %.134.i.ph = phi ptr [ %i.ai, %bb.k ], [ %i.ac, %bb.j ] ; 2 uses
  store ptr %.134.i.ph, ptr %i.t, align 8, !tbaa !325
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !326 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !326
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.134.i.ph, i64 %i.al
  store ptr %i.j, ptr %i.am, align 8, !tbaa !327
  br label %ft_mem_alloc.exit

ft_mem_alloc.exit:                                ; preds = %ft_mem_qalloc.exit.thread.i, %ft_mem_qalloc.exit.i, %bb.l, %ft_cmap_done_internal.exit
  %.042 = phi i32 [ 0, %bb.l ], [ %.1, %ft_cmap_done_internal.exit ], [ 6, %ft_mem_qalloc.exit.thread.i ], [ 64, %ft_mem_qalloc.exit.i ] ; 2 uses
  %.0 = phi ptr [ %i.j, %bb.l ], [ null, %ft_cmap_done_internal.exit ], [ null, %ft_mem_qalloc.exit.thread.i ], [ null, %ft_mem_qalloc.exit.i ]
  %.not38 = icmp eq ptr %3, null
  br i1 %.not38, label %bb.p, label %bb.m

bb.m:                                             ; preds = %ft_mem_alloc.exit
  store ptr %.0, ptr %3, align 8, !tbaa !453
  br label %bb.p

bb.n:                                             ; preds = %ft_mem_qrealloc.exit, %bb.d
  %.1 = phi i32 [ %.1.i, %ft_mem_qrealloc.exit ], [ %i.n, %bb.d ]
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !318
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !396
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !207 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !397 ; 2 uses
  %.not.i39 = icmp eq ptr %i.as, null
  br i1 %.not.i39, label %ft_cmap_done_internal.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void %i.as(ptr noundef nonnull %i.j) #30, !inline_history !447
  br label %ft_cmap_done_internal.exit

ft_cmap_done_internal.exit:                       ; preds = %bb.n, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108
  tail call void %i.au(ptr noundef %i.aq, ptr noundef nonnull %i.j) #30, !inline_history !448
  br label %ft_mem_alloc.exit

bb.p:                                             ; preds = %ft_mem_alloc.exit, %bb.m, %bb.a, %bb.b
  %.028 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ %.042, %bb.m ], [ %.042, %ft_mem_alloc.exit ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define range(i64 0, 4294967296) i64 @FT_Get_First_Char(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_Get_Next_Char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317  ; 3 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %FT_Get_Next_Char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %.not10 = icmp eq i64 %i.e, 0
  br i1 %.not10, label %FT_Get_Next_Char.exit, label %FT_Get_Char_Index.exit

FT_Get_Char_Index.exit:                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !318
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !322
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.c, i32 noundef 0) #30, !inline_history !324 ; 3 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %.not12.i = icmp uge i32 %i.j, %i.l
  %i.m = icmp eq i32 %i.j, 0
  %i.n = or i1 %i.m, %.not12.i
  br i1 %i.n, label %bb.d, label %FT_Get_Next_Char.exit

bb.d:                                             ; preds = %FT_Get_Char_Index.exit
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !317  ; 3 uses
  %.not17.i = icmp eq ptr %i.o, null
  %.not18.i = icmp eq i64 %i.k, 0
  %or.cond = or i1 %.not17.i, %.not18.i
  br i1 %or.cond, label %FT_Get_Next_Char.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !318
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !455
  %i.t = call i32 %i.s(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #30, !inline_history !456 ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !8
  %i.v = trunc i64 %i.u to i32
  %.not19.i = icmp ult i32 %i.t, %i.v
  br i1 %.not19.i, label %bb.g, label %bb.f, !llvm.loop !457

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq i32 %i.t, 0
  %i.x = load i32, ptr %i.a, align 4
  %i.y = select i1 %i.w, i32 0, i32 %i.x
  %i.z = zext i32 %i.y to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %FT_Get_Next_Char.exit

FT_Get_Next_Char.exit:                            ; preds = %bb.g, %bb.d, %FT_Get_Char_Index.exit, %bb.c, %bb.b, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.j, %FT_Get_Char_Index.exit ], [ %i.t, %bb.g ], [ 0, %bb.d ]
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %FT_Get_Char_Index.exit ], [ %i.z, %bb.g ], [ 0, %bb.d ]
  %.not11 = icmp eq ptr %1, null
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %FT_Get_Next_Char.exit
  store i32 %.014, ptr %1, align 4, !tbaa !98
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %FT_Get_Next_Char.exit
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 0, 4294967296) i64 @FT_Get_Next_Char(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317  ; 3 uses
  %.not17 = icmp eq ptr %i.c, null
  br i1 %.not17, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %.not18 = icmp eq i64 %i.e, 0
  br i1 %.not18, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.f = trunc i64 %1 to i32
  store i32 %i.f, ptr %i.a, align 4, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !318
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !455
  %i.k = call i32 %i.j(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #30 ; 3 uses
  %i.l = load i64, ptr %i.d, align 8, !tbaa !8
  %i.m = trunc i64 %i.l to i32
  %.not19 = icmp ult i32 %i.k, %i.m
  br i1 %.not19, label %bb.f, label %bb.e, !llvm.loop !457

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %i.k, 0
  %i.o = load i32, ptr %i.a, align 4
  %i.p = select i1 %i.n, i32 0, i32 %i.o
  %i.q = zext i32 %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.a
  %.013 = phi i64 [ %i.q, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ %i.k, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.0, ptr %2, align 4, !tbaa !98
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret i64 %.013
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 8) i32 @FT_Face_Properties(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = icmp ne ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %3 = icmp eq ptr %2, null
  %brmerge = or i1 %i.a, %3
  %.mux = select i1 %or.cond, i32 0, i32 6
  br i1 %brmerge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.02130 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.k ] ; 4 uses
  %.02229 = phi i32 [ %1, %.lr.ph ], [ %i.u, %bb.k ]
  %i.d = load i64, ptr %.02130, align 8, !tbaa !458
  switch i64 %i.d, label %.loopexit [
    i64 1684107883, label %bb.c
    i64 1818453094, label %.loopexit.loopexit
    i64 1936024932, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.02130, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !460  ; 2 uses
  %.not27 = icmp eq ptr %i.f, null
  br i1 %.not27, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !151
  %i.h = icmp eq i8 %i.g, 1
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !252
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.j, align 8, !tbaa !376
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.j, align 8, !tbaa !376
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !252
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 -1, ptr %i.l, align 8, !tbaa !376
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.02130, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !460  ; 2 uses
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr %i.n, align 4, !tbaa !98
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !252
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  store i32 %spec.store.select, ptr %i.q, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !252
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  store i32 -1, ptr %i.s, align 4, !tbaa !461
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.e, %bb.f, %bb.g, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.02130, i64 16
  %i.u = add i32 %.02229, -1                      ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !462

.loopexit.loopexit:                               ; preds = %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.b, %.loopexit.loopexit, %bb.a
  %.0 = phi i32 [ 6, %bb.b ], [ %.mux, %bb.a ], [ 0, %bb.k ], [ 7, %.loopexit.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Face_GetCharVariantIndex(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.TT_CMapInfo_, align 8       ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %find_variant_selector_charmap.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !317  ; 2 uses
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %find_variant_selector_charmap.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !328
  %i.e = icmp eq i32 %i.d, 1970170211
  br i1 %i.e, label %bb.d, label %find_variant_selector_charmap.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !325  ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %find_variant_selector_charmap.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !326  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx.i = shl nsw i64 %i.j, 3
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.i, label %find_variant_selector_charmap.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i
  %.017.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.af, %bb.l ] ; 3 uses
  %i.n = load ptr, ptr %.017.i, align 8, !tbaa !327 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i16, ptr %i.o, align 4, !tbaa !329
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %i.s = load i16, ptr %i.r, align 2, !tbaa !330
  %i.t = icmp eq i16 %i.s, 5
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !331  ; 2 uses
  %.not15.i.i = icmp eq ptr %i.u, null
  br i1 %.not15.i.i, label %FT_Get_CMap_Format.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86   ; 2 uses
  %.not16.i.i = icmp eq ptr %i.z, null
  br i1 %.not16.i.i, label %FT_Get_CMap_Format.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call ptr %i.z(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.7) #30, !inline_history !463 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.aa, null
  br i1 %.not17.i.i, label %FT_Get_CMap_Format.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !333
  %i.ac = call i32 %i.ab(ptr noundef nonnull %i.n, ptr noundef nonnull %3) #30, !inline_history !463
  %.not18.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not18.i.i, label %FT_Get_CMap_Format.exit.i, label %FT_Get_CMap_Format.exit.thread.i

FT_Get_CMap_Format.exit.thread.i:                 ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.l

FT_Get_CMap_Format.exit.i:                        ; preds = %bb.k
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !335
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ae = icmp eq i64 %i.ad, 14
  br i1 %i.ae, label %find_variant_selector_charmap.exit, label %bb.l

bb.l:                                             ; preds = %FT_Get_CMap_Format.exit.i, %FT_Get_CMap_Format.exit.thread.i, %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.017.i, i64 8 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.k
  br i1 %i.ag, label %bb.f, label %find_variant_selector_charmap.exit.thread, !llvm.loop !464

find_variant_selector_charmap.exit:               ; preds = %FT_Get_CMap_Format.exit.i
  %i.ah = load ptr, ptr %.017.i, align 8, !tbaa !327 ; 3 uses
  %.not18 = icmp eq ptr %i.ah, null
  br i1 %.not18, label %find_variant_selector_charmap.exit.thread, label %bb.m

bb.m:                                             ; preds = %find_variant_selector_charmap.exit
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !317
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !318
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !465
  %i.an = trunc i64 %1 to i32
  %i.ao = trunc i64 %2 to i32
  %i.ap = call i32 %i.am(ptr noundef nonnull %i.ah, ptr noundef %i.ai, i32 noundef %i.an, i32 noundef %i.ao) #30
  br label %find_variant_selector_charmap.exit.thread

find_variant_selector_charmap.exit.thread:        ; preds = %bb.l, %bb.e, %bb.d, %find_variant_selector_charmap.exit, %bb.m, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.ap, %bb.m ], [ 0, %find_variant_selector_charmap.exit ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @FT_Face_GetCharVariantIsDefault(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.TT_CMapInfo_, align 8       ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %find_variant_selector_charmap.exit.thread, label %bb.b

end_hunk_1
begin_hunk_2_@FT_Outline_EmboldenXY:bb.a
bb.h:                                             ; preds = %bb.g
  %.0.i = select i1 %i.al, i64 -65536, i64 65536
  br i1 %.not102.i, label %FT_Vector_NormLen.exit.thread, label %FT_Vector_NormLen.exit

bb.i:                                             ; preds = %bb.g
  %.084.i = select i1 %i.ak, i64 -65536, i64 65536
  br i1 %.not102.i, label %FT_Vector_NormLen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp ugt i32 %.088.i, %.086.i
  %i.ao = lshr i32 %.086.i, 1
  %i.ap = add nuw i32 %i.ao, %.088.i
  %i.aq = lshr i32 %.088.i, 1
  %i.ar = add nuw i32 %.086.i, %i.aq
  %i.as = select i1 %i.an, i32 %i.ap, i32 %i.ar   ; 3 uses
  %i.at = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 true) ; 2 uses
  %i.au = zext i32 %i.as to i64
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = lshr i64 2863311530, %i.av
  %.not.i = icmp samesign ugt i64 %i.aw, %i.au
  %.neg.i = select i1 %.not.i, i32 -15, i32 -16
  %i.ax = add nsw i32 %.neg.i, %i.at              ; 7 uses
  %i.ay = icmp sgt i32 %i.ax, 0                   ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = shl i32 %.088.i, %i.ax                  ; 4 uses
  %i.ba = shl i32 %.086.i, %i.ax                  ; 4 uses
  %i.bb = icmp ugt i32 %i.az, %i.ba
  %i.bc = lshr i32 %i.ba, 1
  %i.bd = add i32 %i.bc, %i.az
  %i.be = lshr i32 %i.az, 1
  %i.bf = add i32 %i.be, %i.ba
  %i.bg = select i1 %i.bb, i32 %i.bd, i32 %i.bf
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bh = sub nsw i32 0, %i.ax                    ; 3 uses
  %i.bi = lshr i32 %.088.i, %i.bh
  %i.bj = lshr i32 %.086.i, %i.bh
  %i.bk = lshr i32 %i.as, %i.bh
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.189.i = phi i32 [ %i.az, %bb.k ], [ %i.bi, %bb.l ] ; 3 uses
  %.187.i = phi i32 [ %i.ba, %bb.k ], [ %i.bj, %bb.l ] ; 3 uses
  %.085.i = phi i32 [ %i.bg, %bb.k ], [ %i.bk, %bb.l ]
  %i.bl = sub nsw i32 65536, %.085.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.090.i = phi i32 [ %i.bl, %bb.m ], [ %i.ca, %bb.n ] ; 4 uses
  %i.bm = mul nsw i32 %.090.i, %.189.i
  %i.bn = ashr i32 %i.bm, 16
  %i.bo = add nsw i32 %i.bn, %.189.i              ; 4 uses
  %i.bp = mul nsw i32 %.090.i, %.187.i
  %i.bq = ashr i32 %i.bp, 16
  %i.br = add nsw i32 %i.bq, %.187.i              ; 4 uses
  %i.bs = mul i32 %i.bo, %i.bo
  %i.bt = mul i32 %i.br, %i.br
  %i.bu = add i32 %i.bs, %i.bt
  %i.bv = sdiv i32 %i.bu, -512
  %i.bw = add nsw i32 %.090.i, 65536
  %i.bx = ashr i32 %i.bw, 8
  %i.by = mul nsw i32 %i.bv, %i.bx                ; 2 uses
  %i.bz = lshr i32 %i.by, 16
  %i.ca = add nsw i32 %i.bz, %.090.i
  %i.cb = icmp sgt i32 %i.by, 65535
  br i1 %i.cb, label %bb.n, label %bb.o, !llvm.loop !566

bb.o:                                             ; preds = %bb.n
  %i.cc = zext i32 %i.bo to i64                   ; 2 uses
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = select i1 %i.ak, i64 %i.cd, i64 %i.cc   ; 2 uses
  %i.cf = zext i32 %i.br to i64                   ; 2 uses
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = select i1 %i.al, i64 %i.cg, i64 %i.cf   ; 2 uses
  %i.ci = mul i32 %i.bo, %.189.i
  %i.cj = mul i32 %i.br, %.187.i
  %i.ck = add i32 %i.ci, %i.cj
  %i.cl = sdiv i32 %i.ck, 65536
  %i.cm = add nsw i32 %i.cl, 65536                ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cn = add nsw i32 %i.ax, -1
  %i.co = shl nuw nsw i32 1, %i.cn
  %i.cp = add nuw nsw i32 %i.cm, %i.co
  %i.cq = lshr i32 %i.cp, %i.ax
  br label %FT_Vector_NormLen.exit

bb.q:                                             ; preds = %bb.o
  %i.cr = sub nsw i32 0, %i.ax
  %i.cs = shl i32 %i.cm, %i.cr
  br label %FT_Vector_NormLen.exit

FT_Vector_NormLen.exit:                           ; preds = %bb.h, %bb.i, %bb.p, %bb.q
  %.sroa.11.1161 = phi i64 [ %i.ah, %bb.i ], [ %i.ch, %bb.p ], [ %i.ch, %bb.q ], [ %.0.i, %bb.h ]
  %.sroa.0.1159 = phi i64 [ %.084.i, %bb.i ], [ %i.ce, %bb.p ], [ %i.ce, %bb.q ], [ %i.ac, %bb.h ]
  %.091.i = phi i32 [ %.088.i, %bb.i ], [ %i.cq, %bb.p ], [ %i.cs, %bb.q ], [ %.086.i, %bb.h ] ; 2 uses
  %i.ct = zext i32 %.091.i to i64
  %i.cu = icmp eq i32 %.091.i, 0
  br i1 %i.cu, label %FT_Vector_NormLen.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph181, %FT_Vector_NormLen.exit
  %.sroa.11.0160 = phi i64 [ %.sroa.11.1161, %FT_Vector_NormLen.exit ], [ %.sroa.5.0170, %.lr.ph181 ] ; 6 uses
  %.sroa.0.0158 = phi i64 [ %.sroa.0.1159, %FT_Vector_NormLen.exit ], [ %.sroa.052.0172, %.lr.ph181 ] ; 6 uses
  %.0107 = phi i64 [ %i.ct, %FT_Vector_NormLen.exit ], [ %.0103175, %.lr.ph181 ] ; 4 uses
  %.not119 = icmp eq i64 %.0108174, 0
  br i1 %.not119, label %FT_Vector_NormLen.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = icmp slt i32 %.0179, 0
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.5.1 = phi i64 [ %.sroa.8.0168, %bb.t ], [ %.sroa.5.0170, %bb.s ] ; 2 uses
  %.sroa.052.1 = phi i64 [ %.sroa.056.0169, %bb.t ], [ %.sroa.052.0172, %bb.s ] ; 2 uses
  %.1104 = phi i64 [ %.0108174, %bb.t ], [ %.0103175, %bb.s ] ; 2 uses
  %.1 = phi i32 [ %.098177, %bb.t ], [ %.0179, %bb.s ] ; 2 uses
  %i.cw = mul i64 %.sroa.0.0158, %.sroa.056.0169  ; 2 uses
  %i.cx = ashr i64 %i.cw, 63
  %i.cy = add i64 %i.cw, 32768
  %i.cz = add i64 %i.cy, %i.cx
  %i.da = ashr i64 %i.cz, 16
  %i.db = mul i64 %.sroa.11.0160, %.sroa.8.0168   ; 2 uses
  %i.dc = ashr i64 %i.db, 63
  %i.dd = add i64 %i.db, 32768
  %i.de = add i64 %i.dd, %i.dc
  %i.df = ashr i64 %i.de, 16
  %i.dg = add nsw i64 %i.da, %i.df                ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, -61440
  br i1 %i.dh, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.di = add nsw i64 %i.dg, 65536                ; 5 uses
  %i.dj = add nsw i64 %.sroa.11.0160, %.sroa.8.0168 ; 4 uses
  %i.dk = add nsw i64 %.sroa.0.0158, %.sroa.056.0169 ; 4 uses
  %i.dl = sub nsw i64 0, %i.dj
  %i.dm = sub nsw i64 0, %i.dk
  %.sroa.11.0 = select i1 %i.n, i64 %i.dk, i64 %i.dm ; 2 uses
  %.sroa.0.0 = select i1 %i.n, i64 %i.dl, i64 %i.dj ; 2 uses
  %i.dn = mul i64 %.sroa.0.0158, %.sroa.8.0168    ; 2 uses
  %i.do = ashr i64 %i.dn, 63
  %i.dp = add i64 %i.dn, 32768
  %i.dq = add i64 %i.dp, %i.do
  %i.dr = ashr i64 %i.dq, 16
  %i.ds = mul i64 %.sroa.11.0160, %.sroa.056.0169 ; 2 uses
  %i.dt = ashr i64 %i.ds, 63
  %i.du = add i64 %i.ds, 32768
  %i.dv = add i64 %i.du, %i.dt
  %i.dw = ashr i64 %i.dv, 16
  %i.dx = sub nsw i64 %i.dr, %i.dw                ; 4 uses
  %i.dy = sub nsw i64 0, %i.dx
  %.0102 = select i1 %i.n, i64 %i.dy, i64 %i.dx   ; 6 uses
  %i.dz = tail call i64 @llvm.smin.i64(i64 %.0108174, i64 %.0107) ; 3 uses
  %i.ea = mul i64 %.0102, %i.o                    ; 2 uses
  %i.eb = ashr i64 %i.ea, 63
  %i.ec = add i64 %i.ea, 32768
  %i.ed = add i64 %i.ec, %i.eb
  %i.ee = ashr i64 %i.ed, 16
  %i.ef = mul i64 %i.di, %i.dz                    ; 2 uses
  %i.eg = ashr i64 %i.ef, 63
  %i.eh = add i64 %i.ef, 32768
  %i.ei = add i64 %i.eh, %i.eg
  %i.ej = ashr i64 %i.ei, 16                      ; 2 uses
  %.not120 = icmp sgt i64 %i.ee, %i.ej
  br i1 %.not120, label %bb.w, label %FT_MulDiv.exit

FT_MulDiv.exit:                                   ; preds = %bb.v
  %.022.i = tail call i64 @llvm.abs.i64(i64 %i.dj, i1 false)
  %i.ek = mul i64 %.022.i, %.021.i
  %i.el = lshr i64 %i.di, 1
  %i.em = add i64 %i.el, %i.ek
  %i.en = udiv i64 %i.em, %i.di                   ; 2 uses
  %i.eo = icmp slt i64 %.sroa.0.0, 0
  %i.ep = xor i1 %i.p, %i.eo
  %i.eq = sub nsw i64 0, %i.en
  %i.er = select i1 %i.ep, i64 %i.eq, i64 %i.en
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %.not.i126 = icmp eq i64 %.0102, 0
  br i1 %.not.i126, label %FT_MulDiv.exit133, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.0.i127 = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 true) ; 2 uses
  %.021.i128 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.022.i129 = tail call i64 @llvm.abs.i64(i64 %i.dj, i1 false)
  %i.es = mul i64 %.021.i128, %.022.i129
  %i.et = lshr i64 %.0.i127, 1
  %i.eu = add i64 %i.et, %i.es
  %i.ev = udiv i64 %i.eu, %.0.i127
  br label %FT_MulDiv.exit133

FT_MulDiv.exit133:                                ; preds = %bb.w, %bb.x
  %i.ew = phi i64 [ %i.ev, %bb.x ], [ 2147483647, %bb.w ] ; 2 uses
  %i.ex = xor i64 %.0102, %.sroa.0.0
  %i.ey = icmp slt i64 %i.ex, 0
  %i.ez = sub i64 0, %i.ew
  %i.fa = select i1 %i.ey, i64 %i.ez, i64 %i.ew
  br label %bb.y

bb.y:                                             ; preds = %FT_MulDiv.exit133, %FT_MulDiv.exit
  %.sroa.0.1 = phi i64 [ %i.er, %FT_MulDiv.exit ], [ %i.fa, %FT_MulDiv.exit133 ] ; 2 uses
  %i.fb = mul i64 %.0102, %i.q                    ; 2 uses
  %i.fc = ashr i64 %i.fb, 63
  %i.fd = add i64 %i.fb, 32768
  %i.fe = add i64 %i.fd, %i.fc
  %i.ff = ashr i64 %i.fe, 16
  %.not121 = icmp sgt i64 %i.ff, %i.ej
  br i1 %.not121, label %bb.z, label %FT_MulDiv.exit141

FT_MulDiv.exit141:                                ; preds = %bb.y
  %.022.i137 = tail call i64 @llvm.abs.i64(i64 %i.dk, i1 false)
  %i.fg = mul i64 %.022.i137, %.021.i136
  %i.fh = lshr i64 %i.di, 1
  %i.fi = add i64 %i.fh, %i.fg
  %i.fj = udiv i64 %i.fi, %i.di                   ; 2 uses
  %i.fk = icmp slt i64 %.sroa.11.0, 0
  %i.fl = xor i1 %i.r, %i.fk
  %i.fm = sub nsw i64 0, %i.fj
  %i.fn = select i1 %i.fl, i64 %i.fm, i64 %i.fj
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not.i142 = icmp eq i64 %.0102, 0
  br i1 %.not.i142, label %FT_MulDiv.exit149, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.0.i143 = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 true) ; 2 uses
  %.021.i144 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.022.i145 = tail call i64 @llvm.abs.i64(i64 %i.dk, i1 false)
  %i.fo = mul i64 %.021.i144, %.022.i145
  %i.fp = lshr i64 %.0.i143, 1
  %i.fq = add i64 %i.fp, %i.fo
  %i.fr = udiv i64 %i.fq, %.0.i143
  br label %FT_MulDiv.exit149

FT_MulDiv.exit149:                                ; preds = %bb.z, %bb.aa
  %i.fs = phi i64 [ %i.fr, %bb.aa ], [ 2147483647, %bb.z ] ; 2 uses
  %i.ft = xor i64 %.0102, %.sroa.11.0
  %i.fu = icmp slt i64 %i.ft, 0
  %i.fv = sub i64 0, %i.fs
  %i.fw = select i1 %i.fu, i64 %i.fv, i64 %i.fs
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %FT_MulDiv.exit141, %FT_MulDiv.exit149
  %.sroa.11.1 = phi i64 [ %i.fn, %FT_MulDiv.exit141 ], [ %i.fw, %FT_MulDiv.exit149 ], [ 0, %bb.u ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %FT_MulDiv.exit141 ], [ %.sroa.0.1, %FT_MulDiv.exit149 ], [ 0, %bb.u ]
  %.not122166 = icmp eq i32 %.098177, %.097178
  br i1 %.not122166, label %FT_Vector_NormLen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.fx = insertelement <2 x i64> poison, i64 %.sroa.0.2, i64 0
  %i.fy = insertelement <2 x i64> %i.fx, i64 %.sroa.11.1, i64 1
  %i.fz = add nsw <2 x i64> %i.fy, %i.c
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ac
  %.199167 = phi i32 [ %.098177, %.lr.ph ], [ %i.gg, %bb.ac ] ; 3 uses
  %i.ga = sext i32 %.199167 to i64
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ga ; 2 uses
  %i.gc = load <2 x i64>, ptr %i.gb, align 8, !tbaa !40
  %i.gd = add nsw <2 x i64> %i.fz, %i.gc
  store <2 x i64> %i.gd, ptr %i.gb, align 8, !tbaa !40
  %i.ge = icmp slt i32 %.199167, %i.v
  %i.gf = add nsw i32 %.199167, 1
  %i.gg = select i1 %i.ge, i32 %i.gf, i32 %i.s    ; 2 uses
  %.not122 = icmp eq i32 %i.gg, %.097178
  br i1 %.not122, label %FT_Vector_NormLen.exit.thread, label %bb.ac, !llvm.loop !567

FT_Vector_NormLen.exit.thread:                    ; preds = %bb.ac, %bb.ab, %bb.h, %bb.r, %FT_Vector_NormLen.exit
  %.sroa.8.1 = phi i64 [ %.sroa.8.0168, %FT_Vector_NormLen.exit ], [ %.sroa.8.0168, %bb.h ], [ %.sroa.11.0160, %bb.r ], [ %.sroa.11.0160, %bb.ab ], [ %.sroa.11.0160, %bb.ac ]
  %.sroa.056.1 = phi i64 [ %.sroa.056.0169, %FT_Vector_NormLen.exit ], [ %.sroa.056.0169, %bb.h ], [ %.sroa.0.0158, %bb.r ], [ %.sroa.0.0158, %bb.ab ], [ %.sroa.0.0158, %bb.ac ]
  %.sroa.5.3 = phi i64 [ %.sroa.5.0170, %FT_Vector_NormLen.exit ], [ %.sroa.5.0170, %bb.h ], [ %.sroa.5.0170, %bb.r ], [ %.sroa.5.1, %bb.ab ], [ %.sroa.5.1, %bb.ac ]
  %.sroa.052.3 = phi i64 [ %.sroa.052.0172, %FT_Vector_NormLen.exit ], [ %.sroa.052.0172, %bb.h ], [ %.sroa.052.0172, %bb.r ], [ %.sroa.052.1, %bb.ab ], [ %.sroa.052.1, %bb.ac ]
  %.1109 = phi i64 [ %.0108174, %FT_Vector_NormLen.exit ], [ %.0108174, %bb.h ], [ %.0107, %bb.r ], [ %.0107, %bb.ab ], [ %.0107, %bb.ac ]
  %.3106 = phi i64 [ %.0103175, %FT_Vector_NormLen.exit ], [ %.0103175, %bb.h ], [ %.0103175, %bb.r ], [ %.1104, %bb.ab ], [ %.1104, %bb.ac ]
  %.3101 = phi i32 [ %.098177, %FT_Vector_NormLen.exit ], [ %.098177, %bb.h ], [ %.097178, %bb.r ], [ %.097178, %bb.ab ], [ %.097178, %bb.ac ] ; 3 uses
  %.3 = phi i32 [ %.0179, %FT_Vector_NormLen.exit ], [ %.0179, %bb.h ], [ %.0179, %bb.r ], [ %.1, %bb.ab ], [ %.1, %bb.ac ] ; 2 uses
  %i.gh = icmp slt i32 %.097178, %i.v
  %i.gi = add nsw i32 %.097178, 1
  %i.gj = select i1 %i.gh, i32 %i.gi, i32 %i.s    ; 2 uses
  %i.gk = icmp ne i32 %i.gj, %.3101
  %i.gl = icmp ne i32 %.3101, %.3
  %i.gm = and i1 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph181, label %._crit_edge, !llvm.loop !568

._crit_edge:                                      ; preds = %FT_Vector_NormLen.exit.thread, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !569

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.d, %bb.b, %bb.a
  %.0112 = phi i32 [ 20, %bb.a ], [ %., %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %._crit_edge ]
  ret i32 %.0112
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 3) i32 @FT_Outline_Get_Orientation(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_Outline_Get_CBox.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !122  ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %FT_Outline_Get_CBox.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 9 uses
  %i.f = zext i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not.i = icmp eq i16 %i.b, 1
  br i1 %.not.i, label %FT_Outline_Get_CBox.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %.051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.057.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.pn56.i = phi ptr [ %.057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.03554.i = phi i64 [ %.136.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03853.i = phi i64 [ %.139.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %i.k = load i64, ptr %.057.i, align 8, !tbaa !166 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.04152.i) ; 4 uses
  %.136.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 %.03554.i) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn56.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !169  ; 2 uses
  %.139.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.03853.i) ; 4 uses
  %.1.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %.03455.i) ; 4 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.057.i, i64 16 ; 2 uses
  %i.n = icmp ult ptr %.0.i, %i.g
  br i1 %i.n, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !216

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i
  %i.o = icmp eq i64 %spec.select.i, %.136.i
  %i.p = icmp eq i64 %.139.i, %.1.i
  %or.cond58 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond58, label %FT_Outline_Get_CBox.exit.thread, label %bb.d

bb.d:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.q = icmp slt i64 %spec.select.i, -16777216
  %i.r = icmp slt i64 %.139.i, -16777216
  %or.cond = or i1 %i.q, %i.r
  %i.s = icmp sgt i64 %.136.i, 16777216
  %or.cond5 = or i1 %i.s, %or.cond
  %i.t = icmp sgt i64 %.1.i, 16777216
  %or.cond8 = or i1 %i.t, %or.cond5
  br i1 %or.cond8, label %FT_Outline_Get_CBox.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i16, ptr %0, align 8, !tbaa !125    ; 2 uses
  %.not72 = icmp eq i16 %i.u, 0
  br i1 %.not72, label %.thread, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.e
  %i.v = sub nsw i64 %.1.i, %.139.i
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = sub nsw i32 17, %i.x
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.aa = tail call i64 @llvm.abs.i64(i64 %.136.i, i1 true)
  %i.ab = tail call i64 @llvm.abs.i64(i64 %spec.select.i, i1 true)
  %i.ac = or i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = sub nsw i32 17, %i.ae
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !124
  %i.aj = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ak = zext nneg i32 %i.z to i64               ; 4 uses
  %wide.trip.count77 = zext i16 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph69, %._crit_edge
  %indvars.iv74 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next75, %._crit_edge ] ; 2 uses
  %.067 = phi i64 [ 0, %.lr.ph69 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.04366 = phi i32 [ -1, %.lr.ph69 ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv74
  %i.am = load i16, ptr %i.al, align 2, !tbaa !50 ; 3 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %.not53.not60 = icmp slt i32 %.04366, %i.an
  br i1 %.not53.not60, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ao = zext i16 %i.am to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !169
  %i.as = ashr i64 %i.ar, %i.ak                   ; 2 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !166
  %i.au = ashr i64 %i.at, %i.aj                   ; 2 uses
  %i.av = sext i32 %.04366 to i64                 ; 4 uses
  %wide.trip.count = zext i16 %i.am to i64        ; 3 uses
  %i.aw = sub nsw i64 %wide.trip.count, %i.av
  %xtraiter = and i64 %i.aw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.av, 1    ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.e, i64 %indvars.iv.next.prol ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !166
  %i.az = ashr i64 %i.ay, %i.aj                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !169
  %i.bc = ashr i64 %i.bb, %i.ak                   ; 2 uses
  %i.bd = sub nsw i64 %i.bc, %i.as
  %i.be = add nsw i64 %i.az, %i.au
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = add i64 %i.bf, %.067
  %i.bh = freeze i64 %i.bg                        ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.bh, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.164.unr = phi i64 [ %.067, %.lr.ph.preheader ], [ %i.bh, %.lr.ph.prol ]
  %.sroa.023.062.unr = phi i64 [ %i.au, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.sroa.524.061.unr = phi i64 [ %i.as, %.lr.ph.preheader ], [ %i.bc, %.lr.ph.prol ]
  %i.bi = add nsw i64 %wide.trip.count, -1
  %i.bj = icmp eq i64 %i.bi, %i.av
  br i1 %i.bj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.164 = phi i64 [ %i.cf, %.lr.ph ], [ %.164.unr, %.lr.ph.prol.loopexit ]
  %.sroa.023.062 = phi i64 [ %i.by, %.lr.ph ], [ %.sroa.023.062.unr, %.lr.ph.prol.loopexit ]
  %.sroa.524.061 = phi i64 [ %i.cb, %.lr.ph ], [ %.sroa.524.061.unr, %.lr.ph.prol.loopexit ]
  %i.bk = getelementptr [16 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
end_hunk_2
