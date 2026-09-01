Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avformat?download=true
inline.NumInlined: 13
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@match_stream_specifier:bb.a

bb.ar:                                            ; preds = %bb.ai, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread245

bb.as:                                            ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %.0162285, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !44
  %i.cq = icmp eq i8 %i.cp, 58
  br i1 %i.cq, label %.loopexit254, label %.thread245

.loopexit254:                                     ; preds = %bb.e, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.cr = load i8, ptr %.0162285, align 1, !tbaa !44
  %i.cs = icmp eq i8 %i.cr, 105
  %i.ct = select i1 %i.cs, i64 2, i64 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.0162285, i64 %i.ct ; 2 uses
  %i.cv = call i64 @strtol(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.c, i32 noundef 0) #12
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !135 ; 2 uses
  %i.cy = icmp eq ptr %i.cu, %i.cx
  br i1 %i.cy, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %.loopexit254
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !44
  %.not193 = icmp eq i8 %i.cz, 0
  br i1 %.not193, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %.not194 = icmp eq i32 %.0149286, 0
  br i1 %.not194, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !81
  %i.dc = icmp eq i32 %i.db, %i.cw
  %i.dd = zext i1 %i.dc to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %.loopexit254, %bb.at
  %.4157 = phi i32 [ -22, %.loopexit254 ], [ -22, %bb.at ], [ 0, %bb.au ], [ %i.dd, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread245

bb.ax:                                            ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %.0162285, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !44
  %i.dg = icmp eq i8 %i.df, 58
  br i1 %i.dg, label %bb.ay, label %.thread245

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %.not247 = icmp eq i32 %.0149286, 0
  br i1 %.not247, label %bb.bi, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dh = getelementptr inbounds nuw i8, ptr %.0162285, i64 2 ; 4 uses
  %i.di = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.dh, i32 noundef 58) #14 ; 3 uses
  %.not189 = icmp eq ptr %i.di, null              ; 2 uses
  br i1 %.not189, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = tail call noalias ptr @av_strndup(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #12
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.dn = tail call noalias ptr @av_strdup(ptr noundef nonnull %i.dh) #12
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.do = phi ptr [ %i.dm, %bb.ba ], [ %i.dn, %bb.bb ] ; 3 uses
  store ptr %i.do, ptr %i.d, align 8, !tbaa !135
  %.not190 = icmp eq ptr %i.do, null
  br i1 %.not190, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !87
  %i.dr = tail call ptr @av_dict_get(ptr noundef %i.dq, ptr noundef nonnull %i.do, ptr noundef null, i32 noundef 0) #12 ; 2 uses
  %.not191 = icmp eq ptr %i.dr, null
  br i1 %.not191, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not189, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !145
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dt, ptr noundef nonnull dereferenceable(1) %i.du) #14
  %.not192 = icmp eq i32 %i.dv, 0
  br i1 %.not192, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bd, %bb.bf, %bb.bg
  %i.dw = phi i32 [ 0, %bb.bf ], [ 1, %bb.bg ], [ 0, %bb.bd ]
  call void @av_freep(ptr noundef nonnull %i.d) #12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ay, %bb.bh, %bb.bc
  %.5158 = phi i32 [ -12, %bb.bc ], [ %i.dw, %bb.bh ], [ 0, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.thread245

bb.bj:                                            ; preds = %bb.e
  %i.dx = getelementptr inbounds nuw i8, ptr %.0162285, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !44
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.bk, label %.thread245

bb.bk:                                            ; preds = %bb.bj
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !88  ; 8 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !117
  switch i32 %i.eb, label %bb.br [
    i32 1, label %bb.bl
    i32 0, label %bb.bo
    i32 -1, label %bb.bs
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !123
  %.not187 = icmp eq i32 %i.ed, 0
  br i1 %.not187, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 132
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !127
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ei = phi i32 [ 0, %bb.bl ], [ %i.eh, %bb.bm ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !147
  %i.el = icmp eq i32 %i.ek, -1
  br i1 %i.el, label %.thread245, label %bb.bs

bb.bo:                                            ; preds = %bb.bk
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.en = load i32, ptr %i.em, align 8, !tbaa !121
  %.not186 = icmp eq i32 %i.en, 0
  br i1 %.not186, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 76
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !122
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = zext i1 %i.eq to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.es = phi i32 [ 0, %bb.bo ], [ %i.er, %bb.bp ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !147
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %.thread245, label %bb.bs

bb.br:                                            ; preds = %bb.bk
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bk, %bb.bq, %bb.bn, %bb.br
  %.0 = phi i32 [ 1, %bb.br ], [ %i.ei, %bb.bn ], [ %i.es, %bb.bq ], [ 0, %bb.bk ]
  %.not188 = icmp eq i32 %.0149286, 0
  br i1 %.not188, label %.thread245, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !128
  %i.ey = icmp ne i32 %i.ex, 0
  %i.ez = icmp ne i32 %.0, 0
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  %i.fb = zext i1 %i.fa to i32
  br label %.thread245

.thread:                                          ; preds = %bb.p, %bb.o, %.thread237, %.loopexit250
  %.6168 = phi ptr [ %i.bw, %.thread237 ], [ %.3165, %.loopexit250 ], [ %.1163, %bb.o ], [ %.1163, %bb.p ] ; 2 uses
  %.8 = phi i32 [ %.7.ph, %.thread237 ], [ %.5, %.loopexit250 ], [ %spec.select, %bb.o ], [ %spec.select215, %bb.p ] ; 2 uses
  %i.fc = load i8, ptr %.6168, align 1, !tbaa !44 ; 2 uses
  %.not = icmp eq i8 %i.fc, 0
  br i1 %.not, label %.thread245, label %bb.b, !llvm.loop !148

.thread245:                                       ; preds = %.thread, %bb.n, %bb.ah, %bb.q, %bb.e, %bb.a, %bb.as, %bb.ax, %bb.ar, %.thread228, %bb.bj, %bb.bn, %bb.bq, %bb.bt, %bb.bs, %bb.c, %bb.d, %bb.bi, %bb.aw
  %.8161 = phi i32 [ -22, %bb.as ], [ -22, %bb.ax ], [ -22, %.thread228 ], [ -22, %bb.ar ], [ %.4157, %bb.aw ], [ %.5158, %bb.bi ], [ %.0149286, %bb.c ], [ %i.fb, %bb.bt ], [ %.0149286, %bb.d ], [ 0, %bb.bq ], [ 0, %bb.bn ], [ 0, %bb.bs ], [ -22, %bb.bj ], [ 1, %bb.a ], [ -22, %bb.ah ], [ -22, %bb.n ], [ %.8, %.thread ], [ -22, %bb.q ], [ -22, %bb.e ]
  ret i32 %.8161
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i64 @av_guess_sample_aspect_ratio(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.AVRational, align 8         ; 10 uses
  %4 = alloca %struct.AVRational, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  store i64 %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not15 = icmp eq ptr %i.d, null
  %i.e = lshr i64 %i.b, 32                        ; 2 uses
  br i1 %.not15, label %5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load i64, ptr %i.f, align 8
  br label %5

.critedge:                                        ; preds = %bb.a
  store i64 4294967296, ptr %3, align 8
  br label %5

5:                                                ; preds = %bb.b, %.critedge, %bb.c
  %6 = phi i64 [ %i.e, %bb.c ], [ 1, %.critedge ], [ %i.e, %bb.b ]
  %7 = phi i64 [ %i.b, %bb.c ], [ 0, %.critedge ], [ %i.b, %bb.b ]
  %storemerge16 = phi i64 [ %i.g, %bb.c ], [ 4294967296, %.critedge ], [ 4294967296, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %.not17 = icmp eq ptr %2, null
  br i1 %.not17, label %bb.d, label %.critedge.a

.critedge.a:                                      ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 124
  %storemerge18.else.val = load i64, ptr %8, align 4
  br label %bb.d

bb.d:                                             ; preds = %5, %.critedge.a
  %storemerge18 = phi i64 [ %storemerge16, %5 ], [ %storemerge18.else.val, %.critedge.a ] ; 3 uses
  store i64 %storemerge18, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %sext = shl i64 %7, 32
  %i.i = ashr exact i64 %sext, 32
  %sext23 = shl nuw i64 %6, 32
  %i.j = ashr exact i64 %sext23, 32
  %i.k = call i32 @av_reduce(ptr noundef nonnull %3, ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef %i.j, i64 noundef 2147483647) #12 ; 0 uses
  %i.l = load i32, ptr %3, align 8, !tbaa !149
  %i.m = icmp slt i32 %i.l, 1
  %i.n = load i32, ptr %i.h, align 4
  %i.o = icmp slt i32 %i.n, 1
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 4294967296, ptr %3, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %sext24 = shl i64 %storemerge18, 32
  %i.q = ashr exact i64 %sext24, 32
  %i.r = ashr i64 %storemerge18, 32
  %i.s = call i32 @av_reduce(ptr noundef nonnull %4, ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef %i.r, i64 noundef 2147483647) #12 ; 0 uses
  %i.t = load i32, ptr %4, align 8, !tbaa !149
  %i.u = icmp slt i32 %i.t, 1
  %i.v = load i32, ptr %i.p, align 4
  %i.w = icmp slt i32 %i.v, 1
  %or.cond5 = select i1 %i.u, i1 true, i1 %i.w
  %.val.pre = load i64, ptr %4, align 8
  %.val = select i1 %or.cond5, i64 4294967296, i64 %.val.pre
  %i.x = load i32, ptr %3, align 8, !tbaa !149
  %.not19 = icmp eq i32 %i.x, 0
  %.val20 = load i64, ptr %3, align 8
  %.sroa.0.0 = select i1 %.not19, i64 %.val, i64 %.val20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i64 %.sroa.0.0
}

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @av_guess_frame_rate(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 204
  %.sroa.037.0.copyload = load i32, ptr %i.a, align 4, !tbaa !84 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !84 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.017.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %i.e = trunc i64 %.sroa.017.0.copyload to i32   ; 3 uses
  %i.f = lshr i64 %.sroa.017.0.copyload, 32
  %i.g = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.h = icmp sgt i32 %i.e, 0
  %i.i = icmp sgt i32 %i.g, 0
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  %i.j = icmp sgt i32 %.sroa.037.0.copyload, 0
  %or.cond5 = select i1 %or.cond, i1 %i.j, i1 false
  %i.k = icmp sgt i32 %.sroa.9.0.copyload, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.k, i1 false
  br i1 %or.cond8, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = uitofp nneg i32 %i.e to double
  %i.m = uitofp nneg i32 %i.g to double
  %i.n = fdiv nsz double %i.l, %i.m
  %i.o = fcmp nsz olt double %i.n, 7.000000e+01
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = uitofp nneg i32 %.sroa.037.0.copyload to double
  %i.q = uitofp nneg i32 %.sroa.9.0.copyload to double
  %i.r = fdiv nsz double %i.p, %i.q
  %i.s = fcmp nsz ogt double %i.r, 2.100000e+02   ; 2 uses
  %spec.select = select i1 %i.s, i32 %i.e, i32 %.sroa.037.0.copyload
  %spec.select68 = select i1 %i.s, i32 %i.g, i32 %.sroa.9.0.copyload
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.037.0 = phi i32 [ %.sroa.037.0.copyload, %bb.a ], [ %spec.select, %bb.c ], [ %.sroa.037.0.copyload, %bb.b ] ; 8 uses
  %.sroa.9.0 = phi i32 [ %.sroa.9.0.copyload, %bb.a ], [ %spec.select68, %bb.c ], [ %.sroa.9.0.copyload, %bb.b ] ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !151
  %i.v = and i32 %i.u, 16
  %.not67 = icmp eq i32 %i.v, 0
  br i1 %.not67, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !84 ; 3 uses
  %.sroa.012.0.copyload = load i32, ptr %i.y, align 4, !tbaa !84 ; 3 uses
  %i.z = icmp sgt i32 %.sroa.012.0.copyload, 0
  %i.aa = icmp sgt i32 %.sroa.6.0.copyload, 0
  %or.cond11 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond11, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i32 %.sroa.037.0, 0
  br i1 %i.ab, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = uitofp nneg i32 %.sroa.012.0.copyload to double
  %i.ad = uitofp nneg i32 %.sroa.6.0.copyload to double
  %i.ae = sitofp nsz i32 %.sroa.037.0 to double
  %i.af = sitofp nsz i32 %.sroa.9.0 to double
  %i.ag = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1
  %i.ai = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.af, i64 1
  %i.ak = fdiv nsz <2 x double> %i.ah, %i.aj      ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 1
  %i.am = fmul nsz double %i.al, f0x3FE6666666666666
  %i.an = extractelement <2 x double> %i.ak, i64 0
  %i.ao = fcmp nsz olt double %i.an, %i.am
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.sroa.037.0.insert.ext41 = zext i32 %.sroa.037.0 to i64
  %.sroa.9.0.insert.ext53 = zext i32 %.sroa.9.0 to i64
  %.sroa.9.0.insert.shift54 = shl nuw i64 %.sroa.9.0.insert.ext53, 32
  %.sroa.037.0.insert.insert43 = or disjoint i64 %.sroa.9.0.insert.shift54, %.sroa.037.0.insert.ext41
  %i.ap = tail call i64 @av_div_q(i64 %.sroa.017.0.copyload, i64 %.sroa.037.0.insert.insert43) #15 ; 2 uses
  %.sroa.0.0.extract.trunc.i72 = trunc i64 %i.ap to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.ap, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.aq = sitofp nsz i32 %.sroa.0.0.extract.trunc.i72 to double
  %i.ar = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.as = fdiv nsz double %i.aq, %i.ar
  %i.at = fsub nsz double 1.000000e+00, %i.as
  %i.au = tail call nsz double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp nsz ogt double %i.au, 1.000000e-01
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.e, %bb.d
  %.sroa.037.2 = phi i32 [ %.sroa.037.0, %bb.d ], [ %.sroa.037.0, %bb.e ], [ %.sroa.012.0.copyload, %bb.j ], [ %.sroa.037.0, %bb.i ], [ %.sroa.037.0, %bb.h ], [ %.sroa.037.0, %bb.f ]
  %.sroa.9.2 = phi i32 [ %.sroa.9.0, %bb.d ], [ %.sroa.9.0, %bb.e ], [ %.sroa.6.0.copyload, %bb.j ], [ %.sroa.9.0, %bb.i ], [ %.sroa.9.0, %bb.h ], [ %.sroa.9.0, %bb.f ]
  %.sroa.9.0.insert.ext63 = zext i32 %.sroa.9.2 to i64
  %.sroa.9.0.insert.shift64 = shl nuw i64 %.sroa.9.0.insert.ext63, 32
  %.sroa.037.0.insert.ext49 = zext i32 %.sroa.037.2 to i64
  %.sroa.037.0.insert.insert51 = or disjoint i64 %.sroa.9.0.insert.shift64, %.sroa.037.0.insert.ext49
  ret i64 %.sroa.037.0.insert.insert51
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_div_q(i64, i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nounwind uwtable
define void @avpriv_set_pts_info(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.AVRational, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.b = zext i32 %2 to i64
  %i.c = zext i32 %3 to i64
  %i.d = call i32 @av_reduce(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i64 noundef %i.b, i64 noundef %i.c, i64 noundef 2147483647) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 8, !tbaa !149    ; 2 uses
  %.not16 = icmp eq i32 %i.e, %2
  br i1 %.not16, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !136
  %i.h = udiv i32 %2, %i.e
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 48, ptr noundef nonnull @.str.22, i32 noundef %i.g, i32 noundef %i.h) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !136
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.23, i32 noundef %i.j) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.k = load i32, ptr %4, align 8, !tbaa !149    ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  %i.m = load i32, ptr %i.a, align 4              ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  %or.cond = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !136
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.p) #12
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %4, align 8                ; 2 uses
  store i64 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !155  ; 2 uses
  %.not17 = icmp eq ptr %i.t, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 92
  store i64 %i.r, ptr %i.u, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %1, ptr %i.v, align 4, !tbaa !86
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

declare ptr @avcodec_find_decoder(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_copy_whiteblacklists(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
end_hunk_0
