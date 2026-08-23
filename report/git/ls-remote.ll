Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ls-remote?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cmd_ls_remote:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 800
  store ptr @.str.16, ptr %i.cu, align 16, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 808
  store ptr @.str.17, ptr %i.cv, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 816
  store i32 0, ptr %i.cw, align 16, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 820
  store i32 0, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 824
  store ptr @parse_opt_string_list, ptr %i.cy, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 832
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cz, i8 0, i64 32, i1 false)
  store i32 9, ptr %i.da, align 16, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 868
  store i32 0, ptr %i.db, align 4, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 872
  store ptr @.str.18, ptr %i.dc, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 880
  store ptr %i.d, ptr %i.dd, align 16, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 888
  store i64 4, ptr %i.de, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 896
  store ptr null, ptr %i.df, align 16, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 904
  store ptr @.str.19, ptr %i.dg, align 8, !tbaa !24
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 912
  store i32 514, ptr %i.dh, align 16, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 916
  store i32 0, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 920
  store ptr null, ptr %i.dj, align 8, !tbaa !26
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 928
  store i64 2, ptr %i.dk, align 16, !tbaa !27
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 936
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.dm, align 16, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 964
  store i32 0, ptr %i.dn, align 4, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 968
  store ptr @.str.20, ptr %i.do, align 8, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 976
  store ptr %i.e, ptr %i.dp, align 16, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 984
  store i64 4, ptr %i.dq, align 8, !tbaa !22
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 992
  store ptr null, ptr %i.dr, align 16, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 1000
  store ptr @.str.21, ptr %i.ds, align 8, !tbaa !24
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 1008
  store i32 2, ptr %i.dt, align 16, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 1012
  store i32 0, ptr %i.du, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 1016
  store ptr null, ptr %i.dv, align 8, !tbaa !26
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 1024
  store i64 1, ptr %i.dw, align 16, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 1032
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 1056
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  store i32 13, ptr %i.dy, align 16, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 1060
  store i32 111, ptr %i.dz, align 4, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 1064
  store ptr @.str.22, ptr %i.ea, align 8, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 1072
  store ptr %6, ptr %i.eb, align 16, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 1080
  store i64 0, ptr %i.ec, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 1088
  store ptr @.str.23, ptr %i.ed, align 16, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 1096
  store ptr @.str.24, ptr %i.ee, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 1104
  store i32 0, ptr %i.ef, align 16, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 1108
  store i32 0, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 1112
  store ptr @parse_opt_string_list, ptr %i.eh, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 1120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ei, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %i.ej = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull @ls_remote_usage, i32 noundef 2) #8 ; 2 uses
  %i.ek = load ptr, ptr %1, align 8, !tbaa !13    ; 4 uses
  %i.el = load ptr, ptr @the_repository, align 8, !tbaa !28 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 448
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !30
  %.not = icmp eq ptr %i.en, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @repo_set_hash_algo(ptr noundef nonnull %i.el, i32 noundef 1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @packet_trace_identity(ptr noundef nonnull @.str.25) #8
  %i.eo = icmp sgt i32 %i.ej, 1
  br i1 %i.eo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ej to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %i.eq = and i32 %i.ep, 4
  %.not50 = icmp eq i32 %i.eq, 0
  br i1 %.not50, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !13
  %i.et = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %4, ptr noundef nonnull @.str.26, ptr noundef %i.es) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

bb.d:                                             ; preds = %._crit_edge
  %i.eu = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.27) #8 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ev = phi i32 [ %.pre, %bb.d ], [ %i.ep, %._crit_edge ]
  %i.ew = and i32 %i.ev, 2
  %.not51 = icmp eq i32 %i.ew, 0
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ex = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.28) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ey = call ptr @remote_get(ptr noundef %i.ek) #8 ; 4 uses
  %.not52 = icmp eq ptr %i.ey, null
  br i1 %.not52, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not53 = icmp eq ptr %i.ek, null
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @die(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ek) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  call void (ptr, ...) @die(ptr noundef nonnull @.str.30) #9
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !12
  %.not54 = icmp eq i32 %i.ez, 0
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !56
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !13
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.fc) ; 0 uses
  br label %bb.aj

bb.m:                                             ; preds = %bb.k
  %i.fd = call ptr @transport_get(ptr noundef nonnull %i.ey, ptr noundef null) #8 ; 5 uses
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not55 = icmp eq ptr %i.fe, null
  br i1 %.not55, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ff = call i32 @transport_set_option(ptr noundef %i.fd, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.fe) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !64
  %.not56 = icmp eq i64 %i.fh, 0
  br i1 %.not56, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  store ptr %6, ptr %i.fi, align 8, !tbaa !65
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fj = call ptr @transport_get_remote_refs(ptr noundef %i.fd, ptr noundef nonnull %5) #8 ; 2 uses
  %.not57 = icmp eq ptr %i.fj, null               ; 2 uses
  br i1 %.not57, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fk = call ptr @transport_get_hash_algo(ptr noundef %i.fd) #8 ; 3 uses
  %.not.i = icmp eq ptr %i.fk, @hash_algos
  br i1 %.not.i, label %hash_algo_by_ptr.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.1.i = icmp eq ptr %i.fk, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i, label %hash_algo_by_ptr.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.2.i = icmp eq ptr %i.fk, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i = select i1 %.not.2.i, i32 2, i32 0
  br label %hash_algo_by_ptr.exit

hash_algo_by_ptr.exit:                            ; preds = %bb.r, %bb.s, %bb.t
  %.2.i = phi i32 [ %spec.select.i, %bb.t ], [ 0, %bb.r ], [ 1, %bb.s ]
  %i.fl = load ptr, ptr @the_repository, align 8, !tbaa !28
  call void @repo_set_hash_algo(ptr noundef %i.fl, i32 noundef %.2.i) #8
  br label %bb.u

bb.u:                                             ; preds = %hash_algo_by_ptr.exit, %bb.q
  %i.fm = icmp ne ptr %i.ek, null
  %i.fn = load i32, ptr %i.c, align 4
  %i.fo = icmp ne i32 %i.fn, 0
  %or.cond = select i1 %i.fm, i1 true, i1 %i.fo
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fp = load ptr, ptr @stderr, align 8, !tbaa !73
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !56
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !13
  %i.ft = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fp, ptr noundef nonnull @.str.33, ptr noundef %i.fs) #10 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.not57, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.w
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph76, %bb.ac
  %.04473 = phi ptr [ %i.fj, %.lr.ph76 ], [ %i.go, %bb.ac ] ; 5 uses
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !12
  %i.fw = call i32 @check_ref_type(ptr noundef nonnull %.04473, i32 noundef %i.fv) #8
  %.not62 = icmp eq i32 %i.fw, 0
  br i1 %.not62, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %.04473, i64 176 ; 2 uses
  %i.fy = load i64, ptr %i.fu, align 8, !tbaa !75
  %.not.i64 = icmp eq i64 %i.fy, 0
  br i1 %.not.i64, label %tail_match.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fz = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.37, ptr noundef nonnull %i.fx) #8 ; 3 uses
  %i.ga = load i64, ptr %i.fu, align 8, !tbaa !75
  %.not1415.not.i = icmp eq i64 %i.ga, 0
  br i1 %.not1415.not.i, label %tail_match.exit.thread68, label %.lr.ph.i

bb.aa:                                            ; preds = %.lr.ph.i
  %i.gb = add nuw i64 %.016.i, 1                  ; 2 uses
  %i.gc = load i64, ptr %i.fu, align 8, !tbaa !75
  %.not14.i = icmp ult i64 %i.gb, %i.gc
  br i1 %.not14.i, label %.lr.ph.i, label %tail_match.exit.thread68, !llvm.loop !76

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %.016.i = phi i64 [ %i.gb, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.gd = load ptr, ptr %4, align 8, !tbaa !77
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.016.i
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !13
  %i.gg = call i32 @wildmatch(ptr noundef %i.gf, ptr noundef %i.fz, i32 noundef 0) #8
  %.not13.i = icmp eq i32 %i.gg, 0
  br i1 %.not13.i, label %tail_match.exit, label %bb.aa

tail_match.exit.thread68:                         ; preds = %bb.aa, %bb.z
  call void @free(ptr noundef %i.fz) #8
  br label %bb.ac

tail_match.exit:                                  ; preds = %.lr.ph.i
  call void @free(ptr noundef %i.fz) #8
  br label %tail_match.exit.thread

tail_match.exit.thread:                           ; preds = %bb.y, %tail_match.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %.04473, i64 8
  %i.gi = call ptr @ref_array_push(ptr noundef nonnull %7, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.gh, ptr noundef null) #8
  %i.gj = getelementptr inbounds nuw i8, ptr %.04473, i64 120
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !13 ; 2 uses
  %.not.i65 = icmp eq ptr %i.gk, null
  br i1 %.not.i65, label %xstrdup_or_null.exit, label %bb.ab

bb.ab:                                            ; preds = %tail_match.exit.thread
  %i.gl = call ptr @xstrdup(ptr noundef nonnull %i.gk) #8
  br label %xstrdup_or_null.exit

xstrdup_or_null.exit:                             ; preds = %tail_match.exit.thread, %bb.ab
  %i.gm = phi ptr [ %i.gl, %bb.ab ], [ null, %tail_match.exit.thread ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %tail_match.exit.thread68, %bb.x, %xstrdup_or_null.exit
  %i.go = load ptr, ptr %.04473, align 8, !tbaa !78 ; 2 uses
  %.not58 = icmp eq ptr %i.go, null
  br i1 %.not58, label %._crit_edge77, label %bb.x, !llvm.loop !79

._crit_edge77:                                    ; preds = %bb.ac, %bb.w
  %i.gp = call ptr @ref_sorting_options(ptr noundef nonnull %8) #8 ; 2 uses
  call void @ref_array_sort(ptr noundef %i.gp, ptr noundef nonnull %7) #8
  %i.gq = load i32, ptr %7, align 8, !tbaa !80
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge77
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph80, %bb.ag
  %indvars.iv83 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next84, %bb.ag ] ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !85
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv83
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !86 ; 4 uses
  %i.gw = load i32, ptr %i.e, align 4, !tbaa !12
  %.not60 = icmp eq i32 %i.gw, 0
  br i1 %.not60, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 88
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !13 ; 2 uses
  %.not61 = icmp eq ptr %i.gy, null
  br i1 %.not61, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 128
  %i.ha = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.gz) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hb = call ptr @oid_to_hex(ptr noundef %i.gv) #8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 128
  %i.hd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %i.hb, ptr noundef nonnull %i.hc) ; 0 uses
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.he = load i32, ptr %7, align 8, !tbaa !80
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next84, %i.hf
  br i1 %i.hg, label %bb.ad, label %._crit_edge81, !llvm.loop !88

._crit_edge81:                                    ; preds = %bb.ag, %._crit_edge77
  call void @string_list_clear(ptr noundef nonnull %6, i32 noundef 0) #8
  call void @ref_sorting_release(ptr noundef %i.gp) #8
  call void @ref_array_clear(ptr noundef nonnull %7) #8
  %i.hh = call i32 @transport_disconnect(ptr noundef %i.fd) #8
  %.not59 = icmp eq i32 %i.hh, 0
  br i1 %.not59, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge81
  store i32 1, ptr %i.d, align 4, !tbaa !12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge81
  call void @transport_ls_refs_options_release(ptr noundef nonnull %5) #8
  call void @strvec_clear(ptr noundef nonnull %4) #8
  call void @string_list_clear(ptr noundef nonnull %6, i32 noundef 0) #8
  %i.hi = load i32, ptr %i.d, align 4, !tbaa !12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.l
  %.0 = phi i32 [ 0, %bb.l ], [ %i.hi, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @parse_opt_string_list(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @parse_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @repo_set_hash_algo(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @packet_trace_identity(ptr noundef) local_unnamed_addr #3

declare ptr @strvec_pushf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @strvec_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @remote_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5
end_hunk_0
