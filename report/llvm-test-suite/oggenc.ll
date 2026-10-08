Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@ov_crosslap:bb.a
  %i.g = icmp slt i32 %i.f, 2
  br i1 %i.g, label %_ov_initset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %_ov_initset.exit, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.d
  %i.k = load i32, ptr %i.e, align 8
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.m = tail call fastcc i32 @_fetch_and_process_packet(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = icmp eq i32 %i.m, -3
  %or.cond.not.i = or i1 %i.n, %i.o
  br i1 %or.cond.not.i, label %.preheader, label %_ov_initset.exit

bb.e:                                             ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 616
  br label %bb.f

bb.f:                                             ; preds = %vorbis_synthesis_pcmout.exit.thread.i, %bb.e
  %i.r = load i32, ptr %i.h, align 8
  %i.s = icmp eq i32 %i.r, 4
  br i1 %i.s, label %bb.g, label %vorbis_synthesis_pcmout.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.q, align 8              ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.h, label %vorbis_synthesis_pcmout.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.p, align 4
  %.not.i = icmp slt i32 %i.t, %i.v
  br i1 %.not.i, label %bb.i, label %vorbis_synthesis_pcmout.exit.thread.i

vorbis_synthesis_pcmout.exit.thread.i:            ; preds = %bb.h, %bb.g, %bb.f
  %i.w = tail call fastcc i32 @_fetch_and_process_packet(ptr noundef nonnull %1, i32 noundef 0) ; 3 uses
  %i.x = icmp sgt i32 %i.w, -1
  %i.y = icmp eq i32 %i.w, -3
  %or.cond.not.i48 = or i1 %i.x, %i.y
  br i1 %or.cond.not.i48, label %bb.f, label %_ov_initset.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %.not.i50 = icmp eq i32 %i.aa, 0
  br i1 %.not.i50, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.e, align 8
  %i.ac = icmp sgt i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  br i1 %i.ac, label %bb.k, label %ov_info.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [56 x i8], ptr %i.ae, i64 %i.ah
  br label %ov_info.exit

bb.l:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  br label %ov_info.exit

ov_info.exit:                                     ; preds = %bb.j, %bb.k, %bb.l
  %i.al = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %i.ak, %bb.l ] ; 2 uses
  %.0.i = phi ptr [ %i.ai, %bb.k ], [ %i.ae, %bb.j ], [ %i.ak, %bb.l ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %.not.i51 = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  br i1 %.not.i51, label %ov_info.exit53, label %bb.m

bb.m:                                             ; preds = %ov_info.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [56 x i8], ptr %i.ap, i64 %i.as
  br label %ov_info.exit53

ov_info.exit53:                                   ; preds = %ov_info.exit, %bb.m
  %.0.i52 = phi ptr [ %i.at, %bb.m ], [ %i.ap, %ov_info.exit ] ; 2 uses
  %i.au = icmp eq ptr %i.al, null
  br i1 %i.au, label %ov_halfrate_p.exit, label %bb.n

bb.n:                                             ; preds = %ov_info.exit53
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 5808
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = add nsw i32 %i.ay, 1
  br label %ov_halfrate_p.exit

ov_halfrate_p.exit:                               ; preds = %ov_info.exit53, %bb.n
  %.0.i54 = phi i32 [ %i.az, %bb.n ], [ -130, %ov_info.exit53 ]
  %i.ba = icmp eq ptr %i.ap, null
  br i1 %i.ba, label %ov_halfrate_p.exit56, label %bb.o

bb.o:                                             ; preds = %ov_halfrate_p.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 5808
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, 1
  br label %ov_halfrate_p.exit56

ov_halfrate_p.exit56:                             ; preds = %ov_halfrate_p.exit, %bb.o
  %.0.i55 = phi i32 [ %i.bf, %bb.o ], [ -130, %ov_halfrate_p.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 4 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = alloca i8, i64 %i.bj, align 16          ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i57 = icmp eq ptr %i.bm, null
  br i1 %.not.i57, label %vorbis_info_blocksize.exit, label %bb.p

bb.p:                                             ; preds = %ov_halfrate_p.exit56
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = trunc i64 %i.bn to i32
  br label %vorbis_info_blocksize.exit

vorbis_info_blocksize.exit:                       ; preds = %ov_halfrate_p.exit56, %bb.p
  %i.bp = phi i32 [ %i.bo, %bb.p ], [ -1, %ov_halfrate_p.exit56 ]
  %i.bq = ashr i32 %i.bp, %.0.i54                 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i52, i64 48
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i58 = icmp eq ptr %i.bs, null
  br i1 %.not.i58, label %vorbis_info_blocksize.exit59, label %bb.q

bb.q:                                             ; preds = %vorbis_info_blocksize.exit
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = trunc i64 %i.bt to i32
  br label %vorbis_info_blocksize.exit59

vorbis_info_blocksize.exit59:                     ; preds = %vorbis_info_blocksize.exit, %bb.q
  %i.bv = phi i32 [ %i.bu, %bb.q ], [ -1, %vorbis_info_blocksize.exit ]
  %i.bw = ashr i32 %i.bv, %.0.i55                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %vorbis_window.exit, label %bb.r

bb.r:                                             ; preds = %vorbis_info_blocksize.exit59
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 5808
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = sub nsw i32 %i.cb, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8
  br label %vorbis_window.exit

vorbis_window.exit:                               ; preds = %vorbis_info_blocksize.exit59, %bb.r
  %.0.i60 = phi ptr [ %i.cm, %bb.r ], [ null, %vorbis_info_blocksize.exit59 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %vorbis_window.exit62, label %bb.s

bb.s:                                             ; preds = %vorbis_window.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 5808
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = sub nsw i32 %i.cr, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8
  br label %vorbis_window.exit62

vorbis_window.exit62:                             ; preds = %vorbis_window.exit, %bb.s
  %.0.i61 = phi ptr [ %i.dc, %bb.s ], [ null, %vorbis_window.exit ]
  %i.dd = icmp sgt i32 %i.bh, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %vorbis_window.exit62
  %i.de = sext i32 %i.bq to i64
  %i.df = shl nsw i64 %i.de, 2                    ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bh to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bh, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %2 = alloca i8, i64 %i.df, align 16
  %3 = alloca i8, i64 %i.df, align 16
  %4 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %3, i64 1
  %6 = alloca i8, i64 %i.df, align 16
  %i.dg = alloca i8, i64 %i.df, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %6, i64 0
  %7 = insertelement <2 x ptr> %broadcast.splatinsert, ptr %i.dg, i64 1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x ptr> %5, ptr %i.dh, align 16
  store <2 x ptr> %7, ptr %i.di, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dk = alloca i8, i64 %i.df, align 16
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  store ptr %i.dk, ptr %i.dl, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !323

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %vorbis_window.exit62
  call fastcc void @_ov_getlap(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.bx, ptr noundef %i.bk, i32 noundef %i.bq)
  %i.dm = call i32 @vorbis_synthesis_lapout(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.c) ; 0 uses
  %i.dn = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = shl nuw nsw i32 %i.bq, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  %i.dq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.131, ptr noundef nonnull @.str.127, i32 noundef 0) #62 ; 0 uses
  %i.dr = call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.132) ; 4 uses
  %.not.i63 = icmp eq ptr %i.dr, null
  br i1 %.not.i63, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  call void @perror(ptr noundef nonnull @.str.133) #64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.ds = icmp sgt i32 %i.bq, 0                   ; 2 uses
  br i1 %i.ds, label %.lr.ph.i, label %_analysis_output_always.exit

.lr.ph.i:                                         ; preds = %bb.u
  %wide.trip.count71.i = zext nneg i32 %i.dp to i64
  br label %.lr.ph.split.us.split.us.split.us.i

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.split.us.i, %.lr.ph.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %.lr.ph.split.us.split.us.split.us.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv68.i to i32
  %i.du = uitofp nneg i32 %i.dt to double
  %i.dv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.134, double noundef %i.du) #62 ; 0 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv68.i
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = fpext float %i.dx to double
  %i.dz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.135, double noundef %i.dy) #62 ; 0 uses
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count71.i
  br i1 %exitcond72.not.i, label %_analysis_output_always.exit, label %.lr.ph.split.us.split.us.split.us.i, !llvm.loop !19

_analysis_output_always.exit:                     ; preds = %.lr.ph.split.us.split.us.split.us.i, %bb.u
  %i.ea = call i32 @fclose(ptr noundef %i.dr)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.ed = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.131, ptr noundef nonnull @.str.128, i32 noundef 0) #62 ; 0 uses
  %i.ee = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.132) ; 4 uses
  %.not.i64 = icmp eq ptr %i.ee, null
  br i1 %.not.i64, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_analysis_output_always.exit
  call void @perror(ptr noundef nonnull @.str.133) #64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_analysis_output_always.exit
  br i1 %i.ds, label %.lr.ph.i65, label %_analysis_output_always.exit71

.lr.ph.i65:                                       ; preds = %bb.w
  %wide.trip.count71.i66 = zext nneg i32 %i.dp to i64
  br label %.lr.ph.split.us.split.us.split.us.i67

.lr.ph.split.us.split.us.split.us.i67:            ; preds = %.lr.ph.split.us.split.us.split.us.i67, %.lr.ph.i65
  %indvars.iv68.i68 = phi i64 [ %indvars.iv.next69.i69, %.lr.ph.split.us.split.us.split.us.i67 ], [ 0, %.lr.ph.i65 ] ; 3 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv68.i68 to i32
  %i.eg = uitofp nneg i32 %i.ef to double
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.134, double noundef %i.eg) #62 ; 0 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv68.i68
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = fpext float %i.ej to double
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.135, double noundef %i.ek) #62 ; 0 uses
  %indvars.iv.next69.i69 = add nuw nsw i64 %indvars.iv68.i68, 1 ; 2 uses
  %exitcond72.not.i70 = icmp eq i64 %indvars.iv.next69.i69, %wide.trip.count71.i66
  br i1 %exitcond72.not.i70, label %_analysis_output_always.exit71, label %.lr.ph.split.us.split.us.split.us.i67, !llvm.loop !19

_analysis_output_always.exit71:                   ; preds = %.lr.ph.split.us.split.us.split.us.i67, %bb.w
  %i.em = call i32 @fclose(ptr noundef %i.ee)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  %i.en = load i32, ptr %i.bg, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i52, i64 4
  %i.ep = load i32, ptr %i.eo, align 4            ; 3 uses
  %i.eq = icmp sgt i32 %i.bq, %i.bw
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bw) ; 6 uses
  %spec.select53.i = select i1 %i.eq, ptr %.0.i61, ptr %.0.i60 ; 12 uses
  %invariant.smin.i = call i32 @llvm.smin.i32(i32 %i.en, i32 %i.ep) ; 3 uses
  %i.er = icmp sgt i32 %invariant.smin.i, 0
  br i1 %i.er, label %.lr.ph57.i, label %.preheader.i

.lr.ph57.i:                                       ; preds = %_analysis_output_always.exit71
  %i.es = icmp sgt i32 %spec.select.i, 0
  br i1 %i.es, label %.lr.ph.us.preheader.i, label %_ov_initset.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph57.i
  %wide.trip.count68.i = zext nneg i32 %invariant.smin.i to i64
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64 ; 6 uses
  %i.et = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %scevgep105 = getelementptr i8, ptr %spec.select53.i, i64 %i.et
  %min.iters.check111 = icmp ult i32 %spec.select.i, 8
  %n.vec113 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n123 = icmp eq i64 %n.vec113, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.eu = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next66.i, %._crit_edge.us.i ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv65.i
  %i.ew = load ptr, ptr %i.ev, align 8            ; 6 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv65.i
  %i.ey = load ptr, ptr %i.ex, align 8            ; 7 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i
  %scevgep = getelementptr i8, ptr %i.ey, i64 %i.et ; 2 uses
  %scevgep106 = getelementptr i8, ptr %i.ew, i64 %i.et
  %bound0 = icmp ult ptr %i.ey, %scevgep105
  %bound1 = icmp ult ptr %spec.select53.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0107 = icmp ult ptr %i.ey, %scevgep106
  %bound1108 = icmp ult ptr %i.ew, %scevgep
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx = or i1 %found.conflict, %found.conflict109
  br i1 %conflict.rdx, label %scalar.ph110.preheader, label %vector.body114

vector.body114:                                   ; preds = %vector.memcheck, %vector.body114
  %index115 = phi i64 [ %index.next121, %vector.body114 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %index115 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <4 x float>, ptr %i.ez, align 4, !alias.scope !335 ; 2 uses
  %wide.load116 = load <4 x float>, ptr %i.fa, align 4, !alias.scope !335 ; 2 uses
  %i.fb = fmul <4 x float> %wide.load, %wide.load ; 2 uses
  %i.fc = fmul <4 x float> %wide.load116, %wide.load116 ; 2 uses
  %i.fd = fsub <4 x float> splat (float 1.000000e+00), %i.fb
  %i.fe = fsub <4 x float> splat (float 1.000000e+00), %i.fc
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index115 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load117 = load <4 x float>, ptr %i.ff, align 4, !alias.scope !336, !noalias !337
  %wide.load118 = load <4 x float>, ptr %i.fg, align 4, !alias.scope !336, !noalias !337
  %i.fh = fmul <4 x float> %wide.load117, %i.fb
  %i.fi = fmul <4 x float> %wide.load118, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %index115 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load119 = load <4 x float>, ptr %i.fj, align 4, !alias.scope !338
  %wide.load120 = load <4 x float>, ptr %i.fk, align 4, !alias.scope !338
  %i.fl = fmul <4 x float> %wide.load119, %i.fd
  %i.fm = fmul <4 x float> %wide.load120, %i.fe
  %i.fn = fadd <4 x float> %i.fh, %i.fl
  %i.fo = fadd <4 x float> %i.fi, %i.fm
  store <4 x float> %i.fn, ptr %i.ff, align 4, !alias.scope !336, !noalias !337
  store <4 x float> %i.fo, ptr %i.fg, align 4, !alias.scope !336, !noalias !337
  %index.next121 = add nuw i64 %index115, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next121, %n.vec113
  br i1 %i.fp, label %middle.block122, label %vector.body114, !llvm.loop !328

middle.block122:                                  ; preds = %vector.body114
  br i1 %cmp.n123, label %._crit_edge.us.i, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block122
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec113, %middle.block122 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph110.prol.loopexit, label %scalar.ph110.prol

scalar.ph110.prol:                                ; preds = %scalar.ph110.preheader
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %indvars.iv.i.ph
  %i.fr = load float, ptr %i.fq, align 4          ; 2 uses
  %i.fs = fmul float %i.fr, %i.fr                 ; 2 uses
  %i.ft = fsub float 1.000000e+00, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i.ph ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = fmul float %i.fv, %i.fs
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i.ph
  %i.fy = load float, ptr %i.fx, align 4
  %i.fz = fmul float %i.fy, %i.ft
  %i.ga = fadd float %i.fw, %i.fz
  store float %i.ga, ptr %i.fu, align 4
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph110.prol.loopexit

scalar.ph110.prol.loopexit:                       ; preds = %scalar.ph110.prol, %scalar.ph110.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph110.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph110.prol ]
  %i.gb = icmp eq i64 %indvars.iv.i.ph, %i.eu
  br i1 %i.gb, label %._crit_edge.us.i, label %scalar.ph110
end_hunk_0
begin_hunk_1_@_analysis_output_always:bb.a
  %i.at = fpext float %i.as to double
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.split.split
  %.0.us = phi double [ %i.at, %bb.f ], [ -1.400000e+02, %.lr.ph.split.us.split.split ]
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.135, double noundef %.0.us) #62 ; 0 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count71
  br i1 %exitcond57.not, label %._crit_edge, label %.lr.ph.split.us.split.split, !llvm.loop !19

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not38, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split.split.us
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.av = trunc nuw nsw i64 %indvars.iv48 to i32
  %i.aw = uitofp nneg i32 %i.av to float
  %i.ax = fmul nnan float %i.aw, 4.000000e+03
  %i.ay = fdiv float %i.ax, %i.e
  %i.az = fpext float %i.ay to double
  %i.ba = fadd double %i.az, 2.500000e-01         ; 4 uses
  %i.bb = fmul double %i.ba, f0x3F483F91E0000000
  %i.bc = tail call double @atan(double noundef %i.bb) #62
  %i.bd = fmul double %i.bc, f0x402A333340000000
  %i.be = fmul double %i.ba, %i.ba
  %i.bf = fmul double %i.be, f0x3E53DD3DC0000000
  %i.bg = tail call double @atan(double noundef %i.bf) #62
  %i.bh = fmul double %i.bg, f0x4001EB8520000000
  %i.bi = fadd double %i.bd, %i.bh
  %i.bj = fmul double %i.ba, f0x3F1A36E2E0000000
  %i.bk = fadd double %i.bj, %i.bi
  %i.bl = fptrunc double %i.bk to float
  %i.bm = fpext float %i.bl to double
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.134, double noundef %i.bm) #62 ; 0 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv48
  %i.bp = load float, ptr %i.bo, align 4
  %i.bq = fpext float %i.bp to double
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.135, double noundef %i.bq) #62 ; 0 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count71
  br i1 %exitcond52.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !19

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32
  %i.bt = uitofp nneg i32 %i.bs to float
  %i.bu = fmul nnan float %i.bt, 4.000000e+03
  %i.bv = fdiv float %i.bu, %i.e
  %i.bw = fpext float %i.bv to double
  %i.bx = fadd double %i.bw, 2.500000e-01         ; 4 uses
  %i.by = fmul double %i.bx, f0x3F483F91E0000000
  %i.bz = tail call double @atan(double noundef %i.by) #62
  %i.ca = fmul double %i.bz, f0x402A333340000000
  %i.cb = fmul double %i.bx, %i.bx
  %i.cc = fmul double %i.cb, f0x3E53DD3DC0000000
  %i.cd = tail call double @atan(double noundef %i.cc) #62
  %i.ce = fmul double %i.cd, f0x4001EB8520000000
  %i.cf = fadd double %i.ca, %i.ce
  %i.cg = fmul double %i.bx, f0x3F1A36E2E0000000
  %i.ch = fadd double %i.cg, %i.cf
  %i.ci = fptrunc double %i.ch to float
  %i.cj = fpext float %i.ci to double
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.134, double noundef %i.cj) #62 ; 0 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cm = load float, ptr %i.cl, align 4          ; 2 uses
  %i.cn = fcmp oeq float %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split
  %i.co = tail call float @llvm.fabs.f32(float %i.cm)
  %i.cp = bitcast float %i.co to i32
  %i.cq = uitofp nneg i32 %i.cp to float
  %i.cr = fmul nnan float %i.cq, f0x3540A8C1
  %i.cs = fadd float %i.cr, f0xC43F115B
  %i.ct = fpext float %i.cs to double
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split, %bb.h
  %.0 = phi double [ %i.ct, %bb.h ], [ -1.400000e+02, %.lr.ph.split.split ]
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.135, double noundef %.0) #62 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count71
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.i, %.lr.ph.split.split.us, %bb.g, %bb.e, %.lr.ph.split.us.split.us.split, %.lr.ph.split.us.split.us.split.us, %bb.c
  %i.cv = tail call i32 @fclose(ptr noundef %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_raw_seek_lap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_ov_64_seek_lap(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @ov_raw_seek)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_ov_64_seek_lap(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %_ov_initset.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 4
  br i1 %i.e, label %._crit_edge, label %.lr.ph

thread-pre-split:                                 ; preds = %.lr.ph
  %.pr = load i32, ptr %i.b, align 8
  %i.f = icmp eq i32 %.pr, 4
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %thread-pre-split
  %i.g = tail call fastcc i32 @_fetch_and_process_packet(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = icmp eq i32 %i.g, -3
  %or.cond.not.i = or i1 %i.h, %i.i
  br i1 %or.cond.not.i, label %thread-pre-split, label %_ov_initset.exit

._crit_edge:                                      ; preds = %thread-pre-split, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not.i = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  br i1 %.not.i, label %ov_info.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.p
  br label %ov_info.exit

ov_info.exit:                                     ; preds = %._crit_edge, %bb.b
  %.0.i = phi ptr [ %i.q, %bb.b ], [ %i.m, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = icmp eq ptr %i.m, null
  br i1 %i.s, label %ov_halfrate_p.exit, label %bb.c

bb.c:                                             ; preds = %ov_info.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5808
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add nsw i32 %i.w, 1
  br label %ov_halfrate_p.exit

ov_halfrate_p.exit:                               ; preds = %ov_info.exit, %bb.c
  %.0.i50 = phi i32 [ %i.x, %bb.c ], [ -130, %ov_info.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.z = load i32, ptr %i.y, align 4              ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i51 = icmp eq ptr %i.ab, null
  br i1 %.not.i51, label %vorbis_info_blocksize.exit, label %bb.d

bb.d:                                             ; preds = %ov_halfrate_p.exit
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i32
  br label %vorbis_info_blocksize.exit

vorbis_info_blocksize.exit:                       ; preds = %ov_halfrate_p.exit, %bb.d
  %i.ae = phi i32 [ %i.ad, %bb.d ], [ -1, %ov_halfrate_p.exit ]
  %i.af = ashr i32 %i.ae, %.0.i50                 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %vorbis_window.exit, label %bb.e

bb.e:                                             ; preds = %vorbis_info_blocksize.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 5808
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sub nsw i32 %i.ak, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  br label %vorbis_window.exit

vorbis_window.exit:                               ; preds = %vorbis_info_blocksize.exit, %bb.e
  %.0.i52 = phi ptr [ %i.av, %bb.e ], [ null, %vorbis_info_blocksize.exit ]
  %i.aw = sext i32 %i.z to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = alloca i8, i64 %i.ax, align 16          ; 4 uses
  %i.az = icmp sgt i32 %i.z, 0
  br i1 %i.az, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %vorbis_window.exit
  %i.ba = sext i32 %i.af to i64
  %i.bb = shl nsw i64 %i.ba, 2                    ; 5 uses
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph71
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %3 = alloca i8, i64 %i.bb, align 16
  %4 = alloca i8, i64 %i.bb, align 16
  %5 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %4, i64 1
  %7 = alloca i8, i64 %i.bb, align 16
  %i.bc = alloca i8, i64 %i.bb, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %7, i64 0
  %8 = insertelement <2 x ptr> %broadcast.splatinsert, ptr %i.bc, i64 1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x ptr> %6, ptr %i.bd, align 16
  store <2 x ptr> %8, ptr %i.be, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge72, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph71, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph71 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bg = alloca i8, i64 %i.bb, align 16
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  store ptr %i.bg, ptr %i.bh, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge72, label %scalar.ph, !llvm.loop !355

._crit_edge72:                                    ; preds = %scalar.ph, %middle.block, %vorbis_window.exit
  call fastcc void @_ov_getlap(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ag, ptr noundef %i.ay, i32 noundef %i.af)
  %i.bi = call i32 %2(ptr noundef nonnull %0, i64 noundef %1) #62, !callees !367 ; 2 uses
  %.not48 = icmp eq i32 %i.bi, 0
  br i1 %.not48, label %bb.f, label %_ov_initset.exit

bb.f:                                             ; preds = %._crit_edge72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 616
  br label %bb.g

bb.g:                                             ; preds = %vorbis_synthesis_pcmout.exit.thread.i, %bb.f
  %i.bl = load i32, ptr %i.b, align 8
  %i.bm = icmp eq i32 %i.bl, 4
  br i1 %i.bm, label %bb.h, label %vorbis_synthesis_pcmout.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.i, label %vorbis_synthesis_pcmout.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load i32, ptr %i.bj, align 4
  %.not.i55 = icmp slt i32 %i.bn, %i.bp
  br i1 %.not.i55, label %bb.j, label %vorbis_synthesis_pcmout.exit.thread.i

vorbis_synthesis_pcmout.exit.thread.i:            ; preds = %bb.i, %bb.h, %bb.g
  %i.bq = call fastcc i32 @_fetch_and_process_packet(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.br = icmp sgt i32 %i.bq, -1
  %i.bs = icmp eq i32 %i.bq, -3
  %or.cond.not.i53 = or i1 %i.br, %i.bs
  br i1 %or.cond.not.i53, label %bb.g, label %_ov_initset.exit

bb.j:                                             ; preds = %bb.i
  %i.bt = load i32, ptr %i.j, align 8
  %.not.i56 = icmp eq i32 %i.bt, 0
  %i.bu = load ptr, ptr %i.r, align 8             ; 2 uses
  br i1 %.not.i56, label %ov_info.exit58, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [56 x i8], ptr %i.bu, i64 %i.bx
  br label %ov_info.exit58

ov_info.exit58:                                   ; preds = %bb.j, %bb.k
  %.0.i57 = phi ptr [ %i.by, %bb.k ], [ %i.bu, %bb.j ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i57, i64 4
  %i.ca = load i32, ptr %i.bz, align 4            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i57, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i59 = icmp eq ptr %i.cc, null
  br i1 %.not.i59, label %vorbis_info_blocksize.exit60, label %bb.l

bb.l:                                             ; preds = %ov_info.exit58
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = trunc i64 %i.cd to i32
  br label %vorbis_info_blocksize.exit60

vorbis_info_blocksize.exit60:                     ; preds = %ov_info.exit58, %bb.l
  %i.cf = phi i32 [ %i.ce, %bb.l ], [ -1, %ov_info.exit58 ]
  %i.cg = ashr i32 %i.cf, %.0.i50                 ; 2 uses
  %i.ch = load ptr, ptr %i.ah, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %vorbis_window.exit62, label %bb.m

bb.m:                                             ; preds = %vorbis_info_blocksize.exit60
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 5808
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = sub nsw i32 %i.cj, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8
  br label %vorbis_window.exit62

vorbis_window.exit62:                             ; preds = %vorbis_info_blocksize.exit60, %bb.m
  %.0.i61 = phi ptr [ %i.cu, %bb.m ], [ null, %vorbis_info_blocksize.exit60 ]
  %i.cv = call i32 @vorbis_synthesis_lapout(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) ; 0 uses
  %i.cw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cx = icmp sgt i32 %i.af, %i.cg
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.cg) ; 6 uses
  %spec.select53.i = select i1 %i.cx, ptr %.0.i61, ptr %.0.i52 ; 12 uses
  %invariant.smin.i = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.ca) ; 3 uses
  %i.cy = icmp sgt i32 %invariant.smin.i, 0
  br i1 %i.cy, label %.lr.ph57.i, label %.preheader.i

.lr.ph57.i:                                       ; preds = %vorbis_window.exit62
  %i.cz = icmp sgt i32 %spec.select.i, 0
  br i1 %i.cz, label %.lr.ph.us.preheader.i, label %_ov_initset.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph57.i
  %wide.trip.count68.i = zext nneg i32 %invariant.smin.i to i64
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64 ; 6 uses
  %i.da = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %spec.select53.i, i64 %i.da
  %min.iters.check105 = icmp ult i32 %spec.select.i, 8
  %n.vec107 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n117 = icmp eq i64 %n.vec107, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.db = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next66.i, %._crit_edge.us.i ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv65.i
  %i.dd = load ptr, ptr %i.dc, align 8            ; 6 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv65.i
  %i.df = load ptr, ptr %i.de, align 8            ; 7 uses
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i
  %scevgep = getelementptr i8, ptr %i.df, i64 %i.da ; 2 uses
  %scevgep100 = getelementptr i8, ptr %i.dd, i64 %i.da
  %bound0 = icmp ult ptr %i.df, %scevgep99
  %bound1 = icmp ult ptr %spec.select53.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0101 = icmp ult ptr %i.df, %scevgep100
  %bound1102 = icmp ult ptr %i.dd, %scevgep
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx = or i1 %found.conflict, %found.conflict103
  br i1 %conflict.rdx, label %scalar.ph104.preheader, label %vector.body108

vector.body108:                                   ; preds = %vector.memcheck, %vector.body108
  %index109 = phi i64 [ %index.next115, %vector.body108 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %index109 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <4 x float>, ptr %i.dg, align 4, !alias.scope !368 ; 2 uses
  %wide.load110 = load <4 x float>, ptr %i.dh, align 4, !alias.scope !368 ; 2 uses
  %i.di = fmul <4 x float> %wide.load, %wide.load ; 2 uses
  %i.dj = fmul <4 x float> %wide.load110, %wide.load110 ; 2 uses
  %i.dk = fsub <4 x float> splat (float 1.000000e+00), %i.di
  %i.dl = fsub <4 x float> splat (float 1.000000e+00), %i.dj
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index109 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load111 = load <4 x float>, ptr %i.dm, align 4, !alias.scope !369, !noalias !370
  %wide.load112 = load <4 x float>, ptr %i.dn, align 4, !alias.scope !369, !noalias !370
  %i.do = fmul <4 x float> %wide.load111, %i.di
  %i.dp = fmul <4 x float> %wide.load112, %i.dj
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index109 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load113 = load <4 x float>, ptr %i.dq, align 4, !alias.scope !371
  %wide.load114 = load <4 x float>, ptr %i.dr, align 4, !alias.scope !371
  %i.ds = fmul <4 x float> %wide.load113, %i.dk
  %i.dt = fmul <4 x float> %wide.load114, %i.dl
  %i.du = fadd <4 x float> %i.do, %i.ds
  %i.dv = fadd <4 x float> %i.dp, %i.dt
  store <4 x float> %i.du, ptr %i.dm, align 4, !alias.scope !369, !noalias !370
  store <4 x float> %i.dv, ptr %i.dn, align 4, !alias.scope !369, !noalias !370
  %index.next115 = add nuw i64 %index109, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next115, %n.vec107
  br i1 %i.dw, label %middle.block116, label %vector.body108, !llvm.loop !360

middle.block116:                                  ; preds = %vector.body108
  br i1 %cmp.n117, label %._crit_edge.us.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block116
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec107, %middle.block116 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph104.prol.loopexit, label %scalar.ph104.prol

scalar.ph104.prol:                                ; preds = %scalar.ph104.preheader
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %indvars.iv.i.ph
  %i.dy = load float, ptr %i.dx, align 4          ; 2 uses
  %i.dz = fmul float %i.dy, %i.dy                 ; 2 uses
  %i.ea = fsub float 1.000000e+00, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.ph ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = fmul float %i.ec, %i.dz
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.ph
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = fmul float %i.ef, %i.ea
  %i.eh = fadd float %i.ed, %i.eg
end_hunk_1
begin_hunk_2_@_ov_64_seek_lap:bb.a

vector.body129:                                   ; preds = %vector.memcheck119, %vector.body129
  %index130 = phi i64 [ %index.next135, %vector.body129 ], [ 0, %vector.memcheck119 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %index130 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load131 = load <4 x float>, ptr %i.fm, align 4, !alias.scope !372 ; 2 uses
  %wide.load132 = load <4 x float>, ptr %i.fn, align 4, !alias.scope !372 ; 2 uses
  %i.fo = fmul <4 x float> %wide.load131, %wide.load131
  %i.fp = fmul <4 x float> %wide.load132, %wide.load132
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %index130 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %wide.load133 = load <4 x float>, ptr %i.fq, align 4, !alias.scope !373, !noalias !372
  %wide.load134 = load <4 x float>, ptr %i.fr, align 4, !alias.scope !373, !noalias !372
  %i.fs = fmul <4 x float> %wide.load133, %i.fo
  %i.ft = fmul <4 x float> %wide.load134, %i.fp
  store <4 x float> %i.fs, ptr %i.fq, align 4, !alias.scope !373, !noalias !372
  store <4 x float> %i.ft, ptr %i.fr, align 4, !alias.scope !373, !noalias !372
  %index.next135 = add nuw i64 %index130, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.fu, label %middle.block136, label %vector.body129, !llvm.loop !365

middle.block136:                                  ; preds = %vector.body129
  br i1 %cmp.n137, label %._crit_edge.i, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %vector.memcheck119, %.lr.ph.i, %middle.block136
  %indvars.iv70.i.ph = phi i64 [ 0, %vector.memcheck119 ], [ 0, %.lr.ph.i ], [ %n.vec128, %middle.block136 ] ; 5 uses
  br i1 %lcmp.mod144.not, label %scalar.ph125.prol.loopexit, label %scalar.ph125.prol

scalar.ph125.prol:                                ; preds = %scalar.ph125.preheader
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %indvars.iv70.i.ph
  %i.fw = load float, ptr %i.fv, align 4          ; 2 uses
  %i.fx = fmul float %i.fw, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv70.i.ph ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4
  %i.ga = fmul float %i.fz, %i.fx
  store float %i.ga, ptr %i.fy, align 4
  %indvars.iv.next71.i.prol = or disjoint i64 %indvars.iv70.i.ph, 1
  br label %scalar.ph125.prol.loopexit

scalar.ph125.prol.loopexit:                       ; preds = %scalar.ph125.prol, %scalar.ph125.preheader
  %indvars.iv70.i.unr = phi i64 [ %indvars.iv70.i.ph, %scalar.ph125.preheader ], [ %indvars.iv.next71.i.prol, %scalar.ph125.prol ]
  %i.gb = icmp eq i64 %indvars.iv70.i.ph, %i.fj
  br i1 %i.gb, label %._crit_edge.i, label %scalar.ph125

scalar.ph125:                                     ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i.1, %scalar.ph125 ], [ %indvars.iv70.i.unr, %scalar.ph125.prol.loopexit ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %indvars.iv70.i
  %i.gd = load float, ptr %i.gc, align 4          ; 2 uses
  %i.ge = fmul float %i.gd, %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv70.i ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4
  %i.gh = fmul float %i.gg, %i.ge
  store float %i.gh, ptr %i.gf, align 4
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %indvars.iv.next71.i
  %i.gj = load float, ptr %i.gi, align 4          ; 2 uses
  %i.gk = fmul float %i.gj, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next71.i ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4
  %i.gn = fmul float %i.gm, %i.gk
  store float %i.gn, ptr %i.gl, align 4
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv70.i, 2 ; 2 uses
  %exitcond74.not.i.1 = icmp eq i64 %indvars.iv.next71.i.1, %wide.trip.count73.i
  br i1 %exitcond74.not.i.1, label %._crit_edge.i, label %scalar.ph125, !llvm.loop !366

._crit_edge.i:                                    ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125, %middle.block136
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count78
  br i1 %exitcond79.not, label %_ov_initset.exit, label %.lr.ph.i, !llvm.loop !21

_ov_initset.exit:                                 ; preds = %.lr.ph, %vorbis_synthesis_pcmout.exit.thread.i, %._crit_edge.i, %.preheader.i, %.lr.ph57.i, %._crit_edge72, %bb.a
  %.043 = phi i32 [ %i.bq, %vorbis_synthesis_pcmout.exit.thread.i ], [ -131, %bb.a ], [ 0, %._crit_edge.i ], [ %i.bi, %._crit_edge72 ], [ 0, %.lr.ph57.i ], [ 0, %.preheader.i ], [ %i.g, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_pcm_seek_lap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_ov_64_seek_lap(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @ov_pcm_seek)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_pcm_seek_page_lap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_ov_64_seek_lap(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @ov_pcm_seek_page)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_time_seek_lap(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_ov_d_seek_lap(ptr noundef %0, double noundef %1, ptr noundef nonnull @ov_time_seek)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_ov_d_seek_lap(ptr noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %_ov_initset.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 4
  br i1 %i.e, label %._crit_edge, label %.lr.ph

thread-pre-split:                                 ; preds = %.lr.ph
  %.pr = load i32, ptr %i.b, align 8
  %i.f = icmp eq i32 %.pr, 4
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %thread-pre-split
  %i.g = tail call fastcc i32 @_fetch_and_process_packet(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = icmp eq i32 %i.g, -3
  %or.cond.not.i = or i1 %i.h, %i.i
  br i1 %or.cond.not.i, label %thread-pre-split, label %_ov_initset.exit

._crit_edge:                                      ; preds = %thread-pre-split, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not.i = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  br i1 %.not.i, label %ov_info.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.p
  br label %ov_info.exit

ov_info.exit:                                     ; preds = %._crit_edge, %bb.b
  %.0.i = phi ptr [ %i.q, %bb.b ], [ %i.m, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = icmp eq ptr %i.m, null
  br i1 %i.s, label %ov_halfrate_p.exit, label %bb.c

bb.c:                                             ; preds = %ov_info.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5808
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add nsw i32 %i.w, 1
  br label %ov_halfrate_p.exit

ov_halfrate_p.exit:                               ; preds = %ov_info.exit, %bb.c
  %.0.i50 = phi i32 [ %i.x, %bb.c ], [ -130, %ov_info.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.z = load i32, ptr %i.y, align 4              ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i51 = icmp eq ptr %i.ab, null
  br i1 %.not.i51, label %vorbis_info_blocksize.exit, label %bb.d

bb.d:                                             ; preds = %ov_halfrate_p.exit
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i32
  br label %vorbis_info_blocksize.exit

vorbis_info_blocksize.exit:                       ; preds = %ov_halfrate_p.exit, %bb.d
  %i.ae = phi i32 [ %i.ad, %bb.d ], [ -1, %ov_halfrate_p.exit ]
  %i.af = ashr i32 %i.ae, %.0.i50                 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %vorbis_window.exit, label %bb.e

bb.e:                                             ; preds = %vorbis_info_blocksize.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 5808
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sub nsw i32 %i.ak, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  br label %vorbis_window.exit

vorbis_window.exit:                               ; preds = %vorbis_info_blocksize.exit, %bb.e
  %.0.i52 = phi ptr [ %i.av, %bb.e ], [ null, %vorbis_info_blocksize.exit ]
  %i.aw = sext i32 %i.z to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = alloca i8, i64 %i.ax, align 16          ; 4 uses
  %i.az = icmp sgt i32 %i.z, 0
  br i1 %i.az, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %vorbis_window.exit
  %i.ba = sext i32 %i.af to i64
  %i.bb = shl nsw i64 %i.ba, 2                    ; 5 uses
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph71
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %3 = alloca i8, i64 %i.bb, align 16
  %4 = alloca i8, i64 %i.bb, align 16
  %5 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %4, i64 1
  %7 = alloca i8, i64 %i.bb, align 16
  %i.bc = alloca i8, i64 %i.bb, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %7, i64 0
  %8 = insertelement <2 x ptr> %broadcast.splatinsert, ptr %i.bc, i64 1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x ptr> %6, ptr %i.bd, align 16
  store <2 x ptr> %8, ptr %i.be, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge72, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph71, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph71 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bg = alloca i8, i64 %i.bb, align 16
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  store ptr %i.bg, ptr %i.bh, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge72, label %scalar.ph, !llvm.loop !375

._crit_edge72:                                    ; preds = %scalar.ph, %middle.block, %vorbis_window.exit
  call fastcc void @_ov_getlap(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ag, ptr noundef %i.ay, i32 noundef %i.af)
  %i.bi = call i32 %2(ptr noundef nonnull %0, double noundef %1) #62, !callees !387 ; 2 uses
  %.not48 = icmp eq i32 %i.bi, 0
  br i1 %.not48, label %bb.f, label %_ov_initset.exit

bb.f:                                             ; preds = %._crit_edge72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 616
  br label %bb.g

bb.g:                                             ; preds = %vorbis_synthesis_pcmout.exit.thread.i, %bb.f
  %i.bl = load i32, ptr %i.b, align 8
  %i.bm = icmp eq i32 %i.bl, 4
  br i1 %i.bm, label %bb.h, label %vorbis_synthesis_pcmout.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.i, label %vorbis_synthesis_pcmout.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load i32, ptr %i.bj, align 4
  %.not.i55 = icmp slt i32 %i.bn, %i.bp
  br i1 %.not.i55, label %bb.j, label %vorbis_synthesis_pcmout.exit.thread.i

vorbis_synthesis_pcmout.exit.thread.i:            ; preds = %bb.i, %bb.h, %bb.g
  %i.bq = call fastcc i32 @_fetch_and_process_packet(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.br = icmp sgt i32 %i.bq, -1
  %i.bs = icmp eq i32 %i.bq, -3
  %or.cond.not.i53 = or i1 %i.br, %i.bs
  br i1 %or.cond.not.i53, label %bb.g, label %_ov_initset.exit

bb.j:                                             ; preds = %bb.i
  %i.bt = load i32, ptr %i.j, align 8
  %.not.i56 = icmp eq i32 %i.bt, 0
  %i.bu = load ptr, ptr %i.r, align 8             ; 2 uses
  br i1 %.not.i56, label %ov_info.exit58, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [56 x i8], ptr %i.bu, i64 %i.bx
  br label %ov_info.exit58

ov_info.exit58:                                   ; preds = %bb.j, %bb.k
  %.0.i57 = phi ptr [ %i.by, %bb.k ], [ %i.bu, %bb.j ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i57, i64 4
  %i.ca = load i32, ptr %i.bz, align 4            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i57, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i59 = icmp eq ptr %i.cc, null
  br i1 %.not.i59, label %vorbis_info_blocksize.exit60, label %bb.l

bb.l:                                             ; preds = %ov_info.exit58
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = trunc i64 %i.cd to i32
  br label %vorbis_info_blocksize.exit60

vorbis_info_blocksize.exit60:                     ; preds = %ov_info.exit58, %bb.l
  %i.cf = phi i32 [ %i.ce, %bb.l ], [ -1, %ov_info.exit58 ]
  %i.cg = ashr i32 %i.cf, %.0.i50                 ; 2 uses
  %i.ch = load ptr, ptr %i.ah, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %vorbis_window.exit62, label %bb.m

bb.m:                                             ; preds = %vorbis_info_blocksize.exit60
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 5808
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = sub nsw i32 %i.cj, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8
  br label %vorbis_window.exit62

vorbis_window.exit62:                             ; preds = %vorbis_info_blocksize.exit60, %bb.m
  %.0.i61 = phi ptr [ %i.cu, %bb.m ], [ null, %vorbis_info_blocksize.exit60 ]
  %i.cv = call i32 @vorbis_synthesis_lapout(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) ; 0 uses
  %i.cw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cx = icmp sgt i32 %i.af, %i.cg
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.cg) ; 6 uses
  %spec.select53.i = select i1 %i.cx, ptr %.0.i61, ptr %.0.i52 ; 12 uses
  %invariant.smin.i = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.ca) ; 3 uses
  %i.cy = icmp sgt i32 %invariant.smin.i, 0
  br i1 %i.cy, label %.lr.ph57.i, label %.preheader.i

.lr.ph57.i:                                       ; preds = %vorbis_window.exit62
  %i.cz = icmp sgt i32 %spec.select.i, 0
  br i1 %i.cz, label %.lr.ph.us.preheader.i, label %_ov_initset.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph57.i
  %wide.trip.count68.i = zext nneg i32 %invariant.smin.i to i64
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64 ; 6 uses
  %i.da = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %spec.select53.i, i64 %i.da
  %min.iters.check105 = icmp ult i32 %spec.select.i, 8
  %n.vec107 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n117 = icmp eq i64 %n.vec107, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.db = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next66.i, %._crit_edge.us.i ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv65.i
  %i.dd = load ptr, ptr %i.dc, align 8            ; 6 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv65.i
  %i.df = load ptr, ptr %i.de, align 8            ; 7 uses
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i
  %scevgep = getelementptr i8, ptr %i.df, i64 %i.da ; 2 uses
  %scevgep100 = getelementptr i8, ptr %i.dd, i64 %i.da
  %bound0 = icmp ult ptr %i.df, %scevgep99
  %bound1 = icmp ult ptr %spec.select53.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0101 = icmp ult ptr %i.df, %scevgep100
  %bound1102 = icmp ult ptr %i.dd, %scevgep
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx = or i1 %found.conflict, %found.conflict103
  br i1 %conflict.rdx, label %scalar.ph104.preheader, label %vector.body108

vector.body108:                                   ; preds = %vector.memcheck, %vector.body108
  %index109 = phi i64 [ %index.next115, %vector.body108 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %index109 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <4 x float>, ptr %i.dg, align 4, !alias.scope !388 ; 2 uses
  %wide.load110 = load <4 x float>, ptr %i.dh, align 4, !alias.scope !388 ; 2 uses
  %i.di = fmul <4 x float> %wide.load, %wide.load ; 2 uses
  %i.dj = fmul <4 x float> %wide.load110, %wide.load110 ; 2 uses
  %i.dk = fsub <4 x float> splat (float 1.000000e+00), %i.di
  %i.dl = fsub <4 x float> splat (float 1.000000e+00), %i.dj
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index109 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load111 = load <4 x float>, ptr %i.dm, align 4, !alias.scope !389, !noalias !390
  %wide.load112 = load <4 x float>, ptr %i.dn, align 4, !alias.scope !389, !noalias !390
  %i.do = fmul <4 x float> %wide.load111, %i.di
  %i.dp = fmul <4 x float> %wide.load112, %i.dj
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index109 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load113 = load <4 x float>, ptr %i.dq, align 4, !alias.scope !391
  %wide.load114 = load <4 x float>, ptr %i.dr, align 4, !alias.scope !391
  %i.ds = fmul <4 x float> %wide.load113, %i.dk
  %i.dt = fmul <4 x float> %wide.load114, %i.dl
  %i.du = fadd <4 x float> %i.do, %i.ds
  %i.dv = fadd <4 x float> %i.dp, %i.dt
  store <4 x float> %i.du, ptr %i.dm, align 4, !alias.scope !389, !noalias !390
  store <4 x float> %i.dv, ptr %i.dn, align 4, !alias.scope !389, !noalias !390
  %index.next115 = add nuw i64 %index109, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next115, %n.vec107
  br i1 %i.dw, label %middle.block116, label %vector.body108, !llvm.loop !380

middle.block116:                                  ; preds = %vector.body108
  br i1 %cmp.n117, label %._crit_edge.us.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block116
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec107, %middle.block116 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph104.prol.loopexit, label %scalar.ph104.prol

scalar.ph104.prol:                                ; preds = %scalar.ph104.preheader
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %spec.select53.i, i64 %indvars.iv.i.ph
  %i.dy = load float, ptr %i.dx, align 4          ; 2 uses
  %i.dz = fmul float %i.dy, %i.dy                 ; 2 uses
  %i.ea = fsub float 1.000000e+00, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.ph ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = fmul float %i.ec, %i.dz
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.ph
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = fmul float %i.ef, %i.ea
  %i.eh = fadd float %i.ed, %i.eg
end_hunk_2
