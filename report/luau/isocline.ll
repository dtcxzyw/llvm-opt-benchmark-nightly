Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ic_char_is_idletter:bb.a
  %i.g = add nsw i8 %i.c, -48
  %or.cond10 = icmp ult i8 %i.g, 10
  %i.h = icmp eq i8 %i.c, 95
  %or.cond13 = or i1 %i.h, %or.cond10
  %i.i = icmp eq i8 %i.c, 45
  %spec.select = or i1 %i.i, %or.cond13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %spec.select, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -9223372036854775807, -9223372036854775808) i64 @ic_is_token(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %.thread, label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29 ; 2 uses
  %i.e = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0) ; 2 uses
  %.not = icmp sgt i64 %i.d, %1
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %ic_strlen.exit
  %.not44 = icmp eq i64 %1, 0
  br i1 %.not44, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1
  %i.h = tail call zeroext i1 %2(ptr noundef nonnull %i.g, i64 noundef 1) #28
  br i1 %i.h, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.f
  %.0 = phi i64 [ %i.n, %bb.f ], [ %1, %.preheader ] ; 5 uses
  %i.i = icmp slt i64 %.0, %i.e
  br i1 %i.i, label %bb.e, label %.thread41

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i64 @str_next_ofs(ptr noundef nonnull %0, i64 noundef %i.e, i64 noundef %.0, ptr noundef null) ; 3 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  %i.m = tail call zeroext i1 %2(ptr noundef nonnull %i.l, i64 noundef %i.j) #28
  %i.n = add nuw nsw i64 %i.j, %.0
  br i1 %i.m, label %bb.d, label %.thread41

.thread41:                                        ; preds = %bb.f, %bb.d
  %i.o = sub nsw i64 %.0, %1
  br label %.thread

.thread:                                          ; preds = %bb.e, %ic_strlen.exit, %bb.c, %.thread41, %bb.a
  %.4 = phi i64 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %ic_strlen.exit ], [ %i.o, %.thread41 ], [ -1, %bb.e ]
  ret i64 %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -9223372036854775808) i64 @ic_match_token(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %ic_is_token.exit.thread, label %ic_strlen.exit.i

ic_strlen.exit.i:                                 ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29 ; 2 uses
  %i.e = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0) ; 2 uses
  %.not.i = icmp sgt i64 %i.d, %1
  br i1 %.not.i, label %bb.b, label %ic_is_token.exit.thread

bb.b:                                             ; preds = %ic_strlen.exit.i
  %.not44.i = icmp eq i64 %1, 0
  br i1 %.not44.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1
  %i.h = tail call zeroext i1 %2(ptr noundef nonnull %i.g, i64 noundef 1) #28, !inline_history !134
  br i1 %i.h, label %ic_is_token.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.f
  %.0.i = phi i64 [ %i.n, %bb.f ], [ %1, %.preheader ] ; 5 uses
  %i.i = icmp slt i64 %.0.i, %i.e
  br i1 %i.i, label %bb.e, label %ic_is_token.exit

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i64 @str_next_ofs(ptr noundef nonnull %0, i64 noundef %i.e, i64 noundef %.0.i, ptr noundef null) ; 3 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %ic_is_token.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i
  %i.m = tail call zeroext i1 %2(ptr noundef nonnull %i.l, i64 noundef %i.j) #28, !inline_history !134
  %i.n = add nuw nsw i64 %i.j, %.0.i
  br i1 %i.m, label %bb.d, label %ic_is_token.exit

ic_is_token.exit:                                 ; preds = %bb.d, %bb.f
  %i.o = sub nsw i64 %.0.i, %1                    ; 4 uses
  %i.p = icmp sgt i64 %i.o, 0
  %i.q = icmp ne ptr %3, null
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %ic_strlen.exit, label %ic_is_token.exit.thread

ic_strlen.exit:                                   ; preds = %ic_is_token.exit
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) #29
  %i.s = icmp eq i64 %i.r, %i.o
  br i1 %i.s, label %bb.g, label %ic_is_token.exit.thread

bb.g:                                             ; preds = %ic_strlen.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.u = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.t, ptr noundef nonnull readonly dereferenceable(1) %3, i64 noundef range(i64 1, -9223372036854775808) %i.o) #29
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %ic_is_token.exit.thread

ic_is_token.exit.thread:                          ; preds = %bb.e, %ic_strlen.exit.i, %bb.c, %bb.a, %bb.g, %ic_strlen.exit, %ic_is_token.exit
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ic_is_token.exit.thread
  %.0 = phi i64 [ 0, %ic_is_token.exit.thread ], [ %i.o, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -9223372036854775808) i64 @ic_match_any_token(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %ic_is_token.exit.thread, label %ic_strlen.exit.i

ic_strlen.exit.i:                                 ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29 ; 2 uses
  %i.e = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0) ; 2 uses
  %.not.i = icmp sgt i64 %i.d, %1
  br i1 %.not.i, label %bb.b, label %ic_is_token.exit.thread

bb.b:                                             ; preds = %ic_strlen.exit.i
  %.not44.i = icmp eq i64 %1, 0
  br i1 %.not44.i, label %.preheader45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1
  %i.h = tail call zeroext i1 %2(ptr noundef nonnull %i.g, i64 noundef 1) #28, !inline_history !134
  br i1 %i.h, label %ic_is_token.exit.thread, label %.preheader45

.preheader45:                                     ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader45, %bb.f
  %.0.i = phi i64 [ %i.n, %bb.f ], [ %1, %.preheader45 ] ; 5 uses
  %i.i = icmp slt i64 %.0.i, %i.e
  br i1 %i.i, label %bb.e, label %ic_is_token.exit

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i64 @str_next_ofs(ptr noundef nonnull %0, i64 noundef %i.e, i64 noundef %.0.i, ptr noundef null) ; 3 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %ic_is_token.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i
  %i.m = tail call zeroext i1 %2(ptr noundef nonnull %i.l, i64 noundef %i.j) #28, !inline_history !134
  %i.n = add nuw nsw i64 %i.j, %.0.i
  br i1 %i.m, label %bb.d, label %ic_is_token.exit

ic_is_token.exit:                                 ; preds = %bb.d, %bb.f
  %i.o = sub nsw i64 %.0.i, %1                    ; 4 uses
  %i.p = icmp slt i64 %i.o, 1
  %i.q = icmp eq ptr %3, null
  %or.cond = or i1 %i.q, %i.p
  br i1 %or.cond, label %ic_is_token.exit.thread, label %.preheader

.preheader:                                       ; preds = %ic_is_token.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.s = load ptr, ptr %3, align 8, !tbaa !87     ; 2 uses
  %.not27 = icmp eq ptr %i.s, null
  br i1 %.not27, label %ic_is_token.exit.thread, label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %.preheader, %bb.h
  %i.t = phi ptr [ %i.z, %bb.h ], [ %i.s, %.preheader ] ; 2 uses
  %.028 = phi ptr [ %i.y, %bb.h ], [ %3, %.preheader ]
  %i.u = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.t) #29
  %4 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.u, i64 0)
  %i.v = icmp eq i64 %i.o, %4
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ic_strlen.exit
  %i.w = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %i.t, i64 noundef range(i64 1, -9223372036854775808) %i.o) #29
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %ic_is_token.exit.thread, label %bb.h

bb.h:                                             ; preds = %ic_strlen.exit, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %ic_is_token.exit.thread, label %ic_strlen.exit, !llvm.loop !283

ic_is_token.exit.thread:                          ; preds = %bb.e, %bb.g, %bb.h, %.preheader, %ic_strlen.exit.i, %bb.c, %bb.a, %ic_is_token.exit
  %.1 = phi i64 [ 0, %.preheader ], [ 0, %ic_is_token.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %ic_strlen.exit.i ], [ 0, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.e ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i1 @ic_starts_with(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !48      ; 2 uses
  %.not23 = icmp eq i8 %i.d, 0
  br i1 %.not23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.e = phi i8 [ %i.j, %bb.d ], [ %i.d, %.preheader ]
  %.024 = phi i64 [ %i.h, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.024
  %i.g = load i8, ptr %i.f, align 1, !tbaa !48    ; 2 uses
  %.not20 = icmp eq i8 %i.g, 0
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.not21 = icmp eq i8 %i.e, %i.g
  br i1 %.not21, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %.024, 1                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !48    ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !284

.critedge:                                        ; preds = %.lr.ph, %bb.d, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.h, %bb.d ], [ %.024, %.lr.ph ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  %i.l = load i8, ptr %i.k, align 1, !tbaa !48
  %i.m = icmp eq i8 %i.l, 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.critedge, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %i.m, %.critedge ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ic_readline(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 12 uses
  %i.b = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %ic_get_env.exit.thread22

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.d, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %ic_getline.exit, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.e = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.f = icmp eq ptr %.pre.i, null
  br i1 %i.f, label %ic_getline.exit, label %ic_get_env.exit.thread22

ic_get_env.exit.thread22:                         ; preds = %bb.a, %ic_get_env.exit
  %i.g = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 106
  %i.i = load i8, ptr %i.h, align 2, !tbaa !135, !range !136, !noundef !137
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138  ; 4 uses
  %.not = icmp eq ptr %i.l, null                  ; 2 uses
  br i1 %i.j, label %bb.j, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread22
  br i1 %.not, label %tty_start_raw.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !141, !range !136, !noundef !137
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %tty_start_raw.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.l, align 8, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 268
  %i.r = tail call i32 @tcsetattr(i32 noundef %i.p, i32 noundef 2, ptr noundef nonnull %i.q) #28
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %tty_start_raw.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.m, align 4, !tbaa !141
  br label %tty_start_raw.exit.i

tty_start_raw.exit.i:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !145
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !145
  %i.y = tail call fastcc ptr @edit_line(ptr noundef nonnull %i.g, ptr noundef %0)
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !145 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %term_end_raw.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %tty_start_raw.exit.i
  %i.ad = add nsw i64 %i.ab, -1
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !145
  br label %term_end_raw.exit.i

term_end_raw.exit.i:                              ; preds = %.sink.split.i.i, %tty_start_raw.exit.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !138 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %ic_editline.exit, label %bb.g

bb.g:                                             ; preds = %term_end_raw.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !141, !range !136, !noundef !137
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %ic_editline.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  store i64 0, ptr %i.aj, align 8, !tbaa !146
  %i.ak = load i32, ptr %i.ae, align 8, !tbaa !142
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  %i.am = tail call i32 @tcsetattr(i32 noundef %i.ak, i32 noundef 2, ptr noundef nonnull %i.al) #28
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %ic_editline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ag, align 4, !tbaa !141
  br label %ic_editline.exit

ic_editline.exit:                                 ; preds = %term_end_raw.exit.i, %bb.g, %bb.h, %bb.i
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !143
  tail call fastcc void @term_write_n(ptr noundef %i.ao, ptr noundef nonnull @.str.296, i64 noundef 1)
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !143
  tail call fastcc void @term_flush(ptr noundef %i.ap)
  br label %ic_getline.exit

bb.j:                                             ; preds = %ic_get_env.exit.thread22
  br i1 %.not, label %term_end_raw.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143 ; 5 uses
  %.not18 = icmp eq ptr %i.ar, null
  br i1 %.not18, label %term_end_raw.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !145
  %i.au = add nsw i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !145
  %.not19 = icmp eq ptr %0, null
  br i1 %.not19, label %term_write.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i8, ptr %0, align 1, !tbaa !48
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %term_write.exit, label %ic_strlen.exit.i

ic_strlen.exit.i:                                 ; preds = %bb.m
  %i.ax = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29
  %i.ay = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ax, i64 0)
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.ar, ptr noundef nonnull readonly %0, i64 noundef %i.ay)
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !143
  br label %term_write.exit

term_write.exit:                                  ; preds = %ic_strlen.exit.i, %bb.m, %bb.l
  %i.az = phi ptr [ %.pre, %ic_strlen.exit.i ], [ %i.ar, %bb.m ], [ %i.ar, %bb.l ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !147 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
end_hunk_0
