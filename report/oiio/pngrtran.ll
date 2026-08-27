Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_set_palette_to_rgb:bb.a
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !7, !alias.scope !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = or i32 %i.f, 33558528
  store i32 %i.g, ptr %i.e, align 4, !tbaa !27
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_expand_gray_1_2_4_to_8(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !alias.scope !109 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #11
  br label %png_rtran_ok.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !7, !alias.scope !109
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = or i32 %i.f, 4096
  store i32 %i.g, ptr %i.e, align 4, !tbaa !27
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_tRNS_to_alpha(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !alias.scope !112 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #11
  br label %png_rtran_ok.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !7, !alias.scope !112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = or i32 %i.f, 33558528
  store i32 %i.g, ptr %i.e, align 4, !tbaa !27
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_expand_16(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !alias.scope !115 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #11
  br label %png_rtran_ok.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !7, !alias.scope !115
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = or i32 %i.f, 33559040
  store i32 %i.g, ptr %i.e, align 4, !tbaa !27
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_gray_to_rgb(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !alias.scope !118 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %png_set_expand_gray_1_2_4_to_8.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #11
  br label %png_rtran_ok.exit.thread

png_set_expand_gray_1_2_4_to_8.exit:              ; preds = %bb.b
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !7, !alias.scope !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27, !alias.scope !126
  %i.g = or i32 %i.f, 20480
  store i32 %i.g, ptr %i.e, align 4, !tbaa !27
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %png_set_expand_gray_1_2_4_to_8.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_rgb_to_gray_fixed(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !alias.scope !127 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #11
  br label %png_rtran_ok.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.e = load i32, ptr %i.d, align 4, !tbaa !130, !alias.scope !127
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #11
  br label %png_rtran_ok.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.h = or i32 %i.b, 16384
  store i32 %i.h, ptr %i.a, align 8, !tbaa !7, !alias.scope !127
  %switch.tableidx = add i32 %1, -1               ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 3
  br i1 %i.i, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #12
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.j = shl nuw nsw i32 %switch.tableidx, 21
  %switch.offset = sub nuw nsw i32 6291456, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %i.m = or i32 %i.l, %switch.offset              ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.o = load i8, ptr %i.n, align 1, !tbaa !131
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %switch.lookup
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.r = or i32 %i.m, 4096
  store i32 %i.r, ptr %i.q, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.lookup
  %i.s = or i32 %3, %2
  %or.cond = icmp sgt i32 %i.s, -1                ; 2 uses
  %i.t = add nuw nsw i32 %3, %2
  %i.u = icmp slt i32 %i.t, 100001
  %or.cond26 = select i1 %or.cond, i1 %i.u, i1 false
  br i1 %or.cond26, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %3, i64 1
  %i.x = shl <2 x i32> %i.w, splat (i32 15)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1034
  %i.z = udiv <2 x i32> %i.x, splat (i32 100000)
  %i.aa = trunc nuw <2 x i32> %i.z to <2 x i16>
  store <2 x i16> %i.aa, ptr %i.y, align 2, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1033
  store i8 1, ptr %i.ab, align 1, !tbaa !132
  br label %png_rtran_ok.exit.thread

bb.k:                                             ; preds = %bb.i
  br i1 %or.cond, label %bb.l, label %png_rtran_ok.exit.thread

bb.l:                                             ; preds = %bb.k
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #11
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.e, %bb.c, %bb.k, %bb.l, %bb.j
  ret void
}

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_set_rgb_to_gray(ptr noalias noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @png_fixed(ptr noundef %0, double noundef %2, ptr noundef nonnull @.str.9) #11
  %i.b = tail call i32 @png_fixed(ptr noundef %0, double noundef %3, ptr noundef nonnull @.str.10) #11
  tail call void @png_set_rgb_to_gray_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %i.a, i32 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_read_user_transform_fn(ptr noalias nofree noundef captures(none) initializes((272, 280)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = or i32 %i.b, 1048576
  store i32 %i.c, ptr %i.a, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %1, ptr %i.d, align 8, !tbaa !133
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @png_resolve_file_gamma(ptr noalias nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.d = load i32, ptr %i.c, align 4, !tbaa !134  ; 2 uses
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i32, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52   ; 2 uses
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @png_reciprocal(i32 noundef %i.h) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.012 = phi i32 [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.i, %bb.e ], [ 0, %bb.d ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define void @png_init_read_transformations(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102, !alias.scope !141 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %png_resolve_file_gamma.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.e = load i32, ptr %i.d, align 4, !tbaa !134, !alias.scope !141 ; 2 uses
  %.not17.i.i = icmp eq i32 %i.e, 0
  br i1 %.not17.i.i, label %bb.c, label %png_resolve_file_gamma.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51, !alias.scope !141 ; 2 uses
  %.not18.i.i = icmp eq i32 %i.g, 0
  br i1 %.not18.i.i, label %bb.d, label %png_resolve_file_gamma.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !52, !alias.scope !141 ; 2 uses
  %.not19.i.i = icmp eq i32 %i.i, 0
  br i1 %.not19.i.i, label %png_init_gamma_values.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @png_reciprocal(i32 noundef %i.i) #11, !noalias !141
  br label %png_resolve_file_gamma.exit.i

png_resolve_file_gamma.exit.i:                    ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %.012.i.i = phi i32 [ %i.g, %bb.c ], [ %i.c, %bb.a ], [ %i.e, %bb.b ], [ %i.j, %bb.e ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52, !alias.scope !135 ; 6 uses
  %i.m = icmp sgt i32 %.012.i.i, 0
  br i1 %i.m, label %bb.f, label %png_init_gamma_values.exit.thread

bb.f:                                             ; preds = %png_resolve_file_gamma.exit.i
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !135
  %i.o = call i32 @png_muldiv(ptr noundef nonnull %i.a, i32 noundef range(i32 1, -2147483648) %.012.i.i, i32 noundef range(i32 1, -2147483648) %i.l, i32 noundef 100000) #11, !noalias !135
  %.not.i15.i = icmp eq i32 %i.o, 0
  br i1 %.not.i15.i, label %png_init_gamma_values.exit.thread436, label %png_init_gamma_values.exit

png_init_gamma_values.exit.thread436:             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !135
  store i32 %.012.i.i, ptr %i.b, align 8, !tbaa !102, !alias.scope !135
  store i32 %i.l, ptr %i.k, align 4, !tbaa !52, !alias.scope !135
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call i32 @png_reciprocal(i32 noundef %.012.i.i) #11, !noalias !135
  br label %png_init_gamma_values.exit.thread

png_init_gamma_values.exit.thread:                ; preds = %bb.h, %png_resolve_file_gamma.exit.i, %bb.d
  %.ph = phi ptr [ %i.h, %bb.d ], [ %i.k, %png_resolve_file_gamma.exit.i ], [ %i.k, %bb.h ]
  %.011.i.ph = phi i32 [ 100000, %bb.d ], [ 100000, %png_resolve_file_gamma.exit.i ], [ %.012.i.i, %bb.h ]
  %.0.i.ph = phi i32 [ 100000, %bb.d ], [ 100000, %png_resolve_file_gamma.exit.i ], [ %i.p, %bb.h ] ; 2 uses
  store i32 %.011.i.ph, ptr %i.b, align 8, !tbaa !102, !alias.scope !135
  store i32 %.0.i.ph, ptr %.ph, align 4, !tbaa !52, !alias.scope !135
  br label %bb.j

png_init_gamma_values.exit:                       ; preds = %bb.g
  %i.q = load i32, ptr %i.a, align 4, !tbaa !3, !noalias !135
  %i.r = call i32 @png_gamma_significant(i32 noundef %i.q) #11, !noalias !135
  %.not438 = icmp eq i32 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !135
  store i32 %.012.i.i, ptr %i.b, align 8, !tbaa !102, !alias.scope !135
  store i32 %i.l, ptr %i.k, align 4, !tbaa !52, !alias.scope !135
  br i1 %.not438, label %bb.j, label %bb.i

bb.i:                                             ; preds = %png_init_gamma_values.exit.thread436, %png_init_gamma_values.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = or i32 %i.t, 8192                        ; 2 uses
  store i32 %i.u, ptr %i.s, align 4, !tbaa !27
  br label %bb.k

bb.j:                                             ; preds = %png_init_gamma_values.exit.thread, %png_init_gamma_values.exit
  %i.v = phi i32 [ %.0.i.ph, %png_init_gamma_values.exit.thread ], [ %i.l, %png_init_gamma_values.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = and i32 %i.x, -8193                      ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %i.v, %bb.j ], [ %i.l, %bb.i ]
  %i.aa = phi i32 [ %i.y, %bb.j ], [ %i.u, %bb.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 20 uses
  %i.ac = and i32 %i.aa, 262272
  %or.cond416 = icmp eq i32 %i.ac, 262144
  br i1 %or.cond416, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = and i32 %i.aa, -41943425
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !7
  %i.ag = and i32 %i.af, -8193
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i16 0, ptr %i.ah, align 8, !tbaa !142
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 8 uses
  %i.aj = call i32 @png_gamma_significant(i32 noundef %i.z) #11
  %i.ak = icmp eq i32 %i.aj, 0
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = and i32 %.pre, -8388609                 ; 2 uses
  store i32 %i.al, ptr %i.ab, align 4, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !7
  %i.ao = and i32 %i.an, -8193
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !7
  br label %bb.o
end_hunk_0
