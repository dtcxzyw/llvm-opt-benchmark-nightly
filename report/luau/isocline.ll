Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ic_term_writef:bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 56
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !186
  call fastcc void @sbuf_append_vprintf(ptr noundef %.val.i, ptr noundef readonly %0, ptr noundef nonnull %1)
  br label %ic_term_vwritef.exit

ic_term_vwritef.exit:                             ; preds = %bb.b, %ic_get_env.exit.i, %ic_get_env.exit.thread6.i, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_vwritef(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread6

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread6

ic_get_env.exit.thread6:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread6
  %i.j = getelementptr i8, ptr %i.h, i64 56
  %.val = load ptr, ptr %i.j, align 8, !tbaa !186
  tail call fastcc void @sbuf_append_vprintf(ptr noundef %.val, ptr noundef readonly %0, ptr noundef %1)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit.thread6, %ic_get_env.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_reset() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread4
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.418, i64 noundef 3)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit.thread4, %ic_get_env.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_style(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread9

ic_get_env.exit.thread9:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread9
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ic_get_env.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 24
  %.val = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr i8, ptr %i.k, i64 40
  %.val8 = load i64, ptr %i.n, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call fastcc void @attr_update_with_styles(ptr noundef %1, ptr noundef %0, ptr noundef null, i1 noundef zeroext false, ptr noundef readonly %.val, i64 noundef %.val8)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  tail call fastcc void @term_set_attr(ptr noundef nonnull %i.h, i64 %.sroa.0.0.copyload.i)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit.thread9, %bb.c, %ic_get_env.exit, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @term_set_attr(ptr nofree noundef captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !160, !range !136, !noundef !137
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %term_italic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i32
  %i.e = and i32 %i.d, 268435455                  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 268435455
  %.not = icmp eq i32 %i.e, %i.i
  %.not43 = icmp eq i32 %i.e, 0
  %or.cond = or i1 %.not43, %.not
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @term_color_ex(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %i.e, i1 noundef zeroext false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !188
  %i.l = icmp ult i32 %i.k, 4
  %i.m = icmp samesign ugt i32 %i.e, 16777215
  %or.cond62 = select i1 %i.l, i1 %i.m, i1 false
  %.pre = load i64, ptr %i.f, align 8             ; 2 uses
  br i1 %or.cond62, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %1, 268435455
  %i.o = and i64 %.pre, -268435456
  %i.p = or disjoint i64 %i.o, %i.n               ; 2 uses
  store i64 %i.p, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.p, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.r = lshr i64 %1, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = and i32 %i.s, 268435455                  ; 4 uses
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = and i32 %i.v, 268435455
  %.not44 = icmp eq i32 %i.t, %i.w
  %.not45 = icmp eq i32 %i.t, 0
  %or.cond54 = or i1 %.not45, %.not44
  br i1 %or.cond54, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @term_color_ex(ptr noundef nonnull %0, i32 noundef range(i32 1, 268435456) %i.t, i1 noundef zeroext true)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !188
  %i.z = icmp ult i32 %i.y, 4
  %i.aa = icmp samesign ugt i32 %i.t, 16777215
  %or.cond63 = select i1 %i.z, i1 %i.aa, i1 false
  %.pre64.a = load i64, ptr %i.f, align 8         ; 2 uses
  br i1 %or.cond63, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = and i64 %1, 1152921500311879680
  %i.ac = and i64 %.pre64.a, -1152921500311879681
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  store i64 %i.ad, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ae = phi i64 [ %.pre64.a, %bb.f ], [ %i.ad, %bb.g ], [ %i.q, %bb.e ] ; 3 uses
  %i.af = shl i64 %1, 34
  %i.ag = ashr i64 %i.af, 62                      ; 3 uses
  %i.ah = shl i64 %i.ae, 34
  %i.ai = ashr i64 %i.ah, 62
  %.not46 = icmp eq i64 %i.ag, %i.ai
  %.not47 = icmp eq i64 %i.ag, 0
  %or.cond55 = or i1 %.not47, %.not46
  br i1 %or.cond55, label %term_bold.exit, label %2

2:                                                ; preds = %bb.h
  %3 = icmp eq i64 %i.ag, 1                       ; 2 uses
  %4 = select i1 %3, ptr @.str.419, ptr @.str.420 ; 2 uses
  %5 = load i8, ptr %4, align 1, !tbaa !48
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %term_bold.exit, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %2
  %i.aj = select i1 %3, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, i64 noundef %i.aj)
  %.pre65 = load i64, ptr %i.f, align 8
  br label %term_bold.exit

term_bold.exit:                                   ; preds = %ic_strlen.exit.i.i, %2, %bb.h
  %7 = phi i64 [ %.pre65, %ic_strlen.exit.i.i ], [ %i.ae, %2 ], [ %i.ae, %bb.h ] ; 3 uses
  %i.ak = shl i64 %1, 2
  %i.al = ashr i64 %i.ak, 62                      ; 3 uses
  %i.am = shl i64 %7, 2
  %i.an = ashr i64 %i.am, 62
  %.not48 = icmp eq i64 %i.al, %i.an
  %.not49 = icmp eq i64 %i.al, 0
  %or.cond56 = or i1 %.not49, %.not48
  br i1 %or.cond56, label %term_underline.exit, label %8

8:                                                ; preds = %term_bold.exit
  %9 = icmp eq i64 %i.al, 1                       ; 2 uses
  %10 = select i1 %9, ptr @.str.421, ptr @.str.422 ; 2 uses
  %11 = load i8, ptr %10, align 1, !tbaa !48
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %term_underline.exit, label %ic_strlen.exit.i.i59

ic_strlen.exit.i.i59:                             ; preds = %8
  %i.ao = select i1 %9, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %10, i64 noundef %i.ao)
  %.pre66 = load i64, ptr %i.f, align 8
  br label %term_underline.exit

term_underline.exit:                              ; preds = %ic_strlen.exit.i.i59, %8, %term_bold.exit
  %13 = phi i64 [ %.pre66, %ic_strlen.exit.i.i59 ], [ %7, %8 ], [ %7, %term_bold.exit ] ; 3 uses
  %i.ap = shl i64 %1, 32
  %i.aq = ashr i64 %i.ap, 62                      ; 3 uses
  %i.ar = shl i64 %13, 32
  %i.as = ashr i64 %i.ar, 62
  %.not50 = icmp eq i64 %i.aq, %i.as
  %.not51 = icmp eq i64 %i.aq, 0
  %or.cond57 = or i1 %.not51, %.not50
  br i1 %or.cond57, label %term_reverse.exit, label %14

14:                                               ; preds = %term_underline.exit
  %15 = icmp eq i64 %i.aq, 1                      ; 2 uses
  %16 = select i1 %15, ptr @.str.425, ptr @.str.426 ; 2 uses
  %17 = load i8, ptr %16, align 1, !tbaa !48
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %term_reverse.exit, label %ic_strlen.exit.i.i60

ic_strlen.exit.i.i60:                             ; preds = %14
  %i.at = select i1 %15, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %16, i64 noundef %i.at)
  %.pre67 = load i64, ptr %i.f, align 8
  br label %term_reverse.exit

term_reverse.exit:                                ; preds = %ic_strlen.exit.i.i60, %14, %term_underline.exit
  %19 = phi i64 [ %.pre67, %ic_strlen.exit.i.i60 ], [ %13, %14 ], [ %13, %term_underline.exit ]
  %i.au = ashr i64 %1, 62                         ; 3 uses
  %i.av = ashr i64 %19, 62
  %.not52 = icmp eq i64 %i.au, %i.av
  %.not53 = icmp eq i64 %i.au, 0
  %or.cond58 = or i1 %.not53, %.not52
  br i1 %or.cond58, label %term_italic.exit, label %bb.i

bb.i:                                             ; preds = %term_reverse.exit
  %i.aw = icmp eq i64 %i.au, 1                    ; 2 uses
  %i.ax = select i1 %i.aw, ptr @.str.423, ptr @.str.424 ; 2 uses
  %20 = load i8, ptr %i.ax, align 1, !tbaa !48
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %term_italic.exit, label %ic_strlen.exit.i.i61

ic_strlen.exit.i.i61:                             ; preds = %bb.i
  %22 = select i1 %i.aw, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ax, i64 noundef %22)
  br label %term_italic.exit

term_italic.exit:                                 ; preds = %ic_strlen.exit.i.i61, %bb.i, %bb.a, %term_reverse.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 25) i32 @ic_term_get_color_bits() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread5

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %term_get_color_bits.exit, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %term_get_color_bits.exit, label %ic_get_env.exit.thread5

ic_get_env.exit.thread5:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %term_get_color_bits.exit, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread5
  %i.j = getelementptr i8, ptr %i.h, i64 48
  %.val = load i32, ptr %i.j, align 8, !tbaa !188 ; 2 uses
  %i.k = icmp ult i32 %.val, 5
  br i1 %i.k, label %switch.lookup, label %term_get_color_bits.exit

switch.lookup:                                    ; preds = %bb.c
  %i.l = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ic_env_create, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %term_get_color_bits.exit

term_get_color_bits.exit:                         ; preds = %bb.c, %switch.lookup, %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread5
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %ic_get_env.exit.thread5 ], [ 4, %ic_get_env.exit ], [ 4, %bb.b ], [ 4, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_bold(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %term_bold.exit, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %term_bold.exit, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %term_bold.exit, label %1

1:                                                ; preds = %ic_get_env.exit.thread4
  %2 = select i1 %0, ptr @.str.419, ptr @.str.420 ; 2 uses
  %3 = load i8, ptr %2, align 1, !tbaa !48
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %term_bold.exit, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %1
  %i.j = select i1 %0, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %2, i64 noundef %i.j)
  br label %term_bold.exit

term_bold.exit:                                   ; preds = %bb.b, %ic_strlen.exit.i.i, %1, %ic_get_env.exit, %ic_get_env.exit.thread4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_underline(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %term_underline.exit, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %term_underline.exit, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %term_underline.exit, label %1

1:                                                ; preds = %ic_get_env.exit.thread4
  %2 = select i1 %0, ptr @.str.421, ptr @.str.422 ; 2 uses
  %3 = load i8, ptr %2, align 1, !tbaa !48
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %term_underline.exit, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %1
  %i.j = select i1 %0, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %2, i64 noundef %i.j)
  br label %term_underline.exit

term_underline.exit:                              ; preds = %bb.b, %ic_strlen.exit.i.i, %1, %ic_get_env.exit, %ic_get_env.exit.thread4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_italic(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %term_italic.exit, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %term_italic.exit, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %term_italic.exit, label %1

1:                                                ; preds = %ic_get_env.exit.thread4
  %2 = select i1 %0, ptr @.str.423, ptr @.str.424 ; 2 uses
  %3 = load i8, ptr %2, align 1, !tbaa !48
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %term_italic.exit, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %1
  %i.j = select i1 %0, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %2, i64 noundef %i.j)
  br label %term_italic.exit

term_italic.exit:                                 ; preds = %bb.b, %ic_strlen.exit.i.i, %1, %ic_get_env.exit, %ic_get_env.exit.thread4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_reverse(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %term_reverse.exit, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %term_reverse.exit, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %term_reverse.exit, label %1

1:                                                ; preds = %ic_get_env.exit.thread4
  %2 = select i1 %0, ptr @.str.425, ptr @.str.426 ; 2 uses
  %3 = load i8, ptr %2, align 1, !tbaa !48
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %term_reverse.exit, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %1
  %i.j = select i1 %0, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %2, i64 noundef %i.j)
  br label %term_reverse.exit

term_reverse.exit:                                ; preds = %bb.b, %ic_strlen.exit.i.i, %1, %ic_get_env.exit, %ic_get_env.exit.thread4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_color_ansi(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread7

ic_get_env.exit.thread7:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread7
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %or.cond.i = icmp ult i32 %1, 8
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i32 %1, 30
  br label %color_from_ansi256.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %1, 16
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i32 %1, 82
  br label %color_from_ansi256.exit

bb.g:                                             ; preds = %bb.e
  %i.n = add nsw i64 %i.j, -16
  %or.cond5.i = icmp ult i64 %i.n, 240
  br i1 %or.cond5.i, label %bb.h, label %color_from_ansi256.exit

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @ansi256, i64 %i.j
  %i.p = load i32, ptr %i.o, align 4, !tbaa !133
  %i.q = and i32 %i.p, 16777215
  %i.r = or disjoint i32 %i.q, 16777216
  br label %color_from_ansi256.exit

color_from_ansi256.exit:                          ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.r, %bb.h ], [ 39, %bb.g ]
  %not. = xor i1 %0, true
  tail call fastcc void @term_color_ex(ptr noundef nonnull %i.h, i32 noundef range(i32 1, 0) %.0.i, i1 noundef zeroext %not.)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %color_from_ansi256.exit, %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_color_rgb(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread7

ic_get_env.exit.thread7:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread.sink.split

ic_get_env.exit.thread.sink.split:                ; preds = %ic_get_env.exit.thread7
  %i.j = and i32 %1, 16777215
  %i.k = or disjoint i32 %i.j, 16777216
  %not. = xor i1 %0, true
  tail call fastcc void @term_color_ex(ptr noundef nonnull %i.h, i32 noundef range(i32 1, 0) %i.k, i1 noundef zeroext %not.)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %ic_get_env.exit.thread.sink.split, %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ic_readline_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread33

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_set_default_highlighter.exit31, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_set_default_highlighter.exit31, label %ic_get_env.exit.thread33

ic_get_env.exit.thread33:                         ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122  ; 3 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !103
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %ic_set_default_completer.exit, label %ic_get_env.exit.thread4.i

ic_get_env.exit.thread4.i:                        ; preds = %ic_get_env.exit.thread33
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !130
  store ptr %2, ptr %i.m, align 8, !tbaa !125
  br label %ic_set_default_completer.exit

ic_set_default_completer.exit:                    ; preds = %ic_get_env.exit.thread4.i, %ic_get_env.exit.thread33
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %ic_set_default_highlighter.exit, label %ic_get_env.exit.thread5.i

ic_get_env.exit.thread5.i:                        ; preds = %ic_set_default_completer.exit
  store ptr %3, ptr %i.j, align 8, !tbaa !184
  store ptr %4, ptr %i.k, align 8, !tbaa !185
  br label %ic_set_default_highlighter.exit

ic_set_default_highlighter.exit:                  ; preds = %ic_get_env.exit.thread5.i, %ic_set_default_completer.exit
  %i.n = tail call ptr @ic_readline(ptr noundef %0) ; 3 uses
  %i.o = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %ic_set_default_completer.exit26

bb.c:                                             ; preds = %ic_set_default_highlighter.exit
  %i.q = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.q, ptr @rpenv, align 8, !tbaa !129
  %.not.i.i23 = icmp eq ptr %i.q, null
  br i1 %.not.i.i23, label %bb.d, label %ic_get_env.exit.i24

ic_get_env.exit.i24:                              ; preds = %bb.c
  %i.r = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i.i25 = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.s = icmp eq ptr %.pre.i.i25, null
  br i1 %i.s, label %bb.d, label %ic_set_default_completer.exit26

ic_set_default_completer.exit26:                  ; preds = %ic_set_default_highlighter.exit, %ic_get_env.exit.i24
  %.pr = phi ptr [ %i.o, %ic_set_default_highlighter.exit ], [ %.pre.i.i25, %ic_get_env.exit.i24 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !122
  store <2 x ptr> %i.i, ptr %i.u, align 8, !tbaa !103
  br label %ic_get_env.exit.thread5.i27

bb.d:                                             ; preds = %bb.c, %ic_get_env.exit.i24
  %i.v = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.v, ptr @rpenv, align 8, !tbaa !129
  %.not.i.i28 = icmp eq ptr %i.v, null
  br i1 %.not.i.i28, label %ic_set_default_highlighter.exit31, label %ic_get_env.exit.i29

ic_get_env.exit.i29:                              ; preds = %bb.d
  %i.w = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i.i30 = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.x = icmp eq ptr %.pre.i.i30, null
  br i1 %i.x, label %ic_set_default_highlighter.exit31, label %ic_get_env.exit.thread5.i27

ic_get_env.exit.thread5.i27:                      ; preds = %ic_set_default_completer.exit26, %ic_get_env.exit.i29
  %i.y = phi ptr [ %.pre.i.i30, %ic_get_env.exit.i29 ], [ %.pr, %ic_set_default_completer.exit26 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store <2 x ptr> %i.l, ptr %i.z, align 8, !tbaa !103
  br label %ic_set_default_highlighter.exit31

ic_set_default_highlighter.exit31:                ; preds = %bb.b, %ic_get_env.exit.thread5.i27, %ic_get_env.exit.i29, %bb.d, %ic_get_env.exit
  %.0 = phi ptr [ %i.n, %ic_get_env.exit.thread5.i27 ], [ null, %ic_get_env.exit ], [ %i.n, %bb.d ], [ %i.n, %ic_get_env.exit.i29 ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_init_custom_malloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
end_hunk_0
