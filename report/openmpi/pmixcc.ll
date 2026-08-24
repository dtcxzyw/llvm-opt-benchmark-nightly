Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmixcc?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@data_callback:bb.a
  %i.eu = getelementptr inbounds [160 x i8], ptr %i.er, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  tail call fastcc void @filter_flags(ptr noundef nonnull %i.ev)
  tail call void @PMIx_Argv_free(ptr noundef %i.ec) #16
  br label %bb.bg

bb.af:                                            ; preds = %bb.ad
  %i.ew = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.82) #18
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ey = tail call ptr @PMIx_Argv_split(ptr noundef %3, i32 noundef 32) #16 ; 2 uses
  %i.ez = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.fa = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [160 x i8], ptr %i.ez, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 104 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !39
  %i.ff = tail call i32 @PMIx_Argv_count(ptr noundef %i.fe) #16
  %i.fg = tail call i32 @pmix_argv_insert(ptr noundef nonnull %i.fd, i32 noundef %i.ff, ptr noundef %i.ey) #16 ; 0 uses
  tail call void @PMIx_Argv_free(ptr noundef %i.ey) #16
  br label %bb.bg

bb.ah:                                            ; preds = %bb.af
  %i.fh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(12) @.str.83) #18
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fj = tail call ptr @PMIx_Argv_split(ptr noundef %3, i32 noundef 32) #16 ; 2 uses
  %i.fk = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.fl = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [160 x i8], ptr %i.fk, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 112 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !40
  %i.fq = tail call i32 @PMIx_Argv_count(ptr noundef %i.fp) #16
  %i.fr = tail call i32 @pmix_argv_insert(ptr noundef nonnull %i.fo, i32 noundef %i.fq, ptr noundef %i.fj) #16 ; 0 uses
  tail call void @PMIx_Argv_free(ptr noundef %i.fj) #16
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ah
  %i.fs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(13) @.str.84) #18
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.not74 = icmp eq ptr %3, null
  br i1 %.not74, label %bb.bg, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fu = tail call noalias ptr @strdup(ptr noundef nonnull %3) #16
  %i.fv = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.fw = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [160 x i8], ptr %i.fv, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 120
  store ptr %i.fu, ptr %i.fz, align 8, !tbaa !47
  br label %bb.bg

bb.am:                                            ; preds = %bb.aj
  %i.ga = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(16) @.str.85) #18
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.not73 = icmp eq ptr %3, null
  br i1 %.not73, label %bb.bg, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gc = tail call noalias ptr @strdup(ptr noundef nonnull %3) #16
  %i.gd = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.ge = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [160 x i8], ptr %i.gd, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 128
  store ptr %i.gc, ptr %i.gh, align 8, !tbaa !48
  br label %bb.bg

bb.ap:                                            ; preds = %bb.am
  %i.gi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.86) #18
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %.not72 = icmp eq ptr %3, null
  br i1 %.not72, label %bb.bg, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gk = tail call noalias ptr @strdup(ptr noundef nonnull %3) #16
  %i.gl = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.gm = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [160 x i8], ptr %i.gl, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 136
  store ptr %i.gk, ptr %i.gp, align 8, !tbaa !32
  br label %bb.bg

bb.as:                                            ; preds = %bb.ap
  %i.gq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.87) #18
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.not71 = icmp eq ptr %3, null
  br i1 %.not71, label %bb.bg, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gs = tail call noalias ptr @strdup(ptr noundef nonnull %3) #16
  %i.gt = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.gu = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [160 x i8], ptr %i.gt, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store ptr %i.gs, ptr %i.gx, align 8, !tbaa !29
  br label %bb.bg

bb.av:                                            ; preds = %bb.as
  %i.gy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(13) @.str.88) #18
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %.not70 = icmp eq ptr %3, null
  br i1 %.not70, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ha = tail call noalias ptr @strdup(ptr noundef nonnull %3) #16
  %i.hb = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.hc = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [160 x i8], ptr %i.hb, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  store ptr %i.ha, ptr %i.hf, align 8, !tbaa !30
  br label %bb.bg

bb.ay:                                            ; preds = %bb.av
  %i.hg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(19) @.str.89) #18
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %.not69 = icmp eq ptr %3, null
  br i1 %.not69, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hi = tail call noalias ptr @strdup(ptr noundef nonnull %3) #16
  %i.hj = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.hk = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [160 x i8], ptr %i.hj, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  store ptr %i.hi, ptr %i.hn, align 8, !tbaa !31
  br label %bb.bg

bb.bb:                                            ; preds = %bb.ay
  %i.ho = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(11) @.str.90) #18
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %.not68 = icmp eq ptr %3, null
  br i1 %.not68, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hq = tail call ptr @pmix_pinstall_dirs_expand(ptr noundef nonnull %3) #16
  %i.hr = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.hs = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [160 x i8], ptr %i.hr, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 144
  store ptr %i.hq, ptr %i.hv, align 8, !tbaa !49
  br label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.hw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.91) #18
  %i.hx = icmp eq i32 %i.hw, 0
  %i.hy = icmp ne ptr %3, null
  %or.cond = and i1 %i.hy, %i.hx
  br i1 %or.cond, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hz = tail call ptr @pmix_pinstall_dirs_expand(ptr noundef nonnull %3) #16
  %i.ia = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.ib = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [160 x i8], ptr %i.ia, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 152
  store ptr %i.hz, ptr %i.ie, align 8, !tbaa !35
  br label %bb.bg

bb.bg:                                            ; preds = %bb.h, %bb.g, %bb.n, %bb.m, %expand_flags.exit, %bb.aa, %bb.ae, %bb.ai, %bb.ao, %bb.an, %bb.au, %bb.at, %bb.ba, %bb.az, %bb.be, %bb.bf, %bb.bc, %bb.bd, %bb.aw, %bb.ax, %bb.aq, %bb.ar, %bb.ak, %bb.al, %bb.ag, %bb.ac, %expand_flags.exit85, %bb.p, %bb.q, %bb.j, %bb.k, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @options_data_expand(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @parse_options_idx, align 4, !tbaa !9 ; 2 uses
  %i.b = add nsw i32 %i.a, 1                      ; 3 uses
  store i32 %i.b, ptr @parse_options_idx, align 4, !tbaa !9
  %i.c = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.d = add nsw i32 %i.a, 2
  %i.e = sext i32 %i.d to i64
  %i.f = mul nsw i64 %i.e, 160
  %i.g = tail call ptr @realloc(ptr noundef %i.c, i64 noundef %i.f) #22 ; 2 uses
  store ptr %i.g, ptr @options_data, align 8, !tbaa !20
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds [160 x i8], ptr %i.g, i64 %i.h ; 11 uses
  %i.j = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !22
  store ptr null, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false)
  %i.l = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.l, ptr %i.m, align 8, !tbaa !36
  store ptr null, ptr %i.l, align 8, !tbaa !16
  %i.n = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %i.n, ptr %i.o, align 8, !tbaa !46
  store ptr null, ptr %i.n, align 8, !tbaa !16
  %i.p = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr %i.p, ptr %i.q, align 8, !tbaa !45
  store ptr null, ptr %i.p, align 8, !tbaa !16
  %i.r = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store ptr %i.r, ptr %i.s, align 8, !tbaa !37
  store ptr null, ptr %i.r, align 8, !tbaa !16
  %i.t = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr %i.t, ptr %i.u, align 8, !tbaa !38
  store ptr null, ptr %i.t, align 8, !tbaa !16
  %i.v = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.v, ptr %i.w, align 8, !tbaa !39
  store ptr null, ptr %i.v, align 8, !tbaa !16
  %i.x = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr %i.x, ptr %i.y, align 8, !tbaa !40
  store ptr null, ptr %i.x, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %strcmpload = load i8, ptr %0, align 1
  %.not5 = icmp eq i8 %strcmpload, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call ptr @PMIx_Argv_split(ptr noundef nonnull %0, i32 noundef 59) #16 ; 2 uses
  %i.ab = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.ac = load i32, ptr @parse_options_idx, align 4, !tbaa !9
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [160 x i8], ptr %i.ab, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = tail call i32 @PMIx_Argv_count(ptr noundef %i.af) #16
  %i.ah = tail call i32 @pmix_argv_insert(ptr noundef nonnull %i.ae, i32 noundef %i.ag, ptr noundef %i.aa) #16 ; 0 uses
  tail call void @PMIx_Argv_free(ptr noundef %i.aa) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef nonnull %i.j) #16
  store ptr null, ptr %i.i, align 8, !tbaa !22
  store i32 %i.b, ptr @default_data_idx, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_flags(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.not16 = icmp eq ptr %i.a, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.a ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = tail call ptr @pmix_pinstall_dirs_expand(ptr noundef nonnull %i.b) #16 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not15 = icmp eq ptr %i.d, %i.e
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef %i.e) #16
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @filter_flags(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = tail call i32 @PMIx_Argv_count(ptr noundef %i.b) #16 ; 3 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !9
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %i.e = phi i32 [ %i.n, %.loopexit ], [ %i.c, %bb.a ]
  %.01218 = phi i32 [ %spec.select, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = zext nneg i32 %.01218 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %i.j = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(15) @.str.93) #18
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(10) @.str.94) #18
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(13) @.str.95) #18
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.m = call i32 @pmix_argv_delete(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %.01218, i32 noundef 1) #16 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.o = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  %spec.select = add nuw nsw i32 %.01218, %i.o    ; 2 uses
  %i.p = icmp slt i32 %spec.select, %i.n
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare ptr @pmix_pinstall_dirs_expand(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p2 omnipotent char", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 omnipotent char", !13, i64 0}
!18 = !{!19, !17, i64 112}
!19 = !{!"pmix_pinstall_dirs_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS14options_data_t", !13, i64 0}
!22 = !{!23, !11, i64 0}
!23 = !{!"options_data_t", !11, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25, !28}
!28 = !{!"llvm.loop.unswitch.partial.disable"}
!29 = !{!23, !17, i64 24}
!30 = !{!23, !17, i64 40}
!31 = !{!23, !17, i64 48}
!32 = !{!23, !17, i64 136}
!33 = !{!23, !17, i64 8}
!34 = !{!7, !7, i64 0}
!35 = !{!23, !17, i64 152}
!36 = !{!23, !11, i64 64}
!37 = !{!23, !11, i64 88}
!38 = !{!23, !11, i64 96}
!39 = !{!23, !11, i64 104}
!40 = !{!23, !11, i64 112}
!41 = !{!23, !17, i64 16}
!42 = !{!23, !17, i64 32}
!43 = distinct !{!43, !25}
!44 = !{!23, !17, i64 56}
!45 = !{!23, !11, i64 80}
!46 = !{!23, !11, i64 72}
!47 = !{!23, !17, i64 120}
!48 = !{!23, !17, i64 128}
!49 = !{!23, !17, i64 144}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
end_hunk_0
