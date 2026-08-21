inline.NumInlined: 58
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cbs_vp8_read_unit:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #6
  %i.cc = call fastcc i32 @cbs_vp8_read_unsigned_le(ptr noundef readonly %0, ptr noundef nonnull %12, i32 noundef 8, ptr noundef nonnull @.str.10, ptr noundef %i.al, i32 noundef 157, i32 noundef 157) ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #6
  br i1 %i.cd, label %bb.m, label %cbs_vp8_read_uncompressed_header.exit.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #6
  %i.ce = call fastcc i32 @cbs_vp8_read_unsigned_le(ptr noundef readonly %0, ptr noundef nonnull %12, i32 noundef 8, ptr noundef nonnull @.str.11, ptr noundef %i.am, i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #6
  br i1 %i.cf, label %bb.n, label %cbs_vp8_read_uncompressed_header.exit.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #6
  %i.cg = call fastcc i32 @cbs_vp8_read_unsigned_le(ptr noundef readonly %0, ptr noundef nonnull %12, i32 noundef 8, ptr noundef nonnull @.str.12, ptr noundef %i.an, i32 noundef 42, i32 noundef 42) ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #6
  br i1 %i.ch, label %bb.o, label %cbs_vp8_read_uncompressed_header.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #6
  %i.ci = call fastcc i32 @cbs_vp8_read_unsigned_le(ptr noundef readonly %0, ptr noundef nonnull %12, i32 noundef 14, ptr noundef nonnull @.str.13, ptr noundef %i.ao, i32 noundef 0, i32 noundef 16383) ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #6
  br label %cbs_vp8_read_uncompressed_header.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.ck = load i32, ptr %i.ao, align 4, !tbaa !27
  %i.cl = trunc i32 %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i16 %i.cl, ptr %i.cm, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #6
  %i.cn = call fastcc i32 @cbs_vp8_read_unsigned_le(ptr noundef readonly %0, ptr noundef nonnull %12, i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef %i.ap, i32 noundef 0, i32 noundef 3) ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #6
  br label %cbs_vp8_read_uncompressed_header.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.cp = load i32, ptr %i.ap, align 4, !tbaa !27
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 %i.cq, ptr %i.cr, align 2, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #6
  %i.cs = call fastcc i32 @cbs_vp8_read_unsigned_le(ptr noundef readonly %0, ptr noundef nonnull %12, i32 noundef 14, ptr noundef nonnull @.str.15, ptr noundef %i.aq, i32 noundef 0, i32 noundef 16383) ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #6
  br label %cbs_vp8_read_uncompressed_header.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.cu = load i32, ptr %i.aq, align 4, !tbaa !27
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i16 %i.cv, ptr %i.cw, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #6
  %i.cx = call fastcc i32 @cbs_vp8_read_unsigned_le(ptr noundef readonly %0, ptr noundef nonnull %12, i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %i.ar, i32 noundef 0, i32 noundef 3) ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.v, label %.thread115.i.i

.thread115.i.i:                                   ; preds = %bb.u
  %i.cz = load i32, ptr %i.ar, align 4, !tbaa !27
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.av, i64 14
  store i8 %i.da, ptr %i.db, align 2, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #6
  br label %cbs_vp8_read_uncompressed_header.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #6
  br label %cbs_vp8_read_uncompressed_header.exit.thread

cbs_vp8_read_uncompressed_header.exit:            ; preds = %.thread115.i.i, %bb.k
  %.val39 = load i32, ptr %i.bh, align 8, !tbaa !26 ; 4 uses
  %i.dc = and i32 %.val39, 7
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %cbs_vp8_read_uncompressed_header.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 330) #6
  tail call void @abort() #7
  unreachable

bb.x:                                             ; preds = %cbs_vp8_read_uncompressed_header.exit
  store ptr %12, ptr %13, align 8, !tbaa !38
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 23 uses
  store i8 0, ptr %i.de, align 8, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 9 ; 15 uses
  store i8 -1, ptr %i.df, align 1, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 10 ; 15 uses
  store i8 0, ptr %i.dg, align 2, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.dh = load i8, ptr %i.av, align 4, !tbaa !28
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.y, label %bb.as

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !44
  %.not.i.i.i = icmp eq i32 %i.dk, 0              ; 2 uses
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !48
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val13.i.i90 = load i32, ptr %i.be, align 4, !tbaa !24
  %i.dl = sub nsw i32 %.val13.i.i90, %.val39
  %.not.i.i91 = icmp slt i32 %i.dl, 8
  br i1 %.not.i.i91, label %.thread.i.i, label %.thread.i93

.thread.i93:                                      ; preds = %bb.aa
  %i.dm = load i32, ptr %i.bg, align 8, !tbaa !25
  %i.dn = load ptr, ptr %12, align 8, !tbaa !22
  %i.do = lshr exact i32 %.val39, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 1, !tbaa !50
  %i.ds = add i32 %.val39, 8
  %i.dt = call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.ds) ; 3 uses
  store i32 %i.dt, ptr %i.bh, align 8, !tbaa !26
  %i.du = trunc i32 %i.dr to i8                   ; 3 uses
  store i8 %i.du, ptr %i.de, align 8, !tbaa !41
  store i8 8, ptr %i.dg, align 2, !tbaa !43
  %.not.i94 = icmp sgt i8 %i.du, -1
  br i1 %.not.i94, label %bb.ab, label %.lr.ph.i97

bb.ab:                                            ; preds = %.thread.i93
  store i8 -128, ptr %i.df, align 1, !tbaa !42
  br label %bb.ac

.lr.ph.i97:                                       ; preds = %.thread.i93
  %i.dv = shl i8 %i.du, 1
  store i8 %i.dv, ptr %i.de, align 8, !tbaa !41
  store i8 -2, ptr %i.df, align 1, !tbaa !42
  store i8 7, ptr %i.dg, align 2, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i97, %bb.ab
  %.1.ph = phi i8 [ 0, %bb.ab ], [ 1, %.lr.ph.i97 ] ; 3 uses
  br i1 %.not.i.i.i, label %.thread581.i.i, label %bb.ad

.thread581.i.i:                                   ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.av, i64 15
  store i8 %.1.ph, ptr %i.dw, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val30.i.i.i = load i32, ptr %i.dx, align 8, !tbaa !26 ; 2 uses
  %.not29.i.i.i = icmp sgt i32 %.val30.i.i.i, %i.dt
  br i1 %.not29.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

.thread.i.i:                                      ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  br label %cbs_vp8_read_compressed_header.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !52
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !53
  %i.ec = sub nsw i32 %i.dt, %.val30.i.i.i
  %i.ed = zext nneg i8 %.1.ph to i64
  call void %i.dz(ptr noundef %i.eb, ptr noundef nonnull %11, i32 noundef %i.ec, ptr noundef nonnull @.str.23, ptr noundef null, i64 noundef %i.ed) #6, !inline_history !54
  %.pre.i.i = load i32, ptr %i.dj, align 4, !tbaa !44
  %i.ee = icmp eq i32 %.pre.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ef = getelementptr inbounds nuw i8, ptr %i.av, i64 15
  store i8 %.1.ph, ptr %i.ef, align 1, !tbaa !51
  %i.eg = load ptr, ptr %13, align 8, !tbaa !38   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  br i1 %i.ee, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !tbaa.struct !48
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.thread581.i.i
  %.not28.i332.i.i = phi i1 [ true, %.thread581.i.i ], [ true, %bb.af ], [ false, %bb.ag ]
  %i.eh = phi ptr [ %12, %.thread581.i.i ], [ %i.eg, %bb.af ], [ %i.eg, %bb.ag ] ; 6 uses
  %i.ei = load i8, ptr %i.df, align 1, !tbaa !42  ; 2 uses
  %i.ej = zext i8 %i.ei to i16
  %i.ek = shl nuw nsw i16 %i.ej, 7
  %i.el = add nsw i16 %i.ek, -128
  %i.em = lshr i16 %i.el, 8
  %i.en = trunc nuw i16 %i.em to i8
  %i.eo = add i8 %i.en, 1                         ; 4 uses
  %i.ep = load i8, ptr %i.dg, align 2, !tbaa !43  ; 4 uses
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = sub nuw nsw i32 8, %i.eq                ; 3 uses
  %i.es = icmp ult i8 %i.ep, 9
  br i1 %i.es, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 61) #6
  call void @abort() #7
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.et = icmp eq i8 %i.ep, 8
  br i1 %i.et, label %..thread_crit_edge.i85, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = getelementptr i8, ptr %i.eh, i64 8      ; 2 uses
  %.val.i.i73 = load i32, ptr %i.eu, align 8, !tbaa !26 ; 4 uses
  %i.ev = getelementptr i8, ptr %i.eh, i64 12
  %.val13.i.i74 = load i32, ptr %i.ev, align 4, !tbaa !24
  %i.ew = sub nsw i32 %.val13.i.i74, %.val.i.i73
  %.not.i.i75 = icmp slt i32 %i.ew, %i.er
  br i1 %.not.i.i75, label %.thread401.i.i, label %cbs_vp8_bool_decoder_fill_value.exit.i76

cbs_vp8_bool_decoder_fill_value.exit.i76:         ; preds = %bb.ak
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !25
  %i.ez = load ptr, ptr %i.eh, align 8, !tbaa !22
  %i.fa = lshr i32 %.val.i.i73, 3
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 1, !tbaa !50
  %i.fe = call i32 @llvm.bswap.i32(i32 %i.fd)
  %i.ff = and i32 %.val.i.i73, 7
  %i.fg = shl i32 %i.fe, %i.ff
  %i.fh = add nuw nsw i32 %i.eq, 24
  %i.fi = lshr i32 %i.fg, %i.fh
  %i.fj = add i32 %.val.i.i73, %i.er
  %i.fk = call i32 @llvm.umin.i32(i32 %i.ey, i32 %i.fj)
  store i32 %i.fk, ptr %i.eu, align 8, !tbaa !26
  %i.fl = load i8, ptr %i.de, align 8, !tbaa !41
  %i.fm = trunc nuw i32 %i.fi to i8
  %i.fn = or i8 %i.fl, %i.fm                      ; 2 uses
  store i8 %i.fn, ptr %i.de, align 8, !tbaa !41
  %i.fo = trunc nuw nsw i32 %i.er to i8
  %i.fp = add nuw nsw i8 %i.ep, %i.fo             ; 2 uses
  store i8 %i.fp, ptr %i.dg, align 2, !tbaa !43
  br label %.thread.i77

..thread_crit_edge.i85:                           ; preds = %bb.aj
  %.pre.i87 = load i8, ptr %i.de, align 8, !tbaa !41
  br label %.thread.i77

.thread.i77:                                      ; preds = %..thread_crit_edge.i85, %cbs_vp8_bool_decoder_fill_value.exit.i76
  %.promoted24.i83 = phi i8 [ 8, %..thread_crit_edge.i85 ], [ %i.fp, %cbs_vp8_bool_decoder_fill_value.exit.i76 ]
  %i.fq = phi i8 [ %.pre.i87, %..thread_crit_edge.i85 ], [ %i.fn, %cbs_vp8_bool_decoder_fill_value.exit.i76 ] ; 3 uses
  %.not.i78 = icmp ult i8 %i.fq, %i.eo
  br i1 %.not.i78, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread.i77
  %i.fr = sub i8 %i.ei, %i.eo
  %i.fs = sub nuw i8 %i.fq, %i.eo                 ; 2 uses
  store i8 %i.fs, ptr %i.de, align 8, !tbaa !41
  br label %bb.am

bb.am:                                            ; preds = %.thread.i77, %bb.al
  %.promoted.i82 = phi i8 [ %i.fs, %bb.al ], [ %i.fq, %.thread.i77 ]
  %.0110 = phi i8 [ 1, %bb.al ], [ 0, %.thread.i77 ] ; 2 uses
  %.sink.i79 = phi i8 [ %i.fr, %bb.al ], [ %i.eo, %.thread.i77 ] ; 3 uses
  store i8 %.sink.i79, ptr %i.df, align 1, !tbaa !42
  %i.ft = icmp sgt i8 %.sink.i79, -1
  br i1 %i.ft, label %.lr.ph.i81, label %bb.an

.lr.ph.i81:                                       ; preds = %bb.am, %.lr.ph.i81
  %i.fu = phi i8 [ %i.fz, %.lr.ph.i81 ], [ %.promoted24.i83, %bb.am ]
  %i.fv = phi i8 [ %i.fx, %.lr.ph.i81 ], [ %.promoted.i82, %bb.am ]
  %i.fw = phi i8 [ %i.fy, %.lr.ph.i81 ], [ %.sink.i79, %bb.am ]
  %i.fx = shl i8 %i.fv, 1                         ; 2 uses
  %i.fy = shl nuw i8 %i.fw, 1                     ; 3 uses
  %i.fz = add i8 %i.fu, -1                        ; 2 uses
  %i.ga = icmp sgt i8 %i.fy, -1
  br i1 %i.ga, label %.lr.ph.i81, label %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i84, !llvm.loop !55

.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i84: ; preds = %.lr.ph.i81
  store i8 %i.fx, ptr %i.de, align 8, !tbaa !41
  store i8 %i.fy, ptr %i.df, align 1, !tbaa !42
  store i8 %i.fz, ptr %i.dg, align 2, !tbaa !43
  br label %bb.an

bb.an:                                            ; preds = %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i84, %bb.am
  br i1 %.not28.i332.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val30.i333.i.i = load i32, ptr %i.gb, align 8, !tbaa !26 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.eh, i64 8
  %.val.i334.i.i = load i32, ptr %i.gc, align 8, !tbaa !26 ; 2 uses
  %.not29.i335.i.i = icmp sgt i32 %.val30.i333.i.i, %.val.i334.i.i
  br i1 %.not29.i335.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !52
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !53
  %i.gh = sub nsw i32 %.val.i334.i.i, %.val30.i333.i.i
  %i.gi = zext nneg i8 %.0110 to i64
  call void %i.ge(ptr noundef %i.gg, ptr noundef nonnull %10, i32 noundef %i.gh, ptr noundef nonnull @.str.24, ptr noundef null, i64 noundef %i.gi) #6, !inline_history !54
  %.pre.pre = load ptr, ptr %13, align 8, !tbaa !38
  br label %bb.ar

.thread401.i.i:                                   ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %cbs_vp8_read_compressed_header.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pre = phi ptr [ %.pre.pre, %bb.aq ], [ %i.eh, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i8 %.0110, ptr %i.gj, align 4, !tbaa !57
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.x
  %i.gk = phi ptr [ %.pre, %bb.ar ], [ %12, %bb.x ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 13 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !44
  %.not.i337.i.i = icmp eq i32 %i.gm, 0           ; 2 uses
  br i1 %.not.i337.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !tbaa.struct !48
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gn = load i8, ptr %i.df, align 1, !tbaa !42  ; 2 uses
  %i.go = zext i8 %i.gn to i16
  %i.gp = shl nuw nsw i16 %i.go, 7
  %i.gq = add nsw i16 %i.gp, -128
  %i.gr = lshr i16 %i.gq, 8
  %i.gs = trunc nuw i16 %i.gr to i8
  %i.gt = add i8 %i.gs, 1                         ; 4 uses
  %i.gu = load i8, ptr %i.dg, align 2, !tbaa !43  ; 4 uses
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = sub nuw nsw i32 8, %i.gv                ; 3 uses
  %i.gx = icmp ult i8 %i.gu, 9
  br i1 %i.gx, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 61) #6
  call void @abort() #7
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.gy = icmp eq i8 %i.gu, 8
  br i1 %i.gy, label %..thread_crit_edge.i69, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gz = getelementptr i8, ptr %i.gk, i64 8      ; 2 uses
  %.val.i.i57 = load i32, ptr %i.gz, align 8, !tbaa !26 ; 4 uses
  %i.ha = getelementptr i8, ptr %i.gk, i64 12
  %.val13.i.i58 = load i32, ptr %i.ha, align 4, !tbaa !24
  %i.hb = sub nsw i32 %.val13.i.i58, %.val.i.i57
  %.not.i.i59 = icmp slt i32 %i.hb, %i.gw
  br i1 %.not.i.i59, label %.thread408.i.i, label %cbs_vp8_bool_decoder_fill_value.exit.i60

cbs_vp8_bool_decoder_fill_value.exit.i60:         ; preds = %bb.ax
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !25
  %i.he = load ptr, ptr %i.gk, align 8, !tbaa !22
  %i.hf = lshr i32 %.val.i.i57, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 1, !tbaa !50
  %i.hj = call i32 @llvm.bswap.i32(i32 %i.hi)
  %i.hk = and i32 %.val.i.i57, 7
  %i.hl = shl i32 %i.hj, %i.hk
  %i.hm = add nuw nsw i32 %i.gv, 24
  %i.hn = lshr i32 %i.hl, %i.hm
  %i.ho = add i32 %.val.i.i57, %i.gw
  %i.hp = call i32 @llvm.umin.i32(i32 %i.hd, i32 %i.ho)
  store i32 %i.hp, ptr %i.gz, align 8, !tbaa !26
  %i.hq = load i8, ptr %i.de, align 8, !tbaa !41
  %i.hr = trunc nuw i32 %i.hn to i8
  %i.hs = or i8 %i.hq, %i.hr                      ; 2 uses
  store i8 %i.hs, ptr %i.de, align 8, !tbaa !41
  %i.ht = trunc nuw nsw i32 %i.gw to i8
  %i.hu = add nuw nsw i8 %i.gu, %i.ht             ; 2 uses
end_hunk_0
begin_hunk_1_@cbs_vp8_read_unit:bb.a
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

.thread408.i.i:                                   ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %cbs_vp8_read_compressed_header.exit.thread

bb.bd:                                            ; preds = %bb.bb
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !52
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !53
  %i.im = sub nsw i32 %.val.i345.i.i, %.val30.i344.i.i
  %i.in = zext nneg i8 %.0112 to i64
  call void %i.ij(ptr noundef %i.il, ptr noundef nonnull %9, i32 noundef %i.im, ptr noundef nonnull @.str.25, ptr noundef null, i64 noundef %i.in) #6, !inline_history !54
  %.pre509.pre.i.i = load i32, ptr %i.gl, align 4, !tbaa !44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %i.io = getelementptr inbounds nuw i8, ptr %i.av, i64 17
  store i8 %.0112, ptr %i.io, align 1, !tbaa !58
  br i1 %.not.i62, label %bb.eb, label %bb.be

.thread583.i.i:                                   ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %i.ip = getelementptr inbounds nuw i8, ptr %i.av, i64 17
  store i8 %.0112, ptr %i.ip, align 1, !tbaa !58
  br i1 %.not.i62, label %.thread590.i.i, label %.thread587.i.i

.thread590.i.i:                                   ; preds = %.thread583.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  br label %bb.ed

.thread587.i.i:                                   ; preds = %.thread583.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  br label %bb.bg

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.iq = load ptr, ptr %13, align 8, !tbaa !38   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %.not.i.i348.i.i = icmp eq i32 %.pre509.pre.i.i, 0
  br i1 %.not.i.i348.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i64 24, i1 false), !tbaa.struct !48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %.thread587.i.i
  %.not28.i.i.i.i = phi i1 [ true, %.thread587.i.i ], [ false, %bb.bf ], [ true, %bb.be ]
  %i.ir = phi ptr [ %i.gk, %.thread587.i.i ], [ %i.iq, %bb.bf ], [ %i.iq, %bb.be ] ; 6 uses
  %i.is = load i8, ptr %i.df, align 1, !tbaa !42  ; 2 uses
  %i.it = zext i8 %i.is to i16
  %i.iu = shl nuw nsw i16 %i.it, 7
  %i.iv = add nsw i16 %i.iu, -128
  %i.iw = lshr i16 %i.iv, 8
  %i.ix = trunc nuw i16 %i.iw to i8
  %i.iy = add i8 %i.ix, 1                         ; 4 uses
  %i.iz = load i8, ptr %i.dg, align 2, !tbaa !43  ; 4 uses
  %i.ja = zext i8 %i.iz to i32                    ; 2 uses
  %i.jb = sub nuw nsw i32 8, %i.ja                ; 3 uses
  %i.jc = icmp ult i8 %i.iz, 9
  br i1 %i.jc, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 61) #6
  call void @abort() #7
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.jd = icmp eq i8 %i.iz, 8
  br i1 %i.jd, label %..thread_crit_edge.i53, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.je = getelementptr i8, ptr %i.ir, i64 8      ; 2 uses
  %.val.i.i41 = load i32, ptr %i.je, align 8, !tbaa !26 ; 4 uses
  %i.jf = getelementptr i8, ptr %i.ir, i64 12
  %.val13.i.i42 = load i32, ptr %i.jf, align 4, !tbaa !24
  %i.jg = sub nsw i32 %.val13.i.i42, %.val.i.i41
  %.not.i.i43 = icmp slt i32 %i.jg, %i.jb
  br i1 %.not.i.i43, label %.thread.i.i.i, label %cbs_vp8_bool_decoder_fill_value.exit.i44

cbs_vp8_bool_decoder_fill_value.exit.i44:         ; preds = %bb.bj
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !25
  %i.jj = load ptr, ptr %i.ir, align 8, !tbaa !22
  %i.jk = lshr i32 %.val.i.i41, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 1, !tbaa !50
  %i.jo = call i32 @llvm.bswap.i32(i32 %i.jn)
  %i.jp = and i32 %.val.i.i41, 7
  %i.jq = shl i32 %i.jo, %i.jp
  %i.jr = add nuw nsw i32 %i.ja, 24
  %i.js = lshr i32 %i.jq, %i.jr
  %i.jt = add i32 %.val.i.i41, %i.jb
  %i.ju = call i32 @llvm.umin.i32(i32 %i.ji, i32 %i.jt)
  store i32 %i.ju, ptr %i.je, align 8, !tbaa !26
  %i.jv = load i8, ptr %i.de, align 8, !tbaa !41
  %i.jw = trunc nuw i32 %i.js to i8
  %i.jx = or i8 %i.jv, %i.jw                      ; 2 uses
  store i8 %i.jx, ptr %i.de, align 8, !tbaa !41
  %i.jy = trunc nuw nsw i32 %i.jb to i8
  %i.jz = add nuw nsw i8 %i.iz, %i.jy             ; 2 uses
  store i8 %i.jz, ptr %i.dg, align 2, !tbaa !43
  br label %.thread.i45

..thread_crit_edge.i53:                           ; preds = %bb.bi
  %.pre.i55 = load i8, ptr %i.de, align 8, !tbaa !41
  br label %.thread.i45

.thread.i45:                                      ; preds = %..thread_crit_edge.i53, %cbs_vp8_bool_decoder_fill_value.exit.i44
  %.promoted24.i51 = phi i8 [ 8, %..thread_crit_edge.i53 ], [ %i.jz, %cbs_vp8_bool_decoder_fill_value.exit.i44 ]
  %i.ka = phi i8 [ %.pre.i55, %..thread_crit_edge.i53 ], [ %i.jx, %cbs_vp8_bool_decoder_fill_value.exit.i44 ] ; 3 uses
  %.not.i46 = icmp ult i8 %i.ka, %i.iy
  br i1 %.not.i46, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.thread.i45
  %i.kb = sub i8 %i.is, %i.iy
  %i.kc = sub nuw i8 %i.ka, %i.iy                 ; 2 uses
  store i8 %i.kc, ptr %i.de, align 8, !tbaa !41
  br label %bb.bl

bb.bl:                                            ; preds = %.thread.i45, %bb.bk
  %.promoted.i50 = phi i8 [ %i.kc, %bb.bk ], [ %i.ka, %.thread.i45 ]
  %.0114 = phi i8 [ 1, %bb.bk ], [ 0, %.thread.i45 ] ; 3 uses
  %.sink.i47 = phi i8 [ %i.kb, %bb.bk ], [ %i.iy, %.thread.i45 ] ; 3 uses
  store i8 %.sink.i47, ptr %i.df, align 1, !tbaa !42
  %i.kd = icmp sgt i8 %.sink.i47, -1
  br i1 %i.kd, label %.lr.ph.i49, label %bb.bm

.lr.ph.i49:                                       ; preds = %bb.bl, %.lr.ph.i49
  %i.ke = phi i8 [ %i.kj, %.lr.ph.i49 ], [ %.promoted24.i51, %bb.bl ]
  %i.kf = phi i8 [ %i.kh, %.lr.ph.i49 ], [ %.promoted.i50, %bb.bl ]
  %i.kg = phi i8 [ %i.ki, %.lr.ph.i49 ], [ %.sink.i47, %bb.bl ]
  %i.kh = shl i8 %i.kf, 1                         ; 2 uses
  %i.ki = shl nuw i8 %i.kg, 1                     ; 3 uses
  %i.kj = add i8 %i.ke, -1                        ; 2 uses
  %i.kk = icmp sgt i8 %i.ki, -1
  br i1 %i.kk, label %.lr.ph.i49, label %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i52, !llvm.loop !55

.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i52: ; preds = %.lr.ph.i49
  store i8 %i.kh, ptr %i.de, align 8, !tbaa !41
  store i8 %i.ki, ptr %i.df, align 1, !tbaa !42
  store i8 %i.kj, ptr %i.dg, align 2, !tbaa !43
  br label %bb.bm

bb.bm:                                            ; preds = %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i52, %bb.bl
  br i1 %.not28.i.i.i.i, label %.thread336.i.i.i, label %bb.bn

.thread336.i.i.i:                                 ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.kl = getelementptr inbounds nuw i8, ptr %i.av, i64 18 ; 2 uses
  store i8 %.0114, ptr %i.kl, align 2, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  br label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.km = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val30.i.i.i.i = load i32, ptr %i.km, align 8, !tbaa !26 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.ir, i64 8
  %.val.i.i.i.i = load i32, ptr %i.kn, align 8, !tbaa !26 ; 2 uses
  %.not29.i.i.i.i = icmp sgt i32 %.val30.i.i.i.i, %.val.i.i.i.i
  br i1 %.not29.i.i.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

.thread.i.i.i:                                    ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  br label %cbs_vp8_read_update_segmentation.exit.thread.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !52
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !53
  %i.ks = sub nsw i32 %.val.i.i.i.i, %.val30.i.i.i.i
  %i.kt = zext nneg i8 %.0114 to i64
  call void %i.kp(ptr noundef %i.kr, ptr noundef nonnull %8, i32 noundef %i.ks, ptr noundef nonnull @.str.51, ptr noundef null, i64 noundef %i.kt) #6, !inline_history !60
  %.pre.i.i.i = load i32, ptr %i.gl, align 4, !tbaa !44
  %i.ku = icmp eq i32 %.pre.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.kv = getelementptr inbounds nuw i8, ptr %i.av, i64 18 ; 3 uses
  store i8 %.0114, ptr %i.kv, align 2, !tbaa !59
  %i.kw = load ptr, ptr %13, align 8, !tbaa !38   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  br i1 %i.ku, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.kw, i64 24, i1 false), !tbaa.struct !48
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %.thread336.i.i.i
  %i.kx = phi ptr [ %i.ir, %.thread336.i.i.i ], [ %i.kw, %bb.bp ], [ %i.kw, %bb.bq ]
  %i.ky = phi ptr [ %i.kl, %.thread336.i.i.i ], [ %i.kv, %bb.bp ], [ %i.kv, %bb.bq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  store i8 0, ptr %i.h, align 1, !tbaa !50
  %i.kz = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.h) ; 2 uses
  %.not14.i.i151.i.i.i = icmp eq i32 %i.kz, 0
  br i1 %.not14.i.i151.i.i.i, label %bb.bs, label %.thread222.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.la = load i8, ptr %i.h, align 1, !tbaa !50   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  %i.lb = load i32, ptr %i.gl, align 4, !tbaa !44
  %.not28.i154.i.i.i = icmp eq i32 %i.lb, 0
  br i1 %.not28.i154.i.i.i, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val30.i155.i.i.i = load i32, ptr %i.lc, align 8, !tbaa !26 ; 2 uses
  %i.ld = getelementptr i8, ptr %i.kx, i64 8
  %.val.i156.i.i.i = load i32, ptr %i.ld, align 8, !tbaa !26 ; 2 uses
  %.not29.i157.i.i.i = icmp sgt i32 %.val30.i155.i.i.i, %.val.i156.i.i.i
  br i1 %.not29.i157.i.i.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !52
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !53
  %i.li = sub nsw i32 %.val.i156.i.i.i, %.val30.i155.i.i.i
  %i.lj = zext i8 %i.la to i64
  call void %i.lf(ptr noundef %i.lh, ptr noundef nonnull %7, i32 noundef %i.li, ptr noundef nonnull @.str.52, ptr noundef null, i64 noundef %i.lj) #6, !inline_history !60
  br label %bb.bw

.thread222.i.i.i:                                 ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %cbs_vp8_read_update_segmentation.exit.thread.i.i

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  %i.lk = getelementptr inbounds nuw i8, ptr %i.av, i64 19
  store i8 %i.la, ptr %i.lk, align 1, !tbaa !61
  %.not.i349.i.i = icmp eq i8 %i.la, 0
  br i1 %.not.i349.i.i, label %.loopexit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ll = load ptr, ptr %13, align 8, !tbaa !38   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.lm = load i32, ptr %i.gl, align 4, !tbaa !44
  %.not.i159.i.i.i = icmp eq i32 %i.lm, 0
  br i1 %.not.i159.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ll, i64 24, i1 false), !tbaa.struct !48
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store i8 0, ptr %i.g, align 1, !tbaa !50
  %i.ln = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.g) ; 2 uses
  %.not14.i.i162.i.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not14.i.i162.i.i.i, label %bb.ca, label %.thread229.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.lo = load i8, ptr %i.g, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %i.lp = load i32, ptr %i.gl, align 4, !tbaa !44
  %.not28.i165.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not28.i165.i.i.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val30.i166.i.i.i = load i32, ptr %i.lq, align 8, !tbaa !26 ; 2 uses
  %i.lr = getelementptr i8, ptr %i.ll, i64 8
  %.val.i167.i.i.i = load i32, ptr %i.lr, align 8, !tbaa !26 ; 2 uses
  %.not29.i168.i.i.i = icmp sgt i32 %.val30.i166.i.i.i, %.val.i167.i.i.i
  br i1 %.not29.i168.i.i.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !52
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !53
  %i.lw = sub nsw i32 %.val.i167.i.i.i, %.val30.i166.i.i.i
  %i.lx = zext i8 %i.lo to i64
  call void %i.lt(ptr noundef %i.lv, ptr noundef nonnull %6, i32 noundef %i.lw, ptr noundef nonnull @.str.53, ptr noundef null, i64 noundef %i.lx) #6, !inline_history !60
  br label %bb.ce

.thread229.i.i.i:                                 ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %cbs_vp8_read_update_segmentation.exit.thread.i.i

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %i.ly = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i8 %i.lo, ptr %i.ly, align 4, !tbaa !62
  %i.lz = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.av, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.mb = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.f) ; 2 uses
  %.not14.i.i173.i.i.i = icmp eq i32 %i.mb, 0
  br i1 %.not14.i.i173.i.i.i, label %bb.cf, label %.critedge.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.mc = getelementptr inbounds nuw i8, ptr %i.av, i64 21
  %i.md = load i8, ptr %i.f, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  store i8 %i.md, ptr %i.mc, align 1, !tbaa !50
  %.not134.i.i.i = icmp eq i8 %i.md, 0
  br i1 %.not134.i.i.i, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 1, ptr %i.j, align 4, !tbaa !27
  store i32 0, ptr %i.lz, align 4, !tbaa !27
  %i.me = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull readonly %0, ptr noundef nonnull %13, i32 noundef 7, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.j, ptr noundef %i.i) ; 2 uses
  %i.mf = icmp sgt i32 %i.me, -1
  br i1 %i.mf, label %bb.ch, label %.critedge139.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.mg = load i32, ptr %i.i, align 4, !tbaa !27
  %i.mh = trunc i32 %i.mg to i8
  store i8 %i.mh, ptr %i.ma, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.mi = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.f) ; 2 uses
  %.not14.i.i173.1.i.i.i = icmp eq i32 %i.mi, 0
  br i1 %.not14.i.i173.1.i.i.i, label %bb.cj, label %.critedge.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.mj = load i8, ptr %i.f, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  %i.mk = getelementptr inbounds nuw i8, ptr %i.av, i64 22
  store i8 %i.mj, ptr %i.mk, align 2, !tbaa !50
  %.not134.1.i.i.i = icmp eq i8 %i.mj, 0
  br i1 %.not134.1.i.i.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 1, ptr %i.j, align 4, !tbaa !27
  store i32 1, ptr %i.lz, align 4, !tbaa !27
  %i.ml = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull readonly %0, ptr noundef nonnull %13, i32 noundef 7, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.j, ptr noundef %i.i) ; 2 uses
  %i.mm = icmp sgt i32 %i.ml, -1
  br i1 %i.mm, label %bb.cl, label %.critedge139.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.mn = load i32, ptr %i.i, align 4, !tbaa !27
  %i.mo = trunc i32 %i.mn to i8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  store i8 %i.mo, ptr %i.mp, align 2, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.mq = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.f) ; 2 uses
  %.not14.i.i173.2.i.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not14.i.i173.2.i.i.i, label %bb.cn, label %.critedge.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.mr = load i8, ptr %i.f, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  %i.ms = getelementptr inbounds nuw i8, ptr %i.av, i64 23
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !50
  %.not134.2.i.i.i = icmp eq i8 %i.mr, 0
  br i1 %.not134.2.i.i.i, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 1, ptr %i.j, align 4, !tbaa !27
  store i32 2, ptr %i.lz, align 4, !tbaa !27
  %i.mt = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull readonly %0, ptr noundef nonnull %13, i32 noundef 7, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.j, ptr noundef %i.i) ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, -1
  br i1 %i.mu, label %bb.cp, label %.critedge139.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.mv = load i32, ptr %i.i, align 4, !tbaa !27
  %i.mw = trunc i32 %i.mv to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.av, i64 27
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
end_hunk_1
begin_hunk_2_@cbs_vp8_read_unit:bb.a
  %i.ot = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  br label %bb.dj

bb.dj:                                            ; preds = %bb.ea, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ea ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1, !tbaa !50
  %i.ou = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.d) ; 2 uses
  %.not14.i.i187.i.i.i = icmp eq i32 %i.ou, 0
  br i1 %.not14.i.i187.i.i.i, label %bb.dk, label %.critedge145.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.ov = load i8, ptr %i.d, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oo, i64 %indvars.iv.i.i.i
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !50
  %.not137.i.i.i = icmp eq i8 %i.ov, 0
  br i1 %.not137.i.i.i, label %bb.ea, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store i32 1, ptr %i.m, align 4, !tbaa !27
  %i.ox = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  store i32 %i.ox, ptr %i.op, align 4, !tbaa !27
  %i.oy = load ptr, ptr %13, align 8, !tbaa !38   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.oz = load i32, ptr %i.gl, align 4, !tbaa !44
  %.not.i191.i.i.i = icmp eq i32 %i.oz, 0
  br i1 %.not.i191.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.oy, i64 24, i1 false), !tbaa.struct !48
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.pa = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i194.i.i.i = icmp eq i32 %i.pa, 0
  br i1 %.not14.i.i194.i.i.i, label %bb.do, label %.critedge147.i.i.i

bb.do:                                            ; preds = %bb.dn
  %i.pb = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.pc = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i194.1.i.i.i = icmp eq i32 %i.pc, 0
  br i1 %.not14.i.i194.1.i.i.i, label %bb.dp, label %.critedge147.i.i.i

bb.dp:                                            ; preds = %bb.do
  %i.pd = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.pe = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i194.2.i.i.i = icmp eq i32 %i.pe, 0
  br i1 %.not14.i.i194.2.i.i.i, label %bb.dq, label %.critedge147.i.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.pf = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.pg = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i194.3.i.i.i = icmp eq i32 %i.pg, 0
  br i1 %.not14.i.i194.3.i.i.i, label %bb.dr, label %.critedge147.i.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.ph = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.pi = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i194.4.i.i.i = icmp eq i32 %i.pi, 0
  br i1 %.not14.i.i194.4.i.i.i, label %bb.ds, label %.critedge147.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.pj = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.pk = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i194.5.i.i.i = icmp eq i32 %i.pk, 0
  br i1 %.not14.i.i194.5.i.i.i, label %bb.dt, label %.critedge147.i.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.pl = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.pm = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i194.6.i.i.i = icmp eq i32 %i.pm, 0
  br i1 %.not14.i.i194.6.i.i.i, label %bb.du, label %.critedge147.i.i.i

bb.du:                                            ; preds = %bb.dt
  %i.pn = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.po = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i194.7.i.i.i = icmp eq i32 %i.po, 0
  br i1 %.not14.i.i194.7.i.i.i, label %bb.dv, label %.critedge147.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.pp = zext i8 %i.pb to i32
  %i.pq = shl nuw nsw i32 %i.pp, 2
  %i.pr = zext i8 %i.pd to i32
  %i.ps = shl nuw nsw i32 %i.pr, 1
  %i.pt = or i32 %i.ps, %i.pq
  %i.pu = zext i8 %i.pf to i32
  %i.pv = or i32 %i.pt, %i.pu
  %i.pw = shl nuw nsw i32 %i.pv, 2
  %i.px = zext i8 %i.ph to i32
  %i.py = shl nuw nsw i32 %i.px, 1
  %i.pz = or i32 %i.py, %i.pw
  %i.qa = zext i8 %i.pj to i32
  %i.qb = or i32 %i.pz, %i.qa
  %i.qc = shl nuw nsw i32 %i.qb, 2
  %i.qd = zext i8 %i.pl to i32
  %i.qe = shl nuw nsw i32 %i.qd, 1
  %i.qf = or i32 %i.qe, %i.qc
  %i.qg = zext i8 %i.pn to i32
  %i.qh = or i32 %i.qf, %i.qg
  %i.qi = shl nuw nsw i32 %i.qh, 1
  %i.qj = load i8, ptr %i.c, align 1, !tbaa !50
  %i.qk = zext i8 %i.qj to i32
  %i.ql = or i32 %i.qi, %i.qk                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.qm = load i32, ptr %i.gl, align 4, !tbaa !44
  %.not28.i197.i.i.i = icmp eq i32 %i.qm, 0
  br i1 %.not28.i197.i.i.i, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.val30.i198.i.i.i = load i32, ptr %i.oq, align 8, !tbaa !26 ; 2 uses
  %i.qn = getelementptr i8, ptr %i.oy, i64 8
  %.val.i199.i.i.i = load i32, ptr %i.qn, align 8, !tbaa !26 ; 2 uses
  %.not29.i200.i.i.i = icmp sgt i32 %.val30.i198.i.i.i, %.val.i199.i.i.i
  br i1 %.not29.i200.i.i.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.qo = load ptr, ptr %i.or, align 8, !tbaa !52
  %i.qp = load ptr, ptr %i.os, align 8, !tbaa !53
  %i.qq = sub nsw i32 %.val.i199.i.i.i, %.val30.i198.i.i.i
  %i.qr = zext nneg i32 %i.ql to i64
  call void %i.qo(ptr noundef %i.qp, ptr noundef nonnull %5, i32 noundef %i.qq, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.m, i64 noundef %i.qr) #6, !inline_history !60
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.qs = trunc i32 %i.ql to i8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ot, i64 %indvars.iv.i.i.i
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !50
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dk
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 3
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.dj, !llvm.loop !63

.critedge145.i.i.i:                               ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %cbs_vp8_read_update_segmentation.exit.thread.i.i

.critedge147.i.i.i:                               ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn
  %.lcssa286.i.i.i = phi i32 [ %i.pa, %bb.dn ], [ %i.pc, %bb.do ], [ %i.pe, %bb.dp ], [ %i.pg, %bb.dq ], [ %i.pi, %bb.dr ], [ %i.pk, %bb.ds ], [ %i.pm, %bb.dt ], [ %i.po, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %cbs_vp8_read_update_segmentation.exit.thread.i.i

cbs_vp8_read_update_segmentation.exit.thread.i.i: ; preds = %.critedge147.i.i.i, %.critedge145.i.i.i, %.critedge143.i.i.i, %.critedge141.i.i.i, %.critedge139.i.i.i, %.critedge.i.i.i, %.thread229.i.i.i, %.thread222.i.i.i, %.thread.i.i.i
  %.19125.i.ph.i.i = phi i32 [ %.lcssa286.i.i.i, %.critedge147.i.i.i ], [ %.lcssa292.i.i.i, %.critedge143.i.i.i ], [ %.lcssa296.i.i.i, %.critedge139.i.i.i ], [ %i.ou, %.critedge145.i.i.i ], [ %i.kz, %.thread222.i.i.i ], [ %i.ln, %.thread229.i.i.i ], [ %.lcssa293.i.i.i, %.critedge.i.i.i ], [ %.lcssa289.i.i.i, %.critedge141.i.i.i ], [ -1094995529, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %cbs_vp8_read_compressed_header.exit.thread

.loopexit.i.i:                                    ; preds = %bb.ea, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.pre508.i.i = load i32, ptr %i.gl, align 4, !tbaa !44
  br label %bb.eb

bb.eb:                                            ; preds = %.loopexit.i.i, %bb.bd
  %i.qu = phi i32 [ %.pre508.i.i, %.loopexit.i.i ], [ %.pre509.pre.i.i, %bb.bd ]
  %i.qv = load ptr, ptr %13, align 8, !tbaa !38   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %.not.i350.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not.i350.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.qv, i64 24, i1 false), !tbaa.struct !48
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %.thread590.i.i
  %.not28.i356.i.i = phi i1 [ true, %.thread590.i.i ], [ true, %bb.eb ], [ false, %bb.ec ]
  %i.qw = phi ptr [ %i.gk, %.thread590.i.i ], [ %i.qv, %bb.eb ], [ %i.qv, %bb.ec ] ; 6 uses
  %i.qx = load i8, ptr %i.df, align 1, !tbaa !42  ; 2 uses
  %i.qy = zext i8 %i.qx to i16
  %i.qz = shl nuw nsw i16 %i.qy, 7
  %i.ra = add nsw i16 %i.qz, -128
  %i.rb = lshr i16 %i.ra, 8
  %i.rc = trunc nuw i16 %i.rb to i8
  %i.rd = add i8 %i.rc, 1                         ; 4 uses
  %i.re = load i8, ptr %i.dg, align 2, !tbaa !43  ; 4 uses
  %i.rf = zext i8 %i.re to i32                    ; 2 uses
  %i.rg = sub nuw nsw i32 8, %i.rf                ; 3 uses
  %i.rh = icmp ult i8 %i.re, 9
  br i1 %i.rh, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 61) #6
  call void @abort() #7
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.ri = icmp eq i8 %i.re, 8
  br i1 %i.ri, label %..thread_crit_edge.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rj = getelementptr i8, ptr %i.qw, i64 8      ; 2 uses
  %.val.i.i = load i32, ptr %i.rj, align 8, !tbaa !26 ; 4 uses
  %i.rk = getelementptr i8, ptr %i.qw, i64 12
  %.val13.i.i = load i32, ptr %i.rk, align 4, !tbaa !24
  %i.rl = sub nsw i32 %.val13.i.i, %.val.i.i
  %.not.i.i40 = icmp slt i32 %i.rl, %i.rg
  br i1 %.not.i.i40, label %.thread417.i.i, label %cbs_vp8_bool_decoder_fill_value.exit.i

cbs_vp8_bool_decoder_fill_value.exit.i:           ; preds = %bb.eg
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !25
  %i.ro = load ptr, ptr %i.qw, align 8, !tbaa !22
  %i.rp = lshr i32 %.val.i.i, 3
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 1, !tbaa !50
  %i.rt = call i32 @llvm.bswap.i32(i32 %i.rs)
  %i.ru = and i32 %.val.i.i, 7
  %i.rv = shl i32 %i.rt, %i.ru
  %i.rw = add nuw nsw i32 %i.rf, 24
  %i.rx = lshr i32 %i.rv, %i.rw
  %i.ry = add i32 %.val.i.i, %i.rg
  %i.rz = call i32 @llvm.umin.i32(i32 %i.rn, i32 %i.ry)
  store i32 %i.rz, ptr %i.rj, align 8, !tbaa !26
  %i.sa = load i8, ptr %i.de, align 8, !tbaa !41
  %i.sb = trunc nuw i32 %i.rx to i8
  %i.sc = or i8 %i.sa, %i.sb                      ; 2 uses
  store i8 %i.sc, ptr %i.de, align 8, !tbaa !41
  %i.sd = trunc nuw nsw i32 %i.rg to i8
  %i.se = add nuw nsw i8 %i.re, %i.sd             ; 2 uses
  store i8 %i.se, ptr %i.dg, align 2, !tbaa !43
  br label %.thread.i

..thread_crit_edge.i:                             ; preds = %bb.ef
  %.pre.i = load i8, ptr %i.de, align 8, !tbaa !41
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %cbs_vp8_bool_decoder_fill_value.exit.i
  %.promoted24.i = phi i8 [ 8, %..thread_crit_edge.i ], [ %i.se, %cbs_vp8_bool_decoder_fill_value.exit.i ]
  %i.sf = phi i8 [ %.pre.i, %..thread_crit_edge.i ], [ %i.sc, %cbs_vp8_bool_decoder_fill_value.exit.i ] ; 3 uses
  %.not.i = icmp ult i8 %i.sf, %i.rd
  br i1 %.not.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.thread.i
  %i.sg = sub i8 %i.qx, %i.rd
  %i.sh = sub nuw i8 %i.sf, %i.rd                 ; 2 uses
  store i8 %i.sh, ptr %i.de, align 8, !tbaa !41
  br label %bb.ei

bb.ei:                                            ; preds = %.thread.i, %bb.eh
  %.promoted.i = phi i8 [ %i.sh, %bb.eh ], [ %i.sf, %.thread.i ]
  %.0116 = phi i8 [ 1, %bb.eh ], [ 0, %.thread.i ] ; 3 uses
  %.sink.i = phi i8 [ %i.sg, %bb.eh ], [ %i.rd, %.thread.i ] ; 3 uses
  store i8 %.sink.i, ptr %i.df, align 1, !tbaa !42
  %i.si = icmp sgt i8 %.sink.i, -1
  br i1 %i.si, label %.lr.ph.i, label %bb.ej

.lr.ph.i:                                         ; preds = %bb.ei, %.lr.ph.i
  %i.sj = phi i8 [ %i.so, %.lr.ph.i ], [ %.promoted24.i, %bb.ei ]
  %i.sk = phi i8 [ %i.sm, %.lr.ph.i ], [ %.promoted.i, %bb.ei ]
  %i.sl = phi i8 [ %i.sn, %.lr.ph.i ], [ %.sink.i, %bb.ei ]
  %i.sm = shl i8 %i.sk, 1                         ; 2 uses
  %i.sn = shl nuw i8 %i.sl, 1                     ; 3 uses
  %i.so = add i8 %i.sj, -1                        ; 2 uses
  %i.sp = icmp sgt i8 %i.sn, -1
  br i1 %i.sp, label %.lr.ph.i, label %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i, !llvm.loop !55

.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  store i8 %i.sm, ptr %i.de, align 8, !tbaa !41
  store i8 %i.sn, ptr %i.df, align 1, !tbaa !42
  store i8 %i.so, ptr %i.dg, align 2, !tbaa !43
  br label %bb.ej

bb.ej:                                            ; preds = %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i, %bb.ei
  br i1 %.not28.i356.i.i, label %.thread592.i.i, label %bb.ek

.thread592.i.i:                                   ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.sq = getelementptr inbounds nuw i8, ptr %i.av, i64 43
  store i8 %.0116, ptr %i.sq, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ej
  %i.sr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val30.i357.i.i = load i32, ptr %i.sr, align 8, !tbaa !26 ; 2 uses
  %i.ss = getelementptr i8, ptr %i.qw, i64 8
  %.val.i358.i.i = load i32, ptr %i.ss, align 8, !tbaa !26 ; 2 uses
  %.not29.i359.i.i = icmp sgt i32 %.val30.i357.i.i, %.val.i358.i.i
  br i1 %.not29.i359.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

.thread417.i.i:                                   ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %cbs_vp8_read_compressed_header.exit.thread

bb.em:                                            ; preds = %bb.ek
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !52
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !53
  %i.sx = sub nsw i32 %.val.i358.i.i, %.val30.i357.i.i
  %i.sy = zext nneg i8 %.0116 to i64
  call void %i.su(ptr noundef %i.sw, ptr noundef nonnull %4, i32 noundef %i.sx, ptr noundef nonnull @.str.26, ptr noundef null, i64 noundef %i.sy) #6, !inline_history !54
  %.pre510.i.i = load i32, ptr %i.gl, align 4, !tbaa !44
  %i.sz = icmp eq i32 %.pre510.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.ta = getelementptr inbounds nuw i8, ptr %i.av, i64 43
  store i8 %.0116, ptr %i.ta, align 1, !tbaa !64
  %i.tb = load ptr, ptr %13, align 8, !tbaa !38   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  br i1 %i.sz, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.tb, i64 24, i1 false), !tbaa.struct !48
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %.thread592.i.i
  %i.tc = phi ptr [ %i.qw, %.thread592.i.i ], [ %i.tb, %bb.en ], [ %i.tb, %bb.em ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.td = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i364.i.i = icmp eq i32 %i.td, 0
  br i1 %.not14.i.i364.i.i, label %bb.ep, label %.thread424.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.te = load i8, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.tf = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i364.1.i.i = icmp eq i32 %i.tf, 0
  br i1 %.not14.i.i364.1.i.i, label %bb.eq, label %.thread424.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.tg = load i8, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.th = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i364.2.i.i = icmp eq i32 %i.th, 0
  br i1 %.not14.i.i364.2.i.i, label %bb.er, label %.thread424.i.i

bb.er:                                            ; preds = %bb.eq
  %i.ti = load i8, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.tj = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i364.3.i.i = icmp eq i32 %i.tj, 0
  br i1 %.not14.i.i364.3.i.i, label %bb.es, label %.thread424.i.i

bb.es:                                            ; preds = %bb.er
  %i.tk = load i8, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.tl = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i364.4.i.i = icmp eq i32 %i.tl, 0
  br i1 %.not14.i.i364.4.i.i, label %bb.et, label %.thread424.i.i

bb.et:                                            ; preds = %bb.es
  %i.tm = load i8, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.tn = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %13, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i364.5.i.i = icmp eq i32 %i.tn, 0
  br i1 %.not14.i.i364.5.i.i, label %bb.eu, label %.thread424.i.i

bb.eu:                                            ; preds = %bb.et
  %i.to = zext i8 %i.te to i32
  %i.tp = shl nuw nsw i32 %i.to, 2
end_hunk_2
begin_hunk_3_@av_buffer_ref
declare ptr @av_buffer_ref(ptr noundef) local_unnamed_addr #3

declare void @ff_cbs_trace_header(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp8_read_unsigned_le(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 1, 20) %2, ptr noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, i32 noundef range(i32 0, 158) %5, i32 noundef range(i32 1, 524288) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.GetBitContext, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val39 = load i32, ptr %i.c, align 8, !tbaa !26 ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 12
  %.val40 = load i32, ptr %i.d, align 4, !tbaa !24
  %i.e = sub nsw i32 %.val40, %.val39
  %i.f = icmp slt i32 %i.e, %2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !88
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.g, i32 noundef 16, ptr noundef nonnull @.str.18) #6
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = load ptr, ptr %1, align 8, !tbaa !22
  %i.k = lshr i32 %.val39, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 1, !tbaa !50
  %i.o = and i32 %.val39, 7
  %i.p = lshr i32 %i.n, %i.o
  %narrow.i.i = sub nuw nsw i32 32, %2
  %i.q = lshr i32 -1, %narrow.i.i
  %i.r = and i32 %i.p, %i.q                       ; 5 uses
  %i.s = add i32 %.val39, %2
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.s) ; 3 uses
  store i32 %i.t, ptr %i.c, align 8, !tbaa !26
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val38 = load i32, ptr %i.u, align 8, !tbaa !26 ; 2 uses
  %.not37 = icmp sgt i32 %.val38, %i.t
  br i1 %.not37, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 203) #6
  tail call void @abort() #7
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.z = sub nsw i32 %i.t, %.val38
  %i.aa = zext nneg i32 %i.r to i64
  call void %i.w(ptr noundef %i.y, ptr noundef nonnull %7, i32 noundef %i.z, ptr noundef %3, ptr noundef null, i64 noundef %i.aa) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ab = icmp samesign ult i32 %i.r, %5
  %i.ac = icmp samesign ugt i32 %i.r, %6
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ad, i32 noundef 16, ptr noundef nonnull @.str.20, ptr noundef %3, i32 noundef %i.r, i32 noundef %5, i32 noundef %6) #6
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.r, ptr %4, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.d
  %.0 = phi i32 [ -1094995529, %bb.d ], [ -1094995529, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp8_bool_decoder_read_unsigned(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 1, 9) %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef nonnull writeonly captures(none) %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %8 = alloca %struct.GetBitContext, align 8      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !48
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.033 = phi i32 [ %i.i, %bb.d ], [ 0, %.preheader ]
  %.01117.i = phi i32 [ %i.j, %bb.d ], [ %2, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i8 0, ptr %i.a, align 1, !tbaa !50
  %i.e = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext %3, ptr noundef %i.a) ; 2 uses
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.d, label %cbs_vp8_bool_decoder_read_literal.exit

bb.d:                                             ; preds = %bb.c
  %i.f = shl i32 %.033, 1
  %i.g = load i8, ptr %i.a, align 1, !tbaa !50
  %i.h = zext i8 %i.g to i32
  %i.i = or i32 %i.f, %i.h                        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.j = add nsw i32 %.01117.i, -1                ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.c, !llvm.loop !89

cbs_vp8_bool_decoder_read_literal.exit:           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  br i1 %7, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.c, align 4, !tbaa !44
  %.not28 = icmp eq i32 %i.k, 0
  br i1 %.not28, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val30 = load i32, ptr %i.l, align 8, !tbaa !26 ; 2 uses
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %.val = load i32, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not29 = icmp sgt i32 %.val30, %.val
  br i1 %.not29, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  tail call void @abort() #7
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = sub nsw i32 %.val, %.val30
  %i.s = zext i32 %i.i to i64
  call void %i.o(ptr noundef %i.q, ptr noundef nonnull %8, i32 noundef %i.r, ptr noundef %4, ptr noundef %5, i64 noundef %i.s) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.e
  store i32 %i.i, ptr %6, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %cbs_vp8_bool_decoder_read_literal.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp8_read_mode_ref_lf_deltas(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 21 uses
  %i.b = alloca i8, align 1                       ; 21 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %3 = alloca %struct.GetBitContext, align 8      ; 6 uses
  %i.e = alloca i32, align 4                      ; 17 uses
  %i.f = alloca [2 x i32], align 4                ; 9 uses
  %i.g = alloca i32, align 4                      ; 17 uses
  %i.h = alloca [2 x i32], align 4                ; 9 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !44
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1, !tbaa !50
  %i.l = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.d) ; 2 uses
  %.not14.i.i = icmp eq i32 %i.l, 0
  br i1 %.not14.i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.d, align 1, !tbaa !50    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.n = load i32, ptr %i.j, align 4, !tbaa !44
  %.not28.i = icmp eq i32 %i.n, 0
  br i1 %.not28.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val30.i = load i32, ptr %i.o, align 8, !tbaa !26 ; 2 uses
  %i.p = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load i32, ptr %i.p, align 8, !tbaa !26 ; 2 uses
  %.not29.i = icmp sgt i32 %.val30.i, %.val.i
  br i1 %.not29.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  tail call void @abort() #7
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = sub nsw i32 %.val.i, %.val30.i
  %i.v = zext i8 %i.m to i64
  call void %i.r(ptr noundef %i.t, ptr noundef nonnull %3, i32 noundef %i.u, ptr noundef nonnull @.str.60, ptr noundef null, i64 noundef %i.v) #6, !inline_history !90
  br label %bb.h

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %.thread138

bb.h:                                             ; preds = %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 46
  store i8 %i.m, ptr %i.w, align 2, !tbaa !91
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.thread138, label %.preheader165

.preheader165:                                    ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.x = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i101 = icmp eq i32 %i.x, 0
  br i1 %.not14.i.i101, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader165
  %i.y = load i8, ptr %i.c, align 1, !tbaa !50    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 47
  store i8 %i.y, ptr %i.z, align 1, !tbaa !92
  %.not89 = icmp eq i8 %i.y, 0
  br i1 %.not89, label %.thread138, label %.preheader149

bb.j:                                             ; preds = %.preheader165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.thread138

.preheader149:                                    ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.ac = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i108 = icmp eq i32 %i.ac, 0
  br i1 %.not14.i.i108, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.preheader149
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load i8, ptr %i.b, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  store i8 %i.ae, ptr %i.ad, align 2, !tbaa !50
  %.not90 = icmp eq i8 %i.ae, 0
  br i1 %.not90, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 1, ptr %i.f, align 4, !tbaa !27
  store i32 0, ptr %i.aa, align 4, !tbaa !27
  %i.af = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.f, ptr noundef %i.e) ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.m, label %.critedge93

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !27
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.ab, align 2, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.aj = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i108.1 = icmp eq i32 %i.aj, 0
  br i1 %.not14.i.i108.1, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ak = load i8, ptr %i.b, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !50
  %.not90.1 = icmp eq i8 %i.ak, 0
  br i1 %.not90.1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 1, ptr %i.f, align 4, !tbaa !27
  store i32 1, ptr %i.aa, align 4, !tbaa !27
  %i.am = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.f, ptr noundef %i.e) ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.q, label %.critedge93

bb.q:                                             ; preds = %bb.p
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !27
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 53
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.ar = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i108.2 = icmp eq i32 %i.ar, 0
  br i1 %.not14.i.i108.2, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.as = load i8, ptr %i.b, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 %i.as, ptr %i.at, align 2, !tbaa !50
  %.not90.2 = icmp eq i8 %i.as, 0
  br i1 %.not90.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 1, ptr %i.f, align 4, !tbaa !27
  store i32 2, ptr %i.aa, align 4, !tbaa !27
  %i.au = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.f, ptr noundef %i.e) ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.u, label %.critedge93

bb.u:                                             ; preds = %bb.t
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !27
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 54
  store i8 %i.ax, ptr %i.ay, align 2, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.az = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i108.3 = icmp eq i32 %i.az, 0
  br i1 %.not14.i.i108.3, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 51
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !50
  %.not90.3 = icmp eq i8 %i.ba, 0
  br i1 %.not90.3, label %.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 1, ptr %i.f, align 4, !tbaa !27
  store i32 3, ptr %i.aa, align 4, !tbaa !27
  %i.bc = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.f, ptr noundef %i.e) ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.y, label %.critedge93

bb.y:                                             ; preds = %bb.x
  %i.be = load i32, ptr %i.e, align 4, !tbaa !27
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 55
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %.preheader

.preheader:                                       ; preds = %bb.y, %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i8 0, ptr %i.a, align 1, !tbaa !50
  %i.bj = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.a) ; 2 uses
  %.not14.i.i115 = icmp eq i32 %i.bj, 0
  br i1 %.not14.i.i115, label %bb.z, label %.critedge95
end_hunk_3
begin_hunk_4_@cbs_vp8_read_mode_ref_lf_deltas:bb.a
  br label %.thread138

.critedge95:                                      ; preds = %bb.ak, %bb.ag, %bb.ac, %.preheader
  %.lcssa.a = phi i32 [ %i.bj, %.preheader ], [ %i.bq, %bb.ac ], [ %i.by, %bb.ag ], [ %i.cg, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread138

.critedge97:                                      ; preds = %bb.am, %bb.ai, %bb.ae, %bb.aa
  %.lcssa168 = phi i32 [ %i.bm, %bb.aa ], [ %i.bt, %bb.ae ], [ %i.cb, %bb.ai ], [ %i.cj, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %.thread138

.thread138:                                       ; preds = %bb.al, %bb.an, %.critedge97, %.critedge95, %.critedge93, %.critedge, %bb.h, %bb.i, %bb.j, %.thread
  %.1283 = phi i32 [ %i.l, %.thread ], [ %.lcssa169, %.critedge ], [ 0, %bb.h ], [ %i.x, %bb.j ], [ %.lcssa.a, %.critedge95 ], [ 0, %bb.i ], [ %.lcssa172, %.critedge93 ], [ %.lcssa168, %.critedge97 ], [ 0, %bb.an ], [ 0, %bb.al ]
  ret i32 %.1283
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp8_read_quantization_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 36 uses
  %3 = alloca %struct.GetBitContext, align 8      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.o = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i = icmp eq i32 %i.o, 0
  br i1 %.not14.i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.q = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i.1 = icmp eq i32 %i.q, 0
  br i1 %.not14.i.i.1, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.s = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i.2 = icmp eq i32 %i.s, 0
  br i1 %.not14.i.i.2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.u = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i.3 = icmp eq i32 %i.u, 0
  br i1 %.not14.i.i.3, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.w = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i.4 = icmp eq i32 %i.w, 0
  br i1 %.not14.i.i.4, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.y = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i.5 = icmp eq i32 %i.y, 0
  br i1 %.not14.i.i.5, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.z = load i8, ptr %i.c, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.aa = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.c) ; 2 uses
  %.not14.i.i.6 = icmp eq i32 %i.aa, 0
  br i1 %.not14.i.i.6, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ab = zext i8 %i.p to i32
  %i.ac = shl nuw nsw i32 %i.ab, 2
  %i.ad = zext i8 %i.r to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = or i32 %i.ac, %i.ae
  %i.ag = zext i8 %i.t to i32
  %i.ah = or i32 %i.af, %i.ag
  %i.ai = shl nuw nsw i32 %i.ah, 2
  %i.aj = zext i8 %i.v to i32
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = or i32 %i.ai, %i.ak
  %i.am = zext i8 %i.x to i32
  %i.an = or i32 %i.al, %i.am
  %i.ao = zext i8 %i.z to i32
  %i.ap = shl nuw nsw i32 %i.an, 2
  %i.aq = shl nuw nsw i32 %i.ao, 1
  %i.ar = or i32 %i.ap, %i.aq
  %i.as = load i8, ptr %i.c, align 1, !tbaa !50
  %i.at = zext i8 %i.as to i32
  %i.au = or i32 %i.ar, %i.at                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.av = load i32, ptr %i.m, align 4, !tbaa !44
  %.not28.i = icmp eq i32 %i.av, 0
  br i1 %.not28.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val30.i = load i32, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.l, i64 8
  %.val.i = load i32, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not29.i = icmp sgt i32 %.val30.i, %.val.i
  br i1 %.not29.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  tail call void @abort() #7
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.bc = sub nsw i32 %.val.i, %.val30.i
  %i.bd = zext nneg i32 %i.au to i64
  call void %i.az(ptr noundef %i.bb, ptr noundef nonnull %3, i32 noundef %i.bc, ptr noundef nonnull @.str.66, ptr noundef null, i64 noundef %i.bd) #6, !inline_history !90
  br label %bb.n

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.lcssa175 = phi i32 [ %i.o, %bb.c ], [ %i.q, %bb.d ], [ %i.s, %bb.e ], [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %i.y, %bb.h ], [ %i.aa, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.am

bb.n:                                             ; preds = %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.be = trunc i32 %i.au to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 65
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !50
  %i.bg = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.b) ; 2 uses
  %.not14.i.i125 = icmp eq i32 %i.bg, 0
  br i1 %.not14.i.i125, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = load i8, ptr %i.b, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 66
  store i8 %i.bh, ptr %i.bi, align 2, !tbaa !94
  %.not = icmp eq i8 %i.bh, 0
  br i1 %.not, label %bb.s, label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.am

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.bj = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef %i.d) ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %.thread148

.thread148:                                       ; preds = %bb.q
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !27
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 67
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.am

bb.s:                                             ; preds = %bb.o, %.thread148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i8 0, ptr %i.a, align 1, !tbaa !50
  %i.bo = call fastcc i32 @cbs_vp8_bool_decoder_read_bool(ptr noundef nonnull %1, i8 noundef zeroext -128, ptr noundef %i.a) ; 2 uses
  %.not14.i.i132 = icmp eq i32 %i.bo, 0
  br i1 %.not14.i.i132, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = load i8, ptr %i.a, align 1, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i8 %i.bp, ptr %i.bq, align 4, !tbaa !96
  %.not118 = icmp eq i8 %i.bp, 0
  br i1 %.not118, label %bb.x, label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.am

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.br = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef %i.e) ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.w, label %.thread155

.thread155:                                       ; preds = %bb.v
  %i.bt = load i32, ptr %i.e, align 4, !tbaa !27
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 69
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.am

bb.x:                                             ; preds = %.thread155, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.bw = call fastcc i32 @cbs_vp8_bool_decoder_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i8 noundef zeroext -128, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef %i.f, i1 noundef zeroext false) ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.am

bb.z:                                             ; preds = %bb.x
  %i.by = load i32, ptr %i.f, align 4, !tbaa !27
  %i.bz = trunc i32 %i.by to i8                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 70
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  %.not119 = icmp eq i8 %i.bz, 0
  br i1 %.not119, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.cb = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef %i.g) ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.ab, label %.thread157

.thread157:                                       ; preds = %bb.aa
  %i.cd = load i32, ptr %i.g, align 4, !tbaa !27
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 71
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.am

bb.ac:                                            ; preds = %.thread157, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.cg = call fastcc i32 @cbs_vp8_bool_decoder_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i8 noundef zeroext -128, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef %i.h, i1 noundef zeroext false) ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !27
  %i.cj = trunc i32 %i.ci to i8                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 %i.cj, ptr %i.ck, align 4, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  %.not120 = icmp eq i8 %i.cj, 0
  br i1 %.not120, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.cl = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef %i.i) ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ag, label %.thread159

.thread159:                                       ; preds = %bb.af
  %i.cn = load i32, ptr %i.i, align 4, !tbaa !27
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 73
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %bb.am

bb.ah:                                            ; preds = %.thread159, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.cq = call fastcc i32 @cbs_vp8_bool_decoder_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i8 noundef zeroext -128, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef %i.j, i1 noundef zeroext false) ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.cs = load i32, ptr %i.j, align 4, !tbaa !27
  %i.ct = trunc i32 %i.cs to i8                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 74
  store i8 %i.ct, ptr %i.cu, align 2, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  %.not121 = icmp eq i8 %i.ct, 0
  br i1 %.not121, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %i.cv = call fastcc i32 @cbs_vp8_bool_decoder_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef %i.k) ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.al, label %.thread161

.thread161:                                       ; preds = %bb.ak
  %i.cx = load i32, ptr %i.k, align 4, !tbaa !27
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 75
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %.thread161, %bb.al, %bb.ai, %bb.ag, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.u, %bb.r, %bb.p, %.thread
  %.15107 = phi i32 [ %.lcssa175, %.thread ], [ %i.cv, %bb.al ], [ %i.cq, %bb.ai ], [ %i.cl, %bb.ag ], [ %i.cg, %bb.ad ], [ %i.cb, %bb.ab ], [ %i.bw, %bb.y ], [ %i.br, %bb.w ], [ %i.bo, %bb.u ], [ %i.bj, %bb.r ], [ %i.bg, %bb.p ], [ 0, %.thread161 ], [ 0, %bb.aj ]
  ret i32 %.15107
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp8_read_update_token_probs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.GetBitContext, align 8      ; 6 uses
  %i.a = alloca [5 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1140
  br label %.preheader141

.preheader141:                                    ; preds = %bb.a, %bb.z
  %indvars.iv188 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next189, %bb.z ] ; 5 uses
  %i.o = getelementptr inbounds nuw [264 x i8], ptr @ff_vp8_token_update_probs, i64 %indvars.iv188
  %i.p = getelementptr inbounds nuw [264 x i8], ptr %i.f, i64 %indvars.iv188
  %i.q = getelementptr inbounds nuw [264 x i8], ptr %i.n, i64 %indvars.iv188
  %i.r = trunc nuw nsw i64 %indvars.iv188 to i32
  br label %.preheader140

.preheader140:                                    ; preds = %.preheader141, %bb.y
  %indvars.iv184 = phi i64 [ 0, %.preheader141 ], [ %indvars.iv.next185, %bb.y ] ; 5 uses
  %i.s = getelementptr inbounds nuw [33 x i8], ptr %i.o, i64 %indvars.iv184
  %i.t = getelementptr inbounds nuw [33 x i8], ptr %i.p, i64 %indvars.iv184
  %i.u = getelementptr inbounds nuw [33 x i8], ptr %i.q, i64 %indvars.iv184
  %i.v = trunc nuw nsw i64 %indvars.iv184 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader140, %.thread
  %indvars.iv180 = phi i64 [ 0, %.preheader140 ], [ %indvars.iv.next181, %.thread ] ; 5 uses
  %i.w = getelementptr inbounds nuw [11 x i8], ptr %i.s, i64 %indvars.iv180
  %i.x = getelementptr inbounds nuw [11 x i8], ptr %i.t, i64 %indvars.iv180
  %i.y = getelementptr inbounds nuw [11 x i8], ptr %i.u, i64 %indvars.iv180
  %i.z = trunc nuw nsw i64 %indvars.iv180 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.x ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ac = load ptr, ptr %1, align 8, !tbaa !38    ; 4 uses
  %i.ad = zext i8 %i.ab to i16
  %.promoted = load i8, ptr %i.c, align 1, !tbaa !42 ; 2 uses
  %.promoted158 = load i8, ptr %i.d, align 2, !tbaa !43 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = zext i8 %.promoted to i16
  %i.ai = add nsw i16 %i.ah, -1
  %i.aj = mul i16 %i.ai, %i.ad
  %i.ak = lshr i16 %i.aj, 8
  %i.al = trunc nuw i16 %i.ak to i8
  %i.am = add i8 %i.al, 1                         ; 4 uses
  %i.an = zext i8 %.promoted158 to i32            ; 2 uses
  %i.ao = sub nuw nsw i32 8, %i.an                ; 3 uses
  %i.ap = icmp ult i8 %.promoted158, 9
  br i1 %i.ap, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 61) #6
  call void @abort() #7
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aq = icmp eq i8 %.promoted158, 8
  br i1 %i.aq, label %..thread_crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.ae, align 8, !tbaa !26 ; 4 uses
  %.val13.i.i = load i32, ptr %i.af, align 4, !tbaa !24
  %i.ar = sub nsw i32 %.val13.i.i, %.val.i.i
  %.not.i.i76 = icmp slt i32 %i.ar, %i.ao
  br i1 %.not.i.i76, label %.critedge, label %cbs_vp8_bool_decoder_fill_value.exit.i

cbs_vp8_bool_decoder_fill_value.exit.i:           ; preds = %bb.e
  %i.as = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.au = lshr i32 %.val.i.i, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !50
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = and i32 %.val.i.i, 7
  %i.ba = shl i32 %i.ay, %i.az
  %i.bb = add nuw nsw i32 %i.an, 24
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = add i32 %.val.i.i, %i.ao
  %i.be = call i32 @llvm.umin.i32(i32 %i.as, i32 %i.bd)
  store i32 %i.be, ptr %i.ae, align 8, !tbaa !26
  %i.bf = load i8, ptr %i.e, align 8, !tbaa !41
  %i.bg = trunc nuw i32 %i.bc to i8
  %i.bh = or i8 %i.bf, %i.bg                      ; 2 uses
  store i8 %i.bh, ptr %i.e, align 8, !tbaa !41
  %4 = trunc nuw nsw i32 %i.ao to i8
  %5 = add nuw nsw i8 %.promoted158, %4           ; 2 uses
  store i8 %5, ptr %i.d, align 2, !tbaa !43
  br label %.thread.i

..thread_crit_edge.i:                             ; preds = %bb.d
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !41
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %cbs_vp8_bool_decoder_fill_value.exit.i
  %.lcssa161 = phi i8 [ 8, %..thread_crit_edge.i ], [ %5, %cbs_vp8_bool_decoder_fill_value.exit.i ]
  %i.bi = phi i8 [ %.pre.i, %..thread_crit_edge.i ], [ %i.bh, %cbs_vp8_bool_decoder_fill_value.exit.i ] ; 3 uses
  %.not.i77 = icmp ult i8 %i.bi, %i.am            ; 2 uses
  br i1 %.not.i77, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i
  %i.bj = sub i8 %.promoted, %i.am
  %i.bk = sub nuw i8 %i.bi, %i.am                 ; 2 uses
  store i8 %i.bk, ptr %i.e, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  %.promoted.i = phi i8 [ %i.bk, %bb.f ], [ %i.bi, %.thread.i ]
  %.099 = phi i8 [ 1, %bb.f ], [ 0, %.thread.i ]
  %.sink.i = phi i8 [ %i.bj, %bb.f ], [ %i.am, %.thread.i ] ; 3 uses
  store i8 %.sink.i, ptr %i.c, align 1, !tbaa !42
  %i.bl = icmp sgt i8 %.sink.i, -1
  br i1 %i.bl, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.bm = phi i8 [ %i.br, %.lr.ph.i ], [ %.lcssa161, %bb.g ]
  %i.bn = phi i8 [ %i.bp, %.lr.ph.i ], [ %.promoted.i, %bb.g ]
  %i.bo = phi i8 [ %i.bq, %.lr.ph.i ], [ %.sink.i, %bb.g ]
  %i.bp = shl i8 %i.bn, 1                         ; 2 uses
  %i.bq = shl nuw i8 %i.bo, 1                     ; 3 uses
  %i.br = add i8 %i.bm, -1                        ; 2 uses
  %i.bs = icmp sgt i8 %i.bq, -1
  br i1 %i.bs, label %.lr.ph.i, label %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i, !llvm.loop !55

.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  store i8 %i.bp, ptr %i.e, align 8, !tbaa !41
  store i8 %i.bq, ptr %i.c, align 1, !tbaa !42
  store i8 %i.br, ptr %i.d, align 2, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  store i8 %.099, ptr %i.bt, align 1, !tbaa !50
  br i1 %.not.i77, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 4, ptr %i.a, align 4, !tbaa !27
  store i32 %i.r, ptr %i.g, align 4, !tbaa !27
  store i32 %i.v, ptr %i.h, align 4, !tbaa !27
  store i32 %i.z, ptr %i.i, align 4, !tbaa !27
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bu, ptr %i.j, align 4, !tbaa !27
  %i.bv = load ptr, ptr %1, align 8, !tbaa !38    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !44
  %.not.i69 = icmp eq i32 %i.bw, 0                ; 2 uses
  br i1 %.not.i69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !tbaa.struct !48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.lcssa150.promoted = load i8, ptr %i.c, align 1, !tbaa !42
  %.lcssa147.promoted = load i8, ptr %i.d, align 2, !tbaa !43
  %i.bx = getelementptr i8, ptr %i.bv, i64 8      ; 3 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %bb.k
  %.lcssa152164 = phi i8 [ %.lcssa147.promoted, %bb.k ], [ %.lcssa152165, %bb.r ] ; 3 uses
  %.lcssa153162 = phi i8 [ %.lcssa150.promoted, %bb.k ], [ %.lcssa153163, %bb.r ] ; 2 uses
  %.033.i70 = phi i32 [ 0, %bb.k ], [ %i.dn, %bb.r ]
  %.01117.i.i71 = phi i32 [ 8, %bb.k ], [ %i.do, %bb.r ]
  %i.ca = zext i8 %.lcssa153162 to i16
  %i.cb = shl nuw nsw i16 %i.ca, 7
  %i.cc = add nsw i16 %i.cb, -128
  %i.cd = lshr i16 %i.cc, 8
  %i.ce = trunc nuw i16 %i.cd to i8
  %i.cf = add i8 %i.ce, 1                         ; 4 uses
  %i.cg = zext i8 %.lcssa152164 to i32            ; 2 uses
  %i.ch = sub nuw nsw i32 8, %i.cg                ; 2 uses
  %i.ci = icmp ult i8 %.lcssa152164, 9
  br i1 %i.ci, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 61) #6
  call void @abort() #7
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cj = icmp eq i8 %.lcssa152164, 8
  br i1 %i.cj, label %..thread_crit_edge.i90, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i78 = load i32, ptr %i.bx, align 8, !tbaa !26 ; 4 uses
  %.val13.i.i79 = load i32, ptr %i.by, align 4, !tbaa !24
  %i.ck = sub nsw i32 %.val13.i.i79, %.val.i.i78
  %.not.i.i80 = icmp slt i32 %i.ck, %i.ch
  br i1 %.not.i.i80, label %.critedge68, label %cbs_vp8_bool_decoder_fill_value.exit.i81

cbs_vp8_bool_decoder_fill_value.exit.i81:         ; preds = %bb.o
  %i.cl = load i32, ptr %i.bz, align 8, !tbaa !25
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.cn = lshr i32 %.val.i.i78, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !50
  %i.cr = call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = and i32 %.val.i.i78, 7
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = add nuw nsw i32 %i.cg, 24
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = add i32 %.val.i.i78, %i.ch
  %i.cx = call i32 @llvm.umin.i32(i32 %i.cl, i32 %i.cw)
  store i32 %i.cx, ptr %i.bx, align 8, !tbaa !26
  %i.cy = load i8, ptr %i.e, align 8, !tbaa !41
  %i.cz = trunc nuw i32 %i.cv to i8
  %i.da = or i8 %i.cy, %i.cz                      ; 2 uses
  store i8 %i.da, ptr %i.e, align 8, !tbaa !41
  store i8 8, ptr %i.d, align 2, !tbaa !43
  br label %.thread.i82

..thread_crit_edge.i90:                           ; preds = %bb.n
  %.pre.i92 = load i8, ptr %i.e, align 8, !tbaa !41
  br label %.thread.i82

.thread.i82:                                      ; preds = %..thread_crit_edge.i90, %cbs_vp8_bool_decoder_fill_value.exit.i81
  %i.db = phi i8 [ %.pre.i92, %..thread_crit_edge.i90 ], [ %i.da, %cbs_vp8_bool_decoder_fill_value.exit.i81 ] ; 3 uses
  %.not.i83 = icmp ult i8 %i.db, %i.cf
  br i1 %.not.i83, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread.i82
  %i.dc = sub i8 %.lcssa153162, %i.cf
  %i.dd = sub nuw i8 %i.db, %i.cf                 ; 2 uses
  store i8 %i.dd, ptr %i.e, align 8, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %.thread.i82, %bb.p
  %.promoted.i87 = phi i8 [ %i.dd, %bb.p ], [ %i.db, %.thread.i82 ]
  %.0100 = phi i32 [ 1, %bb.p ], [ 0, %.thread.i82 ]
  %.sink.i84 = phi i8 [ %i.dc, %bb.p ], [ %i.cf, %.thread.i82 ] ; 4 uses
  store i8 %.sink.i84, ptr %i.c, align 1, !tbaa !42
  %i.de = icmp sgt i8 %.sink.i84, -1
  br i1 %i.de, label %.lr.ph.i86, label %bb.r

.lr.ph.i86:                                       ; preds = %bb.q, %.lr.ph.i86
  %i.df = phi i8 [ %i.dk, %.lr.ph.i86 ], [ 8, %bb.q ]
  %i.dg = phi i8 [ %i.di, %.lr.ph.i86 ], [ %.promoted.i87, %bb.q ]
  %i.dh = phi i8 [ %i.dj, %.lr.ph.i86 ], [ %.sink.i84, %bb.q ]
  %i.di = shl i8 %i.dg, 1                         ; 2 uses
  %i.dj = shl nuw i8 %i.dh, 1                     ; 4 uses
  %i.dk = add i8 %i.df, -1                        ; 3 uses
  %i.dl = icmp sgt i8 %i.dj, -1
  br i1 %i.dl, label %.lr.ph.i86, label %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i89, !llvm.loop !55

.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i89: ; preds = %.lr.ph.i86
  store i8 %i.di, ptr %i.e, align 8, !tbaa !41
  store i8 %i.dj, ptr %i.c, align 1, !tbaa !42
  store i8 %i.dk, ptr %i.d, align 2, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i89, %bb.q
  %.lcssa152165 = phi i8 [ %i.dk, %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i89 ], [ 8, %bb.q ]
  %.lcssa153163 = phi i8 [ %i.dj, %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i89 ], [ %.sink.i84, %bb.q ]
  %i.dm = shl i32 %.033.i70, 1
  %i.dn = or disjoint i32 %.0100, %i.dm           ; 3 uses
  %i.do = add nsw i32 %.01117.i.i71, -1           ; 2 uses
  %.not.i.i74 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i74, label %bb.s, label %bb.l, !llvm.loop !89

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i69, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val30.i = load i32, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %.val.i = load i32, ptr %i.bx, align 8, !tbaa !26 ; 2 uses
  %.not29.i = icmp sgt i32 %.val30.i, %.val.i
  br i1 %.not29.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.dq = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.dr = sub nsw i32 %.val.i, %.val30.i
  %i.ds = zext i32 %i.dn to i64
  call void %i.dp(ptr noundef %i.dq, ptr noundef nonnull %3, i32 noundef %i.dr, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a, i64 noundef %i.ds) #6, !inline_history !90
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.dt = trunc i32 %i.dn to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !50
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond, label %.thread, label %bb.b, !llvm.loop !104

.critedge68:                                      ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %.critedge

.thread:                                          ; preds = %bb.x
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next181, 3
  br i1 %exitcond183.not, label %bb.y, label %.preheader, !llvm.loop !105

bb.y:                                             ; preds = %.thread
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next185, 8
  br i1 %exitcond187.not, label %bb.z, label %.preheader140, !llvm.loop !106

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next189, 4
  br i1 %exitcond191.not, label %.critedge, label %.preheader141, !llvm.loop !107

.critedge:                                        ; preds = %bb.z, %bb.e, %.critedge68
  %i.dv = phi i32 [ -1094995529, %bb.e ], [ -1094995529, %.critedge68 ], [ 0, %bb.z ]
  ret i32 %i.dv
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp8_read_update_mv_probs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.GetBitContext, align 8      ; 6 uses
  %i.a = alloca [3 x i32], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2210
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2248
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.thread
  %i.m = phi i1 [ true, %bb.a ], [ false, %.thread ]
  %indvars.iv142 = phi i64 [ 0, %bb.a ], [ 1, %.thread ] ; 3 uses
  %i.n = getelementptr inbounds nuw [19 x i8], ptr %i.f, i64 %indvars.iv142
  %i.o = getelementptr inbounds nuw [19 x i8], ptr %i.l, i64 %indvars.iv142
  %i.p = trunc nuw nsw i64 %indvars.iv142 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.x ] ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !38     ; 4 uses
  %.promoted = load i8, ptr %i.c, align 1, !tbaa !42 ; 2 uses
  %.promoted122 = load i8, ptr %i.d, align 2, !tbaa !43 ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8        ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = zext i8 %.promoted to i16
  %i.v = shl nuw nsw i16 %i.u, 7
  %i.w = add nsw i16 %i.v, -128
  %i.x = lshr i16 %i.w, 8
  %i.y = trunc nuw i16 %i.x to i8
  %i.z = add i8 %i.y, 1                           ; 4 uses
  %i.aa = zext i8 %.promoted122 to i32            ; 2 uses
  %i.ab = sub nuw nsw i32 8, %i.aa                ; 3 uses
  %i.ac = icmp ult i8 %.promoted122, 9
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 61) #6
  call void @abort() #7
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ad = icmp eq i8 %.promoted122, 8
  br i1 %i.ad, label %..thread_crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.r, align 8, !tbaa !26 ; 4 uses
  %.val13.i.i = load i32, ptr %i.s, align 4, !tbaa !24
  %i.ae = sub nsw i32 %.val13.i.i, %.val.i.i
  %.not.i.i52 = icmp slt i32 %i.ae, %i.ab
  br i1 %.not.i.i52, label %.critedge, label %cbs_vp8_bool_decoder_fill_value.exit.i

cbs_vp8_bool_decoder_fill_value.exit.i:           ; preds = %bb.e
  %i.af = load i32, ptr %i.t, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.ah = lshr i32 %.val.i.i, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !50
  %i.al = call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = and i32 %.val.i.i, 7
  %i.an = shl i32 %i.al, %i.am
  %i.ao = add nuw nsw i32 %i.aa, 24
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = add i32 %.val.i.i, %i.ab
  %i.ar = call i32 @llvm.umin.i32(i32 %i.af, i32 %i.aq)
  store i32 %i.ar, ptr %i.r, align 8, !tbaa !26
  %i.as = load i8, ptr %i.e, align 8, !tbaa !41
  %i.at = trunc nuw i32 %i.ap to i8
  %i.au = or i8 %i.as, %i.at                      ; 2 uses
  store i8 %i.au, ptr %i.e, align 8, !tbaa !41
  %4 = trunc nuw nsw i32 %i.ab to i8
  %5 = add nuw nsw i8 %.promoted122, %4           ; 2 uses
  store i8 %5, ptr %i.d, align 2, !tbaa !43
  br label %.thread.i

..thread_crit_edge.i:                             ; preds = %bb.d
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !41
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %cbs_vp8_bool_decoder_fill_value.exit.i
  %.lcssa125 = phi i8 [ 8, %..thread_crit_edge.i ], [ %5, %cbs_vp8_bool_decoder_fill_value.exit.i ]
  %i.av = phi i8 [ %.pre.i, %..thread_crit_edge.i ], [ %i.au, %cbs_vp8_bool_decoder_fill_value.exit.i ] ; 3 uses
  %.not.i53 = icmp ult i8 %i.av, %i.z             ; 2 uses
  br i1 %.not.i53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i
  %i.aw = sub i8 %.promoted, %i.z
  %i.ax = sub nuw i8 %i.av, %i.z                  ; 2 uses
  store i8 %i.ax, ptr %i.e, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  %.promoted.i = phi i8 [ %i.ax, %bb.f ], [ %i.av, %.thread.i ]
  %.075 = phi i8 [ 1, %bb.f ], [ 0, %.thread.i ]
  %.sink.i = phi i8 [ %i.aw, %bb.f ], [ %i.z, %.thread.i ] ; 3 uses
  store i8 %.sink.i, ptr %i.c, align 1, !tbaa !42
  %i.ay = icmp sgt i8 %.sink.i, -1
  br i1 %i.ay, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.az = phi i8 [ %i.be, %.lr.ph.i ], [ %.lcssa125, %bb.g ]
  %i.ba = phi i8 [ %i.bc, %.lr.ph.i ], [ %.promoted.i, %bb.g ]
  %i.bb = phi i8 [ %i.bd, %.lr.ph.i ], [ %.sink.i, %bb.g ]
  %i.bc = shl i8 %i.ba, 1                         ; 2 uses
  %i.bd = shl nuw i8 %i.bb, 1                     ; 3 uses
  %i.be = add i8 %i.az, -1                        ; 2 uses
  %i.bf = icmp sgt i8 %i.bd, -1
  br i1 %i.bf, label %.lr.ph.i, label %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i, !llvm.loop !55

.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  store i8 %i.bc, ptr %i.e, align 8, !tbaa !41
  store i8 %i.bd, ptr %i.c, align 1, !tbaa !42
  store i8 %i.be, ptr %i.d, align 2, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 %.075, ptr %i.bg, align 1, !tbaa !50
  br i1 %.not.i53, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %i.a, align 4, !tbaa !27
  store i32 %i.p, ptr %i.g, align 4, !tbaa !27
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bh, ptr %i.h, align 4, !tbaa !27
  %i.bi = load ptr, ptr %1, align 8, !tbaa !38    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !44
  %.not.i45 = icmp eq i32 %i.bj, 0                ; 2 uses
  br i1 %.not.i45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !tbaa.struct !48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.lcssa114.promoted = load i8, ptr %i.c, align 1, !tbaa !42
  %.lcssa111.promoted = load i8, ptr %i.d, align 2, !tbaa !43
  %i.bk = getelementptr i8, ptr %i.bi, i64 8      ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %bb.k
  %.lcssa116128 = phi i8 [ %.lcssa111.promoted, %bb.k ], [ %.lcssa116129, %bb.r ] ; 3 uses
  %.lcssa117126 = phi i8 [ %.lcssa114.promoted, %bb.k ], [ %.lcssa117127, %bb.r ] ; 2 uses
  %.033.i46 = phi i32 [ 0, %bb.k ], [ %i.da, %bb.r ]
  %.01117.i.i47 = phi i32 [ 7, %bb.k ], [ %i.db, %bb.r ]
  %i.bn = zext i8 %.lcssa117126 to i16
  %i.bo = shl nuw nsw i16 %i.bn, 7
  %i.bp = add nsw i16 %i.bo, -128
  %i.bq = lshr i16 %i.bp, 8
  %i.br = trunc nuw i16 %i.bq to i8
  %i.bs = add i8 %i.br, 1                         ; 4 uses
  %i.bt = zext i8 %.lcssa116128 to i32            ; 2 uses
  %i.bu = sub nuw nsw i32 8, %i.bt                ; 2 uses
  %i.bv = icmp ult i8 %.lcssa116128, 9
  br i1 %i.bv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef 61) #6
  call void @abort() #7
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bw = icmp eq i8 %.lcssa116128, 8
  br i1 %i.bw, label %..thread_crit_edge.i66, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i54 = load i32, ptr %i.bk, align 8, !tbaa !26 ; 4 uses
  %.val13.i.i55 = load i32, ptr %i.bl, align 4, !tbaa !24
  %i.bx = sub nsw i32 %.val13.i.i55, %.val.i.i54
  %.not.i.i56 = icmp slt i32 %i.bx, %i.bu
  br i1 %.not.i.i56, label %.critedge44, label %cbs_vp8_bool_decoder_fill_value.exit.i57

cbs_vp8_bool_decoder_fill_value.exit.i57:         ; preds = %bb.o
  %i.by = load i32, ptr %i.bm, align 8, !tbaa !25
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !22
  %i.ca = lshr i32 %.val.i.i54, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !50
  %i.ce = call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cf = and i32 %.val.i.i54, 7
  %i.cg = shl i32 %i.ce, %i.cf
  %i.ch = add nuw nsw i32 %i.bt, 24
  %i.ci = lshr i32 %i.cg, %i.ch
  %i.cj = add i32 %.val.i.i54, %i.bu
  %i.ck = call i32 @llvm.umin.i32(i32 %i.by, i32 %i.cj)
  store i32 %i.ck, ptr %i.bk, align 8, !tbaa !26
  %i.cl = load i8, ptr %i.e, align 8, !tbaa !41
  %i.cm = trunc nuw i32 %i.ci to i8
  %i.cn = or i8 %i.cl, %i.cm                      ; 2 uses
  store i8 %i.cn, ptr %i.e, align 8, !tbaa !41
  store i8 8, ptr %i.d, align 2, !tbaa !43
  br label %.thread.i58

..thread_crit_edge.i66:                           ; preds = %bb.n
  %.pre.i68 = load i8, ptr %i.e, align 8, !tbaa !41
  br label %.thread.i58

.thread.i58:                                      ; preds = %..thread_crit_edge.i66, %cbs_vp8_bool_decoder_fill_value.exit.i57
  %i.co = phi i8 [ %.pre.i68, %..thread_crit_edge.i66 ], [ %i.cn, %cbs_vp8_bool_decoder_fill_value.exit.i57 ] ; 3 uses
  %.not.i59 = icmp ult i8 %i.co, %i.bs
  br i1 %.not.i59, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread.i58
  %i.cp = sub i8 %.lcssa117126, %i.bs
  %i.cq = sub nuw i8 %i.co, %i.bs                 ; 2 uses
  store i8 %i.cq, ptr %i.e, align 8, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %.thread.i58, %bb.p
  %.promoted.i63 = phi i8 [ %i.cq, %bb.p ], [ %i.co, %.thread.i58 ]
  %.076 = phi i32 [ 1, %bb.p ], [ 0, %.thread.i58 ]
  %.sink.i60 = phi i8 [ %i.cp, %bb.p ], [ %i.bs, %.thread.i58 ] ; 4 uses
  store i8 %.sink.i60, ptr %i.c, align 1, !tbaa !42
  %i.cr = icmp sgt i8 %.sink.i60, -1
  br i1 %i.cr, label %.lr.ph.i62, label %bb.r

.lr.ph.i62:                                       ; preds = %bb.q, %.lr.ph.i62
  %i.cs = phi i8 [ %i.cx, %.lr.ph.i62 ], [ 8, %bb.q ]
  %i.ct = phi i8 [ %i.cv, %.lr.ph.i62 ], [ %.promoted.i63, %bb.q ]
  %i.cu = phi i8 [ %i.cw, %.lr.ph.i62 ], [ %.sink.i60, %bb.q ]
  %i.cv = shl i8 %i.ct, 1                         ; 2 uses
  %i.cw = shl nuw i8 %i.cu, 1                     ; 4 uses
  %i.cx = add i8 %i.cs, -1                        ; 3 uses
  %i.cy = icmp sgt i8 %i.cw, -1
  br i1 %i.cy, label %.lr.ph.i62, label %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i65, !llvm.loop !55

.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i65: ; preds = %.lr.ph.i62
  store i8 %i.cv, ptr %i.e, align 8, !tbaa !41
  store i8 %i.cw, ptr %i.c, align 1, !tbaa !42
  store i8 %i.cx, ptr %i.d, align 2, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i65, %bb.q
  %.lcssa116129 = phi i8 [ %i.cx, %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i65 ], [ 8, %bb.q ]
  %.lcssa117127 = phi i8 [ %i.cw, %.cbs_vp8_bool_decoder_fill_value.exit.thread20.loopexit_crit_edge.i65 ], [ %.sink.i60, %bb.q ]
  %i.cz = shl i32 %.033.i46, 1
  %i.da = or disjoint i32 %.076, %i.cz            ; 3 uses
  %i.db = add nsw i32 %.01117.i.i47, -1           ; 2 uses
  %.not.i.i50 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i50, label %bb.s, label %bb.l, !llvm.loop !89

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i45, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val30.i = load i32, ptr %i.i, align 8, !tbaa !26 ; 2 uses
  %.val.i = load i32, ptr %i.bk, align 8, !tbaa !26 ; 2 uses
  %.not29.i = icmp sgt i32 %.val30.i, %.val.i
  br i1 %.not29.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 144) #6
  call void @abort() #7
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.de = sub nsw i32 %.val.i, %.val30.i
  %i.df = zext i32 %i.da to i64
  call void %i.dc(ptr noundef %i.dd, ptr noundef nonnull %3, i32 noundef %i.de, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.a, i64 noundef %i.df) #6, !inline_history !90
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.dg = trunc i32 %i.da to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !50
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond, label %.thread, label %bb.b, !llvm.loop !108

.critedge44:                                      ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %.critedge

.thread:                                          ; preds = %bb.x
  br i1 %i.m, label %.preheader, label %.critedge, !llvm.loop !109

.critedge:                                        ; preds = %.thread, %bb.e, %.critedge44
  %i.di = phi i32 [ -1094995529, %bb.e ], [ -1094995529, %.critedge44 ], [ 0, %.thread ]
  ret i32 %i.di
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp8_bool_decoder_read_bool(ptr nofree noundef nonnull captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !42
  %i.c = zext i8 %i.b to i16
  %i.d = add nsw i16 %i.c, -1
  %i.e = zext i8 %1 to i16
  %i.f = mul i16 %i.d, %i.e
  %i.g = lshr i16 %i.f, 8
end_hunk_4
