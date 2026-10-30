Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9?download=true
inline.NumInlined: 133
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 51
begin_hunk_0_@loopfilter_proc:bb.a
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !137
  %i.at = load i32, ptr %i.y, align 8, !tbaa !88
  %i.au = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.av = mul i32 %i.at, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [192 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load i8, ptr %i.w, align 1, !tbaa !71
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = ashr i64 %i.v, %i.az
  %i.bb = mul nsw i64 %i.ba, %indvars.iv
  %i.bc = mul nsw i64 %i.u, %indvars.iv
  %i.bd = shl i32 %i.au, 3
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.03441 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.e ] ; 2 uses
  %.03540 = phi ptr [ %i.ax, %.lr.ph ], [ %i.bl, %bb.e ] ; 2 uses
  %.03639 = phi i64 [ %i.bc, %.lr.ph ], [ %i.bf, %bb.e ] ; 2 uses
  %.03738 = phi i64 [ %i.bb, %.lr.ph ], [ %i.bk, %bb.e ] ; 2 uses
  tail call void @ff_vp9_loopfilter_sb(ptr noundef %0, ptr noundef %.03540, i32 noundef %i.bd, i32 noundef %.03441, i64 noundef %.03639, i64 noundef %.03738) #13
  %i.be = add nuw nsw i32 %.03441, 8              ; 2 uses
  %i.bf = add nsw i64 %.03639, %i.ab
  %i.bg = load i8, ptr %i.ac, align 4, !tbaa !72
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = lshr i32 %i.aa, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = add nsw i64 %.03738, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.03540, i64 192
  %i.bm = load i32, ptr %i.z, align 4, !tbaa !103
  %i.bn = icmp ult i32 %i.be, %i.bm
  br i1 %i.bn, label %bb.e, label %.loopexit, !llvm.loop !275

.loopexit:                                        ; preds = %bb.e, %bb.d, %vp9_await_tile_progress.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = load i32, ptr %i.c, align 4, !tbaa !89
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.b, label %._crit_edge, !llvm.loop !276

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0
}

declare void @ff_vp9_adapt_probs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @vp9_export_enc_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.b = load i8, ptr %i.a, align 2, !tbaa !73
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3820
  %i.d = load i32, ptr %i.c, align 4, !tbaa !118  ; 3 uses
  %.not82 = icmp eq i32 %i.d, 0
  br i1 %.not82, label %.loopexit71, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111  ; 9 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi106 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.g = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.h = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.i = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.j = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.k = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.l = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.m = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.n = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 77152
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 154320
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 231488
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 308656
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 385824
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 462992
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 540160
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 617328
  %i.w = load i32, ptr %i.o, align 16, !tbaa !160
  %i.x = load i32, ptr %i.p, align 16, !tbaa !160
  %i.y = load i32, ptr %i.q, align 16, !tbaa !160
  %i.z = load i32, ptr %i.r, align 16, !tbaa !160
  %i.aa = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.x, i64 1
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 2
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 3
  %i.ae = load i32, ptr %i.s, align 16, !tbaa !160
  %i.af = load i32, ptr %i.t, align 16, !tbaa !160
  %i.ag = load i32, ptr %i.u, align 16, !tbaa !160
  %i.ah = load i32, ptr %i.v, align 16, !tbaa !160
  %i.ai = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = add <4 x i32> %i.ad, %vec.phi           ; 2 uses
  %i.an = add <4 x i32> %i.al, %vec.phi106        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !277

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit71, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.06174.ph = phi i32 [ 0, %.lr.ph ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.06174 = phi i32 [ %i.at, %scalar.ph ], [ %.06174.ph, %scalar.ph.preheader ]
  %i.aq = getelementptr inbounds nuw [77168 x i8], ptr %i.f, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 77152
  %i.as = load i32, ptr %i.ar, align 16, !tbaa !160
  %i.at = add i32 %i.as, %.06174                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit71, label %scalar.ph, !llvm.loop !278

.loopexit71:                                      ; preds = %scalar.ph, %middle.block, %.preheader70, %bb.a
  %.162 = phi i32 [ 0, %bb.a ], [ 0, %.preheader70 ], [ %i.ap, %middle.block ], [ %i.at, %scalar.ph ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.aw = tail call ptr @av_video_enc_params_create_side_data(ptr noundef %i.av, i32 noundef 0, i32 noundef %.162) #13 ; 11 uses
  %.not66 = icmp eq ptr %i.aw, null
  br i1 %.not66, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.loopexit71
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !150
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 28
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !282
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !151
  %i.bd = sext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !152
  %i.bh = sext i8 %i.bg to i32                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i32 %i.bh, ptr %i.bj, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !153
  %i.bm = sext i8 %i.bl to i32                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  store i32 %i.bm, ptr %i.bo, align 4, !tbaa !78
  %.not67 = icmp eq i32 %.162, 0
  br i1 %.not67, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3820
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !118 ; 2 uses
  %.not83 = icmp eq i32 %i.bq, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !111
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3952
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count99 = zext i32 %i.bq to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph81, %._crit_edge
  %indvars.iv96 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next97, %._crit_edge ] ; 2 uses
  %.06079 = phi i32 [ 0, %.lr.ph81 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [77168 x i8], ptr %i.bs, i64 %indvars.iv96 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 77152
  %i.cb = load i32, ptr %i.ca, align 16, !tbaa !160 ; 2 uses
  %.not84 = icmp eq i32 %i.cb, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.c
  %i.cc = load i32, ptr %i.aw, align 8, !tbaa !283
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 77144
  %2 = zext i32 %i.cb to i64
  %i.ce = zext i32 %.06079 to i64                 ; 2 uses
  %i.cf = tail call i32 @llvm.umax.i32(i32 %.06079, i32 %i.cc)
  %umax = zext i32 %i.cf to i64
  %3 = sub nsw i64 %umax, %i.ce
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph77, %bb.h
  %indvars.iv89 = phi i64 [ %i.ce, %.lr.ph77 ], [ %indvars.iv.next90, %bb.h ] ; 2 uses
  %indvars.iv87 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next88, %bb.h ] ; 3 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv87, %3
  br i1 %exitcond94.not, label %bb.e, label %av_video_enc_params_block.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 145) #13
  tail call void @abort() #14
  unreachable

av_video_enc_params_block.exit:                   ; preds = %bb.d
  %i.cg = load i64, ptr %i.bt, align 8, !tbaa !284
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cg
  %i.ci = load i64, ptr %i.bu, align 8, !tbaa !285
  %i.cj = mul i64 %i.ci, %indvars.iv89
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj ; 5 uses
  %i.cl = load ptr, ptr %i.cd, align 8, !tbaa !120
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv87 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = lshr i32 %i.cn, 13
  %i.cp = and i32 %i.co, 8191                     ; 2 uses
  %i.cq = load ptr, ptr %i.bv, align 8, !tbaa !85
  %i.cr = shl i32 %i.cn, 3
  %i.cs = and i32 %i.cr, 65528                    ; 2 uses
  %i.ct = load i32, ptr %i.bw, align 8, !tbaa !88
  %i.cu = mul i32 %i.cs, %i.ct
  %i.cv = add i32 %i.cu, %i.cp
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !124
  %i.cz = shl nuw nsw i32 %i.cp, 3
  store i32 %i.cz, ptr %i.ck, align 4, !tbaa !287
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %i.cs, ptr %i.da, align 4, !tbaa !288
  %i.db = load i32, ptr %i.cm, align 4
  %i.dc = lshr i32 %i.db, 26
  %i.dd = and i32 %i.dc, 3
  %i.de = shl nuw nsw i32 8, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.de, ptr %i.df, align 4, !tbaa !289
  %i.dg = load i32, ptr %i.cm, align 4
  %i.dh = lshr i32 %i.dg, 28
  %i.di = and i32 %i.dh, 3
  %i.dj = shl nuw nsw i32 8, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !290
  %i.dl = zext i8 %i.cy to i64
  %i.dm = getelementptr inbounds nuw [26 x i8], ptr %i.bx, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !156
  %.not68 = icmp eq i8 %i.dn, 0
  br i1 %.not68, label %bb.h, label %bb.f

bb.f:                                             ; preds = %av_video_enc_params_block.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 6
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !157
  %i.dq = sext i16 %i.dp to i32                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !291
  %i.ds = load i8, ptr %i.by, align 8, !tbaa !75
  %.not69 = icmp eq i8 %i.ds, 0
  br i1 %.not69, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i32 %i.dq, %i.az
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !291
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %av_video_enc_params_block.exit
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next88, %2
  br i1 %exitcond95.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !279

._crit_edge.loopexit:                             ; preds = %bb.h
  %indvars92.le = trunc i64 %indvars.iv.next90 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.1.lcssa = phi i32 [ %.06079, %bb.c ], [ %indvars92.le, %._crit_edge.loopexit ]
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.loopexit, label %bb.c, !llvm.loop !280

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.b, %.loopexit71
  %.064 = phi i32 [ -12, %.loopexit71 ], [ 0, %bb.b ], [ 0, %.preheader ], [ 0, %._crit_edge ]
  ret i32 %.064
}

declare void @ff_progress_frame_report(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @read_colorspace_details(ptr noundef initializes((152, 160)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load i32, ptr %i.c, align 8, !tbaa !147  ; 6 uses
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 3768
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !146
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %i.b, i64 3776
  %.pre53 = load i32, ptr %.phi.trans.insert52, align 8, !tbaa !145
  %.phi.trans.insert54 = getelementptr inbounds nuw i8, ptr %i.b, i64 3760
  %.pre55 = load ptr, ptr %.phi.trans.insert54, align 8, !tbaa !144
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 3760
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3768 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !146  ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !144  ; 2 uses
  %i.j = lshr i32 %i.h, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !124
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3776
  %i.o = load i32, ptr %i.n, align 8, !tbaa !145  ; 2 uses
  %i.p = icmp slt i32 %i.h, %i.o
  %i.q = zext i1 %i.p to i32
  %spec.select.i = add i32 %i.h, %i.q             ; 2 uses
  %i.r = zext i8 %i.m to i32
  %i.s = and i32 %i.h, 7
  %i.t = shl nuw nsw i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 7
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !146
  %i.v = and i32 %i.u, 1
  %i.w = add nuw nsw i32 %i.v, 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.x = phi ptr [ %i.i, %bb.b ], [ %.pre55, %._crit_edge ] ; 6 uses
  %i.y = phi i32 [ %i.o, %bb.b ], [ %.pre53, %._crit_edge ] ; 6 uses
  %i.z = phi i32 [ %spec.select.i, %bb.b ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.aa = phi i32 [ %i.w, %bb.b ], [ 0, %._crit_edge ] ; 4 uses
  %i.ab = trunc nuw nsw i32 %i.aa to i8           ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 3927
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !80
  %i.ad = shl nuw nsw i8 %i.ab, 1                 ; 2 uses
  %i.ae = add nuw nsw i8 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !79
  %narrow = add nuw nsw i8 %i.ad, 14
  %i.ag = lshr i8 %narrow, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 3928
  store i8 %i.ag, ptr %i.ah, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 3768 ; 6 uses
  %i.aj = lshr i32 %i.z, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 1, !tbaa !124
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = and i32 %i.z, 7
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = lshr i32 %i.ap, 29                      ; 2 uses
  %i.ar = add i32 %i.z, 3
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ar) ; 9 uses
  store i32 %i.as, ptr %i.ai, align 8, !tbaa !146
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @read_colorspace_details.colorspaces, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !148
  %i.ax = icmp eq i32 %i.aq, 7
  br i1 %i.ax, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 3925
  store i8 0, ptr %i.ay, align 1, !tbaa !71
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 3924
  store i8 0, ptr %i.az, align 4, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.ba, align 4, !tbaa !149
  %i.bb = zext nneg i32 %i.aa to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @read_colorspace_details.pix_fmt_rgb, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 3940
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !81
  %i.bf = and i32 %i.d, 1
  %.not45 = icmp eq i32 %i.bf, 0
  br i1 %.not45, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = lshr i32 %i.as, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !124
  %i.bk = icmp slt i32 %i.as, %i.y
  %i.bl = zext i1 %i.bk to i32
  %spec.select.i47 = add i32 %i.as, %i.bl
  %i.bm = zext i8 %i.bj to i32
  %i.bn = and i32 %i.as, 7
  store i32 %spec.select.i47, ptr %i.ai, align 8, !tbaa !146
  %i.bo = lshr exact i32 128, %i.bn
  %i.bp = and i32 %i.bo, %i.bm
  %.not46 = icmp eq i32 %i.bp, 0
  br i1 %.not46, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.18) #13
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.d) #13
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.bq = lshr i32 %i.as, 3
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !124
  %i.bu = icmp slt i32 %i.as, %i.y
  %i.bv = zext i1 %i.bu to i32
  %spec.select.i48 = add i32 %i.as, %i.bv         ; 5 uses
  %i.bw = zext i8 %i.bt to i32
  %i.bx = and i32 %i.as, 7
  store i32 %spec.select.i48, ptr %i.ai, align 8, !tbaa !146
  %i.by = lshr exact i32 128, %i.bx
  %i.bz = and i32 %i.by, %i.bw
  %.not = icmp eq i32 %i.bz, 0
  %i.ca = select i1 %.not, i32 1, i32 2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !149
  %i.cc = and i32 %i.d, 1
  %.not43 = icmp eq i32 %i.cc, 0
  br i1 %.not43, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = lshr i32 %spec.select.i48, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !124
  %i.ch = icmp slt i32 %spec.select.i48, %i.y
  %i.ci = zext i1 %i.ch to i32
  %spec.select.i49 = add i32 %spec.select.i48, %i.ci ; 5 uses
  %i.cj = zext i8 %i.cg to i32
  %i.ck = and i32 %spec.select.i48, 7
  %i.cl = shl nuw nsw i32 %i.cj, %i.ck
  store i32 %spec.select.i49, ptr %i.ai, align 8, !tbaa !146
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = lshr i8 %i.cm, 7                        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 3924
  store i8 %i.cn, ptr %i.co, align 4, !tbaa !72
  %i.cp = lshr i32 %spec.select.i49, 3
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !124
  %i.ct = icmp slt i32 %spec.select.i49, %i.y
  %i.cu = zext i1 %i.ct to i32
  %spec.select.i50 = add i32 %spec.select.i49, %i.cu ; 5 uses
  %i.cv = zext i8 %i.cs to i32
  %i.cw = and i32 %spec.select.i49, 7
  %i.cx = shl nuw nsw i32 %i.cv, %i.cw
  %i.cy = lshr i32 %i.cx, 7
  store i32 %spec.select.i50, ptr %i.ai, align 8, !tbaa !146
  %i.cz = and i32 %i.cy, 1                        ; 2 uses
  %i.da = trunc nuw nsw i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 3925
  store i8 %i.da, ptr %i.db, align 1, !tbaa !71
  %i.dc = zext nneg i32 %i.aa to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr @read_colorspace_details.pix_fmt_for_ss, i64 %i.dc
  %i.de = zext nneg i32 %i.cz to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.de
  %i.dg = zext nneg i8 %i.cn to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !78 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 3940
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !81
  %i.dk = icmp eq i32 %i.di, 0
  br i1 %i.dk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %i.d) #13
end_hunk_0
begin_hunk_1_@decode_sb_mem:bb.a
  %.tr164219 = phi i64 [ %.tr164.ph233, %.lr.ph ], [ %i.cw, %tailrecurse ] ; 8 uses
  %.tr162218 = phi i32 [ %.tr162.ph232, %.lr.ph ], [ %i.dc, %tailrecurse ] ; 7 uses
  %i.k = load ptr, ptr %0, align 16, !tbaa !158   ; 12 uses
  %.in251 = lshr i32 4, %.tr166221
  %i.l = zext nneg i32 %.in251 to i64             ; 9 uses
  %.pn.pn.in = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  %.pn.pn = load ptr, ptr %.pn.pn.in, align 8, !tbaa !90 ; 2 uses
  %.in249 = getelementptr inbounds nuw i8, ptr %.pn.pn, i64 64
  %i.m = load i32, ptr %.in249, align 8, !tbaa !78 ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %.pn.pn, i64 68
  %i.n = load i32, ptr %.in, align 4, !tbaa !78   ; 3 uses
  %.in247 = getelementptr inbounds nuw i8, ptr %i.k, i64 3928
  %i.o = load i8, ptr %.in247, align 8, !tbaa !76 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !305
  %i.r = icmp eq i32 %i.q, %.tr166221
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.t = sext i32 %i.m to i64
  %i.u = sext i32 %i.n to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !306
  tail call void @ff_vp9_decode_block(ptr noundef nonnull %0, i32 noundef %.tr161.ph231, i32 noundef %.tr162218, ptr noundef %3, i64 noundef %.tr164219, i64 noundef %.tr165220, i32 noundef %.tr166221, i32 noundef %i.w) #13
  %i.x = load i32, ptr %i.v, align 4, !tbaa !306
  switch i32 %i.x, label %.thread [
    i32 1, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i64 %i.l, %i.e                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 3960
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !119
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp slt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nuw nsw i64 %i.l, 3                 ; 2 uses
  %i.ae = mul nsw i64 %i.ad, %i.t
  %i.af = add nsw i64 %i.ae, %.tr164219
  %i.ag = mul nsw i64 %i.ad, %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 3925
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !71
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = ashr i64 %i.ag, %i.aj
  %i.al = add nsw i64 %i.ak, %.tr165220
  %i.am = trunc i64 %i.y to i32
  %i.an = load i32, ptr %i.s, align 4, !tbaa !305
  tail call void @ff_vp9_decode_block(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef %.tr162218, ptr noundef %3, i64 noundef %i.af, i64 noundef %i.al, i32 noundef %i.an, i32 noundef 1) #13
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.ao = sext i32 %.tr162218 to i64
  %i.ap = add nsw i64 %i.l, %i.ao                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 3964
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !103
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp slt i64 %i.ap, %i.as
  br i1 %i.at, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.au = shl nuw nsw i64 %i.l, 3
  %i.av = zext i8 %i.o to i64
  %i.aw = mul nuw nsw i64 %i.au, %i.av            ; 2 uses
  %i.ax = add nsw i64 %i.aw, %.tr164219
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 3924
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !72
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = lshr i64 %i.aw, %i.ba
  %i.bc = add nsw i64 %i.bb, %.tr165220
  %i.bd = trunc i64 %i.ap to i32
  %i.be = load i32, ptr %i.s, align 4, !tbaa !305
  tail call void @ff_vp9_decode_block(ptr noundef nonnull %0, i32 noundef %.tr161.ph231, i32 noundef %i.bd, ptr noundef %3, i64 noundef %i.ax, i64 noundef %i.bc, i32 noundef %i.be, i32 noundef 2) #13
  br label %.thread

bb.h:                                             ; preds = %bb.b
  %i.bf = add nuw nsw i32 %.tr166221, 1           ; 7 uses
  tail call fastcc void @decode_sb_mem(ptr noundef nonnull %0, i32 noundef %.tr161.ph231, i32 noundef %.tr162218, ptr noundef %3, i64 noundef %.tr164219, i64 noundef %.tr165220, i32 noundef %i.bf)
  %i.bg = sext i32 %.tr162218 to i64
  %i.bh = add nsw i64 %i.l, %i.bg                 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 3964
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !103
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp slt i64 %i.bh, %i.bk
  %i.bm = add nsw i64 %i.l, %i.e                  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 3960
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !119
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp slt i64 %i.bm, %i.bp               ; 2 uses
  br i1 %i.bl, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.bq, label %bb.j, label %tailrecurse

bb.j:                                             ; preds = %bb.i
  %i.br = sext i32 %i.m to i64
  %i.bs = sext i32 %i.n to i64
  %i.bt = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bu = shl nuw nsw i64 %i.l, 3                 ; 3 uses
  %i.bv = zext i8 %i.o to i64
  %i.bw = mul nuw nsw i64 %i.bu, %i.bv            ; 4 uses
  %i.bx = add nsw i64 %i.bw, %.tr164219
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 3924 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !72
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = lshr i64 %i.bw, %i.ca
  %i.cc = add nsw i64 %i.cb, %.tr165220
  tail call fastcc void @decode_sb_mem(ptr noundef nonnull %0, i32 noundef %.tr161.ph231, i32 noundef %i.bt, ptr noundef %3, i64 noundef %i.bx, i64 noundef %i.cc, i32 noundef %i.bf)
  %i.cd = mul nsw i64 %i.bu, %i.br
  %i.ce = add nsw i64 %i.cd, %.tr164219           ; 2 uses
  %i.cf = mul nsw i64 %i.bu, %i.bs
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 3925
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !71
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = ashr i64 %i.cf, %i.ci
  %i.ck = add nsw i64 %i.cj, %.tr165220           ; 2 uses
  %i.cl = trunc i64 %i.bm to i32                  ; 2 uses
  tail call fastcc void @decode_sb_mem(ptr noundef nonnull %0, i32 noundef %i.cl, i32 noundef %.tr162218, ptr noundef %3, i64 noundef %i.ce, i64 noundef %i.ck, i32 noundef %i.bf)
  %i.cm = add nsw i64 %i.bw, %i.ce
  %i.cn = load i8, ptr %i.by, align 4, !tbaa !72
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = lshr i64 %i.bw, %i.co
  %i.cq = add nsw i64 %i.cp, %i.ck
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb.j, %bb.l
  %.tr161.ph.be = phi i32 [ %i.dq, %bb.l ], [ %i.cl, %bb.j ] ; 2 uses
  %.tr162.ph.be = phi i32 [ %.tr162218, %bb.l ], [ %i.bt, %bb.j ] ; 2 uses
  %.tr164.ph.be = phi i64 [ %i.dj, %bb.l ], [ %i.cm, %bb.j ] ; 2 uses
  %.tr165.ph.be = phi i64 [ %i.dp, %bb.l ], [ %i.cq, %bb.j ] ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.cs = icmp eq i32 %i.bf, 3
  br i1 %i.cs, label %tailrecurse.outer._crit_edge, label %.lr.ph

tailrecurse:                                      ; preds = %bb.i
  %i.ct = shl nuw nsw i64 %i.l, 3
  %i.cu = zext i8 %i.o to i64
  %i.cv = mul nuw nsw i64 %i.ct, %i.cu            ; 2 uses
  %i.cw = add nsw i64 %i.cv, %.tr164219           ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 3924
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !72
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = lshr i64 %i.cv, %i.cz
  %i.db = add nsw i64 %i.da, %.tr165220           ; 2 uses
  %i.dc = trunc i64 %i.bh to i32                  ; 2 uses
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.de = icmp eq i32 %i.bf, 3
  br i1 %i.de, label %tailrecurse.outer._crit_edge, label %bb.b

bb.k:                                             ; preds = %bb.h
  br i1 %i.bq, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.df = sext i32 %i.n to i64
  %i.dg = sext i32 %i.m to i64
  %i.dh = shl nuw nsw i64 %i.l, 3                 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.dg
  %i.dj = add nsw i64 %i.di, %.tr164219
  %i.dk = mul nsw i64 %i.dh, %i.df
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 3925
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !71
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = ashr i64 %i.dk, %i.dn
  %i.dp = add nsw i64 %i.do, %.tr165220
  %i.dq = trunc i64 %i.bm to i32
  br label %tailrecurse.outer.backedge

.thread:                                          ; preds = %bb.k, %bb.c, %bb.d, %bb.f, %bb.g, %bb.e, %tailrecurse.outer._crit_edge
  ret void
}

declare ptr @av_video_enc_params_create_side_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_pthread_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_cbs_fragment_free(ptr noundef) local_unnamed_addr #3

declare void @ff_cbs_close(ptr noundef) local_unnamed_addr #3

declare void @ff_cbs_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS11VP9RawFrame", !9, i64 0}
!30 = !{!"p1 _ZTS17VP9RawFrameHeader", !9, i64 0}
!31 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!32 = !{!"p1 _ZTS16ProgressInternal", !9, i64 0}
!33 = !{!"ProgressFrame", !31, i64 0, !32, i64 8}
!34 = !{!"p1 _ZTS12VP9mvrefPair", !9, i64 0}
!35 = !{!"VP9Frame", !29, i64 0, !30, i64 8, !33, i64 16, !9, i64 32, !14, i64 40, !34, i64 48, !6, i64 56, !9, i64 64}
!36 = !{!35, !29, i64 0}
!37 = !{!35, !30, i64 8}
!38 = !{!35, !9, i64 32}
!39 = !{!9, !9, i64 0}
!40 = !{!35, !6, i64 56}
!41 = !{!35, !9, i64 64}
!42 = !{!"", !5, i64 0, !5, i64 1}
!43 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4}
!44 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 11, !5, i64 14}
!45 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!46 = !{!"VP9BitstreamHeader", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !6, i64 12, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !5, i64 20, !5, i64 21, !5, i64 24, !5, i64 27, !5, i64 28, !42, i64 30, !43, i64 32, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !44, i64 46, !6, i64 268, !6, i64 272, !45, i64 276, !6, i64 292, !6, i64 296}
!47 = !{!"VP9SharedContext", !46, i64 0, !5, i64 304, !5, i64 432, !5, i64 720}
!48 = !{!"p1 _ZTS11VP9TileData", !9, i64 0}
!49 = !{!"p1 _ZTS21CodedBitstreamContext", !9, i64 0}
!50 = !{!"p1 _ZTS18CodedBitstreamUnit", !9, i64 0}
!51 = !{!"CodedBitstreamFragment", !14, i64 0, !13, i64 8, !13, i64 16, !21, i64 24, !6, i64 32, !6, i64 36, !50, i64 40}
!52 = !{!"VP9DSPContext", !5, i64 0, !5, i64 480, !5, i64 640, !5, i64 688, !5, i64 704, !5, i64 768, !5, i64 2048}
!53 = !{!"VideoDSPContext", !9, i64 0, !9, i64 8}
!54 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!55 = !{!"VPXRangeCoder", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !6, i64 24, !6, i64 28}
!56 = !{!"", !5, i64 0, !5, i64 64}
!57 = !{!"ProbContext", !5, i64 0, !5, i64 36, !5, i64 126, !5, i64 134, !5, i64 155, !5, i64 159, !5, i64 164, !5, i64 174, !5, i64 179, !5, i64 185, !5, i64 189, !5, i64 191, !5, i64 194, !5, i64 197, !5, i64 263}
!58 = !{!"", !57, i64 0, !5, i64 311}
!59 = !{!"p1 _ZTS5VP9mv", !9, i64 0}
!60 = !{!"p1 _ZTS9VP9Filter", !9, i64 0}
!61 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!62 = !{!"VP9Context", !47, i64 0, !48, i64 1296, !49, i64 1304, !51, i64 1312, !29, i64 1360, !30, i64 1368, !52, i64 1376, !53, i64 3744, !54, i64 3760, !55, i64 3784, !6, i64 3816, !6, i64 3820, !5, i64 3824, !5, i64 3864, !9, i64 3912, !6, i64 3920, !5, i64 3924, !5, i64 3925, !5, i64 3926, !5, i64 3927, !5, i64 3928, !5, i64 3929, !6, i64 3932, !6, i64 3936, !6, i64 3940, !6, i64 3944, !6, i64 3948, !6, i64 3952, !6, i64 3956, !6, i64 3960, !6, i64 3964, !5, i64 3968, !56, i64 4096, !5, i64 4224, !58, i64 12380, !14, i64 19032, !14, i64 19040, !14, i64 19048, !5, i64 19056, !14, i64 19072, !14, i64 19080, !14, i64 19088, !14, i64 19096, !14, i64 19104, !14, i64 19112, !14, i64 19120, !59, i64 19128, !5, i64 19136, !60, i64 19160, !6, i64 19168, !5, i64 19172, !5, i64 19184, !61, i64 19192, !6, i64 19200}
!63 = !{!62, !61, i64 19192}
!64 = !{!62, !6, i64 19200}
!65 = !{!62, !29, i64 1360}
!66 = !{!62, !30, i64 1368}
!67 = !{!62, !49, i64 1304}
!68 = !{!62, !5, i64 3}
!69 = !{!62, !5, i64 2}
!70 = !{!62, !5, i64 5}
!71 = !{!62, !5, i64 3925}
!72 = !{!62, !5, i64 3924}
!73 = !{!62, !5, i64 46}
!74 = !{!62, !5, i64 49}
!75 = !{!62, !5, i64 48}
!76 = !{!62, !5, i64 3928}
!77 = !{!62, !6, i64 3948}
!78 = !{!6, !6, i64 0}
!79 = !{!62, !5, i64 1}
!80 = !{!62, !5, i64 3927}
!81 = !{!62, !6, i64 3940}
!82 = !{!62, !5, i64 3926}
!83 = !{!62, !5, i64 31}
!84 = !{!27, !6, i64 664}
!85 = !{!35, !14, i64 40}
!86 = !{!33, !31, i64 0}
!87 = !{!62, !5, i64 4}
!88 = !{!62, !6, i64 3952}
!89 = !{!62, !6, i64 3956}
!90 = !{!35, !31, i64 16}
!91 = !{!"p2 omnipotent char", !25, i64 0}
!92 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!93 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!94 = !{!"AVFrame", !5, i64 0, !5, i64 64, !91, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !92, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !93, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!95 = !{!62, !5, i64 44}
!96 = !{!94, !6, i64 104}
!97 = !{!94, !6, i64 108}
!98 = !{!62, !5, i64 7}
!99 = !{!27, !20, i64 536}
!100 = !{!"AVHWAccel", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!101 = !{!"FFHWAccel", !100, i64 0, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!102 = !{!62, !14, i64 19032}
!103 = !{!62, !6, i64 3964}
!104 = !{!62, !14, i64 19072}
!105 = !{!62, !14, i64 19040}
!106 = !{!62, !14, i64 19048}
!107 = !{!14, !14, i64 0}
!108 = !{!62, !14, i64 19088}
!109 = !{!62, !5, i64 17}
!110 = !{!62, !5, i64 18}
!111 = !{!62, !48, i64 1296}
!112 = !{!"p1 _ZTS10VP9Context", !9, i64 0}
!113 = !{!"p1 _ZTS13VPXRangeCoder", !9, i64 0}
!114 = !{!"p1 _ZTS8VP9Block", !9, i64 0}
!115 = !{!"", !5, i64 0, !5, i64 160, !5, i64 560, !5, i64 608, !5, i64 720, !5, i64 752, !5, i64 792, !5, i64 872, !5, i64 912, !5, i64 944, !5, i64 968, !5, i64 984, !5, i64 1008, !5, i64 1024, !5, i64 1432, !5, i64 1688, !5, i64 8600}
!116 = !{!"", !6, i64 0, !6, i64 4}
!117 = !{!"VP9TileData", !112, i64 0, !113, i64 8, !113, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !5, i64 40, !13, i64 64, !13, i64 72, !114, i64 80, !114, i64 88, !6, i64 96, !115, i64 100, !5, i64 13312, !5, i64 52192, !5, i64 52208, !5, i64 52224, !5, i64 52352, !5, i64 52384, !5, i64 52392, !5, i64 52400, !5, i64 52408, !5, i64 52416, !5, i64 52424, !5, i64 52432, !5, i64 52440, !5, i64 52448, !5, i64 60640, !116, i64 77024, !116, i64 77032, !17, i64 77040, !17, i64 77048, !5, i64 77056, !5, i64 77072, !14, i64 77088, !5, i64 77096, !14, i64 77112, !5, i64 77120, !6, i64 77136, !9, i64 77144, !6, i64 77152}
!118 = !{!62, !6, i64 3820}
!119 = !{!62, !6, i64 3960}
!120 = !{!117, !9, i64 77144}
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!62, !5, i64 19}
!123 = !{!62, !6, i64 268}
!124 = !{!5, !5, i64 0}
!125 = !{i64 0, i64 36, !124, i64 36, i64 90, !124, i64 126, i64 8, !124, i64 134, i64 21, !124, i64 155, i64 4, !124, i64 159, i64 5, !124, i64 164, i64 10, !124, i64 174, i64 5, !124, i64 179, i64 6, !124, i64 185, i64 4, !124, i64 189, i64 2, !124, i64 191, i64 3, !124, i64 194, i64 3, !124, i64 197, i64 66, !124, i64 263, i64 48, !124}
!126 = !{!62, !9, i64 3912}
!127 = !{!117, !114, i64 88}
!128 = !{!62, !6, i64 288}
!129 = !{!62, !6, i64 284}
!130 = !{!117, !113, i64 8}
!131 = !{!55, !6, i64 0}
!132 = !{!55, !6, i64 4}
!133 = !{!55, !6, i64 24}
!134 = !{!55, !14, i64 8}
!135 = !{!55, !14, i64 16}
!136 = !{!62, !6, i64 280}
!137 = !{!62, !60, i64 19160}
!138 = !{!62, !6, i64 276}
!139 = !{!117, !6, i64 96}
!140 = !{!117, !113, i64 16}
!141 = !{!62, !5, i64 30}
!142 = !{!"llvm.loop.isvectorized", i32 1}
!143 = !{!"llvm.loop.unroll.runtime.disable"}
!144 = !{!54, !14, i64 0}
!145 = !{!54, !6, i64 16}
!146 = !{!54, !6, i64 8}
!147 = !{!27, !6, i64 688}
!148 = !{!27, !6, i64 152}
!149 = !{!27, !6, i64 156}
!150 = !{!62, !5, i64 40}
!151 = !{!62, !5, i64 41}
!152 = !{!62, !5, i64 42}
!153 = !{!62, !5, i64 43}
!154 = !{!"short", !5, i64 0}
!155 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !154, i64 6, !5, i64 8, !5, i64 10, !5, i64 18}
!156 = !{!155, !5, i64 0}
!157 = !{!155, !154, i64 6}
!158 = !{!117, !112, i64 0}
!159 = !{!27, !6, i64 136}
!160 = !{!117, !6, i64 77152}
!161 = !{!"p1 _ZTS18CodedBitstreamType", !9, i64 0}
!162 = !{!"CodedBitstreamContext", !9, i64 0, !161, i64 8, !9, i64 16, !24, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !14, i64 72, !13, i64 80}
!163 = !{!162, !9, i64 16}
end_hunk_1
