Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ruby?download=true
inline.NumInlined: 260
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@load_file_internal:bb.a
  %i.dq = load i64, ptr %i.p, align 8, !tbaa !92  ; 2 uses
  %.not134 = icmp eq i64 %i.dq, 0
  br i1 %.not134, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = inttoptr i64 %i.dq to ptr               ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !26
  %i.dt = and i64 %i.ds, 8192
  %.not.i.i145 = icmp eq i64 %i.dt, 0
  %i.du = getelementptr i8, ptr %i.dr, i64 24     ; 2 uses
  br i1 %.not.i.i145, label %RSTRING_PTR.exit.i146, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !17
  br label %RSTRING_PTR.exit.i146

RSTRING_PTR.exit.i146:                            ; preds = %bb.aq, %bb.ap
  %i.dw = phi ptr [ %i.dv, %bb.aq ], [ %i.du, %bb.ap ] ; 3 uses
  %i.dx = tail call i32 @rb_enc_find_index(ptr noundef %i.dw) #23 ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %RSTRING_PTR.exit.i146
  %i.dz = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dz, ptr noundef nonnull @.str.130, ptr noundef %i.dw) #24
  unreachable

bb.as:                                            ; preds = %RSTRING_PTR.exit.i146
  %i.ea = tail call ptr @rb_enc_from_index(i32 noundef %i.dx) #23
  %i.eb = tail call i32 @rb_enc_dummy_p(ptr noundef %i.ea) #22
  %.not.i147 = icmp eq i32 %i.eb, 0
  br i1 %.not.i147, label %opt_enc_index.exit148, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ec = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ec, ptr noundef nonnull @.str.131, ptr noundef %i.dw) #24
  unreachable

opt_enc_index.exit148:                            ; preds = %bb.as
  %i.ed = getelementptr i8, ptr %i.h, i64 64
  store i32 %i.dx, ptr %i.ed, align 8, !tbaa !62
  br label %bb.au

.thread183:                                       ; preds = %bb.l
  %i.ee = tail call i64 @rb_io_ungetbyte(i64 noundef %i.j, i64 noundef %i.bb) #23 ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.an, %bb.ao, %opt_enc_index.exit148
  br i1 %.2, label %.thread, label %bb.av

.thread:                                          ; preds = %bb.l, %bb.au
  %.4153 = phi i32 [ %.3110, %bb.au ], [ 1, %bb.l ]
  store i64 4, ptr %i.i, align 8, !tbaa !72
  br label %bb.av

bb.av:                                            ; preds = %.thread183, %.thread, %bb.au
  %.4152 = phi i32 [ %.4153, %.thread ], [ %.3110, %bb.au ], [ 1, %.thread183 ]
  %.0111 = phi i64 [ 4, %.thread ], [ %i.j, %bb.au ], [ %i.j, %.thread183 ]
  tail call void @rb_reset_argf_lineno(i64 noundef 0) #23
  tail call fastcc void @ruby_opt_init(ptr noundef %i.h)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %rbimpl_intern_const.exit
  %.1112 = phi i64 [ %.0111, %bb.av ], [ %i.j, %rbimpl_intern_const.exit ] ; 6 uses
  %.5 = phi i32 [ %.4152, %bb.av ], [ 1, %rbimpl_intern_const.exit ] ; 2 uses
  %i.ef = getelementptr i8, ptr %i.h, i64 32
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !60 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ei = tail call ptr @rb_enc_from_index(i32 noundef %i.eg) #23
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.ej = load i64, ptr @rb_stdin, align 8, !tbaa !27
  %i.ek = icmp eq i64 %.1112, %i.ej
  br i1 %i.ek, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.el = tail call ptr @rb_locale_encoding() #23
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.em = tail call nonnull ptr @rb_utf8_encoding() #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.ax
  %.0106 = phi ptr [ %i.ei, %bb.ax ], [ %i.el, %bb.az ], [ %i.em, %bb.ba ] ; 2 uses
  %i.en = getelementptr i8, ptr %i.h, i64 120
  %i.eo = load i16, ptr %i.en, align 8            ; 4 uses
  %i.ep = lshr i16 %i.eo, 6
  %i.eq = and i16 %i.ep, 1
  %i.er = zext nneg i16 %i.eq to i32
  %i.es = lshr i16 %i.eo, 5
  %i.et = and i16 %i.es, 1
  %i.eu = zext nneg i16 %i.et to i32
  %i.ev = lshr i16 %i.eo, 7
  %i.ew = and i16 %i.ev, 1
  %i.ex = zext nneg i16 %i.ew to i32
  %i.ey = lshr i16 %i.eo, 8
  %i.ez = and i16 %i.ey, 1
  %i.fa = zext nneg i16 %i.ez to i32
  tail call void @rb_parser_set_options(i64 noundef %i.b, i32 noundef %i.er, i32 noundef %i.eu, i32 noundef %i.ex, i32 noundef %i.fa) #23
  tail call void @rb_set_script_lines_for(i64 noundef %i.b, i64 noundef %i.d) #23
  %i.fb = icmp eq i64 %.1112, 4
  br i1 %i.fb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fc = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #23 ; 2 uses
  %i.fd = tail call i64 @rb_enc_associate(i64 noundef %i.fc, ptr noundef %.0106) #23 ; 0 uses
  %i.fe = tail call i64 @rb_parser_compile_string_path(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.fc, i32 noundef %.5) #23
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.ff = tail call i64 @rb_enc_from_encoding(ptr noundef %.0106) #23
  %i.fg = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.28, i64 noundef 1) #23
  %i.fh = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.1112, i64 noundef %.lcssa.i, i32 noundef 2, i64 noundef %i.ff, i64 noundef %i.fg) #23 ; 0 uses
  %i.fi = tail call i64 @rb_parser_compile_file_path(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %.1112, i32 noundef %.5) #23 ; 3 uses
  %i.fj = tail call i64 @rb_parser_encoding(i64 noundef %i.b) #23
  %i.fk = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.1112, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef %i.fj) #23 ; 0 uses
  br i1 %.not, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fl = tail call i64 @rb_parser_end_seen_p(i64 noundef %i.b) #23
  %.not135 = icmp eq i64 %i.fl, 0
  br i1 %.not135, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @rb_define_global_const(ptr noundef nonnull @.str.29, i64 noundef %.1112) #23
  store i64 4, ptr %i.i, align 8, !tbaa !72
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf, %bb.bc
  %.0113 = phi i64 [ %i.fe, %bb.bc ], [ %i.fi, %bb.bf ], [ %i.fi, %bb.be ], [ %i.fi, %bb.bd ]
  ret i64 %.0113
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @restore_load_file(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72   ; 3 uses
  %i.d = icmp eq i64 %i.c, 4
  %i.e = load i64, ptr @rb_stdin, align 8
  %.not = icmp eq i64 %i.c, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_io_close(i64 noundef %i.c) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 4
}

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #3

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #3

declare i64 @rb_enc_from_encoding(ptr noundef) local_unnamed_addr #3

declare i64 @rb_io_gets(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_loaderror(ptr noundef, ...) local_unnamed_addr #5

declare i64 @rb_io_getbyte(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @moreswitches(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.c = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 56         ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 80         ; 3 uses
  %.sroa.010.0.copyload = load i32, ptr %i.i, align 8, !tbaa !16 ; 3 uses
  %.sroa.512.0..sroa_idx = getelementptr i8, ptr %1, i64 84 ; 3 uses
  %.sroa.512.0.copyload = load i32, ptr %.sroa.512.0..sroa_idx, align 4, !tbaa !16
  %i.j = getelementptr i8, ptr %1, i64 88         ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 8, !tbaa !16 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %1, i64 92 ; 3 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  %i.k = getelementptr i8, ptr %1, i64 104        ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 112        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.085 = phi ptr [ %0, %bb.a ], [ %3, %bb.c ]    ; 5 uses
  %i.o = load i8, ptr %.085, align 1, !tbaa !17
  switch i8 %i.o, label %bb.d [
    i8 32, label %bb.c
    i8 13, label %bb.c
    i8 12, label %bb.c
    i8 11, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 0, label %bb.ab
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %3 = getelementptr i8, ptr %.085, i64 1
  br label %bb.b, !llvm.loop !156

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.g, align 8, !tbaa !92
  store i64 0, ptr %i.e, align 8, !tbaa !91
  store i64 0, ptr %i.c, align 8, !tbaa !85
  %i.p = load i8, ptr %.085, align 1, !tbaa !17
  %i.q = icmp ne i8 %i.p, 45                      ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.085) #22 ; 2 uses
  %i.s = zext i1 %i.q to i64                      ; 2 uses
  %i.t = add i64 %i.r, %i.s
  %i.u = tail call i64 @rb_str_tmp_new(i64 noundef %i.t) #23 ; 2 uses
  %i.v = tail call i64 @rb_str_tmp_new(i64 noundef 0) #23 ; 5 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = and i64 %i.x, 8192
  %.not.i = icmp eq i64 %i.y, 0
  %i.z = getelementptr i8, ptr %i.w, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.ab = phi ptr [ %i.aa, %bb.e ], [ %i.z, %bb.d ] ; 4 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit
  store i8 45, ptr %i.ab, align 1, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %RSTRING_PTR.exit
  %i.ac = add i64 %i.r, 1                         ; 2 uses
  %.not.i108 = icmp eq i64 %i.ac, 0
  br i1 %.not.i108, label %ruby_nonempty_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull readonly align 1 %.085, i64 noundef range(i64 1, 0) %i.ac, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.g, %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !81
  %i.ae = call i64 @rb_str_cat(i64 noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 8) #23 ; 0 uses
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !17
  %.not97122 = icmp eq i8 %i.af, 0
  br i1 %.not97122, label %.critedge.thread, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.j, %ruby_nonempty_memcpy.exit
  %.0123 = phi ptr [ %i.ab, %ruby_nonempty_memcpy.exit ], [ %.2, %bb.j ] ; 2 uses
  store ptr %.0123, ptr %i.a, align 8, !tbaa !81
  %i.ag = call i64 @rb_str_cat(i64 noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 8) #23 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph124
  %.1120 = phi ptr [ %.0123, %.lr.ph124 ], [ %i.ah, %bb.i ] ; 4 uses
  %4 = load i8, ptr %.1120, align 1, !tbaa !17
  switch i8 %4, label %bb.i [
    i8 0, label %.critedge.thread
    i8 32, label %.critedge
    i8 13, label %.critedge
    i8 12, label %.critedge
    i8 11, label %.critedge
    i8 10, label %.critedge
    i8 9, label %.critedge
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %.1120, i64 1
  br label %.lr.ph, !llvm.loop !157

.critedge:                                        ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  store i8 0, ptr %.1120, align 1, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.critedge
  %.1.pn = phi ptr [ %.1120, %.critedge ], [ %.2, %.backedge ]
  %.2 = getelementptr i8, ptr %.1.pn, i64 1       ; 3 uses
  %i.ai = load i8, ptr %.2, align 1, !tbaa !17
  switch i8 %i.ai, label %.lr.ph124 [
    i8 32, label %.backedge
    i8 13, label %.backedge
    i8 12, label %.backedge
    i8 11, label %.backedge
    i8 10, label %.backedge
    i8 9, label %.backedge
    i8 0, label %.critedge.thread
  ], !llvm.loop !158

.backedge:                                        ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  br label %bb.j

.critedge.thread:                                 ; preds = %.lr.ph, %bb.j, %ruby_nonempty_memcpy.exit
  %i.aj = inttoptr i64 %i.v to ptr                ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !74 ; 5 uses
  %i.am = lshr i64 %i.al, 3                       ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !81
  %i.an = call i64 @rb_str_cat(i64 noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 8) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ao = icmp ult i64 %i.al, 1024
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.thread
  store i64 0, ptr %i.b, align 8, !tbaa !27
  %i.ap = and i64 %i.al, 1016
  %i.aq = alloca i8, i64 %i.ap, align 16
  br label %bb.m

bb.l:                                             ; preds = %.critedge.thread
  %i.ar = and i64 %i.al, -8
  %i.as = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.ar, i64 noundef range(i64 128, 2305843009213693952) %i.am) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = phi ptr [ %i.aq, %bb.k ], [ %i.as, %bb.l ] ; 3 uses
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.av = and i64 %i.au, 8192
  %.not.i111 = icmp eq i64 %i.av, 0
  %i.aw = getelementptr i8, ptr %i.aj, i64 24     ; 2 uses
  br i1 %.not.i111, label %rbimpl_size_mul_or_raise.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17
  br label %rbimpl_size_mul_or_raise.exit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.n, %bb.m
  %i.ay = phi ptr [ %i.ax, %bb.n ], [ %i.aw, %bb.m ]
  %i.az = and i64 %i.al, -8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.at, ptr noundef nonnull align 1 %i.ay, i64 noundef %i.az, i1 noundef false) #23
  %i.ba = call fastcc i64 @proc_options(i64 noundef %i.am, ptr noundef nonnull %i.at, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 1
  %i.bc = icmp ne i32 %2, 0
  %or.cond125 = and i1 %i.bc, %i.bb
  br i1 %or.cond125, label %.lr.ph128.split, label %.critedge3

.lr.ph128.split:                                  ; preds = %rbimpl_size_mul_or_raise.exit, %bb.q
  %i.bd = phi i64 [ %i.bo, %bb.q ], [ %i.ba, %rbimpl_size_mul_or_raise.exit ] ; 2 uses
  %.081127 = phi ptr [ %.182, %bb.q ], [ %i.at, %rbimpl_size_mul_or_raise.exit ]
  %.083126 = phi i64 [ %.184, %bb.q ], [ %i.am, %rbimpl_size_mul_or_raise.exit ]
  %i.be = sub nsw i64 %.083126, %i.bd             ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %bb.o, label %.critedge3

bb.o:                                             ; preds = %.lr.ph128.split
  %i.bg = getelementptr [8 x i8], ptr %.081127, i64 %i.bd ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !81 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %.not105 = icmp eq i8 %i.bi, 45
  br i1 %.not105, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %i.bh, i64 -1     ; 3 uses
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !81
  store i8 45, ptr %i.bj, align 1, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = phi ptr [ %i.bj, %bb.p ], [ %i.bh, %bb.o ]
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %.not106 = icmp ne i8 %i.bm, 0                  ; 2 uses
  %i.bn = zext i1 %.not106 to i64
  %.184 = add nuw nsw i64 %i.be, %i.bn            ; 2 uses
  %.182.idx = select i1 %.not106, i64 -8, i64 0
  %.182 = getelementptr i8, ptr %i.bg, i64 %.182.idx ; 2 uses
  %i.bo = call fastcc i64 @proc_options(i64 noundef %.184, ptr noundef %.182, ptr noundef %1, i32 noundef 1) ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %.lr.ph128.split, label %.critedge3, !llvm.loop !159

.critedge3:                                       ; preds = %.lr.ph128.split, %bb.q, %rbimpl_size_mul_or_raise.exit
  %.not101 = icmp eq i64 %i.d, 0
  br i1 %.not101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge3
  store i64 %i.d, ptr %i.c, align 8, !tbaa !85
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge3
  %.not102 = icmp eq i64 %i.f, 0
  br i1 %.not102, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.f, ptr %i.e, align 8, !tbaa !91
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not103 = icmp eq i64 %i.h, 0
  br i1 %.not103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.h, ptr %i.g, align 8, !tbaa !92
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bq = and i32 %.sroa.512.0.copyload, %.sroa.010.0.copyload
  %i.br = load i32, ptr %i.i, align 8, !tbaa !86
  %i.bs = or i32 %i.br, %.sroa.010.0.copyload
  store i32 %i.bs, ptr %i.i, align 8, !tbaa !86
  %i.bt = load i32, ptr %.sroa.512.0..sroa_idx, align 4, !tbaa !87
  %i.bu = xor i32 %.sroa.010.0.copyload, -1
  %i.bv = and i32 %i.bt, %i.bu
  %i.bw = or i32 %i.bv, %i.bq
  store i32 %i.bw, ptr %.sroa.512.0..sroa_idx, align 4, !tbaa !87
  %i.bx = and i32 %.sroa.5.0.copyload, %.sroa.0.0.copyload
  %i.by = load i32, ptr %i.j, align 8, !tbaa !86
  %i.bz = or i32 %i.by, %.sroa.0.0.copyload
  store i32 %i.bz, ptr %i.j, align 8, !tbaa !86
  %i.ca = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !87
  %i.cb = xor i32 %.sroa.0.0.copyload, -1
  %i.cc = and i32 %i.ca, %i.cb
  %i.cd = or i32 %i.cc, %i.bx
  store i32 %i.cd, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !87
  %i.ce = icmp sgt i64 %i.l, -2
  br i1 %i.ce, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %i.l, ptr %i.k, align 8, !tbaa !65
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not104 = icmp eq ptr %i.n, null
  br i1 %.not104, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.n, ptr %i.m, align 8, !tbaa !120
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #23
  %i.cf = call i64 @rb_str_resize(i64 noundef %i.v, i64 noundef 0) #23 ; 0 uses
  %i.cg = call i64 @rb_str_resize(i64 noundef %i.u, i64 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare i64 @rb_io_ungetbyte(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_reset_argf_lineno(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ruby_opt_init(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !160
  %i.d = getelementptr i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !161
  tail call void @rb_warning_category_update(i32 noundef %i.c, i32 noundef %i.e) #23
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64
  %i.h = and i32 %i.g, 3840
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 84         ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !63
  %i.k = and i32 %i.j, 1
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_define_module(ptr noundef nonnull @.str.132) #23 ; 0 uses
  %i.m = load i32, ptr %i.i, align 4, !tbaa !63   ; 2 uses
  %i.n = and i32 %i.m, 2
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i64 @rb_define_module(ptr noundef nonnull @.str.133) #23 ; 0 uses
  %.pre = load i32, ptr %i.i, align 4, !tbaa !63
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %.pre, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = and i32 %i.p, 4
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i64 @rb_define_module(ptr noundef nonnull @.str.134) #23 ; 0 uses
  %.pre16 = load i32, ptr %i.i, align 4, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = phi i32 [ %.pre16, %bb.f ], [ %i.p, %bb.e ]
  %i.t = and i32 %i.s, 8
  %.not14 = icmp eq i32 %i.t, 0
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @rb_define_module(ptr noundef nonnull @.str.135) #23 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  %i.v = tail call ptr @getenv(ptr noundef nonnull @.str.136) #23
  %.not15 = icmp eq ptr %i.v, null
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @rb_warn_deprecated(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @Init_ext() #23
  tail call void @Init_extra_exts()
  %i.w = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !29
  %i.x = getelementptr i8, ptr %i.w, i64 508      ; 2 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, -2
  store i8 %i.z, ptr %i.x, align 4
  tail call void @rb_call_builtin_inits() #23
  %i.aa = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !29
  %i.ab = getelementptr i8, ptr %i.aa, i64 508    ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(70) @ruby_vm_redefined_flag, i8 noundef 0, i64 noundef 70, i1 noundef false) #23
  tail call void @Init_builtin_features() #23
  %i.ae = load i8, ptr @ruby_box_enabled, align 1, !tbaa !83, !range !162, !noundef !121
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @rb_initialize_main_box() #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @rb_box_init_done() #23
  %i.ag = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = and i16 %i.ah, 4096
  %i.aj = icmp ne i16 %i.ai, 0
  tail call void @rb_yjit_init(i1 noundef zeroext %i.aj) #23
  %i.ak = load i16, ptr %i.ag, align 8
  %i.al = and i16 %i.ak, 8192
  %i.am = icmp ne i16 %i.al, 0
  tail call void @rb_zjit_init(i1 noundef zeroext %i.am) #23
  %i.an = getelementptr i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !90
  %i.ap = tail call i64 @rb_str_new_frozen(i64 noundef %i.ao) #23 ; 3 uses
  %i.aq = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !29 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 1216
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !75
  %i.as = getelementptr i8, ptr %i.aq, i64 1208
  store i64 %i.ap, ptr %i.as, align 8, !tbaa !76
  tail call void @rb_vm_set_progname(i64 noundef %i.ap) #23
  %i.at = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27 ; 3 uses
  %i.av = tail call i64 @rb_vm_top_self() #22
  %i.aw = tail call ptr @rb_default_external_encoding() #23
  %.pr.i.i = load i64, ptr @require_libraries.rbimpl_id, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str.139, i64 noundef 7) #23 ; 3 uses
  store i64 %i.ax, ptr @require_libraries.rbimpl_id, align 8, !tbaa !27
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !3

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.m
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.m ], [ %i.ax, %.lr.ph.i.i ]
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %require_libraries.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rbimpl_intern_const.exit.i
  %i.ay = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %i.bb = and i64 %i.ba, 8192
  %.not.i7.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i7.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = lshr i64 %i.ba, 15
  %i.bd = and i64 %i.bc, 127
  br label %rb_array_len.exit.i

bb.p:                                             ; preds = %bb.n
  %i.be = load i64, ptr %i.az, align 8, !tbaa !17
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.p, %bb.o
  %.0.i.i = phi i64 [ %i.bd, %bb.o ], [ %i.be, %bb.p ]
  %i.bf = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bf, label %bb.q, label %require_libraries.exit

bb.q:                                             ; preds = %rb_array_len.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bg = call i64 @rb_ary_shift(i64 noundef %i.au) #23 ; 2 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !27
  %i.bh = call i64 @rb_enc_associate(i64 noundef %i.bg, ptr noundef %i.aw) #23 ; 0 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !27
  %i.bj = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.bk = inttoptr i64 %i.bi to ptr
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !27
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !27
  call void @rb_obj_freeze_inline(i64 noundef %i.bm) #23
  %i.bn = call i64 @rb_funcallv(i64 noundef %i.av, i64 noundef %.lcssa.i.i, i32 noundef 1, ptr noundef nonnull %i.a) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.n

require_libraries.exit:                           ; preds = %rb_array_len.exit.i, %rbimpl_intern_const.exit.i
  store i64 0, ptr %i.at, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %require_libraries.exit
  ret void
}

declare ptr @rb_enc_from_index(i32 noundef) local_unnamed_addr #3

declare nonnull ptr @rb_utf8_encoding() local_unnamed_addr #3

declare void @rb_parser_set_options(i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @rb_set_script_lines_for(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_parser_compile_string_path(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_parser_compile_file_path(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_parser_encoding(i64 noundef) local_unnamed_addr #3

declare i64 @rb_parser_end_seen_p(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #7

declare i64 @rb_str_tmp_new(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @proc_options(i64 noundef range(i64 -2147483648, 2305843009213693952) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = getelementptr i8, ptr %2, i64 120        ; 26 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = lshr i16 %i.f, 3
  %i.h = and i16 %i.g, 1
  %i.i = zext nneg i16 %i.h to i32                ; 2 uses
  %i.j = icmp sgt i64 %0, 0
  %i.k = icmp ne ptr %1, null
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %.preheader293, label %bb.ip

.preheader293:                                    ; preds = %bb.a
  %i.l = icmp samesign ugt i64 %0, 1
  br i1 %i.l, label %.lr.ph, label %.thread279

.lr.ph:                                           ; preds = %.preheader293
  %.0158495 = add nsw i64 %0, -1
  %.not189 = icmp eq i32 %3, 0                    ; 20 uses
  %i.m = getelementptr i8, ptr %2, i64 24
  %i.n = getelementptr i8, ptr %2, i64 40         ; 6 uses
  %i.o = getelementptr i8, ptr %2, i64 56         ; 8 uses
  %i.p = getelementptr i8, ptr %2, i64 96         ; 17 uses
  %i.q = getelementptr i8, ptr %2, i64 88         ; 10 uses
  %i.r = getelementptr i8, ptr %2, i64 92         ; 6 uses
  %i.s = getelementptr i8, ptr %2, i64 80         ; 9 uses
  %i.t = getelementptr i8, ptr %2, i64 104
  %i.u = getelementptr i8, ptr %2, i64 112
  %i.v = getelementptr i8, ptr %2, i64 72         ; 3 uses
  %i.w = getelementptr i8, ptr %2, i64 16         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %proc_W_option.exit.thread
  %.0158501 = phi i64 [ %.0158495, %.lr.ph ], [ %.0158, %proc_W_option.exit.thread ] ; 55 uses
  %.0158.in498 = phi i64 [ %0, %.lr.ph ], [ %.4, %proc_W_option.exit.thread ] ; 17 uses
  %.pn497 = phi ptr [ %1, %.lr.ph ], [ %.4166, %proc_W_option.exit.thread ] ; 15 uses
  %.0267496 = phi i32 [ %i.i, %.lr.ph ], [ %.3270, %proc_W_option.exit.thread ] ; 4 uses
  %.0162499 = getelementptr i8, ptr %.pn497, i64 8 ; 19 uses
  %i.x = load ptr, ptr %.0162499, align 8, !tbaa !81 ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread279, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %.not183 = icmp eq i8 %i.y, 45
  br i1 %.not183, label %bb.d, label %.thread279

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.x, i64 1        ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 2 uses
  %.not184 = icmp eq i8 %i.aa, 0
  br i1 %.not184, label %.thread279, label %.preheader

thread-pre-split:                                 ; preds = %bb.f, %bb.i, %bb.j, %bb.l, %bb.n, %bb.r, %bb.as, %bb.az, %bb.bd, %forbid_setid.exit234, %set_option_encoding_once.exit, %proc_W_option.exit, %proc_K_option.exit, %proc_0_option.exit
  %.1268.ph = phi i32 [ %.1268, %proc_0_option.exit ], [ %.1268, %proc_K_option.exit ], [ %.1268, %set_option_encoding_once.exit ], [ %.1268, %forbid_setid.exit234 ], [ %.1268, %bb.bd ], [ %.1268, %bb.az ], [ %.1268, %bb.as ], [ 1, %proc_W_option.exit ], [ %.1268, %bb.n ], [ %.2269, %bb.r ], [ %.1268, %bb.l ], [ %.1268, %bb.j ], [ %.1268, %bb.i ], [ %.1268, %bb.f ]
  %.0156.ph = phi ptr [ %i.mq, %proc_0_option.exit ], [ %.010.i, %proc_K_option.exit ], [ %i.lr, %set_option_encoding_once.exit ], [ %i.iv, %forbid_setid.exit234 ], [ %i.ip, %bb.bd ], [ %i.ij, %bb.az ], [ %i.id, %bb.as ], [ %.1.i, %proc_W_option.exit ], [ %i.as, %bb.n ], [ %i.bb, %bb.r ], [ %i.ap, %bb.l ], [ %i.am, %bb.j ], [ %i.aj, %bb.i ], [ %i.ae, %bb.f ] ; 2 uses
  %.pr = load i8, ptr %.0156.ph, align 1, !tbaa !17
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %thread-pre-split
  %i.ab = phi i8 [ %.pr, %thread-pre-split ], [ %i.aa, %bb.d ] ; 2 uses
  %.1268 = phi i32 [ %.1268.ph, %thread-pre-split ], [ %.0267496, %bb.d ] ; 38 uses
  %.0156 = phi ptr [ %.0156.ph, %thread-pre-split ], [ %i.z, %bb.d ] ; 67 uses
  switch i8 %i.ab, label %.loopexit [
    i8 97, label %bb.e
    i8 112, label %bb.g
    i8 110, label %bb.h
    i8 100, label %bb.j
    i8 121, label %bb.k
    i8 118, label %bb.m
    i8 119, label %.preheader._crit_edge
    i8 87, label %bb.s
    i8 99, label %bb.ar
    i8 115, label %bb.at
    i8 104, label %bb.ba
    i8 108, label %bb.bc
    i8 83, label %bb.be
end_hunk_0
begin_hunk_1_@proc_options:bb.a
  %i.sj = getelementptr i8, ptr %.0156, i64 6     ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !17
  %.not374.i = icmp eq i8 %i.sk, 0
  br i1 %.not374.i, label %bb.hk, label %bb.hl

bb.hh:                                            ; preds = %bb.hg
  %i.sl = icmp eq i64 %.0158501, 1
  br i1 %i.sl, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.sm = getelementptr i8, ptr %.pn497, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !81 ; 2 uses
  %.not373.i = icmp eq ptr %i.sn, null
  br i1 %.not373.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.so = add i64 %.0158.in498, -2
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hi, %bb.hh, %.thread427.i
  %i.sp = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.sp, ptr noundef nonnull @.str.91) #24
  unreachable

bb.hl:                                            ; preds = %bb.hj, %.thread427.i
  %.9290.i = phi ptr [ %i.sj, %.thread427.i ], [ %i.sn, %bb.hj ]
  %.6.i = phi i64 [ %.0158501, %.thread427.i ], [ %i.so, %bb.hj ]
  call void @ruby_each_words(ptr noundef nonnull %.9290.i, ptr noundef nonnull @dump_option, ptr noundef %i.p) #23
  br label %proc_long_options.exit

bb.hm:                                            ; preds = %bb.hd, %bb.hc
  %i.sq = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.92, ptr noundef nonnull dereferenceable(1) %i.mr) #22
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  br i1 %.not189, label %proc_long_options.exit.thread, label %.loopexit295

proc_long_options.exit.thread:                    ; preds = %bb.hn
  %i.ss = load i32, ptr %i.p, align 8, !tbaa !64
  %i.st = or i32 %i.ss, 128
  store i32 %i.st, ptr %i.p, align 8, !tbaa !64
  br label %.thread279

bb.ho:                                            ; preds = %bb.hm
  %i.su = call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.93, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 15) #22
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.hp, label %bb.hy

bb.hp:                                            ; preds = %bb.ho
  %i.sw = getelementptr i8, ptr %.0156, i64 16
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !17
  switch i8 %i.sx, label %bb.hy [
    i8 0, label %bb.hq
    i8 61, label %.thread429.i
  ]

.thread429.i:                                     ; preds = %bb.hp
  %i.sy = getelementptr i8, ptr %.0156, i64 17    ; 2 uses
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !17
  %.not368.i = icmp eq i8 %i.sz, 0
  br i1 %.not368.i, label %bb.ht, label %bb.hu

bb.hq:                                            ; preds = %bb.hp
  %i.ta = icmp eq i64 %.0158501, 1
  br i1 %i.ta, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.tb = getelementptr i8, ptr %.pn497, i64 16
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !81 ; 2 uses
  %.not367.i = icmp eq ptr %i.tc, null
  br i1 %.not367.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.td = add i64 %.0158.in498, -2
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hr, %bb.hq, %.thread429.i
  %i.te = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.te, ptr noundef nonnull @.str.94) #24
  unreachable

bb.hu:                                            ; preds = %bb.hs, %.thread429.i
  %.10.i = phi ptr [ %i.sy, %.thread429.i ], [ %i.tc, %bb.hs ]
  %.7.i = phi i64 [ %.0158501, %.thread429.i ], [ %i.td, %bb.hs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.tf = call i64 @__isoc23_strtol(ptr noundef nonnull %.10.i, ptr noundef nonnull %i.a, i32 noundef 10) #23 ; 2 uses
  %i.tg = call ptr @rb_errno_ptr() #23
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !16
  %i.ti = icmp ne i32 %i.th, 34
  %i.tj = icmp sgt i64 %i.tf, -2
  %or.cond.i262 = select i1 %i.ti, i1 %i.tj, i1 false
  br i1 %or.cond.i262, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.tk = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !17
  %.not369.i = icmp eq i8 %i.tl, 0
  br i1 %.not369.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.tm = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.tm, ptr noundef nonnull @.str.95) #24
  unreachable

bb.hx:                                            ; preds = %bb.hv
  store i64 %i.tf, ptr %i.t, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %proc_long_options.exit

bb.hy:                                            ; preds = %bb.hp, %bb.ho
  %i.tn = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.96, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 12) #22
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %bb.hz, label %bb.if

bb.hz:                                            ; preds = %bb.hy
  %i.tp = getelementptr i8, ptr %.0156, i64 13
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !17
  switch i8 %i.tq, label %bb.if [
    i8 45, label %bb.ia
    i8 0, label %bb.ib
    i8 61, label %.thread431.i
  ]

bb.ia:                                            ; preds = %bb.hz
  %i.tr = getelementptr i8, ptr %.0156, i64 14    ; 2 uses
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !17
  %.not362.i = icmp eq i8 %i.ts, 0
  br i1 %.not362.i, label %bb.if, label %.thread431.thread.i

.thread431.i:                                     ; preds = %bb.hz
  %.phi.trans.insert437.i = getelementptr i8, ptr %.0156, i64 14 ; 2 uses
  %.pre438.i = load i8, ptr %.phi.trans.insert437.i, align 1, !tbaa !17
  %i.tt = icmp eq i8 %.pre438.i, 0
  br i1 %i.tt, label %bb.ie, label %.thread431.thread.i

bb.ib:                                            ; preds = %bb.hz
  %i.tu = icmp eq i64 %.0158501, 1
  br i1 %i.tu, label %bb.ie, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.tv = getelementptr i8, ptr %.pn497, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !81 ; 2 uses
  %.not364.i = icmp eq ptr %i.tw, null
  br i1 %.not364.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.tx = add i64 %.0158.in498, -2
  br label %.thread431.thread.i

bb.ie:                                            ; preds = %bb.ic, %bb.ib, %.thread431.i
  %i.ty = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ty, ptr noundef nonnull @.str.97) #24
  unreachable

.thread431.thread.i:                              ; preds = %bb.ia, %bb.id, %.thread431.i
  %.11.i = phi ptr [ %.phi.trans.insert437.i, %.thread431.i ], [ %i.tw, %bb.id ], [ %i.tr, %bb.ia ]
  %.8.i = phi i64 [ %.0158501, %.thread431.i ], [ %i.tx, %bb.id ], [ %.0158501, %bb.ia ]
  store ptr %.11.i, ptr %i.u, align 8, !tbaa !120
  br label %proc_long_options.exit

bb.if:                                            ; preds = %bb.ia, %bb.hz, %bb.hy
  %i.tz = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.tz, ptr noundef nonnull @.str.98, ptr noundef nonnull %i.mr) #24
  unreachable

.loopexit295:                                     ; preds = %bb.ha, %bb.gl, %bb.ed, %bb.hn
  %i.ua = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ua, ptr noundef nonnull @.str.99, ptr noundef nonnull %i.mr) #24
  unreachable

proc_long_options.exit:                           ; preds = %bb.ee, %bb.ek, %bb.el, %.thread.thread.i, %.thread415.thread.i, %bb.fg, %set_option_encoding_once.exit.i, %set_option_encoding_once.exit413.i, %bb.gg, %bb.gi, %bb.gm, %bb.go, %bb.gq, %bb.gu, %bb.gy, %bb.hb, %bb.hl, %bb.hx, %.thread431.thread.i
  %.9.i = phi i64 [ %.0158501, %bb.ee ], [ %.0158501, %bb.ek ], [ %.0158501, %bb.el ], [ %.0280.i, %.thread.thread.i ], [ %.1.i263, %.thread415.thread.i ], [ %.2.i, %bb.fg ], [ %.3.i, %set_option_encoding_once.exit.i ], [ %.4.i, %set_option_encoding_once.exit413.i ], [ %.5.i, %bb.gg ], [ %.5.i, %bb.gi ], [ %.0158501, %bb.gm ], [ %.0158501, %bb.go ], [ %.0158501, %bb.gq ], [ %.0158501, %bb.gu ], [ %.0158501, %bb.gy ], [ %.0158501, %bb.hb ], [ %.6.i, %bb.hl ], [ %.7.i, %bb.hx ], [ %.8.i, %.thread431.thread.i ] ; 3 uses
  %.not188 = icmp eq i64 %.0158.in498, %.9.i
  br i1 %.not188, label %.thread279, label %bb.ig

bb.ig:                                            ; preds = %proc_long_options.exit
  %i.ub = sub i64 %.0158.in498, %.9.i
  %i.uc = getelementptr [8 x i8], ptr %.0162499, i64 %i.ub
  %i.ud = getelementptr i8, ptr %i.uc, i64 -8
  br label %proc_W_option.exit.thread

bb.ih:                                            ; preds = %.preheader
  %i.ue = getelementptr i8, ptr %.0156, i64 1
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !17
  %.not185 = icmp eq i8 %i.uf, 0
  br i1 %.not185, label %proc_W_option.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.ih, %.preheader
  %i.ug = call ptr @rb_locale_encoding() #23      ; 6 uses
  %i.uh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0156) #22
  %i.ui = getelementptr i8, ptr %.0156, i64 %i.uh ; 2 uses
  %i.uj = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.0156, ptr noundef %i.ui, ptr noundef %i.ug) #23 ; 2 uses
  %i.uk = load i8, ptr %.0156, align 1, !tbaa !17
  %i.ul = zext i8 %i.uk to i32
  %i.um = icmp sgt i32 %i.uj, 0
  br i1 %i.um, label %bb.ii, label %bb.im

bb.ii:                                            ; preds = %.loopexit
  %i.un = getelementptr i8, ptr %i.ug, i64 32
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !165
  %i.up = call i32 %i.uo(ptr noundef nonnull %.0156, ptr noundef %i.ui, ptr noundef %i.ug) #23, !inline_history !163 ; 3 uses
  %i.uq = getelementptr i8, ptr %i.ug, i64 88
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !166
  %i.us = call i32 %i.ur(i32 noundef %i.up, i32 noundef 5, ptr noundef %i.ug) #23
  %.not223 = icmp eq i32 %i.us, 0
  br i1 %.not223, label %bb.ij, label %bb.il

bb.ij:                                            ; preds = %bb.ii
  %i.ut = call ptr @ruby_escaped_char(i32 noundef %i.up) #23 ; 3 uses
  %.not224 = icmp eq ptr %i.ut, null
  br i1 %.not224, label %bb.im, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.uu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ut) #22
  %i.uv = trunc i64 %i.uu to i32
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ii
  %.3 = phi ptr [ %.0156, %bb.ii ], [ %i.ut, %bb.ik ]
  %.0154 = phi i32 [ %i.uj, %bb.ii ], [ %i.uv, %bb.ik ]
  %i.uw = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (ptr, i64, ptr, ...) @rb_enc_raise(ptr noundef nonnull %i.ug, i64 noundef %i.uw, ptr noundef nonnull @.str.43, i32 noundef %.0154, ptr noundef nonnull %.3) #24
  unreachable

bb.im:                                            ; preds = %bb.ij, %.loopexit
  %.0 = phi i32 [ %i.up, %bb.ij ], [ %i.ul, %.loopexit ]
  %i.ux = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ux, ptr noundef nonnull @.str.44, i32 noundef %.0) #24
  unreachable

.loopexit292:                                     ; preds = %bb.cw, %bb.co, %bb.ch, %bb.cc, %bb.bj, %bb.du, %bb.be, %bb.bc, %bb.at, %bb.ar, %bb.k, %bb.h, %bb.g, %bb.e, %bb.ba
  %i.uy = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  %i.uz = zext nneg i8 %i.ab to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.uy, ptr noundef nonnull @.str.45, i32 noundef %i.uz) #24
  unreachable

proc_W_option.exit.thread:                        ; preds = %.preheader, %proc_W_option.exit, %proc_K_option.exit, %proc_0_option.exit, %name_match_p.exit.i, %.critedge.i, %proc_e_option.exit, %forbid_setid.exit244, %bb.dd, %bb.ig, %bb.cb, %add_modules.exit, %bb.cm, %forbid_setid.exit247, %bb.cu, %bb.cy, %bb.cx, %bb.dt, %bb.dr, %bb.ih
  %.3270 = phi i32 [ %.1268, %bb.ig ], [ %.1268, %bb.dr ], [ %.1268, %name_match_p.exit.i ], [ %.1268, %bb.ih ], [ %.1268, %proc_e_option.exit ], [ %.1268, %bb.dt ], [ %.1268, %bb.cb ], [ %.1268, %add_modules.exit ], [ %.1268, %forbid_setid.exit244 ], [ %.1268, %forbid_setid.exit247 ], [ %.1268, %bb.cm ], [ %.1268, %bb.cu ], [ %.1268, %bb.cx ], [ %.1268, %bb.cy ], [ %.1268, %bb.dd ], [ %.1268, %.critedge.i ], [ 1, %proc_W_option.exit ], [ %.1268, %.preheader ], [ %.1268, %proc_0_option.exit ], [ %.1268, %proc_K_option.exit ] ; 2 uses
  %.4166 = phi ptr [ %i.ud, %bb.ig ], [ %.0162499, %bb.dr ], [ %.0162499, %name_match_p.exit.i ], [ %.0162499, %bb.ih ], [ %i.jp, %proc_e_option.exit ], [ %i.md, %bb.dt ], [ %i.kb, %bb.cb ], [ %.0162499, %add_modules.exit ], [ %.0162499, %forbid_setid.exit244 ], [ %.0162499, %forbid_setid.exit247 ], [ %.0162499, %bb.cm ], [ %.1163, %bb.cu ], [ %.0162499, %bb.cx ], [ %.0162499, %bb.cy ], [ %.2164, %bb.dd ], [ %.0162499, %.critedge.i ], [ %.0162499, %proc_0_option.exit ], [ %.0162499, %proc_K_option.exit ], [ %.0162499, %proc_W_option.exit ], [ %.0162499, %.preheader ]
  %.4 = phi i64 [ %.9.i, %bb.ig ], [ %.0158501, %bb.dr ], [ %.0158501, %name_match_p.exit.i ], [ %.0158501, %bb.ih ], [ %i.jn, %proc_e_option.exit ], [ %i.mf, %bb.dt ], [ %i.kd, %bb.cb ], [ %.0158501, %add_modules.exit ], [ %.0158501, %forbid_setid.exit244 ], [ %.0158501, %forbid_setid.exit247 ], [ %.0158501, %bb.cm ], [ %.1159, %bb.cu ], [ %.0158501, %bb.cx ], [ %.0158501, %bb.cy ], [ %.2160, %bb.dd ], [ %.0158501, %.critedge.i ], [ %.0158501, %proc_0_option.exit ], [ %.0158501, %proc_K_option.exit ], [ %.0158501, %proc_W_option.exit ], [ %.0158501, %.preheader ] ; 2 uses
  %.0158 = add i64 %.4, -1                        ; 3 uses
  %i.va = icmp sgt i64 %.0158, 0
  br i1 %i.va, label %bb.b, label %.thread279, !llvm.loop !164

.thread279:                                       ; preds = %bb.ds, %bb.ca, %proc_W_option.exit.thread, %proc_long_options.exit, %bb.b, %bb.d, %bb.c, %.preheader293, %proc_long_options.exit.thread, %bb.bb, %bb.eb
  %.4271 = phi i32 [ %.1268, %bb.eb ], [ %.1268, %proc_long_options.exit.thread ], [ %.1268, %bb.bb ], [ %i.i, %.preheader293 ], [ %.1268, %bb.ds ], [ %.1268, %bb.ca ], [ %.1268, %proc_long_options.exit ], [ %.0267496, %bb.b ], [ %.3270, %proc_W_option.exit.thread ], [ %.0267496, %bb.d ], [ %.0267496, %bb.c ]
  %.5 = phi i64 [ %i.mv, %bb.eb ], [ %.0158501, %proc_long_options.exit.thread ], [ %.0158501, %bb.bb ], [ 0, %.preheader293 ], [ 0, %bb.ds ], [ 0, %bb.ca ], [ %.0158501, %proc_long_options.exit ], [ %.0158501, %bb.b ], [ %.0158, %proc_W_option.exit.thread ], [ %.0158501, %bb.d ], [ %.0158501, %bb.c ]
  %.not225 = icmp eq i32 %.4271, 0
  br i1 %.not225, label %bb.io, label %bb.in

bb.in:                                            ; preds = %.thread279
  %i.vb = load i16, ptr %i.e, align 8
  %i.vc = or i16 %i.vb, 8
  store i16 %i.vc, ptr %i.e, align 8
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %.thread279
  %i.vd = sub i64 %0, %.5
  br label %bb.ip

bb.ip:                                            ; preds = %bb.a, %bb.io
  %.0157 = phi i64 [ 0, %bb.a ], [ %i.vd, %bb.io ]
  ret i64 %.0157
}

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #3

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @rb_ruby_debug_ptr() local_unnamed_addr #3

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @forbid_setid(ptr noundef %0, i16 %.120.val) unnamed_addr #0 {
bb.a:
  %i.a = and i16 %.120.val, 1024
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eSecurityError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.51, ptr noundef %0) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i16 %.120.val, 2048
  %.not4 = icmp eq i16 %i.c, 0
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr @rb_eSecurityError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.52, ptr noundef %0) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @add_modules(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_ary_hidden_new(i64 noundef 0) #23 ; 2 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %i.c = tail call i64 @rb_str_tmp_new(i64 noundef 0) #23
  %i.d = tail call i64 @rb_str_cat_cstr(i64 noundef %i.c, ptr noundef %1) #23
  %i.e = tail call i64 @rb_ary_push(i64 noundef %.0, i64 noundef %i.d) #23 ; 0 uses
  ret void
}

declare void @ruby_set_inplace_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @rb_fatal(ptr noundef, ...) local_unnamed_addr #5

declare i64 @rb_reg_new(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @proc_encoding_option(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #22 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.d = tail call i64 @rb_str_new(ptr noundef nonnull %1, i64 noundef %i.c) #23 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not12.i = icmp eq i64 %i.e, 0
  br i1 %.not12.i, label %set_option_encoding_once.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pr.i.i = load i64, ptr @set_option_encoding_once.rbimpl_id, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.57, i64 noundef 7) #23 ; 3 uses
  store i64 %i.f, ptr @set_option_encoding_once.rbimpl_id, align 8, !tbaa !27
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.loopexit.i, !llvm.loop !3

rbimpl_intern_const.exit.loopexit.i:              ; preds = %.lr.ph.i.i
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !27
  br label %rbimpl_intern_const.exit.i

rbimpl_intern_const.exit.i:                       ; preds = %rbimpl_intern_const.exit.loopexit.i, %bb.c
  %i.g = phi i64 [ %i.e, %bb.c ], [ %.pre.i, %rbimpl_intern_const.exit.loopexit.i ]
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.c ], [ %i.f, %rbimpl_intern_const.exit.loopexit.i ]
  %i.h = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.d, i64 noundef %.lcssa.i.i, i32 noundef 1, i64 noundef %i.g) #23
  %.not13.i = icmp eq i64 %i.h, 1
  br i1 %.not13.i, label %set_option_encoding_once.exit, label %bb.d

bb.d:                                             ; preds = %rbimpl_intern_const.exit.i
  %i.i = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  %i.j = load i64, ptr %i.b, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.55, i64 noundef %i.j) #24
  unreachable

set_option_encoding_once.exit:                    ; preds = %bb.b, %rbimpl_intern_const.exit.i
  store i64 %i.d, ptr %i.b, align 8, !tbaa !27
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ugt ptr %i.a, %1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.m, %i.n
  tail call fastcc void @set_option_encoding_once(ptr noundef nonnull @.str.55, ptr noundef %i.l, ptr noundef nonnull %1, i64 noundef %i.o)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.p = getelementptr i8, ptr %i.a, i64 1        ; 7 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17
  %.not25 = icmp eq i8 %i.q, 0
  br i1 %.not25, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 noundef 58) #22 ; 4 uses
  %.not26 = icmp eq ptr %i.r, null
  br i1 %.not26, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #22
  %i.u = tail call i64 @rb_str_new(ptr noundef nonnull %i.p, i64 noundef %i.t) #23 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %.not12.i28 = icmp eq i64 %i.v, 0
  br i1 %.not12.i28, label %set_option_encoding_once.exit38, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pr.i.i29 = load i64, ptr @set_option_encoding_once.rbimpl_id, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i30 = icmp eq i64 %.pr.i.i29, 0
  br i1 %.not4.i.i30, label %.lr.ph.i.i34, label %rbimpl_intern_const.exit.i31

.lr.ph.i.i34:                                     ; preds = %bb.j, %.lr.ph.i.i34
  %i.w = tail call i64 @rb_intern2(ptr noundef nonnull @.str.57, i64 noundef 7) #23 ; 3 uses
  store i64 %i.w, ptr @set_option_encoding_once.rbimpl_id, align 8, !tbaa !27
  %.not.i.i35 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i35, label %.lr.ph.i.i34, label %rbimpl_intern_const.exit.loopexit.i36, !llvm.loop !3

rbimpl_intern_const.exit.loopexit.i36:            ; preds = %.lr.ph.i.i34
  %.pre.i37 = load i64, ptr %i.s, align 8, !tbaa !27
  br label %rbimpl_intern_const.exit.i31

rbimpl_intern_const.exit.i31:                     ; preds = %rbimpl_intern_const.exit.loopexit.i36, %bb.j
  %i.x = phi i64 [ %i.v, %bb.j ], [ %.pre.i37, %rbimpl_intern_const.exit.loopexit.i36 ]
  %.lcssa.i.i32 = phi i64 [ %.pr.i.i29, %bb.j ], [ %i.w, %rbimpl_intern_const.exit.loopexit.i36 ]
  %i.y = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.u, i64 noundef %.lcssa.i.i32, i32 noundef 1, i64 noundef %i.x) #23
  %.not13.i33 = icmp eq i64 %i.y, 1
  br i1 %.not13.i33, label %set_option_encoding_once.exit38, label %bb.k

bb.k:                                             ; preds = %rbimpl_intern_const.exit.i31
  %i.z = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.40, i64 noundef %i.aa) #24
  unreachable

set_option_encoding_once.exit38:                  ; preds = %bb.i, %rbimpl_intern_const.exit.i31
  store i64 %i.u, ptr %i.s, align 8, !tbaa !27
end_hunk_1
begin_hunk_2_@dump_additional_option:bb.a
  %i.ac = icmp eq i8 %i.ab, 45
  br i1 %i.ac, label %bb.f, label %name_match_p.exit69.thread

bb.f:                                             ; preds = %memtermspn.exit46
  %i.ad = icmp slt i32 %i.y, 5
  br i1 %i.ad, label %bb.g, label %name_match_p.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.y, 0
  br i1 %i.ae, label %name_match_p.exit69.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.j
  %i.af = phi i8 [ %i.bj, %bb.j ], [ 119, %bb.g ]
  %.017.i = phi ptr [ %i.bi, %bb.j ], [ @.str.128, %bb.g ] ; 2 uses
  %.015.i = phi ptr [ %i.bk, %bb.j ], [ %i.c, %bb.g ] ; 3 uses
  %.0.i47 = phi i64 [ %i.bl, %bb.j ], [ %i.z, %bb.g ] ; 2 uses
  %i.ag = load i8, ptr %.015.i, align 1, !tbaa !17 ; 2 uses
  %i.ah = sext i8 %i.ag to i32                    ; 3 uses
  %i.ai = add nsw i32 %i.ah, -91
  %i.aj = icmp ult i32 %i.ai, -26
  %i.ak = or i32 %i.ah, 32
  %i.al = select i1 %i.aj, i32 %i.ah, i32 %i.ak
  %i.am = sext i8 %i.af to i32
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ao = add i64 %.0.i47, -1                     ; 2 uses
  %.not30.i159 = icmp eq i64 %i.ao, 0
  br i1 %.not30.i159, label %name_match_p.exit, label %.lr.ph162

.lr.ph.i:                                         ; preds = %.lr.ph162
  %i.ap = add i64 %i.aq, -1                       ; 2 uses
  %.not30.i = icmp eq i64 %i.ap, 0
  br i1 %.not30.i, label %name_match_p.exit, label %.lr.ph162, !llvm.loop !4

.lr.ph162:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aq = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.11839.i161 = phi ptr [ %i.ar, %.lr.ph.i ], [ %.017.i, %.lr.ph.i.preheader ]
  %.11640.i160 = phi ptr [ %i.as, %.lr.ph.i ], [ %.015.i, %.lr.ph.i.preheader ]
  %i.ar = getelementptr i8, ptr %.11839.i161, i64 1 ; 3 uses
  %i.as = getelementptr i8, ptr %.11640.i160, i64 1 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17  ; 2 uses
  %i.au = sext i8 %i.at to i32                    ; 3 uses
  %i.av = add nsw i32 %i.au, -91
  %i.aw = icmp ult i32 %i.av, -26
  %i.ax = or i32 %i.au, 32
  %i.ay = select i1 %i.aw, i32 %i.au, i32 %i.ax
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.ba = sext i8 %i.az to i32
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %.lr.ph162, %.preheader.i
  %.118.lcssa.i = phi ptr [ %.017.i, %.preheader.i ], [ %i.ar, %.lr.ph162 ]
  %.116.lcssa.i = phi ptr [ %.015.i, %.preheader.i ], [ %i.as, %.lr.ph162 ]
  %.1.lcssa.i = phi i64 [ %.0.i47, %.preheader.i ], [ %i.aq, %.lr.ph162 ]
  %.lcssa.i = phi i8 [ %i.ag, %.preheader.i ], [ %i.at, %.lr.ph162 ]
  switch i8 %.lcssa.i, label %name_match_p.exit.thread [
    i8 45, label %.preheader167
    i8 95, label %.preheader167
  ]

.preheader167:                                    ; preds = %._crit_edge.i, %._crit_edge.i
  br label %bb.h

bb.h:                                             ; preds = %.preheader167, %bb.h
  %.2.i = phi ptr [ %i.bi, %bb.h ], [ %.118.lcssa.i, %.preheader167 ] ; 2 uses
  %i.bc = load i8, ptr %.2.i, align 1, !tbaa !17  ; 2 uses
  %i.bd = sext i8 %i.bc to i32                    ; 2 uses
  %i.be = and i32 %i.bd, -33
  %i.bf = add nsw i32 %i.be, -91
  %narrow.i.i.i = icmp ult i32 %i.bf, -26
  %i.bg = add nsw i32 %i.bd, -58
  %i.bh = icmp ult i32 %i.bg, -10
  %narrow.i.not.i = select i1 %narrow.i.i.i, i1 %i.bh, i1 false
  %i.bi = getelementptr i8, ptr %.2.i, i64 1      ; 3 uses
  br i1 %narrow.i.not.i, label %bb.i, label %bb.h, !llvm.loop !5

bb.i:                                             ; preds = %bb.h
  switch i8 %i.bc, label %name_match_p.exit.thread [
    i8 45, label %bb.j
    i8 95, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17  ; 2 uses
  %.not29.i = icmp eq i8 %i.bj, 0
  %i.bk = getelementptr i8, ptr %.116.lcssa.i, i64 1
  %i.bl = add i64 %.1.lcssa.i, -1                 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %or.cond.i = select i1 %.not29.i, i1 true, i1 %i.bm
  br i1 %or.cond.i, label %name_match_p.exit, label %.preheader.i

name_match_p.exit:                                ; preds = %bb.j, %.lr.ph.i.preheader, %.lr.ph.i
  %i.bn = sub i32 %.0.i, %i.y
  br label %name_match_p.exit69.thread

name_match_p.exit.thread:                         ; preds = %bb.i, %._crit_edge.i, %bb.f
  %i.bo = icmp sgt i32 %i.y, 7
  %i.bp = icmp eq i32 %i.y, 0
  %or.cond = or i1 %i.bo, %i.bp
  br i1 %or.cond, label %name_match_p.exit69.thread, label %.preheader.i49

.preheader.i49:                                   ; preds = %name_match_p.exit.thread, %bb.m
  %i.bq = phi i8 [ %i.cu, %bb.m ], [ 119, %name_match_p.exit.thread ]
  %.017.i50 = phi ptr [ %i.ct, %bb.m ], [ @.str.129, %name_match_p.exit.thread ] ; 2 uses
  %.015.i51 = phi ptr [ %i.cv, %bb.m ], [ %i.c, %name_match_p.exit.thread ] ; 3 uses
  %.0.i52 = phi i64 [ %i.cw, %bb.m ], [ %i.z, %name_match_p.exit.thread ] ; 2 uses
  %i.br = load i8, ptr %.015.i51, align 1, !tbaa !17 ; 2 uses
  %i.bs = sext i8 %i.br to i32                    ; 3 uses
  %i.bt = add nsw i32 %i.bs, -91
  %i.bu = icmp ult i32 %i.bt, -26
  %i.bv = or i32 %i.bs, 32
  %i.bw = select i1 %i.bu, i32 %i.bs, i32 %i.bv
  %i.bx = sext i8 %i.bq to i32
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph.i64.preheader, label %._crit_edge.i53

.lr.ph.i64.preheader:                             ; preds = %.preheader.i49
  %i.bz = add i64 %.0.i52, -1                     ; 2 uses
  %.not30.i68163 = icmp eq i64 %i.bz, 0
  br i1 %.not30.i68163, label %name_match_p.exit69, label %.lr.ph166

.lr.ph.i64:                                       ; preds = %.lr.ph166
  %i.ca = add i64 %i.cb, -1                       ; 2 uses
  %.not30.i68 = icmp eq i64 %i.ca, 0
  br i1 %.not30.i68, label %name_match_p.exit69, label %.lr.ph166, !llvm.loop !4

.lr.ph166:                                        ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64
  %i.cb = phi i64 [ %i.ca, %.lr.ph.i64 ], [ %i.bz, %.lr.ph.i64.preheader ] ; 2 uses
  %.11839.i67165 = phi ptr [ %i.cc, %.lr.ph.i64 ], [ %.017.i50, %.lr.ph.i64.preheader ]
  %.11640.i66164 = phi ptr [ %i.cd, %.lr.ph.i64 ], [ %.015.i51, %.lr.ph.i64.preheader ]
  %i.cc = getelementptr i8, ptr %.11839.i67165, i64 1 ; 3 uses
  %i.cd = getelementptr i8, ptr %.11640.i66164, i64 1 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17  ; 2 uses
  %i.cf = sext i8 %i.ce to i32                    ; 3 uses
  %i.cg = add nsw i32 %i.cf, -91
  %i.ch = icmp ult i32 %i.cg, -26
  %i.ci = or i32 %i.cf, 32
  %i.cj = select i1 %i.ch, i32 %i.cf, i32 %i.ci
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.cl = sext i8 %i.ck to i32
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %.lr.ph.i64, label %._crit_edge.i53, !llvm.loop !4

._crit_edge.i53:                                  ; preds = %.lr.ph166, %.preheader.i49
  %.118.lcssa.i54 = phi ptr [ %.017.i50, %.preheader.i49 ], [ %i.cc, %.lr.ph166 ]
  %.116.lcssa.i55 = phi ptr [ %.015.i51, %.preheader.i49 ], [ %i.cd, %.lr.ph166 ]
  %.1.lcssa.i56 = phi i64 [ %.0.i52, %.preheader.i49 ], [ %i.cb, %.lr.ph166 ]
  %.lcssa.i57 = phi i8 [ %i.br, %.preheader.i49 ], [ %i.ce, %.lr.ph166 ]
  switch i8 %.lcssa.i57, label %name_match_p.exit69.thread [
    i8 45, label %.preheader
    i8 95, label %.preheader
  ]

.preheader:                                       ; preds = %._crit_edge.i53, %._crit_edge.i53
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.k
  %.2.i58 = phi ptr [ %i.ct, %bb.k ], [ %.118.lcssa.i54, %.preheader ] ; 2 uses
  %i.cn = load i8, ptr %.2.i58, align 1, !tbaa !17 ; 2 uses
  %i.co = sext i8 %i.cn to i32                    ; 2 uses
  %i.cp = and i32 %i.co, -33
  %i.cq = add nsw i32 %i.cp, -91
  %narrow.i.i.i59 = icmp ult i32 %i.cq, -26
  %i.cr = add nsw i32 %i.co, -58
  %i.cs = icmp ult i32 %i.cr, -10
  %narrow.i.not.i60 = select i1 %narrow.i.i.i59, i1 %i.cs, i1 false
  %i.ct = getelementptr i8, ptr %.2.i58, i64 1    ; 3 uses
  br i1 %narrow.i.not.i60, label %bb.l, label %bb.k, !llvm.loop !5

bb.l:                                             ; preds = %bb.k
  switch i8 %i.cn, label %name_match_p.exit69.thread [
    i8 45, label %bb.m
    i8 95, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17  ; 2 uses
  %.not29.i61 = icmp eq i8 %i.cu, 0
  %i.cv = getelementptr i8, ptr %.116.lcssa.i55, i64 1
  %i.cw = add i64 %.1.lcssa.i56, -1               ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  %or.cond.i62 = select i1 %.not29.i61, i1 true, i1 %i.cx
  br i1 %or.cond.i62, label %name_match_p.exit69, label %.preheader.i49

name_match_p.exit69:                              ; preds = %bb.m, %.lr.ph.i64.preheader, %.lr.ph.i64
  %i.cy = sub i32 %.0.i, %i.y
  br label %name_match_p.exit69.thread

name_match_p.exit69.thread:                       ; preds = %bb.l, %._crit_edge.i53, %bb.e, %bb.g, %memtermspn.exit46, %name_match_p.exit.thread, %name_match_p.exit69, %name_match_p.exit, %bb.d
  %.2 = phi ptr [ %i.o, %bb.d ], [ %i.aa, %name_match_p.exit ], [ %i.aa, %name_match_p.exit69 ], [ %i.c, %bb.g ], [ %i.c, %name_match_p.exit.thread ], [ %i.c, %memtermspn.exit46 ], [ %i.c, %bb.e ], [ %i.c, %._crit_edge.i53 ], [ %i.c, %bb.l ] ; 2 uses
  %.135 = phi i32 [ %i.q, %bb.d ], [ %i.bn, %name_match_p.exit ], [ %i.cy, %name_match_p.exit69 ], [ %.0.i, %bb.g ], [ %.0.i, %name_match_p.exit.thread ], [ %.0.i, %memtermspn.exit46 ], [ %.0.i, %bb.e ], [ %.0.i, %._crit_edge.i53 ], [ %.0.i, %bb.l ] ; 3 uses
  %.1 = phi i1 [ %i.p, %bb.d ], [ true, %name_match_p.exit ], [ false, %name_match_p.exit69 ], [ true, %bb.g ], [ true, %name_match_p.exit.thread ], [ true, %memtermspn.exit46 ], [ true, %bb.e ], [ true, %._crit_edge.i53 ], [ true, %bb.l ]
  %i.cz = tail call fastcc i32 @dump_additional_option_flag(ptr noundef %.2, i32 noundef %.135, i32 noundef %.036104, i1 noundef zeroext %.1) ; 2 uses
  %i.da = sub i32 %i.b, %.135                     ; 2 uses
  %i.db = sext i32 %.135 to i64
  %i.dc = getelementptr i8, ptr %.2, i64 %i.db
  %i.dd = icmp sgt i32 %i.da, 0
  br i1 %i.dd, label %.lr.ph, label %.critedge, !llvm.loop !167

.critedge:                                        ; preds = %.lr.ph, %name_match_p.exit69.thread, %bb.a
  %.036.lcssa = phi i32 [ %2, %bb.a ], [ %i.cz, %name_match_p.exit69.thread ], [ %.036104, %.lr.ph ]
  ret i32 %.036.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_enc_find_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #14

declare void @rb_warning_category_update(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #3

declare void @rb_warn_deprecated(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @Init_ext() local_unnamed_addr #3

declare void @rb_call_builtin_inits() local_unnamed_addr #3

declare void @rb_initialize_main_box() local_unnamed_addr #3

declare void @rb_box_init_done() local_unnamed_addr #3

declare void @rb_yjit_init(i1 noundef zeroext) local_unnamed_addr #3

declare void @rb_zjit_init(i1 noundef zeroext) local_unnamed_addr #3

declare void @Init_builtin_features() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_vm_top_self() local_unnamed_addr #14

declare ptr @rb_default_external_encoding() local_unnamed_addr #3

declare i64 @rb_ary_shift(i64 noundef) local_unnamed_addr #3

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_io_close(i64 noundef) local_unnamed_addr #3

declare void @rb_vm_set_progname(i64 noundef) local_unnamed_addr #3

declare i64 @rb_external_str_new_cstr(ptr noundef) local_unnamed_addr #3

declare void @setproctitle(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #15

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #3

declare void @rb_zjit_prepare_options(...) local_unnamed_addr #3

declare zeroext i1 @rb_yjit_option_disable() local_unnamed_addr #3

declare zeroext i1 @rb_zjit_option_enable() local_unnamed_addr #3

declare void @ruby_mn_threads_params() local_unnamed_addr #3

declare void @Init_ruby_description(ptr noundef) local_unnamed_addr #3

declare void @ruby_show_version() local_unnamed_addr #3

declare void @ruby_show_copyright() local_unnamed_addr #3

declare ptr @dln_find_file_r(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ruby_gc_set_params() local_unnamed_addr #3

declare void @Init_enc() local_unnamed_addr #3

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #3

declare void @rb_enc_set_default_external(i64 noundef) local_unnamed_addr #3

declare void @rb_enc_set_default_internal(i64 noundef) local_unnamed_addr #3

declare i64 @rb_get_expanded_load_path() local_unnamed_addr #3

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_ary_modify(i64 noundef) local_unnamed_addr #3

declare i64 @rb_ary_replace(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_new() local_unnamed_addr #3

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2, 1) i32 @process_sflag(i32 noundef range(i32 -2, 2) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca [2 x i64], align 16               ; 4 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_get_argv() #23         ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %i.f, 15
  %i.i = and i64 %i.h, 127
  %i.j = getelementptr i8, ptr %i.e, i64 16
  br label %rb_array_const_ptr.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr i8, ptr %i.e, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.c, %bb.d
  %.0.i63 = phi i64 [ %i.i, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %.0.i58 = phi ptr [ %i.j, %bb.c ], [ %i.n, %bb.d ]
  %i.o = icmp sgt i64 %.0.i63, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit70

.lr.ph:                                           ; preds = %rb_array_const_ptr.exit, %.loopexit68
  %.04182 = phi ptr [ %i.p, %.loopexit68 ], [ %.0.i58, %rb_array_const_ptr.exit ] ; 3 uses
  %.04281 = phi i64 [ %i.t, %.loopexit68 ], [ %.0.i63, %rb_array_const_ptr.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.p = getelementptr i8, ptr %.04182, i64 8
  %i.q = load i64, ptr %.04182, align 8, !tbaa !27
  store i64 %i.q, ptr %i.a, align 8, !tbaa !27
  %i.r = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #23 ; 8 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %.not = icmp eq i8 %i.s, 45
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %.lr.ph
  %i.t = add nsw i64 %.04281, -1                  ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 1        ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !17
  %i.w = icmp eq i8 %i.v, 45
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.r, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 20, ptr %i.a, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %bb.g
  %.039 = phi ptr [ %i.u, %bb.g ], [ %i.at, %bb.o ] ; 5 uses
  %.038 = phi i32 [ 0, %bb.g ], [ %.1, %bb.o ]    ; 3 uses
  %i.aa = load i8, ptr %.039, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.aa, label %bb.j [
    i8 0, label %.loopexit69
    i8 61, label %bb.i
    i8 45, label %bb.o
    i8 95, label %.fold.split
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.039, i64 1
  store i8 0, ptr %.039, align 1, !tbaa !17
  %i.ac = call i64 @rb_str_new_cstr(ptr noundef %i.ab) #23
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !27
  br label %.loopexit69

bb.j:                                             ; preds = %bb.h
  %i.ad = sext i8 %i.aa to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, -33
  %i.af = add nsw i32 %i.ae, -91
  %narrow.i.i = icmp ult i32 %i.af, -26
  %i.ag = add nsw i32 %i.ad, -58
  %i.ah = icmp ult i32 %i.ag, -10
  %narrow.i.not = select i1 %narrow.i.i, i1 %i.ah, i1 false
  br i1 %narrow.i.not, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ai = call i64 @rb_str_new_static(ptr noundef nonnull @.str.224, i64 noundef 35) #23 ; 3 uses
  store i64 %i.ai, ptr %i.b, align 16, !tbaa !27
  %i.aj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.039, i32 noundef 61) #22 ; 2 uses
  %.not53 = icmp eq ptr %i.aj, null
  br i1 %.not53, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = call i64 @rb_str_cat_cstr(i64 noundef %i.ai, ptr noundef nonnull %i.r) #23 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.r to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = call i64 @rb_str_cat(i64 noundef %i.ai, ptr noundef nonnull %i.r, i64 noundef %i.an) #23 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = load i64, ptr %.04182, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !27
  %i.ar = load i64, ptr @rb_eNameError, align 8, !tbaa !27
  %i.as = call i64 @rb_class_new_instance(i32 noundef 2, ptr noundef nonnull %i.b, i64 noundef %i.ar) #23
  call void @rb_exc_raise(i64 noundef %i.as) #24
  unreachable

.fold.split:                                      ; preds = %bb.h
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %.fold.split, %bb.j
  %.1 = phi i32 [ 1, %bb.h ], [ %.038, %bb.j ], [ %.038, %.fold.split ]
  %i.at = getelementptr i8, ptr %.039, i64 1
  br label %bb.h, !llvm.loop !168

.loopexit69:                                      ; preds = %bb.h, %bb.i
  store i8 36, ptr %i.r, align 1, !tbaa !17
  %.not54 = icmp eq i32 %.038, 0
  br i1 %.not54, label %.loopexit68, label %.preheader

.preheader:                                       ; preds = %.loopexit69, %bb.q
  %.140 = phi ptr [ %i.av, %bb.q ], [ %i.u, %.loopexit69 ] ; 3 uses
  %i.au = load i8, ptr %.140, align 1, !tbaa !17
  switch i8 %i.au, label %bb.q [
    i8 0, label %.loopexit68
    i8 45, label %bb.p
  ]

bb.p:                                             ; preds = %.preheader
  store i8 95, ptr %.140, align 1, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.p
  %i.av = getelementptr i8, ptr %.140, i64 1
  br label %.preheader, !llvm.loop !169

.thread:                                          ; preds = %.lr.ph, %bb.f
  %.143.ph = phi i64 [ %i.t, %bb.f ], [ %.04281, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.loopexit70

.loopexit68:                                      ; preds = %.preheader, %.loopexit69
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !27
  %i.ax = call i64 @rb_gv_set(ptr noundef nonnull %i.r, i64 noundef %i.aw) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ay = icmp sgt i64 %.04281, 1
  br i1 %i.ay, label %.lr.ph, label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit68, %rb_array_const_ptr.exit, %.thread
  %.2 = phi i64 [ %.143.ph, %.thread ], [ %.0.i63, %rb_array_const_ptr.exit ], [ 0, %.loopexit68 ]
  %i.az = load i64, ptr %i.e, align 8, !tbaa !26  ; 2 uses
  %i.ba = and i64 %i.az, 8192
  %.not.i59 = icmp eq i64 %i.ba, 0
  br i1 %.not.i59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit70
  %i.bb = lshr i64 %i.az, 15
  %i.bc = and i64 %i.bb, 127
  br label %rb_array_len.exit61

bb.s:                                             ; preds = %.loopexit70
  %i.bd = getelementptr i8, ptr %i.e, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !17
  br label %rb_array_len.exit61

rb_array_len.exit61:                              ; preds = %bb.r, %bb.s
  %.0.i60 = phi i64 [ %i.bc, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = sub i64 %.0.i60, %.2                    ; 2 uses
  %.not5683 = icmp eq i64 %i.bf, 0
  br i1 %.not5683, label %.loopexit, label %.lr.ph85

.lr.ph85:                                         ; preds = %rb_array_len.exit61, %.lr.ph85
  %.384 = phi i64 [ %i.bg, %.lr.ph85 ], [ %i.bf, %rb_array_len.exit61 ]
  %i.bg = add i64 %.384, -1                       ; 2 uses
  %i.bh = call i64 @rb_ary_shift(i64 noundef %i.d) #23 ; 0 uses
  %.not56 = icmp eq i64 %i.bg, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph85, !llvm.loop !170

.loopexit:                                        ; preds = %.lr.ph85, %rb_array_len.exit61, %bb.a
  %.044 = phi i32 [ %0, %bb.a ], [ -1, %rb_array_len.exit61 ], [ -1, %.lr.ph85 ]
  ret i32 %.044
}

declare i32 @rb_ruby_default_parser() local_unnamed_addr #3

declare void @rb_ast_dispose(ptr noundef) local_unnamed_addr #3

declare void @pm_parse_result_free(ptr noundef) local_unnamed_addr #3

declare ptr @rb_default_internal_encoding() local_unnamed_addr #3

declare void @rb_stdio_set_default_encoding() local_unnamed_addr #3

declare i64 @rb_parser_dump_tree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @prism_dump_tree(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pm_buffer_t, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  call void @pm_prettyprint(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.e = load i64, ptr %1, align 8, !tbaa !174
  %i.f = call i64 @rb_str_new(ptr noundef %i.d, i64 noundef %i.e) #23
  call void @pm_buffer_free(ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i64 %i.f
}

declare i64 @rb_io_write(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_io_flush(i64 noundef) local_unnamed_addr #3

declare i64 @rb_realpath_internal(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @rb_enc_copy(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_const_get(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pm_iseq_new_main(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_jump_tag(i32 noundef) local_unnamed_addr #5

declare ptr @rb_iseq_new_main(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_iseq_disasm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @process_options_global_setup(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %i.d = icmp sgt i64 %i.c, -2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.c, ptr @rb_backtrace_length_limit, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 120        ; 4 uses
  %i.f = load i16, ptr %i.e, align 8              ; 2 uses
  %i.g = and i16 %i.f, 32
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.226, ptr noundef nonnull @rb_f_sub, i32 noundef -1) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.227, ptr noundef nonnull @rb_f_gsub, i32 noundef -1) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.228, ptr noundef nonnull @rb_f_chop, i32 noundef 0) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.229, ptr noundef nonnull @rb_f_chomp, i32 noundef -1) #23
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i16 [ %.pre, %bb.d ], [ %i.f, %bb.c ]
  %i.i = and i16 %i.h, 64
  %.not14 = icmp eq i16 %i.i, 0
  %i.j = select i1 %.not14, ptr @false_value, ptr @true_value
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.230, ptr noundef nonnull %i.j, ptr noundef null) #23
  %i.k = load i16, ptr %i.e, align 8
  %i.l = and i16 %i.k, 128
  %.not15 = icmp eq i16 %i.l, 0
  %i.m = select i1 %.not15, ptr @false_value, ptr @true_value
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.231, ptr noundef nonnull %i.m, ptr noundef null) #23
  %i.n = load i16, ptr %i.e, align 8
  %i.o = and i16 %i.n, 256
  %.not16 = icmp eq i16 %i.o, 0
  %i.p = select i1 %.not16, ptr @false_value, ptr @true_value
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.232, ptr noundef nonnull %i.p, ptr noundef null) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.230) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.231) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.232) #23
  %i.q = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !88   ; 3 uses
  store i64 %i.r, ptr @rb_e_script, align 8, !tbaa !27
  %.not17 = icmp eq i64 %i.r, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i64 @rb_str_freeze(i64 noundef %i.r) #23 ; 0 uses
  %i.t = load i64, ptr %i.q, align 8, !tbaa !88
  tail call void @rb_vm_register_global_object(i64 noundef %i.t) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !176
  store volatile ptr %i.v, ptr %i.a, align 8, !tbaa !176
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !176 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load i64, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %.not18 = icmp eq i64 %i.w, 0
  %spec.select = select i1 %.not18, i64 4, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !184, !nonnull !121, !noundef !121
  %i.y = getelementptr i8, ptr %.val.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !197  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = getelementptr i8, ptr %i.z, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !198
  %i.ad = and i32 %i.ac, 8192
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %rb_exec_event_hook_script_compiled.exit, label %bb.h, !prof !199

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !200 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !203
  %i.ai = icmp eq i64 %spec.select, 4
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef range(i64 1, 0) %spec.select, i64 noundef %i.aj) #23
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !200
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi ptr [ %.pre.i, %bb.i ], [ %i.af, %bb.h ]
  %i.am = phi i64 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 8192, ptr %2, align 8, !tbaa !205
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0..0..0..0..0..0..i, ptr %i.an, align 8, !tbaa !206
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !207
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !208
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store i64 %i.am, ptr %i.ar, align 8, !tbaa !209
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 36, ptr %i.as, align 8, !tbaa !210
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.at, align 8, !tbaa !211
  call void @rb_exec_event_hooks(ptr noundef nonnull %2, ptr noundef %i.aa, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %rb_exec_event_hook_script_compiled.exit

rb_exec_event_hook_script_compiled.exit:          ; preds = %bb.g, %bb.j
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #8

declare i32 @rb_pipe(ptr noundef) local_unnamed_addr #3

declare i32 @rb_fork_ruby(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @setup_pager_env() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.157) #23
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ruby_setenv(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noreturn
declare i64 @rb_f_exec(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @ruby_setenv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_yjit_show_usage(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @rb_zjit_show_usage(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rb_enc_str_coderange_scan(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #3

declare i64 @rb_enc_interned_str(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #3

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #3

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #5

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_gv_set(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_parser_set_yydebug(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_parser_error_tolerant(i64 noundef) local_unnamed_addr #3

declare i64 @rb_parser_set_context(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_parser_compile_string(i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @pm_options_line_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pm_options_main_script_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @pm_options_encoding_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pm_options_command_line_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @pm_options_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pm_options_shebang_callback_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @prism_script_shebang_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 120        ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, -9
  store i16 %i.c, ptr %i.a, align 8
  %i.d = add i64 %2, 1
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #29 ; 4 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.e, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %2, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.a, %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 %2
  store i8 0, ptr %i.f, align 1, !tbaa !17
  %i.g = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85
  %.not = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %3, i64 40         ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91
  %.not31 = icmp eq i64 %i.j, 0
  %i.k = getelementptr i8, ptr %3, i64 56         ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92
  %.not32 = icmp eq i64 %i.l, 0
  tail call fastcc void @moreswitches(ptr noundef nonnull %i.e, ptr noundef nonnull %3, i32 noundef 0)
  tail call void @free(ptr noundef %i.e) #23
  %.val = load i16, ptr %i.a, align 8             ; 2 uses
  %i.m = lshr i16 %.val, 8
  %i.n = trunc nuw i16 %i.m to i8
  %spec.select.i = and i8 %i.n, 1
  %i.o = trunc i16 %.val to i8                    ; 3 uses
  %i.p = lshr i8 %i.o, 5
  %i.q = and i8 %i.p, 4
  %.1.i = or disjoint i8 %spec.select.i, %i.q
  %i.r = lshr i8 %i.o, 2
  %i.s = and i8 %i.r, 24
  %.3.i = or disjoint i8 %.1.i, %i.s
  %i.t = shl i8 %i.o, 3
  %i.u = and i8 %i.t, 32
  %.4.i = or disjoint i8 %.3.i, %i.u
  tail call void @pm_options_command_line_set(ptr noundef %0, i8 noundef zeroext %.4.i) #23
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.v = load i64, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not33 = icmp eq i64 %i.v, 0
  br i1 %.not33, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = and i64 %i.x, 8192
  %.not.i.i = icmp eq i64 %i.y, 0
  %i.z = getelementptr i8, ptr %i.w, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.aa, %bb.e ], [ %i.z, %bb.d ] ; 3 uses
  %i.ac = tail call i32 @rb_enc_find_index(ptr noundef %i.ab) #23 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ae = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.130, ptr noundef %i.ab) #24
  unreachable

bb.g:                                             ; preds = %RSTRING_PTR.exit.i
  %i.af = tail call ptr @rb_enc_from_index(i32 noundef %i.ac) #23
  %i.ag = tail call i32 @rb_enc_dummy_p(ptr noundef %i.af) #22
  %.not.i36 = icmp eq i32 %i.ag, 0
  br i1 %.not.i36, label %opt_enc_index.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.131, ptr noundef %i.ab) #24
  unreachable

opt_enc_index.exit:                               ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %3, i64 32
  store i32 %i.ac, ptr %i.ai, align 8, !tbaa !60
  %i.aj = tail call ptr @rb_string_value_cstr(ptr noundef nonnull %i.i) #23
  tail call void @pm_options_encoding_set(ptr noundef %0, ptr noundef %i.aj) #23
  br label %bb.i

bb.i:                                             ; preds = %opt_enc_index.exit, %bb.c, %ruby_nonempty_memcpy.exit
  br i1 %.not31, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !91  ; 2 uses
  %.not34 = icmp eq i64 %i.ak, 0
  br i1 %.not34, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  %i.an = and i64 %i.am, 8192
  %.not.i.i37 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr i8, ptr %i.al, i64 24     ; 2 uses
  br i1 %.not.i.i37, label %RSTRING_PTR.exit.i38, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  br label %RSTRING_PTR.exit.i38

RSTRING_PTR.exit.i38:                             ; preds = %bb.l, %bb.k
  %i.aq = phi ptr [ %i.ap, %bb.l ], [ %i.ao, %bb.k ] ; 3 uses
  %i.ar = tail call i32 @rb_enc_find_index(ptr noundef %i.aq) #23 ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
end_hunk_2
begin_hunk_3_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind allocsize(1,2) }
attributes #28 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = distinct !{!4, !18}
!5 = distinct !{!5, !18}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"long", !14, i64 0}
!20 = !{!"any pointer", !14, i64 0}
!21 = !{!"p1 _ZTS8st_table", !20, i64 0}
!22 = !{!"_Bool", !14, i64 0}
!23 = !{!"rb_box_struct", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !21, i64 88, !21, i64 96, !19, i64 104, !19, i64 112, !21, i64 120, !22, i64 128, !22, i64 129}
!24 = !{!23, !19, i64 24}
!25 = !{!"RBasic", !19, i64 0, !19, i64 8}
!26 = !{!25, !19, i64 0}
!27 = !{!19, !19, i64 0}
!28 = !{!"p1 _ZTS12rb_vm_struct", !20, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 _ZTS14ccan_list_node", !20, i64 0}
!31 = !{!"ccan_list_node", !30, i64 0, !30, i64 8}
!32 = !{!"ccan_list_head", !31, i64 0}
!33 = !{!"p1 _ZTS16rb_ractor_struct", !20, i64 0}
!34 = !{!"p1 _ZTS16rb_thread_struct", !20, i64 0}
!35 = !{!"", !14, i64 0, !33, i64 40, !15, i64 48, !14, i64 56, !22, i64 104}
!36 = !{!"", !14, i64 0, !33, i64 40, !22, i64 48, !14, i64 56, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !32, i64 120, !15, i64 136, !32, i64 144, !32, i64 160, !32, i64 176, !22, i64 192, !14, i64 200, !14, i64 248, !22, i64 296, !15, i64 300, !15, i64 304, !33, i64 312, !15, i64 320}
!37 = !{!"", !32, i64 0, !15, i64 16, !15, i64 20, !33, i64 24, !34, i64 32, !35, i64 40, !36, i64 152}
!38 = !{!"long long", !14, i64 0}
!39 = !{!"p1 _ZTS18global_object_list", !20, i64 0}
!40 = !{!"p1 _ZTS13rb_box_struct", !20, i64 0}
!41 = !{!"", !14, i64 0}
!42 = !{!"p1 _ZTS20rb_event_hook_struct", !20, i64 0}
!43 = !{!"rb_hook_list_struct", !42, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !22, i64 20}
!44 = !{!"p1 _ZTS22rb_postponed_job_queue", !20, i64 0}
!45 = !{!"p1 _ZTS11rb_objspace", !20, i64 0}
!46 = !{!"p1 _ZTS24gc_mark_func_data_struct", !20, i64 0}
!47 = !{!"", !45, i64 0, !46, i64 8}
!48 = !{!"p1 _ZTS15rb_at_exit_list", !20, i64 0}
!49 = !{!"p1 _ZTS19rb_builtin_function", !20, i64 0}
!50 = !{!"p1 _ZTS11rb_id_table", !20, i64 0}
!51 = !{!"p1 _ZTS9set_table", !20, i64 0}
!52 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!53 = !{!"rb_vm_struct", !19, i64 0, !37, i64 8, !20, i64 488, !38, i64 496, !15, i64 504, !15, i64 508, !15, i64 508, !15, i64 508, !15, i64 508, !19, i64 512, !39, i64 520, !14, i64 528, !40, i64 568, !40, i64 576, !21, i64 584, !41, i64 592, !43, i64 1112, !44, i64 1136, !15, i64 1144, !32, i64 1152, !14, i64 1168, !19, i64 1208, !19, i64 1216, !19, i64 1224, !19, i64 1232, !15, i64 1240, !47, i64 1248, !48, i64 1264, !49, i64 1272, !21, i64 1280, !50, i64 1288, !21, i64 1296, !51, i64 1304, !51, i64 1312, !50, i64 1320, !19, i64 1328, !14, i64 1336, !52, i64 9520}
!54 = !{!53, !15, i64 1144}
!55 = !{!"p1 omnipotent char", !20, i64 0}
!56 = !{!"", !19, i64 0, !15, i64 8}
!57 = !{!"", !56, i64 0}
!58 = !{!"", !15, i64 0, !15, i64 4}
!59 = !{!"ruby_cmdline_options", !55, i64 0, !19, i64 8, !19, i64 16, !57, i64 24, !57, i64 40, !57, i64 56, !19, i64 72, !58, i64 80, !58, i64 88, !15, i64 96, !19, i64 104, !55, i64 112, !15, i64 120, !15, i64 120, !15, i64 120, !15, i64 120, !15, i64 120, !15, i64 120, !15, i64 120, !15, i64 121, !15, i64 121, !15, i64 121, !15, i64 121, !15, i64 121}
!60 = !{!59, !15, i64 32}
!61 = !{!59, !15, i64 48}
!62 = !{!59, !15, i64 64}
!63 = !{!59, !15, i64 84}
!64 = !{!59, !15, i64 96}
!65 = !{!59, !19, i64 104}
!66 = !{!"p1 _ZTS20ruby_cmdline_options", !20, i64 0}
!67 = !{!"load_file_arg", !19, i64 0, !19, i64 8, !15, i64 16, !66, i64 24, !19, i64 32}
!68 = !{!67, !19, i64 0}
!69 = !{!67, !19, i64 8}
!70 = !{!67, !15, i64 16}
!71 = !{!67, !66, i64 24}
!72 = !{!67, !19, i64 32}
!73 = !{!"RString", !25, i64 0, !19, i64 16, !14, i64 24}
!74 = !{!73, !19, i64 16}
!75 = !{!53, !19, i64 1216}
!76 = !{!53, !19, i64 1208}
!77 = !{!"any p2 pointer", !20, i64 0}
!78 = !{!"p2 omnipotent char", !77, i64 0}
!79 = !{!"", !15, i64 0, !78, i64 8}
!80 = !{!79, !78, i64 8}
!81 = !{!55, !55, i64 0}
!82 = !{!79, !15, i64 0}
!83 = !{!22, !22, i64 0}
!84 = !{!"short", !14, i64 0}
!85 = !{!59, !19, i64 24}
!86 = !{!58, !15, i64 0}
!87 = !{!58, !15, i64 4}
!88 = !{!59, !19, i64 16}
!89 = !{!59, !55, i64 0}
!90 = !{!59, !19, i64 8}
!91 = !{!59, !19, i64 40}
!92 = !{!59, !19, i64 56}
!93 = !{!"p1 _ZTS11pm_lex_mode", !20, i64 0}
!94 = !{!"", !93, i64 0, !14, i64 8, !19, i64 264}
!95 = !{!"", !15, i64 0, !55, i64 8, !55, i64 16}
!96 = !{!"p1 _ZTS12pm_list_node", !20, i64 0}
!97 = !{!"", !19, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"", !55, i64 0, !55, i64 8}
!99 = !{!"p1 _ZTS8pm_scope", !20, i64 0}
!100 = !{!"p1 _ZTS15pm_context_node", !20, i64 0}
!101 = !{!"", !55, i64 0, !19, i64 8, !15, i64 16}
!102 = !{!"", !20, i64 0, !20, i64 8, !15, i64 16, !15, i64 20}
!103 = !{!"p1 long", !20, i64 0}
!104 = !{!"", !55, i64 0, !19, i64 8, !19, i64 16, !103, i64 24}
!105 = !{!"p1 _ZTS12pm_node_list", !20, i64 0}
!106 = !{!"pm_parser", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !94, i64 32, !55, i64 304, !55, i64 312, !95, i64 320, !95, i64 344, !55, i64 368, !55, i64 376, !97, i64 384, !97, i64 408, !98, i64 432, !97, i64 448, !97, i64 472, !99, i64 496, !100, i64 504, !20, i64 512, !20, i64 520, !20, i64 528, !55, i64 536, !20, i64 544, !101, i64 552, !102, i64 576, !104, i64 600, !84, i64 632, !101, i64 640, !15, i64 664, !20, i64 672, !105, i64 680, !15, i64 688, !14, i64 692, !14, i64 693, !22, i64 694, !22, i64 695, !22, i64 696, !22, i64 697, !22, i64 698, !22, i64 699, !22, i64 700, !22, i64 701, !22, i64 702, !22, i64 703, !22, i64 704}
!107 = !{!"p1 _ZTS16pm_options_scope", !20, i64 0}
!108 = !{!"pm_options", !20, i64 0, !20, i64 8, !101, i64 16, !15, i64 40, !101, i64 48, !19, i64 72, !107, i64 80, !15, i64 88, !14, i64 92, !14, i64 93, !22, i64 94, !22, i64 95, !22, i64 96, !22, i64 97}
!109 = !{!"pm_node", !84, i64 0, !84, i64 2, !15, i64 4, !98, i64 8}
!110 = !{!"p1 _ZTS13pm_scope_node", !20, i64 0}
!111 = !{!"p1 _ZTS7pm_node", !20, i64 0}
!112 = !{!"p1 int", !20, i64 0}
!113 = !{!"", !19, i64 0, !19, i64 8, !112, i64 16}
!114 = !{!"p1 _ZTS9pm_parser", !20, i64 0}
!115 = !{!"p1 _ZTS18OnigEncodingTypeST", !20, i64 0}
!116 = !{!"p1 _ZTS16iseq_link_anchor", !20, i64 0}
!117 = !{!"pm_scope_node", !109, i64 0, !110, i64 24, !111, i64 32, !111, i64 40, !111, i64 48, !113, i64 56, !114, i64 80, !115, i64 88, !103, i64 96, !115, i64 104, !15, i64 112, !103, i64 120, !21, i64 128, !15, i64 136, !116, i64 144}
!118 = !{!"", !106, i64 0, !108, i64 712, !101, i64 816, !117, i64 840, !22, i64 992}
!119 = !{!"OnigEncodingTypeST", !20, i64 0, !55, i64 8, !15, i64 16, !15, i64 20, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !15, i64 128, !15, i64 132}
!120 = !{!59, !55, i64 112}
!121 = !{}
!122 = distinct !{!122, !18}
!123 = distinct !{!123, !18}
!124 = distinct !{null}
!125 = distinct !{!125, !18}
!126 = distinct !{!126, !18}
!127 = distinct !{!127, !18}
!128 = !{!23, !19, i64 56}
!129 = !{!"ruby_opt_message", !55, i64 0, !84, i64 8, !84, i64 10}
!130 = !{!129, !55, i64 0}
!131 = !{!129, !84, i64 8}
!132 = !{!129, !84, i64 10}
!133 = !{!59, !15, i64 80}
!134 = !{!23, !19, i64 32}
!135 = !{!23, !19, i64 64}
!136 = !{!"p1 _ZTS18node_buffer_struct", !20, i64 0}
!137 = !{!"p1 _ZTS5RNode", !20, i64 0}
!138 = !{!"p1 _ZTS13rb_parser_ary", !20, i64 0}
!139 = !{!"rb_ast_body_struct", !137, i64 0, !138, i64 8, !15, i64 16, !15, i64 20, !15, i64 20}
!140 = !{!"rb_ast_struct", !136, i64 0, !139, i64 8}
!141 = !{!140, !137, i64 8}
!142 = !{!"p1 _ZTS13rb_ast_struct", !20, i64 0}
!143 = !{!"", !142, i64 0, !118, i64 8}
!144 = !{!143, !142, i64 0}
!145 = !{!119, !55, i64 8}
!146 = !{!118, !55, i64 432}
!147 = !{!118, !15, i64 976}
!148 = !{!106, !55, i64 432}
!149 = !{!106, !55, i64 304}
!150 = !{!106, !55, i64 312}
!151 = !{!20, !20, i64 0}
!152 = !{!"rb_block", !14, i64 0, !15, i64 24}
!153 = !{!152, !15, i64 24}
!154 = !{!78, !78, i64 0}
!155 = distinct !{!155, !18}
!156 = distinct !{!156, !18}
!157 = distinct !{!157, !18}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18}
!160 = !{!59, !15, i64 88}
!161 = !{!59, !15, i64 92}
!162 = !{i8 0, i8 2}
!163 = distinct !{null}
!164 = distinct !{!164, !18}
!165 = !{!119, !20, i64 32}
!166 = !{!119, !20, i64 88}
!167 = distinct !{!167, !18}
!168 = distinct !{!168, !18}
!169 = distinct !{!169, !18}
!170 = distinct !{!170, !18}
!171 = !{!118, !111, i64 872}
!172 = !{!"", !19, i64 0, !19, i64 8, !55, i64 16}
!173 = !{!172, !55, i64 16}
!174 = !{!172, !19, i64 0}
!175 = !{!"p1 _ZTS27rb_execution_context_struct", !20, i64 0}
!176 = !{!175, !175, i64 0}
!177 = !{!"p1 _ZTS23rb_control_frame_struct", !20, i64 0}
!178 = !{!"p1 _ZTS9rb_vm_tag", !20, i64 0}
!179 = !{!"p1 _ZTS15rb_fiber_struct", !20, i64 0}
!180 = !{!"p1 _ZTS19rb_trace_arg_struct", !20, i64 0}
!181 = !{!"", !19, i64 0, !19, i64 8}
!182 = !{!"", !103, i64 0, !103, i64 8, !19, i64 16, !14, i64 24}
!183 = !{!"rb_execution_context_struct", !103, i64 0, !19, i64 8, !177, i64 16, !178, i64 24, !15, i64 32, !15, i64 36, !179, i64 40, !34, i64 48, !38, i64 56, !38, i64 64, !50, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !103, i64 104, !19, i64 112, !180, i64 120, !19, i64 128, !19, i64 136, !14, i64 144, !15, i64 145, !19, i64 152, !181, i64 160, !182, i64 176}
!184 = !{!183, !34, i64 48}
!185 = !{!"p1 _ZTS16rb_native_thread", !20, i64 0}
!186 = !{!"", !31, i64 0, !31, i64 16, !31, i64 32, !31, i64 48, !31, i64 64}
!187 = !{!"", !19, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!188 = !{!"rb_thread_sched_waiting", !15, i64 0, !187, i64 8, !31, i64 32}
!189 = !{!"p1 _ZTS17coroutine_context", !20, i64 0}
!190 = !{!"rb_thread_sched_item", !186, i64 0, !188, i64 80, !15, i64 128, !22, i64 132, !22, i64 133, !20, i64 136, !189, i64 144}
!191 = !{!"p1 _ZTS15rb_calling_info", !20, i64 0}
!192 = !{!"rb_unblock_callback", !20, i64 0, !20, i64 8}
!193 = !{!"p1 _ZTS15rb_mutex_struct", !20, i64 0}
!194 = !{!"p1 _ZTS15rb_waiting_list", !20, i64 0}
!195 = !{!"rb_ext_config", !22, i64 0}
!196 = !{!"rb_thread_struct", !31, i64 0, !19, i64 16, !33, i64 24, !28, i64 32, !185, i64 40, !175, i64 48, !190, i64 56, !22, i64 208, !15, i64 212, !19, i64 216, !191, i64 224, !19, i64 232, !19, i64 240, !15, i64 248, !15, i64 248, !15, i64 248, !15, i64 248, !15, i64 248, !15, i64 248, !14, i64 249, !15, i64 252, !20, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !14, i64 296, !192, i64 336, !19, i64 352, !193, i64 360, !32, i64 368, !194, i64 384, !14, i64 392, !15, i64 416, !179, i64 424, !19, i64 432, !15, i64 440, !19, i64 448, !77, i64 456, !195, i64 464}
!197 = !{!196, !33, i64 24}
!198 = !{!43, !15, i64 8}
!199 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!200 = !{!183, !177, i64 16}
!201 = !{!"p1 _ZTS14rb_iseq_struct", !20, i64 0}
!202 = !{!"rb_control_frame_struct", !103, i64 0, !103, i64 8, !201, i64 16, !19, i64 24, !103, i64 32, !20, i64 40, !20, i64 48}
!203 = !{!202, !19, i64 24}
!204 = !{!"rb_trace_arg_struct", !15, i64 0, !175, i64 8, !177, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !15, i64 64, !15, i64 68, !19, i64 72}
!205 = !{!204, !15, i64 0}
!206 = !{!204, !175, i64 8}
!207 = !{!204, !177, i64 16}
!208 = !{!204, !19, i64 24}
!209 = !{!204, !19, i64 56}
!210 = !{!204, !19, i64 72}
!211 = !{!204, !15, i64 64}
end_hunk_3
