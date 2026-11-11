Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/metadata_iterators?download=true
inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 89
loop-unroll.NumUnrolled: 109
begin_hunk_0_@FLAC__metadata_chain_check_if_tempfile_needed:bb.a
  %notmask = shl nsw i32 -1, %i.bo
  %i.bp = xor i32 %notmask, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.2, i32 %i.bp)
  %i.bq = add nuw i32 %spec.select, 4
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nsw i64 %.055.lcssa, %i.br
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.u
  %.3.ph = phi i64 [ %i.bs, %bb.u ], [ %.055.lcssa, %._crit_edge ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !142
  %i.bv = icmp ne i64 %.3.ph, %i.bu
  %i.bw = zext i1 %i.bv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.n, %bb.s, %bb.v
  %.361 = phi i32 [ %i.bw, %bb.v ], [ 0, %bb.s ], [ 0, %bb.n ], [ 0, %bb.q ]
  ret i32 %.361
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 2) i32 @FLAC__metadata_chain_write(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 18 uses
  %i.b = alloca [1024 x i8], align 16             ; 28 uses
  %i.c = alloca [4 x i8], align 1                 ; 12 uses
  %i.d = alloca [18 x i8], align 16               ; 7 uses
  %i.e = alloca [1024 x i8], align 16             ; 5 uses
  %i.f = alloca [34 x i8], align 16               ; 22 uses
  %i.g = alloca [4 x i8], align 1                 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !141
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 12, ptr %i.j, align 4, !tbaa !140
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !139
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 14, ptr %i.m, align 4, !tbaa !140
  br label %bb.bf

bb.e:                                             ; preds = %bb.c
  %i.n = tail call fastcc i64 @chain_prepare_for_write_(ptr noundef nonnull %0, i32 noundef %1) ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.bf, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not27 = icmp eq i32 %2, 0                     ; 3 uses
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %0, align 8, !tbaa !139
  %i.q = call i32 @stat64(ptr noundef readonly %i.p, ptr noundef nonnull %3) #32 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !142
  %i.t = icmp eq i64 %i.n, %i.s
  br i1 %i.t, label %bb.i, label %bb.bc

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %0, align 8, !tbaa !139
  %i.v = tail call noalias ptr @fopen64(ptr noundef %i.u, ptr noundef nonnull @.str.31) ; 41 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %chain_rewrite_metadata_in_place_.exit.thread, label %bb.j

chain_rewrite_metadata_in_place_.exit.thread:     ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 2, ptr %i.x, align 4, !tbaa !140
  br label %bb.bf

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !144
  %i.aa = tail call noundef i32 @fseeko64(ptr noundef nonnull %i.v, i64 noundef %i.z, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %chain_rewrite_metadata_in_place_.exit

.preheader.i.i:                                   ; preds = %bb.j
  %i.ab = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.af = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_TYPE_LEN, align 4 ; 2 uses
  %i.ag = lshr i32 %i.af, 3                       ; 4 uses
  %.not.i.i50.i.i = icmp eq i32 %i.ag, 0
  %i.ah = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_MIME_TYPE_LENGTH_LEN, align 4 ; 2 uses
  %i.ak = lshr i32 %i.aj, 3                       ; 4 uses
  %.not.i75.i.i.i = icmp eq i32 %i.ak, 0
  %i.al = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al ; 2 uses
  %i.an = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DESCRIPTION_LENGTH_LEN, align 4 ; 2 uses
  %i.ao = lshr i32 %i.an, 3                       ; 4 uses
  %.not.i83.i.i.i = icmp eq i32 %i.ao, 0
  %i.ap = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_WIDTH_LEN, align 4 ; 2 uses
  %i.as = lshr i32 %i.ar, 3                       ; 4 uses
  %.not.i91.i.i.i = icmp eq i32 %i.as, 0
  %i.at = zext nneg i32 %i.as to i64              ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at ; 2 uses
  %i.av = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_HEIGHT_LEN, align 4 ; 2 uses
  %i.aw = lshr i32 %i.av, 3                       ; 4 uses
  %.not.i99.i.i.i = icmp eq i32 %i.aw, 0
  %i.ax = zext nneg i32 %i.aw to i64              ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DEPTH_LEN, align 4 ; 2 uses
  %i.ba = lshr i32 %i.az, 3                       ; 4 uses
  %.not.i107.i61.i.i = icmp eq i32 %i.ba, 0
  %i.bb = zext nneg i32 %i.ba to i64              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_COLORS_LEN, align 4 ; 2 uses
  %i.be = lshr i32 %i.bd, 3                       ; 4 uses
  %.not.i115.i68.i.i = icmp eq i32 %i.be, 0
  %i.bf = zext nneg i32 %i.be to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DATA_LENGTH_LEN, align 4 ; 2 uses
  %i.bi = lshr i32 %i.bh, 3                       ; 4 uses
  %.not.i123.i75.i.i = icmp eq i32 %i.bi, 0
  %i.bj = zext nneg i32 %i.bi to i64              ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_MEDIA_CATALOG_NUMBER_LEN, align 4
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_LEAD_IN_LEN, align 4 ; 2 uses
  %i.bp = lshr i32 %i.bo, 3                       ; 4 uses
  %.not.i.i43.i.i = icmp eq i32 %i.bp, 0
  %i.bq = zext nneg i32 %i.bp to i64              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN, align 4
  %i.bt = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN, align 4
  %i.bu = add i32 %i.bt, %i.bs
  %i.bv = lshr i32 %i.bu, 3
  %i.bw = zext nneg i32 %i.bv to i64              ; 3 uses
  %i.bx = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN, align 4 ; 2 uses
  %i.by = lshr i32 %i.bx, 3                       ; 4 uses
  %.not.i100.i.i.i = icmp eq i32 %i.by, 0
  %i.bz = zext nneg i32 %i.by to i64              ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_OFFSET_LEN, align 4 ; 2 uses
  %i.cc = lshr i32 %i.cb, 3                       ; 4 uses
  %.not.i107.i.i.i = icmp eq i32 %i.cc, 0
  %i.cd = zext nneg i32 %i.cc to i64              ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUMBER_LEN, align 4
  %i.cg = lshr i32 %i.cf, 3                       ; 5 uses
  %.not.i115.i.i.i = icmp eq i32 %i.cg, 0
  %i.ch = zext nneg i32 %i.cg to i64              ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch
  %i.cj = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN, align 4
  %i.ck = lshr i32 %i.cj, 3
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_TYPE_LEN, align 4
  %i.cn = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_PRE_EMPHASIS_LEN, align 4
  %i.co = add i32 %i.cn, %i.cm
  %i.cp = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_RESERVED_LEN, align 4
  %i.cq = add i32 %i.co, %i.cp
  %i.cr = lshr i32 %i.cq, 3
  %i.cs = zext nneg i32 %i.cr to i64              ; 3 uses
  %i.ct = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN, align 4
  %i.cu = lshr i32 %i.ct, 3                       ; 5 uses
  %.not.i123.i.i.i = icmp eq i32 %i.cu, 0
  %i.cv = zext nneg i32 %i.cu to i64              ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cv
  %i.cx = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN, align 4 ; 2 uses
  %i.cy = lshr i32 %i.cx, 3                       ; 4 uses
  %.not.i131.i.i.i = icmp eq i32 %i.cy, 0
  %i.cz = zext nneg i32 %i.cy to i64              ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN, align 4
  %i.dc = lshr i32 %i.db, 3                       ; 5 uses
  %.not.i139.i.i.i = icmp eq i32 %i.dc, 0
  %i.dd = zext nneg i32 %i.dc to i64              ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dd
  %i.df = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN, align 4
  %i.dg = lshr i32 %i.df, 3
  %i.dh = zext nneg i32 %i.dg to i64              ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %i.ci, i64 -1
  %exitcond.not.i121.peel.i.i.i = icmp eq i32 %i.cg, 1
  %i.dj = getelementptr inbounds i8, ptr %i.cw, i64 -1
  %exitcond.not.i129.peel.i.i.i = icmp eq i32 %i.cu, 1
  %i.dk = getelementptr inbounds i8, ptr %i.de, i64 -1
  %exitcond.not.i145.peel.i.i.i = icmp eq i32 %i.dc, 1
  %i.dl = add nsw i64 %i.ch, -2
  %i.dm = add nsw i32 %i.cg, -2
  %i.dn = zext i32 %i.dm to i64
  %i.do = sub nsw i64 %i.dl, %i.dn
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.do
  %i.dp = add nsw i32 %i.cg, -1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = add nsw i64 %i.cv, -2
  %i.ds = add nsw i32 %i.cu, -2
  %i.dt = zext i32 %i.ds to i64
  %i.du = sub nsw i64 %i.dr, %i.dt
  %scevgep91.i.i = getelementptr i8, ptr %i.b, i64 %i.du
  %i.dv = add nsw i32 %i.cu, -1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = add nsw i64 %i.dd, -2
  %i.dy = add nsw i32 %i.dc, -2
  %i.dz = zext i32 %i.dy to i64
  %i.ea = sub nsw i64 %i.dx, %i.dz
  %scevgep92.i.i = getelementptr i8, ptr %i.b, i64 %i.ea
  %i.eb = add nsw i32 %i.dc, -1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN, align 4 ; 3 uses
  %i.ee = lshr i32 %i.ed, 3                       ; 6 uses
  %i.ef = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN, align 4 ; 2 uses
  %i.eg = lshr i32 %i.ef, 3                       ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.ee, 0            ; 2 uses
  %i.eh = zext nneg i32 %i.ee to i64              ; 6 uses
  %.not.i41.i.i.i = icmp eq i32 %i.eg, 0
  %i.ei = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.em = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4
  %i.en = lshr i32 %i.em, 3                       ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.et = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %xtraiter = and i32 %i.ag, 7                    ; 3 uses
  %i.fh = icmp ult i32 %i.af, 64
  %unroll_iter = and i32 %i.ag, 536870904
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod76 = icmp ne i32 %xtraiter, 0
  %xtraiter77 = and i32 %i.ak, 7                  ; 3 uses
  %i.fi = icmp ult i32 %i.aj, 64
  %unroll_iter81 = and i32 %i.ak, 536870904
  %lcmp.mod79.not = icmp eq i32 %xtraiter77, 0
  %lcmp.mod80 = icmp ne i32 %xtraiter77, 0
  %xtraiter83 = and i32 %i.ao, 7                  ; 3 uses
  %i.fj = icmp ult i32 %i.an, 64
  %unroll_iter87 = and i32 %i.ao, 536870904
  %lcmp.mod85.not = icmp eq i32 %xtraiter83, 0
  %lcmp.mod86 = icmp ne i32 %xtraiter83, 0
  %xtraiter89 = and i32 %i.as, 7                  ; 3 uses
  %i.fk = icmp ult i32 %i.ar, 64
  %unroll_iter93 = and i32 %i.as, 536870904
  %lcmp.mod91.not = icmp eq i32 %xtraiter89, 0
  %lcmp.mod92 = icmp ne i32 %xtraiter89, 0
  %xtraiter95 = and i32 %i.aw, 7                  ; 3 uses
  %i.fl = icmp ult i32 %i.av, 64
  %unroll_iter99 = and i32 %i.aw, 536870904
  %lcmp.mod97.not = icmp eq i32 %xtraiter95, 0
  %lcmp.mod98 = icmp ne i32 %xtraiter95, 0
  %xtraiter101 = and i32 %i.ba, 7                 ; 3 uses
  %i.fm = icmp ult i32 %i.az, 64
  %unroll_iter105 = and i32 %i.ba, 536870904
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  %xtraiter107 = and i32 %i.be, 7                 ; 3 uses
  %i.fn = icmp ult i32 %i.bd, 64
  %unroll_iter111 = and i32 %i.be, 536870904
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0
  %xtraiter113 = and i32 %i.bi, 7                 ; 3 uses
  %i.fo = icmp ult i32 %i.bh, 64
  %unroll_iter117 = and i32 %i.bi, 536870904
  %lcmp.mod115.not = icmp eq i32 %xtraiter113, 0
  %lcmp.mod116 = icmp ne i32 %xtraiter113, 0
  %xtraiter119 = and i32 %i.bp, 7                 ; 3 uses
  %i.fp = icmp ult i32 %i.bo, 64
  %unroll_iter123 = and i32 %i.bp, 536870904
  %lcmp.mod121.not = icmp eq i32 %xtraiter119, 0
  %lcmp.mod122 = icmp ne i32 %xtraiter119, 0
  %xtraiter125 = and i32 %i.by, 7                 ; 3 uses
  %i.fq = icmp ult i32 %i.bx, 64
  %unroll_iter129 = and i32 %i.by, 536870904
  %lcmp.mod127.not = icmp eq i32 %xtraiter125, 0
  %lcmp.mod128 = icmp ne i32 %xtraiter125, 0
  %xtraiter131 = and i32 %i.cc, 7                 ; 3 uses
  %i.fr = icmp ult i32 %i.cb, 64
  %unroll_iter135 = and i32 %i.cc, 536870904
  %lcmp.mod133.not = icmp eq i32 %xtraiter131, 0
  %lcmp.mod134 = icmp ne i32 %xtraiter131, 0
  %xtraiter137 = and i32 %i.cy, 7                 ; 3 uses
  %i.fs = icmp ult i32 %i.cx, 64
  %unroll_iter141 = and i32 %i.cy, 536870904
  %lcmp.mod139.not = icmp eq i32 %xtraiter137, 0
  %lcmp.mod140 = icmp ne i32 %xtraiter137, 0
  %xtraiter143 = and i32 %i.ee, 7                 ; 3 uses
  %i.ft = icmp ult i32 %i.ed, 64
  %unroll_iter147 = and i32 %i.ee, 536870904
  %lcmp.mod145.not = icmp eq i32 %xtraiter143, 0
  %lcmp.mod146 = icmp ne i32 %xtraiter143, 0
  %xtraiter149 = and i32 %i.eg, 7                 ; 3 uses
  %i.fu = icmp ult i32 %i.ef, 64
  %unroll_iter153 = and i32 %i.eg, 536870904
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  %lcmp.mod152 = icmp ne i32 %xtraiter149, 0
  %xtraiter155 = and i32 %i.ee, 7                 ; 3 uses
  %i.fv = icmp ult i32 %i.ed, 64
  %unroll_iter159 = and i32 %i.ee, 536870904
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  %lcmp.mod158 = icmp ne i32 %xtraiter155, 0
  br label %bb.k

bb.k:                                             ; preds = %write_metadata_block_data_cb_.exit.i, %.preheader.i.i
  %.pn.i.i = phi ptr [ %.0.i.i, %write_metadata_block_data_cb_.exit.i ], [ %0, %.preheader.i.i ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !149 ; 4 uses
  %.not17.i.i.not.not = icmp ne ptr %.0.i.i, null ; 5 uses
  br i1 %.not17.i.i.not.not, label %bb.l, label %chain_rewrite_metadata_in_place_.exit

bb.l:                                             ; preds = %bb.k
  %i.fw = load ptr, ptr %.0.i.i, align 8, !tbaa !138 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !78 ; 4 uses
  %.highbits.i.i.i = lshr i32 %i.fy, %i.ab
  %.not.i.i.i = icmp eq i32 %.highbits.i.i.i, 0
  br i1 %.not.i.i.i, label %write_metadata_block_header_cb_.exit.i.i, label %write_metadata_block_header_cb_.exit.thread.i.i

write_metadata_block_header_cb_.exit.thread.i.i:  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br label %chain_rewrite_metadata_in_place_.exit

write_metadata_block_header_cb_.exit.i.i:         ; preds = %bb.l
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !76
  %.not6.i.i.i = icmp eq i32 %i.ga, 0
  %i.gb = select i1 %.not6.i.i.i, i32 0, i32 128
  %i.gc = load i32, ptr %i.fw, align 8, !tbaa !79
  %i.gd = or i32 %i.gb, %i.gc
  %i.ge = trunc i32 %i.gd to i8
  store i8 %i.ge, ptr %i.g, align 1, !tbaa !52
  %i.gf = trunc i32 %i.fy to i8
  store i8 %i.gf, ptr %i.ac, align 1, !tbaa !52
  %i.gg = lshr i32 %i.fy, 8
  %i.gh = trunc i32 %i.gg to i8
  store i8 %i.gh, ptr %i.ad, align 1, !tbaa !52
  %i.gi = lshr i32 %i.fy, 16
  %i.gj = trunc i32 %i.gi to i8
  store i8 %i.gj, ptr %i.ae, align 1, !tbaa !52
  %i.gk = call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.v) #32, !inline_history !223
  %.not7.i.not.i.i = icmp eq i64 %i.gk, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br i1 %.not7.i.not.i.i, label %bb.m, label %chain_rewrite_metadata_in_place_.exit

bb.m:                                             ; preds = %write_metadata_block_header_cb_.exit.i.i
  %i.gl = load ptr, ptr %.0.i.i, align 8, !tbaa !138 ; 36 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !79
  switch i32 %i.gm, label %bb.bb [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.q
    i32 3, label %bb.s
    i32 4, label %bb.u
    i32 5, label %bb.ab
    i32 6, label %bb.aq
  ]

bb.n:                                             ; preds = %bb.m
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 36
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !86
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !87
  %i.gs = load i32, ptr %i.gn, align 8, !tbaa !81 ; 2 uses
  %i.gt = trunc i32 %i.gs to i8
  store i8 %i.gt, ptr %i.ep, align 1, !tbaa !52
  %i.gu = lshr i32 %i.gs, 8
  %i.gv = trunc i32 %i.gu to i8
  store i8 %i.gv, ptr %i.f, align 16, !tbaa !52
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !82 ; 2 uses
  %i.gy = trunc i32 %i.gx to i8
  store i8 %i.gy, ptr %i.eq, align 1, !tbaa !52
  %i.gz = lshr i32 %i.gx, 8
  %i.ha = trunc i32 %i.gz to i8
  store i8 %i.ha, ptr %i.er, align 2, !tbaa !52
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !83 ; 3 uses
  %i.hd = trunc i32 %i.hc to i8
  store i8 %i.hd, ptr %i.es, align 2, !tbaa !52
  %i.he = lshr i32 %i.hc, 8
  %i.hf = trunc i32 %i.he to i8
  store i8 %i.hf, ptr %i.et, align 1, !tbaa !52
  %i.hg = lshr i32 %i.hc, 16
  %i.hh = trunc i32 %i.hg to i8
  store i8 %i.hh, ptr %i.eu, align 4, !tbaa !52
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !84 ; 3 uses
end_hunk_0
begin_hunk_1_@write_metadata_block_data_:bb.a
  %i.jd = lshr i64 %.0710.i.i.i, 40
  %i.je = trunc i64 %i.jd to i8
  %i.jf = getelementptr inbounds i8, ptr %.089.i.i.i, i64 -6
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !52
  %i.jg = lshr i64 %.0710.i.i.i, 48
  %i.jh = trunc i64 %i.jg to i8
  %i.ji = getelementptr inbounds i8, ptr %.089.i.i.i, i64 -7
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !52
  %i.jj = lshr i64 %.0710.i.i.i, 56
  %i.jk = trunc nuw i64 %i.jj to i8
  %i.jl = getelementptr inbounds i8, ptr %.089.i.i.i, i64 -8 ; 3 uses
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !52
  %niter86.next.7 = add i32 %niter86, 8           ; 2 uses
  %niter86.ncmp.7 = icmp eq i32 %niter86.next.7, %unroll_iter85
  br i1 %niter86.ncmp.7, label %pack_uint64_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i44.i, !llvm.loop !35

pack_uint64_.exit.i.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i44.i
  %lcmp.mod83.not = icmp eq i32 %xtraiter81, 0
  br i1 %lcmp.mod83.not, label %pack_uint64_.exit.i.i, label %.lr.ph.i.i44.i.epil.preheader

.lr.ph.i.i44.i.epil.preheader:                    ; preds = %pack_uint64_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.0710.i.i.i.epil.init = phi i64 [ %i.il, %.lr.ph.preheader.i.i.i ], [ 0, %pack_uint64_.exit.i.i.loopexit.unr-lcssa ]
  %.089.i.i.i.epil.init = phi ptr [ %i.in, %.lr.ph.preheader.i.i.i ], [ %i.jl, %pack_uint64_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod84 = icmp ne i32 %xtraiter81, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph.i.i44.i.epil

.lr.ph.i.i44.i.epil:                              ; preds = %.lr.ph.i.i44.i.epil, %.lr.ph.i.i44.i.epil.preheader
  %.0710.i.i.i.epil = phi i64 [ %i.jo, %.lr.ph.i.i44.i.epil ], [ %.0710.i.i.i.epil.init, %.lr.ph.i.i44.i.epil.preheader ] ; 2 uses
  %.089.i.i.i.epil = phi ptr [ %i.jn, %.lr.ph.i.i44.i.epil ], [ %.089.i.i.i.epil.init, %.lr.ph.i.i44.i.epil.preheader ]
  %epil.iter82 = phi i32 [ %epil.iter82.next, %.lr.ph.i.i44.i.epil ], [ 0, %.lr.ph.i.i44.i.epil.preheader ]
  %i.jm = trunc i64 %.0710.i.i.i.epil to i8
  %i.jn = getelementptr inbounds i8, ptr %.089.i.i.i.epil, i64 -1 ; 2 uses
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !52
  %i.jo = lshr i64 %.0710.i.i.i.epil, 8
  %epil.iter82.next = add i32 %epil.iter82, 1     ; 2 uses
  %epil.iter82.cmp.not = icmp eq i32 %epil.iter82.next, %xtraiter81
  br i1 %epil.iter82.cmp.not, label %pack_uint64_.exit.i.i, label %.lr.ph.i.i44.i.epil, !llvm.loop !261

pack_uint64_.exit.i.i:                            ; preds = %pack_uint64_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i44.i.epil, %bb.q
  %.pre-phi.i.i = phi i64 [ 0, %bb.q ], [ %i.im, %.lr.ph.i.i44.i.epil ], [ %i.im, %pack_uint64_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %i.jp = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %.pre-phi.i.i, ptr noundef %0) #32, !inline_history !34
  %.not87.i.i = icmp eq i64 %i.jp, %.pre-phi.i.i
  br i1 %.not87.i.i, label %bb.r, label %write_metadata_block_data_cuesheet_cb_.exit.i

bb.r:                                             ; preds = %pack_uint64_.exit.i.i
  %i.jq = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN, align 4, !tbaa !51
  %i.jr = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN, align 4, !tbaa !51
  %i.js = add i32 %i.jr, %i.jq
  %i.jt = lshr i32 %i.js, 3
  %i.ju = zext nneg i32 %i.jt to i64              ; 3 uses
  %i.jv = call ptr @__memset_chk(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef range(i64 0, 536870912) %i.ju, i64 noundef 1024) #32 ; 0 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !109
  %.not88.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not88.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jy = load i8, ptr %i.b, align 16, !tbaa !52
  %i.jz = or i8 %i.jy, -128
  store i8 %i.jz, ptr %i.b, align 16, !tbaa !52
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ka = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.ju, ptr noundef %0) #32, !inline_history !34
  %.not89.i.i = icmp eq i64 %i.ka, %i.ju
  br i1 %.not89.i.i, label %bb.u, label %write_metadata_block_data_cuesheet_cb_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.kb = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN, align 4, !tbaa !51 ; 2 uses
  %i.kc = lshr i32 %i.kb, 3                       ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 3 uses
  %.not.i100.i.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i100.i.i, label %pack_uint32_.exit.i.i, label %.lr.ph.preheader.i101.i.i

.lr.ph.preheader.i101.i.i:                        ; preds = %bb.u
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !110 ; 2 uses
  %i.kf = zext nneg i32 %i.kc to i64              ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kf ; 2 uses
  %xtraiter87 = and i32 %i.kc, 7                  ; 3 uses
  %i.kh = icmp ult i32 %i.kb, 64
  br i1 %i.kh, label %.lr.ph.i102.i.i.epil.preheader, label %.lr.ph.preheader.i101.i.i.new

.lr.ph.preheader.i101.i.i.new:                    ; preds = %.lr.ph.preheader.i101.i.i
  %unroll_iter91 = and i32 %i.kc, 536870904
  br label %.lr.ph.i102.i.i

.lr.ph.i102.i.i:                                  ; preds = %.lr.ph.i102.i.i, %.lr.ph.preheader.i101.i.i.new
  %.0710.i104.i.i = phi i32 [ %i.ke, %.lr.ph.preheader.i101.i.i.new ], [ 0, %.lr.ph.i102.i.i ] ; 4 uses
  %.089.i105.i.i = phi ptr [ %i.kg, %.lr.ph.preheader.i101.i.i.new ], [ %i.kw, %.lr.ph.i102.i.i ] ; 8 uses
  %niter92 = phi i32 [ 0, %.lr.ph.preheader.i101.i.i.new ], [ %niter92.next.7, %.lr.ph.i102.i.i ]
  %i.ki = trunc i32 %.0710.i104.i.i to i8
  %i.kj = getelementptr inbounds i8, ptr %.089.i105.i.i, i64 -1
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !52
  %i.kk = lshr i32 %.0710.i104.i.i, 8
  %i.kl = trunc i32 %i.kk to i8
  %i.km = getelementptr inbounds i8, ptr %.089.i105.i.i, i64 -2
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !52
  %i.kn = lshr i32 %.0710.i104.i.i, 16
  %i.ko = trunc i32 %i.kn to i8
  %i.kp = getelementptr inbounds i8, ptr %.089.i105.i.i, i64 -3
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !52
  %i.kq = lshr i32 %.0710.i104.i.i, 24
  %i.kr = trunc nuw i32 %i.kq to i8
  %i.ks = getelementptr inbounds i8, ptr %.089.i105.i.i, i64 -4
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !52
  %i.kt = getelementptr inbounds i8, ptr %.089.i105.i.i, i64 -5
  store i8 0, ptr %i.kt, align 1, !tbaa !52
  %i.ku = getelementptr inbounds i8, ptr %.089.i105.i.i, i64 -6
  store i8 0, ptr %i.ku, align 1, !tbaa !52
  %i.kv = getelementptr inbounds i8, ptr %.089.i105.i.i, i64 -7
  store i8 0, ptr %i.kv, align 1, !tbaa !52
  %i.kw = getelementptr inbounds i8, ptr %.089.i105.i.i, i64 -8 ; 3 uses
  store i8 0, ptr %i.kw, align 1, !tbaa !52
  %niter92.next.7 = add i32 %niter92, 8           ; 2 uses
  %niter92.ncmp.7 = icmp eq i32 %niter92.next.7, %unroll_iter91
  br i1 %niter92.ncmp.7, label %pack_uint32_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i102.i.i, !llvm.loop !36

pack_uint32_.exit.i.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i102.i.i
  %lcmp.mod89.not = icmp eq i32 %xtraiter87, 0
  br i1 %lcmp.mod89.not, label %pack_uint32_.exit.i.i, label %.lr.ph.i102.i.i.epil.preheader

.lr.ph.i102.i.i.epil.preheader:                   ; preds = %pack_uint32_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i101.i.i
  %.0710.i104.i.i.epil.init = phi i32 [ %i.ke, %.lr.ph.preheader.i101.i.i ], [ 0, %pack_uint32_.exit.i.i.loopexit.unr-lcssa ]
  %.089.i105.i.i.epil.init = phi ptr [ %i.kg, %.lr.ph.preheader.i101.i.i ], [ %i.kw, %pack_uint32_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i32 %xtraiter87, 0
  call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph.i102.i.i.epil

.lr.ph.i102.i.i.epil:                             ; preds = %.lr.ph.i102.i.i.epil, %.lr.ph.i102.i.i.epil.preheader
  %.0710.i104.i.i.epil = phi i32 [ %i.kz, %.lr.ph.i102.i.i.epil ], [ %.0710.i104.i.i.epil.init, %.lr.ph.i102.i.i.epil.preheader ] ; 2 uses
  %.089.i105.i.i.epil = phi ptr [ %i.ky, %.lr.ph.i102.i.i.epil ], [ %.089.i105.i.i.epil.init, %.lr.ph.i102.i.i.epil.preheader ]
  %epil.iter88 = phi i32 [ %epil.iter88.next, %.lr.ph.i102.i.i.epil ], [ 0, %.lr.ph.i102.i.i.epil.preheader ]
  %i.kx = trunc i32 %.0710.i104.i.i.epil to i8
  %i.ky = getelementptr inbounds i8, ptr %.089.i105.i.i.epil, i64 -1 ; 2 uses
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !52
  %i.kz = lshr i32 %.0710.i104.i.i.epil, 8
  %epil.iter88.next = add i32 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i32 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %pack_uint32_.exit.i.i, label %.lr.ph.i102.i.i.epil, !llvm.loop !262

pack_uint32_.exit.i.i:                            ; preds = %pack_uint32_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i102.i.i.epil, %bb.u
  %.pre-phi170.i.i = phi i64 [ 0, %bb.u ], [ %i.kf, %.lr.ph.i102.i.i.epil ], [ %i.kf, %pack_uint32_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %i.la = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %.pre-phi170.i.i, ptr noundef %0) #32, !inline_history !34
  %.not90.i.i = icmp eq i64 %i.la, %.pre-phi170.i.i
  br i1 %.not90.i.i, label %.preheader147.i.i, label %write_metadata_block_data_cuesheet_cb_.exit.i

.preheader147.i.i:                                ; preds = %pack_uint32_.exit.i.i
  %i.lb = load i32, ptr %i.kd, align 4, !tbaa !110
  %.not159.i.i = icmp eq i32 %i.lb, 0
  br i1 %.not159.i.i, label %write_metadata_block_data_cuesheet_cb_.exit.i, label %.lr.ph151.i.i

.lr.ph151.i.i:                                    ; preds = %.preheader147.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ld = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_OFFSET_LEN, align 4, !tbaa !51 ; 2 uses
  %i.le = lshr i32 %i.ld, 3                       ; 4 uses
  %.not.i107.i.i = icmp eq i32 %i.le, 0
  %i.lf = zext nneg i32 %i.le to i64              ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUMBER_LEN, align 4
  %i.li = lshr i32 %i.lh, 3                       ; 5 uses
  %.not.i115.i.i = icmp eq i32 %i.li, 0
  %i.lj = zext nneg i32 %i.li to i64              ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lj
  %i.ll = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN, align 4
  %i.lm = lshr i32 %i.ll, 3
  %i.ln = zext nneg i32 %i.lm to i64              ; 2 uses
  %i.lo = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_TYPE_LEN, align 4
  %i.lp = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_PRE_EMPHASIS_LEN, align 4
  %i.lq = add i32 %i.lp, %i.lo
  %i.lr = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_RESERVED_LEN, align 4
  %i.ls = add i32 %i.lq, %i.lr
  %i.lt = lshr i32 %i.ls, 3
  %i.lu = zext nneg i32 %i.lt to i64              ; 3 uses
  %i.lv = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN, align 4
  %i.lw = lshr i32 %i.lv, 3                       ; 5 uses
  %.not.i123.i.i = icmp eq i32 %i.lw, 0
  %i.lx = zext nneg i32 %i.lw to i64              ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lx
  %i.lz = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN, align 4 ; 2 uses
  %i.ma = lshr i32 %i.lz, 3                       ; 4 uses
  %.not.i131.i.i = icmp eq i32 %i.ma, 0
  %i.mb = zext nneg i32 %i.ma to i64              ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mb ; 2 uses
  %i.md = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN, align 4
  %i.me = lshr i32 %i.md, 3                       ; 5 uses
  %.not.i139.i.i = icmp eq i32 %i.me, 0
  %i.mf = zext nneg i32 %i.me to i64              ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mf
  %i.mh = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN, align 4
  %i.mi = lshr i32 %i.mh, 3
  %i.mj = zext nneg i32 %i.mi to i64              ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %i.lk, i64 -1
  %exitcond.not.i121.peel.i.i = icmp eq i32 %i.li, 1
  %i.ml = getelementptr inbounds i8, ptr %i.ly, i64 -1
  %exitcond.not.i129.peel.i.i = icmp eq i32 %i.lw, 1
  %i.mm = getelementptr inbounds i8, ptr %i.mg, i64 -1
  %exitcond.not.i145.peel.i.i = icmp eq i32 %i.me, 1
  %i.mn = add nsw i64 %i.lj, -2
  %i.mo = add nsw i32 %i.li, -2
  %i.mp = zext i32 %i.mo to i64
  %i.mq = sub nsw i64 %i.mn, %i.mp
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.mq
  %i.mr = add nsw i32 %i.li, -1
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = add nsw i64 %i.lx, -2
  %i.mu = add nsw i32 %i.lw, -2
  %i.mv = zext i32 %i.mu to i64
  %i.mw = sub nsw i64 %i.mt, %i.mv
  %scevgep91.i = getelementptr i8, ptr %i.b, i64 %i.mw
  %i.mx = add nsw i32 %i.lw, -1
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = add nsw i64 %i.mf, -2
  %i.na = add nsw i32 %i.me, -2
  %i.nb = zext i32 %i.na to i64
  %i.nc = sub nsw i64 %i.mz, %i.nb
  %scevgep92.i = getelementptr i8, ptr %i.b, i64 %i.nc
  %i.nd = add nsw i32 %i.me, -1
  %i.ne = zext nneg i32 %i.nd to i64
  %xtraiter93 = and i32 %i.le, 7                  ; 3 uses
  %i.nf = icmp ult i32 %i.ld, 64
  %unroll_iter97 = and i32 %i.le, 536870904
  %lcmp.mod95.not = icmp eq i32 %xtraiter93, 0
  %lcmp.mod96 = icmp ne i32 %xtraiter93, 0
  %xtraiter99 = and i32 %i.ma, 7                  ; 3 uses
  %i.ng = icmp ult i32 %i.lz, 64
  %unroll_iter103 = and i32 %i.ma, 536870904
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0
  br label %bb.v

bb.v:                                             ; preds = %.critedge99.i.i, %.lr.ph151.i.i
  %indvars.iv166.i.i = phi i64 [ 0, %.lr.ph151.i.i ], [ %indvars.iv.next167.i.i, %.critedge99.i.i ] ; 2 uses
  %i.nh = load ptr, ptr %i.lc, align 8, !tbaa !111
  %i.ni = getelementptr inbounds nuw [32 x i8], ptr %i.nh, i64 %indvars.iv166.i.i ; 6 uses
  br i1 %.not.i107.i.i, label %pack_uint64_.exit114.i.i, label %.lr.ph.preheader.i108.i.i

.lr.ph.preheader.i108.i.i:                        ; preds = %bb.v
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !113 ; 2 uses
  br i1 %i.nf, label %.lr.ph.i109.i.i.epil.preheader, label %.lr.ph.i109.i.i

.lr.ph.i109.i.i:                                  ; preds = %.lr.ph.preheader.i108.i.i, %.lr.ph.i109.i.i
  %.0710.i111.i.i = phi i64 [ 0, %.lr.ph.i109.i.i ], [ %i.nj, %.lr.ph.preheader.i108.i.i ] ; 8 uses
  %.089.i112.i.i = phi ptr [ %i.og, %.lr.ph.i109.i.i ], [ %i.lg, %.lr.ph.preheader.i108.i.i ] ; 8 uses
  %niter98 = phi i32 [ %niter98.next.7, %.lr.ph.i109.i.i ], [ 0, %.lr.ph.preheader.i108.i.i ]
  %i.nk = trunc i64 %.0710.i111.i.i to i8
  %i.nl = getelementptr inbounds i8, ptr %.089.i112.i.i, i64 -1
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !52
  %i.nm = lshr i64 %.0710.i111.i.i, 8
  %i.nn = trunc i64 %i.nm to i8
  %i.no = getelementptr inbounds i8, ptr %.089.i112.i.i, i64 -2
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !52
  %i.np = lshr i64 %.0710.i111.i.i, 16
  %i.nq = trunc i64 %i.np to i8
  %i.nr = getelementptr inbounds i8, ptr %.089.i112.i.i, i64 -3
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !52
  %i.ns = lshr i64 %.0710.i111.i.i, 24
  %i.nt = trunc i64 %i.ns to i8
  %i.nu = getelementptr inbounds i8, ptr %.089.i112.i.i, i64 -4
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !52
  %i.nv = lshr i64 %.0710.i111.i.i, 32
  %i.nw = trunc i64 %i.nv to i8
  %i.nx = getelementptr inbounds i8, ptr %.089.i112.i.i, i64 -5
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !52
  %i.ny = lshr i64 %.0710.i111.i.i, 40
  %i.nz = trunc i64 %i.ny to i8
  %i.oa = getelementptr inbounds i8, ptr %.089.i112.i.i, i64 -6
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !52
  %i.ob = lshr i64 %.0710.i111.i.i, 48
  %i.oc = trunc i64 %i.ob to i8
  %i.od = getelementptr inbounds i8, ptr %.089.i112.i.i, i64 -7
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !52
  %i.oe = lshr i64 %.0710.i111.i.i, 56
  %i.of = trunc nuw i64 %i.oe to i8
  %i.og = getelementptr inbounds i8, ptr %.089.i112.i.i, i64 -8 ; 3 uses
  store i8 %i.of, ptr %i.og, align 1, !tbaa !52
  %niter98.next.7 = add i32 %niter98, 8           ; 2 uses
  %niter98.ncmp.7 = icmp eq i32 %niter98.next.7, %unroll_iter97
  br i1 %niter98.ncmp.7, label %pack_uint64_.exit114.i.i.loopexit.unr-lcssa, label %.lr.ph.i109.i.i, !llvm.loop !35

pack_uint64_.exit114.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i109.i.i
  br i1 %lcmp.mod95.not, label %pack_uint64_.exit114.i.i, label %.lr.ph.i109.i.i.epil.preheader

.lr.ph.i109.i.i.epil.preheader:                   ; preds = %pack_uint64_.exit114.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i108.i.i
  %.0710.i111.i.i.epil.init = phi i64 [ %i.nj, %.lr.ph.preheader.i108.i.i ], [ 0, %pack_uint64_.exit114.i.i.loopexit.unr-lcssa ]
  %.089.i112.i.i.epil.init = phi ptr [ %i.lg, %.lr.ph.preheader.i108.i.i ], [ %i.og, %pack_uint64_.exit114.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.i109.i.i.epil

.lr.ph.i109.i.i.epil:                             ; preds = %.lr.ph.i109.i.i.epil, %.lr.ph.i109.i.i.epil.preheader
  %.0710.i111.i.i.epil = phi i64 [ %i.oj, %.lr.ph.i109.i.i.epil ], [ %.0710.i111.i.i.epil.init, %.lr.ph.i109.i.i.epil.preheader ] ; 2 uses
  %.089.i112.i.i.epil = phi ptr [ %i.oi, %.lr.ph.i109.i.i.epil ], [ %.089.i112.i.i.epil.init, %.lr.ph.i109.i.i.epil.preheader ]
  %epil.iter94 = phi i32 [ %epil.iter94.next, %.lr.ph.i109.i.i.epil ], [ 0, %.lr.ph.i109.i.i.epil.preheader ]
  %i.oh = trunc i64 %.0710.i111.i.i.epil to i8
  %i.oi = getelementptr inbounds i8, ptr %.089.i112.i.i.epil, i64 -1 ; 2 uses
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !52
  %i.oj = lshr i64 %.0710.i111.i.i.epil, 8
  %epil.iter94.next = add i32 %epil.iter94, 1     ; 2 uses
  %epil.iter94.cmp.not = icmp eq i32 %epil.iter94.next, %xtraiter93
  br i1 %epil.iter94.cmp.not, label %pack_uint64_.exit114.i.i, label %.lr.ph.i109.i.i.epil, !llvm.loop !263

pack_uint64_.exit114.i.i:                         ; preds = %pack_uint64_.exit114.i.i.loopexit.unr-lcssa, %.lr.ph.i109.i.i.epil, %bb.v
  %i.ok = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.lf, ptr noundef %0) #32, !inline_history !34
  %.not91.i.i = icmp eq i64 %i.ok, %i.lf
  br i1 %.not91.i.i, label %bb.w, label %write_metadata_block_data_cuesheet_cb_.exit.i

bb.w:                                             ; preds = %pack_uint64_.exit114.i.i
  br i1 %.not.i115.i.i, label %pack_uint32_.exit122.i.i, label %.lr.ph.preheader.i116.i.i

.lr.ph.preheader.i116.i.i:                        ; preds = %bb.w
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !114
  store i8 %i.om, ptr %i.mk, align 1, !tbaa !52
  br i1 %exitcond.not.i121.peel.i.i, label %pack_uint32_.exit122.i.i, label %.lr.ph.i117.i.preheader.i

.lr.ph.i117.i.preheader.i:                        ; preds = %.lr.ph.preheader.i116.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.ms, i1 false), !tbaa !52
  br label %pack_uint32_.exit122.i.i

pack_uint32_.exit122.i.i:                         ; preds = %.lr.ph.i117.i.preheader.i, %.lr.ph.preheader.i116.i.i, %bb.w
  %i.on = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.lj, ptr noundef %0) #32, !inline_history !34
  %.not92.i.i = icmp eq i64 %i.on, %i.lj
  br i1 %.not92.i.i, label %bb.x, label %write_metadata_block_data_cuesheet_cb_.exit.i

bb.x:                                             ; preds = %pack_uint32_.exit122.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ni, i64 9
  %i.op = call i64 @fwrite(ptr noundef nonnull %i.oo, i64 noundef 1, i64 noundef %i.ln, ptr noundef %0) #32, !inline_history !34
  %.not93.i.i = icmp eq i64 %i.op, %i.ln
  br i1 %.not93.i.i, label %bb.y, label %write_metadata_block_data_cuesheet_cb_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.oq = call ptr @__memset_chk(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef range(i64 0, 536870912) %i.lu, i64 noundef 1024) #32 ; 0 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.ni, i64 22
  %i.os = load i8, ptr %i.or, align 2
  %i.ot = and i8 %i.os, 3
  %mask.i.i = call i8 @llvm.bitreverse.i8(i8 %i.ot)
  store i8 %mask.i.i, ptr %i.b, align 16, !tbaa !52
  %i.ou = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.lu, ptr noundef %0) #32, !inline_history !34
  %.not94.i.i = icmp eq i64 %i.ou, %i.lu
  br i1 %.not94.i.i, label %bb.z, label %write_metadata_block_data_cuesheet_cb_.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ni, i64 23 ; 3 uses
  br i1 %.not.i123.i.i, label %pack_uint32_.exit130.i.i, label %.lr.ph.preheader.i124.i.i

.lr.ph.preheader.i124.i.i:                        ; preds = %bb.z
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !115
  store i8 %i.ow, ptr %i.ml, align 1, !tbaa !52
  br i1 %exitcond.not.i129.peel.i.i, label %pack_uint32_.exit130.i.i, label %.lr.ph.i125.i.preheader.i

.lr.ph.i125.i.preheader.i:                        ; preds = %.lr.ph.preheader.i124.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep91.i, i8 0, i64 %i.my, i1 false), !tbaa !52
  br label %pack_uint32_.exit130.i.i

pack_uint32_.exit130.i.i:                         ; preds = %.lr.ph.i125.i.preheader.i, %.lr.ph.preheader.i124.i.i, %bb.z
  %i.ox = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.lx, ptr noundef %0) #32, !inline_history !34
  %.not95.i.i = icmp eq i64 %i.ox, %i.lx
  br i1 %.not95.i.i, label %.preheader.i46.i, label %write_metadata_block_data_cuesheet_cb_.exit.i

.preheader.i46.i:                                 ; preds = %pack_uint32_.exit130.i.i
  %i.oy = load i8, ptr %i.ov, align 1, !tbaa !115
  %.not160.i.i = icmp eq i8 %i.oy, 0
  br i1 %.not160.i.i, label %.critedge99.i.i, label %.lr.ph.i47.i

.lr.ph.i47.i:                                     ; preds = %.preheader.i46.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ad
  %indvars.iv.next.i49.i = add nuw nsw i64 %indvars.iv.i48.i, 1 ; 2 uses
  %i.pa = load i8, ptr %i.ov, align 1, !tbaa !115
  %i.pb = zext i8 %i.pa to i64
  %i.pc = icmp samesign ult i64 %indvars.iv.next.i49.i, %i.pb
  br i1 %i.pc, label %bb.ab, label %.critedge99.i.i, !llvm.loop !37

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i47.i
  %indvars.iv.i48.i = phi i64 [ 0, %.lr.ph.i47.i ], [ %indvars.iv.next.i49.i, %bb.aa ] ; 2 uses
  %i.pd = load ptr, ptr %i.oz, align 8, !tbaa !116
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %indvars.iv.i48.i ; 2 uses
  br i1 %.not.i131.i.i, label %pack_uint64_.exit138.i.i, label %.lr.ph.preheader.i132.i.i

.lr.ph.preheader.i132.i.i:                        ; preds = %bb.ab
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !118 ; 2 uses
  br i1 %i.ng, label %.lr.ph.i133.i.i.epil.preheader, label %.lr.ph.i133.i.i

.lr.ph.i133.i.i:                                  ; preds = %.lr.ph.preheader.i132.i.i, %.lr.ph.i133.i.i
  %.0710.i135.i.i = phi i64 [ 0, %.lr.ph.i133.i.i ], [ %i.pf, %.lr.ph.preheader.i132.i.i ] ; 8 uses
  %.089.i136.i.i = phi ptr [ %i.qc, %.lr.ph.i133.i.i ], [ %i.mc, %.lr.ph.preheader.i132.i.i ] ; 8 uses
  %niter104 = phi i32 [ %niter104.next.7, %.lr.ph.i133.i.i ], [ 0, %.lr.ph.preheader.i132.i.i ]
  %i.pg = trunc i64 %.0710.i135.i.i to i8
  %i.ph = getelementptr inbounds i8, ptr %.089.i136.i.i, i64 -1
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !52
  %i.pi = lshr i64 %.0710.i135.i.i, 8
  %i.pj = trunc i64 %i.pi to i8
  %i.pk = getelementptr inbounds i8, ptr %.089.i136.i.i, i64 -2
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !52
  %i.pl = lshr i64 %.0710.i135.i.i, 16
  %i.pm = trunc i64 %i.pl to i8
  %i.pn = getelementptr inbounds i8, ptr %.089.i136.i.i, i64 -3
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !52
  %i.po = lshr i64 %.0710.i135.i.i, 24
  %i.pp = trunc i64 %i.po to i8
  %i.pq = getelementptr inbounds i8, ptr %.089.i136.i.i, i64 -4
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !52
  %i.pr = lshr i64 %.0710.i135.i.i, 32
  %i.ps = trunc i64 %i.pr to i8
  %i.pt = getelementptr inbounds i8, ptr %.089.i136.i.i, i64 -5
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !52
  %i.pu = lshr i64 %.0710.i135.i.i, 40
  %i.pv = trunc i64 %i.pu to i8
  %i.pw = getelementptr inbounds i8, ptr %.089.i136.i.i, i64 -6
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !52
  %i.px = lshr i64 %.0710.i135.i.i, 48
  %i.py = trunc i64 %i.px to i8
  %i.pz = getelementptr inbounds i8, ptr %.089.i136.i.i, i64 -7
end_hunk_1
begin_hunk_2_@write_metadata_block_data_cb_:bb.a
  %i.jd = lshr i64 %.0710.i.i, 40
  %i.je = trunc i64 %i.jd to i8
  %i.jf = getelementptr inbounds i8, ptr %.089.i.i, i64 -6
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !52
  %i.jg = lshr i64 %.0710.i.i, 48
  %i.jh = trunc i64 %i.jg to i8
  %i.ji = getelementptr inbounds i8, ptr %.089.i.i, i64 -7
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !52
  %i.jj = lshr i64 %.0710.i.i, 56
  %i.jk = trunc nuw i64 %i.jj to i8
  %i.jl = getelementptr inbounds i8, ptr %.089.i.i, i64 -8 ; 3 uses
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !52
  %niter167.next.7 = add i32 %niter167, 8         ; 2 uses
  %niter167.ncmp.7 = icmp eq i32 %niter167.next.7, %unroll_iter166
  br i1 %niter167.ncmp.7, label %pack_uint64_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i44, !llvm.loop !35

pack_uint64_.exit.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i44
  %lcmp.mod164.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %pack_uint64_.exit.i, label %.lr.ph.i.i44.epil.preheader

.lr.ph.i.i44.epil.preheader:                      ; preds = %pack_uint64_.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.0710.i.i.epil.init = phi i64 [ %i.il, %.lr.ph.preheader.i.i ], [ 0, %pack_uint64_.exit.i.loopexit.unr-lcssa ]
  %.089.i.i.epil.init = phi ptr [ %i.in, %.lr.ph.preheader.i.i ], [ %i.jl, %pack_uint64_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i32 %xtraiter162, 0
  tail call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i.i44.epil

.lr.ph.i.i44.epil:                                ; preds = %.lr.ph.i.i44.epil, %.lr.ph.i.i44.epil.preheader
  %.0710.i.i.epil = phi i64 [ %i.jo, %.lr.ph.i.i44.epil ], [ %.0710.i.i.epil.init, %.lr.ph.i.i44.epil.preheader ] ; 2 uses
  %.089.i.i.epil = phi ptr [ %i.jn, %.lr.ph.i.i44.epil ], [ %.089.i.i.epil.init, %.lr.ph.i.i44.epil.preheader ]
  %epil.iter163 = phi i32 [ %epil.iter163.next, %.lr.ph.i.i44.epil ], [ 0, %.lr.ph.i.i44.epil.preheader ]
  %i.jm = trunc i64 %.0710.i.i.epil to i8
  %i.jn = getelementptr inbounds i8, ptr %.089.i.i.epil, i64 -1 ; 2 uses
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !52
  %i.jo = lshr i64 %.0710.i.i.epil, 8
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %pack_uint64_.exit.i, label %.lr.ph.i.i44.epil, !llvm.loop !282

pack_uint64_.exit.i:                              ; preds = %pack_uint64_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i44.epil, %bb.q
  %.pre-phi.i = phi i64 [ 0, %bb.q ], [ %i.im, %.lr.ph.i.i44.epil ], [ %i.im, %pack_uint64_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %i.jp = call i64 %1(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %.pre-phi.i, ptr noundef %0) #32, !inline_history !281
  %.not87.i = icmp eq i64 %i.jp, %.pre-phi.i
  br i1 %.not87.i, label %bb.r, label %write_metadata_block_data_cuesheet_cb_.exit

bb.r:                                             ; preds = %pack_uint64_.exit.i
  %i.jq = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN, align 4, !tbaa !51
  %i.jr = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN, align 4, !tbaa !51
  %i.js = add i32 %i.jr, %i.jq
  %i.jt = lshr i32 %i.js, 3
  %i.ju = zext nneg i32 %i.jt to i64              ; 3 uses
  %i.jv = call ptr @__memset_chk(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef range(i64 0, 536870912) %i.ju, i64 noundef 1024) #32 ; 0 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !109
  %.not88.i = icmp eq i32 %i.jx, 0
  br i1 %.not88.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jy = load i8, ptr %i.b, align 16, !tbaa !52
  %i.jz = or i8 %i.jy, -128
  store i8 %i.jz, ptr %i.b, align 16, !tbaa !52
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ka = call i64 %1(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.ju, ptr noundef %0) #32, !inline_history !281
  %.not89.i = icmp eq i64 %i.ka, %i.ju
  br i1 %.not89.i, label %bb.u, label %write_metadata_block_data_cuesheet_cb_.exit

bb.u:                                             ; preds = %bb.t
  %i.kb = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN, align 4, !tbaa !51 ; 2 uses
  %i.kc = lshr i32 %i.kb, 3                       ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 3 uses
  %.not.i100.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i100.i, label %pack_uint32_.exit.i, label %.lr.ph.preheader.i101.i

.lr.ph.preheader.i101.i:                          ; preds = %bb.u
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !110 ; 2 uses
  %i.kf = zext nneg i32 %i.kc to i64              ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kf ; 2 uses
  %xtraiter168 = and i32 %i.kc, 7                 ; 3 uses
  %i.kh = icmp ult i32 %i.kb, 64
  br i1 %i.kh, label %.lr.ph.i102.i.epil.preheader, label %.lr.ph.preheader.i101.i.new

.lr.ph.preheader.i101.i.new:                      ; preds = %.lr.ph.preheader.i101.i
  %unroll_iter172 = and i32 %i.kc, 536870904
  br label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %.lr.ph.i102.i, %.lr.ph.preheader.i101.i.new
  %.0710.i104.i = phi i32 [ %i.ke, %.lr.ph.preheader.i101.i.new ], [ 0, %.lr.ph.i102.i ] ; 4 uses
  %.089.i105.i = phi ptr [ %i.kg, %.lr.ph.preheader.i101.i.new ], [ %i.kw, %.lr.ph.i102.i ] ; 8 uses
  %niter173 = phi i32 [ 0, %.lr.ph.preheader.i101.i.new ], [ %niter173.next.7, %.lr.ph.i102.i ]
  %i.ki = trunc i32 %.0710.i104.i to i8
  %i.kj = getelementptr inbounds i8, ptr %.089.i105.i, i64 -1
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !52
  %i.kk = lshr i32 %.0710.i104.i, 8
  %i.kl = trunc i32 %i.kk to i8
  %i.km = getelementptr inbounds i8, ptr %.089.i105.i, i64 -2
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !52
  %i.kn = lshr i32 %.0710.i104.i, 16
  %i.ko = trunc i32 %i.kn to i8
  %i.kp = getelementptr inbounds i8, ptr %.089.i105.i, i64 -3
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !52
  %i.kq = lshr i32 %.0710.i104.i, 24
  %i.kr = trunc nuw i32 %i.kq to i8
  %i.ks = getelementptr inbounds i8, ptr %.089.i105.i, i64 -4
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !52
  %i.kt = getelementptr inbounds i8, ptr %.089.i105.i, i64 -5
  store i8 0, ptr %i.kt, align 1, !tbaa !52
  %i.ku = getelementptr inbounds i8, ptr %.089.i105.i, i64 -6
  store i8 0, ptr %i.ku, align 1, !tbaa !52
  %i.kv = getelementptr inbounds i8, ptr %.089.i105.i, i64 -7
  store i8 0, ptr %i.kv, align 1, !tbaa !52
  %i.kw = getelementptr inbounds i8, ptr %.089.i105.i, i64 -8 ; 3 uses
  store i8 0, ptr %i.kw, align 1, !tbaa !52
  %niter173.next.7 = add i32 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i32 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %pack_uint32_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i102.i, !llvm.loop !36

pack_uint32_.exit.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i102.i
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %pack_uint32_.exit.i, label %.lr.ph.i102.i.epil.preheader

.lr.ph.i102.i.epil.preheader:                     ; preds = %pack_uint32_.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i101.i
  %.0710.i104.i.epil.init = phi i32 [ %i.ke, %.lr.ph.preheader.i101.i ], [ 0, %pack_uint32_.exit.i.loopexit.unr-lcssa ]
  %.089.i105.i.epil.init = phi ptr [ %i.kg, %.lr.ph.preheader.i101.i ], [ %i.kw, %pack_uint32_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod171 = icmp ne i32 %xtraiter168, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i102.i.epil

.lr.ph.i102.i.epil:                               ; preds = %.lr.ph.i102.i.epil, %.lr.ph.i102.i.epil.preheader
  %.0710.i104.i.epil = phi i32 [ %i.kz, %.lr.ph.i102.i.epil ], [ %.0710.i104.i.epil.init, %.lr.ph.i102.i.epil.preheader ] ; 2 uses
  %.089.i105.i.epil = phi ptr [ %i.ky, %.lr.ph.i102.i.epil ], [ %.089.i105.i.epil.init, %.lr.ph.i102.i.epil.preheader ]
  %epil.iter169 = phi i32 [ %epil.iter169.next, %.lr.ph.i102.i.epil ], [ 0, %.lr.ph.i102.i.epil.preheader ]
  %i.kx = trunc i32 %.0710.i104.i.epil to i8
  %i.ky = getelementptr inbounds i8, ptr %.089.i105.i.epil, i64 -1 ; 2 uses
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !52
  %i.kz = lshr i32 %.0710.i104.i.epil, 8
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %pack_uint32_.exit.i, label %.lr.ph.i102.i.epil, !llvm.loop !283

pack_uint32_.exit.i:                              ; preds = %pack_uint32_.exit.i.loopexit.unr-lcssa, %.lr.ph.i102.i.epil, %bb.u
  %.pre-phi170.i = phi i64 [ 0, %bb.u ], [ %i.kf, %.lr.ph.i102.i.epil ], [ %i.kf, %pack_uint32_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %i.la = call i64 %1(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %.pre-phi170.i, ptr noundef %0) #32, !inline_history !281
  %.not90.i = icmp eq i64 %i.la, %.pre-phi170.i
  br i1 %.not90.i, label %.preheader147.i, label %write_metadata_block_data_cuesheet_cb_.exit

.preheader147.i:                                  ; preds = %pack_uint32_.exit.i
  %i.lb = load i32, ptr %i.kd, align 4, !tbaa !110
  %.not159.i = icmp eq i32 %i.lb, 0
  br i1 %.not159.i, label %write_metadata_block_data_cuesheet_cb_.exit, label %.lr.ph151.i

.lr.ph151.i:                                      ; preds = %.preheader147.i
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ld = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_OFFSET_LEN, align 4, !tbaa !51 ; 2 uses
  %i.le = lshr i32 %i.ld, 3                       ; 4 uses
  %.not.i107.i = icmp eq i32 %i.le, 0
  %i.lf = zext nneg i32 %i.le to i64              ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUMBER_LEN, align 4
  %i.li = lshr i32 %i.lh, 3                       ; 5 uses
  %.not.i115.i = icmp eq i32 %i.li, 0
  %i.lj = zext nneg i32 %i.li to i64              ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lj
  %i.ll = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN, align 4
  %i.lm = lshr i32 %i.ll, 3
  %i.ln = zext nneg i32 %i.lm to i64              ; 2 uses
  %i.lo = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_TYPE_LEN, align 4
  %i.lp = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_PRE_EMPHASIS_LEN, align 4
  %i.lq = add i32 %i.lp, %i.lo
  %i.lr = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_RESERVED_LEN, align 4
  %i.ls = add i32 %i.lq, %i.lr
  %i.lt = lshr i32 %i.ls, 3
  %i.lu = zext nneg i32 %i.lt to i64              ; 3 uses
  %i.lv = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN, align 4
  %i.lw = lshr i32 %i.lv, 3                       ; 5 uses
  %.not.i123.i = icmp eq i32 %i.lw, 0
  %i.lx = zext nneg i32 %i.lw to i64              ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lx
  %i.lz = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN, align 4 ; 2 uses
  %i.ma = lshr i32 %i.lz, 3                       ; 4 uses
  %.not.i131.i = icmp eq i32 %i.ma, 0
  %i.mb = zext nneg i32 %i.ma to i64              ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mb ; 2 uses
  %i.md = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN, align 4
  %i.me = lshr i32 %i.md, 3                       ; 5 uses
  %.not.i139.i = icmp eq i32 %i.me, 0
  %i.mf = zext nneg i32 %i.me to i64              ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mf
  %i.mh = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN, align 4
  %i.mi = lshr i32 %i.mh, 3
  %i.mj = zext nneg i32 %i.mi to i64              ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %i.lk, i64 -1
  %exitcond.not.i121.peel.i = icmp eq i32 %i.li, 1
  %i.ml = getelementptr inbounds i8, ptr %i.ly, i64 -1
  %exitcond.not.i129.peel.i = icmp eq i32 %i.lw, 1
  %i.mm = getelementptr inbounds i8, ptr %i.mg, i64 -1
  %exitcond.not.i145.peel.i = icmp eq i32 %i.me, 1
  %i.mn = add nsw i64 %i.lj, -2
  %i.mo = add nsw i32 %i.li, -2
  %i.mp = zext i32 %i.mo to i64
  %i.mq = sub nsw i64 %i.mn, %i.mp
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.mq
  %i.mr = add nsw i32 %i.li, -1
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = add nsw i64 %i.lx, -2
  %i.mu = add nsw i32 %i.lw, -2
  %i.mv = zext i32 %i.mu to i64
  %i.mw = sub nsw i64 %i.mt, %i.mv
  %scevgep91 = getelementptr i8, ptr %i.b, i64 %i.mw
  %i.mx = add nsw i32 %i.lw, -1
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = add nsw i64 %i.mf, -2
  %i.na = add nsw i32 %i.me, -2
  %i.nb = zext i32 %i.na to i64
  %i.nc = sub nsw i64 %i.mz, %i.nb
  %scevgep92 = getelementptr i8, ptr %i.b, i64 %i.nc
  %i.nd = add nsw i32 %i.me, -1
  %i.ne = zext nneg i32 %i.nd to i64
  %xtraiter174 = and i32 %i.le, 7                 ; 3 uses
  %i.nf = icmp ult i32 %i.ld, 64
  %unroll_iter178 = and i32 %i.le, 536870904
  %lcmp.mod176.not = icmp eq i32 %xtraiter174, 0
  %lcmp.mod177 = icmp ne i32 %xtraiter174, 0
  %xtraiter180 = and i32 %i.ma, 7                 ; 3 uses
  %i.ng = icmp ult i32 %i.lz, 64
  %unroll_iter184 = and i32 %i.ma, 536870904
  %lcmp.mod182.not = icmp eq i32 %xtraiter180, 0
  %lcmp.mod183 = icmp ne i32 %xtraiter180, 0
  br label %bb.v

bb.v:                                             ; preds = %.critedge99.i, %.lr.ph151.i
  %indvars.iv166.i = phi i64 [ 0, %.lr.ph151.i ], [ %indvars.iv.next167.i, %.critedge99.i ] ; 2 uses
  %i.nh = load ptr, ptr %i.lc, align 8, !tbaa !111
  %i.ni = getelementptr inbounds nuw [32 x i8], ptr %i.nh, i64 %indvars.iv166.i ; 6 uses
  br i1 %.not.i107.i, label %pack_uint64_.exit114.i, label %.lr.ph.preheader.i108.i

.lr.ph.preheader.i108.i:                          ; preds = %bb.v
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !113 ; 2 uses
  br i1 %i.nf, label %.lr.ph.i109.i.epil.preheader, label %.lr.ph.i109.i

.lr.ph.i109.i:                                    ; preds = %.lr.ph.preheader.i108.i, %.lr.ph.i109.i
  %.0710.i111.i = phi i64 [ 0, %.lr.ph.i109.i ], [ %i.nj, %.lr.ph.preheader.i108.i ] ; 8 uses
  %.089.i112.i = phi ptr [ %i.og, %.lr.ph.i109.i ], [ %i.lg, %.lr.ph.preheader.i108.i ] ; 8 uses
  %niter179 = phi i32 [ %niter179.next.7, %.lr.ph.i109.i ], [ 0, %.lr.ph.preheader.i108.i ]
  %i.nk = trunc i64 %.0710.i111.i to i8
  %i.nl = getelementptr inbounds i8, ptr %.089.i112.i, i64 -1
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !52
  %i.nm = lshr i64 %.0710.i111.i, 8
  %i.nn = trunc i64 %i.nm to i8
  %i.no = getelementptr inbounds i8, ptr %.089.i112.i, i64 -2
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !52
  %i.np = lshr i64 %.0710.i111.i, 16
  %i.nq = trunc i64 %i.np to i8
  %i.nr = getelementptr inbounds i8, ptr %.089.i112.i, i64 -3
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !52
  %i.ns = lshr i64 %.0710.i111.i, 24
  %i.nt = trunc i64 %i.ns to i8
  %i.nu = getelementptr inbounds i8, ptr %.089.i112.i, i64 -4
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !52
  %i.nv = lshr i64 %.0710.i111.i, 32
  %i.nw = trunc i64 %i.nv to i8
  %i.nx = getelementptr inbounds i8, ptr %.089.i112.i, i64 -5
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !52
  %i.ny = lshr i64 %.0710.i111.i, 40
  %i.nz = trunc i64 %i.ny to i8
  %i.oa = getelementptr inbounds i8, ptr %.089.i112.i, i64 -6
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !52
  %i.ob = lshr i64 %.0710.i111.i, 48
  %i.oc = trunc i64 %i.ob to i8
  %i.od = getelementptr inbounds i8, ptr %.089.i112.i, i64 -7
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !52
  %i.oe = lshr i64 %.0710.i111.i, 56
  %i.of = trunc nuw i64 %i.oe to i8
  %i.og = getelementptr inbounds i8, ptr %.089.i112.i, i64 -8 ; 3 uses
  store i8 %i.of, ptr %i.og, align 1, !tbaa !52
  %niter179.next.7 = add i32 %niter179, 8         ; 2 uses
  %niter179.ncmp.7 = icmp eq i32 %niter179.next.7, %unroll_iter178
  br i1 %niter179.ncmp.7, label %pack_uint64_.exit114.i.loopexit.unr-lcssa, label %.lr.ph.i109.i, !llvm.loop !35

pack_uint64_.exit114.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i109.i
  br i1 %lcmp.mod176.not, label %pack_uint64_.exit114.i, label %.lr.ph.i109.i.epil.preheader

.lr.ph.i109.i.epil.preheader:                     ; preds = %pack_uint64_.exit114.i.loopexit.unr-lcssa, %.lr.ph.preheader.i108.i
  %.0710.i111.i.epil.init = phi i64 [ %i.nj, %.lr.ph.preheader.i108.i ], [ 0, %pack_uint64_.exit114.i.loopexit.unr-lcssa ]
  %.089.i112.i.epil.init = phi ptr [ %i.lg, %.lr.ph.preheader.i108.i ], [ %i.og, %pack_uint64_.exit114.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i109.i.epil

.lr.ph.i109.i.epil:                               ; preds = %.lr.ph.i109.i.epil, %.lr.ph.i109.i.epil.preheader
  %.0710.i111.i.epil = phi i64 [ %i.oj, %.lr.ph.i109.i.epil ], [ %.0710.i111.i.epil.init, %.lr.ph.i109.i.epil.preheader ] ; 2 uses
  %.089.i112.i.epil = phi ptr [ %i.oi, %.lr.ph.i109.i.epil ], [ %.089.i112.i.epil.init, %.lr.ph.i109.i.epil.preheader ]
  %epil.iter175 = phi i32 [ %epil.iter175.next, %.lr.ph.i109.i.epil ], [ 0, %.lr.ph.i109.i.epil.preheader ]
  %i.oh = trunc i64 %.0710.i111.i.epil to i8
  %i.oi = getelementptr inbounds i8, ptr %.089.i112.i.epil, i64 -1 ; 2 uses
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !52
  %i.oj = lshr i64 %.0710.i111.i.epil, 8
  %epil.iter175.next = add i32 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i32 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %pack_uint64_.exit114.i, label %.lr.ph.i109.i.epil, !llvm.loop !284

pack_uint64_.exit114.i:                           ; preds = %pack_uint64_.exit114.i.loopexit.unr-lcssa, %.lr.ph.i109.i.epil, %bb.v
  %i.ok = call i64 %1(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.lf, ptr noundef %0) #32, !inline_history !281
  %.not91.i = icmp eq i64 %i.ok, %i.lf
  br i1 %.not91.i, label %bb.w, label %write_metadata_block_data_cuesheet_cb_.exit

bb.w:                                             ; preds = %pack_uint64_.exit114.i
  br i1 %.not.i115.i, label %pack_uint32_.exit122.i, label %.lr.ph.preheader.i116.i

.lr.ph.preheader.i116.i:                          ; preds = %bb.w
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !114
  store i8 %i.om, ptr %i.mk, align 1, !tbaa !52
  br i1 %exitcond.not.i121.peel.i, label %pack_uint32_.exit122.i, label %.lr.ph.i117.i.preheader

.lr.ph.i117.i.preheader:                          ; preds = %.lr.ph.preheader.i116.i
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ms, i1 false), !tbaa !52
  br label %pack_uint32_.exit122.i

pack_uint32_.exit122.i:                           ; preds = %.lr.ph.i117.i.preheader, %.lr.ph.preheader.i116.i, %bb.w
  %i.on = call i64 %1(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.lj, ptr noundef %0) #32, !inline_history !281
  %.not92.i = icmp eq i64 %i.on, %i.lj
  br i1 %.not92.i, label %bb.x, label %write_metadata_block_data_cuesheet_cb_.exit

bb.x:                                             ; preds = %pack_uint32_.exit122.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ni, i64 9
  %i.op = call i64 %1(ptr noundef nonnull %i.oo, i64 noundef 1, i64 noundef %i.ln, ptr noundef %0) #32, !inline_history !281
  %.not93.i = icmp eq i64 %i.op, %i.ln
  br i1 %.not93.i, label %bb.y, label %write_metadata_block_data_cuesheet_cb_.exit

bb.y:                                             ; preds = %bb.x
  %i.oq = call ptr @__memset_chk(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef range(i64 0, 536870912) %i.lu, i64 noundef 1024) #32 ; 0 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.ni, i64 22
  %i.os = load i8, ptr %i.or, align 2
  %i.ot = and i8 %i.os, 3
  %mask.i = call i8 @llvm.bitreverse.i8(i8 %i.ot)
  store i8 %mask.i, ptr %i.b, align 16, !tbaa !52
  %i.ou = call i64 %1(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.lu, ptr noundef %0) #32, !inline_history !281
  %.not94.i = icmp eq i64 %i.ou, %i.lu
  br i1 %.not94.i, label %bb.z, label %write_metadata_block_data_cuesheet_cb_.exit

bb.z:                                             ; preds = %bb.y
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ni, i64 23 ; 3 uses
  br i1 %.not.i123.i, label %pack_uint32_.exit130.i, label %.lr.ph.preheader.i124.i

.lr.ph.preheader.i124.i:                          ; preds = %bb.z
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !115
  store i8 %i.ow, ptr %i.ml, align 1, !tbaa !52
  br i1 %exitcond.not.i129.peel.i, label %pack_uint32_.exit130.i, label %.lr.ph.i125.i.preheader

.lr.ph.i125.i.preheader:                          ; preds = %.lr.ph.preheader.i124.i
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep91, i8 0, i64 %i.my, i1 false), !tbaa !52
  br label %pack_uint32_.exit130.i

pack_uint32_.exit130.i:                           ; preds = %.lr.ph.i125.i.preheader, %.lr.ph.preheader.i124.i, %bb.z
  %i.ox = call i64 %1(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.lx, ptr noundef %0) #32, !inline_history !281
  %.not95.i = icmp eq i64 %i.ox, %i.lx
  br i1 %.not95.i, label %.preheader.i46, label %write_metadata_block_data_cuesheet_cb_.exit

.preheader.i46:                                   ; preds = %pack_uint32_.exit130.i
  %i.oy = load i8, ptr %i.ov, align 1, !tbaa !115
  %.not160.i = icmp eq i8 %i.oy, 0
  br i1 %.not160.i, label %.critedge99.i, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.preheader.i46
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ad
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %i.pa = load i8, ptr %i.ov, align 1, !tbaa !115
  %i.pb = zext i8 %i.pa to i64
  %i.pc = icmp samesign ult i64 %indvars.iv.next.i49, %i.pb
  br i1 %i.pc, label %bb.ab, label %.critedge99.i, !llvm.loop !37

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.i47 ], [ %indvars.iv.next.i49, %bb.aa ] ; 2 uses
  %i.pd = load ptr, ptr %i.oz, align 8, !tbaa !116
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %indvars.iv.i48 ; 2 uses
  br i1 %.not.i131.i, label %pack_uint64_.exit138.i, label %.lr.ph.preheader.i132.i

.lr.ph.preheader.i132.i:                          ; preds = %bb.ab
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !118 ; 2 uses
  br i1 %i.ng, label %.lr.ph.i133.i.epil.preheader, label %.lr.ph.i133.i

.lr.ph.i133.i:                                    ; preds = %.lr.ph.preheader.i132.i, %.lr.ph.i133.i
  %.0710.i135.i = phi i64 [ 0, %.lr.ph.i133.i ], [ %i.pf, %.lr.ph.preheader.i132.i ] ; 8 uses
  %.089.i136.i = phi ptr [ %i.qc, %.lr.ph.i133.i ], [ %i.mc, %.lr.ph.preheader.i132.i ] ; 8 uses
  %niter185 = phi i32 [ %niter185.next.7, %.lr.ph.i133.i ], [ 0, %.lr.ph.preheader.i132.i ]
  %i.pg = trunc i64 %.0710.i135.i to i8
  %i.ph = getelementptr inbounds i8, ptr %.089.i136.i, i64 -1
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !52
  %i.pi = lshr i64 %.0710.i135.i, 8
  %i.pj = trunc i64 %i.pi to i8
  %i.pk = getelementptr inbounds i8, ptr %.089.i136.i, i64 -2
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !52
  %i.pl = lshr i64 %.0710.i135.i, 16
  %i.pm = trunc i64 %i.pl to i8
  %i.pn = getelementptr inbounds i8, ptr %.089.i136.i, i64 -3
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !52
  %i.po = lshr i64 %.0710.i135.i, 24
  %i.pp = trunc i64 %i.po to i8
  %i.pq = getelementptr inbounds i8, ptr %.089.i136.i, i64 -4
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !52
  %i.pr = lshr i64 %.0710.i135.i, 32
  %i.ps = trunc i64 %i.pr to i8
  %i.pt = getelementptr inbounds i8, ptr %.089.i136.i, i64 -5
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !52
  %i.pu = lshr i64 %.0710.i135.i, 40
  %i.pv = trunc i64 %i.pu to i8
  %i.pw = getelementptr inbounds i8, ptr %.089.i136.i, i64 -6
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !52
  %i.px = lshr i64 %.0710.i135.i, 48
  %i.py = trunc i64 %i.px to i8
  %i.pz = getelementptr inbounds i8, ptr %.089.i136.i, i64 -7
end_hunk_2
