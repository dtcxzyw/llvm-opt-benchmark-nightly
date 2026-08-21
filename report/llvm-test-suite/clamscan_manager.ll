inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0_@scanmanager:bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.bv = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.24) #19
  %.not208 = icmp eq i32 %i.bv, 0
  br i1 %.not208, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.24) #19
  %i.bx = call i64 @strtol(ptr noundef nonnull captures(none) %i.bw, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.by = trunc i64 %i.bx to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sink = phi i32 [ %i.by, %bb.ac ], [ 500, %bb.ab ]
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sink, ptr %i.bz, align 4, !tbaa !19
  %i.ca = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.25) #19
  %.not209 = icmp eq i32 %i.ca, 0
  br i1 %.not209, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.25) #19
  %i.cc = call i64 @strtol(ptr noundef nonnull captures(none) %i.cb, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.cd = trunc i64 %i.cc to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %storemerge = phi i32 [ %i.cd, %bb.ae ], [ 8, %bb.ad ]
  store i32 %storemerge, ptr %1, align 8, !tbaa !20
  %i.ce = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.26) #19
  %.not210 = icmp eq i32 %i.ce, 0
  br i1 %.not210, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.26) #19
  %i.cg = call i64 @strtol(ptr noundef nonnull captures(none) %i.cf, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.ch = trunc i64 %i.cg to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sink263 = phi i32 [ %i.ch, %bb.ag ], [ 64, %bb.af ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink263, ptr %i.ci, align 8, !tbaa !21
  %i.cj = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.27) #19
  %.not211 = icmp eq i32 %i.cj, 0
  br i1 %.not211, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.27) #19
  %i.cl = call i64 @strtol(ptr noundef nonnull captures(none) %i.ck, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.cm = trunc i64 %i.cl to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sink264 = phi i32 [ %i.cm, %bb.ai ], [ 250, %bb.ah ]
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sink264, ptr %i.cn, align 4, !tbaa !22
  %i.co = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.28) #19
  %.not212 = icmp eq i32 %i.co, 0
  br i1 %.not212, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cp = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.29) #19
  %.not213 = icmp eq i32 %i.cp, 0
  %i.cq = zext i1 %.not213 to i32
  %spec.select255 = or disjoint i32 %.2158, %i.cq
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.3159 = phi i32 [ %.2158, %bb.aj ], [ %spec.select255, %bb.ak ] ; 2 uses
  %i.cr = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.30) #19
  %.not214 = icmp eq i32 %i.cr, 0
  %i.cs = or i32 %.3159, 64
  %spec.select237 = select i1 %.not214, i32 %.3159, i32 %i.cs ; 2 uses
  %i.ct = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.31) #19
  %.not215 = icmp eq i32 %i.ct, 0
  %i.cu = or i32 %spec.select237, 8
  %.5161 = select i1 %.not215, i32 %spec.select237, i32 %i.cu ; 2 uses
  %i.cv = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.32) #19
  %.not216 = icmp eq i32 %i.cv, 0
  %i.cw = or i32 %.5161, 256
  %.6162 = select i1 %.not216, i32 %.5161, i32 %i.cw
  %i.cx = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.33) #19
  %.not217 = icmp eq i32 %i.cx, 0
  %i.cy = and i32 %.6162, -24629
  %masksel = select i1 %.not217, i32 32, i32 0
  %i.cz = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.34) #19
  %.not218 = icmp eq i32 %i.cz, 0
  %masksel250 = select i1 %.not218, i32 8192, i32 0
  %i.da = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.35) #19
  %.not219 = icmp eq i32 %i.da, 0
  %masksel251 = select i1 %.not219, i32 4, i32 0
  %i.db = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.36) #19
  %.not220 = icmp eq i32 %i.db, 0
  %masksel252 = select i1 %.not220, i32 16384, i32 0
  %i.dc = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.37) #19
  %.not221 = icmp eq i32 %i.dc, 0
  %masksel253 = select i1 %.not221, i32 16, i32 0
  %.7 = or disjoint i32 %masksel250, %masksel
  %.8 = or disjoint i32 %.7, %i.cy
  %.9 = or disjoint i32 %.8, %masksel251
  %.10 = or disjoint i32 %.9, %masksel252
  %.11 = or disjoint i32 %.10, %masksel253        ; 2 uses
  %i.dd = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.38) #19
  %.not222 = icmp eq i32 %i.dd, 0
  br i1 %.not222, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = and i32 %.11, -3
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.df = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.39) #19
  %.not223 = icmp eq i32 %i.df, 0
  %spec.select238.v = select i1 %.not223, i32 2, i32 130
  %spec.select238 = or i32 %spec.select238.v, %.11
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.12 = phi i32 [ %i.de, %bb.am ], [ %spec.select238, %bb.an ]
  %i.dg = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.40) #19
  %.not224 = icmp eq i32 %i.dg, 0
  %i.dh = and i32 %.12, -513
  %masksel254 = select i1 %.not224, i32 512, i32 0
  %.13 = or disjoint i32 %masksel254, %i.dh       ; 4 uses
  store i64 0, ptr @procdev, align 8, !tbaa !23
  %i.di = call i32 @stat(ptr noundef nonnull @.str.41, ptr noundef nonnull %2) #19
  %i.dj = icmp eq i32 %i.di, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = icmp ne i64 %i.dl, 0
  %or.cond = select i1 %i.dj, i1 true, i1 %i.dm
  br i1 %or.cond, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dn = load i64, ptr %2, align 8, !tbaa !24
  store i64 %i.dn, ptr @procdev, align 8, !tbaa !23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !27 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %char0 = load i8, ptr %i.dp, align 1
  switch i8 %char0, label %.preheader [
    i8 0, label %bb.as
    i8 45, label %.tail
  ]

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dr = call ptr @getcwd(ptr noundef nonnull %i.b, i64 noundef 1024) #19
  %.not234 = icmp eq ptr %i.dr, null
  br i1 %.not234, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ds = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.42) #19 ; 0 uses
  br label %.thread246

bb.au:                                            ; preds = %bb.as
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.du = call i32 @treewalk(ptr noundef nonnull %i.b, ptr noundef %i.dt, ptr noundef %.0151, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 32768) %.13, i32 noundef 1) #19
  br label %.thread246

.tail:                                            ; preds = %bb.ar
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.ar, %.tail
  %i.dy = call ptr @cli_strtok(ptr noundef nonnull %i.dp, i32 noundef 0, ptr noundef nonnull @.str.44) #19 ; 2 uses
  %.not226259 = icmp eq ptr %i.dy, null
  br i1 %.not226259, label %.thread246, label %.lr.ph261

bb.av:                                            ; preds = %.tail
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ea = call fastcc i32 @scanstdin(ptr noundef %i.dz, ptr noundef %1, i32 noundef %.13)
  br label %.thread246

.lr.ph261:                                        ; preds = %.preheader, %.thread242
  %i.eb = phi ptr [ %i.fe, %.thread242 ], [ %i.dy, %.preheader ] ; 16 uses
  %.0163260 = phi i32 [ %i.fc, %.thread242 ], [ 0, %.preheader ]
  %i.ec = call i32 @fileinfo(ptr noundef nonnull %i.eb, i16 noundef signext 2) #19 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph261
  %i.ee = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.45, ptr noundef nonnull %i.eb) #19 ; 0 uses
  call void @perror(ptr noundef nonnull %i.eb) #24
  br label %.thread242

bb.ax:                                            ; preds = %.lr.ph261
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eb) #22
  %i.eg = trunc i64 %i.ef to i32
  %.0164257 = add i32 %i.eg, -1                   ; 2 uses
  %i.eh = icmp sgt i32 %.0164257, 0
  br i1 %i.eh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ax, %bb.ay
  %.0164258 = phi i32 [ %.0164, %bb.ay ], [ %.0164257, %bb.ax ] ; 3 uses
  %3 = zext nneg i32 %.0164258 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 %3 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !14
  %i.ek = icmp eq i8 %i.ej, 47
  br i1 %i.ek, label %bb.ay, label %._crit_edge

bb.ay:                                            ; preds = %.lr.ph
  store i8 0, ptr %i.ei, align 1, !tbaa !14
  %.0164 = add nsw i32 %.0164258, -1
  %i.el = icmp samesign ugt i32 %.0164258, 1
  br i1 %i.el, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.ay, %bb.ax
  br i1 %.not192240, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %._crit_edge
  %i.em = load i8, ptr %i.eb, align 1, !tbaa !14
  switch i8 %i.em, label %bb.ba [
    i8 47, label %bb.bd
    i8 92, label %bb.bd
  ]

bb.ba:                                            ; preds = %bb.az
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !14
  %.not229 = icmp eq i8 %i.eo, 58
  br i1 %.not229, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ep = call ptr @getcwd(ptr noundef nonnull %i.b, i64 noundef 1024) #19
  %.not230 = icmp eq ptr %i.ep, null
  br i1 %.not230, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eq = call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #25 ; 3 uses
  %i.er = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eq, i64 noundef 512, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.b, ptr noundef nonnull %i.eb) #19 ; 0 uses
  %i.es = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.47, ptr noundef nonnull %i.eq) #19 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge, %bb.ba, %bb.az, %bb.az, %bb.bc
  %.0150 = phi ptr [ %i.eq, %bb.bc ], [ %i.eb, %bb.az ], [ %i.eb, %bb.az ], [ %i.eb, %bb.ba ], [ %i.eb, %._crit_edge ] ; 3 uses
  %i.et = trunc i32 %i.ec to i16
  %trunc = and i16 %i.et, -4096
  switch i16 %trunc, label %bb.bg [
    i16 -32768, label %bb.be
    i16 16384, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ev = call i32 @scanfile(ptr noundef nonnull %.0150, ptr noundef %i.eu, ptr noundef %.0151, ptr noundef %0, ptr noundef nonnull %1, i32 noundef %.13)
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ex = call i32 @treewalk(ptr noundef nonnull %.0150, ptr noundef %i.ew, ptr noundef %.0151, ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 32768) %.13, i32 noundef 1) #19
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.ey = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.48, ptr noundef nonnull %i.eb) #19 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.1167 = phi i32 [ 52, %bb.bg ], [ %i.ev, %bb.be ], [ %i.ex, %bb.bf ] ; 5 uses
  br i1 %.not192240, label %.thread242, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ez = load i8, ptr %i.eb, align 1, !tbaa !14
  switch i8 %i.ez, label %bb.bj [
    i8 47, label %.thread242
    i8 92, label %.thread242
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14
  %.not233 = icmp eq i8 %i.fb, 58
  br i1 %.not233, label %.thread242, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %.0150) #19
  br label %.thread242

.thread242:                                       ; preds = %bb.bh, %bb.bj, %bb.bk, %bb.bi, %bb.bi, %bb.aw
  %.3169 = phi i32 [ 56, %bb.aw ], [ %.1167, %bb.bi ], [ %.1167, %bb.bi ], [ %.1167, %bb.bk ], [ %.1167, %bb.bj ], [ %.1167, %bb.bh ]
  call void @free(ptr noundef nonnull %i.eb) #19
  %i.fc = add nuw nsw i32 %.0163260, 1            ; 2 uses
  %i.fd = load ptr, ptr %i.do, align 8, !tbaa !27
  %i.fe = call ptr @cli_strtok(ptr noundef %i.fd, i32 noundef %i.fc, ptr noundef nonnull @.str.44) #19 ; 2 uses
  %.not226 = icmp eq ptr %i.fe, null
  br i1 %.not226, label %.thread246, label %.lr.ph261, !llvm.loop !33

bb.bl:                                            ; preds = %bb.bb
  %i.ff = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.42) #19 ; 0 uses
  br label %bb.bm

.thread246:                                       ; preds = %.thread242, %.preheader, %bb.av, %bb.at, %bb.au
  %.5171 = phi i32 [ %i.du, %bb.au ], [ 57, %bb.at ], [ %i.ea, %bb.av ], [ 0, %.preheader ], [ %.3169, %.thread242 ]
  %.5171.fr = freeze i32 %.5171                   ; 2 uses
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @cl_free(ptr noundef %i.fg) #19
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 12), align 4, !tbaa !34
  %.not235 = icmp eq i32 %i.fh, 0
  %i.fi = icmp slt i32 %.5171.fr, 50
  %spec.select249 = select i1 %i.fi, i32 0, i32 %.5171.fr
  %.6172 = select i1 %.not235, i32 %spec.select249, i32 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.r, %.thread246, %bb.v, %bb.t, %bb.p
  %.6 = phi i32 [ 50, %bb.p ], [ 50, %bb.v ], [ %.6172, %.thread246 ], [ 57, %bb.bl ], [ 50, %bb.t ], [ 50, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @opt_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @getpwnam(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare i32 @logg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare void @cli_ac_setdepth(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @opt_arg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cl_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #2

declare ptr @freshdbdir() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cl_build(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @scanstdin(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 32768) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [8192 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.74) #19 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %spec.store.select = select i1 %i.d, ptr @.str.75, ptr %i.c ; 2 uses
  %i.e = tail call i32 @checkaccess(ptr noundef nonnull %spec.store.select, ptr noundef nonnull @.str.9, i32 noundef 2) #19
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.76) #19 ; 0 uses
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @cli_gentemp(ptr noundef nonnull %spec.store.select) #19 ; 9 uses
  %i.h = tail call noalias ptr @fopen(ptr noundef %i.g, ptr noundef nonnull @.str.77) ; 3 uses
  %.not24 = icmp eq ptr %i.h, null
  br i1 %.not24, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.78, ptr noundef %i.g) #19 ; 0 uses
  tail call void @free(ptr noundef %i.g) #19
  br label %bb.o

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.j = load ptr, ptr @stdin, align 8, !tbaa !36
  %i.k = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 8192, ptr noundef %i.j) ; 2 uses
  %i.l = and i64 %i.k, 4294967295
  %.not25 = icmp eq i64 %i.l, 0
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.preheader
  %sext = shl i64 %i.k, 32
end_hunk_0
