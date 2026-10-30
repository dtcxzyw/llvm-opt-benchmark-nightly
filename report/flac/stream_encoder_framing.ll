Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/stream_encoder_framing?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@FLAC__add_metadata_block:bb.a
  %.not194 = icmp eq i32 %i.fh, 0
  br i1 %.not194, label %.critedge230, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 9
  %i.fj = tail call i32 @FLAC__bitwriter_write_byte_block(ptr noundef %1, ptr noundef nonnull %i.fi, i32 noundef %i.es) #5
  %.not195 = icmp eq i32 %i.fj, 0
  br i1 %.not195, label %.critedge230, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 22 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 2
  %i.fm = and i8 %i.fl, 1
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.fn, i32 noundef %i.et) #5
  %.not196 = icmp eq i32 %i.fo, 0
  br i1 %.not196, label %.critedge230, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load i8, ptr %i.fk, align 2
  %i.fq = lshr i8 %i.fp, 1
  %i.fr = and i8 %i.fq, 1
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.fs, i32 noundef %i.eu) #5
  %.not197 = icmp eq i32 %i.ft, 0
  br i1 %.not197, label %.critedge230, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fu = tail call i32 @FLAC__bitwriter_write_zeroes(ptr noundef %1, i32 noundef %i.ev) #5
  %.not198 = icmp eq i32 %i.fu, 0
  br i1 %.not198, label %.critedge230, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 23 ; 3 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !40
  %i.fx = zext i8 %i.fw to i32
  %i.fy = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.fx, i32 noundef %i.ew) #5
  %.not199 = icmp eq i32 %i.fy, 0
  br i1 %.not199, label %.critedge230, label %.preheader240

.preheader240:                                    ; preds = %bb.at
  %i.fz = load i8, ptr %i.fv, align 1, !tbaa !40
  %.not253 = icmp eq i8 %i.fz, 0
  br i1 %.not253, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader240
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  br label %bb.av

bb.au:                                            ; preds = %bb.ax
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gb = load i8, ptr %i.fv, align 1, !tbaa !40
  %i.gc = zext i8 %i.gb to i64
  %i.gd = icmp samesign ult i64 %indvars.iv.next, %i.gc
  br i1 %i.gd, label %bb.av, label %.critedge, !llvm.loop !22

bb.av:                                            ; preds = %.lr.ph, %bb.au
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.au ] ; 2 uses
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !41
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %indvars.iv ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !43
  %i.gh = tail call i32 @FLAC__bitwriter_write_raw_uint64(ptr noundef %1, i64 noundef %i.gg, i32 noundef %i.ex) #5
  %.not200 = icmp eq i32 %i.gh, 0
  br i1 %.not200, label %.critedge230, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !44
  %i.gk = zext i8 %i.gj to i32
  %i.gl = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.gk, i32 noundef %i.ey) #5
  %.not201 = icmp eq i32 %i.gl, 0
  br i1 %.not201, label %.critedge230, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = tail call i32 @FLAC__bitwriter_write_zeroes(ptr noundef %1, i32 noundef %i.ez) #5
  %.not202.not = icmp eq i32 %i.gm, 0
  br i1 %.not202.not, label %.critedge230, label %bb.au

.critedge:                                        ; preds = %bb.au, %.preheader240
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %i.gn = load i32, ptr %i.ej, align 4, !tbaa !10
  %i.go = zext i32 %i.gn to i64
  %i.gp = icmp samesign ult i64 %indvars.iv.next263, %i.go
  br i1 %i.gp, label %bb.an, label %.loopexit, !llvm.loop !23

bb.ay:                                            ; preds = %bb.g
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !10
  %i.gs = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_TYPE_LEN, align 4, !tbaa !9
  %i.gt = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.gr, i32 noundef %i.gs) #5
  %.not176 = icmp eq i32 %i.gt, 0
  br i1 %.not176, label %.critedge230, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !10
  %i.gw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gv) #4
  %i.gx = trunc i64 %i.gw to i32                  ; 2 uses
  %i.gy = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_MIME_TYPE_LENGTH_LEN, align 4, !tbaa !9
  %i.gz = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.gx, i32 noundef %i.gy) #5
  %.not177 = icmp eq i32 %i.gz, 0
  br i1 %.not177, label %.critedge230, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !10
  %i.hb = tail call i32 @FLAC__bitwriter_write_byte_block(ptr noundef %1, ptr noundef %i.ha, i32 noundef %i.gx) #5
  %.not178 = icmp eq i32 %i.hb, 0
  br i1 %.not178, label %.critedge230, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !10
  %i.he = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hd) #4
  %i.hf = trunc i64 %i.he to i32                  ; 2 uses
  %i.hg = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DESCRIPTION_LENGTH_LEN, align 4, !tbaa !9
  %i.hh = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.hf, i32 noundef %i.hg) #5
  %.not179 = icmp eq i32 %i.hh, 0
  br i1 %.not179, label %.critedge230, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !10
  %i.hj = tail call i32 @FLAC__bitwriter_write_byte_block(ptr noundef %1, ptr noundef %i.hi, i32 noundef %i.hf) #5
  %.not180 = icmp eq i32 %i.hj, 0
  br i1 %.not180, label %.critedge230, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !10
  %i.hm = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_WIDTH_LEN, align 4, !tbaa !9
  %i.hn = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.hl, i32 noundef %i.hm) #5
  %.not181 = icmp eq i32 %i.hn, 0
  br i1 %.not181, label %.critedge230, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !10
  %i.hq = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_HEIGHT_LEN, align 4, !tbaa !9
  %i.hr = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.hp, i32 noundef %i.hq) #5
  %.not182 = icmp eq i32 %i.hr, 0
  br i1 %.not182, label %.critedge230, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !10
  %i.hu = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DEPTH_LEN, align 4, !tbaa !9
  %i.hv = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.ht, i32 noundef %i.hu) #5
  %.not183 = icmp eq i32 %i.hv, 0
  br i1 %.not183, label %.critedge230, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !10
  %i.hy = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_COLORS_LEN, align 4, !tbaa !9
  %i.hz = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.hx, i32 noundef %i.hy) #5
  %.not184 = icmp eq i32 %i.hz, 0
  br i1 %.not184, label %.critedge230, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !10
  %i.ic = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DATA_LENGTH_LEN, align 4, !tbaa !9
  %i.id = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.ib, i32 noundef %i.ic) #5
  %.not185 = icmp eq i32 %i.id, 0
  br i1 %.not185, label %.critedge230, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !10
  %i.ig = load i32, ptr %i.ia, align 8, !tbaa !10
  %i.ih = tail call i32 @FLAC__bitwriter_write_byte_block(ptr noundef %1, ptr noundef %i.if, i32 noundef %i.ig) #5
  %.not186.not = icmp eq i32 %i.ih, 0
  br i1 %.not186.not, label %.critedge230, label %.loopexit

bb.bj:                                            ; preds = %bb.g
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !10
  %i.ik = load i32, ptr %i.l, align 8, !tbaa !29
  %i.il = tail call i32 @FLAC__bitwriter_write_byte_block(ptr noundef %1, ptr noundef %i.ij, i32 noundef %i.ik) #5
  %.not227 = icmp eq i32 %i.il, 0
  br i1 %.not227, label %.critedge230, label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.af, %bb.v, %.preheader242, %.preheader237, %.preheader, %bb.bj, %bb.bi, %bb.u, %bb.s, %bb.r
  %i.im = tail call i32 @FLAC__bitwriter_get_input_bits_unconsumed(ptr noundef %1) #5 ; 2 uses
  %i.in = icmp ult i32 %i.im, %i.d
  br i1 %i.in, label %.critedge230, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  %i.io = sub nuw i32 %i.im, %i.d                 ; 2 uses
  %i.ip = and i32 %i.io, 7
  %.not228 = icmp eq i32 %i.ip, 0
  br i1 %.not228, label %bb.bl, label %.critedge230

bb.bl:                                            ; preds = %bb.bk
  %i.iq = shl i32 %.0161, 3
  %i.ir = add i32 %i.iq, 32
  %.not229 = icmp eq i32 %i.io, %i.ir
  %cond.fr = freeze i1 %.not229
  %spec.select = zext i1 %cond.fr to i32
  br label %.critedge230

.critedge230:                                     ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.at, %bb.ax, %bb.av, %bb.aw, %bb.ah, %bb.ag, %bb.y, %bb.x, %bb.w, %bb.bl, %.loopexit, %bb.bk, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.bj, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.b, %bb.a, %bb.bi
  %.7 = phi i32 [ 0, %bb.b ], [ 0, %bb.bj ], [ 0, %bb.bh ], [ 0, %bb.bd ], [ 0, %bb.q ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %.loopexit ], [ %spec.select, %bb.bl ], [ 0, %bb.u ], [ 0, %bb.bf ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.bk ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.bg ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.bi ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.am ], [ 0, %bb.be ], [ 0, %bb.y ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ 0, %bb.bc ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.ag ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.at ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ]
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @FLAC__bitwriter_get_input_bits_unconsumed(ptr noundef) local_unnamed_addr #3

declare i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @FLAC__bitwriter_write_raw_uint64(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @FLAC__bitwriter_write_byte_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @FLAC__bitwriter_write_zeroes(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @FLAC__bitwriter_write_raw_uint32_little_endian(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__frame_add_header(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load i32, ptr @FLAC__FRAME_HEADER_SYNC, align 4, !tbaa !9
  %i.c = load i32, ptr @FLAC__FRAME_HEADER_SYNC_LEN, align 4, !tbaa !9
  %i.d = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.b, i32 noundef %i.c) #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @FLAC__FRAME_HEADER_RESERVED_LEN, align 4, !tbaa !9
  %i.f = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef 0, i32 noundef %i.e) #5
  %.not47 = icmp eq i32 %i.f, 0
  br i1 %.not47, label %bb.bb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = load i32, ptr @FLAC__FRAME_HEADER_BLOCKING_STRATEGY_LEN, align 4, !tbaa !9
  %i.l = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.j, i32 noundef %i.k) #5
  %.not48 = icmp eq i32 %i.l, 0
  br i1 %.not48, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  switch i32 %i.m, label %bb.q [
    i32 192, label %bb.r
    i32 576, label %bb.e
    i32 1152, label %bb.f
    i32 2304, label %bb.g
    i32 4608, label %bb.h
    i32 256, label %bb.i
    i32 512, label %bb.j
    i32 1024, label %bb.k
    i32 2048, label %bb.l
    i32 4096, label %bb.m
    i32 8192, label %bb.n
    i32 16384, label %bb.o
    i32 32768, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  br label %bb.r

bb.i:                                             ; preds = %bb.d
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  br label %bb.r

bb.k:                                             ; preds = %bb.d
  br label %bb.r

bb.l:                                             ; preds = %bb.d
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  br label %bb.r

bb.n:                                             ; preds = %bb.d
  br label %bb.r

bb.o:                                             ; preds = %bb.d
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  br label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.n = icmp ult i32 %i.m, 257                   ; 2 uses
  %. = select i1 %i.n, i32 6, i32 7
  %.63 = select i1 %i.n, i32 8, i32 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.043 = phi i32 [ %., %bb.q ], [ 1, %bb.d ], [ 15, %bb.p ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ]
  %.not56 = phi i1 [ false, %bb.q ], [ true, %bb.d ], [ true, %bb.p ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ]
  %i.o = phi i32 [ %.63, %bb.q ], [ 16, %bb.d ], [ 16, %bb.p ], [ 16, %bb.e ], [ 16, %bb.f ], [ 16, %bb.g ], [ 16, %bb.h ], [ 16, %bb.i ], [ 16, %bb.j ], [ 16, %bb.k ], [ 16, %bb.l ], [ 16, %bb.m ], [ 16, %bb.n ], [ 16, %bb.o ]
  %i.p = load i32, ptr @FLAC__FRAME_HEADER_BLOCK_SIZE_LEN, align 4, !tbaa !9
  %i.q = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %.043, i32 noundef %i.p) #5
  %.not49 = icmp eq i32 %i.q, 0
  br i1 %.not49, label %bb.bb, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48   ; 6 uses
  switch i32 %i.s, label %bb.ad [
    i32 88200, label %bb.ag
    i32 176400, label %bb.t
    i32 192000, label %bb.u
    i32 8000, label %bb.v
    i32 16000, label %bb.w
    i32 22050, label %bb.x
    i32 24000, label %bb.y
    i32 32000, label %bb.z
    i32 44100, label %bb.aa
    i32 48000, label %bb.ab
    i32 96000, label %bb.ac
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.ag

bb.u:                                             ; preds = %bb.s
  br label %bb.ag

bb.v:                                             ; preds = %bb.s
  br label %bb.ag

bb.w:                                             ; preds = %bb.s
  br label %bb.ag

bb.x:                                             ; preds = %bb.s
  br label %bb.ag

bb.y:                                             ; preds = %bb.s
  br label %bb.ag

bb.z:                                             ; preds = %bb.s
  br label %bb.ag

bb.aa:                                            ; preds = %bb.s
  br label %bb.ag

bb.ab:                                            ; preds = %bb.s
  br label %bb.ag

bb.ac:                                            ; preds = %bb.s
  br label %bb.ag

bb.ad:                                            ; preds = %bb.s
  %i.t = icmp ult i32 %i.s, 255001
  %i.u = urem i32 %i.s, 1000
  %i.v = icmp eq i32 %i.u, 0
  %or.cond = and i1 %i.t, %i.v
  br i1 %or.cond, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.w = icmp ult i32 %i.s, 655351
  %i.x = urem i32 %i.s, 10
  %i.y = icmp eq i32 %i.x, 0
  %or.cond66 = and i1 %i.w, %i.y
  br i1 %or.cond66, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.z = icmp ult i32 %i.s, 65536
  %.67 = select i1 %i.z, i32 13, i32 0            ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.s, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.1 = phi i32 [ 1, %bb.s ], [ 12, %bb.ad ], [ %.67, %bb.af ], [ 14, %bb.ae ], [ 11, %bb.ac ], [ 2, %bb.t ], [ 3, %bb.u ], [ 4, %bb.v ], [ 5, %bb.w ], [ 6, %bb.x ], [ 7, %bb.y ], [ 8, %bb.z ], [ 9, %bb.aa ], [ 10, %bb.ab ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.s ], [ 12, %bb.ad ], [ %.67, %bb.af ], [ 14, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ]
  %i.aa = load i32, ptr @FLAC__FRAME_HEADER_SAMPLE_RATE_LEN, align 4, !tbaa !9
  %i.ab = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %.1, i32 noundef %i.aa) #5
  %.not50 = icmp eq i32 %i.ab, 0
  br i1 %.not50, label %bb.bb, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !49
  switch i32 %i.ad, label %bb.am [
    i32 0, label %bb.ai
end_hunk_0
begin_hunk_1_@FLAC__frame_add_header:bb.a
  %.3 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.an ]
  %i.an = load i32, ptr @FLAC__FRAME_HEADER_BITS_PER_SAMPLE_LEN, align 4, !tbaa !9
  %i.ao = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %.3, i32 noundef %i.an) #5
  %.not52 = icmp eq i32 %i.ao, 0
  br i1 %.not52, label %bb.bb, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ap = load i32, ptr @FLAC__FRAME_HEADER_ZERO_PAD_LEN, align 4, !tbaa !9
  %i.aq = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef 0, i32 noundef %i.ap) #5
  %.not53 = icmp eq i32 %i.aq, 0
  br i1 %.not53, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ar = load i32, ptr %i.g, align 4, !tbaa !46
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.as, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.au = load i32, ptr %i.at, align 8, !tbaa !10
  %i.av = tail call i32 @FLAC__bitwriter_write_utf8_uint32(ptr noundef %1, i32 noundef %i.au) #5
  %.not55 = icmp eq i32 %i.av, 0
  br i1 %.not55, label %bb.bb, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !10
  %i.ax = tail call i32 @FLAC__bitwriter_write_utf8_uint64(ptr noundef %1, i64 noundef %i.aw) #5
  %.not54 = icmp eq i32 %i.ax, 0
  br i1 %.not54, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %.not56, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ay = load i32, ptr %0, align 8, !tbaa !47
  %i.az = add i32 %i.ay, -1
  %i.ba = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.az, i32 noundef %i.o) #5
  %.not57 = icmp eq i32 %i.ba, 0
  br i1 %.not57, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  switch i32 %.0, label %bb.az [
    i32 12, label %bb.aw
    i32 13, label %bb.ax
    i32 14, label %bb.ay
  ]

bb.aw:                                            ; preds = %bb.av
  %i.bb = load i32, ptr %i.r, align 4, !tbaa !48
  %i.bc = udiv i32 %i.bb, 1000
  %i.bd = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.bc, i32 noundef 8) #5
  %.not60 = icmp eq i32 %i.bd, 0
  br i1 %.not60, label %bb.bb, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.be = load i32, ptr %i.r, align 4, !tbaa !48
  %i.bf = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.be, i32 noundef 16) #5
  %.not59 = icmp eq i32 %i.bf, 0
  br i1 %.not59, label %bb.bb, label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !48
  %i.bh = udiv i32 %i.bg, 10
  %i.bi = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.bh, i32 noundef 16) #5
  %.not58 = icmp eq i32 %i.bi, 0
  br i1 %.not58, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.bj = call i32 @FLAC__bitwriter_get_write_crc8(ptr noundef %1, ptr noundef nonnull %i.a) #5
  %.not61 = icmp eq i32 %i.bj, 0
  br i1 %.not61, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bk = load i8, ptr %i.a, align 1, !tbaa !10
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i32, ptr @FLAC__FRAME_HEADER_CRC_LEN, align 4, !tbaa !9
  %i.bn = call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %1, i32 noundef %i.bl, i32 noundef %i.bm) #5
  %.not62 = icmp ne i32 %i.bn, 0
  %.68 = zext i1 %.not62 to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.ag, %bb.r, %bb.c, %bb.b, %bb.a
  %.044 = phi i32 [ 0, %bb.az ], [ %.68, %bb.ba ], [ 0, %bb.ay ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.as ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.ag ], [ 0, %bb.r ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.044
}

declare i32 @FLAC__bitwriter_write_utf8_uint32(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @FLAC__bitwriter_write_utf8_uint64(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @FLAC__bitwriter_get_write_crc8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__subframe_add_constant(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @FLAC__SUBFRAME_TYPE_CONSTANT_BYTE_ALIGNED_MASK, align 4, !tbaa !9
  %.not = icmp ne i32 %2, 0                       ; 2 uses
  %i.b = zext i1 %.not to i32
  %i.c = or i32 %i.a, %i.b
  %i.d = load i32, ptr @FLAC__SUBFRAME_ZERO_PAD_LEN, align 4, !tbaa !9
  %i.e = load i32, ptr @FLAC__SUBFRAME_TYPE_LEN, align 4, !tbaa !9
  %i.f = add i32 %i.e, %i.d
  %i.g = load i32, ptr @FLAC__SUBFRAME_WASTED_BITS_FLAG_LEN, align 4, !tbaa !9
  %i.h = add i32 %i.f, %i.g
  %i.i = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %3, i32 noundef %i.c, i32 noundef %i.h) #5
  %.not8 = icmp eq i32 %i.i, 0
  br i1 %.not8, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %2, -1
  %i.k = tail call i32 @FLAC__bitwriter_write_unary_unsigned(ptr noundef %3, i32 noundef %i.j) #5
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = load i64, ptr %0, align 8, !tbaa !53
  %i.m = tail call i32 @FLAC__bitwriter_write_raw_int64(ptr noundef %3, i64 noundef %i.l, i32 noundef %1) #5
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.p = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %i.p
}

declare i32 @FLAC__bitwriter_write_unary_unsigned(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @FLAC__bitwriter_write_raw_int64(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__subframe_add_fixed(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @FLAC__SUBFRAME_TYPE_FIXED_BYTE_ALIGNED_MASK, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !56
  %i.d = shl i32 %i.c, 1
  %.not = icmp ne i32 %3, 0                       ; 2 uses
  %i.e = zext i1 %.not to i32
  %i.f = or i32 %i.a, %i.e
  %i.g = or i32 %i.f, %i.d
  %i.h = load i32, ptr @FLAC__SUBFRAME_ZERO_PAD_LEN, align 4, !tbaa !9
  %i.i = load i32, ptr @FLAC__SUBFRAME_TYPE_LEN, align 4, !tbaa !9
  %i.j = add i32 %i.i, %i.h
  %i.k = load i32, ptr @FLAC__SUBFRAME_WASTED_BITS_FLAG_LEN, align 4, !tbaa !9
  %i.l = add i32 %i.j, %i.k
  %i.m = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %4, i32 noundef %i.g, i32 noundef %i.l) #5
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %add_entropy_coding_method_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %3, -1
  %i.o = tail call i32 @FLAC__bitwriter_write_unary_unsigned(ptr noundef %4, i32 noundef %i.n) #5
  %.not27 = icmp eq i32 %i.o, 0
  br i1 %.not27, label %add_entropy_coding_method_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = load i32, ptr %i.b, align 8, !tbaa !56
  %.not36 = icmp eq i32 %i.p, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.b, align 8, !tbaa !56
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.f, label %._crit_edge, !llvm.loop !54

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  %i.w = tail call i32 @FLAC__bitwriter_write_raw_int64(ptr noundef %4, i64 noundef %i.v, i32 noundef %2) #5
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %add_entropy_coding_method_.exit.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.x = load i32, ptr %0, align 8, !tbaa !16
  %i.y = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_TYPE_LEN, align 4, !tbaa !9
  %i.z = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %4, i32 noundef %i.x, i32 noundef %i.y) #5
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %add_entropy_coding_method_.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.aa = load i32, ptr %0, align 8, !tbaa !16
  %switch.i = icmp ult i32 %i.aa, 2
  br i1 %switch.i, label %bb.h, label %add_entropy_coding_method_.exit.thread33

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !10
  %i.ad = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN, align 4, !tbaa !9
  %i.ae = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %4, i32 noundef %i.ac, i32 noundef %i.ad) #5
  %.not5.i = icmp eq i32 %i.ae, 0
  br i1 %.not5.i, label %add_entropy_coding_method_.exit.thread, label %add_entropy_coding_method_.exit.a

add_entropy_coding_method_.exit.a:                ; preds = %bb.h
  %.pr = load i32, ptr %0, align 8, !tbaa !57     ; 2 uses
  %switch = icmp ult i32 %.pr, 2
  br i1 %switch, label %bb.i, label %add_entropy_coding_method_.exit.thread33

bb.i:                                             ; preds = %add_entropy_coding_method_.exit.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = load i32, ptr %i.ab, align 8, !tbaa !10
  %i.ao = icmp eq i32 %.pr, 1
  %i.ap = zext i1 %i.ao to i32
  %i.aq = tail call fastcc i32 @add_residual_partitioned_rice_(ptr noundef %4, ptr noundef %i.ag, i32 noundef %1, i32 noundef %i.ah, ptr noundef %i.ak, ptr noundef %i.am, i32 noundef %i.an, i32 noundef %i.ap)
  %.not29 = icmp eq i32 %i.aq, 0
  br i1 %.not29, label %add_entropy_coding_method_.exit.thread, label %add_entropy_coding_method_.exit.thread33

add_entropy_coding_method_.exit.thread33:         ; preds = %bb.g, %add_entropy_coding_method_.exit.a, %bb.i
  br label %add_entropy_coding_method_.exit.thread

add_entropy_coding_method_.exit.thread:           ; preds = %bb.f, %bb.h, %._crit_edge, %bb.i, %bb.c, %bb.a, %add_entropy_coding_method_.exit.thread33
  %.024 = phi i32 [ 0, %bb.c ], [ 1, %add_entropy_coding_method_.exit.thread33 ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %._crit_edge ], [ 0, %bb.f ]
  ret i32 %.024
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @add_residual_partitioned_rice_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %7, 0                       ; 2 uses
  %i.a = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_PARAMETER_LEN, align 4
  %i.b = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_PARAMETER_LEN, align 4
  %i.c = select i1 %.not, i32 %i.b, i32 %i.a      ; 4 uses
  %i.d = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_ESCAPE_PARAMETER, align 4
  %i.e = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ESCAPE_PARAMETER, align 4
  %i.f = select i1 %.not, i32 %i.e, i32 %i.d      ; 2 uses
  %i.g = icmp eq i32 %6, 0
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %5, align 4, !tbaa !9
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %4, align 4, !tbaa !9
  %i.k = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.c) #5
  %.not79 = icmp eq i32 %i.k, 0
  br i1 %.not79, label %.loopexit81, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %4, align 4, !tbaa !9
  %i.m = tail call i32 @FLAC__bitwriter_write_rice_signed_block(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.l) #5
  %.not80 = icmp eq i32 %i.m, 0
  br i1 %.not80, label %.loopexit81, label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.c) #5
  %.not76 = icmp eq i32 %i.n, 0
  br i1 %.not76, label %.loopexit81, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %5, align 4, !tbaa !9
  %i.p = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_RAW_LEN, align 4, !tbaa !9
  %i.q = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p) #5
  %.not77 = icmp eq i32 %i.q, 0
  br i1 %.not77, label %.loopexit81, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not91 = icmp eq i32 %2, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph90

bb.g:                                             ; preds = %.lr.ph90
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count
  br i1 %exitcond98.not, label %.loopexit, label %.lr.ph90, !llvm.loop !59

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.g
  %indvars.iv95 = phi i64 [ 0, %.lr.ph90.preheader ], [ %indvars.iv.next96, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = load i32, ptr %5, align 4, !tbaa !9
  %i.u = tail call i32 @FLAC__bitwriter_write_raw_int32(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.t) #5
  %.not78 = icmp eq i32 %i.u, 0
  br i1 %.not78, label %.loopexit81, label %bb.g

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.d
  br label %.loopexit81

bb.h:                                             ; preds = %bb.a
  %i.v = add i32 %3, %2
  %i.w = lshr i32 %i.v, %6
  %i.x = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_RAW_LEN, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit83
  %.06488 = phi i32 [ 0, %bb.h ], [ %i.aa, %.loopexit83 ] ; 4 uses
  %.06787 = phi i32 [ 0, %bb.h ], [ %i.av, %.loopexit83 ] ; 3 uses
  %i.y = icmp eq i32 %.06787, 0
  %i.z = select i1 %i.y, i32 %3, i32 0
  %spec.select = sub i32 %i.w, %i.z               ; 2 uses
  %i.aa = add i32 %spec.select, %.06488           ; 3 uses
  %i.ab = zext i32 %.06787 to i64                 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ab ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %i.ah = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.c) #5
  %.not74 = icmp eq i32 %i.ah, 0
  br i1 %.not74, label %.loopexit81, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = zext i32 %.06488 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !9
  %i.al = tail call i32 @FLAC__bitwriter_write_rice_signed_block(ptr noundef %0, ptr noundef %i.aj, i32 noundef %spec.select, i32 noundef %i.ak) #5
  %.not75 = icmp eq i32 %i.al, 0
  br i1 %.not75, label %.loopexit81, label %.loopexit83

bb.l:                                             ; preds = %bb.i
  %i.am = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.c) #5
  %.not71 = icmp eq i32 %i.am, 0
  br i1 %.not71, label %.loopexit81, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ao = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %0, i32 noundef %i.an, i32 noundef %i.x) #5
  %.not72 = icmp eq i32 %i.ao, 0
  br i1 %.not72, label %.loopexit81, label %.preheader82

.preheader82:                                     ; preds = %bb.m
  %i.ap = icmp ult i32 %.06488, %i.aa
  br i1 %i.ap, label %.lr.ph.preheader, label %.loopexit83

.lr.ph.preheader:                                 ; preds = %.preheader82
  %i.aq = zext i32 %.06488 to i64
  br label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit83, label %.lr.ph, !llvm.loop !60

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.au = tail call i32 @FLAC__bitwriter_write_raw_int32(ptr noundef %0, i32 noundef %i.as, i32 noundef %i.at) #5
  %.not73 = icmp eq i32 %i.au, 0
  br i1 %.not73, label %.loopexit81, label %bb.n

.loopexit83:                                      ; preds = %bb.n, %.preheader82, %bb.k
  %i.av = add i32 %.06787, 1                      ; 2 uses
  %.067.highbits = lshr i32 %i.av, %6
  %i.aw = icmp eq i32 %.067.highbits, 0
  br i1 %i.aw, label %bb.i, label %.loopexit81, !llvm.loop !61

.loopexit81:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %.loopexit83, %.lr.ph, %.lr.ph90, %.loopexit, %bb.c, %bb.d, %bb.e, %bb.f
  %.2 = phi i32 [ 0, %.lr.ph ], [ 1, %.loopexit ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.lr.ph90 ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.j ], [ 1, %.loopexit83 ]
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__subframe_add_lpc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @FLAC__SUBFRAME_TYPE_LPC_BYTE_ALIGNED_MASK, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !65
  %i.d = shl i32 %i.c, 1
  %i.e = add i32 %i.d, -2
  %.not = icmp ne i32 %3, 0                       ; 2 uses
  %i.f = zext i1 %.not to i32
  %i.g = or i32 %i.a, %i.f
  %i.h = or i32 %i.g, %i.e
  %i.i = load i32, ptr @FLAC__SUBFRAME_ZERO_PAD_LEN, align 4, !tbaa !9
  %i.j = load i32, ptr @FLAC__SUBFRAME_TYPE_LEN, align 4, !tbaa !9
  %i.k = add i32 %i.j, %i.i
  %i.l = load i32, ptr @FLAC__SUBFRAME_WASTED_BITS_FLAG_LEN, align 4, !tbaa !9
  %i.m = add i32 %i.k, %i.l
  %i.n = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %4, i32 noundef %i.h, i32 noundef %i.m) #5
  %.not37 = icmp eq i32 %i.n, 0
  br i1 %.not37, label %add_entropy_coding_method_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %3, -1
  %i.p = tail call i32 @FLAC__bitwriter_write_unary_unsigned(ptr noundef %4, i32 noundef %i.o) #5
  %.not38 = icmp eq i32 %i.p, 0
  br i1 %.not38, label %add_entropy_coding_method_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load i32, ptr %i.b, align 8, !tbaa !65
  %.not54 = icmp eq i32 %i.q, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.b, align 8, !tbaa !65
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.f, label %._crit_edge, !llvm.loop !62

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = tail call i32 @FLAC__bitwriter_write_raw_int64(ptr noundef %4, i64 noundef %i.w, i32 noundef %2) #5
  %.not44 = icmp eq i32 %i.x, 0
  br i1 %.not44, label %add_entropy_coding_method_.exit.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !66
  %i.aa = add i32 %i.z, -1
  %i.ab = load i32, ptr @FLAC__SUBFRAME_LPC_QLP_COEFF_PRECISION_LEN, align 4, !tbaa !9
  %i.ac = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %4, i32 noundef %i.aa, i32 noundef %i.ab) #5
  %.not39 = icmp eq i32 %i.ac, 0
  br i1 %.not39, label %add_entropy_coding_method_.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !67
  %i.af = load i32, ptr @FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN, align 4, !tbaa !9
  %i.ag = tail call i32 @FLAC__bitwriter_write_raw_int32(ptr noundef %4, i32 noundef %i.ae, i32 noundef %i.af) #5
  %.not40 = icmp eq i32 %i.ag, 0
  br i1 %.not40, label %add_entropy_coding_method_.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !65
  %.not55 = icmp eq i32 %i.ah, 0
  br i1 %.not55, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !65
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next59, %i.ak
  br i1 %i.al, label %bb.i, label %._crit_edge53, !llvm.loop !63

bb.i:                                             ; preds = %.lr.ph52, %bb.h
  %indvars.iv58 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next59, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv58
  %i.an = load i32, ptr %i.am, align 4, !tbaa !9
  %i.ao = load i32, ptr %i.y, align 4, !tbaa !66
  %i.ap = tail call i32 @FLAC__bitwriter_write_raw_int32(ptr noundef %4, i32 noundef %i.an, i32 noundef %i.ao) #5
  %.not43 = icmp eq i32 %i.ap, 0
  br i1 %.not43, label %add_entropy_coding_method_.exit.thread, label %bb.h

._crit_edge53:                                    ; preds = %bb.h, %.preheader
  %i.aq = load i32, ptr %0, align 8, !tbaa !16
  %i.ar = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_TYPE_LEN, align 4, !tbaa !9
  %i.as = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %4, i32 noundef %i.aq, i32 noundef %i.ar) #5
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %add_entropy_coding_method_.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge53
  %i.at = load i32, ptr %0, align 8, !tbaa !16
  %switch.i = icmp ult i32 %i.at, 2
  br i1 %switch.i, label %bb.k, label %add_entropy_coding_method_.exit.thread47

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !10
  %i.aw = load i32, ptr @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN, align 4, !tbaa !9
  %i.ax = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %4, i32 noundef %i.av, i32 noundef %i.aw) #5
  %.not5.i = icmp eq i32 %i.ax, 0
  br i1 %.not5.i, label %add_entropy_coding_method_.exit.thread, label %add_entropy_coding_method_.exit.a

add_entropy_coding_method_.exit.a:                ; preds = %bb.k
  %.pr = load i32, ptr %0, align 8, !tbaa !68     ; 2 uses
  %switch = icmp ult i32 %.pr, 2
  br i1 %switch, label %bb.l, label %add_entropy_coding_method_.exit.thread47

bb.l:                                             ; preds = %add_entropy_coding_method_.exit.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !69
  %i.ba = load i32, ptr %i.b, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !10 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.bg = load i32, ptr %i.au, align 8, !tbaa !10
  %i.bh = icmp eq i32 %.pr, 1
  %i.bi = zext i1 %i.bh to i32
  %i.bj = tail call fastcc i32 @add_residual_partitioned_rice_(ptr noundef %4, ptr noundef %i.az, i32 noundef %1, i32 noundef %i.ba, ptr noundef %i.bd, ptr noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bi)
  %.not42 = icmp eq i32 %i.bj, 0
  br i1 %.not42, label %add_entropy_coding_method_.exit.thread, label %add_entropy_coding_method_.exit.thread47

add_entropy_coding_method_.exit.thread47:         ; preds = %bb.j, %add_entropy_coding_method_.exit.a, %bb.l
  br label %add_entropy_coding_method_.exit.thread

add_entropy_coding_method_.exit.thread:           ; preds = %bb.f, %bb.i, %bb.k, %._crit_edge53, %bb.l, %bb.g, %._crit_edge, %bb.c, %bb.a, %add_entropy_coding_method_.exit.thread47
  %.035 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %add_entropy_coding_method_.exit.thread47 ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %._crit_edge ], [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %._crit_edge53 ], [ 0, %bb.f ]
  ret i32 %.035
}

declare i32 @FLAC__bitwriter_write_raw_int32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__subframe_add_verbatim(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @FLAC__SUBFRAME_TYPE_VERBATIM_BYTE_ALIGNED_MASK, align 4, !tbaa !9
  %.not = icmp ne i32 %3, 0                       ; 2 uses
  %i.b = zext i1 %.not to i32
  %i.c = or i32 %i.a, %i.b
  %i.d = load i32, ptr @FLAC__SUBFRAME_ZERO_PAD_LEN, align 4, !tbaa !9
  %i.e = load i32, ptr @FLAC__SUBFRAME_TYPE_LEN, align 4, !tbaa !9
  %i.f = add i32 %i.e, %i.d
  %i.g = load i32, ptr @FLAC__SUBFRAME_WASTED_BITS_FLAG_LEN, align 4, !tbaa !9
  %i.h = add i32 %i.f, %i.g
  %i.i = tail call i32 @FLAC__bitwriter_write_raw_uint32(ptr noundef %4, i32 noundef %i.c, i32 noundef %i.h) #5
  %.not30 = icmp eq i32 %i.i, 0
  br i1 %.not30, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %3, -1
  %i.k = tail call i32 @FLAC__bitwriter_write_unary_unsigned(ptr noundef %4, i32 noundef %i.j) #5
  %.not31 = icmp eq i32 %i.k, 0
  br i1 %.not31, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !73
  %i.n = icmp eq i32 %i.m, 0
  %i.o = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not3544.not = icmp eq i32 %1, 0               ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.not3544.not, label %.critedge, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %bb.e
  %wide.trip.count56 = zext i32 %1 to i64
  br label %.lr.ph46

bb.f:                                             ; preds = %.lr.ph46
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %.critedge, label %.lr.ph46, !llvm.loop !70

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %bb.f
  %indvars.iv53 = phi i64 [ 0, %.lr.ph46.preheader ], [ %indvars.iv.next54, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv53
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %i.r = tail call i32 @FLAC__bitwriter_write_raw_int32(ptr noundef %4, i32 noundef %i.q, i32 noundef %2) #5
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %.critedge, label %bb.f

bb.g:                                             ; preds = %bb.d
  br i1 %.not3544.not, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !71

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 @FLAC__bitwriter_write_raw_int64(ptr noundef %4, i64 noundef %i.t, i32 noundef %2) #5
  %.not32 = icmp eq i32 %i.u, 0
  br i1 %.not32, label %.critedge, label %bb.h

.critedge:                                        ; preds = %.lr.ph, %bb.h, %.lr.ph46, %bb.f, %bb.g, %bb.e, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 0, %.lr.ph46 ], [ 1, %bb.h ], [ 0, %.lr.ph ]
  ret i32 %.2
}

declare i32 @FLAC__bitwriter_write_rice_signed_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"long", !4, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 8}
!14 = !{!"p1 int", !8, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!13, !5, i64 0}
!17 = !{!"", !14, i64 0, !14, i64 8, !5, i64 16}
!18 = !{!17, !14, i64 0}
!19 = !{!17, !14, i64 8}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = !{!"p1 omnipotent char", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"FLAC__StreamMetadata", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 16}
!27 = !{!26, !5, i64 4}
!28 = !{!26, !5, i64 0}
!29 = !{!26, !5, i64 8}
!30 = !{!"", !12, i64 0, !12, i64 8, !5, i64 16}
!31 = !{!30, !12, i64 0}
!32 = !{!30, !12, i64 8}
!33 = !{!30, !5, i64 16}
!34 = !{!"", !5, i64 0, !24, i64 8}
!35 = !{!34, !5, i64 0}
!36 = !{!34, !24, i64 8}
!37 = !{!"", !12, i64 0, !4, i64 8, !4, i64 9, !5, i64 22, !5, i64 22, !4, i64 23, !8, i64 24}
!38 = !{!37, !12, i64 0}
!39 = !{!37, !4, i64 8}
!40 = !{!37, !4, i64 23}
!41 = !{!37, !8, i64 24}
!42 = !{!"", !12, i64 0, !4, i64 8}
!43 = !{!42, !12, i64 0}
!44 = !{!42, !4, i64 8}
!45 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !4, i64 32}
!46 = !{!45, !5, i64 20}
!47 = !{!45, !5, i64 0}
!48 = !{!45, !5, i64 4}
!49 = !{!45, !5, i64 12}
!50 = !{!45, !5, i64 8}
!51 = !{!45, !5, i64 16}
!52 = !{!"", !12, i64 0}
!53 = !{!52, !12, i64 0}
!54 = distinct !{!54, !11}
!55 = !{!"", !13, i64 0, !5, i64 24, !4, i64 32, !14, i64 64}
!56 = !{!55, !5, i64 24}
!57 = !{!55, !5, i64 0}
!58 = !{!55, !14, i64 64}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = !{!"", !13, i64 0, !5, i64 24, !5, i64 28, !5, i64 32, !4, i64 36, !4, i64 168, !14, i64 424}
!65 = !{!64, !5, i64 24}
!66 = !{!64, !5, i64 28}
!67 = !{!64, !5, i64 32}
!68 = !{!64, !5, i64 0}
!69 = !{!64, !14, i64 424}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = !{!"", !4, i64 0, !5, i64 8}
!73 = !{!72, !5, i64 8}
end_hunk_1
