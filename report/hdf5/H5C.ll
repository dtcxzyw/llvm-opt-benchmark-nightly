Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5C?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5C_set_cache_auto_resize_config:bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.bn, !prof !13

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.j = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 826, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.20) #7 ; 0 uses
  br label %bb.bn

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.n = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 828, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.21) #7 ; 0 uses
  br label %bb.bn

bb.g:                                             ; preds = %bb.e
  %i.p = load i32, ptr %1, align 8, !tbaa !104
  %.not = icmp eq i32 %i.p, 1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.r = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 830, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.22) #7 ; 0 uses
  br label %bb.bn

bb.i:                                             ; preds = %bb.g
  %i.t = tail call i32 @H5C_validate_resize_config(ptr noundef nonnull %1, i32 noundef 1)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.w = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !15
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 834, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.23) #7 ; 0 uses
  br label %bb.bn

bb.k:                                             ; preds = %bb.i
  %i.y = tail call i32 @H5C_validate_resize_config(ptr noundef nonnull %1, i32 noundef 2)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ab = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !15
  %i.ac = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 838, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %bb.bn

bb.m:                                             ; preds = %bb.k
  %i.ad = tail call i32 @H5C_validate_resize_config(ptr noundef nonnull %1, i32 noundef 4)
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ag = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !15
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 842, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.25) #7 ; 0 uses
  br label %bb.bn

bb.o:                                             ; preds = %bb.m
  %i.ai = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  %i.ak = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  %i.am = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %i.am, label %bb.p, label %.thread.i, !prof !12

.thread.i:                                        ; preds = %bb.o
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !9
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = xor i1 %i.al, true
  %i.ao = select i1 %i.aj, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.q, label %._crit_edge, !prof !13

._crit_edge:                                      ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !105
  br label %bb.w

bb.q:                                             ; preds = %.thread.i, %bb.p
  %i.ap = load i32, ptr %1, align 8, !tbaa !104
  %.not.i = icmp eq i32 %i.ap, 1
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.ar = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.as = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1216, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.40) #7 ; 0 uses
  br label %H5C_validate_resize_config.exit

bb.s:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !106
  switch i32 %i.ax, label %.thread106 [
    i32 1, label %bb.u
    i32 3, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load double, ptr %i.ay, align 8, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !108
  %i.bc = fcmp ult double %i.az, %i.bb
  br i1 %i.bc, label %.thread106, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.be = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.bf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1317, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.61) #7 ; 0 uses
  br label %H5C_validate_resize_config.exit

H5C_validate_resize_config.exit:                  ; preds = %bb.v, %bb.r
  %i.bg = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.bh = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !15
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 846, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.26) #7 ; 0 uses
  br label %bb.bn

.thread106:                                       ; preds = %bb.u, %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 524840 ; 2 uses
  store i8 1, ptr %i.bj, align 8, !tbaa !153
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 524841 ; 2 uses
  store i8 1, ptr %i.bk, align 1, !tbaa !154
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 524856 ; 2 uses
  store i8 1, ptr %i.bl, align 8, !tbaa !155
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge, %bb.s
  %i.bm = phi i32 [ %.pre, %._crit_edge ], [ %i.au, %bb.s ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 524840 ; 4 uses
  store i8 1, ptr %i.bn, align 8, !tbaa !153
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 524841 ; 3 uses
  store i8 1, ptr %i.bo, align 1, !tbaa !154
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 524856 ; 3 uses
  store i8 1, ptr %i.bp, align 8, !tbaa !155
  switch i32 %i.bm, label %bb.ad [
    i32 0, label %bb.x
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.bn, align 8, !tbaa !153
  br label %bb.ae

bb.y:                                             ; preds = %.thread106, %bb.w
  %i.bq = phi ptr [ %i.bl, %.thread106 ], [ %i.bp, %bb.w ] ; 3 uses
  %i.br = phi ptr [ %i.bk, %.thread106 ], [ %i.bo, %bb.w ] ; 3 uses
  %i.bs = phi ptr [ %i.bj, %.thread106 ], [ %i.bn, %bb.w ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !107
  %i.bv = fcmp ugt double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !109
  %i.by = fcmp ugt double %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !156, !range !10, !noundef !11
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !157
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  store i8 0, ptr %i.bs, align 8, !tbaa !153
  br label %bb.ae

bb.ad:                                            ; preds = %bb.w
  %i.cf = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.cg = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.ch = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 865, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.27) #7 ; 0 uses
  br label %bb.bn

bb.ae:                                            ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.x
  %i.ci = phi ptr [ %i.bq, %bb.aa ], [ %i.bq, %bb.ab ], [ %i.bq, %bb.ac ], [ %i.bp, %bb.x ] ; 2 uses
  %i.cj = phi ptr [ %i.br, %bb.aa ], [ %i.br, %bb.ab ], [ %i.br, %bb.ac ], [ %i.bo, %bb.x ] ; 3 uses
  %i.ck = phi ptr [ %i.bs, %bb.aa ], [ %i.bs, %bb.ab ], [ %i.bs, %bb.ac ], [ %i.bn, %bb.x ]
  %i.cl = phi i1 [ true, %bb.aa ], [ true, %bb.ab ], [ false, %bb.ac ], [ false, %bb.x ]
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !106
  switch i32 %i.cn, label %bb.as [
    i32 0, label %.sink.split
    i32 1, label %bb.af
    i32 2, label %bb.aj
    i32 3, label %bb.an
  ]

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cp = load double, ptr %i.co, align 8, !tbaa !108
  %i.cq = fcmp ult double %i.cp, 1.000000e+00
  br i1 %i.cq, label %bb.ag, label %.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !110
  %i.ct = fcmp ult double %i.cs, 1.000000e+00
  br i1 %i.ct, label %bb.ah, label %.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !158, !range !10, !noundef !11
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !159
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.sink.split, label %bb.at

bb.aj:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.db = load i8, ptr %i.da, align 4, !tbaa !111, !range !10, !noundef !11
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.de = load double, ptr %i.dd, align 8, !tbaa !112
  %i.df = fcmp ult double %i.de, 1.000000e+00
  br i1 %i.df, label %bb.al, label %.sink.split

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !158, !range !10, !noundef !11
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !159
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.sink.split, label %bb.at

bb.an:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !111, !range !10, !noundef !11
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !112
  %i.dr = fcmp ult double %i.dq, 1.000000e+00
  br i1 %i.dr, label %bb.ap, label %.sink.split

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !158, !range !10, !noundef !11
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !159
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !108
  %i.ea = fcmp ult double %i.dz, 1.000000e+00
  br i1 %i.ea, label %bb.at, label %.sink.split

bb.as:                                            ; preds = %bb.ae
  %i.eb = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.ec = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.ed = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 898, i64 noundef %i.eb, i64 noundef %i.ec, ptr noundef nonnull @.str.28) #7 ; 0 uses
  br label %bb.bn

.sink.split:                                      ; preds = %bb.ao, %bb.aq, %bb.ar, %bb.ak, %bb.am, %bb.af, %bb.ag, %bb.ai, %bb.ae
  store i8 0, ptr %i.ci, align 8, !tbaa !155
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.ar, %bb.al, %bb.am, %bb.ah, %bb.ai
  %i.ee = phi i8 [ 1, %bb.ar ], [ 1, %bb.ah ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.ai ], [ 0, %.sink.split ]
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !113
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !114
  %i.ej = icmp eq i64 %i.eg, %i.ei
  br i1 %i.ej, label %.thread107, label %bb.au

.thread107:                                       ; preds = %bb.at
  store i8 0, ptr %i.ck, align 8, !tbaa !153
  store i8 0, ptr %i.cj, align 1, !tbaa !154
  store i8 0, ptr %i.ci, align 8, !tbaa !155
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %spec.select = select i1 %i.cl, i8 1, i8 %i.ee
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread107
  %i.ek = phi i8 [ %spec.select, %bb.au ], [ 0, %.thread107 ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 524857
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !160
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 524864
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.em, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 184, i1 false), !tbaa.struct !162
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 524880
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !39, !range !10, !noundef !11
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 524904
  %i.et = load i64, ptr %i.es, align 8, !tbaa !42 ; 3 uses
  %i.eu = icmp ugt i64 %i.er, %i.et
  br i1 %i.eu, label %.thread108, label %.thread112

.thread108:                                       ; preds = %bb.aw
  %i.ev = uitofp i64 %i.et to double
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 524896
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !41
  %i.ey = fmul double %i.ex, %i.ev
  %i.ez = fptoui double %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ay

.thread112:                                       ; preds = %bb.aw
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 524912
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !43
  %. = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %i.fc) ; 2 uses
  %i.fd = uitofp i64 %. to double
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 524896
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !41
  %i.fg = fmul double %i.ff, %i.fd
  %i.fh = fptoui double %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 524888
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !40 ; 4 uses
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre100 = load i64, ptr %.phi.trans.insert99, align 8, !tbaa !32
  %i.fl = icmp ult i64 %i.fk, %.pre100
  %i.fm = uitofp i64 %i.fk to double
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 524896
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !41
  %i.fp = fmul double %i.fo, %i.fm
  %i.fq = fptoui double %i.fp to i64              ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.fl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.thread108, %bb.ax
  %i.fs = phi ptr [ %i.fa, %.thread108 ], [ %i.fr, %bb.ax ]
  %i.ft = phi i64 [ %i.ez, %.thread108 ], [ %i.fq, %bb.ax ]
  %.091111 = phi i64 [ %i.et, %.thread108 ], [ %i.fk, %bb.ax ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 524859
  store i8 1, ptr %i.fu, align 1, !tbaa !163
  br label %bb.az

bb.az:                                            ; preds = %.thread112, %bb.ay, %bb.ax
  %i.fv = phi ptr [ %i.fs, %bb.ay ], [ %i.fr, %bb.ax ], [ %i.fi, %.thread112 ] ; 2 uses
  %i.fw = phi i64 [ %i.ft, %bb.ay ], [ %i.fq, %bb.ax ], [ %i.fh, %.thread112 ]
  %.091110 = phi i64 [ %.091111, %bb.ay ], [ %i.fk, %bb.ax ], [ %., %.thread112 ]
  store i64 %.091110, ptr %i.fv, align 8, !tbaa !32
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !33
  %i.fy = tail call i32 @H5C_reset_cache_hit_rate_stats(ptr noundef nonnull %0)
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ga = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.gb = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.gc = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 950, i64 noundef %i.ga, i64 noundef %i.gb, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %bb.bn

bb.bb:                                            ; preds = %bb.az
  %i.gd = load i32, ptr %i.cm, align 8, !tbaa !106
  %i.ge = and i32 %i.gd, -2
  %switch = icmp eq i32 %i.ge, 2
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 525048
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !48 ; 2 uses
  br i1 %switch, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 525032
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !47
  %i.gj = icmp sgt i32 %i.gg, %i.gi
  br i1 %i.gj, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.gk = tail call i32 @H5C__autoadjust__ageout__remove_excess_markers(ptr noundef nonnull %0) #7
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.gm = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.gn = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.go = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 957, i64 noundef %i.gm, i64 noundef %i.gn, ptr noundef nonnull @.str.29) #7 ; 0 uses
  br label %bb.bn

bb.bf:                                            ; preds = %bb.bb
  %i.gp = icmp sgt i32 %i.gg, 0
  br i1 %i.gp, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.gq = tail call i32 @H5C__autoadjust__ageout__remove_all_markers(ptr noundef nonnull %0) #7
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gs = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.gt = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.gu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 961, i64 noundef %i.gs, i64 noundef %i.gt, ptr noundef nonnull @.str.30) #7 ; 0 uses
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %bb.bc, %bb.bd
  %i.gv = load i8, ptr %i.cj, align 1, !tbaa !154, !range !10, !noundef !11
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !115
  switch i32 %i.gy, label %bb.bm [
    i32 0, label %bb.bk
    i32 1, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  store i8 0, ptr %i.cj, align 1, !tbaa !154
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.gz = load i64, ptr %i.fv, align 8, !tbaa !32
  %i.ha = uitofp i64 %i.gz to double
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 524984
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !164
  %i.hd = fmul double %i.hc, %i.ha
  %i.he = fptoui double %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 524848
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !165
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  %i.hg = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.hh = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.hi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_auto_resize_config, i32 noundef 984, i64 noundef %i.hg, i64 noundef %i.hh, ptr noundef nonnull @.str.31) #7 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %H5C_validate_resize_config.exit, %bb.ad, %bb.as, %bb.ba, %bb.be, %bb.bh, %bb.bm, %bb.bk, %bb.bl, %bb.bi, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %H5C_validate_resize_config.exit ], [ -1, %bb.ad ], [ -1, %bb.as ], [ -1, %bb.ba ], [ -1, %bb.be ], [ -1, %bb.bm ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 0, %bb.bi ], [ -1, %bb.bh ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_validate_resize_config(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.bg, !prof !13

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.j = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1213, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.21) #7 ; 0 uses
  br label %bb.bg

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr %0, align 8, !tbaa !104
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !15
  %i.n = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !15
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1216, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.40) #7 ; 0 uses
  br label %bb.bg

bb.g:                                             ; preds = %bb.e
  %i.p = and i32 %1, 1
  %.not93 = icmp eq i32 %i.p, 0
  br i1 %.not93, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !113  ; 3 uses
  %i.s = icmp ugt i64 %i.r, 134217728
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.u = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1220, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.41) #7 ; 0 uses
  br label %bb.bg

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !114  ; 3 uses
  %i.y = icmp ult i64 %i.x, 1024
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.aa = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1222, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.42) #7 ; 0 uses
  br label %bb.bg

bb.l:                                             ; preds = %bb.j
  %i.ac = icmp ugt i64 %i.x, %i.r
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ae = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1224, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.43) #7 ; 0 uses
  br label %bb.bg

bb.n:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !166, !range !10, !noundef !11
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !167 ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.x
  %i.am = icmp ugt i64 %i.ak, %i.r
  %or.cond = or i1 %i.al, %i.am
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ao = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1228, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.44) #7 ; 0 uses
  br label %bb.bg

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !168 ; 2 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  %i.at = fcmp ogt double %i.ar, 1.000000e+00
  %or.cond103 = or i1 %i.as, %i.at
  br i1 %or.cond103, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.av = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1231, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.45) #7 ; 0 uses
  br label %bb.bg

bb.s:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !169 ; 2 uses
  %i.az = icmp slt i64 %i.ay, 100
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.bb = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.bc = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1233, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull @.str.46) #7 ; 0 uses
  br label %bb.bg

bb.u:                                             ; preds = %bb.s
  %i.bd = icmp samesign ugt i64 %i.ay, 1000000
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.be = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.bf = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1235, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.47) #7 ; 0 uses
  br label %bb.bg

bb.w:                                             ; preds = %bb.u, %bb.g
  %i.bh = and i32 %1, 2
  %.not94 = icmp eq i32 %i.bh, 0
  br i1 %.not94, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !105 ; 2 uses
  %switch = icmp ult i32 %i.bj, 2
  br i1 %switch, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.bl = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.bm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1240, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.48) #7 ; 0 uses
  br label %bb.bg

bb.z:                                             ; preds = %bb.x
  %i.bn = icmp eq i32 %i.bj, 1
  br i1 %i.bn, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !107 ; 2 uses
  %i.bq = fcmp olt double %i.bp, 0.000000e+00
  %i.br = fcmp ogt double %i.bp, 1.000000e+00
  %or.cond104 = or i1 %i.bq, %i.br
  br i1 %or.cond104, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.bt = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.bu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_resize_config, i32 noundef 1245, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.49) #7 ; 0 uses
  br label %bb.bg

bb.ac:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !109
  %i.bx = fcmp olt double %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.by = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.bz = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
end_hunk_0
