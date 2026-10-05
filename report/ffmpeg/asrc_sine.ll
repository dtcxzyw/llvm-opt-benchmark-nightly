Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/asrc_sine?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@init:bb.a
  br i1 %i.bd, label %bb.c, label %bb.f, !llvm.loop !47

bb.f:                                             ; preds = %bb.e
  %i.be = icmp samesign ugt i32 %.07178.i, 3
  br i1 %i.be, label %.preheader75.i, label %.preheader74.i, !llvm.loop !48

.preheader74.i:                                   ; preds = %bb.f, %.preheader74.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i, %.preheader74.i ], [ 0, %bb.f ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv83.i ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !29
  %i.bh = sext i16 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, 4
  %i.bj = lshr i32 %i.bi, 3
  %i.bk = trunc i32 %i.bj to i16
  store i16 %i.bk, ptr %i.bf, align 2, !tbaa !29
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next84.i, 8193
  br i1 %exitcond.not.i, label %.preheader73.i, label %.preheader74.i, !llvm.loop !49

.preheader73.i:                                   ; preds = %.preheader74.i, %.preheader73.i
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %.preheader73.i ], [ 0, %.preheader74.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv86.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !29
  %i.bn = sub nuw nsw i64 16384, %indvars.iv86.i
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bn
  store i16 %i.bm, ptr %i.bo, align 2, !tbaa !29
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next87.i, 8192
  br i1 %exitcond89.not.i, label %vector.body, label %.preheader73.i, !llvm.loop !50

vector.body:                                      ; preds = %.preheader73.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader73.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bp, align 2, !tbaa !29
  %i.bq = sub <8 x i16> zeroinitializer, %wide.load
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32768
  store <8 x i16> %i.bq, ptr %i.br, align 2, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, 16384
  br i1 %i.bs, label %make_sin_table.exit, label %vector.body, !llvm.loop !51

make_sin_table.exit:                              ; preds = %vector.body
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !55 ; 2 uses
  %i.bv = fcmp nsz une double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %make_sin_table.exit
  %i.bw = load i32, ptr %i.h, align 8, !tbaa !27  ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !31
  %i.by = udiv i32 %i.bw, 25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.cb = load double, ptr %i.f, align 8, !tbaa !52
  %i.cc = fmul nsz double %i.bu, %i.cb
  tail call fastcc void @sampling_init(ptr noundef nonnull %i.ca, double noundef %i.cc, i32 noundef %i.bw)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %make_sin_table.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !56
  %i.cg = tail call i32 @av_expr_parse(ptr noundef nonnull %i.cd, ptr noundef %i.cf, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) #9
  %. = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %.0 = phi i32 [ %., %bb.h ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void @av_expr_free(ptr noundef %i.d) #9
  store ptr null, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  store i32 %i.e, ptr %i.a, align 4, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !57
  %i.g = tail call i32 @ff_set_sample_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.sample_fmts) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @ff_set_common_channel_layouts_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.chlayouts) #9 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @ff_set_common_samplerates_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ %i.g, %bb.a ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  %i.i = sitofp nsz i64 %i.h to double
  store double %i.i, ptr %i.a, align 16, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = sitofp nsz i64 %i.l to double            ; 2 uses
  store double %i.m, ptr %i.j, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.p to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.p, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.q = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.r = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.s = fdiv nsz double %i.q, %i.r               ; 2 uses
  %i.t = fmul nsz double %i.s, %i.m
  store double %i.t, ptr %i.n, align 16, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.s, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = call nsz double @av_expr_eval(ptr noundef %i.w, ptr noundef nonnull %i.a, ptr noundef %i.f) #9
  %i.y = call i64 @llvm.lrint.i64.f64(double %i.x)
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %i.aa = call i32 @ff_outlink_frame_wanted(ptr noundef %i.d) #9
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp slt i32 %i.z, 1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.24, i32 noundef %i.z) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1024, %bb.c ], [ %i.z, %bb.b ]  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %.not60 = icmp eq i64 %i.ad, 0
  br i1 %.not60, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = zext nneg i32 %.0 to i64
  %i.af = load i64, ptr %i.k, align 8, !tbaa !65  ; 2 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %i.ah = call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.ae)
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ff_avfilter_link_set_in_status(ptr noundef nonnull %i.d, i32 noundef -541478725, i64 noundef %i.af) #9
  br label %bb.n

bb.g:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %.0, %bb.d ]  ; 4 uses
  %i.aj = call ptr @ff_get_audio_buffer(ptr noundef nonnull %i.d, i32 noundef %.1) #9 ; 4 uses
  %.not62 = icmp eq ptr %i.aj, null
  br i1 %.not62, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = icmp sgt i32 %.1, 0
  br i1 %i.al, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 116 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 100 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.promoted.a = load i32, ptr %i.an, align 8, !tbaa !67
  %.promoted68.a = load i32, ptr %i.aq, align 8, !tbaa !43
  %wide.trip.count = zext nneg i32 %.1 to i64
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %.pre72 = load i32, ptr %i.ao, align 4, !tbaa !44
  %.pre73 = load i32, ptr %i.ap, align 4, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %sampling_advance.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sampling_advance.exit ] ; 2 uses
  %i.ba = phi i32 [ %.promoted68.a, %.lr.ph ], [ %i.bn, %sampling_advance.exit ]
  %i.bb = phi i32 [ %.promoted.a, %.lr.ph ], [ %i.bo, %sampling_advance.exit ] ; 2 uses
  %i.bc = lshr i32 %i.bb, 17
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !29 ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !29
  %i.bh = add i32 %.pre72, %i.bb                  ; 2 uses
  %i.bi = add nsw i32 %i.ba, %.pre73              ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %bb.j, label %sampling_advance.exit63

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %i.ar, align 8, !tbaa !46
  %i.bl = sub nsw i32 %i.bi, %i.bk
  %i.bm = add i32 %i.bh, 1
  br label %sampling_advance.exit63

sampling_advance.exit63:                          ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %i.bi, %bb.i ], [ %i.bl, %bb.j ] ; 2 uses
  %i.bo = phi i32 [ %i.bh, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %1 = load i32, ptr %i.as, align 4, !tbaa !68    ; 2 uses
  %2 = load i32, ptr %i.at, align 8, !tbaa !32
  %i.bp = icmp ult i32 %1, %2
  br i1 %i.bp, label %bb.k, label %sampling_advance.exit

bb.k:                                             ; preds = %sampling_advance.exit63
  %i.bq = load i32, ptr %i.au, align 4, !tbaa !69 ; 2 uses
  %i.br = lshr i32 %i.bq, 17
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !29
  %i.bv = shl i16 %i.bu, 1
  %i.bw = add i16 %i.bv, %i.bf
  store i16 %i.bw, ptr %i.bg, align 2, !tbaa !29
  %i.bx = load i32, ptr %i.av, align 8, !tbaa !44
  %i.by = add i32 %i.bx, %i.bq                    ; 2 uses
  store i32 %i.by, ptr %i.au, align 4, !tbaa !67
  %i.bz = load i32, ptr %i.aw, align 8, !tbaa !45
  %i.ca = load i32, ptr %i.ax, align 4, !tbaa !43
  %i.cb = add nsw i32 %i.ca, %i.bz                ; 3 uses
  store i32 %i.cb, ptr %i.ax, align 4, !tbaa !43
  %i.cc = icmp sgt i32 %i.cb, -1
  br i1 %i.cc, label %bb.l, label %sampling_advance.exit

bb.l:                                             ; preds = %bb.k
  %i.cd = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.ce = sub nsw i32 %i.cb, %i.cd
  store i32 %i.ce, ptr %i.ax, align 4, !tbaa !43
  %i.cf = add i32 %i.by, 1
  store i32 %i.cf, ptr %i.au, align 4, !tbaa !67
  br label %sampling_advance.exit

sampling_advance.exit:                            ; preds = %bb.l, %bb.k, %sampling_advance.exit63
  %i.cg = add i32 %1, 1                           ; 2 uses
  %3 = load i32, ptr %i.az, align 8, !tbaa !31
  %i.ch = icmp eq i32 %i.cg, %3
  %spec.store.select = select i1 %i.ch, i32 0, i32 %i.cg
  store i32 %spec.store.select, ptr %i.as, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !58

._crit_edge:                                      ; preds = %sampling_advance.exit
  store i32 %i.bo, ptr %i.an, align 8, !tbaa !67
  store i32 %i.bn, ptr %i.aq, align 8, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.h
  %i.ci = load i64, ptr %i.k, align 8, !tbaa !65  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !74
  %i.ck = sext i32 %.1 to i64
  %i.cl = add nsw i64 %i.ci, %i.ck
  store i64 %i.cl, ptr %i.k, align 8, !tbaa !65
  %i.cm = call i32 @ff_filter_frame(ptr noundef nonnull %i.d, ptr noundef nonnull %i.aj) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.a, %bb.m, %bb.f
  %.052 = phi i32 [ %i.cm, %bb.m ], [ -1497649742, %bb.a ], [ 0, %bb.f ], [ -12, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.052
}

; Function Attrs: cold mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_props(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = sext i32 %i.g to i64
  %i.i = tail call i64 @av_rescale(i64 noundef %i.e, i64 noundef %i.h, i64 noundef 1000000) #10
  store i64 %i.i, ptr %i.d, align 8, !tbaa !42
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @av_default_item_name(ptr noundef) #5

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @sampling_init(ptr nofree noundef writeonly captures(none) initializes((4, 20)) %0, double noundef %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = sdiv i32 2147483647, %2                  ; 2 uses
  %i.b = sitofp nsz i32 %2 to double              ; 2 uses
  %i.c = frem nsz double %1, %i.b                 ; 2 uses
  %i.d = frem nsz double %i.c, 1.000000e+00
  %i.e = tail call i64 @av_d2q(double noundef %i.d, i32 noundef %i.a) #10
  %.sroa.3.0.extract.shift = lshr i64 %i.e, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.f = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %.sroa.3.0.extract.trunc)
  %i.g = tail call nsz double @ldexp(double noundef %i.c, i32 noundef 32) #10
  %i.h = fdiv nsz double %i.g, %i.b               ; 2 uses
  %i.i = fptoui double %i.h to i32                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !44
  %i.k = mul nsw i32 %i.f, %2                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.k, ptr %i.l, align 4, !tbaa !46
  %i.m = uitofp nsz i32 %i.i to double
  %i.n = fsub nsz double %i.h, %i.m
  %i.o = sitofp nsz i32 %i.k to double
  %i.p = fmul nsz double %i.n, %i.o
  %i.q = tail call nsz double @llvm.round.f64(double %i.p)
  %i.r = fptosi double %i.q to i32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !45
  %.not = icmp sgt i32 %i.k, %i.r
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = add i32 %i.i, 1
  store i32 %i.t, ptr %i.j, align 4, !tbaa !44
  store i32 0, ptr %i.s, align 4, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = xor i32 %i.k, -1
  %i.v = sdiv i32 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.v, ptr %i.w, align 4, !tbaa !43
  ret void
}

declare i32 @av_expr_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_d2q(double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #8

declare void @av_expr_free(ptr noundef) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #5

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ff_set_common_samplerates_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @av_expr_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #8

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

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
!20 = !{!"double", !5, i64 0}
!21 = !{!"p1 _ZTS6AVExpr", !9, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p1 short", !9, i64 0}
!24 = !{!"SamplingContext", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!25 = !{!"SineContext", !10, i64 0, !20, i64 8, !20, i64 16, !12, i64 24, !21, i64 32, !6, i64 40, !22, i64 48, !23, i64 56, !22, i64 64, !24, i64 72, !24, i64 92, !6, i64 112, !6, i64 116, !6, i64 120}
!26 = !{!25, !23, i64 56}
!27 = !{!25, !6, i64 40}
!28 = !{!"short", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!25, !6, i64 112}
!32 = !{!25, !6, i64 120}
!33 = !{!25, !21, i64 32}
!34 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!35 = !{!"AVRational", !6, i64 0, !6, i64 4}
!36 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!37 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!38 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!39 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!40 = !{!"AVFilterFormatsConfig", !38, i64 0, !38, i64 8, !39, i64 16, !38, i64 24, !38, i64 32, !38, i64 40}
!41 = !{!"AVFilterLink", !34, i64 0, !13, i64 8, !34, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !35, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !36, i64 72, !35, i64 96, !37, i64 104, !6, i64 112, !6, i64 116, !40, i64 120, !40, i64 168}
!42 = !{!25, !22, i64 48}
!43 = !{!24, !6, i64 8}
!44 = !{!24, !6, i64 4}
!45 = !{!24, !6, i64 12}
!46 = !{!24, !6, i64 16}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30, !53, !54}
!52 = !{!25, !20, i64 8}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!25, !20, i64 16}
!56 = !{!25, !12, i64 24}
!57 = !{!6, !6, i64 0}
!58 = distinct !{!58, !30}
!59 = !{!18, !15, i64 56}
!60 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"FilterLink", !41, i64 0, !16, i64 216, !22, i64 224, !22, i64 232, !6, i64 240, !6, i64 244, !22, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !35, i64 280, !17, i64 288}
!63 = !{!62, !22, i64 248}
!64 = !{!20, !20, i64 0}
!65 = !{!25, !22, i64 64}
!66 = !{!12, !12, i64 0}
!67 = !{!24, !6, i64 0}
!68 = !{!25, !6, i64 116}
!69 = !{!25, !6, i64 92}
!70 = !{!"p2 omnipotent char", !14, i64 0}
!71 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!72 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!73 = !{!"AVFrame", !5, i64 0, !5, i64 64, !70, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !35, i64 124, !22, i64 136, !22, i64 144, !35, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !71, i64 248, !6, i64 256, !37, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !22, i64 304, !72, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !9, i64 376, !36, i64 384, !22, i64 408, !6, i64 416}
!74 = !{!73, !22, i64 136}
!75 = !{!41, !34, i64 0}
end_hunk_0
