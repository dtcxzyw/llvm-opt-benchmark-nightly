Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_udta_string:bb.a
  br label %bb.br

bb.aq:                                            ; preds = %bb.d
  br label %bb.br

bb.ar:                                            ; preds = %bb.d, %bb.d
  br label %bb.br

bb.as:                                            ; preds = %bb.d, %bb.d
  br label %bb.br

bb.at:                                            ; preds = %bb.d
  br label %bb.br

bb.au:                                            ; preds = %bb.d
  br label %bb.br

bb.av:                                            ; preds = %bb.d, %bb.d
  br label %bb.br

bb.aw:                                            ; preds = %bb.d, %bb.d
  br label %bb.br

bb.ax:                                            ; preds = %bb.d
  br label %bb.br

bb.ay:                                            ; preds = %bb.d
  br label %bb.br

bb.az:                                            ; preds = %bb.d
  br label %bb.br

bb.ba:                                            ; preds = %bb.d
  br label %bb.br

bb.bb:                                            ; preds = %bb.d, %bb.d, %bb.d
  br label %bb.br

bb.bc:                                            ; preds = %bb.d
  br label %bb.br

bb.bd:                                            ; preds = %bb.d
  br label %bb.br

bb.be:                                            ; preds = %bb.d
  br label %bb.br

bb.bf:                                            ; preds = %bb.d
  br label %bb.br

bb.bg:                                            ; preds = %bb.d
  br label %bb.br

bb.bh:                                            ; preds = %bb.d
  br label %bb.br

bb.bi:                                            ; preds = %bb.d
  br label %bb.br

bb.bj:                                            ; preds = %bb.d
  br label %bb.br

bb.bk:                                            ; preds = %bb.d
  br label %bb.br

bb.bl:                                            ; preds = %bb.d
  br label %bb.br

bb.bm:                                            ; preds = %bb.d
  br label %bb.br

bb.bn:                                            ; preds = %bb.d
  br label %bb.br

bb.bo:                                            ; preds = %bb.d
  br label %bb.br

bb.bp:                                            ; preds = %bb.d
  br label %bb.br

bb.bq:                                            ; preds = %bb.d
  br label %bb.br

bb.br:                                            ; preds = %bb.g, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.0200 = phi ptr [ null, %bb.d ], [ @.str.395, %bb.e ], [ @.str.396, %bb.f ], [ @.str.451, %bb.bq ], [ @.str.446, %bb.bk ], [ @.str.397, %bb.h ], [ @.str.398, %bb.i ], [ @.str.399, %bb.j ], [ @.str.400, %bb.k ], [ @.str.401, %bb.l ], [ @.str.402, %bb.m ], [ @.str.403, %bb.n ], [ @.str.404, %bb.o ], [ @.str.405, %bb.p ], [ @.str.406, %bb.q ], [ @.str.407, %bb.r ], [ @.str.408, %bb.s ], [ @.str.409, %bb.u ], [ @.str.410, %bb.v ], [ @.str.411, %bb.x ], [ @.str.412, %bb.y ], [ @.str.29, %bb.z ], [ @.str.413, %bb.aa ], [ @.str.414, %bb.ab ], [ @.str.415, %bb.ac ], [ @.str.416, %bb.ad ], [ @.str.417, %bb.ae ], [ @.str.418, %bb.af ], [ @.str.419, %bb.ag ], [ @.str.420, %bb.ah ], [ @.str.421, %bb.ai ], [ @.str.422, %bb.aj ], [ @.str.423, %bb.ak ], [ @.str.424, %bb.al ], [ @.str.425, %bb.am ], [ @.str.426, %bb.an ], [ @.str.427, %bb.ao ], [ @.str.428, %bb.ap ], [ @.str.429, %bb.aq ], [ @.str.430, %bb.ar ], [ @.str.431, %bb.as ], [ @.str.432, %bb.at ], [ %spec.select, %bb.g ], [ @.str.433, %bb.au ], [ @.str.434, %bb.av ], [ @.str.435, %bb.aw ], [ @.str.447, %bb.bl ], [ @.str.436, %bb.ax ], [ @.str.437, %bb.ay ], [ @.str.438, %bb.az ], [ @.str.439, %bb.ba ], [ @.str.20, %bb.bb ], [ @.str.440, %bb.bc ], [ @.str.407, %bb.bd ], [ @.str.441, %bb.be ], [ @.str.442, %bb.bf ], [ @.str.450, %bb.bp ], [ @.str.443, %bb.bg ], [ @.str.449, %bb.bo ], [ @.str.424, %bb.bn ], [ @.str.382, %bb.bh ], [ @.str.444, %bb.bi ], [ @.str.448, %bb.bm ], [ @.str.445, %bb.bj ]
  %.not236 = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.bq ], [ true, %bb.bk ], [ true, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ false, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ true, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ae ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %bb.aj ], [ false, %bb.ak ], [ false, %bb.al ], [ true, %bb.am ], [ false, %bb.an ], [ true, %bb.ao ], [ true, %bb.ap ], [ false, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ true, %bb.g ], [ true, %bb.au ], [ true, %bb.av ], [ true, %bb.aw ], [ true, %bb.bl ], [ true, %bb.ax ], [ true, %bb.ay ], [ true, %bb.az ], [ true, %bb.ba ], [ true, %bb.bb ], [ true, %bb.bc ], [ true, %bb.bd ], [ true, %bb.be ], [ true, %bb.bf ], [ true, %bb.bp ], [ true, %bb.bg ], [ true, %bb.bo ], [ true, %bb.bn ], [ true, %bb.bh ], [ true, %bb.bi ], [ true, %bb.bm ], [ true, %bb.bj ]
  %.0191 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.bq ], [ null, %bb.bk ], [ null, %bb.h ], [ @mov_metadata_int8_no_padding, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ @mov_metadata_int8_no_padding, %bb.l ], [ null, %bb.m ], [ null, %bb.n ], [ @mov_metadata_track_or_disc_number, %bb.o ], [ @mov_metadata_int8_no_padding, %bb.p ], [ null, %bb.q ], [ @mov_metadata_gnre, %bb.r ], [ @mov_metadata_int8_no_padding, %bb.s ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ @mov_metadata_int8_no_padding, %bb.aa ], [ @mov_metadata_int8_no_padding, %bb.ab ], [ null, %bb.ac ], [ @mov_metadata_int8_no_padding, %bb.ad ], [ null, %bb.ae ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.aj ], [ @mov_metadata_int8_no_padding, %bb.ak ], [ @mov_metadata_track_or_disc_number, %bb.al ], [ null, %bb.am ], [ @mov_metadata_int8_bypass_padding, %bb.an ], [ null, %bb.ao ], [ null, %bb.ap ], [ @mov_metadata_int8_bypass_padding, %bb.aq ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.g ], [ null, %bb.au ], [ null, %bb.av ], [ null, %bb.aw ], [ null, %bb.bl ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.bb ], [ null, %bb.bc ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.bf ], [ null, %bb.bp ], [ null, %bb.bg ], [ null, %bb.bo ], [ null, %bb.bn ], [ null, %bb.bh ], [ null, %bb.bi ], [ null, %bb.bm ], [ null, %bb.bj ]
  %.0189 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 0, %bb.bq ], [ 0, %bb.bk ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.at ], [ %spec.select248, %bb.g ], [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.bl ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bp ], [ 0, %bb.bg ], [ 0, %bb.bo ], [ 0, %bb.bn ], [ 0, %bb.bh ], [ 0, %bb.bi ], [ 0, %bb.bm ], [ 0, %bb.bj ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %2)   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = icmp ne i32 %2, 0
  %.not230 = icmp eq i32 %2, 1920364387           ; 2 uses
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.br, %bb.ej
  %.sroa.6.0.ph.ph = phi i64 [ %3, %bb.br ], [ %i.if, %bb.ej ]
  %.1201.ph.ph = phi ptr [ %.0200, %bb.br ], [ %.6310, %bb.ej ]
  %.0198.ph.ph = phi i16 [ 0, %bb.br ], [ %.1199294308, %bb.ej ] ; 12 uses
  %.0195.ph.ph = phi i32 [ 0, %bb.br ], [ %.2197295307, %bb.ej ]
  %.1190.ph.ph = phi i32 [ %.0189, %bb.br ], [ %.1190324, %bb.ej ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %mov_read_covr.exit
  %.sroa.6.0.ph = phi i64 [ %i.dm, %mov_read_covr.exit ], [ %.sroa.6.0.ph.ph, %.outer.outer ]
  %.1201.ph = phi ptr [ %.3203251, %mov_read_covr.exit ], [ %.1201.ph.ph, %.outer.outer ] ; 9 uses
  %.0195.ph = phi i32 [ %i.bt, %mov_read_covr.exit ], [ %.0195.ph.ph, %.outer.outer ] ; 10 uses
  %.1190.ph = phi i32 [ %.1190.lcssa, %mov_read_covr.exit ], [ %.1190.ph.ph, %.outer.outer ] ; 9 uses
  %.sroa.6.0.ph.fr = freeze i64 %.sroa.6.0.ph     ; 27 uses
  %i.am = icmp sgt i64 %.sroa.6.0.ph.fr, 8        ; 3 uses
  %i.an = load i32, ptr %i.ac, align 4, !tbaa !312 ; 3 uses
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond394 = and i1 %i.ao, %i.am
  br i1 %or.cond394, label %._crit_edge.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %.outer
  %i.ap = icmp sgt i64 %.sroa.6.0.ph.fr, 4
  br i1 %i.ap, label %.lr.ph.split.us, label %.thread268

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not225 = icmp eq ptr %.1201.ph, null
  br i1 %.not225, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.aq = load i32, ptr %i.ad, align 8, !tbaa !565
  %.not226.us.us.peel = icmp ne i32 %i.aq, 0
  %i.ar = or i32 %i.an, %.1190.ph
  %or.cond11.not.us.us.peel = icmp eq i32 %i.ar, 0
  %or.cond = select i1 %.not226.us.us.peel, i1 %or.cond11.not.us.us.peel, i1 false ; 2 uses
  br i1 %i.am, label %.lr.ph.split.us.split.us.split.preheader, label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us.split.us
  br i1 %or.cond, label %bb.bs, label %.thread268

bb.bs:                                            ; preds = %.lr.ph.split.us.split.us.split.preheader
  %i.as = call i32 @avio_rb16(ptr noundef %1) #16
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.6.0.ph.fr, %i.at
  br i1 %i.au, label %bb.bt, label %.split.us

bb.bt:                                            ; preds = %bb.bs
  %i.av = call i64 @avio_seek(ptr noundef %1, i64 noundef -2, i32 noundef 1) #16 ; 0 uses
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aw, i32 noundef 24, ptr noundef nonnull @.str.455) #16
  %i.ax = load i32, ptr %i.ac, align 4, !tbaa !312
  %.not678.peel = icmp eq i32 %i.ax, 0
  br i1 %.not678.peel, label %.thread268, label %._crit_edge.split.us

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us
  br i1 %or.cond, label %bb.bu, label %.thread268

bb.bu:                                            ; preds = %.lr.ph.split.us.split.us.split.us
  %i.ay = call i32 @avio_rb16(ptr noundef %1) #16
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp samesign ult i64 %.sroa.6.0.ph.fr, %i.az
  br i1 %i.ba, label %bb.bv, label %.split.us

bb.bv:                                            ; preds = %bb.bu
  %i.bb = call i64 @avio_seek(ptr noundef %1, i64 noundef -2, i32 noundef 1) #16 ; 0 uses
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bc, i32 noundef 24, ptr noundef nonnull @.str.455) #16
  br label %.thread268

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.bd = or i32 %i.an, %.1190.ph
  %or.cond11.not.us.peel = icmp eq i32 %i.bd, 0   ; 2 uses
  br i1 %i.am, label %.lr.ph.split.us.split.split.preheader, label %.lr.ph.split.us.split.split.us

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  br i1 %or.cond11.not.us.peel, label %bb.bw, label %.thread299

bb.bw:                                            ; preds = %.lr.ph.split.us.split.split.preheader
  %i.be = call i32 @avio_rb16(ptr noundef %1) #16
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp samesign ult i64 %.sroa.6.0.ph.fr, %i.bf
  br i1 %i.bg, label %bb.bx, label %.split.us

bb.bx:                                            ; preds = %bb.bw
  %i.bh = call i64 @avio_seek(ptr noundef %1, i64 noundef -2, i32 noundef 1) #16 ; 0 uses
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bi, i32 noundef 24, ptr noundef nonnull @.str.455) #16
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !312
  %.not677.peel = icmp eq i32 %i.bj, 0
  br i1 %.not677.peel, label %.thread299, label %._crit_edge.split.us

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  br i1 %or.cond11.not.us.peel, label %bb.by, label %.thread299

bb.by:                                            ; preds = %.lr.ph.split.us.split.split.us
  %i.bk = call i32 @avio_rb16(ptr noundef %1) #16
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = icmp samesign ult i64 %.sroa.6.0.ph.fr, %i.bl
  br i1 %i.bm, label %.thread268.loopexit685.loopexit, label %.split.us

._crit_edge.split.us:                             ; preds = %bb.bx, %bb.bt, %.outer
  %.1190.lcssa = phi i32 [ %.1190.ph, %.outer ], [ 1, %bb.bt ], [ 1, %bb.bx ] ; 4 uses
  %i.bn = call i32 @avio_rb32(ptr noundef %1) #16 ; 3 uses
  %i.bo = call i32 @avio_rl32(ptr noundef %1) #16
  %i.bp = icmp eq i32 %i.bo, 1635017060
  br i1 %i.bp, label %bb.bz, label %.thread260

bb.bz:                                            ; preds = %._crit_edge.split.us
  %i.bq = sext i32 %i.bn to i64
  %i.br = icmp sge i64 %.sroa.6.0.ph.fr, %i.bq
  %i.bs = icmp sgt i32 %i.bn, 15
  %or.cond7 = and i1 %i.bs, %i.br
  br i1 %or.cond7, label %bb.ca, label %.thread260

bb.ca:                                            ; preds = %bb.bz
  %i.bt = call i32 @avio_rb32(ptr noundef %1) #16 ; 6 uses
  %i.bu = call i32 @avio_rb32(ptr noundef %1) #16 ; 0 uses
  %i.bv = add nsw i32 %i.bn, -16                  ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 5 uses
  %i.bx = add nsw i64 %.sroa.6.0.ph.fr, -16       ; 4 uses
  %.not227 = icmp eq ptr %.1201.ph, null
  br i1 %.not227, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.by = load i32, ptr %i.af, align 8, !tbaa !134
  %.not228 = icmp eq i32 %i.by, 0
  br i1 %.not228, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !309 ; 2 uses
  %.not229 = icmp eq ptr %i.bz, null
  br i1 %.not229, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ca = load i32, ptr %i.ai, align 8, !tbaa !135 ; 2 uses
  %i.cb = icmp ult i32 %i.ah, %i.ca
  %or.cond9 = and i1 %i.aj, %i.cb
  br i1 %or.cond9, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ak
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !130
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  br i1 %.not230, label %.thread, label %.thread255

.thread255:                                       ; preds = %bb.cf
  %i.ce = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ce, i32 noundef 24, ptr noundef nonnull @.str.452, i32 noundef %i.ah, i32 noundef %i.ca) #16
  br label %.thread268

bb.cg:                                            ; preds = %bb.ce, %bb.cc, %bb.cb, %bb.ca
  %.3203 = phi ptr [ %.1201.ph, %bb.ca ], [ null, %bb.cb ], [ null, %bb.cc ], [ %i.cd, %bb.ce ] ; 5 uses
  br i1 %.not230, label %.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not231 = icmp eq ptr %.3203, null
  br i1 %.not231, label %.thread268, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.3203, ptr noundef nonnull dereferenceable(28) @.str.453) #18
  %.not232 = icmp eq i32 %i.cf, 0
  br i1 %.not232, label %.thread, label %.thread299

.thread:                                          ; preds = %bb.cf, %bb.ci, %bb.cg
  %.3203251 = phi ptr [ %.3203, %bb.cg ], [ %.3203, %bb.ci ], [ null, %bb.cf ]
  switch i32 %i.bt, label %bb.cl [
    i32 13, label %bb.cm
    i32 14, label %bb.cj
    i32 27, label %bb.ck
  ]

bb.cj:                                            ; preds = %.thread
  br label %bb.cm

bb.ck:                                            ; preds = %.thread
  br label %bb.cm

bb.cl:                                            ; preds = %.thread
  %i.cg = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cg, i32 noundef 24, ptr noundef nonnull @.str.474, i32 noundef %i.bt) #16
  %i.ch = call i64 @avio_skip(ptr noundef %1, i64 noundef %i.bw) #16 ; 0 uses
  br label %mov_read_covr.exit

bb.cm:                                            ; preds = %bb.ck, %bb.cj, %.thread
  %i.ci = phi i1 [ false, %bb.ck ], [ true, %bb.cj ], [ true, %.thread ]
  %.0.i = phi i32 [ 78, %bb.ck ], [ 61, %bb.cj ], [ 7, %.thread ]
  %i.cj = call noalias ptr @av_mallocz(i64 noundef 1656) #16 ; 5 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %.loopexit312, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ck = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.cl = call i32 @ff_add_attached_pic(ptr noundef %i.ck, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef range(i32 0, 2147483632) %i.bv) #16 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @av_free(ptr noundef nonnull %i.cj) #16
  br label %.loopexit312

bb.cp:                                            ; preds = %bb.cn
  %i.cn = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !47
  %i.cs = add i32 %i.cr, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !57
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !214
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !205
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i32 1, ptr %i.da, align 8, !tbaa !313
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !566
  %i.dd = icmp sgt i32 %i.dc, 7
  %or.cond.i = and i1 %i.ci, %i.dd
  br i1 %or.cond.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !207
  %i.dg = load i64, ptr %i.df, align 1, !tbaa !94
  %i.dh = icmp eq i64 %i.dg, 727905341920923785
  %..i = select i1 %i.dh, i32 61, i32 7
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.1.i = phi i32 [ %..i, %bb.cq ], [ %.0.i, %bb.cp ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 %.1.i, ptr %i.dk, align 4, !tbaa !90
  br label %mov_read_covr.exit

.loopexit312:                                     ; preds = %bb.cm, %bb.co
  %.025.i.ph = phi i32 [ %i.cl, %bb.co ], [ -12, %bb.cm ]
  %i.dl = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dl, i32 noundef 16, ptr noundef nonnull @.str.454) #16
  br label %.thread260

mov_read_covr.exit:                               ; preds = %bb.cr, %bb.cl
  %i.dm = sub nuw nsw i64 %i.bx, %i.bw            ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 8
  br i1 %i.dn, label %.outer, label %.thread260

.split.us:                                        ; preds = %bb.bw, %bb.bs, %bb.by, %bb.bu
  %.us-phi404 = phi i64 [ %i.az, %bb.bu ], [ %i.bl, %bb.by ], [ %i.bf, %bb.bw ], [ %i.at, %bb.bs ]
  %4 = call i32 @avio_rb16(ptr noundef %1) #16    ; 2 uses
  %5 = trunc i32 %4 to i16
  %6 = and i32 %4, 65535
  %7 = call i32 @ff_mov_lang_to_iso639(i32 noundef %6, ptr noundef nonnull %i.c) #16 ; 0 uses
  %8 = add nsw i64 %.sroa.6.0.ph.fr, -4
  br label %.thread268

.thread268.loopexit685.loopexit:                  ; preds = %bb.by
  %i.do = call i64 @avio_seek(ptr noundef %1, i64 noundef -2, i32 noundef 1) #16 ; 0 uses
  %i.dp = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dp, i32 noundef 24, ptr noundef nonnull @.str.455) #16
  br label %.thread299

.thread268:                                       ; preds = %bb.ch, %.lr.ph, %.lr.ph.split.us.split.us.split.preheader, %bb.bt, %bb.bv, %.lr.ph.split.us.split.us.split.us, %.thread255, %.split.us
  %.1190325 = phi i32 [ %.1190.lcssa, %.thread255 ], [ %.1190.ph, %.split.us ], [ %.1190.ph, %.lr.ph.split.us.split.us.split.us ], [ 1, %bb.bv ], [ 1, %bb.bt ], [ %.1190.lcssa, %bb.ch ], [ %.1190.ph, %.lr.ph.split.us.split.us.split.preheader ], [ %.1190.ph, %.lr.ph ]
  %.sroa.6.3 = phi i64 [ %i.bx, %.thread255 ], [ %8, %.split.us ], [ %.sroa.6.0.ph.fr, %.lr.ph.split.us.split.us.split.us ], [ %.sroa.6.0.ph.fr, %bb.bv ], [ %.sroa.6.0.ph.fr, %bb.bt ], [ %i.bx, %bb.ch ], [ %.sroa.6.0.ph.fr, %.lr.ph.split.us.split.us.split.preheader ], [ %.sroa.6.0.ph.fr, %.lr.ph ]
  %.5205 = phi ptr [ null, %.thread255 ], [ %.1201.ph, %.split.us ], [ null, %.lr.ph.split.us.split.us.split.us ], [ null, %bb.bv ], [ null, %bb.bt ], [ null, %bb.ch ], [ null, %.lr.ph.split.us.split.us.split.preheader ], [ %.1201.ph, %.lr.ph ] ; 2 uses
  %.1199 = phi i16 [ %.0198.ph.ph, %.thread255 ], [ %5, %.split.us ], [ %.0198.ph.ph, %.lr.ph.split.us.split.us.split.us ], [ %.0198.ph.ph, %bb.bv ], [ %.0198.ph.ph, %bb.bt ], [ %.0198.ph.ph, %.lr.ph.split.us.split.us.split.preheader ], [ %.0198.ph.ph, %.lr.ph ], [ %.0198.ph.ph, %bb.ch ]
  %.2197 = phi i32 [ %i.bt, %.thread255 ], [ %.0195.ph, %.split.us ], [ %.0195.ph, %.lr.ph.split.us.split.us.split.us ], [ %.0195.ph, %bb.bv ], [ %.0195.ph, %bb.bt ], [ %i.bt, %bb.ch ], [ %.0195.ph, %.lr.ph.split.us.split.us.split.preheader ], [ %.0195.ph, %.lr.ph ]
  %.2194 = phi i64 [ %i.bw, %.thread255 ], [ %.us-phi404, %.split.us ], [ %.sroa.6.0.ph.fr, %.lr.ph.split.us.split.us.split.us ], [ %.sroa.6.0.ph.fr, %bb.bv ], [ %.sroa.6.0.ph.fr, %bb.bt ], [ %i.bw, %bb.ch ], [ %.sroa.6.0.ph.fr, %.lr.ph.split.us.split.us.split.preheader ], [ %.sroa.6.0.ph.fr, %.lr.ph ]
  %i.dq = load i32, ptr %i.ad, align 8, !tbaa !565
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = icmp ne ptr %.5205, null
  %or.cond13 = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond13, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.thread268
  %i.dt = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.a, i32 noundef %2) #16
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.thread268
  %.6 = phi ptr [ %.5205, %.thread268 ], [ %i.dt, %bb.cs ] ; 2 uses
  %.not233 = icmp eq ptr %.6, null
  br i1 %.not233, label %.thread260, label %.thread299

.thread299:                                       ; preds = %bb.bx, %.lr.ph.split.us.split.split.preheader, %bb.ci, %.lr.ph.split.us.split.split.us, %.thread268.loopexit685.loopexit, %bb.ct
  %.1190324 = phi i32 [ %.1190325, %bb.ct ], [ 1, %.thread268.loopexit685.loopexit ], [ %.1190.ph, %.lr.ph.split.us.split.split.us ], [ %.1190.ph, %.lr.ph.split.us.split.split.preheader ], [ 1, %bb.bx ], [ %.1190.lcssa, %bb.ci ] ; 2 uses
  %.6310 = phi ptr [ %.6, %bb.ct ], [ %.1201.ph, %.thread268.loopexit685.loopexit ], [ %.1201.ph, %.lr.ph.split.us.split.split.us ], [ %.1201.ph, %.lr.ph.split.us.split.split.preheader ], [ %.1201.ph, %bb.bx ], [ %.3203, %bb.ci ] ; 8 uses
  %.sroa.6.3293309 = phi i64 [ %.sroa.6.3, %bb.ct ], [ %.sroa.6.0.ph.fr, %.thread268.loopexit685.loopexit ], [ %.sroa.6.0.ph.fr, %.lr.ph.split.us.split.split.us ], [ %.sroa.6.0.ph.fr, %.lr.ph.split.us.split.split.preheader ], [ %.sroa.6.0.ph.fr, %bb.bx ], [ %i.bx, %bb.ci ] ; 2 uses
  %.1199294308 = phi i16 [ %.1199, %bb.ct ], [ %.0198.ph.ph, %.thread268.loopexit685.loopexit ], [ %.0198.ph.ph, %.lr.ph.split.us.split.split.us ], [ %.0198.ph.ph, %bb.ci ], [ %.0198.ph.ph, %.lr.ph.split.us.split.split.preheader ], [ %.0198.ph.ph, %bb.bx ] ; 3 uses
  %.2197295307 = phi i32 [ %.2197, %bb.ct ], [ %.0195.ph, %.thread268.loopexit685.loopexit ], [ %.0195.ph, %.lr.ph.split.us.split.split.us ], [ %.0195.ph, %.lr.ph.split.us.split.split.preheader ], [ %.0195.ph, %bb.bx ], [ %i.bt, %bb.ci ] ; 7 uses
  %.2194296306 = phi i64 [ %.2194, %bb.ct ], [ %.sroa.6.0.ph.fr, %.thread268.loopexit685.loopexit ], [ %.sroa.6.0.ph.fr, %.lr.ph.split.us.split.split.us ], [ %.sroa.6.0.ph.fr, %.lr.ph.split.us.split.split.preheader ], [ %.sroa.6.0.ph.fr, %bb.bx ], [ %i.bw, %bb.ci ] ; 11 uses
  %i.du = icmp slt i64 %.sroa.6.3293309, 0
  %i.dv = icmp ugt i64 %.2194296306, 1073741822
  %or.cond15 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond15, label %.thread260, label %bb.cu

bb.cu:                                            ; preds = %.thread299
  %i.dw = add i32 %.2197295307, -21
  %i.dx = icmp ult i32 %i.dw, 3
  %.not234 = icmp eq i32 %.1190324, 0             ; 2 uses
  %i.dy = zext i1 %.not234 to i64
  %i.dz = shl nuw nsw i64 %.2194296306, %i.dy     ; 2 uses
  %i.ea = add nuw nsw i64 %i.dz, 1
  %i.eb = select i1 %i.dx, i64 513, i64 %i.ea
  %i.ec = call noalias ptr @av_mallocz(i64 noundef %i.eb) #16 ; 6 uses
  store ptr %i.ec, ptr %i.d, align 8, !tbaa !130
  %.not235 = icmp eq ptr %i.ec, null
  br i1 %.not235, label %.thread260, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %.not236, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ed = trunc nuw nsw i64 %.2194296306 to i32
  %i.ee = call i32 %.0191(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ed, ptr noundef nonnull %.6310) #16 ; 0 uses
  br label %.loopexit

bb.cx:                                            ; preds = %bb.cv
  br i1 %.not234, label %bb.cy, label %bb.dg

bb.cy:                                            ; preds = %bb.cx
  switch i32 %.2197295307, label %bb.dv [
    i32 3, label %bb.da
    i32 0, label %bb.cz
    i32 21, label %bb.dh
    i32 22, label %bb.do
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.ef = icmp ult i16 %.1199294308, 1024
  %i.eg = icmp eq i16 %.1199294308, 32767
  %or.cond18 = or i1 %i.ef, %i.eg
  br i1 %or.cond18, label %bb.da, label %.thread284

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.eh = trunc nuw nsw i64 %.2194296306 to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dz ; 2 uses
  %.not311 = icmp eq i64 %.2194296306, 0
  br i1 %.not311, label %mov_read_mac_string.exit, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %bb.da, %.loopexit.i
  %.0404.i = phi i32 [ %i.ft, %.loopexit.i ], [ 0, %bb.da ]
  %.0413.i = phi ptr [ %.6.i, %.loopexit.i ], [ %i.ec, %bb.da ] ; 6 uses
  %i.ej = call i32 @avio_r8(ptr noundef %1) #16   ; 2 uses
  %.not.i249 = icmp ult ptr %.0413.i, %i.ei
  br i1 %.not.i249, label %bb.db, label %.loopexit.i

bb.db:                                            ; preds = %.lr.ph5.i
  %i.ek = and i32 %i.ej, 255                      ; 2 uses
  %i.el = icmp samesign ult i32 %i.ek, 128
  br i1 %i.el, label %.loopexit.sink.split.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = getelementptr [4 x i8], ptr @mac_to_unicode, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -512
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !95 ; 7 uses
  %i.eq = icmp ult i32 %i.ep, 128
  br i1 %i.eq, label %.loopexit.sink.split.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.er = icmp ugt i32 %i.ep, 65535               ; 2 uses
  %i.es = lshr i32 %i.ep, 16
  %spec.select.i.i = select i1 %i.er, i32 %i.es, i32 %i.ep ; 3 uses
  %spec.select11.i.i = select i1 %i.er, i16 16, i16 0
  %.not.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.et = lshr i32 %spec.select.i.i, 8
  %.110.i.i = select i1 %.not.i.i, i32 %spec.select.i.i, i32 %i.et
  %i.eu = zext nneg i32 %.110.i.i to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !94
  %i.ex = zext i8 %i.ew to i16
  %i.ey = select i1 %.not.i.i, i16 4, i16 12
  %i.ez = or disjoint i16 %i.ey, %spec.select11.i.i
  %.lhs.trunc.i = add nuw nsw i16 %i.ez, %i.ex    ; 2 uses
  %i.fa = udiv i16 %.lhs.trunc.i, 5
  %.zext.i = zext nneg i16 %i.fa to i32           ; 2 uses
  %i.fb = mul nuw nsw i32 %.zext.i, 6
  %i.fc = add nsw i32 %i.fb, -6                   ; 2 uses
  %i.fd = lshr i32 256, %.zext.i
  %i.fe = sub nsw i32 0, %i.fd
  %i.ff = lshr i32 %i.ep, %i.fc
  %i.fg = or i32 %i.ff, %i.fe
  %i.fh = trunc i32 %i.fg to i8
  store i8 %i.fh, ptr %.0413.i, align 1, !tbaa !94
  %i.fi = getelementptr inbounds nuw i8, ptr %.0413.i, i64 1 ; 2 uses
  %i.fj = icmp samesign ugt i16 %.lhs.trunc.i, 9
  br i1 %i.fj, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.dd, %bb.df
  %.02.i = phi i32 [ %i.fk, %bb.df ], [ %i.fc, %bb.dd ] ; 2 uses
  %.21.i = phi ptr [ %.3.i, %bb.df ], [ %i.fi, %bb.dd ] ; 4 uses
  %i.fk = add nsw i32 %.02.i, -6                  ; 2 uses
  %i.fl = icmp ult ptr %.21.i, %i.ei
  br i1 %i.fl, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.lr.ph.i
  %i.fm = lshr i32 %i.ep, %i.fk
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = and i8 %i.fn, 63
  %i.fp = or disjoint i8 %i.fo, -128
  %i.fq = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  store i8 %i.fp, ptr %.21.i, align 1, !tbaa !94
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.lr.ph.i
  %.3.i = phi ptr [ %i.fq, %bb.de ], [ %.21.i, %.lr.ph.i ] ; 2 uses
  %i.fr = icmp sgt i32 %.02.i, 11
  br i1 %i.fr, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !0

.loopexit.sink.split.i:                           ; preds = %bb.dc, %bb.db
  %.sink.in.i = phi i32 [ %i.ej, %bb.db ], [ %i.ep, %bb.dc ]
  %.sink.i = trunc i32 %.sink.in.i to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.0413.i, i64 1
  store i8 %.sink.i, ptr %.0413.i, align 1, !tbaa !94
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.df, %.loopexit.sink.split.i, %bb.dd, %.lr.ph5.i
  %.6.i = phi ptr [ %.0413.i, %.lr.ph5.i ], [ %i.fi, %bb.dd ], [ %i.fs, %.loopexit.sink.split.i ], [ %.3.i, %bb.df ] ; 2 uses
  %i.ft = add nuw nsw i32 %.0404.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ft, %i.eh
  br i1 %exitcond.not.i, label %mov_read_mac_string.exit, label %.lr.ph5.i, !llvm.loop !1

mov_read_mac_string.exit:                         ; preds = %.loopexit.i, %bb.da
  %.041.lcssa.i = phi ptr [ %i.ec, %bb.da ], [ %.6.i, %.loopexit.i ]
  store i8 0, ptr %.041.lcssa.i, align 1, !tbaa !94
  br label %.thread276

bb.dg:                                            ; preds = %bb.cx
  switch i32 %.2197295307, label %bb.dv [
    i32 21, label %bb.dh
    i32 22, label %bb.do
  ]

bb.dh:                                            ; preds = %bb.cy, %bb.dg
  switch i64 %.2194296306, label %bb.dm [
    i64 1, label %bb.di
    i64 2, label %bb.dj
    i64 3, label %bb.dk
    i64 4, label %bb.dl
  ]

bb.di:                                            ; preds = %bb.dh
  %i.fu = call i32 @avio_r8(ptr noundef %1) #16
  %sext240 = shl i32 %i.fu, 24
  %i.fv = ashr exact i32 %sext240, 24
  br label %bb.dm

bb.dj:                                            ; preds = %bb.dh
  %i.fw = call i32 @avio_rb16(ptr noundef %1) #16
  %sext = shl i32 %i.fw, 16
  %i.fx = ashr exact i32 %sext, 16
  br label %bb.dm

bb.dk:                                            ; preds = %bb.dh
  %i.fy = call i32 @avio_rb24(ptr noundef %1) #16
  %i.fz = shl i32 %i.fy, 8
  %i.ga = ashr exact i32 %i.fz, 8
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dh
  %i.gb = call i32 @avio_rb32(ptr noundef %1) #16
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dh, %bb.dj, %bb.dl, %bb.dk, %bb.di
  %.0186 = phi i32 [ %i.fv, %bb.di ], [ %i.fx, %bb.dj ], [ %i.ga, %bb.dk ], [ %i.gb, %bb.dl ], [ 0, %bb.dh ] ; 2 uses
  %i.gc = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.gd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.gc, i64 noundef 513, ptr noundef nonnull @.str.456, i32 noundef %.0186) #16
  %.not241 = icmp ult i32 %i.gd, 513
end_hunk_0
