Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_vignette?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0
@vignette_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, i32 32, i32 6, { ptr } { ptr @.str.7 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.6, i32 32, i32 6, { ptr } { ptr @.str.7 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 56, i32 6, { ptr } { ptr @.str.11 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 80, i32 6, { ptr } { ptr @.str.14 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 16, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr null, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 20, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.24, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 188, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.28, i32 192, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x7FEFFFFFFFFFFFFF, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@var_names = internal constant [8 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr null], align 16
@.str.30 = private unnamed_addr constant [40 x i8] c"Unable to parse expression for 'angle'\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Unable to parse expression for 'x0'\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Unable to parse expression for 'y0'\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"pts\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"tb\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = tail call i32 @av_expr_parse(ptr noundef nonnull %i.c, ptr noundef %i.e, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %0) #6 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %.critedge, label %.sink.split

.critedge:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = tail call i32 @av_expr_parse(ptr noundef nonnull %i.h, ptr noundef %i.j, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %0) #6 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.p = tail call i32 @av_expr_parse(ptr noundef nonnull %i.m, ptr noundef %i.o, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %0) #6 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.critedge, %bb.a
  %.str.32.sink = phi ptr [ @.str.31, %.critedge ], [ @.str.30, %bb.a ], [ @.str.32, %bb.b ]
  %.3.ph = phi i32 [ %i.k, %.critedge ], [ %i.f, %bb.a ], [ %i.p, %bb.b ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.32.sink) #6
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ %.3.ph, %.sink.split ]
  ret i32 %.3
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @av_freep(ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  tail call void @av_expr_free(ptr noundef %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  tail call void @av_expr_free(ptr noundef %i.g) #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  tail call void @av_expr_free(ptr noundef %i.i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 4 uses
  %i.i = tail call i32 @av_frame_is_writable(ptr noundef %1) #6
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39
  %i.n = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.k, i32 noundef %i.m) #6 ; 3 uses
  %.not128 = icmp eq ptr %i.n, null
  br i1 %.not128, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #6
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.o = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.n, ptr noundef %1) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0119 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @update_context(ptr noundef nonnull %i.e, ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !65
  %i.w = and i64 %i.v, 32
  %.not129 = icmp eq i64 %i.w, 0
  br i1 %.not129, label %.preheader156, label %bb.h

.preheader156:                                    ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %.0119, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 188 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 4 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39 ; 2 uses
  %.not182 = icmp eq i32 %i.af, 0
  br i1 %.not182, label %.critedge, label %.preheader157.lr.ph

.preheader157.lr.ph:                              ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %.0119, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 188 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 6 uses
  %i.ap = sext i32 %i.al to i64
  %i.aq = sext i32 %i.aj to i64
  %i.ar = sext i32 %i.ah to i64
  %i.as = load i32, ptr %i.am, align 8, !tbaa !38
  %.not183 = icmp eq i32 %i.as, 0
  br i1 %.not183, label %.critedge, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %.preheader157.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.av = load ptr, ptr %1, align 8, !tbaa !66
  %i.aw = load ptr, ptr %.0119, align 8, !tbaa !66
  br label %.preheader157

.preheader157:                                    ; preds = %.preheader157.preheader, %._crit_edge
  %i.ax = phi i32 [ %i.cx, %._crit_edge ], [ %i.af, %.preheader157.preheader ]
  %i.ay = phi i32 [ %i.cy, %._crit_edge ], [ 1, %.preheader157.preheader ]
  %.0116165 = phi ptr [ %i.db, %._crit_edge ], [ %i.au, %.preheader157.preheader ] ; 2 uses
  %.0117164 = phi ptr [ %i.da, %._crit_edge ], [ %i.av, %.preheader157.preheader ] ; 2 uses
  %.0118163 = phi ptr [ %i.cz, %._crit_edge ], [ %i.aw, %.preheader157.preheader ] ; 2 uses
  %.0121162 = phi i32 [ %i.dc, %._crit_edge ], [ 0, %.preheader157.preheader ]
  %.not184 = icmp eq i32 %i.ay, 0
  br i1 %.not184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader157, %get_dither_value.exit152
  %indvars.iv = phi i64 [ %indvars.iv.next, %get_dither_value.exit152 ], [ 0, %.preheader157 ] ; 2 uses
  %.0114161 = phi ptr [ %i.ct, %get_dither_value.exit152 ], [ %.0117164, %.preheader157 ] ; 4 uses
  %.0115160 = phi ptr [ %i.cs, %get_dither_value.exit152 ], [ %.0118163, %.preheader157 ] ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0116165, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !46 ; 3 uses
  %i.bb = load i8, ptr %.0114161, align 1, !tbaa !67
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = fmul nsz float %i.ba, %i.bc
  %i.be = fpext nsz float %i.bd to double         ; 2 uses
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !68
  %.not.i145 = icmp eq i32 %i.bf, 0
  br i1 %.not.i145, label %get_dither_value.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bg = load i32, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %i.bh = uitofp nsz i32 %i.bg to double
  %i.bi = fmul nnan nsz double %i.bh, f0x3DF0000000000000
  %i.bj = mul i32 %i.bg, 1664525
  %i.bk = add i32 %i.bj, 1013904223
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !69
  %i.bl = fadd nsz double %i.bi, %i.be
  br label %get_dither_value.exit

get_dither_value.exit:                            ; preds = %.lr.ph, %bb.i
  %.0.i146 = phi double [ %i.bl, %bb.i ], [ %i.be, %.lr.ph ]
  %i.bm = fptosi double %.0.i146 to i32           ; 3 uses
  %.not.i142 = icmp ult i32 %i.bm, 256
  %isnotneg.i143 = icmp sgt i32 %i.bm, -1
  %2 = sext i1 %isnotneg.i143 to i8
  %i.bn = trunc nuw i32 %i.bm to i8
  %.0.i144 = select i1 %.not.i142, i8 %i.bn, i8 %2
  store i8 %.0.i144, ptr %.0115160, align 1, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %.0114161, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !67
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fmul nsz float %i.ba, %i.bq
  %i.bs = fpext nsz float %i.br to double         ; 2 uses
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !68
  %.not.i147 = icmp eq i32 %i.bt, 0
  br i1 %.not.i147, label %get_dither_value.exit149, label %bb.j

bb.j:                                             ; preds = %get_dither_value.exit
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %i.bv = uitofp nsz i32 %i.bu to double
  %i.bw = fmul nnan nsz double %i.bv, f0x3DF0000000000000
  %i.bx = mul i32 %i.bu, 1664525
  %i.by = add i32 %i.bx, 1013904223
  store i32 %i.by, ptr %i.ao, align 8, !tbaa !69
  %i.bz = fadd nsz double %i.bw, %i.bs
  br label %get_dither_value.exit149

get_dither_value.exit149:                         ; preds = %get_dither_value.exit, %bb.j
  %.0.i148 = phi double [ %i.bz, %bb.j ], [ %i.bs, %get_dither_value.exit ]
  %i.ca = fptosi double %.0.i148 to i32           ; 3 uses
  %.not.i139 = icmp ult i32 %i.ca, 256
  %isnotneg.i140 = icmp sgt i32 %i.ca, -1
  %3 = sext i1 %isnotneg.i140 to i8
  %i.cb = trunc nuw i32 %i.ca to i8
  %.0.i141 = select i1 %.not.i139, i8 %i.cb, i8 %3
  %i.cc = getelementptr inbounds nuw i8, ptr %.0115160, i64 1
  store i8 %.0.i141, ptr %i.cc, align 1, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %.0114161, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !67
  %i.cf = uitofp i8 %i.ce to float
  %i.cg = fmul nsz float %i.ba, %i.cf
  %i.ch = fpext nsz float %i.cg to double         ; 2 uses
  %i.ci = load i32, ptr %i.an, align 4, !tbaa !68
  %.not.i150 = icmp eq i32 %i.ci, 0
  br i1 %.not.i150, label %get_dither_value.exit152, label %bb.k

bb.k:                                             ; preds = %get_dither_value.exit149
  %i.cj = load i32, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %i.ck = uitofp nsz i32 %i.cj to double
  %i.cl = fmul nnan nsz double %i.ck, f0x3DF0000000000000
  %i.cm = mul i32 %i.cj, 1664525
  %i.cn = add i32 %i.cm, 1013904223
  store i32 %i.cn, ptr %i.ao, align 8, !tbaa !69
  %i.co = fadd nsz double %i.cl, %i.ch
  br label %get_dither_value.exit152

get_dither_value.exit152:                         ; preds = %get_dither_value.exit149, %bb.k
  %.0.i151 = phi double [ %i.co, %bb.k ], [ %i.ch, %get_dither_value.exit149 ]
  %i.cp = fptosi double %.0.i151 to i32           ; 3 uses
  %.not.i136 = icmp ult i32 %i.cp, 256
  %isnotneg.i137 = icmp sgt i32 %i.cp, -1
  %4 = sext i1 %isnotneg.i137 to i8
  %i.cq = trunc nuw i32 %i.cp to i8
  %.0.i138 = select i1 %.not.i136, i8 %i.cq, i8 %4
  %i.cr = getelementptr inbounds nuw i8, ptr %.0115160, i64 2
  store i8 %.0.i138, ptr %i.cr, align 1, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0115160, i64 3
  %i.ct = getelementptr inbounds nuw i8, ptr %.0114161, i64 3
  %i.cu = load i32, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp samesign ult i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %get_dither_value.exit152
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader157
  %i.cx = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ax, %.preheader157 ] ; 2 uses
  %i.cy = phi i32 [ %i.cu, %._crit_edge.loopexit ], [ 0, %.preheader157 ]
  %i.cz = getelementptr inbounds i8, ptr %.0118163, i64 %i.ap
  %i.da = getelementptr inbounds i8, ptr %.0117164, i64 %i.aq
  %i.db = getelementptr inbounds [4 x i8], ptr %.0116165, i64 %i.ar
  %i.dc = add nuw i32 %.0121162, 1                ; 2 uses
  %i.dd = icmp ult i32 %i.dc, %i.cx
  br i1 %i.dd, label %.preheader157, label %.critedge, !llvm.loop !55

bb.l:                                             ; preds = %.preheader156, %._crit_edge178.split
  %indvars.iv198 = phi i64 [ 0, %.preheader156 ], [ %indvars.iv.next199, %._crit_edge178.split ] ; 6 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv198
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !66 ; 3 uses
  %.not130 = icmp eq ptr %i.dg, null
  br i1 %.not130, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv198
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !44 ; 2 uses
  %.not131 = icmp eq i32 %i.dj, 0
  br i1 %.not131, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.0119, i64 %indvars.iv198
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !66 ; 2 uses
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !45  ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv198
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !44
  %i.dp = load i32, ptr %i.z, align 8, !tbaa !43
  %i.dq = trunc i64 %indvars.iv198 to i32
  %i.dr = add i32 %i.dq, -1
  %i.ds = icmp ult i32 %i.dr, 2                   ; 2 uses
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = load ptr, ptr %i.s, align 8, !tbaa !41  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 9
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !71
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 10
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !72
  %i.dz = zext i8 %i.dy to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ea = phi i32 [ %i.dw, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.eb = phi i32 [ %i.dz, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.ec = load i32, ptr %i.aa, align 8, !tbaa !38
  %i.ed = sub nsw i32 0, %i.ec
  %i.ee = ashr i32 %i.ed, %i.ea                   ; 2 uses
  %i.ef = sub nsw i32 0, %i.ee                    ; 2 uses
  %i.eg = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.eh = sub nsw i32 0, %i.eg
  %i.ei = ashr i32 %i.eh, %i.eb                   ; 2 uses
  %i.ej = sub nsw i32 0, %i.ei                    ; 2 uses
  %.not186 = icmp eq i32 %i.ei, 0
  br i1 %.not186, label %._crit_edge178.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.p
  %.not187 = icmp eq i32 %i.ee, 0
  %i.ek = sext i32 %i.do to i64                   ; 2 uses
  %i.el = sext i32 %i.dj to i64                   ; 2 uses
  %i.em = shl i32 %i.dp, %i.eb
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  br i1 %.not187, label %._crit_edge178.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.ds, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %wide.trip.count = zext i32 %i.ef to i64
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge170.split.us.us
  %.0109176.us = phi ptr [ %i.fk, %._crit_edge170.split.us.us ], [ %i.dm, %.preheader.lr.ph.split ] ; 2 uses
  %.0110174.us = phi ptr [ %i.fj, %._crit_edge170.split.us.us ], [ %i.dg, %.preheader.lr.ph.split ] ; 2 uses
  %.0111172.us = phi ptr [ %i.fi, %._crit_edge170.split.us.us ], [ %i.dl, %.preheader.lr.ph.split ] ; 2 uses
  %.1122171.us = phi i32 [ %i.fl, %._crit_edge170.split.us.us ], [ 0, %.preheader.lr.ph.split ]
  br label %bb.q

bb.q:                                             ; preds = %get_dither_value.exit155.us.us, %.preheader.us
  %.0168.us.us = phi ptr [ %.0110174.us, %.preheader.us ], [ %.1.us.us, %get_dither_value.exit155.us.us ] ; 2 uses
  %.0107167.us.us = phi ptr [ %.0111172.us, %.preheader.us ], [ %.1108.us.us, %get_dither_value.exit155.us.us ] ; 2 uses
  %.1124166.us.us = phi i32 [ 0, %.preheader.us ], [ %i.fh, %get_dither_value.exit155.us.us ] ; 2 uses
  %i.eo = load i32, ptr %i.ac, align 4, !tbaa !68
  %.not.i153.us.us = icmp eq i32 %i.eo, 0
  br i1 %.not.i153.us.us, label %get_dither_value.exit155.us.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = load i32, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.eq = uitofp nsz i32 %i.ep to double
  %i.er = fmul nnan nsz double %i.eq, f0x3DF0000000000000
  %i.es = mul i32 %i.ep, 1664525
  %i.et = add i32 %i.es, 1013904223
  store i32 %i.et, ptr %i.ad, align 8, !tbaa !69
  br label %get_dither_value.exit155.us.us

get_dither_value.exit155.us.us:                   ; preds = %bb.r, %bb.q
  %.0.i154.us.us = phi nsz double [ %i.er, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.eu = shl i32 %.1124166.us.us, %i.ea
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0109176.us, i64 %i.ev
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !46
  %i.ey = load i8, ptr %.0168.us.us, align 1, !tbaa !67
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add nsw i32 %i.ez, -127
  %i.fb = sitofp nsz i32 %i.fa to float
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %i.ex, float %i.fb, float 1.270000e+02)
  %i.fd = fpext nsz float %i.fc to double
  %i.fe = fadd nsz double %.0.i154.us.us, %i.fd
  %i.ff = fptosi double %i.fe to i32              ; 3 uses
  %.not.i133.us.us = icmp ult i32 %i.ff, 256
  %isnotneg.i134.us.us = icmp sgt i32 %i.ff, -1
  %5 = sext i1 %isnotneg.i134.us.us to i8
  %i.fg = trunc nuw i32 %i.ff to i8
  %.0.i135.us.us = select i1 %.not.i133.us.us, i8 %i.fg, i8 %5
  %.1.us.us = getelementptr inbounds nuw i8, ptr %.0168.us.us, i64 1
  %.1108.us.us = getelementptr inbounds nuw i8, ptr %.0107167.us.us, i64 1
  store i8 %.0.i135.us.us, ptr %.0107167.us.us, align 1, !tbaa !67
  %i.fh = add nuw i32 %.1124166.us.us, 1          ; 2 uses
  %exitcond196.not = icmp eq i32 %i.fh, %i.ef
  br i1 %exitcond196.not, label %._crit_edge170.split.us.us, label %bb.q, !llvm.loop !56

._crit_edge170.split.us.us:                       ; preds = %get_dither_value.exit155.us.us
  %i.fi = getelementptr inbounds i8, ptr %.0111172.us, i64 %i.ek
  %i.fj = getelementptr inbounds i8, ptr %.0110174.us, i64 %i.el
  %i.fk = getelementptr inbounds [4 x i8], ptr %.0109176.us, i64 %i.en
  %i.fl = add nuw i32 %.1122171.us, 1             ; 2 uses
  %exitcond197.not = icmp eq i32 %i.fl, %i.ej
  br i1 %exitcond197.not, label %._crit_edge178.split, label %.preheader.us, !llvm.loop !57

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge170.split
  %.0109176 = phi ptr [ %i.gd, %._crit_edge170.split ], [ %i.dm, %.preheader.preheader ] ; 2 uses
  %.0110174 = phi ptr [ %i.gc, %._crit_edge170.split ], [ %i.dg, %.preheader.preheader ] ; 2 uses
  %.0111172 = phi ptr [ %i.gb, %._crit_edge170.split ], [ %i.dl, %.preheader.preheader ] ; 2 uses
  %.1122171 = phi i32 [ %i.ge, %._crit_edge170.split ], [ 0, %.preheader.preheader ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %get_dither_value.exit155
  %indvars.iv192 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next193, %get_dither_value.exit155 ] ; 2 uses
  %.0168 = phi ptr [ %.0110174, %.preheader ], [ %.1, %get_dither_value.exit155 ] ; 2 uses
  %.0107167 = phi ptr [ %.0111172, %.preheader ], [ %.1108, %get_dither_value.exit155 ] ; 2 uses
  %i.fm = load i32, ptr %i.ac, align 4, !tbaa !68
  %.not.i153 = icmp eq i32 %i.fm, 0
  br i1 %.not.i153, label %get_dither_value.exit155, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fn = load i32, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.fo = uitofp nsz i32 %i.fn to double
  %i.fp = fmul nnan nsz double %i.fo, f0x3DF0000000000000
  %i.fq = mul i32 %i.fn, 1664525
  %i.fr = add i32 %i.fq, 1013904223
  store i32 %i.fr, ptr %i.ad, align 8, !tbaa !69
  br label %get_dither_value.exit155

get_dither_value.exit155:                         ; preds = %bb.s, %bb.t
  %.0.i154 = phi nsz double [ %i.fp, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %indvars.iv192
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !46
  %i.fu = load i8, ptr %.0168, align 1, !tbaa !67
  %i.fv = uitofp i8 %i.fu to float
  %i.fw = fmul nsz float %i.ft, %i.fv
  %i.fx = fpext nsz float %i.fw to double
  %i.fy = fadd nsz double %.0.i154, %i.fx
  %i.fz = fptosi double %i.fy to i32              ; 3 uses
  %.not.i = icmp ult i32 %i.fz, 256
  %isnotneg.i = icmp sgt i32 %i.fz, -1
  %6 = sext i1 %isnotneg.i to i8
  %i.ga = trunc nuw i32 %i.fz to i8
  %.0.i = select i1 %.not.i, i8 %i.ga, i8 %6
  %.1 = getelementptr inbounds nuw i8, ptr %.0168, i64 1
  %.1108 = getelementptr inbounds nuw i8, ptr %.0107167, i64 1
  store i8 %.0.i, ptr %.0107167, align 1, !tbaa !67
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge170.split, label %bb.s, !llvm.loop !56

._crit_edge170.split:                             ; preds = %get_dither_value.exit155
  %i.gb = getelementptr inbounds i8, ptr %.0111172, i64 %i.ek
  %i.gc = getelementptr inbounds i8, ptr %.0110174, i64 %i.el
  %i.gd = getelementptr inbounds [4 x i8], ptr %.0109176, i64 %i.en
  %i.ge = add nuw i32 %.1122171, 1                ; 2 uses
  %exitcond195.not = icmp eq i32 %i.ge, %i.ej
  br i1 %exitcond195.not, label %._crit_edge178.split, label %.preheader, !llvm.loop !57

._crit_edge178.split:                             ; preds = %._crit_edge170.split, %._crit_edge170.split.us.us, %.preheader.lr.ph, %bb.p
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next199, 4
  br i1 %exitcond201.not, label %.critedge, label %bb.l, !llvm.loop !58

.critedge:                                        ; preds = %._crit_edge, %bb.m, %._crit_edge178.split, %bb.l, %.preheader157.lr.ph, %bb.h
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge
  call void @av_frame_free(ptr noundef nonnull %i.a) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %i.gf = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.0119) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.c
  %.0113 = phi i32 [ %i.gf, %bb.v ], [ -12, %bb.c ]
  ret i32 %.0113
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_props(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.04.0.copyload = load i32, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  %i.h = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.g) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load <2 x i32>, ptr %i.j, align 8, !tbaa !44
  %i.n = sitofp <2 x i32> %i.m to <2 x double>    ; 3 uses
  store <2 x double> %i.n, ptr %i.k, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.p to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.p, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.q = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.r = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.s = fdiv nsz double %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store double %i.s, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !74
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.y = load i32, ptr %i.x, align 4, !tbaa !75
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.u, align 8             ; 2 uses
  %.sroa.0.0.extract.trunc.i55 = trunc i64 %i.aa to i32
  %.sroa.2.0.extract.shift.i56 = lshr i64 %i.aa, 32
  %.sroa.2.0.extract.trunc.i57 = trunc nuw i64 %.sroa.2.0.extract.shift.i56 to i32
  %i.ab = sitofp nsz i32 %.sroa.0.0.extract.trunc.i55 to double
  %i.ac = sitofp nsz i32 %.sroa.2.0.extract.trunc.i57 to double
  %i.ad = fdiv nsz double %i.ab, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.ae = phi nsz double [ %i.ad, %bb.c ], [ +qnan, %bb.b ], [ +qnan, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store double %i.ae, ptr %i.af, align 8, !tbaa !48
  %i.ag = icmp ne i32 %.sroa.04.0.copyload, 0
  %i.ah = icmp ne i32 %.sroa.8.0.copyload, 0
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false  ; 2 uses
  %spec.select = select i1 %or.cond, i32 %.sroa.8.0.copyload, i32 1 ; 3 uses
  %spec.select54 = select i1 %or.cond, i32 %.sroa.04.0.copyload, i32 1 ; 3 uses
  %i.ai = icmp sgt i32 %spec.select54, %spec.select
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.8.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.04.0.insert.ext = zext i32 %spec.select54 to i64
  %.sroa.04.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.04.0.insert.ext
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call i64 @av_div_q(i64 %.sroa.04.0.insert.insert, i64 %i.ak) #7 ; 2 uses
  %.sroa.0.0.extract.trunc.i58 = trunc i64 %i.al to i32
  %.sroa.2.0.extract.shift.i59 = lshr i64 %i.al, 32
  %.sroa.2.0.extract.trunc.i60 = trunc nuw i64 %.sroa.2.0.extract.shift.i59 to i32
  %i.am = sitofp nsz i32 %.sroa.0.0.extract.trunc.i58 to double
  %i.an = sitofp nsz i32 %.sroa.2.0.extract.trunc.i60 to double
  %i.ao = fdiv nsz double %i.am, %i.an
  %i.ap = fptrunc nsz double %i.ao to float
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aq = load i64, ptr %i.aj, align 8
  %.sroa.8.0.insert.ext12 = zext i32 %spec.select to i64
  %.sroa.8.0.insert.shift13 = shl nuw i64 %.sroa.8.0.insert.ext12, 32
  %.sroa.04.0.insert.ext8 = zext i32 %spec.select54 to i64
  %.sroa.04.0.insert.insert10 = or disjoint i64 %.sroa.8.0.insert.shift13, %.sroa.04.0.insert.ext8
  %i.ar = tail call i64 @av_div_q(i64 %i.aq, i64 %.sroa.04.0.insert.insert10) #7 ; 2 uses
  %.sroa.0.0.extract.trunc.i61 = trunc i64 %i.ar to i32
  %.sroa.2.0.extract.shift.i62 = lshr i64 %i.ar, 32
  %.sroa.2.0.extract.trunc.i63 = trunc nuw i64 %.sroa.2.0.extract.shift.i62 to i32
  %i.as = sitofp nsz i32 %.sroa.0.0.extract.trunc.i61 to double
  %i.at = sitofp nsz i32 %.sroa.2.0.extract.trunc.i63 to double
  %i.au = fdiv nsz double %i.as, %i.at
  %i.av = fptrunc nsz double %i.au to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink64 = phi float [ %i.ap, %bb.e ], [ 1.000000e+00, %bb.f ] ; 2 uses
  %.sink = phi float [ 1.000000e+00, %bb.e ], [ %i.av, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store float %.sink64, ptr %i.aw, align 8, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  store float %.sink, ptr %i.ax, align 4, !tbaa !77
  %i.ay = extractelement <2 x double> %i.n, i64 0
  %i.az = fmul nnan nsz double %i.ay, 5.000000e-01
  %i.ba = extractelement <2 x double> %i.n, i64 1
  %i.bb = fmul nnan nsz double %i.ba, 5.000000e-01
  %i.bc = tail call nsz double @hypot(double noundef %i.az, double noundef %i.bb) #7 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store double %i.bc, ptr %i.bd, align 8, !tbaa !50
  %i.be = fpext nsz float %.sink64 to double
  %i.bf = fpext nsz float %.sink to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 48, ptr noundef nonnull @.str.3, double noundef %i.be, double noundef %i.bf, double noundef %i.bc) #6
  %i.bg = load i32, ptr %i.j, align 8, !tbaa !38
  %i.bh = add nsw i32 %i.bg, 31
  %i.bi = and i32 %i.bh, -32                      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !43
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load i32, ptr %i.l, align 4, !tbaa !39
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 2
  %i.bo = tail call ptr @av_malloc_array(i64 noundef %i.bk, i64 noundef %i.bn) #6 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !45
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !40
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @update_context(ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef null)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i32 [ -12, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_context(ptr noundef initializes((112, 128), (136, 144)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82
  %i.g = sitofp nsz i64 %i.f to double
end_hunk_0
begin_hunk_1_@update_context:bb.a
  store double %i.ac, ptr %i.ad, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ag = tail call nsz double @av_expr_eval(ptr noundef %i.af, ptr noundef nonnull %i.x, ptr noundef null) #6
  %.fr = freeze double %i.ag                      ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %.fr, ptr %i.ah, align 8, !tbaa !90
  %i.ai = load double, ptr %i.ad, align 8, !tbaa !89 ; 3 uses
  %or.cond = fcmp uno double %i.ai, %.fr
  %.pre.pre = load double, ptr %i.z, align 8, !tbaa !88 ; 2 uses
  %i.aj = fcmp uno double %.pre.pre, 0.000000e+00
  %or.cond101 = select i1 %or.cond, i1 true, i1 %i.aj
  br i1 %or.cond101, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge87
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.ak, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge87, %bb.e
  %i.al = fptrunc nsz double %.pre.pre to float   ; 2 uses
  %i.am = fcmp nsz ogt float %i.al, 0.000000e+00
  %i.an = select nsz i1 %i.am, float %i.al, float 0.000000e+00 ; 2 uses
  %i.ao = fcmp nsz ogt float %i.an, f0x3FC90FDB
  %..i = select nsz i1 %i.ao, float f0x3FC90FDB, float %i.an
  %i.ap = fpext nsz float %..i to double          ; 3 uses
  store double %i.ap, ptr %i.z, align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !91
  %.not64 = icmp eq i32 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0                   ; 2 uses
  br i1 %.not64, label %.preheader67, label %.preheader69

.preheader69:                                     ; preds = %bb.f
  br i1 %i.au, label %.preheader68.lr.ph, label %.loopexit

.preheader68.lr.ph:                               ; preds = %.preheader69
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = sext i32 %i.d to i64
  br i1 %i.ax, label %.preheader68.lr.ph.split, label %.loopexit

.preheader68.lr.ph.split:                         ; preds = %.preheader68.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !50
  %wide.trip.count = zext nneg i32 %i.aw to i64
  br label %.preheader68

.preheader67:                                     ; preds = %bb.f
  br i1 %i.au, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader67
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !38 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bg = sext i32 %i.d to i64
  br i1 %i.be, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !50
  %wide.trip.count84 = zext nneg i32 %i.bd to i64
  br label %.preheader

.preheader68:                                     ; preds = %.preheader68.lr.ph.split, %._crit_edge
  %.073 = phi ptr [ %i.b, %.preheader68.lr.ph.split ], [ %i.ch, %._crit_edge ] ; 2 uses
  %.05772 = phi i32 [ 0, %.preheader68.lr.ph.split ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.bj = uitofp nsz nneg i32 %.05772 to double
  %i.bk = fsub nsz double %i.bj, %.fr
  %i.bl = insertelement <2 x double> poison, double %i.bk, i64 1
  br label %bb.g

bb.g:                                             ; preds = %.preheader68, %get_natural_factor.exit
  %indvars.iv = phi i64 [ 0, %.preheader68 ], [ %indvars.iv.next, %get_natural_factor.exit ] ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  %i.bn = uitofp nsz nneg i32 %i.bm to double
  %i.bo = fsub nsz double %i.bn, %i.ai
  %i.bp = load <2 x float>, ptr %i.ay, align 8, !tbaa !46
  %i.bq = fpext <2 x float> %i.bp to <2 x double>
  %i.br = insertelement <2 x double> %i.bl, double %i.bo, i64 0
  %i.bs = fmul nsz <2 x double> %i.br, %i.bq
  %i.bt = fptosi <2 x double> %i.bs to <2 x i32>
  %i.bu = sitofp <2 x i32> %i.bt to <2 x double>  ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = extractelement <2 x double> %i.bu, i64 1
  %i.bx = tail call nsz double @hypot(double noundef %i.bv, double noundef %i.bw) #7
  %i.by = fdiv nsz double %i.bx, %i.bb            ; 2 uses
  %i.bz = fcmp nsz ogt double %i.by, 1.000000e+00
  br i1 %i.bz, label %get_natural_factor.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ca = fmul nsz double %i.by, %i.ap
  %i.cb = tail call nsz double @llvm.cos.f64(double %i.ca) ; 2 uses
  %i.cc = fmul nsz double %i.cb, %i.cb            ; 2 uses
  %i.cd = fmul nsz double %i.cc, %i.cc
  br label %get_natural_factor.exit

get_natural_factor.exit:                          ; preds = %bb.g, %bb.h
  %.0.i = phi nsz double [ %i.cd, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ce = fdiv nsz double 1.000000e+00, %.0.i
  %i.cf = fptrunc nsz double %i.ce to float
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.073, i64 %indvars.iv
  store float %i.cf, ptr %i.cg, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !78

._crit_edge:                                      ; preds = %get_natural_factor.exit
  %i.ch = getelementptr inbounds [4 x i8], ptr %.073, i64 %i.az
  %i.ci = add nuw nsw i32 %.05772, 1              ; 2 uses
  %exitcond80.not = icmp eq i32 %i.ci, %i.at
  br i1 %exitcond80.not, label %.loopexit, label %.preheader68, !llvm.loop !79

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge75
  %.177 = phi ptr [ %i.b, %.preheader.lr.ph.split ], [ %i.dg, %._crit_edge75 ] ; 2 uses
  %.15876 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.dh, %._crit_edge75 ] ; 2 uses
  %i.cj = uitofp nsz nneg i32 %.15876 to double
  %i.ck = fsub nsz double %i.cj, %.fr
  %i.cl = insertelement <2 x double> poison, double %i.ck, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %get_natural_factor.exit66
  %indvars.iv81 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next82, %get_natural_factor.exit66 ] ; 3 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv81 to i32
  %i.cn = uitofp nsz nneg i32 %i.cm to double
  %i.co = fsub nsz double %i.cn, %i.ai
  %i.cp = load <2 x float>, ptr %i.bf, align 8, !tbaa !46
  %i.cq = fpext <2 x float> %i.cp to <2 x double>
  %i.cr = insertelement <2 x double> %i.cl, double %i.co, i64 0
  %i.cs = fmul nsz <2 x double> %i.cr, %i.cq
  %i.ct = fptosi <2 x double> %i.cs to <2 x i32>
  %i.cu = sitofp <2 x i32> %i.ct to <2 x double>  ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = extractelement <2 x double> %i.cu, i64 1
  %i.cx = tail call nsz double @hypot(double noundef %i.cv, double noundef %i.cw) #7
  %i.cy = fdiv nsz double %i.cx, %i.bi            ; 2 uses
  %i.cz = fcmp nsz ogt double %i.cy, 1.000000e+00
  br i1 %i.cz, label %get_natural_factor.exit66, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = fmul nsz double %i.cy, %i.ap
  %i.db = tail call nsz double @llvm.cos.f64(double %i.da) ; 2 uses
  %i.dc = fmul nsz double %i.db, %i.db            ; 2 uses
  %i.dd = fmul nsz double %i.dc, %i.dc
  %i.de = fptrunc nsz double %i.dd to float
  br label %get_natural_factor.exit66

get_natural_factor.exit66:                        ; preds = %bb.i, %bb.j
  %.0.i65 = phi float [ %i.de, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.177, i64 %indvars.iv81
  store float %.0.i65, ptr %i.df, align 4, !tbaa !46
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge75, label %bb.i, !llvm.loop !80

._crit_edge75:                                    ; preds = %get_natural_factor.exit66
  %i.dg = getelementptr inbounds [4 x i8], ptr %.177, i64 %i.bg
  %i.dh = add nuw nsw i32 %.15876, 1              ; 2 uses
  %exitcond86.not = icmp eq i32 %i.dh, %i.at
  br i1 %exitcond86.not, label %.loopexit, label %.preheader, !llvm.loop !81

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge75, %.preheader69, %.preheader68.lr.ph, %.preheader67, %.preheader.lr.ph
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @av_expr_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_div_q(i64, i64) local_unnamed_addr #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @av_expr_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_expr_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS18AVPixFmtDescriptor", !9, i64 0}
!21 = !{!"p1 _ZTS6AVExpr", !9, i64 0}
!22 = !{!"double", !5, i64 0}
!23 = !{!"p1 float", !9, i64 0}
!24 = !{!"float", !5, i64 0}
!25 = !{!"AVRational", !6, i64 0, !6, i64 4}
!26 = !{!"VignetteContext", !10, i64 0, !20, i64 8, !6, i64 16, !6, i64 20, !21, i64 24, !12, i64 32, !22, i64 40, !21, i64 48, !12, i64 56, !22, i64 64, !21, i64 72, !12, i64 80, !22, i64 88, !5, i64 96, !23, i64 152, !6, i64 160, !22, i64 168, !24, i64 176, !24, i64 180, !6, i64 184, !6, i64 188, !25, i64 192, !25, i64 200}
!27 = !{!26, !21, i64 24}
!28 = !{!26, !21, i64 48}
!29 = !{!26, !21, i64 72}
!30 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!31 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!32 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!33 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!34 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!35 = !{!"AVFilterFormatsConfig", !33, i64 0, !33, i64 8, !34, i64 16, !33, i64 24, !33, i64 32, !33, i64 40}
!36 = !{!"AVFilterLink", !30, i64 0, !13, i64 8, !30, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !25, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !31, i64 72, !25, i64 96, !32, i64 104, !6, i64 112, !6, i64 116, !35, i64 120, !35, i64 168}
!37 = !{!36, !30, i64 16}
!38 = !{!36, !6, i64 40}
!39 = !{!36, !6, i64 44}
!40 = !{!26, !6, i64 20}
!41 = !{!26, !20, i64 8}
!42 = !{!"long", !5, i64 0}
!43 = !{!26, !6, i64 160}
!44 = !{!6, !6, i64 0}
!45 = !{!26, !23, i64 152}
!46 = !{!24, !24, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!22, !22, i64 0}
!49 = !{!"FilterLink", !36, i64 0, !16, i64 216, !42, i64 224, !42, i64 232, !6, i64 240, !6, i64 244, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !25, i64 280, !17, i64 288}
!50 = !{!26, !22, i64 168}
!51 = !{!26, !12, i64 32}
!52 = !{!26, !12, i64 56}
!53 = !{!26, !12, i64 80}
!54 = distinct !{!54, !47}
!55 = distinct !{!55, !47, !70}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !47}
!58 = distinct !{!58, !47}
!59 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!18, !15, i64 56}
!62 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !42, i64 16, !5, i64 24, !12, i64 104}
!65 = !{!64, !42, i64 16}
!66 = !{!12, !12, i64 0}
!67 = !{!5, !5, i64 0}
!68 = !{!26, !6, i64 188}
!69 = !{!26, !6, i64 184}
!70 = !{!"llvm.loop.unswitch.partial.disable"}
!71 = !{!64, !5, i64 9}
!72 = !{!64, !5, i64 10}
!73 = !{!36, !6, i64 36}
!74 = !{!49, !6, i64 280}
!75 = !{!49, !6, i64 284}
!76 = !{!26, !24, i64 176}
!77 = !{!26, !24, i64 180}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = distinct !{!81, !47}
!82 = !{!49, !42, i64 256}
!83 = !{!"p2 omnipotent char", !14, i64 0}
!84 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!85 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!86 = !{!"AVFrame", !5, i64 0, !5, i64 64, !83, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !25, i64 124, !42, i64 136, !42, i64 144, !25, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !84, i64 248, !6, i64 256, !32, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !42, i64 304, !85, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !9, i64 376, !31, i64 384, !42, i64 408, !6, i64 416}
!87 = !{!86, !42, i64 136}
!88 = !{!26, !22, i64 40}
!89 = !{!26, !22, i64 64}
!90 = !{!26, !22, i64 88}
!91 = !{!26, !6, i64 16}
end_hunk_1
