Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/variables?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@dt_variables_expand:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = tail call noalias ptr (ptr, ptr, ...) @g_build_path(ptr noundef nonnull @.str, ptr noundef %i.o, ptr noundef nonnull @.str.1, ptr noundef null) #15
  br label %g_strdup_inline.exit183.i

bb.e:                                             ; preds = %bb.c
  %i.q = tail call ptr @g_get_user_special_dir(i32 noundef 4) #15
  %i.r = tail call noalias ptr @g_strdup(ptr noundef %i.q) #15
  br label %g_strdup_inline.exit183.i

g_strdup_inline.exit183.i:                        ; preds = %bb.e, %bb.d
  %.0.i181.sink.i = phi ptr [ %i.p, %bb.d ], [ %i.r, %bb.e ]
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store ptr %.0.i181.sink.i, ptr %i.t, align 8, !tbaa !22
  %i.u = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not144.i = icmp eq ptr %i.u, null
  br i1 %.not144.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %g_strdup_inline.exit183.i
  %i.v = tail call ptr @g_strrstr(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.2) #15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !24
  %i.z = icmp eq ptr %i.w, inttoptr (i64 1 to ptr)
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !24
  br label %bb.i

bb.h:                                             ; preds = %g_strdup_inline.exit183.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store ptr null, ptr %i.ad, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ae = phi ptr [ %i.x, %bb.f ], [ %i.x, %bb.g ], [ %i.s, %bb.h ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store i32 0, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i32 100, ptr %i.ag, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store <2 x float> <float 0.000000e+00, float f0xFF7FFFFF>, ptr %i.ai, align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store <4 x ptr> <ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3>, ptr %i.ak, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  store ptr @.str.3, ptr %i.al, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  store <2 x double> splat (double +qnan), ptr %i.am, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store double +qnan, ptr %i.an, align 8, !tbaa !30
  %i.ao = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.4) #15
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !15  ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 108
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.at = load i32, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33 ; 2 uses
  %.not146.i = icmp eq ptr %i.aw, null
  br i1 %.not146.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call ptr @dt_image_cache_get(i32 noundef %i.at, i8 noundef signext 114) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi ptr [ %i.ax, %bb.k ], [ %i.aw, %bb.j ] ; 19 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3520), align 8, !tbaa !76
  %i.ba = tail call ptr @dt_datetime_img_to_gdatetime(ptr noundef %i.ay, ptr noundef %i.az) #15 ; 2 uses
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !15  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !104
  %.not147.i = icmp eq ptr %i.ba, null
  br i1 %.not147.i, label %g_strdup_inline.exit178.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  store i32 1, ptr %i.bd, align 8, !tbaa !25
  br label %g_strdup_inline.exit178.i

g_strdup_inline.exit178.i:                        ; preds = %bb.m, %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !113
  %i.bg = fptosi float %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 800
  %i.bj = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.bi) #15
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 928
  %i.bn = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.bm) #15
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !79
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 172
  %i.br = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.bq) #15
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !15  ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !80
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 1432
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !114
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1428 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !115 ; 2 uses
  %i.bz = and i32 %i.by, 7                        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 148
  %i.cb = icmp ne i32 %i.bz, 6
  %i.cc = and i32 %i.by, 8
  %.not148.i = icmp eq i32 %i.cc, 0
  %or.cond.i = and i1 %i.cb, %.not148.i
  %spec.store.select.i = select i1 %or.cond.i, i32 %i.bz, i32 -1
  store i32 %spec.store.select.i, ptr %i.ca, align 4, !tbaa !82
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.cf = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.cd, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !103
  %i.cg = shufflevector <5 x float> %i.cf, <5 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.cg, ptr %i.ce, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ci = load float, ptr %i.ch, align 16, !tbaa !116
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  store float %i.ci, ptr %i.cj, align 8, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !117 ; 2 uses
  %or.cond184.i = fcmp ueq float %i.cl, 0.000000e+00
  br i1 %or.cond184.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %g_strdup_inline.exit178.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 180
  store float %i.cl, ptr %i.cm, align 4, !tbaa !84
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.n, %g_strdup_inline.exit178.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ay, i64 1680
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %i.cp = load <2 x double>, ptr %i.cn, align 16, !tbaa !29
  store <2 x double> %i.cp, ptr %i.co, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ay, i64 1696
  %i.cr = load double, ptr %i.cq, align 16, !tbaa !118
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  store double %i.cr, ptr %i.cs, align 8, !tbaa !30
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !119 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, -1                   ; 2 uses
  %i.cw = and i32 %i.cu, 1
  %.not151.i = icmp eq i32 %i.cw, 0               ; 2 uses
  %.str.8..str.7.i = select i1 %.not151.i, ptr @.str.8, ptr @.str.7
  %i.cx = or i1 %i.cv, %.not151.i
  %.sink = select i1 %i.cx, ptr @.str.3, ptr @.str.6
  %.str.8.sink.sink.i = select i1 %i.cv, ptr @.str.5, ptr %.str.8..str.7.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  store ptr %.sink, ptr %i.cy, align 8, !tbaa !85
  %i.cz = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.8.sink.sink.i, i32 noundef 5) #15
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !15  ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 184
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !86
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 428
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 200
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %i.ay, i64 492
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 208
  store ptr %i.de, ptr %i.df, align 8, !tbaa !88
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ay, i64 300
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 216
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !28
  %i.di = load i32, ptr %i.bx, align 4, !tbaa !115
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 252
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !89
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ay, i64 1380
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 44
  %i.dm = tail call <6 x i32> @llvm.masked.load.v6i32.p0(ptr nonnull align 4 %i.dk, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x i32> poison), !tbaa !120
  %i.dn = shufflevector <6 x i32> %i.dm, <6 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x i32> %i.dn, ptr %i.dl, align 4, !tbaa !120
  %i.do = getelementptr inbounds nuw i8, ptr %i.ay, i64 1388
  %i.dp = load <2 x i32>, ptr %i.do, align 4, !tbaa !120 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 60
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 68
  %i.ds = shufflevector <2 x i32> %i.dp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %i.ds, ptr %i.dq, align 4, !tbaa !120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  %i.du = load <2 x i32>, ptr %i.dt, align 4, !tbaa !120
  %.fr = freeze <2 x i32> %i.du                   ; 2 uses
  %3 = icmp eq <2 x i32> %.fr, zeroinitializer    ; 2 uses
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond196.i = icmp eq i2 %4, -1
  br i1 %or.cond196.i, label %bb.q, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.critedge.i
  %i.dv = sitofp reassoc nsz arcp contract afn <2 x i32> %.fr to <2 x float>
  %i.dw = select <2 x i1> %3, <2 x float> splat (float f0x4F000000), <2 x float> %i.dv
  %i.dx = sitofp reassoc nsz arcp contract afn <2 x i32> %i.dp to <2 x float> ; 2 uses
  %i.dy = fdiv reassoc nsz arcp contract afn <2 x float> %i.dw, %i.dx ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 0
  %i.ea = extractelement <2 x float> %i.dy, i64 1
  %i.eb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ea, float %i.dz) ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn olt float %i.eb, 1.000000e+00
  br i1 %i.ec, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 76
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !90
  %.not157.i = icmp eq i32 %i.ee, 0
  br i1 %.not157.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %i.ef = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul reassoc nsz arcp contract afn <2 x float> %i.eg, %i.dx
  %i.ei = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.eh)
  %i.ej = fptosi <2 x float> %i.ei to <2 x i32>
  store <2 x i32> %i.ej, ptr %i.dr, align 4, !tbaa !120
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.critedge.i
  %i.ek = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.r, label %_init_expansion.exit

bb.r:                                             ; preds = %bb.q
  tail call void @dt_image_cache_read_release(ptr noundef nonnull %i.ay) #15
  br label %_init_expansion.exit

bb.s:                                             ; preds = %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !91 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !104
  %.not145.i = icmp eq ptr %i.en, null
  br i1 %.not145.i, label %g_strdup_inline.exit163.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store i32 1, ptr %i.ep, align 8, !tbaa !25
  br label %g_strdup_inline.exit163.i

g_strdup_inline.exit163.i:                        ; preds = %bb.t, %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !92
  %i.es = tail call noalias ptr @g_strdup(ptr noundef %i.er) #15
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !78
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !93
  %i.ex = tail call noalias ptr @g_strdup(ptr noundef %i.ew) #15
  %i.ey = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !79
  br label %_init_expansion.exit

_init_expansion.exit:                             ; preds = %bb.q, %bb.r, %g_strdup_inline.exit163.i
  %i.fa = tail call ptr @dt_util_str_replace(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #15 ; 2 uses
  %i.fb = tail call ptr @dt_util_str_replace(ptr noundef %i.fa, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #15 ; 2 uses
  tail call void @g_free(ptr noundef %i.fa) #15
  %i.fc = tail call ptr @dt_util_str_replace(ptr noundef %i.fb, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #15 ; 2 uses
  tail call void @g_free(ptr noundef %i.fb) #15
  %i.fd = tail call ptr @dt_util_str_replace(ptr noundef %i.fc, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #15 ; 2 uses
  tail call void @g_free(ptr noundef %i.fc) #15
  %i.fe = tail call ptr @dt_util_str_replace(ptr noundef %i.fd, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #15 ; 2 uses
  tail call void @g_free(ptr noundef %i.fd) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %i.fe, ptr %i.a, align 8, !tbaa !27
  %i.ff = call fastcc ptr @_expand_source(ptr noundef nonnull %0, ptr noundef %i.a, i8 noundef signext 0)
  tail call void @g_free(ptr noundef %i.fe) #15
  %i.fg = load i32, ptr %i.as, align 8, !tbaa !32
  %i.fh = icmp sgt i32 %i.fg, 0
  %i.fi = load ptr, ptr %i.h, align 8, !tbaa !15  ; 3 uses
  br i1 %i.fh, label %bb.u, label %_cleanup_expansion.exit

bb.u:                                             ; preds = %_init_expansion.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 152
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !104 ; 2 uses
  %.not.i8 = icmp eq ptr %i.fk, null
  br i1 %.not.i8, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @g_date_time_unref(ptr noundef nonnull %i.fk) #15
  %i.fl = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 152
  store ptr null, ptr %i.fm, align 8, !tbaa !104
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fn = phi ptr [ %i.fl, %bb.v ], [ %i.fi, %bb.u ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 120
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !78
  tail call void @g_free(ptr noundef %i.fp) #15
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 120
  store ptr null, ptr %i.fr, align 8, !tbaa !78
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !79
  tail call void @g_free(ptr noundef %i.ft) #15
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  store ptr null, ptr %i.fv, align 8, !tbaa !79
  br label %_cleanup_expansion.exit

_cleanup_expansion.exit:                          ; preds = %_init_expansion.exit, %bb.w
  %i.fw = phi ptr [ %i.fu, %bb.w ], [ %i.fi, %_init_expansion.exit ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 80
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !21
  tail call void @g_free(ptr noundef %i.fy) #15
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  store ptr null, ptr %i.ga, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 88
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !22
  tail call void @g_free(ptr noundef %i.gc) #15
  %i.gd = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  store ptr null, ptr %i.ge, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.ff
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_expand_source(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i8 noundef signext range(i8 0, 48) %2) unnamed_addr #0 {
g_strdup_inline.exit:
  %i.a = alloca ptr, align 8                      ; 34 uses
  %i.b = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #17 ; 6 uses
  store i8 0, ptr %i.b, align 1
  %i.c = load ptr, ptr %1, align 8, !tbaa !27     ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.aw, label %bb.a

bb.a:                                             ; preds = %g_strdup_inline.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %i.c, ptr %i.a, align 8, !tbaa !27
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16 ; 2 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !94    ; 3 uses
  %.not3099 = icmp eq i8 %i.e, 0
  %.not31100 = icmp eq i8 %i.e, %2
  %or.cond101 = or i1 %.not3099, %.not31100
  br i1 %or.cond101, label %.critedge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = load ptr, ptr @g_utf8_skip, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.av
  %i.g = phi i8 [ %i.e, %.preheader.lr.ph ], [ %i.gi, %bb.av ] ; 3 uses
  %i.h = phi ptr [ %i.c, %.preheader.lr.ph ], [ %i.gh, %bb.av ] ; 2 uses
  %.059104 = phi i64 [ 0, %.preheader.lr.ph ], [ %.5, %bb.av ] ; 2 uses
  %.060103 = phi ptr [ %i.b, %.preheader.lr.ph ], [ %.565, %bb.av ] ; 2 uses
  %.069102 = phi ptr [ %i.b, %.preheader.lr.ph ], [ %.574, %bb.av ] ; 2 uses
  %.not3388 = icmp eq i8 %i.g, %2
  br i1 %.not3388, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.i = phi i8 [ %i.ag, %bb.h ], [ %i.g, %.preheader ] ; 2 uses
  %i.j = phi ptr [ %i.af, %bb.h ], [ %i.h, %.preheader ] ; 6 uses
  %.192 = phi i64 [ %.2, %bb.h ], [ %.059104, %.preheader ] ; 5 uses
  %.16191 = phi ptr [ %i.ad, %bb.h ], [ %.060103, %.preheader ] ; 4 uses
  %.17090 = phi ptr [ %.271, %bb.h ], [ %.069102, %.preheader ] ; 5 uses
  switch i8 %i.i, label %bb.e [
    i8 92, label %bb.b
    i8 36, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !94
  %.not34 = icmp eq i8 %i.l, 0
  br i1 %.not34, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.a, align 8, !tbaa !27
  %i.m = load i8, ptr %i.k, align 1, !tbaa !94
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !94
  %i.p = icmp eq i8 %i.o, 40
  br i1 %i.p, label %.critedge2.thread, label %bb.e

bb.e:                                             ; preds = %bb.b, %.lr.ph, %bb.d, %bb.c
  %i.q = phi ptr [ %i.k, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %.lr.ph ], [ %i.j, %bb.b ]
  %.025 = phi i8 [ %i.m, %bb.c ], [ 36, %bb.d ], [ %i.i, %.lr.ph ], [ 92, %bb.b ]
  %i.r = ptrtoint ptr %.16191 to i64
  %i.s = ptrtoint ptr %.17090 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %.not35 = icmp ult i64 %i.t, %.192
  br i1 %.not35, label %bb.h, label %bb.f

end_hunk_0
