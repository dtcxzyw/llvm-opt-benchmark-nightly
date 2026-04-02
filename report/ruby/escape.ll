begin_hunk_0
@html_escape_table = internal unnamed_addr constant <{ [63 x %struct.anon], [193 x %struct.anon] }> <{ [63 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i8 6, [7 x i8] c"&quot;\00" }, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i8 5, [7 x i8] c"&amp;\00\00" }, %struct.anon { i8 5, [7 x i8] c"&#39;\00\00" }, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i8 4, [7 x i8] c"&lt;\00\00\00" }, %struct.anon zeroinitializer, %struct.anon { i8 4, [7 x i8] c"&gt;\00\00\00" }], [193 x %struct.anon] zeroinitializer }>, align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@ruby_hexdigits = external local_unnamed_addr constant [0 x i8], align 1
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
end_hunk_0
begin_hunk_1
; Function Attrs: nounwind uwtable
define void @Init_escape() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_ext_ractor_safe(i1 noundef zeroext true) #8
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 16) #8
  store i64 %i.a, ptr @id_accept_charset, align 8, !tbaa !10
  tail call void @InitVM_escape()
  ret void
end_hunk_1
begin_hunk_2
define void @InitVM_escape() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str.1, i64 noundef %i.a) #8 ; 2 uses
  store i64 %i.b, ptr @rb_cCGI, align 8, !tbaa !10
  %i.c = tail call i64 @rb_define_module_under(i64 noundef %i.b, ptr noundef nonnull @.str.2) #8
  store i64 %i.c, ptr @rb_mEscapeExt, align 8, !tbaa !10
  %i.d = load i64, ptr @rb_cCGI, align 8, !tbaa !10
  %i.e = tail call i64 @rb_define_module_under(i64 noundef %i.d, ptr noundef nonnull @.str.3) #8
  store i64 %i.e, ptr @rb_mEscape, align 8, !tbaa !10
  %i.f = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @cgiesc_escape_html, i32 noundef 1) #8
  %i.g = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @cgiesc_unescape_html, i32 noundef 1) #8
  %i.h = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.6, ptr noundef nonnull @cgiesc_escape_uri_component, i32 noundef 1) #8
  %i.i = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6) #8
  %i.j = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull @cgiesc_unescape_uri_component, i32 noundef -1) #8
  %i.k = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.k, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #8
  %i.l = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.10, ptr noundef nonnull @cgiesc_escape, i32 noundef 1) #8
  %i.m = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.11, ptr noundef nonnull @cgiesc_unescape, i32 noundef -1) #8
  %i.n = load i64, ptr @rb_mEscape, align 8, !tbaa !10
  %i.o = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_prepend_module(i64 noundef %i.n, i64 noundef %i.o) #8
  %i.p = load i64, ptr @rb_cCGI, align 8, !tbaa !10
  %i.q = load i64, ptr @rb_mEscapeExt, align 8, !tbaa !10
  tail call void @rb_extend_object(i64 noundef %i.p, i64 noundef %i.q) #8
  ret void
}

end_hunk_2
begin_hunk_3
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = call ptr @rb_enc_get(i64 noundef %i.c) #8 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 20
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %bb.a
  %i.f = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.d) #9
  %.not3.i.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i.i, label %bb.b, label %rb_enc_str_asciicompat_p.exit.thread

end_hunk_3
begin_hunk_4
  br label %bb.c

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %bb.a, %rb_enc_str_asciicompat_p.exit
  %i.i = call i64 @rb_call_super(i32 noundef 1, ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %rb_enc_str_asciicompat_p.exit.thread, %bb.b
end_hunk_4
begin_hunk_5
  %i.d = alloca i8, align 1                       ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.e, align 8, !tbaa !10
  %i.f = call i64 @rb_string_value(ptr noundef nonnull %i.e) #8 ; 0 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !10
  %i.h = call ptr @rb_enc_get(i64 noundef %i.g) #8 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 20
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %bb.a
  %i.j = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.h) #9
  %.not3.i.i = icmp eq i32 %i.j, 0
  br i1 %.not3.i.i, label %bb.b, label %rb_enc_str_asciicompat_p.exit.thread

bb.b:                                             ; preds = %rb_enc_str_asciicompat_p.exit
  %i.k = load i64, ptr %i.e, align 8, !tbaa !10   ; 4 uses
  %i.l = call ptr @rb_enc_get(i64 noundef %i.k) #8 ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val140.i = load ptr, ptr %i.m, align 8, !tbaa !16 ; 2 uses
  %i.n = call i32 @strcasecmp(ptr noundef %.val140.i, ptr noundef nonnull @.str.13) #9
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call i32 @strcasecmp(ptr noundef %.val140.i, ptr noundef nonnull @.str.14) #9
  %i.q = icmp eq i32 %i.p, 0
  %i.r = select i1 %i.q, i64 256, i64 128
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %i.r, %bb.c ], [ 1114111, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.t = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17   ; 12 uses
end_hunk_5
begin_hunk_6
  %.0111158.i = phi i64 [ 0, %.lr.ph.i ], [ %.3.ph.i, %bb.ai ] ; 20 uses
  %.0113157.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cv, %bb.ai ] ; 12 uses
  %.0117156.i = phi i64 [ 0, %.lr.ph.i ], [ %.1118.ph.i, %bb.ai ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %.0113157.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.af, 38
end_hunk_6
begin_hunk_7

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.aa, i64 %i.ak
  %2 = load i32, ptr %i.an, align 1
  %3 = icmp ne i32 %2, 997420912
  %4 = zext i1 %3 to i32
  %i.ao = icmp eq i32 %4, 0
  br i1 %i.ao, label %bb.ae, label %.thread.i

bb.k:                                             ; preds = %bb.i
end_hunk_7
begin_hunk_8
  br i1 %i.ap, label %.thread.i, label %bb.ai

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.aq = getelementptr inbounds i8, ptr %i.aa, i64 %i.ak ; 2 uses
  %5 = load i16, ptr %i.aq, align 1
  %6 = xor i16 %5, 28781
  %7 = getelementptr i8, ptr %i.aq, i64 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i16
  %10 = xor i16 %9, 59
  %11 = or i16 %6, %10
  %12 = icmp ne i16 %11, 0
  %13 = zext i1 %12 to i32
  %i.ar = icmp eq i32 %13, 0
  br i1 %i.ar, label %bb.ae, label %bb.ai

bb.l:                                             ; preds = %bb.h
end_hunk_8
begin_hunk_9

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds i8, ptr %i.aa, i64 %i.as
  %14 = load i32, ptr %i.av, align 1
  %15 = icmp ne i32 %14, 997486453
  %16 = zext i1 %15 to i32
  %i.aw = icmp eq i32 %16, 0
  br i1 %i.aw, label %bb.ae, label %bb.ai

bb.n:                                             ; preds = %bb.h
end_hunk_9
begin_hunk_10

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds i8, ptr %i.aa, i64 %i.ax
  %17 = load i16, ptr %i.ba, align 1
  %18 = icmp ne i16 %17, 15220
  %19 = zext i1 %18 to i32
  %i.bb = icmp eq i32 %19, 0
  br i1 %i.bb, label %bb.ae, label %bb.ai

bb.p:                                             ; preds = %bb.h
end_hunk_10
begin_hunk_11

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds i8, ptr %i.aa, i64 %i.bc
  %20 = load i16, ptr %i.bf, align 1
  %21 = icmp ne i16 %20, 15220
  %22 = zext i1 %21 to i32
  %i.bg = icmp eq i32 %22, 0
  br i1 %i.bg, label %bb.ae, label %bb.ai

bb.r:                                             ; preds = %bb.h
end_hunk_11
begin_hunk_12
  br i1 %or.cond175.i, label %._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = call i64 @ruby_scan_digits(ptr noundef nonnull %i.bk, i64 noundef %i.bi, i32 noundef 10, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  br label %bb.w

._crit_edge.i:                                    ; preds = %bb.r
end_hunk_12
begin_hunk_13
  ]

bb.v:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.u
  %i.by = call i64 @ruby_scan_digits(ptr noundef nonnull %i.bt, i64 noundef %i.br, i32 noundef 16, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
end_hunk_13
begin_hunk_14
  br i1 %.not133.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = call i64 @rb_str_buf_new(i64 noundef %i.v) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.i = phi i64 [ %.0111158.i, %bb.y ], [ %i.ce, %bb.z ] ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.aa, i64 %.0117156.i
  %i.cg = call i64 @rb_str_cat(i64 noundef %.1.i, ptr noundef %i.cf, i64 noundef %i.ag) #8 ; 0 uses
  br i1 %i.ac, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ch = trunc nuw nsw i64 %.0110.i to i32
  %i.ci = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.cj = call i32 %i.ci(i32 noundef range(i32 0, 1114111) %i.ch, ptr noundef nonnull %i.c, ptr noundef %i.l) #8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = call i64 @rb_str_cat(i64 noundef %.1.i, ptr noundef nonnull %i.c, i64 noundef %i.ck) #8 ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cm = trunc i64 %.0110.i to i8
  store i8 %i.cm, ptr %i.d, align 1, !tbaa !21
  %i.cn = call i64 @rb_str_cat(i64 noundef %.1.i, ptr noundef nonnull %i.d, i64 noundef 1) #8 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
end_hunk_14
begin_hunk_15
  br i1 %.not138.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cq = call i64 @rb_str_buf_new(i64 noundef %i.v) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.i = phi i64 [ %.0111158.i, %bb.ae ], [ %i.cq, %bb.af ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %i.aa, i64 %.0117156.i
  %i.cs = call i64 @rb_str_cat(i64 noundef %.2.i, ptr noundef %i.cr, i64 noundef %i.ag) #8 ; 0 uses
  %i.ct = call i64 @rb_str_cat(i64 noundef %.2.i, ptr noundef nonnull %i.d, i64 noundef 1) #8 ; 0 uses
  %i.cu = add nsw i64 %i.cp, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.loopexit.i

bb.ai:                                            ; preds = %bb.ag, %bb.ad, %bb.x, %bb.w, %switch.early.test.i, %bb.t, %._crit_edge.i, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.thread.i, %bb.k, %bb.h, %bb.f
  %.1118.ph.i = phi i64 [ %.0117156.i, %bb.h ], [ %.0117156.i, %bb.x ], [ %.0117156.i, %switch.early.test.i ], [ %.0117156.i, %._crit_edge.i ], [ %.0117156.i, %bb.q ], [ %.0117156.i, %bb.o ], [ %.0117156.i, %bb.m ], [ %.0117156.i, %.thread.i ], [ %i.co, %bb.ad ], [ %.0117156.i, %bb.t ], [ %.0117156.i, %bb.n ], [ %.0117156.i, %bb.l ], [ %.0117156.i, %bb.k ], [ %i.cu, %bb.ag ], [ %.0117156.i, %bb.w ], [ %.0117156.i, %bb.f ], [ %.0117156.i, %bb.p ] ; 2 uses
  %.3116.ph.i = phi i64 [ %.0113157.i, %bb.h ], [ %i.ah, %bb.x ], [ %i.ah, %switch.early.test.i ], [ %i.ah, %._crit_edge.i ], [ %i.ah, %bb.q ], [ %i.ah, %bb.o ], [ %i.ah, %bb.m ], [ %i.ah, %.thread.i ], [ %i.ca, %bb.ad ], [ %i.ah, %bb.t ], [ %i.ah, %bb.n ], [ %i.ah, %bb.l ], [ %i.ah, %bb.k ], [ %i.cp, %bb.ag ], [ %i.ah, %bb.w ], [ %.0113157.i, %bb.f ], [ %i.ah, %bb.p ]
  %.3.ph.i = phi i64 [ %.0111158.i, %bb.h ], [ %.0111158.i, %bb.x ], [ %.0111158.i, %switch.early.test.i ], [ %.0111158.i, %._crit_edge.i ], [ %.0111158.i, %bb.q ], [ %.0111158.i, %bb.o ], [ %.0111158.i, %bb.m ], [ %.0111158.i, %.thread.i ], [ %.1.i, %bb.ad ], [ %.0111158.i, %bb.t ], [ %.0111158.i, %bb.n ], [ %.0111158.i, %bb.l ], [ %.0111158.i, %bb.k ], [ %.2.i, %bb.ag ], [ %.0111158.i, %bb.w ], [ %.0111158.i, %bb.f ], [ %.0111158.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.cv = add nsw i64 %.3116.ph.i, 1              ; 2 uses
  %i.cw = icmp slt i64 %i.cv, %i.v
  br i1 %i.cw, label %bb.f, label %.loopexit.i, !llvm.loop !23
end_hunk_15
begin_hunk_16
bb.aj:                                            ; preds = %.loopexit.i
  %i.cx = getelementptr inbounds i8, ptr %i.aa, i64 %.0117155.i
  %i.cy = sub nsw i64 %i.v, %.0117155.i
  %i.cz = call i64 @rb_str_cat(i64 noundef %.0111153.i, ptr noundef %i.cx, i64 noundef %i.cy) #8 ; 0 uses
  %i.da = call ptr @rb_enc_get(i64 noundef %i.k) #8
  %i.db = call i64 @rb_enc_associate(i64 noundef %.0111153.i, ptr noundef %i.da) #8 ; 0 uses
  br label %optimized_unescape_html.exit

.loopexit.thread.i:                               ; preds = %.loopexit.i, %RSTRING_PTR.exit.i
  %i.dc = call i64 @rb_str_dup(i64 noundef %i.k) #8
  br label %optimized_unescape_html.exit

optimized_unescape_html.exit:                     ; preds = %bb.aj, %.loopexit.thread.i
  %.0112.i = phi i64 [ %.0111153.i, %bb.aj ], [ %i.dc, %.loopexit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ak

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %bb.a, %rb_enc_str_asciicompat_p.exit
  %i.dd = call i64 @rb_call_super(i32 noundef 1, ptr noundef nonnull %i.e) #8
  br label %bb.ak

bb.ak:                                            ; preds = %rb_enc_str_asciicompat_p.exit.thread, %optimized_unescape_html.exit
end_hunk_16
begin_hunk_17
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = call ptr @rb_enc_get(i64 noundef %i.c) #8 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 20
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %bb.a
  %i.f = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.d) #9
  %.not3.i.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i.i, label %bb.b, label %rb_enc_str_asciicompat_p.exit.thread

end_hunk_17
begin_hunk_18
  br label %bb.c

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %bb.a, %rb_enc_str_asciicompat_p.exit
  %i.i = call i64 @rb_call_super(i32 noundef 1, ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %rb_enc_str_asciicompat_p.exit.thread, %bb.b
end_hunk_18
begin_hunk_19
define internal i64 @cgiesc_unescape_uri_component(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = add i32 %0, -3
  %or.cond.i = icmp ult i32 %i.b, -2
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #10
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.c, ptr %i.a, align 8, !tbaa !10
  %i.d = call i64 @rb_string_value(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !10
  %i.f = call ptr @rb_enc_get(i64 noundef %i.e) #8 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 20
  %.val.i.i = load i32, ptr %i.g, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %rb_check_arity.exit
  %i.h = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.f) #9
  %.not3.i.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i.i, label %bb.c, label %rb_enc_str_asciicompat_p.exit.thread

end_hunk_19
begin_hunk_20
  %.0.in.i.i = phi ptr [ %i.p, %bb.f ], [ @rb_cNilClass, %bb.h ], [ @rb_cTrueClass, %bb.i ], [ @rb_cFalseClass, %bb.g ], [ @rb_cInteger, %bb.j ], [ %spec.select.i.i, %bb.k ]
  %.0.i.i8 = load i64, ptr %.0.in.i.i, align 8, !tbaa !10
  %i.t = load i64, ptr @id_accept_charset, align 8, !tbaa !10
  %i.u = call i64 @rb_cvar_get(i64 noundef %.0.i.i8, i64 noundef %i.t) #8
  br label %accept_charset.exit

accept_charset.exit:                              ; preds = %bb.d, %rb_class_of.exit.i
end_hunk_20
begin_hunk_21
  br label %bb.l

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %rb_check_arity.exit, %rb_enc_str_asciicompat_p.exit
  %i.x = call i64 @rb_call_super(i32 noundef %0, ptr noundef nonnull %1) #8
  br label %bb.l

bb.l:                                             ; preds = %rb_enc_str_asciicompat_p.exit.thread, %accept_charset.exit
  %.0 = phi i64 [ %i.w, %accept_charset.exit ], [ %i.x, %rb_enc_str_asciicompat_p.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

end_hunk_21
begin_hunk_22
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = call ptr @rb_enc_get(i64 noundef %i.c) #8 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 20
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %bb.a
  %i.f = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.d) #9
  %.not3.i.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i.i, label %bb.b, label %rb_enc_str_asciicompat_p.exit.thread

end_hunk_22
begin_hunk_23
  br label %bb.c

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %bb.a, %rb_enc_str_asciicompat_p.exit
  %i.i = call i64 @rb_call_super(i32 noundef 1, ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %rb_enc_str_asciicompat_p.exit.thread, %bb.b
end_hunk_23
begin_hunk_24
define internal i64 @cgiesc_unescape(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = add i32 %0, -3
  %or.cond.i = icmp ult i32 %i.b, -2
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #10
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.c, ptr %i.a, align 8, !tbaa !10
  %i.d = call i64 @rb_string_value(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !10
  %i.f = call ptr @rb_enc_get(i64 noundef %i.e) #8 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 20
  %.val.i.i = load i32, ptr %i.g, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %rb_check_arity.exit
  %i.h = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.f) #9
  %.not3.i.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i.i, label %bb.c, label %rb_enc_str_asciicompat_p.exit.thread

end_hunk_24
begin_hunk_25
  %.0.in.i.i = phi ptr [ %i.p, %bb.f ], [ @rb_cNilClass, %bb.h ], [ @rb_cTrueClass, %bb.i ], [ @rb_cFalseClass, %bb.g ], [ @rb_cInteger, %bb.j ], [ %spec.select.i.i, %bb.k ]
  %.0.i.i8 = load i64, ptr %.0.in.i.i, align 8, !tbaa !10
  %i.t = load i64, ptr @id_accept_charset, align 8, !tbaa !10
  %i.u = call i64 @rb_cvar_get(i64 noundef %.0.i.i8, i64 noundef %i.t) #8
  br label %accept_charset.exit

accept_charset.exit:                              ; preds = %bb.d, %rb_class_of.exit.i
end_hunk_25
begin_hunk_26
  br label %bb.l

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %rb_check_arity.exit, %rb_enc_str_asciicompat_p.exit
  %i.x = call i64 @rb_call_super(i32 noundef %0, ptr noundef nonnull %1) #8
  br label %bb.l

bb.l:                                             ; preds = %rb_enc_str_asciicompat_p.exit.thread, %accept_charset.exit
  %.0 = phi i64 [ %i.w, %accept_charset.exit ], [ %i.x, %rb_enc_str_asciicompat_p.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

end_hunk_26
begin_hunk_27
define internal fastcc i64 @optimized_escape_html(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 3 uses
end_hunk_27
begin_hunk_28
  br i1 %i.e, label %bb.b, label %escaped_length.exit

bb.b:                                             ; preds = %bb.a
  tail call void @ruby_malloc_size_overflow(i64 noundef %i.d, i64 noundef 6) #10
  unreachable

escaped_length.exit:                              ; preds = %bb.a
end_hunk_28
begin_hunk_29
escaped_length.exit33:                            ; preds = %escaped_length.exit
  %i.i = add nsw i64 %i.f, 6
  %i.j = lshr i64 %i.i, 3
  %i.k = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 -9223372036854775808, 9223372036854775801) %i.f, i64 noundef %i.j) #11
  br label %bb.c

bb.c:                                             ; preds = %escaped_length.exit33, %escaped_length.exit32
end_hunk_29
begin_hunk_30
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call i64 @rb_str_new(ptr noundef nonnull %i.l, i64 noundef %i.ah) #8 ; 2 uses
  %i.ak = call ptr @rb_enc_get(i64 noundef %0) #8
  %i.al = call i64 @rb_enc_associate(i64 noundef %i.aj, ptr noundef %i.ak) #8 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.am = call i64 @rb_str_dup(i64 noundef %0) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ %i.aj, %bb.h ], [ %i.am, %bb.i ]
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

end_hunk_30
begin_hunk_31
define internal fastcc i64 @optimized_escape(i64 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 37, ptr %i.a, align 4
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_31
begin_hunk_32
  br i1 %.not41.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = call i64 @rb_str_buf_new(i64 noundef %i.d) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us = phi i64 [ %.03545.us, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %.03644.us
  %i.q = sub nsw i64 %.03446.us, %.03644.us
  %i.r = call i64 @rb_str_cat(i64 noundef %.1.us, ptr noundef %i.p, i64 noundef %i.q) #8 ; 0 uses
  %i.s = add nuw nsw i64 %.03446.us, 1
  %i.t = zext i8 %i.n to i32                      ; 2 uses
  %i.u = lshr i32 %i.t, 4
end_hunk_32
begin_hunk_33
  %i.aa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ruby_hexdigits, i64 16), i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21
  store i8 %i.ab, ptr %i.l, align 2, !tbaa !21
  %i.ac = call i64 @rb_str_cat(i64 noundef %.1.us, ptr noundef nonnull %i.a, i64 noundef 3) #8 ; 0 uses
  br label %url_unreserved_char.exit.us

url_unreserved_char.exit.us:                      ; preds = %bb.e, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us
end_hunk_33
begin_hunk_34
  br i1 %.not41, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = call i64 @rb_str_buf_new(i64 noundef %i.d) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %.03545, %bb.f ], [ %i.ag, %bb.g ] ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %i.i, i64 %.03644
  %i.ai = sub nsw i64 %.03446, %.03644
  %i.aj = call i64 @rb_str_cat(i64 noundef %.1, ptr noundef %i.ah, i64 noundef %i.ai) #8 ; 0 uses
  %i.ak = add nuw nsw i64 %.03446, 1              ; 2 uses
  %i.al = icmp eq i8 %i.af, 32
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = call i64 @rb_str_cat(i64 noundef %.1, ptr noundef nonnull @.str.19, i64 noundef 1) #8 ; 0 uses
  br label %url_unreserved_char.exit

bb.j:                                             ; preds = %bb.h
end_hunk_34
begin_hunk_35
  %i.au = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ruby_hexdigits, i64 16), i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21
  store i8 %i.av, ptr %i.l, align 2, !tbaa !21
  %i.aw = call i64 @rb_str_cat(i64 noundef %.1, ptr noundef nonnull %i.a, i64 noundef 3) #8 ; 0 uses
  br label %url_unreserved_char.exit

url_unreserved_char.exit:                         ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %bb.i, %bb.j
end_hunk_35
begin_hunk_36
bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds i8, ptr %i.i, i64 %.036.lcssa
  %i.az = sub nsw i64 %i.d, %.036.lcssa
  %i.ba = call i64 @rb_str_cat(i64 noundef %.035.lcssa, ptr noundef %i.ay, i64 noundef %i.az) #8 ; 0 uses
  %i.bb = call ptr @rb_enc_get(i64 noundef %0) #8
  %i.bc = call i64 @rb_enc_associate(i64 noundef %.035.lcssa, ptr noundef %i.bb) #8 ; 0 uses
  br label %bb.l

._crit_edge.thread:                               ; preds = %RSTRING_PTR.exit, %._crit_edge
  %i.bd = call i64 @rb_str_dup(i64 noundef %0) #8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k
  %.0 = phi i64 [ %.035.lcssa, %bb.k ], [ %i.bd, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

end_hunk_36
begin_hunk_37
define internal fastcc i64 @optimized_unescape(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 9 uses
  %i.b = tail call ptr @rb_to_encoding(i64 noundef %1) #8
  %i.c = tail call i32 @rb_enc_to_index(ptr noundef %i.b) #9 ; 2 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 8 uses
end_hunk_37
begin_hunk_38
  %.05897.us = phi i64 [ %i.ap, %bb.i ], [ 0, %.lr.ph ] ; 7 uses
  %.05995.us = phi i64 [ %.160.ph.us, %bb.i ], [ 0, %.lr.ph ] ; 6 uses
  %.06193.us = phi i64 [ %.263.ph.us, %bb.i ], [ 0, %.lr.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %.05897.us ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21
  %i.o = icmp eq i8 %i.n, 37
end_hunk_38
begin_hunk_39
  br i1 %.not70.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = call i64 @rb_str_buf_new(i64 noundef %i.f) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.162.us = phi i64 [ %.06193.us, %bb.f ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.k, i64 %.05995.us
  %i.al = sub nsw i64 %.05897.us, %.05995.us
  %i.am = call i64 @rb_str_cat(i64 noundef %.162.us, ptr noundef %i.ak, i64 noundef %i.al) #8 ; 0 uses
  %i.an = add nsw i64 %.05897.us, 2
  %i.ao = call i64 @rb_str_cat(i64 noundef %.162.us, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us, %bb.h, %switch.early.test88.us, %switch.early.test.us
  %.263.ph.us = phi i64 [ %.06193.us, %switch.early.test88.us ], [ %.06193.us, %switch.early.test.us ], [ %.162.us, %bb.h ], [ %.06193.us, %.lr.ph.split.us ] ; 2 uses
  %.160.ph.us = phi i64 [ %.05995.us, %switch.early.test88.us ], [ %.05995.us, %switch.early.test.us ], [ %i.p, %bb.h ], [ %.05995.us, %.lr.ph.split.us ] ; 2 uses
  %.1.ph.us = phi i64 [ %.05897.us, %switch.early.test88.us ], [ %.05897.us, %switch.early.test.us ], [ %i.an, %bb.h ], [ %.05897.us, %.lr.ph.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ap = add nsw i64 %.1.ph.us, 1                ; 2 uses
  %i.aq = icmp slt i64 %i.ap, %i.f
  br i1 %i.aq, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !29
end_hunk_39
begin_hunk_40
  %.05897 = phi i64 [ %i.bu, %bb.q ], [ 0, %.lr.ph ] ; 7 uses
  %.05995 = phi i64 [ %.160.ph, %bb.q ], [ 0, %.lr.ph ] ; 6 uses
  %.06193 = phi i64 [ %.263.ph, %bb.q ], [ 0, %.lr.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ar = getelementptr inbounds i8, ptr %i.k, i64 %.05897 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  switch i8 %i.as, label %bb.q [
end_hunk_40
begin_hunk_41
  br i1 %.not70, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = call i64 @rb_str_buf_new(i64 noundef %i.f) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.162 = phi i64 [ %.06193, %bb.n ], [ %i.bn, %bb.o ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.k, i64 %.05995
  %i.bp = sub nsw i64 %.05897, %.05995
  %i.bq = call i64 @rb_str_cat(i64 noundef %.162, ptr noundef %i.bo, i64 noundef %i.bp) #8 ; 0 uses
  %i.br = add nsw i64 %.057, %.05897              ; 2 uses
  %i.bs = add nsw i64 %i.br, 1
  %i.bt = call i64 @rb_str_cat(i64 noundef %.162, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 0 uses
  br label %bb.q

.split.us:                                        ; preds = %bb.j, %bb.c
  %.us-phi = phi i64 [ %.06193.us, %bb.c ], [ %.06193, %bb.j ]
  %.us-phi100 = phi i64 [ %.05995.us, %bb.c ], [ %.05995, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph.split, %switch.early.test88, %switch.early.test, %bb.p
  %.263.ph = phi i64 [ %.06193, %.lr.ph.split ], [ %.06193, %switch.early.test ], [ %.162, %bb.p ], [ %.06193, %switch.early.test88 ] ; 2 uses
  %.160.ph = phi i64 [ %.05995, %.lr.ph.split ], [ %.05995, %switch.early.test ], [ %i.bs, %bb.p ], [ %.05995, %switch.early.test88 ] ; 2 uses
  %.1.ph = phi i64 [ %.05897, %.lr.ph.split ], [ %.05897, %switch.early.test ], [ %i.br, %bb.p ], [ %.05897, %switch.early.test88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bu = add nsw i64 %.1.ph, 1                   ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %i.f
  br i1 %i.bv, label %.lr.ph.split, label %.loopexit, !llvm.loop !29
end_hunk_41
begin_hunk_42
bb.r:                                             ; preds = %.loopexit
  %i.bw = getelementptr inbounds i8, ptr %i.k, i64 %.05990
  %i.bx = sub nsw i64 %i.f, %.05990
  %i.by = call i64 @rb_str_cat(i64 noundef %.06192, ptr noundef %i.bw, i64 noundef %i.bx) #8 ; 0 uses
  %i.bz = call ptr @rb_enc_get(i64 noundef %0) #8
  %i.ca = call i64 @rb_enc_associate(i64 noundef %.06192, ptr noundef %i.bz) #8 ; 0 uses
  br label %bb.s

.loopexit.thread:                                 ; preds = %RSTRING_PTR.exit, %.loopexit
  %i.cb = call i64 @rb_str_dup(i64 noundef %0) #8
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !20
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 3145728
end_hunk_42
begin_hunk_43
bb.s:                                             ; preds = %.loopexit.thread, %bb.r
  %.064 = phi i32 [ 0, %bb.r ], [ %i.ce, %.loopexit.thread ] ; 2 uses
  %.4 = phi i64 [ %.06192, %bb.r ], [ %i.cb, %.loopexit.thread ] ; 5 uses
  %i.cf = call i32 @rb_enc_get_index(i64 noundef %0) #8 ; 2 uses
  %.not72 = icmp eq i32 %i.cf, %i.c
  br i1 %.not72, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = call i64 @rb_enc_associate_index(i64 noundef %.4, i32 noundef %i.c) #8 ; 0 uses
  %i.ch = call i32 @rb_enc_str_coderange(i64 noundef %.4) #8 ; 2 uses
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, %i.ch
  %i.ck = and i32 %i.cj, 1048576
end_hunk_43
begin_hunk_44
  br i1 %.not, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cl = call i64 @rb_enc_associate_index(i64 noundef %.4, i32 noundef %i.cf) #8 ; 0 uses
  %.not73 = icmp eq i32 %.064, 0
  br i1 %.not73, label %bb.w, label %bb.v

end_hunk_44
begin_hunk_45

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_45
begin_hunk_46
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(1,2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
end_hunk_46
