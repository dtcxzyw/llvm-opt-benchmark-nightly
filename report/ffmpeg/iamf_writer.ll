Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iamf_writer?download=true
inline.NumInlined: 118
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@write_parameter_block:bb.a
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !80   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %ff_iamf_get_param_definition.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ff_iamf_get_param_definition.exit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80
  %i.q = icmp eq i32 %i.p, %i.e
  br i1 %i.q, label %ff_iamf_get_param_definition.exit, label %bb.b

ff_iamf_get_param_definition.exit:                ; preds = %bb.b, %bb.c, %bb.a
  %.08.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !128  ; 3 uses
  %i.t = icmp ugt i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ff_iamf_get_param_definition.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.34, i32 noundef %i.s) #10
  br label %bb.ba

bb.e:                                             ; preds = %ff_iamf_get_param_definition.exit
  %.not = icmp eq ptr %.08.i, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %i.e) #10
  br label %bb.ba

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !128
  %.not110 = icmp eq i32 %i.s, %i.x
  br i1 %.not110, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.36, i32 noundef %i.e) #10
  br label %bb.ba

bb.i:                                             ; preds = %bb.g
  %i.y = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.ba, label %flush_put_bits.exit

flush_put_bits.exit:                              ; preds = %bb.i
  store i8 24, ptr %i.a, align 16, !tbaa !20
  call void @avio_write(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1) #10
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !80
  call void @ffio_write_leb(ptr noundef %i.aa, i32 noundef %i.ab) #10
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i, i64 16 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !92
  %.not111 = icmp eq i32 %i.ad, 0
  br i1 %.not111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %flush_put_bits.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !90
  call void @ffio_write_leb(ptr noundef %i.ae, i32 noundef %i.ag) #10
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !91
  call void @ffio_write_leb(ptr noundef %i.ah, i32 noundef %i.aj) #10
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !91
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !87
  call void @ffio_write_leb(ptr noundef %i.am, i32 noundef %i.ao) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %flush_put_bits.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !87
  %.not121160.not = icmp eq i32 %i.aq, 0
  br i1 %.not121160.not, label %.critedge123, label %av_iamf_param_definition_get_subblock.exit.lr.ph

av_iamf_param_definition_get_subblock.exit.lr.ph: ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  br label %av_iamf_param_definition_get_subblock.exit

av_iamf_param_definition_get_subblock.exit:       ; preds = %av_iamf_param_definition_get_subblock.exit.lr.ph, %.critedge
  %indvars.iv170 = phi i64 [ 0, %av_iamf_param_definition_get_subblock.exit.lr.ph ], [ %indvars.iv.next171, %.critedge ] ; 2 uses
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !123
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %i.au
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !129
  %i.ax = mul i64 %i.aw, %indvars.iv170
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax ; 11 uses
  %i.az = load i32, ptr %i.r, align 4, !tbaa !128
  switch i32 %i.az, label %bb.ay [
    i32 0, label %bb.m
    i32 1, label %bb.s
    i32 2, label %bb.w
  ]

bb.m:                                             ; preds = %av_iamf_param_definition_get_subblock.exit
  %i.ba = load i32, ptr %i.ac, align 8, !tbaa !92
  %.not119 = icmp eq i32 %i.ba, 0
  br i1 %.not119, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = load i32, ptr %i.at, align 4, !tbaa !91
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !206
  call void @ffio_write_leb(ptr noundef %i.bd, i32 noundef %i.bf) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !207
  call void @ffio_write_leb(ptr noundef %i.bg, i32 noundef %i.bi) #10
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %sext.i = shl i64 %i.bl, 32
  %i.bm = ashr exact i64 %sext.i, 32
  %i.bn = ashr i64 %i.bl, 32
  %i.bo = call i64 @av_rescale(i64 noundef %i.bm, i64 noundef 256, i64 noundef %i.bn) #11
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = call i32 @llvm.smax.i32(i32 %i.bp, i32 -32768)
  %.0.i.i129 = call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.bq, i32 32767)
  call void @avio_wb16(ptr noundef %i.bj, i32 noundef %.0.i.i129) #10
  %i.br = load i32, ptr %i.bh, align 4, !tbaa !207
  %.not120 = icmp eq i32 %i.br, 0
  br i1 %.not120, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %sext.i130 = shl i64 %i.bu, 32
  %i.bv = ashr exact i64 %sext.i130, 32
  %i.bw = ashr i64 %i.bu, 32
  %i.bx = call i64 @av_rescale(i64 noundef %i.bv, i64 noundef 256, i64 noundef %i.bw) #11
  %i.by = trunc i64 %i.bx to i32
  %i.bz = call i32 @llvm.smax.i32(i32 %i.by, i32 -32768)
  %.0.i.i131 = call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.bz, i32 32767)
  call void @avio_wb16(ptr noundef %i.bs, i32 noundef %.0.i.i131) #10
  %.pr = load i32, ptr %i.bh, align 4, !tbaa !207
  %i.ca = icmp eq i32 %.pr, 2
  br i1 %i.ca, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %sext.i132 = shl i64 %i.cd, 32
  %i.ce = ashr exact i64 %sext.i132, 32
  %i.cf = ashr i64 %i.cd, 32
  %i.cg = call i64 @av_rescale(i64 noundef %i.ce, i64 noundef 256, i64 noundef %i.cf) #11
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = call i32 @llvm.smax.i32(i32 %i.ch, i32 -32768)
  %.0.i.i133 = call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.ci, i32 32767)
  call void @avio_wb16(ptr noundef %i.cb, i32 noundef %.0.i.i133) #10
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !208
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !209
  %i.cp = sext i32 %i.co to i64
  %i.cq = call i64 @av_rescale(i64 noundef %i.cm, i64 noundef 256, i64 noundef %i.cp) #11
  %i.cr = trunc i64 %i.cq to i32                  ; 3 uses
  %.not.i = icmp ult i32 %i.cr, 256
  %isnotneg.i = icmp sgt i32 %i.cr, -1
  %4 = sext i1 %isnotneg.i to i32
  %.0.i = select i1 %.not.i, i32 %i.cr, i32 %4
  %5 = and i32 %.0.i, 255
  call void @avio_w8(ptr noundef %i.cj, i32 noundef %5) #10
  br label %.critedge

bb.s:                                             ; preds = %av_iamf_param_definition_get_subblock.exit
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !92
  %.not118 = icmp eq i32 %i.cs, 0
  br i1 %.not118, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ct = load i32, ptr %i.at, align 4, !tbaa !91
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !210
  call void @ffio_write_leb(ptr noundef %i.cv, i32 noundef %i.cx) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !125
  %i.db = shl i32 %i.da, 5
  call void @avio_w8(ptr noundef %i.cy, i32 noundef %i.db) #10
  br label %.critedge

bb.w:                                             ; preds = %av_iamf_param_definition_get_subblock.exit
  %i.dc = load ptr, ptr %.08.i, align 8, !tbaa !93
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !68 ; 3 uses
  %i.de = load i32, ptr %i.ac, align 8, !tbaa !92
  %.not112 = icmp eq i32 %i.de, 0
  br i1 %.not112, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.df = load i32, ptr %i.at, align 4, !tbaa !91
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.di = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !212
  call void @ffio_write_leb(ptr noundef %i.dh, i32 noundef %i.dj) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.not113.not = icmp eq ptr %i.dd, null
  br i1 %.not113.not, label %bb.az, label %.preheader151

.preheader151:                                    ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !28 ; 2 uses
  %.not162 = icmp eq i32 %i.dl, 0
  br i1 %.not162, label %.critedge, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader151
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph159, %.loopexit
  %i.do = phi i32 [ %i.dl, %.lr.ph159 ], [ %i.fw, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !126
  %i.du = and i32 %i.dt, 1
  %.not114 = icmp eq i32 %i.du, 0
  br i1 %.not114, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv ; 13 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 5
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 6
  %i.ec = load <12 x i8>, ptr %i.dv, align 1, !tbaa !20
  %.not195 = icmp eq <12 x i8> %i.ec, zeroinitializer
  %i.ed = select <12 x i1> %.not195, <12 x i32> zeroinitializer, <12 x i32> <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 256, i32 512, i32 1024, i32 2048, i32 4096>
  %i.ee = call i32 @llvm.vector.reduce.or.v12i32(<12 x i32> %i.ed) ; 2 uses
  %.not115 = icmp samesign ult i32 %i.ee, 256
  %i.ef = select i1 %.not115, i32 0, i32 4096
  %.295 = or i32 %i.ef, %i.ee
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !121
  call void @ffio_write_leb(ptr noundef %i.eg, i32 noundef %.295) #10
  %i.eh = load i8, ptr %i.dv, align 1, !tbaa !20  ; 2 uses
  %.not116 = icmp eq i8 %i.eh, 0
  br i1 %.not116, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ej = zext i8 %i.eh to i32
  call void @avio_w8(ptr noundef %i.ei, i32 noundef %i.ej) #10
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  %i.ek = load i8, ptr %i.dw, align 1, !tbaa !20  ; 2 uses
  %.not116.1 = icmp eq i8 %i.ek, 0
  br i1 %.not116.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.em = zext i8 %i.ek to i32
  call void @avio_w8(ptr noundef %i.el, i32 noundef %i.em) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.en = load i8, ptr %i.dx, align 1, !tbaa !20  ; 2 uses
  %.not116.2 = icmp eq i8 %i.en, 0
  br i1 %.not116.2, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ep = zext i8 %i.en to i32
  call void @avio_w8(ptr noundef %i.eo, i32 noundef %i.ep) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eq = load i8, ptr %i.dy, align 1, !tbaa !20  ; 2 uses
  %.not116.3 = icmp eq i8 %i.eq, 0
  br i1 %.not116.3, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.es = zext i8 %i.eq to i32
  call void @avio_w8(ptr noundef %i.er, i32 noundef %i.es) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.et = load i8, ptr %i.dz, align 1, !tbaa !20  ; 2 uses
  %.not116.4 = icmp eq i8 %i.et, 0
  br i1 %.not116.4, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ev = zext i8 %i.et to i32
  call void @avio_w8(ptr noundef %i.eu, i32 noundef %i.ev) #10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ew = load i8, ptr %i.ea, align 1, !tbaa !20  ; 2 uses
  %.not116.5 = icmp eq i8 %i.ew, 0
  br i1 %.not116.5, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ey = zext i8 %i.ew to i32
  call void @avio_w8(ptr noundef %i.ex, i32 noundef %i.ey) #10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ez = load i8, ptr %i.eb, align 1, !tbaa !20  ; 2 uses
  %.not116.6 = icmp eq i8 %i.ez, 0
  br i1 %.not116.6, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.fb = zext i8 %i.ez to i32
  call void @avio_w8(ptr noundef %i.fa, i32 noundef %i.fb) #10
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dv, i64 7
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !20  ; 2 uses
  %.not116.7 = icmp eq i8 %i.fd, 0
  br i1 %.not116.7, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fe = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ff = zext i8 %i.fd to i32
  call void @avio_w8(ptr noundef %i.fe, i32 noundef %i.ff) #10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !20  ; 2 uses
  %.not116.8 = icmp eq i8 %i.fh, 0
  br i1 %.not116.8, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.fj = zext i8 %i.fh to i32
  call void @avio_w8(ptr noundef %i.fi, i32 noundef %i.fj) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 9
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !20  ; 2 uses
  %.not116.9 = icmp eq i8 %i.fl, 0
  br i1 %.not116.9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.fn = zext i8 %i.fl to i32
end_hunk_0
