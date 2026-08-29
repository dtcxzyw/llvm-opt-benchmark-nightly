Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/re?download=true
inline.NumInlined: 580
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@rb_reg_regsub:bb.a
RSTRING_PTR.exit180:                              ; preds = %.split.us, %bb.x
  %i.ck = phi ptr [ %i.cj, %bb.x ], [ %i.i, %.split.us ]
  %i.cl = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ptrtoint ptr %.us-phi to i64
  %i.cp = sub i64 %i.co, %i.cl
  %i.cq = call i64 @rb_str_subseq(i64 noundef %0, i64 noundef %i.cn, i64 noundef %i.cp) #28 ; 2 uses
  br i1 %i.v, label %.thread194, label %bb.y

bb.y:                                             ; preds = %RSTRING_PTR.exit180
  %i.cr = load i64, ptr %i.x, align 8, !tbaa !55
  %i.cs = call ptr @rb_enc_compatible(i64 noundef %i.cr, i64 noundef %i.cq) #28
  %.not172 = icmp eq ptr %i.cs, null
  br i1 %.not172, label %.thread194, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.cu = call i32 @onig_name_to_backref_number(ptr noundef %i.ct, ptr noundef %i.br, ptr noundef %.us-phi, ptr noundef %2) #28 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %.thread194, label %bb.aa

.thread194:                                       ; preds = %bb.y, %RSTRING_PTR.exit180, %bb.z
  call fastcc void @name_to_backref_error(i64 noundef %i.cq) #30
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !7
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %.us-phi, i64 %i.cx
  br label %.thread196

.critedge:                                        ; preds = %bb.s, %bb.w, %bb.u
  %i.cz = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cz, ptr noundef nonnull @.str.3) #29
  unreachable

.thread191:                                       ; preds = %bb.p, %bb.r, %bb.n
  %i.da = add nsw i64 %i.bd, %i.aj
  %i.db = call i64 @rb_enc_str_buf_cat(i64 noundef %.1156, ptr noundef %.0150211, i64 noundef %i.da, ptr noundef %i.b) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

bb.ab:                                            ; preds = %.thread236
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !37
  %i.dd = and i64 %i.dc, 8192
  %.not.i182 = icmp eq i64 %i.dd, 0
  br i1 %.not.i182, label %RSTRING_PTR.exit183, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !13
  br label %RSTRING_PTR.exit183

RSTRING_PTR.exit183:                              ; preds = %bb.ab, %bb.ac
  %i.df = phi ptr [ %i.de, %bb.ac ], [ %i.s, %bb.ab ]
  %i.dg = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.di = call i64 @rb_enc_str_buf_cat(i64 noundef %.1156, ptr noundef %i.df, i64 noundef %i.dh, ptr noundef %i.c) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

bb.ad:                                            ; preds = %.thread236
  %i.dj = load i64, ptr %i.r, align 8, !tbaa !37
  %i.dk = and i64 %i.dj, 8192
  %.not.i184 = icmp eq i64 %i.dk, 0
  br i1 %.not.i184, label %RSTRING_PTR.exit185, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !13
  br label %RSTRING_PTR.exit185

RSTRING_PTR.exit185:                              ; preds = %bb.ad, %bb.ae
  %i.dm = phi ptr [ %i.dl, %bb.ae ], [ %i.s, %bb.ad ]
  %i.dn = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dm, i64 %i.do
  %i.dq = load i64, ptr %i.u, align 8, !tbaa !38
  %i.dr = sub i64 %i.dq, %i.do
  %i.ds = call i64 @rb_enc_str_buf_cat(i64 noundef %.1156, ptr noundef %i.dp, i64 noundef %i.dr, ptr noundef %i.c) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

bb.af:                                            ; preds = %.thread236
  %i.dt = load i32, ptr %i.p, align 4, !tbaa !43
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !73
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.0149.in = phi i32 [ %i.dt, %bb.af ], [ %.0149, %bb.ag ] ; 2 uses
  %.0149 = add i32 %.0149.in, -1                  ; 4 uses
  %i.dv = sext i32 %.0149 to i64
  %i.dw = getelementptr [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.dy = icmp eq i64 %i.dx, -1
  %i.dz = icmp sgt i32 %.0149, 0
  %i.ea = and i1 %i.dz, %i.dy
  br i1 %i.ea, label %bb.ag, label %bb.ah, !llvm.loop !96

bb.ah:                                            ; preds = %bb.ag
  %i.eb = add i32 %.0149.in, -2
  %or.cond201 = icmp ult i32 %i.eb, 2147483647
  br i1 %or.cond201, label %.thread196, label %bb.an, !llvm.loop !94

bb.ai:                                            ; preds = %.thread236
  %i.ec = call i64 @rb_enc_str_buf_cat(i64 noundef %.1156, ptr noundef %i.ak, i64 noundef %i.bd, ptr noundef %i.b) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

bb.aj:                                            ; preds = %.thread236
  %i.ed = add nsw i64 %i.bd, %i.aj
  %i.ee = call i64 @rb_enc_str_buf_cat(i64 noundef %.1156, ptr noundef %.0150211, i64 noundef %i.ed, ptr noundef %i.b) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

.thread196:                                       ; preds = %bb.ah, %.thread236, %.thread236, %bb.aa, %bb.m
  %.1200 = phi i32 [ %.0149, %bb.ah ], [ 0, %.thread236 ], [ 0, %.thread236 ], [ %i.cu, %bb.aa ], [ %i.bh, %bb.m ] ; 2 uses
  %.1151199 = phi ptr [ %i.be, %bb.ah ], [ %i.be, %.thread236 ], [ %i.be, %.thread236 ], [ %i.cy, %bb.aa ], [ %i.be, %bb.m ] ; 6 uses
  %i.ef = load i32, ptr %i.p, align 4, !tbaa !43
  %.not174 = icmp slt i32 %.1200, %i.ef
  br i1 %.not174, label %bb.ak, label %bb.an, !llvm.loop !94

bb.ak:                                            ; preds = %.thread196
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.eh = zext nneg i32 %.1200 to i64             ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !19 ; 3 uses
  %i.ek = icmp eq i64 %i.ej, -1
  br i1 %i.ek, label %bb.an, label %bb.al, !llvm.loop !94

bb.al:                                            ; preds = %bb.ak
  %i.el = load i64, ptr %i.r, align 8, !tbaa !37
  %i.em = and i64 %i.el, 8192
  %.not.i186 = icmp eq i64 %i.em, 0
  br i1 %.not.i186, label %RSTRING_PTR.exit187, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = load ptr, ptr %i.s, align 8, !tbaa !13
  br label %RSTRING_PTR.exit187

RSTRING_PTR.exit187:                              ; preds = %bb.al, %bb.am
  %i.eo = phi ptr [ %i.en, %bb.am ], [ %i.s, %bb.al ]
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ej
  %i.eq = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %i.eh
  %i.es = load i64, ptr %i.er, align 8, !tbaa !19
  %i.et = sub i64 %i.es, %i.ej
  %i.eu = call i64 @rb_enc_str_buf_cat(i64 noundef %.1156, ptr noundef %i.ep, i64 noundef %i.et, ptr noundef %i.c) #28 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %RSTRING_PTR.exit187, %bb.ak, %.thread196, %bb.ah, %bb.k, %bb.l, %.thread235, %bb.aj, %bb.ai, %RSTRING_PTR.exit185, %RSTRING_PTR.exit183, %.thread191, %.thread189, %.thread
  %.2157 = phi i64 [ %.0155209, %.thread ], [ %.1156, %bb.ai ], [ %.1156, %.thread189 ], [ %.1156, %bb.aj ], [ %.0155209, %.thread235 ], [ %.1156, %bb.ah ], [ %.1156, %.thread196 ], [ %.1156, %bb.ak ], [ %.1156, %.thread191 ], [ %.1156, %RSTRING_PTR.exit183 ], [ %.1156, %RSTRING_PTR.exit185 ], [ %.1156, %bb.k ], [ %.1156, %bb.l ], [ %.1156, %RSTRING_PTR.exit187 ] ; 5 uses
  %.2154 = phi ptr [ %.0152210, %.thread ], [ %i.be, %bb.ai ], [ %i.ay, %.thread189 ], [ %i.be, %bb.aj ], [ %.0152210, %.thread235 ], [ %i.be, %bb.ah ], [ %.1151199, %.thread196 ], [ %.1151199, %bb.ak ], [ %i.be, %.thread191 ], [ %i.be, %RSTRING_PTR.exit183 ], [ %i.be, %RSTRING_PTR.exit185 ], [ %i.be, %bb.k ], [ %i.be, %bb.l ], [ %.1151199, %RSTRING_PTR.exit187 ] ; 4 uses
  %.2 = phi ptr [ %i.ag, %.thread ], [ %i.be, %bb.ai ], [ %i.ay, %.thread189 ], [ %i.be, %bb.aj ], [ %i.ak, %.thread235 ], [ %i.be, %bb.ah ], [ %.1151199, %.thread196 ], [ %.1151199, %bb.ak ], [ %i.be, %.thread191 ], [ %i.be, %RSTRING_PTR.exit183 ], [ %i.be, %RSTRING_PTR.exit185 ], [ %i.be, %bb.k ], [ %i.be, %bb.l ], [ %.1151199, %RSTRING_PTR.exit187 ] ; 2 uses
  %i.ev = icmp ult ptr %.2, %i.n
  br i1 %i.ev, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.an
  %.not = icmp eq i64 %.2157, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  %i.ew = icmp ult ptr %.2154, %i.n
  br i1 %i.ew, label %bb.ap, label %._crit_edge.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ex = ptrtoint ptr %i.n to i64
  %i.ey = ptrtoint ptr %.2154 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = call i64 @rb_enc_str_buf_cat(i64 noundef %.2157, ptr noundef %.2154, i64 noundef %i.ez, ptr noundef %i.b) #28 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %RSTRING_PTR.exit, %bb.ao, %bb.ap, %._crit_edge
  %.0158 = phi i64 [ %0, %._crit_edge ], [ %.2157, %bb.ap ], [ %.2157, %bb.ao ], [ %0, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0158
}

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #4

declare i64 @rb_enc_str_buf_cat(i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @onig_noname_group_capture_is_active(ptr noundef) local_unnamed_addr #4

declare ptr @rb_enc_compatible(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @name_to_backref_error(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr @rb_eIndexError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.102, i64 noundef %0) #29
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @rb_reg_timeout_p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 440
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %i.e = load i64, ptr @rb_reg_match_time_limit, align 8
  %spec.select = select i1 %.not, i64 %i.e, i64 %i.d ; 3 uses
  %.not12 = icmp eq i64 %spec.select, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_hrtime_now() #28       ; 2 uses
  %2 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 1, 0) %spec.select, i64 %i.f)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = add nuw i64 %i.f, %spec.select
  %.0.i = select i1 %3, i64 -1, i64 %4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ %.0.i, %bb.c ], [ -1, %bb.b ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_hrtime_now() #28
  %i.h = icmp ult i64 %i.a, %i.g
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.09 = phi i1 [ false, %bb.f ], [ true, %bb.e ]
  ret i1 %.09
}

declare i64 @rb_hrtime_now() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Regexp() local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @rb_eStandardError, align 8, !tbaa !19
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str.4, i64 noundef %i.a) #28
  store i64 %i.b, ptr @rb_eRegexpError, align 8, !tbaa !19
  %i.c = tail call i32 @onigenc_set_default_encoding(ptr noundef nonnull @OnigEncodingASCII) #28 ; 0 uses
  tail call void @onig_set_warn_func(ptr noundef nonnull @re_warn) #28
  tail call void @onig_set_verb_warn_func(ptr noundef nonnull @re_warn) #28
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.5, ptr noundef nonnull @get_LAST_MATCH_INFO, ptr noundef nonnull @match_setter) #28
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.6, ptr noundef nonnull @last_match_getter, ptr noundef null) #28
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.7, ptr noundef nonnull @prematch_getter, ptr noundef null) #28
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.8, ptr noundef nonnull @postmatch_getter, ptr noundef null) #28
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.9, ptr noundef nonnull @last_paren_match_getter, ptr noundef null) #28
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.5) #28
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.6) #28
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.7) #28
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.8) #28
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.9) #28
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.10, ptr noundef nonnull @ignorecase_getter, ptr noundef nonnull @ignorecase_setter) #28
  %i.d = load i64, ptr @rb_cObject, align 8, !tbaa !19
  %i.e = tail call i64 @rb_define_class(ptr noundef nonnull @.str.11, i64 noundef %i.d) #28 ; 2 uses
  store i64 %i.e, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_alloc_func(i64 noundef %i.e, ptr noundef nonnull @rb_reg_s_alloc) #28
  %i.f = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.f, ptr noundef nonnull @.str.12, ptr noundef nonnull @rb_class_new_instance_pass_kw, i32 noundef -1) #28
  %i.g = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.g, ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_reg_s_quote, i32 noundef 1) #28
  %i.h = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.h, ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_reg_s_quote, i32 noundef 1) #28
  %i.i = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_reg_s_union_m, i32 noundef -2) #28
  %i.j = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.j, ptr noundef nonnull @.str.16, ptr noundef nonnull @rb_reg_s_last_match, i32 noundef -1) #28
  %i.k = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.k, ptr noundef nonnull @.str.17, ptr noundef nonnull @rb_reg_s_try_convert, i32 noundef 1) #28
  %i.l = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.l, ptr noundef nonnull @.str.18, ptr noundef nonnull @rb_reg_s_linear_time_p, i32 noundef -1) #28
  %i.m = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.19, ptr noundef nonnull @rb_reg_initialize_m, i32 noundef -1) #28
  %i.n = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.20, ptr noundef nonnull @rb_reg_init_copy, i32 noundef 1) #28
  %i.o = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.21, ptr noundef nonnull @rb_reg_hash, i32 noundef 0) #28
  %i.p = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.22, ptr noundef nonnull @rb_reg_equal, i32 noundef 1) #28
  %i.q = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.q, ptr noundef nonnull @.str.23, ptr noundef nonnull @rb_reg_equal, i32 noundef 1) #28
  %i.r = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.24, ptr noundef nonnull @rb_reg_match, i32 noundef 1) #28
  %i.s = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.25, ptr noundef nonnull @rb_reg_eqq, i32 noundef 1) #28
  %i.t = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.t, ptr noundef nonnull @.str.26, ptr noundef nonnull @rb_reg_match2, i32 noundef 0) #28
  %i.u = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.u, ptr noundef nonnull @.str.27, ptr noundef nonnull @rb_reg_match_m, i32 noundef -1) #28
  %i.v = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.v, ptr noundef nonnull @.str.28, ptr noundef nonnull @rb_reg_match_m_p, i32 noundef -1) #28
  %i.w = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.w, ptr noundef nonnull @.str.29, ptr noundef nonnull @rb_reg_to_s, i32 noundef 0) #28
  %i.x = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.x, ptr noundef nonnull @.str.30, ptr noundef nonnull @rb_reg_inspect, i32 noundef 0) #28
  %i.y = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.y, ptr noundef nonnull @.str.31, ptr noundef nonnull @rb_reg_source, i32 noundef 0) #28
  %i.z = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.z, ptr noundef nonnull @.str.32, ptr noundef nonnull @rb_reg_casefold_p, i32 noundef 0) #28
  %i.aa = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.aa, ptr noundef nonnull @.str.33, ptr noundef nonnull @rb_reg_options_m, i32 noundef 0) #28
  %i.ab = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.ab, ptr noundef nonnull @.str.34, ptr noundef nonnull @rb_obj_encoding, i32 noundef 0) #28
  %i.ac = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.35, ptr noundef nonnull @rb_reg_fixed_encoding_p, i32 noundef 0) #28
  %i.ad = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.36, ptr noundef nonnull @rb_reg_names, i32 noundef 0) #28
  %i.ae = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.37, ptr noundef nonnull @rb_reg_named_captures, i32 noundef 0) #28
  %i.af = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.38, ptr noundef nonnull @rb_reg_timeout_get, i32 noundef 0) #28
  %i.ag = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  %i.ah = load i64, ptr @rb_eRegexpError, align 8, !tbaa !19
  %i.ai = tail call i64 @rb_define_class_under(i64 noundef %i.ag, ptr noundef nonnull @.str.39, i64 noundef %i.ah) #28
  store i64 %i.ai, ptr @rb_eRegexpTimeoutError, align 8, !tbaa !19
  %i.aj = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.aj, ptr noundef nonnull @.str.38, ptr noundef nonnull @rb_reg_s_timeout_get, i32 noundef 0) #28
  %i.ak = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_singleton_method(i64 noundef %i.ak, ptr noundef nonnull @.str.40, ptr noundef nonnull @rb_reg_s_timeout_set, i32 noundef 1) #28
  %i.al = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_const(i64 noundef %i.al, ptr noundef nonnull @.str.41, i64 noundef 3) #28
  %i.am = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_const(i64 noundef %i.am, ptr noundef nonnull @.str.42, i64 noundef 5) #28
  %i.an = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_const(i64 noundef %i.an, ptr noundef nonnull @.str.43, i64 noundef 9) #28
  %i.ao = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_const(i64 noundef %i.ao, ptr noundef nonnull @.str.44, i64 noundef 33) #28
  %i.ap = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  tail call void @rb_define_const(i64 noundef %i.ap, ptr noundef nonnull @.str.45, i64 noundef 65) #28
  tail call void @rb_global_variable(ptr noundef nonnull @reg_cache) #28
  %i.aq = load i64, ptr @rb_cObject, align 8, !tbaa !19
  %i.ar = tail call i64 @rb_define_class(ptr noundef nonnull @.str.46, i64 noundef %i.aq) #28 ; 2 uses
  store i64 %i.ar, ptr @rb_cMatch, align 8, !tbaa !19
  tail call void @rb_define_alloc_func(i64 noundef %i.ar, ptr noundef nonnull @match_alloc) #28
  %i.as = load i64, ptr @rb_cMatch, align 8, !tbaa !19 ; 6 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = and i64 %i.as, 7
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = or i1 %i.at, %i.av
  br i1 %i.aw, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = inttoptr i64 %i.as to ptr
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.as, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.az = trunc i64 %i.as to i1
  br i1 %i.az, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = and i64 %i.as, 254
  %i.bb = icmp eq i64 %i.ba, 12
  %spec.select.i = select i1 %i.bb, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.ay, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !19
  tail call void @rb_undef_method(i64 noundef %.0.i, ptr noundef nonnull @.str.47) #28
  %i.bc = load i64, ptr @rb_cMatch, align 8, !tbaa !19 ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = and i64 %i.bc, 7
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = or i1 %i.bd, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.bh = inttoptr i64 %i.bc to ptr
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  br label %rb_class_of.exit4

bb.i:                                             ; preds = %rb_class_of.exit
  switch i64 %i.bc, label %bb.l [
    i64 0, label %rb_class_of.exit4
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit4

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit4

bb.l:                                             ; preds = %bb.i
  %i.bj = trunc i64 %i.bc to i1
  br i1 %i.bj, label %rb_class_of.exit4, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = and i64 %i.bc, 254
  %i.bl = icmp eq i64 %i.bk, 12
  %spec.select.i3 = select i1 %i.bl, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit4

rb_class_of.exit4:                                ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.in.i1 = phi ptr [ %i.bi, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i3, %bb.m ]
  %.0.i2 = load i64, ptr %.0.in.i1, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@unescape_unicode_bmp:bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 1 dereferenceable(23) @.str.93, i64 noundef 23, i1 false) #28
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = call fastcc i32 @append_utf8(i64 noundef %i.e, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.c, ptr %0, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

declare i64 @ruby_scan_hex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @append_utf8(i64 noundef %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 5 uses
  %i.c = and i64 %0, -2048
  %or.cond.i = icmp eq i64 %i.c, 55296
  %i.d = icmp ugt i64 %0, 1114111
  %or.cond3.i = or i1 %i.d, %or.cond.i
  br i1 %or.cond3.i, label %check_unicode_range.exit, label %bb.b

check_unicode_range.exit:                         ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull align 1 dereferenceable(22) @.str.91, i64 noundef 22, i1 false) #28
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %0, 128
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = trunc nuw nsw i64 %0 to i32
  %i.g = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.75, i32 noundef %i.f) #28 ; 0 uses
  %i.h = call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull %i.a, i64 noundef 4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = call i32 @rb_uv_to_utf8(ptr noundef nonnull %i.b, i64 noundef %0) #28
  %i.j = sext i32 %i.i to i64
  %i.k = call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull %i.b, i64 noundef %i.j) #28 ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = call nonnull ptr @rb_utf8_encoding() #28 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %2, align 8, !tbaa !64
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %.not17 = icmp eq ptr %i.l, %i.n
  br i1 %.not17, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.92, i64 noundef 36, i1 false) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %.thread, %bb.g, %check_unicode_range.exit
  %.1 = phi i32 [ -1, %bb.g ], [ -1, %check_unicode_range.exit ], [ 0, %.thread ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @rb_uv_to_utf8(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_enc_reg_error_desc(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call i64 @rb_str_buf_new_cstr(ptr noundef nonnull %4) #28 ; 5 uses
  %i.c = tail call ptr @rb_default_internal_encoding() #28 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @rb_default_external_encoding() #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.f = tail call i64 @rb_enc_associate(i64 noundef %i.b, ptr noundef %2) #28 ; 0 uses
  %i.g = tail call i64 @rb_str_cat(i64 noundef %i.b, ptr noundef nonnull @.str.94, i64 noundef 3) #28 ; 0 uses
  tail call fastcc void @rb_reg_expr_str(i64 noundef %i.b, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %.0, i32 noundef 47)
  store i8 47, ptr %i.a, align 1, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.i = and i32 %3, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 109, ptr %i.h, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %i.k = and i32 %3, 1
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.0.i, i64 1
  store i8 105, ptr %.0.i, align 1, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi ptr [ %i.l, %bb.f ], [ %.0.i, %bb.e ] ; 3 uses
  %i.m = and i32 %3, 2
  %.not9.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i, label %option_to_str.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %.1.i, i64 1
  store i8 120, ptr %.1.i, align 1, !tbaa !13
  br label %option_to_str.exit

option_to_str.exit:                               ; preds = %bb.g, %bb.h
  %.2.i = phi ptr [ %i.n, %bb.h ], [ %.1.i, %bb.g ]
  store i8 0, ptr %.2.i, align 1, !tbaa !13
  %i.o = call i64 @rb_str_cat_cstr(i64 noundef %i.b, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.p = load i64, ptr @rb_eRegexpError, align 8, !tbaa !19
  %i.q = call i64 @rb_exc_new_str(i64 noundef %i.p, i64 noundef %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %i.q
}

declare i64 @rb_str_buf_new_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #10

declare i64 @rb_str_buf_append(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #10

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

declare i32 @onig_reg_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @onig_compile_ruby(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @rb_ractor_main_p_() local_unnamed_addr #4

declare i32 @rb_enc_get_index(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_uint(i64 noundef, i64 noundef) local_unnamed_addr #19

declare i64 @rb_memhash(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_end(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

declare i64 @rb_str_offset(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_to_str(i64 noundef) local_unnamed_addr #4

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #4

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #4

declare i64 @onig_search(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @onig_name_to_backref_number(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #21

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: cold
declare void @rb_category_warn(i32 noundef, ptr noundef, ...) local_unnamed_addr #16

declare i64 @rb_check_array_type(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_reg_s_union(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [90 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [1 x i64], align 8                ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 10 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.h, 15
  %i.k = and i64 %i.j, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  switch i64 %.0.i, label %bb.i [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.n = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.105, i64 noundef 4) #28
  store i64 %i.n, ptr %i.c, align 8, !tbaa !19
  %i.o = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  %i.p = call i64 @rb_class_new_instance(i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.ak

bb.e:                                             ; preds = %rb_array_len.exit
  %i.q = tail call i64 @rb_ary_entry(i64 noundef %0, i64 noundef 0) #27 ; 8 uses
  %i.r = tail call i64 @rb_check_convert_type(i64 noundef %i.q, i32 noundef 6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.109) #28 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.f, label %bb.ak

bb.f:                                             ; preds = %bb.e
  %i.t = and i64 %i.q, 255
  %i.u = icmp eq i64 %i.t, 12
  br i1 %i.u, label %RB_SYMBOL_P.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %i.q, 0
  %i.w = and i64 %i.q, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %RB_SYMBOL_P.exit.i.i

RB_SYMBOL_P.exit.i.i:                             ; preds = %bb.g
  %i.z = inttoptr i64 %i.q to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37
  %i.ab = and i64 %i.aa, 31
  switch i64 %i.ab, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i64 20, label %RB_SYMBOL_P.exit.thread.i.i
    i64 5, label %rb_reg_s_quote.exit
  ]

RB_SYMBOL_P.exit.thread.i.i:                      ; preds = %RB_SYMBOL_P.exit.i.i, %bb.f
  %i.ac = tail call i64 @rb_sym2str(i64 noundef %i.q) #28
  br label %rb_reg_s_quote.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %RB_SYMBOL_P.exit.i.i, %bb.g
  %i.ad = tail call i64 @rb_str_to_str(i64 noundef %i.q) #28
  br label %rb_reg_s_quote.exit

rb_reg_s_quote.exit:                              ; preds = %RB_SYMBOL_P.exit.i.i, %RB_SYMBOL_P.exit.thread.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.0.i.i = phi i64 [ %i.ac, %RB_SYMBOL_P.exit.thread.i.i ], [ %i.q, %RB_SYMBOL_P.exit.i.i ], [ %i.ad, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ]
  %i.ae = tail call i64 @rb_reg_quote(i64 noundef %.0.i.i) ; 2 uses
  %i.af = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  store volatile ptr %i.ah, ptr %i.b, align 8, !tbaa !44
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.af, i64 noundef 6, i32 noundef 0, i64 noundef 40) #28 ; 3 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(90) %i.a, i8 0, i64 90, i1 false)
  %i.al = call fastcc i32 @rb_reg_initialize_str(i64 noundef %i.ai, i64 noundef %i.ae, i32 noundef 0, ptr noundef %i.a, ptr noundef null, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %rb_reg_new_str.exit, label %bb.h

bb.h:                                             ; preds = %rb_reg_s_quote.exit
  call fastcc void @rb_reg_raise_str(i64 noundef %i.ae, i32 noundef 0, ptr noundef %i.a) #30
  unreachable

rb_reg_new_str.exit:                              ; preds = %rb_reg_s_quote.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ak

bb.i:                                             ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.am = tail call i64 @rb_str_buf_new(i64 noundef 0) #28 ; 5 uses
  store i64 %i.am, ptr %i.d, align 8, !tbaa !19
  %i.an = icmp sgt i64 %.0.i, 0
  br i1 %i.an, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.i, %bb.ah
  %i.ao = phi i64 [ %i.ct, %bb.ah ], [ 0, %bb.i ]
  %.0133 = phi ptr [ %.3, %bb.ah ], [ null, %bb.i ] ; 15 uses
  %.059132 = phi ptr [ %.362, %bb.ah ], [ null, %bb.i ] ; 15 uses
  %.063131 = phi i32 [ %.366, %bb.ah ], [ 0, %bb.i ] ; 8 uses
  %.068130 = phi i32 [ %i.cs, %bb.ah ], [ 0, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.ap = call i64 @rb_ary_entry(i64 noundef %0, i64 noundef %i.ao) #27 ; 2 uses
  store i64 %i.ap, ptr %i.f, align 8, !tbaa !19
  %i.aq = icmp sgt i32 %.068130, 0
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ar = call i64 @rb_str_buf_cat_ascii(i64 noundef %i.am, ptr noundef nonnull @.str.106) #28 ; 0 uses
  %.pre = load i64, ptr %i.f, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.as = phi i64 [ %.pre, %bb.j ], [ %i.ap, %.lr.ph ]
  %i.at = call i64 @rb_check_convert_type(i64 noundef %i.as, i32 noundef 6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.109) #28
  store volatile i64 %i.at, ptr %i.e, align 8, !tbaa !19
  %.0..0..0..0.14 = load volatile i64, ptr %i.e, align 8, !tbaa !19
  %i.au = icmp eq i64 %.0..0..0..0.14, 4
  br i1 %i.au, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0.15 = load volatile i64, ptr %i.e, align 8, !tbaa !19
  %i.av = call ptr @rb_enc_get(i64 noundef %.0..0..0..0.15) #28 ; 8 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 20
  %.val.i = load i32, ptr %i.aw, align 4, !tbaa !14
  %.not.i97 = icmp eq i32 %.val.i, 1
  br i1 %.not.i97, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.l
  %i.ax = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.av) #27
  %.not3.i = icmp eq i32 %i.ax, 0
  br i1 %.not3.i, label %bb.o, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.l, %rb_enc_asciicompat.exit
  %.not78 = icmp eq ptr %.0133, null
  br i1 %.not78, label %rb_reg_fixed_encoding_p.exit.thread, label %bb.m

bb.m:                                             ; preds = %rb_enc_asciicompat.exit.thread
  %.not79 = icmp eq ptr %.0133, %i.av
  br i1 %.not79, label %rb_reg_fixed_encoding_p.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  %i.az = getelementptr i8, ptr %.0133, i64 8
  %.0.val96 = load ptr, ptr %i.az, align 8, !tbaa !69
  %i.ba = getelementptr i8, ptr %i.av, i64 8
  %.val95 = load ptr, ptr %i.ba, align 8, !tbaa !69
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ay, ptr noundef nonnull @.str.107, ptr noundef %.0.val96, ptr noundef %.val95) #29
  unreachable

bb.o:                                             ; preds = %rb_enc_asciicompat.exit
  %.0..0..0..0.16 = load volatile i64, ptr %i.e, align 8, !tbaa !19 ; 3 uses
  %i.bb = icmp ne i64 %.0..0..0..0.16, 0
  %i.bc = and i64 %.0..0..0..0.16, 7
  %i.bd = icmp eq i64 %i.bc, 0
  %.not5.i.i = and i1 %i.bb, %i.bd
  br i1 %.not5.i.i, label %RB_FL_TEST.exit.i, label %rb_reg_fixed_encoding_p.exit.thread

RB_FL_TEST.exit.i:                                ; preds = %bb.o
  %i.be = inttoptr i64 %.0..0..0..0.16 to ptr
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !37
  %.fr4.i = freeze i64 %i.bf
  %i.bg = and i64 %.fr4.i, 65536
  %.not.i99 = icmp eq i64 %i.bg, 0
  br i1 %.not.i99, label %rb_reg_fixed_encoding_p.exit.thread, label %rb_reg_fixed_encoding_p.exit

rb_reg_fixed_encoding_p.exit:                     ; preds = %RB_FL_TEST.exit.i
  %.not81 = icmp eq ptr %.059132, null
  br i1 %.not81, label %rb_reg_fixed_encoding_p.exit.thread, label %bb.p

bb.p:                                             ; preds = %rb_reg_fixed_encoding_p.exit
  %.not82 = icmp eq ptr %.059132, %i.av
end_hunk_1
begin_hunk_2_@reg_init_args:bb.a
  unreachable

rb_reg_init_str.exit:                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.l

bb.l:                                             ; preds = %rb_reg_init_str.exit, %rb_reg_init_str_enc.exit
  ret i64 %0
}

declare i32 @onig_check_linear_time(ptr noundef) local_unnamed_addr #4

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_bool_expected(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #4

declare i32 @rb_block_given_p() local_unnamed_addr #4

declare i32 @rb_keyword_given_p() local_unnamed_addr #4

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, -7) i64 @reg_copy(i64 noundef returned %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !79

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !80

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #29
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i = or i1 %i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_check_frozen_inline.exit.i, label %bb.b, !prof !81

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_check_frozen_inline.exit.i

rb_check_frozen_inline.exit.i:                    ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.k = getelementptr i8, ptr %i.e, i64 16       ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %rb_reg_initialize_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_check_frozen_inline.exit.i
  %i.m = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.101) #29
  unreachable

rb_reg_initialize_check.exit:                     ; preds = %rb_check_frozen_inline.exit.i
  %i.n = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = call i32 @onig_reg_copy(ptr noundef nonnull %i.a, ptr noundef %i.p) #28 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_reg_initialize_check.exit
  %i.r = load i64, ptr @rb_eRegexpError, align 8, !tbaa !19
  %i.s = sext i32 %i.q to i64
  %i.t = call ptr @onig_error_code_to_format(i64 noundef %i.s) #28
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.97, ptr noundef %i.t) #29
  unreachable

bb.e:                                             ; preds = %rb_reg_initialize_check.exit
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !40
  %i.v = getelementptr i8, ptr %i.e, i64 24
  %i.w = getelementptr i8, ptr %i.n, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !55   ; 4 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !19
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rb_obj_write.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.x) #28
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !40
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.u, %bb.e ], [ %.pre, %bb.f ]
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.ae = getelementptr i8, ptr %i.ad, i64 440
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr i8, ptr %i.ac, i64 440
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !56
  call void @rb_enc_copy(i64 noundef %0, i64 noundef %1) #28
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !37
  %i.ai = and i64 %i.ah, 327680
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !37
  %i.ak = or i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.e, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %0
}

declare i32 @onig_reg_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @onig_error_code_to_format(i64 noundef) local_unnamed_addr #4

declare double @rb_num2dbl(i64 noundef) local_unnamed_addr #4

declare i64 @rb_obj_init_copy(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #4

declare i64 @rb_any_to_s(i64 noundef) local_unnamed_addr #4

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #4

declare i32 @onig_number_of_names(ptr noundef) local_unnamed_addr #4

declare i32 @onig_foreach_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @reg_names_iter(ptr noundef %0, ptr noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) #2 {
bb.a:
  %i.a = ptrtoint ptr %5 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr i8, ptr %4, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = tail call i64 @rb_enc_str_new(ptr noundef %0, i64 noundef %i.d, ptr noundef %i.f) #28
  %i.h = tail call i64 @rb_ary_push(i64 noundef %i.a, i64 noundef %i.g) #28 ; 0 uses
  ret i32 0
}

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @reg_named_captures_iter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) #2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @rb_ary_new_capa(i64 noundef %i.a) #28 ; 2 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.d = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, 1
  tail call void @rb_ary_store(i64 noundef %i.b, i64 noundef %indvars.iv, i64 noundef %i.h) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = ptrtoint ptr %5 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = tail call i64 @rb_str_new(ptr noundef %0, i64 noundef %i.l) #28
  %i.n = tail call i64 @rb_hash_aset(i64 noundef %i.i, i64 noundef %i.m, i64 noundef %i.b) #28 ; 0 uses
  ret i32 0
}

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_float_new(double noundef) local_unnamed_addr #4

declare void @rb_ractor_ensure_main_ractor(ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #22

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @update_char_offset(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 12 uses
  %i.b = getelementptr i8, ptr %i.a, i64 64       ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !104
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !105  ; 9 uses
  %i.f = icmp sgt i32 %i.e, 0                     ; 4 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 56       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.i = zext nneg i32 %i.e to i64
  %i.j = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.h, i64 noundef %i.i, i64 noundef 16) #35
  store ptr %i.j, ptr %i.g, align 8, !tbaa !106
  store i32 %i.e, ptr %i.b, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !75
  %i.m = tail call ptr @rb_enc_get(i64 noundef %i.l) #28 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val = load i32, ptr %i.n, align 8, !tbaa !70
  %i.o = icmp eq i32 %.val, 1
  br i1 %i.o, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %i.f, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %.preheader
  %i.p = getelementptr i8, ptr %i.a, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73   ; 3 uses
  %i.r = getelementptr i8, ptr %i.a, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106  ; 3 uses
  %i.t = getelementptr i8, ptr %i.a, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %wide.trip.count131 = zext nneg i32 %i.e to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count131, 1
  %i.v = icmp eq i32 %i.e, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph114.new

.lr.ph114.new:                                    ; preds = %.lr.ph114
  %unroll_iter = and i64 %wide.trip.count131, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph114.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph114.new ], [ %indvars.iv.next129.1, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph114.new ], [ %niter.next.1, %bb.e ]
  %i.w = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr [16 x i8], ptr %i.s, i64 %indvars.iv128 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !109
  %i.z = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv128
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !111
  %indvars.iv.next129 = or disjoint i64 %indvars.iv128, 1 ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.next129
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr [16 x i8], ptr %i.s, i64 %indvars.iv.next129 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !109
  %i.af = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next129
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !111
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !142

bb.f:                                             ; preds = %bb.d
  %i.ai = shl i32 %i.e, 1                         ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.g, label %rbimpl_size_mul_or_raise.exit, !prof !107

bb.g:                                             ; preds = %bb.f
  tail call void @ruby_malloc_size_overflow(i64 noundef 16, i64 noundef %i.aj) #29
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.f
  %i.al = shl nuw nsw i64 %i.aj, 4
  %i.am = alloca i8, i64 %i.al, align 16          ; 8 uses
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %rbimpl_size_mul_or_raise.exit
  %i.an = getelementptr i8, ptr %i.a, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !73
  %i.ap = getelementptr i8, ptr %i.a, i64 48
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.078105 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.j ] ; 4 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !19 ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = add i32 %.078105, 1
  %i.au = sext i32 %.078105 to i64
  %i.av = getelementptr [16 x i8], ptr %i.am, i64 %i.au
  store i64 %i.ar, ptr %i.av, align 16, !tbaa !143
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !74
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.az = add i32 %.078105, 2
  %i.ba = sext i32 %i.at to i64
  %i.bb = getelementptr [16 x i8], ptr %i.am, i64 %i.ba
  store i64 %i.ay, ptr %i.bb, align 16, !tbaa !143
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %.078105, %bb.h ], [ %i.az, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.j, %rbimpl_size_mul_or_raise.exit
  %.078.lcssa = phi i32 [ 0, %rbimpl_size_mul_or_raise.exit ], [ %.1, %bb.j ] ; 3 uses
  %i.bc = sext i32 %.078.lcssa to i64             ; 3 uses
  call void @qsort(ptr noundef nonnull %i.am, i64 noundef %i.bc, i64 noundef 16, ptr noundef nonnull @pair_byte_cmp) #28
  %i.bd = load i64, ptr %i.k, align 8, !tbaa !75
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !37
  %i.bg = and i64 %i.bf, 8192
  %.not.i = icmp eq i64 %i.bg, 0
  %i.bh = getelementptr i8, ptr %i.be, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %._crit_edge, %bb.k
  %i.bj = phi ptr [ %i.bi, %bb.k ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.bk = icmp sgt i32 %.078.lcssa, 0
  br i1 %i.bk, label %.lr.ph109.preheader, label %.preheader101

.lr.ph109.preheader:                              ; preds = %RSTRING_PTR.exit
  %wide.trip.count121 = zext nneg i32 %.078.lcssa to i64
  br label %.lr.ph109

.preheader101:                                    ; preds = %.lr.ph109, %RSTRING_PTR.exit
  br i1 %i.f, label %.lr.ph112, label %.loopexit

.lr.ph112:                                        ; preds = %.preheader101
  %i.bl = getelementptr i8, ptr %i.a, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !73
  %i.bn = getelementptr i8, ptr %i.a, i64 56      ; 2 uses
  %i.bo = getelementptr i8, ptr %i.a, i64 48
  %wide.trip.count126 = zext nneg i32 %i.e to i64
  br label %bb.l

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %indvars.iv118 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next119, %.lr.ph109 ] ; 2 uses
  %.0108 = phi ptr [ %i.bj, %.lr.ph109.preheader ], [ %i.br, %.lr.ph109 ]
  %.077107 = phi i64 [ 0, %.lr.ph109.preheader ], [ %i.bt, %.lr.ph109 ]
  %i.bp = getelementptr [16 x i8], ptr %i.am, i64 %indvars.iv118 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 16, !tbaa !143
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq  ; 2 uses
  %i.bs = call i64 @rb_enc_strlen(ptr noundef %.0108, ptr noundef %i.br, ptr noundef %i.m) #28
  %i.bt = add i64 %i.bs, %.077107                 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bp, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !146
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %.preheader101, label %.lr.ph109, !llvm.loop !147

bb.l:                                             ; preds = %.lr.ph112, %bb.s
  %indvars.iv123 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next124, %bb.s ] ; 5 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bm, i64 %indvars.iv123
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !19 ; 3 uses
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %.lr.ph.i.outer

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !106
  %i.bz = getelementptr [16 x i8], ptr %i.by, i64 %indvars.iv123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 -1, i64 16, i1 false)
  br label %bb.s

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.o
  %.01620.i = phi i64 [ %i.ch, %bb.o ], [ %.01620.i.ph, %.lr.ph.i.outer ] ; 2 uses
  %i.ca = add i64 %.01620.i, %.021.i.ph
  %i.cb = lshr i64 %i.ca, 1                       ; 3 uses
  %i.cc = shl i64 %i.cb, 4                        ; 2 uses
  %i.cd = getelementptr i8, ptr %i.am, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 16, !tbaa !143 ; 2 uses
  %i.cf = sub i64 %i.bw, %i.ce
  %.not.i96 = icmp ne i64 %i.bw, %i.ce            ; 2 uses
  %i.cg = icmp slt i64 %i.cf, 1
  %narrow = and i1 %.not.i96, %i.cg
  br i1 %narrow, label %.lr.ph.i.outer, label %bb.n

.lr.ph.i.outer:                                   ; preds = %.lr.ph.i, %bb.l
  %.021.i.ph = phi i64 [ %i.bc, %bb.l ], [ %i.cb, %.lr.ph.i ]
  %.01620.i.ph = phi i64 [ 0, %bb.l ], [ %.01620.i, %.lr.ph.i ]
  br label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  br i1 %.not.i96, label %bb.o, label %bsearch.exit

bb.o:                                             ; preds = %bb.n
  %i.ch = add nuw i64 %i.cb, 1
  br label %.lr.ph.i

bsearch.exit:                                     ; preds = %bb.n
  %i.ci = getelementptr i8, ptr %i.am, i64 %i.cc
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !146
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !106
  %i.cm = getelementptr [16 x i8], ptr %i.cl, i64 %indvars.iv123 ; 2 uses
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !109
  %i.cn = load ptr, ptr %i.bo, align 8, !tbaa !74
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %indvars.iv123
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !19 ; 2 uses
  br label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %bb.r, %bsearch.exit
  %.021.i89 = phi i64 [ %.1.i93, %bb.r ], [ %i.bc, %bsearch.exit ] ; 2 uses
  %.01620.i90 = phi i64 [ %.117.i92, %bb.r ], [ 0, %bsearch.exit ] ; 2 uses
  %i.cq = add i64 %.01620.i90, %.021.i89
  %i.cr = lshr i64 %i.cq, 1                       ; 3 uses
  %i.cs = shl i64 %i.cr, 4                        ; 2 uses
  %i.ct = getelementptr i8, ptr %i.am, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 16, !tbaa !143 ; 2 uses
  %i.cv = sub i64 %i.cp, %i.cu
  %.not.i97 = icmp ne i64 %i.cp, %i.cu            ; 2 uses
  %i.cw = icmp slt i64 %i.cv, 1
  %narrow100 = and i1 %.not.i97, %i.cw
  br i1 %narrow100, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i88
  br i1 %.not.i97, label %bb.q, label %bsearch.exit95

bb.q:                                             ; preds = %bb.p
  %i.cx = add nuw i64 %i.cr, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i88
  %.117.i92 = phi i64 [ %i.cx, %bb.q ], [ %.01620.i90, %.lr.ph.i88 ] ; 2 uses
  %.1.i93 = phi i64 [ %.021.i89, %bb.q ], [ %i.cr, %.lr.ph.i88 ] ; 2 uses
  %i.cy = icmp ult i64 %.117.i92, %.1.i93
  call void @llvm.assume(i1 %i.cy)
  br label %.lr.ph.i88

bsearch.exit95:                                   ; preds = %bb.p
  %i.cz = getelementptr i8, ptr %i.am, i64 %i.cs
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !146
  %i.dc = getelementptr i8, ptr %i.cm, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !111
  br label %bb.s

bb.s:                                             ; preds = %bsearch.exit95, %bb.m
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.loopexit, label %bb.l, !llvm.loop !148

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph114
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next129.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod146 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.dd = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv128.epil.init
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !19
  %i.df = getelementptr [16 x i8], ptr %i.s, i64 %indvars.iv128.epil.init ; 2 uses
  store i64 %i.de, ptr %i.df, align 8, !tbaa !109
  %i.dg = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv128.epil.init
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.di = getelementptr i8, ptr %i.df, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !111
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader101, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @pair_byte_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #24 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !143    ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !143    ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %.not = icmp eq i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = select i1 %i.d, i32 1, i32 -1
  %i.f = select i1 %.not, i32 0, i32 %i.e
  ret i32 %i.f
}

declare i64 @rb_enc_strlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @namev_to_backref_number(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 255
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %RB_SYMBOL_P.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.b
  %i.g = inttoptr i64 %2 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 20
  br i1 %i.j, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.a, %RB_SYMBOL_P.exit
  %i.k = tail call i64 @rb_sym2str(i64 noundef %2) #28
  br label %bb.c

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_SYMBOL_P.exit
  %i.l = inttoptr i64 %2 to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !37
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 5
  br i1 %i.o, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %RB_SYMBOL_P.exit.thread
  %.0 = phi i64 [ %i.k, %RB_SYMBOL_P.exit.thread ], [ %2, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 3 uses
  %i.p = icmp eq i64 %1, 4
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !55
  %i.t = tail call ptr @rb_enc_compatible(i64 noundef %i.s, i64 noundef %.0) #28
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = inttoptr i64 %.0 to ptr                  ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !37
  %i.w = and i64 %i.v, 8192
  %.not.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.u, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13
  br label %RSTRING_PTR.exit.thread

RSTRING_PTR.exit.thread:                          ; preds = %bb.e, %bb.f
  %i.z = phi ptr [ %i.y, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !38
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.q, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.af = tail call i32 @onig_name_to_backref_number(ptr noundef %i.ae, ptr noundef %i.z, ptr noundef %i.ac, ptr noundef %0) #28 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

.thread:                                          ; preds = %bb.d, %bb.c, %RSTRING_PTR.exit.thread
  tail call fastcc void @name_to_backref_error(i64 noundef %.0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %RSTRING_PTR.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %.013 = phi i32 [ -1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.af, %RSTRING_PTR.exit.thread ], [ -1, %bb.b ]
  ret i32 %.013
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @match_ary_aref(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.d = getelementptr i8, ptr %i.c, i64 36       ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  %i.f = sext i32 %i.e to i64
  %i.g = icmp ne i64 %2, 4                        ; 2 uses
  %i.h = zext i1 %i.g to i32
  %i.i = call i64 @rb_range_beg_len(i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.f, i32 noundef %i.h) #28 ; 2 uses
  switch i64 %i.i, label %bb.u [
    i64 0, label %bb.b
    i64 4, label %rb_reg_nth_match.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %1 to i1                       ; 2 uses
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.l = call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  %i.m = trunc i64 %.0.i to i32                   ; 4 uses
  %i.n = icmp eq i64 %0, 4
  br i1 %i.n, label %rb_reg_nth_match.exit, label %bb.f

bb.f:                                             ; preds = %rb_num2int_inline.exit
  %i.o = getelementptr i8, ptr %i.c, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.g, label %match_check.exit.i

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.76) #29
  unreachable

match_check.exit.i:                               ; preds = %bb.f
  %i.r = load i32, ptr %i.d, align 4, !tbaa !43   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, %i.m
  br i1 %.not.i, label %bb.h, label %rb_reg_nth_match.exit

bb.h:                                             ; preds = %match_check.exit.i
  %i.s = icmp slt i32 %i.m, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = add i32 %i.r, %i.m                       ; 2 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %rb_reg_nth_match.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.020.i = phi i32 [ %i.t, %bb.i ], [ %i.m, %bb.h ]
  %i.v = getelementptr i8, ptr %i.c, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = zext nneg i32 %.020.i to i64             ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19   ; 3 uses
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %rb_reg_nth_match.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.c, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.x
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.af = sub i64 %i.ae, %i.z
  %i.ag = getelementptr i8, ptr %i.c, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !75
  %i.ai = call i64 @rb_str_subseq(i64 noundef %i.ah, i64 noundef %i.z, i64 noundef %i.af) #28
  br label %rb_reg_nth_match.exit

bb.l:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit16

bb.n:                                             ; preds = %bb.l
  %i.ak = call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit16

rb_num2int_inline.exit16:                         ; preds = %bb.m, %bb.n
  %.0.i15 = phi i64 [ %i.aj, %bb.m ], [ %i.ak, %bb.n ]
  %i.al = trunc i64 %.0.i15 to i32                ; 4 uses
  %i.am = icmp eq i64 %0, 4
  br i1 %i.am, label %rb_reg_nth_match.exit22, label %bb.o

bb.o:                                             ; preds = %rb_num2int_inline.exit16
  %i.an = getelementptr i8, ptr %i.c, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !34
  %.not.i.i17 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i17, label %bb.p, label %match_check.exit.i18

bb.p:                                             ; preds = %bb.o
end_hunk_2
begin_hunk_3_@match_ary_subseq:bb.a

bb.e:                                             ; preds = %match_check.exit.i
  %i.v = icmp slt i32 %i.r, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = add i32 %i.u, %i.r                       ; 2 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %rb_reg_nth_match.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.020.i = phi i32 [ %i.w, %bb.f ], [ %i.r, %bb.e ]
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.z = zext nneg i32 %.020.i to i64             ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %rb_reg_nth_match.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.ag = sub i64 %i.af, %i.ab
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !75
  %i.ai = tail call i64 @rb_str_subseq(i64 noundef %i.ah, i64 noundef %i.ab, i64 noundef %i.ag) #28
  br label %rb_reg_nth_match.exit

rb_reg_nth_match.exit:                            ; preds = %match_check.exit.i, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.ai, %bb.h ], [ 4, %bb.g ], [ 4, %match_check.exit.i ], [ 4, %bb.f ]
  %i.aj = tail call i64 @rb_ary_push(i64 noundef %.028, i64 noundef %.0.i) #28 ; 0 uses
  %i.ak = add nsw i64 %.034, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !149

._crit_edge:                                      ; preds = %rb_reg_nth_match.exit, %rb_reg_nth_match.exit.us, %.preheader
  %.0.lcssa = phi i64 [ %1, %.preheader ], [ %i.f, %rb_reg_nth_match.exit.us ], [ %i.f, %rb_reg_nth_match.exit ] ; 2 uses
  %i.al = icmp sgt i64 %i.e, %.0.lcssa
  br i1 %i.al, label %bb.i, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  %i.am = inttoptr i64 %.028 to ptr               ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.ao = and i64 %i.an, 8192
  %.not.i31 = icmp eq i64 %i.ao, 0
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = lshr i64 %i.an, 15
  %i.aq = and i64 %i.ap, 127
  br label %rb_array_len.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %i.am, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !13
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.j, %bb.k
  %.0.i32 = phi i64 [ %i.aq, %bb.j ], [ %i.as, %bb.k ]
  %i.at = sub i64 %i.e, %.0.lcssa
  %i.au = add i64 %i.at, %.0.i32
  %i.av = tail call i64 @rb_ary_resize(i64 noundef %.028, i64 noundef %i.au) #28 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %rb_array_len.exit, %bb.c
  ret i64 %.028
}

declare i64 @rb_range_beg_len(i64 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_ary_resize(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @match_named_captures_iter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %i.c = getelementptr i8, ptr %5, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %i.e = getelementptr i8, ptr %5, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr i8, ptr %4, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call i64 @rb_enc_str_new(ptr noundef %0, i64 noundef %i.i, ptr noundef %i.k) #28 ; 2 uses
  %i.m = icmp sgt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i64 @rb_str_intern(i64 noundef %i.l) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi i64 [ %i.n, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.p = icmp eq i64 %i.d, 4
  %i.q = inttoptr i64 %i.d to ptr                 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = getelementptr i8, ptr %i.q, i64 36
  %i.t = getelementptr i8, ptr %i.q, i64 40
  %i.u = getelementptr i8, ptr %i.q, i64 48
  %i.v = getelementptr i8, ptr %i.q, i64 16
  br i1 %i.p, label %._crit_edge.thread, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %.lr.ph.split.outer

.lr.ph.split.outer:                               ; preds = %rb_reg_nth_match.exit.thread.thread, %.lr.ph.split.preheader
  %indvars.iv.ph = phi i64 [ %indvars.iv.next36, %rb_reg_nth_match.exit.thread.thread ], [ 0, %.lr.ph.split.preheader ]
  %i.w = phi i1 [ false, %rb_reg_nth_match.exit.thread.thread ], [ true, %.lr.ph.split.preheader ]
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.outer, %rb_reg_nth_match.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %rb_reg_nth_match.exit.thread ], [ %indvars.iv.ph, %.lr.ph.split.outer ] ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7    ; 4 uses
  %i.z = load i64, ptr %i.r, align 8, !tbaa !34
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.d, label %match_check.exit.i

bb.d:                                             ; preds = %.lr.ph.split
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.76) #29
  unreachable

match_check.exit.i:                               ; preds = %.lr.ph.split
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !43  ; 2 uses
  %.not.i = icmp slt i32 %i.y, %i.ab
  br i1 %.not.i, label %bb.e, label %rb_reg_nth_match.exit.thread

bb.e:                                             ; preds = %match_check.exit.i
  %i.ac = icmp slt i32 %i.y, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = add i32 %i.ab, %i.y                     ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %rb_reg_nth_match.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.020.i = phi i32 [ %i.ad, %bb.f ], [ %i.y, %bb.e ]
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.ag = zext nneg i32 %.020.i to i64            ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !19 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %rb_reg_nth_match.exit.thread, label %rb_reg_nth_match.exit

rb_reg_nth_match.exit:                            ; preds = %bb.g
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %i.ag
  %i.am = load i64, ptr %i.al, align 8, !tbaa !19
  %i.an = sub i64 %i.am, %i.ai
  %i.ao = load i64, ptr %i.v, align 8, !tbaa !75
  %i.ap = tail call i64 @rb_str_subseq(i64 noundef %i.ao, i64 noundef %i.ai, i64 noundef %i.an) #28 ; 2 uses
  %i.aq = and i64 %i.ap, -5
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %rb_reg_nth_match.exit.thread, label %rb_reg_nth_match.exit.thread.thread

rb_reg_nth_match.exit.thread:                     ; preds = %bb.g, %bb.f, %match_check.exit.i, %rb_reg_nth_match.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !153

rb_reg_nth_match.exit.thread.thread:              ; preds = %rb_reg_nth_match.exit
  %i.ar = tail call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %.023, i64 noundef %i.ap) #28 ; 0 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not37 = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond.not37, label %._crit_edge.thread39, label %.lr.ph.split.outer, !llvm.loop !153

._crit_edge:                                      ; preds = %rb_reg_nth_match.exit.thread
  br i1 %i.w, label %._crit_edge.thread, label %._crit_edge.thread39

._crit_edge.thread:                               ; preds = %.lr.ph, %bb.c, %._crit_edge
  %i.as = tail call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %.023, i64 noundef 4) #28 ; 0 uses
  br label %._crit_edge.thread39

._crit_edge.thread39:                             ; preds = %rb_reg_nth_match.exit.thread.thread, %._crit_edge.thread, %._crit_edge
  ret i32 0
}

declare i64 @rb_imemo_new(i32 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i64 @rb_str_intern(i64 noundef) local_unnamed_addr #4

declare i64 @rb_class_path(i64 noundef) local_unnamed_addr #4

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #4

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal noundef i32 @match_inspect_name_iter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #25 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %2, 4
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.f = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr %5, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !115
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store i64 %i.d, ptr %i.j, align 8, !tbaa !117
  %i.k = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [16 x i8], ptr %5, i64 %i.n ; 2 uses
  store ptr %0, ptr %i.o, align 8, !tbaa !115
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store i64 %i.d, ptr %i.p, align 8, !tbaa !117
  %i.q = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [16 x i8], ptr %5, i64 %i.t ; 2 uses
  store ptr %0, ptr %i.u, align 8, !tbaa !115
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store i64 %i.d, ptr %i.v, align 8, !tbaa !117
  %i.w = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.x = getelementptr i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [16 x i8], ptr %5, i64 %i.z ; 2 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !115
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !154

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ac = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [16 x i8], ptr %5, i64 %i.ae ; 2 uses
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store i64 %i.d, ptr %i.ag, align 8, !tbaa !117
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !155

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  ret i32 0
}

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_str_inspect(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_start(i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_hash(i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_equal(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #21

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { cold nounwind }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { nounwind allocsize(1,2) }
attributes #36 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !8, i64 20}
!15 = !{!"OnigEncodingTypeST", !16, i64 0, !17, i64 8, !8, i64 16, !8, i64 20, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !8, i64 128, !8, i64 132}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"branch_weights", i32 0, i32 -290966296, i32 2001000, i32 1000}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !9, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = !{!32, !8, i64 0}
!32 = !{!"re_registers", !8, i64 0, !8, i64 4, !33, i64 8, !33, i64 16}
!33 = !{!"p1 long", !16, i64 0}
!34 = !{!35, !20, i64 24}
!35 = !{!"RMatch", !36, i64 0, !20, i64 16, !20, i64 24}
!36 = !{!"RBasic", !20, i64 0, !20, i64 8}
!37 = !{!36, !20, i64 0}
!38 = !{!39, !20, i64 16}
!39 = !{!"RString", !36, i64 0, !20, i64 16, !9, i64 24}
!40 = !{!41, !42, i64 16}
!41 = !{!"RRegexp", !36, i64 0, !42, i64 16, !20, i64 24, !20, i64 32}
!42 = !{!"p1 _ZTS17re_pattern_buffer", !16, i64 0}
!43 = !{!32, !8, i64 4}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTS27rb_execution_context_struct", !16, i64 0}
!46 = !{!47, !33, i64 8}
!47 = !{!"rb_matchext_struct", !32, i64 0, !48, i64 24, !8, i64 32}
!48 = !{!"p1 _ZTS13rmatch_offset", !16, i64 0}
!49 = !{!47, !33, i64 16}
!50 = !{!42, !42, i64 0}
!51 = !{!52, !53, i64 72}
!52 = !{!"re_pattern_buffer", !17, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !16, i64 64, !53, i64 72, !16, i64 80, !16, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !20, i64 112, !20, i64 120, !8, i64 128, !17, i64 136, !17, i64 144, !9, i64 152, !54, i64 408, !54, i64 416, !20, i64 424, !20, i64 432, !20, i64 440, !42, i64 448}
!53 = !{!"p1 _ZTS18OnigEncodingTypeST", !16, i64 0}
!54 = !{!"p1 int", !16, i64 0}
!55 = !{!41, !20, i64 24}
!56 = !{!52, !20, i64 440}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTS16rb_ractor_struct", !16, i64 0}
!59 = !{!41, !20, i64 32}
!60 = !{!52, !8, i64 56}
!61 = !{!16, !16, i64 0}
!62 = !{i64 0, i64 8, !63, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 4, !7, i64 32, i64 4, !7, i64 36, i64 4, !7, i64 40, i64 4, !7, i64 44, i64 4, !7, i64 48, i64 4, !7, i64 52, i64 4, !7, i64 56, i64 4, !7, i64 64, i64 8, !61, i64 72, i64 8, !64, i64 80, i64 8, !61, i64 88, i64 8, !61, i64 96, i64 4, !7, i64 100, i64 4, !7, i64 104, i64 4, !7, i64 108, i64 4, !7, i64 112, i64 8, !19, i64 120, i64 8, !19, i64 128, i64 4, !7, i64 136, i64 8, !63, i64 144, i64 8, !63, i64 152, i64 256, !13, i64 408, i64 8, !65, i64 416, i64 8, !65, i64 424, i64 8, !19, i64 432, i64 8, !19, i64 440, i64 8, !19, i64 448, i64 8, !50}
!63 = !{!17, !17, i64 0}
!64 = !{!53, !53, i64 0}
!65 = !{!54, !54, i64 0}
!66 = !{!33, !33, i64 0}
!67 = !{i64 2155818009}
!68 = !{i64 2155818179}
!69 = !{!15, !17, i64 8}
!70 = !{!15, !8, i64 16}
!71 = !{!15, !16, i64 104}
!72 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 8, !66, i64 16, i64 8, !66}
!73 = !{!32, !33, i64 8}
!74 = !{!32, !33, i64 16}
!75 = !{!35, !20, i64 16}
!76 = distinct !{!76, !12}
!77 = !{i64 2155835616}
!78 = distinct !{!78, !12}
!79 = !{!"branch_weights", i32 2146410443, i32 1073205}
!80 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!81 = !{!"branch_weights", i32 4001, i32 1}
!82 = !{!41, !20, i64 0}
!83 = !{i64 2155836799}
!84 = distinct !{!84, !12}
!85 = !{ptr @rb_str_new, ptr @rb_str_new_static}
!86 = distinct !{!86, !12, !26, !27}
!87 = !{!"branch_weights", i32 4, i32 28}
!88 = distinct !{!88, !12, !26, !27}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !12, !26}
!91 = !{!15, !16, i64 48}
!92 = distinct !{null}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = !{!"branch_weights", i32 1073205, i32 2146410443}
!98 = !{!"branch_weights", !"expected", i32 2146584368, i32 899280}
!99 = !{!100, !20, i64 0}
!100 = !{!"reg_init_args", !20, i64 0, !20, i64 8, !53, i64 16, !8, i64 24}
!101 = !{!100, !53, i64 16}
!102 = !{!100, !8, i64 24}
!103 = !{!100, !20, i64 8}
!104 = !{!47, !8, i64 32}
!105 = !{!47, !8, i64 4}
!106 = !{!47, !48, i64 24}
!107 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!108 = !{i64 2155811774}
!109 = !{!110, !20, i64 0}
!110 = !{!"rmatch_offset", !20, i64 0, !20, i64 8}
!111 = !{!110, !20, i64 8}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = !{!116, !17, i64 0}
!116 = !{!"backref_name_tag", !17, i64 0, !20, i64 8}
!117 = !{!116, !20, i64 8}
!118 = distinct !{!118, !12, !119}
!119 = !{!"llvm.loop.peeled.count", i32 1}
!120 = distinct !{!120, !12, !119}
!121 = !{i64 2155801990}
!122 = !{!15, !16, i64 88}
!123 = distinct !{null}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
!126 = !{!15, !16, i64 32}
!127 = distinct !{null}
!128 = distinct !{null}
!129 = distinct !{!129, !12}
!130 = distinct !{!130, !12}
!131 = distinct !{!131, !12}
!132 = distinct !{!132, !12}
!133 = distinct !{!133, !12}
!134 = distinct !{!134, !12}
!135 = distinct !{!135, !12}
!136 = distinct !{!136, !12}
!137 = distinct !{!137, !12}
!138 = distinct !{!138, !12}
!139 = !{i64 2155805299}
!140 = distinct !{!140, !12}
!141 = distinct !{!141, !12}
!142 = distinct !{!142, !12}
!143 = !{!144, !20, i64 0}
!144 = !{!"", !20, i64 0, !20, i64 8}
!145 = distinct !{!145, !12}
!146 = !{!144, !20, i64 8}
!147 = distinct !{!147, !12}
!148 = distinct !{!148, !12}
!149 = distinct !{!149, !12}
!150 = !{!151, !20, i64 16}
!151 = !{!"MEMO", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !9, i64 32}
!152 = !{!151, !20, i64 24}
!153 = distinct !{!153, !12}
!154 = distinct !{!154, !12}
!155 = distinct !{!155, !22}
end_hunk_3
