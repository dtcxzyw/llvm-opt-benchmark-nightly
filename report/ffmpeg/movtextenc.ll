Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movtextenc?download=true
inline.NumInlined: 21
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mov_text_text_cb:bb.a
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.d, 240
  %i.i = icmp eq i32 %i.h, 224
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.d, 248
  %i.k = icmp eq i32 %i.j, 240
  br i1 %i.k, label %bb.e, label %utf8_strlen.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.sink.i = phi i32 [ 1, %.lr.ph.i ], [ 3, %bb.c ], [ 2, %bb.b ], [ 4, %bb.d ]
  %i.l = add i32 %.sink.i, %.01621.i              ; 2 uses
  %i.m = add i32 %.01522.i, 1                     ; 3 uses
  %i.n = icmp ult i32 %i.l, %2
  br i1 %i.n, label %.lr.ph.i, label %utf8_strlen.exit, !llvm.loop !109

utf8_strlen.exit.thread:                          ; preds = %bb.d, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @av_bprint_append_data(ptr noundef nonnull %i.o, ptr noundef %1, i32 noundef %2) #6
  br label %bb.f

utf8_strlen.exit:                                 ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @av_bprint_append_data(ptr noundef nonnull %i.p, ptr noundef nonnull %1, i32 noundef %2) #6
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %utf8_strlen.exit.thread, %utf8_strlen.exit
  br label %bb.g

bb.g:                                             ; preds = %utf8_strlen.exit, %bb.f
  %i.q = phi i32 [ %2, %bb.f ], [ %i.m, %utf8_strlen.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !59
  %i.t = trunc i32 %i.q to i16
  %i.u = add i16 %i.s, %i.t
  store i16 %i.u, ptr %i.r, align 4, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mov_text_new_line_cb(ptr noundef %0, i32 %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !59
  %i.c = add i16 %i.b, 1
  store i16 %i.c, ptr %i.a, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @av_bprint_chars(ptr noundef nonnull %i.d, i8 noundef signext 10, i32 noundef 1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mov_text_style_cb(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) #1 {
bb.a:
  %switch.tableidx = add i8 %1, -98               ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 20
  br i1 %i.a, label %switch.lookup, label %mov_text_style_to_flag.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.mov_text_style_cb, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %mov_text_style_to_flag.exit

mov_text_style_to_flag.exit:                      ; preds = %switch.lookup, %bb.a
  %.0.i = phi i8 [ 0, %bb.a ], [ %switch.load, %switch.lookup ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !66
  %i.e = and i8 %i.d, %.0.i
  %i.f = icmp ne i8 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %.not = icmp eq i32 %2, %i.g
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %mov_text_style_to_flag.exit
  %i.h = tail call fastcc i32 @mov_text_style_start(ptr noundef nonnull %0)
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not11 = icmp eq i32 %2, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.c, align 4, !tbaa !66
  %i.j = or i8 %i.i, %.0.i
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.k = xor i8 %.0.i, -1
  %i.l = load i8, ptr %i.c, align 4, !tbaa !66
  %i.m = and i8 %i.l, %i.k
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink = phi i8 [ %i.m, %bb.e ], [ %i.j, %bb.d ]
  store i8 %.sink, ptr %i.c, align 4, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %mov_text_style_to_flag.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mov_text_color_cb(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = shl i32 %1, 16
  %i.b = and i32 %i.a, 16711680
  %i.c = and i32 %1, 65280
  %i.d = or disjoint i32 %i.b, %i.c
  %i.e = lshr i32 %1, 16
  %i.f = and i32 %i.e, 255
  %i.g = or disjoint i32 %i.d, %i.f
  %i.h = shl nuw i32 %i.g, 8                      ; 3 uses
  switch i32 %2, label %mov_text_color_set.exit [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !67
  %i.k = and i32 %i.j, -256
  %i.l = icmp eq i32 %i.k, %i.h
  br i1 %i.l, label %mov_text_color_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc i32 @mov_text_style_start(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %mov_text_color_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.i, align 4, !tbaa !67
  %i.o = and i32 %i.n, 255
  %i.p = or disjoint i32 %i.o, %i.h
  store i32 %i.p, ptr %i.i, align 4, !tbaa !67
  br label %mov_text_color_set.exit

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !61    ; 3 uses
  %i.s = and i8 %i.r, 4
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1092
  store i32 %i.u, ptr %i.v, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = and i8 %i.r, 2
  %.not22 = icmp eq i8 %i.w, 0
  br i1 %.not22, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !59
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.y = load i16, ptr %i.x, align 8, !tbaa !63   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !59  ; 2 uses
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.ac = phi i16 [ %.pre, %._crit_edge ], [ %i.y, %bb.h ]
  %i.ad = or i8 %i.r, 6
  store i8 %i.ad, ptr %i.q, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i16 %i.ac, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !65
  %i.ah = and i32 %i.ag, 255
  %i.ai = or disjoint i32 %i.ah, %i.h
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !65
  br label %mov_text_color_set.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1090
  store i16 %i.aa, ptr %i.aj, align 2, !tbaa !64
  br label %mov_text_color_set.exit

mov_text_color_set.exit:                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.j, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mov_text_alpha_cb(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = sub nsw i32 255, %1                      ; 2 uses
  switch i32 %2, label %mov_text_alpha_set.exit [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %i.a to i8                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67
  %i.e = trunc i32 %i.d to i8
  %i.f = icmp eq i8 %i.b, %i.e
  br i1 %i.f, label %mov_text_alpha_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @mov_text_style_start(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %mov_text_alpha_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.b, ptr %i.c, align 4, !tbaa !67
  br label %mov_text_alpha_set.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !61    ; 3 uses
  %i.j = and i8 %i.i, 4
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1092
  store i32 %i.l, ptr %i.m, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = and i8 %i.i, 2
  %.not20 = icmp eq i8 %i.n, 0
  br i1 %.not20, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !59
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.p = load i16, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.r = load i16, ptr %i.q, align 4, !tbaa !59   ; 2 uses
  %i.s = icmp eq i16 %i.p, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.t = phi i16 [ %.pre, %._crit_edge ], [ %i.p, %bb.h ]
  %i.u = or i8 %i.i, 6
  store i8 %i.u, ptr %i.h, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i16 %i.t, ptr %i.v, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !65
  %i.y = and i32 %i.x, -256
  %i.z = or i32 %i.y, %i.a
  store i32 %i.z, ptr %i.w, align 4, !tbaa !65
  br label %mov_text_alpha_set.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1090
  store i16 %i.r, ptr %i.aa, align 2, !tbaa !64
  br label %mov_text_alpha_set.exit

mov_text_alpha_set.exit:                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.j, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mov_text_font_name_cb(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) #1 {
bb.a:
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %find_font_id.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %find_font_id.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.g) #7
  %.not12.i.i = icmp eq i32 %i.h, 0
  br i1 %.not12.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %find_font_id.exit.i, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  %i.i = trunc i64 %indvars.iv.i.i to i16
  %i.j = add i16 %i.i, 1
  br label %find_font_id.exit.i

find_font_id.exit.i:                              ; preds = %bb.c, %bb.d, %.preheader.i.i, %bb.a
  %.1.i.i = phi i16 [ 1, %bb.a ], [ %i.j, %bb.d ], [ 1, %.preheader.i.i ], [ 1, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !69
  %i.m = icmp eq i16 %i.l, %.1.i.i
  br i1 %i.m, label %mov_text_font_name_set.exit, label %bb.e

bb.e:                                             ; preds = %find_font_id.exit.i
  %i.n = tail call fastcc i32 @mov_text_style_start(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %mov_text_font_name_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 %.1.i.i, ptr %i.k, align 2, !tbaa !69
  br label %mov_text_font_name_set.exit

mov_text_font_name_set.exit:                      ; preds = %find_font_id.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mov_text_font_size_cb(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = sitofp nsz i32 %1 to double
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.c = load double, ptr %i.b, align 8, !tbaa !41
  %i.d = tail call nsz double @llvm.fmuladd.f64(double %i.a, double %i.c, double 5.000000e-01)
  %i.e = fptosi double %i.d to i32                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !68
  %i.h = zext i8 %i.g to i32
  %i.i = icmp eq i32 %i.h, %i.e
  br i1 %i.i, label %mov_text_font_size_set.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc i32 @mov_text_style_start(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %mov_text_font_size_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i32 %i.e to i8
  store i8 %i.k, ptr %i.f, align 8, !tbaa !68
  br label %mov_text_font_size_set.exit

mov_text_font_size_set.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mov_text_cancel_overrides_cb(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !52
  %.not9 = icmp eq i8 %i.a, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = tail call ptr @ff_ass_style_get(ptr noundef %i.e, ptr noundef nonnull %1) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.f, %bb.d ], [ %i.c, %bb.c ]
  tail call fastcc void @mov_text_ass_style_set(ptr noundef nonnull %0, ptr noundef %.0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mov_text_end_cb(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call fastcc i32 @mov_text_style_start(ptr noundef %0) ; 0 uses
  ret void
}

declare void @av_bprint_chars(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_styl(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.c = load i8, ptr %i.b, align 8, !tbaa !61
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !60   ; 3 uses
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.g = mul i32 %i.f, 12
  %i.h = add i32 %i.g, 10
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
end_hunk_0
