Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/parsing?download=true
inline.NumInlined: 16
inline.NumDeleted: 15
begin_hunk_0_@parse:bb.a
  br i1 %or.cond, label %bb.ew, label %bb.fc

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8
  %i.tc = call i32 @data_get_type(ptr noundef %3) #7
  %i.td = icmp eq i32 %i.tc, 1
  br i1 %i.td, label %_parse_check_openapi.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.tf = load i32, ptr %i.te, align 8
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %_parse_check_openapi.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.th = call i32 @data_get_type(ptr noundef %3) #7
  %i.ti = load i32, ptr %i.te, align 8
  %i.tj = call i32 @openapi_type_format_to_data_type(i32 noundef %i.ti) #7
  %i.tk = icmp eq i32 %i.th, %i.tj
  br i1 %i.tk, label %_parse_check_openapi.exit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.tl = load i32, ptr %i.te, align 8
  %i.tm = call ptr @openapi_type_format_to_type_string(i32 noundef %i.tl) #7
  %i.tn = load i32, ptr %i.te, align 8
  %i.to = call ptr @openapi_type_format_to_format_string(i32 noundef %i.tn) #7 ; 2 uses
  %i.tp = call i32 @data_get_type(ptr noundef %3) #7
  %i.tq = call i32 @openapi_data_type_to_type_format(i32 noundef %i.tp) #7 ; 2 uses
  %i.tr = call ptr @openapi_type_format_to_type_string(i32 noundef %i.tq) #7
  %i.ts = call ptr @openapi_type_format_to_format_string(i32 noundef %i.tq) #7 ; 2 uses
  %i.tt = load i32, ptr %i.te, align 8
  %i.tu = call i32 @openapi_type_format_to_data_type(i32 noundef %i.tt) #7
  %i.tv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tw = load i32, ptr %i.tv, align 8
  %i.tx = load i32, ptr %i.sz, align 8
  %i.ty = and i32 %i.tx, 2
  %.not.i173 = icmp eq i32 %i.ty, 0
  br i1 %.not.i173, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.tz = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.b, ptr noundef %5) #7
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.ua = phi ptr [ %i.tz, %bb.fa ], [ null, %bb.ez ]
  %.not24.i = icmp eq ptr %i.to, null             ; 2 uses
  %i.ub = select i1 %.not24.i, ptr @.str.3, ptr @.str.42
  %i.uc = select i1 %.not24.i, ptr @.str.3, ptr %i.to
  %i.ud = call ptr @data_type_to_string(i32 noundef %i.tu) #7
  %.not25.i = icmp eq ptr %i.ts, null             ; 2 uses
  %i.ue = select i1 %.not25.i, ptr @.str.3, ptr @.str.42
  %i.uf = select i1 %.not25.i, ptr @.str.3, ptr %i.ts
  %i.ug = call ptr @data_get_type_string(ptr noundef %3) #7
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.tw, ptr noundef nonnull %4, ptr noundef %i.ua, ptr noundef nonnull @__func__._parse_check_openapi, ptr noundef nonnull @.str.41, ptr noundef %i.tm, ptr noundef nonnull %i.ub, ptr noundef nonnull %i.uc, ptr noundef %i.ud, ptr noundef %i.tr, ptr noundef nonnull %i.ue, ptr noundef nonnull %i.uf, ptr noundef %i.ug, ptr noundef %3) #7
  call void @slurm_xfree(ptr noundef nonnull %i.b) #7
  br label %_parse_check_openapi.exit

_parse_check_openapi.exit:                        ; preds = %bb.ew, %bb.ex, %bb.ey, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.fc

bb.fc:                                            ; preds = %_parse_check_openapi.exit, %bb.ev
  %i.uh = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = call i32 %i.ui(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #7
  br label %_parse_pointer.exit

bb.fd:                                            ; preds = %bb.q
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.ul = load i32, ptr %i.uk, align 4
  %i.um = call ptr @find_parser_by_type(i32 noundef %i.ul) #7
  %i.un = call i32 @parse(ptr noundef %0, i64 noundef %1, ptr noundef %i.um, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %_parse_pointer.exit

bb.fe:                                            ; preds = %bb.q, %bb.q
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.parse, i32 noundef %i.bu) #8
  unreachable

bb.ff:                                            ; preds = %bb.q
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.parse, i32 noundef 4) #8
  unreachable

bb.fg:                                            ; preds = %bb.q
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.parse, i32 noundef 5) #8
  unreachable

bb.fh:                                            ; preds = %bb.q, %bb.q
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.parse, i32 noundef %i.bu) #8
  unreachable

_parse_pointer.exit:                              ; preds = %bb.ed, %bb.dz, %bb.dy, %bb.r, %bb.s, %bb.g, %bb.k, %bb.h, %bb.a, %bb.f, %bb.ax, %bb.dr, %.critedge, %bb.fd, %bb.fc, %_parse_nt_array.exit, %_parse_list.exit, %_parse_flag.exit, %bb.q
  %.2 = phi i32 [ %i.h, %bb.a ], [ 0, %bb.q ], [ 0, %bb.g ], [ %.0.i, %_parse_flag.exit ], [ %.0.i160182, %_parse_list.exit ], [ %i.gb, %bb.ax ], [ %.1.lcssa, %.critedge ], [ %.1.lcssa, %bb.dr ], [ 0, %bb.r ], [ %.1.i167, %_parse_nt_array.exit ], [ %i.uj, %bb.fc ], [ %i.un, %bb.fd ], [ %i.u, %bb.f ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.s ], [ 0, %bb.dy ], [ %i.qp, %bb.ed ], [ 0, %bb.dz ] ; 3 uses
  %i.uo = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.up = and i64 %i.uo, 256
  %.not154 = icmp eq i64 %i.up, 0
  br i1 %.not154, label %bb.fm, label %bb.fi

bb.fi:                                            ; preds = %_parse_pointer.exit
  %i.uq = call i32 @get_log_level() #7
  %i.ur = icmp sgt i32 %i.uq, 3
  br i1 %i.ur, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  %i.us = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ut = load i32, ptr %i.us, align 8
  %i.uu = and i32 %i.ut, 2
  %.not155 = icmp eq i32 %i.uu, 0
  br i1 %.not155, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.uv = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.g, ptr noundef %5) #7
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.uw = phi ptr [ %i.uv, %bb.fk ], [ null, %bb.fj ]
  %i.ux = call ptr @data_get_type_string(ptr noundef %3) #7
  %i.uy = ptrtoint ptr %3 to i64
  %i.uz = icmp eq i64 %1, 4294967294
  %i.va = select i1 %i.uz, i64 -1, i64 %1
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.vc = load ptr, ptr %i.vb, align 8
  %i.vd = ptrtoint ptr %0 to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.vf = load i64, ptr %i.ve, align 8            ; 2 uses
  %i.vg = icmp eq i64 %i.vf, 4294967294
  %spec.select158 = select i1 %i.vg, i64 0, i64 %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.vi = load ptr, ptr %i.vh, align 8            ; 2 uses
  %.not156 = icmp eq ptr %i.vi, null              ; 2 uses
  %i.vj = select i1 %.not156, ptr @.str.3, ptr @.str.2
  %i.vk = select i1 %.not156, ptr @.str.3, ptr %i.vi
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vm = load ptr, ptr %i.vl, align 8
  %i.vn = ptrtoint ptr %2 to i64
  %i.vo = call ptr @slurm_strerror(i32 noundef %.2) #7
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.parse, ptr noundef %i.uw, ptr noundef %i.ux, i64 noundef %i.uy, i64 noundef %i.va, ptr noundef %i.vc, i64 noundef %i.vd, i64 noundef %spec.select158, ptr noundef nonnull %i.vj, ptr noundef nonnull %i.vk, ptr noundef %i.vm, i64 noundef %i.vn, i32 noundef %.2, ptr noundef %i.vo) #7
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fi, %bb.fl, %_parse_pointer.exit
  call void @slurm_xfree(ptr noundef nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @load_prereqs_funcname(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @on_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @openapi_fmt_rel_path_str(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @data_get_type_string(ptr noundef) local_unnamed_addr #2

declare i32 @data_get_type(ptr noundef) local_unnamed_addr #2

declare void @on_warn(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @data_set_list(ptr noundef) local_unnamed_addr #2

declare ptr @data_new() local_unnamed_addr #2

declare i32 @data_dict_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_parse_marray(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.marray_path_args_t, align 8 ; 6 uses
  %4 = alloca %struct.parse_marray_args_t, align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @data_copy(ptr noundef null, ptr noundef %i.i) #7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = tail call i32 @openapi_append_rel_path(ptr noundef %i.j, ptr noundef %0) #7 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @data_copy(ptr noundef null, ptr noundef %i.n) #7 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = tail call ptr @data_list_append(ptr noundef %i.o) #7
  %i.r = tail call ptr @data_set_string(ptr noundef %i.q, ptr noundef %0) #7 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.not68 = icmp eq i64 %i.t, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.q
  %i.x = phi i64 [ %i.t, %.lr.ph67 ], [ %i.bq, %bb.q ]
  %indvars.iv75 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next76, %bb.q ] ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw [192 x i8], ptr %i.y, i64 %indvars.iv75 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  switch i32 %i.ab, label %.thread54 [
    i32 4, label %bb.q
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = call ptr @find_parser_by_type(i32 noundef %i.ad) #7 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 144 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8
  %.not69 = icmp eq i8 %i.ag, 0
  br i1 %.not69, label %.thread54, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i8, ptr %i.af, align 8
  %i.aj = zext i8 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.e, label %.thread54, !llvm.loop !19

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i32 @xstrcasecmp(ptr noundef %0, ptr noundef %i.ao) #7
  %.not.not = icmp eq i32 %i.ap, 0
  br i1 %.not.not, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.as = and i64 %i.ar, 256
  %.not47 = icmp eq i64 %i.as, 0
  br i1 %.not47, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8
  %i.at = call i32 @data_list_join_str(ptr noundef nonnull %i.b, ptr noundef %i.o, ptr noundef nonnull @.str.34) #7 ; 0 uses
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.av = and i64 %i.au, 256
  %.not48 = icmp eq i64 %i.av, 0
  br i1 %.not48, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = call i32 @get_log_level() #7
  %i.ax = icmp sgt i32 %i.aw, 3
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = load ptr, ptr %i.aq, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__._foreach_parse_marray, ptr noundef %i.ay, ptr noundef %i.az) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.v

.thread54:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.ba = call ptr @data_new() #7
  %i.bb = call ptr @data_set_list(ptr noundef %i.ba) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i32 -304373761, ptr %3, align 8
  store i32 0, ptr %i.v, align 4
  store ptr %i.bb, ptr %i.w, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i32 @url_path_walk(ptr noundef %i.bd, i1 noundef zeroext false, ptr noundef nonnull @_on_marray_append_path, ptr noundef nonnull %3) #7 ; 0 uses
  %i.bf = call zeroext i1 @data_check_match(ptr noundef %i.bb, ptr noundef %i.o, i1 noundef zeroext false) #7
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_match_array_path.exit, label %bb.k

bb.k:                                             ; preds = %.thread54
  call void @data_free(ptr noundef nonnull %i.bb) #7
  br label %_match_array_path.exit

_match_array_path.exit:                           ; preds = %.thread54, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br i1 %i.bf, label %bb.l, label %_match_array_path.exit._crit_edge

_match_array_path.exit._crit_edge:                ; preds = %_match_array_path.exit
  %.pre = load i64, ptr %i.s, align 8
  br label %bb.q

bb.l:                                             ; preds = %_match_array_path.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bi = and i64 %i.bh, 256
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8
  %i.bj = call i32 @data_list_join_str(ptr noundef nonnull %i.c, ptr noundef %i.o, ptr noundef nonnull @.str.34) #7 ; 0 uses
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bl = and i64 %i.bk, 256
  %.not49 = icmp eq i64 %i.bl, 0
  br i1 %.not49, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call i32 @get_log_level() #7
  %i.bn = icmp sgt i32 %i.bm, 3
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %i.c, align 8
  %i.bp = load ptr, ptr %i.bg, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__._foreach_parse_marray, ptr noundef %i.bo, ptr noundef %i.bp) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  call void @slurm_xfree(ptr noundef nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.v

bb.q:                                             ; preds = %_match_array_path.exit._crit_edge, %bb.b
  %i.bq = phi i64 [ %i.x, %bb.b ], [ %.pre, %_match_array_path.exit._crit_edge ] ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %indvars.iv.next76
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.q, %bb.a
  %i.bs = call i32 @data_get_type(ptr noundef %1) #7
  %i.bt = icmp eq i32 %i.bs, 3
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.bu = call i32 @data_dict_for_each(ptr noundef %1, ptr noundef nonnull @_foreach_parse_marray, ptr noundef nonnull %4) #7 ; 0 uses
  %.pre78 = load ptr, ptr %i.p, align 8
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = and i32 %i.by, 2
  %.not50 = icmp eq i32 %i.bz, 0
  br i1 %.not50, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = call ptr @openapi_fmt_rel_path_str(ptr noundef nonnull %i.a, ptr noundef %i.j) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cb = phi ptr [ %i.ca, %bb.t ], [ null, %bb.s ]
  %i.cc = call ptr @data_get_type_string(ptr noundef %1) #7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 60138, i32 noundef %i.bw, ptr noundef nonnull %i.e, ptr noundef %i.cb, ptr noundef nonnull @__func__._foreach_parse_marray, ptr noundef nonnull @.str.37, ptr noundef %0, ptr noundef %i.cc, ptr noundef %i.ce) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.j, %bb.f, %bb.p, %bb.l, %bb.r, %bb.u
  %5 = phi ptr [ %i.o, %bb.j ], [ %i.o, %bb.f ], [ %i.o, %bb.p ], [ %i.o, %bb.l ], [ %.pre78, %bb.r ], [ %i.o, %bb.u ] ; 2 uses
  %.not51 = icmp eq ptr %5, null
  br i1 %.not51, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @data_free(ptr noundef nonnull %5) #7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr null, ptr %i.p, align 8
  %i.cf = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not52 = icmp eq ptr %i.cf, null
  br i1 %.not52, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @data_free(ptr noundef nonnull %i.cf) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  store ptr null, ptr %i.k, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 1
}

declare void @data_free(ptr noundef) local_unnamed_addr #2

declare ptr @find_parser_by_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #4

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @dump(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @get_log_level() #7
  %i.e = icmp sgt i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 4294967294
  %i.g = select i1 %i.f, i64 -1, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %0 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %3 to i64
  %i.n = ptrtoint ptr %4 to i64
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.12, i64 noundef %i.g, ptr noundef %i.i, i64 noundef %i.j, ptr noundef %i.l, i64 noundef %i.m, i64 noundef %i.n) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 1
  %.not85 = icmp eq i32 %i.q, 0
  br i1 %.not85, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @set_openapi_schema(ptr noundef %4, ptr noundef %3, ptr noundef nonnull %5) #7
  br label %bb.bd

bb.f:                                             ; preds = %bb.d
  %i.r = tail call i32 @load_prereqs_funcname(i32 noundef 44718, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull @__func__.dump) #7 ; 2 uses
  %.not86 = icmp eq i32 %i.r, 0
  br i1 %.not86, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  switch i32 %i.t, label %.critedge [
    i32 13, label %bb.h
    i32 8, label %bb.i
    i32 1, label %.preheader
    i32 9, label %bb.al
    i32 10, label %bb.am
    i32 11, label %bb.an
    i32 12, label %bb.an
    i32 6, label %bb.av
    i32 7, label %bb.av
    i32 14, label %bb.aw
    i32 3, label %bb.ax
    i32 2, label %bb.ax
    i32 4, label %bb.ay
    i32 5, label %bb.az
    i32 0, label %bb.ba
    i32 15, label %bb.ba
  ]

.preheader:                                       ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.w = icmp ne ptr %0, null
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  %.val = load i32, ptr %i.o, align 8
  tail call fastcc void @_dump_removed(ptr noundef nonnull %3, ptr noundef %4, i32 %.val)
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 145
  %i.ad = load i8, ptr %i.ac, align 1, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = tail call i32 @data_get_type(ptr noundef %4) #7 ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not90 = icmp eq i32 %i.af, 5
  br i1 %.not90, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call ptr @data_set_string(ptr noundef %4, ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %.not89 = icmp eq i32 %i.af, 2
  br i1 %.not89, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call ptr @data_set_list(ptr noundef %4) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j, %bb.k
  %i.ai = tail call fastcc i32 @_dump_flag_bit_array(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3)
  br label %.critedge

bb.o:                                             ; preds = %.preheader, %_dump_linked.exit
  %indvars.iv126 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next127, %_dump_linked.exit ] ; 3 uses
  %i.aj = load i64, ptr %i.u, align 8
  %i.ak = icmp ugt i64 %i.aj, %indvars.iv126
  br i1 %i.ak, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %i.v, align 8
  %i.am = getelementptr inbounds nuw [192 x i8], ptr %i.al, i64 %indvars.iv126 ; 21 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 4294967294
  %or.cond.i = and i1 %i.w, %i.ap
  %spec.select.i.idx = select i1 %or.cond.i, i64 %i.ao, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.idx ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = tail call ptr @data_define_dict_path(ptr noundef %4, ptr noundef nonnull %i.ar) #7, !inline_history !21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.079.i = phi ptr [ %i.as, %bb.q ], [ %4, %bb.p ] ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.au = load i32, ptr %i.at, align 4
  switch i32 %i.au, label %bb.af [
    i32 4, label %bb.s
    i32 5, label %bb.v
    i32 3, label %bb.z
  ]

bb.s:                                             ; preds = %bb.r
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aw = and i64 %i.av, 256
  %.not88.i = icmp eq i64 %i.aw, 0
  br i1 %.not88.i, label %_dump_linked.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = tail call i32 @get_log_level() #7, !inline_history !21
  %i.ay = icmp sgt i32 %i.ax, 3
  br i1 %i.ay, label %bb.u, label %_dump_linked.exit

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.x, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.am to i64
  %i.bf = load ptr, ptr %i.y, align 8
  %i.bg = ptrtoint ptr %spec.select.i to i64
  %i.bh = load ptr, ptr %i.aa, align 8
  %i.bi = load i64, ptr %i.ab, align 8
end_hunk_0
