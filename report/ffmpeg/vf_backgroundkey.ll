Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_backgroundkey?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@filter_frame:bb.a
  store ptr %i.l, ptr %i.f, align 8, !tbaa !33
  %.not34 = icmp eq ptr %i.l, null
  br i1 %.not34, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @av_frame_copy(ptr noundef nonnull %i.l, ptr noundef nonnull %1) #7 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41
  %. = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.t)
  %i.u = tail call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef %i.p, ptr noundef %1, ptr noundef null, i32 noundef %.) #7 ; 2 uses
  %.not35 = icmp eq i32 %i.u, 0
  br i1 %.not35, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.v = load i32, ptr %i.s, align 8, !tbaa !41   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi43 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x i64>, ptr %i.z, align 8, !tbaa !43
  %wide.load44 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !43
  %i.ab = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.ac = add <2 x i64> %wide.load44, %vec.phi43  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.02636.ph = phi i64 [ 0, %.lr.ph ], [ %i.ae, %middle.block ]
  br label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.ae, %middle.block ], [ %i.ap, %scalar.ph ]
  %i.af = sitofp nsz i64 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.026.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.af, %._crit_edge.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !45
  %i.ai = sitofp nsz i64 %i.ah to float
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !61
  %i.al = fmul nsz float %i.ak, %i.ai
  %i.am = fcmp nsz olt float %i.al, %.026.lcssa
  br i1 %i.am, label %bb.e, label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.02636 = phi i64 [ %i.ap, %scalar.ph ], [ %.02636.ph, %scalar.ph.preheader ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !43
  %i.ap = add nsw i64 %i.ao, %.02636              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !56

bb.e:                                             ; preds = %._crit_edge
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ar = tail call i32 @av_frame_copy(ptr noundef %i.aq, ptr noundef nonnull %1) #7 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.aw = tail call i32 @ff_filter_frame(ptr noundef %i.av, ptr noundef nonnull %1) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.025 = phi i32 [ %i.u, %bb.d ], [ %i.ar, %bb.e ], [ %i.m, %bb.c ], [ -12, %bb.b ]
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.027 = phi i32 [ %.025, %bb.g ], [ %i.aw, %bb.f ]
  ret i32 %.027
}

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_frame_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_frame_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @config_output(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #7 ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 7 uses
  %i.j = tail call i32 @ff_filter_get_nb_threads(ptr noundef %i.d) #8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.j, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = icmp slt i32 %i.m, 9
  %i.o = select i1 %i.n, ptr @do_backgroundkey_slice, ptr @do_backgroundkey16_slice
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.o, ptr %i.p, align 8, !tbaa !40
  %notmask = shl nsw i32 -1, %i.m
  %i.q = xor i32 %notmask, -1                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.q, ptr %i.r, align 4, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !69
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.u, ptr %i.v, align 4, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.x = load i8, ptr %i.w, align 2, !tbaa !70
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 %i.y, ptr %i.z, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !72 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.af, %i.ac
  %i.ah = zext nneg i32 %i.q to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aj = ashr i32 %i.ab, %i.u
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 1
  %i.am = ashr i32 %i.ae, %i.y
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.al, %i.an
  %i.ap = add i64 %i.ao, %i.ag
  %i.aq = mul i64 %i.ap, %i.ah
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !45
  %i.ar = sext i32 %i.j to i64
  %i.as = tail call noalias ptr @av_calloc(i64 noundef %i.ar, i64 noundef 8) #7 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.as, ptr %i.at, align 8, !tbaa !42
  %.not = icmp eq ptr %i.as, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_backgroundkey_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !51
  %i.r = fmul nsz float %i.q, 7.650000e+02
  %i.s = fptosi float %i.r to i32                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load float, ptr %i.t, align 8, !tbaa !52
  %.fr114 = freeze float %i.u                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !49   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !50   ; 2 uses
  %i.z = icmp slt i32 %i.j, %i.o
  br i1 %i.z, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.aj = fcmp nsz ogt float %.fr114, 0.000000e+00
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  br i1 %i.aj, label %.lr.ph110.split.a, label %.lr.ph110.split

.lr.ph110.split.a:                                ; preds = %.lr.ph110, %._crit_edge.split.us.us
  %i.al = phi i32 [ %4, %._crit_edge.split.us.us ], [ %i.ak, %.lr.ph110 ] ; 2 uses
  %.096108.a = phi i32 [ %5, %._crit_edge.split.us.us ], [ %i.j, %.lr.ph110 ] ; 5 uses
  %.097107.a = phi i64 [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ 0, %.lr.ph110 ] ; 2 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !53
  %i.an = load i32, ptr %i.aa, align 8, !tbaa !54
  %i.ao = mul nsw i32 %i.an, %.096108.a
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.as = load i32, ptr %i.ac, align 4, !tbaa !54
  %i.at = ashr i32 %.096108.a, %i.y               ; 4 uses
  %i.au = mul nsw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !54
  %i.az = mul nsw i32 %i.ay, %i.at
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !33 ; 6 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !54
  %i.bg = mul nsw i32 %i.bf, %.096108.a
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !54
  %i.bn = mul nsw i32 %i.bm, %i.at
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !54
  %i.bu = mul nsw i32 %i.bt, %i.at
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.br, i64 %i.bv
  %i.bx = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.by = load i32, ptr %i.ah, align 4, !tbaa !54
  %i.bz = mul nsw i32 %i.by, %.096108.a
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca
  %i.cc = icmp sgt i32 %i.al, 0
  br i1 %i.cc, label %.lr.ph.split.us, label %._crit_edge.split.us.us

.lr.ph.split.us:                                  ; preds = %.lr.ph110.split.a, %.lr.ph.split.us
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.lr.ph.split.us ], [ 0, %.lr.ph110.split.a ] ; 5 uses
  %.1105.us = phi i64 [ %i.dh, %.lr.ph.split.us ], [ %.097107.a, %.lr.ph110.split.a ]
  %i.cd = trunc nuw nsw i64 %indvars.iv118 to i32
  %i.ce = lshr i32 %i.cd, %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv118
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !75
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv118
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !75
  %i.ck = zext i8 %i.cj to i32
  %i.cl = sub nsw i32 %i.ch, %i.ck
  %i.cm = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.cn = zext nneg i32 %i.ce to i64              ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !75
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cn
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !75
  %i.ct = zext i8 %i.cs to i32
  %i.cu = sub nsw i32 %i.cq, %i.ct
  %i.cv = tail call i32 @llvm.abs.i32(i32 %i.cu, i1 true)
  %i.cw = add nuw nsw i32 %i.cv, %i.cm
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cn
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !75
  %i.cz = zext i8 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cn
  %i.db = load i8, ptr %i.da, align 1, !tbaa !75
  %i.dc = zext i8 %i.db to i32
  %i.dd = sub nsw i32 %i.cz, %i.dc
  %i.de = tail call i32 @llvm.abs.i32(i32 %i.dd, i1 true)
  %i.df = add nuw nsw i32 %i.cw, %i.de            ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = add nsw i64 %.1105.us, %i.dg            ; 2 uses
  %i.di = sub nsw i32 %i.s, %i.df
  %i.dj = sitofp nsz i32 %i.di to float
  %i.dk = fdiv nsz float %i.dj, %.fr114           ; 2 uses
  %i.dl = fcmp nsz ogt float %i.dk, 0.000000e+00
  %i.dm = select nsz i1 %i.dl, float %i.dk, float 0.000000e+00 ; 2 uses
  %i.dn = fcmp nsz ogt float %i.dm, 2.550000e+02
  %..i.us = select nsz i1 %i.dn, float 2.550000e+02, float %i.dm
  %i.do = fsub nsz float 2.550000e+02, %..i.us
  %i.dp = fptosi float %i.do to i32
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv118
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !75
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.ds = load i32, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next119, %i.dt
  br i1 %i.du, label %.lr.ph.split.us, label %._crit_edge.split.us.us, !llvm.loop !73

._crit_edge.split.us.us:                          ; preds = %.lr.ph.split.us, %.lr.ph110.split.a
  %4 = phi i32 [ %i.al, %.lr.ph110.split.a ], [ %i.ds, %.lr.ph.split.us ]
  %.1.lcssa.us = phi i64 [ %.097107.a, %.lr.ph110.split.a ], [ %i.dh, %.lr.ph.split.us ] ; 2 uses
  %5 = add nsw i32 %.096108.a, 1                  ; 2 uses
  %exitcond121.not = icmp eq i32 %5, %i.o
  br i1 %exitcond121.not, label %._crit_edge111, label %.lr.ph110.split.a, !llvm.loop !74

._crit_edge111:                                   ; preds = %._crit_edge, %._crit_edge.split.us.us, %bb.a
  %.097.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ %.1.lcssa, %._crit_edge ]
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds [8 x i8], ptr %7, i64 %i.f
  store i64 %.097.lcssa, ptr %8, align 8, !tbaa !43
  ret i32 0

.lr.ph110.split:                                  ; preds = %.lr.ph110, %._crit_edge
  %9 = phi i32 [ %53, %._crit_edge ], [ %i.ak, %.lr.ph110 ] ; 2 uses
  %.096108 = phi i32 [ %i.dv, %._crit_edge ], [ %i.j, %.lr.ph110 ] ; 5 uses
  %.097107 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %.lr.ph110 ] ; 2 uses
  %10 = load ptr, ptr %1, align 8, !tbaa !53
  %11 = load i32, ptr %i.aa, align 8, !tbaa !54
  %12 = mul nsw i32 %11, %.096108
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = load ptr, ptr %i.ab, align 8, !tbaa !53
  %16 = load i32, ptr %i.ac, align 4, !tbaa !54
  %17 = ashr i32 %.096108, %i.y                   ; 4 uses
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %15, i64 %19
  %21 = load ptr, ptr %i.ad, align 8, !tbaa !53
  %22 = load i32, ptr %i.ae, align 8, !tbaa !54
  %23 = mul nsw i32 %22, %17
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = load ptr, ptr %i.af, align 8, !tbaa !33   ; 6 uses
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 64
  %29 = load i32, ptr %28, align 8, !tbaa !54
  %30 = mul nsw i32 %29, %.096108
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %27, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = getelementptr inbounds nuw i8, ptr %26, i64 68
  %36 = load i32, ptr %35, align 4, !tbaa !54
  %37 = mul nsw i32 %36, %17
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %34, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 72
  %43 = load i32, ptr %42, align 8, !tbaa !54
  %44 = mul nsw i32 %43, %17
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %41, i64 %45
  %47 = load ptr, ptr %i.ag, align 8, !tbaa !53
  %48 = load i32, ptr %i.ah, align 4, !tbaa !54
  %49 = mul nsw i32 %48, %.096108
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %47, i64 %50
  %52 = icmp sgt i32 %9, 0
  br i1 %52, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph110.split
  %53 = phi i32 [ %9, %.lr.ph110.split ], [ %i.fe, %.lr.ph.split ]
  %.1.lcssa = phi i64 [ %.097107, %.lr.ph110.split ], [ %i.fa, %.lr.ph.split ] ; 2 uses
  %i.dv = add nsw i32 %.096108, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.dv, %i.o
  br i1 %exitcond.not, label %._crit_edge111, label %.lr.ph110.split, !llvm.loop !74

.lr.ph.split:                                     ; preds = %.lr.ph110.split, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph110.split ] ; 5 uses
  %.1105 = phi i64 [ %i.fa, %.lr.ph.split ], [ %.097107, %.lr.ph110.split ]
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  %i.dx = lshr i32 %i.dw, %i.w
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !75
  %i.ea = zext i8 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %32, i64 %indvars.iv
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !75
  %i.ed = zext i8 %i.ec to i32
  %i.ee = sub nsw i32 %i.ea, %i.ed
  %i.ef = tail call i32 @llvm.abs.i32(i32 %i.ee, i1 true)
  %i.eg = zext nneg i32 %i.dx to i64              ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %20, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !75
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %39, i64 %i.eg
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !75
  %i.em = zext i8 %i.el to i32
  %i.en = sub nsw i32 %i.ej, %i.em
  %i.eo = tail call i32 @llvm.abs.i32(i32 %i.en, i1 true)
  %i.ep = add nuw nsw i32 %i.eo, %i.ef
  %i.eq = getelementptr inbounds nuw i8, ptr %25, i64 %i.eg
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !75
  %i.es = zext i8 %i.er to i32
  %i.et = getelementptr inbounds nuw i8, ptr %46, i64 %i.eg
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !75
  %i.ev = zext i8 %i.eu to i32
  %i.ew = sub nsw i32 %i.es, %i.ev
  %i.ex = tail call i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %i.ey = add nuw nsw i32 %i.ep, %i.ex            ; 2 uses
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = add nsw i64 %.1105, %i.ez               ; 2 uses
  %i.fb = icmp sgt i32 %i.ey, %i.s
  %i.fc = sext i1 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %51, i64 %indvars.iv
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = load i32, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next, %i.ff
  br i1 %i.fg, label %.lr.ph.split, label %._crit_edge, !llvm.loop !73
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_backgroundkey16_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h                      ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h                      ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !51
  %i.x = mul nsw i32 %i.u, 3
  %i.y = sitofp nsz i32 %i.x to float
  %i.z = fmul nsz float %i.w, %i.y
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %i.ad = icmp slt i32 %i.j, %i.o
  br i1 %i.ad, label %.lr.ph117, label %._crit_edge118

.lr.ph117:                                        ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i32, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33 ; 6 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 68
  %i.at = load i32, ptr %i.as, align 4, !tbaa !54 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !53 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = sitofp nsz i32 %i.u to float            ; 3 uses
  br i1 %i.bc, label %.lr.ph117.split.us, label %._crit_edge118

.lr.ph117.split.us:                               ; preds = %.lr.ph117
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !54
  %i.bk = fcmp nsz ogt float %i.ac, 0.000000e+00
  %sext149 = shl i64 %i.i, 32
  %i.bl = ashr exact i64 %sext149, 32             ; 2 uses
  %i.bm = sext i32 %i.bj to i64                   ; 2 uses
  %i.bn = sext i32 %i.bh to i64                   ; 2 uses
  %i.bo = sext i32 %i.bf to i64                   ; 2 uses
  %sext150 = shl i64 %i.n, 32
  %wide.trip.count143 = ashr exact i64 %sext150, 32 ; 2 uses
  %wide.trip.count138 = zext nneg i32 %i.bb to i64 ; 2 uses
  br i1 %i.bk, label %.lr.ph.us.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph117.split.us
  %i.bp = trunc i32 %i.u to i16
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph117.split.us, %._crit_edge.split.us.us.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %._crit_edge.split.us.us.us ], [ %i.bl, %.lr.ph117.split.us ] ; 5 uses
  %.0104114.us.us = phi i64 [ %i.do, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph117.split.us ]
  %i.bq = mul nsw i64 %indvars.iv140, %i.bm
  %i.br = getelementptr inbounds i8, ptr %i.ae, i64 %i.bq
  %i.bs = trunc nsw i64 %indvars.iv140 to i32
  %i.bt = ashr i32 %i.bs, %i.s                    ; 4 uses
  %i.bu = mul nsw i32 %i.ai, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.ag, i64 %i.bv
  %i.bx = mul nsw i32 %i.am, %i.bt
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.ak, i64 %i.by
  %i.ca = mul nsw i64 %indvars.iv140, %i.bn
  %i.cb = getelementptr inbounds i8, ptr %i.ap, i64 %i.ca
  %i.cc = mul nsw i32 %i.at, %i.bt
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.ar, i64 %i.cd
  %i.cf = mul nsw i32 %i.ax, %i.bt
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.av, i64 %i.cg
  %i.ci = mul nsw i64 %indvars.iv140, %i.bo
  %i.cj = getelementptr inbounds i8, ptr %i.az, i64 %i.ci
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %bb.b ], [ 0, %.lr.ph.us.us ] ; 5 uses
  %.1112.us.us.us = phi i64 [ %i.do, %bb.b ], [ %.0104114.us.us, %.lr.ph.us.us ]
  %i.ck = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.cl = lshr i32 %i.ck, %i.q
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv135
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !79
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %indvars.iv135
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !79
  %i.cr = zext i16 %i.cq to i32
  %i.cs = sub nsw i32 %i.co, %i.cr
  %i.ct = tail call i32 @llvm.abs.i32(i32 %i.cs, i1 true)
  %i.cu = zext nneg i32 %i.cl to i64              ; 4 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !79
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cu
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !79
  %i.da = zext i16 %i.cz to i32
  %i.db = sub nsw i32 %i.cx, %i.da
  %i.dc = tail call i32 @llvm.abs.i32(i32 %i.db, i1 true)
  %i.dd = add nuw nsw i32 %i.dc, %i.ct
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cu
  %i.df = load i16, ptr %i.de, align 2, !tbaa !79
  %i.dg = zext i16 %i.df to i32
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.cu
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !79
  %i.dj = zext i16 %i.di to i32
  %i.dk = sub nsw i32 %i.dg, %i.dj
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = add nuw nsw i32 %i.dd, %i.dl            ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = add nsw i64 %.1112.us.us.us, %i.dn      ; 3 uses
  %i.dp = sub nsw i32 %i.aa, %i.dm
  %i.dq = sitofp nsz i32 %i.dp to float
  %i.dr = fdiv nsz float %i.dq, %i.ac             ; 2 uses
  %i.ds = fcmp nsz ogt float %i.dr, 0.000000e+00
  %i.dt = select nsz i1 %i.ds, float %i.dr, float 0.000000e+00 ; 2 uses
  %i.du = fcmp nsz ogt float %i.dt, %i.bd
  %..i.us.us.us = select nsz i1 %i.du, float %i.bd, float %i.dt
  %i.dv = fsub nsz float %i.bd, %..i.us.us.us
  %i.dw = fptosi float %i.dv to i32
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv135
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !79
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %._crit_edge.split.us.us.us, label %bb.b, !llvm.loop !76

._crit_edge.split.us.us.us:                       ; preds = %bb.b
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge118, label %.lr.ph.us.us, !llvm.loop !77

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.us123
  %indvars.iv130 = phi i64 [ %i.bl, %.lr.ph.us.preheader ], [ %indvars.iv.next131, %._crit_edge.split.us123 ] ; 5 uses
  %.0104114.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.fx, %._crit_edge.split.us123 ]
  %i.dz = mul nsw i64 %indvars.iv130, %i.bm
  %i.ea = getelementptr inbounds i8, ptr %i.ae, i64 %i.dz
  %i.eb = trunc nsw i64 %indvars.iv130 to i32
  %i.ec = ashr i32 %i.eb, %i.s                    ; 4 uses
  %i.ed = mul nsw i32 %i.ai, %i.ec
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ag, i64 %i.ee
  %i.eg = mul nsw i32 %i.am, %i.ec
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ak, i64 %i.eh
  %i.ej = mul nsw i64 %indvars.iv130, %i.bn
  %i.ek = getelementptr inbounds i8, ptr %i.ap, i64 %i.ej
  %i.el = mul nsw i32 %i.at, %i.ec
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ar, i64 %i.em
  %i.eo = mul nsw i32 %i.ax, %i.ec
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.av, i64 %i.ep
  %i.er = mul nsw i64 %indvars.iv130, %i.bo
  %i.es = getelementptr inbounds i8, ptr %i.az, i64 %i.er
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph.us ] ; 5 uses
  %.1112.us122 = phi i64 [ %i.fx, %bb.c ], [ %.0104114.us, %.lr.ph.us ]
  %i.et = trunc nuw nsw i64 %indvars.iv to i32
  %i.eu = lshr i32 %i.et, %i.q
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !79
  %i.ex = zext i16 %i.ew to i32
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %indvars.iv
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !79
  %i.fa = zext i16 %i.ez to i32
  %i.fb = sub nsw i32 %i.ex, %i.fa
  %i.fc = tail call i32 @llvm.abs.i32(i32 %i.fb, i1 true)
  %i.fd = zext nneg i32 %i.eu to i64              ; 4 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !79
  %i.fg = zext i16 %i.ff to i32
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.fd
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !79
  %i.fj = zext i16 %i.fi to i32
  %i.fk = sub nsw i32 %i.fg, %i.fj
  %i.fl = tail call i32 @llvm.abs.i32(i32 %i.fk, i1 true)
  %i.fm = add nuw nsw i32 %i.fl, %i.fc
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.fd
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !79
  %i.fp = zext i16 %i.fo to i32
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.fd
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !79
  %i.fs = zext i16 %i.fr to i32
  %i.ft = sub nsw i32 %i.fp, %i.fs
  %i.fu = tail call i32 @llvm.abs.i32(i32 %i.ft, i1 true)
  %i.fv = add nuw nsw i32 %i.fm, %i.fu            ; 2 uses
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = add nsw i64 %.1112.us122, %i.fw         ; 3 uses
  %i.fy = icmp sgt i32 %i.fv, %i.aa
  %i.fz = select i1 %i.fy, i16 %i.bp, i16 0
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %indvars.iv
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count138
  br i1 %exitcond.not, label %._crit_edge.split.us123, label %bb.c, !llvm.loop !76

._crit_edge.split.us123:                          ; preds = %bb.c
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count143
  br i1 %exitcond134.not, label %._crit_edge118, label %.lr.ph.us, !llvm.loop !77

._crit_edge118:                                   ; preds = %._crit_edge.split.us123, %._crit_edge.split.us.us.us, %.lr.ph117, %bb.a
  %.0104.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph117 ], [ %i.do, %._crit_edge.split.us.us.us ], [ %i.fx, %._crit_edge.split.us123 ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.f
  store i64 %.0104.lcssa, ptr %i.gd, align 8, !tbaa !43
  ret i32 0
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @av_default_item_name(ptr noundef) #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!21 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!24 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!25 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!26 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!27 = !{!"AVFilterFormatsConfig", !25, i64 0, !25, i64 8, !26, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!28 = !{!"AVFilterLink", !21, i64 0, !13, i64 8, !21, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !23, i64 72, !22, i64 96, !24, i64 104, !6, i64 112, !6, i64 116, !27, i64 120, !27, i64 168}
!29 = !{!"float", !5, i64 0}
!30 = !{!"long", !5, i64 0}
!31 = !{!"p1 long", !9, i64 0}
!32 = !{!"BackgroundkeyContext", !10, i64 0, !29, i64 8, !29, i64 12, !29, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !30, i64 40, !31, i64 48, !20, i64 56, !9, i64 64}
!33 = !{!32, !20, i64 56}
!34 = !{!"p2 omnipotent char", !14, i64 0}
!35 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!36 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!37 = !{!"AVFrame", !5, i64 0, !5, i64 64, !34, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !22, i64 124, !30, i64 136, !30, i64 144, !22, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !35, i64 248, !6, i64 256, !24, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !30, i64 304, !36, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !30, i64 344, !30, i64 352, !30, i64 360, !30, i64 368, !9, i64 376, !23, i64 384, !30, i64 408, !6, i64 416}
!38 = !{!37, !6, i64 104}
!39 = !{!37, !6, i64 108}
!40 = !{!32, !9, i64 64}
!41 = !{!32, !6, i64 24}
!42 = !{!32, !31, i64 48}
!43 = !{!30, !30, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!32, !30, i64 40}
!46 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!32, !6, i64 20}
!49 = !{!32, !6, i64 28}
!50 = !{!32, !6, i64 32}
!51 = !{!32, !29, i64 12}
!52 = !{!32, !29, i64 16}
!53 = !{!12, !12, i64 0}
!54 = !{!6, !6, i64 0}
!55 = distinct !{!55, !44, !59, !60}
!56 = distinct !{!56, !44, !60, !59}
!57 = !{!20, !20, i64 0}
!58 = !{!28, !21, i64 16}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!32, !29, i64 8}
!62 = !{!18, !15, i64 56}
!63 = !{!28, !6, i64 36}
!64 = !{!28, !21, i64 0}
!65 = !{!18, !15, i64 32}
!66 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!67 = !{!66, !6, i64 16}
!68 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !30, i64 16, !5, i64 24, !12, i64 104}
!69 = !{!68, !5, i64 9}
!70 = !{!68, !5, i64 10}
!71 = !{!28, !6, i64 40}
!72 = !{!28, !6, i64 44}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = !{!5, !5, i64 0}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = !{!"short", !5, i64 0}
!79 = !{!78, !78, i64 0}
end_hunk_0
