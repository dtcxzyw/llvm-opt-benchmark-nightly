Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/convert?download=true
inline.NumInlined: 114
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@convert_attrs:bb.a
  tail call void @repo_config(ptr noundef %i.c, ptr noundef nonnull @read_convert_config, ptr noundef null) #22
  %.pre = load ptr, ptr @check, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  tail call void @git_check_attr(ptr noundef %0, ptr noundef %2, ptr noundef %i.d) #22
  %i.e = load ptr, ptr @check, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 72
  %.val45 = load ptr, ptr %i.h, align 8, !tbaa !97 ; 5 uses
  %i.i = icmp eq ptr %.val45, @git_attr__true
  br i1 %i.i, label %git_path_check_crlf.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %.val45, @git_attr__false
  br i1 %i.j, label %git_path_check_crlf.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq ptr %.val45, null
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val45, ptr noundef nonnull dereferenceable(6) @.str.31) #24
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %git_path_check_crlf.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val45, ptr noundef nonnull dereferenceable(5) @.str.32) #24
  %.not7.i = icmp eq i32 %i.m, 0
  br i1 %.not7.i, label %git_path_check_crlf.exit.thread, label %bb.h

git_path_check_crlf.exit.thread:                  ; preds = %bb.d, %bb.c, %bb.f, %bb.g
  %.0.i.ph = phi i32 [ 5, %bb.g ], [ 3, %bb.f ], [ 2, %bb.c ], [ 1, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %.0.i.ph, ptr %i.n, align 4, !tbaa !45
  br label %bb.n

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  store i32 0, ptr %i.o, align 4, !tbaa !45
  %i.p = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.p, align 8, !tbaa !97  ; 5 uses
  %i.q = icmp eq ptr %.val, @git_attr__true
  br i1 %i.q, label %git_path_check_crlf.exit53, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = icmp eq ptr %.val, @git_attr__false
  br i1 %i.r, label %git_path_check_crlf.exit53, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = icmp eq ptr %.val, null
  br i1 %i.s, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val, ptr noundef nonnull dereferenceable(6) @.str.31) #24
  %.not.i50 = icmp eq i32 %i.t, 0
  br i1 %.not.i50, label %git_path_check_crlf.exit53, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val, ptr noundef nonnull dereferenceable(5) @.str.32) #24
  %.not7.i51 = icmp eq i32 %i.u, 0
  br i1 %.not7.i51, label %git_path_check_crlf.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  br label %git_path_check_crlf.exit53

git_path_check_crlf.exit53:                       ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %.0.i52 = phi i32 [ 1, %bb.i ], [ 2, %bb.h ], [ 0, %bb.m ], [ 3, %bb.k ], [ 5, %bb.l ] ; 2 uses
  store i32 %.0.i52, ptr %i.o, align 4, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %git_path_check_crlf.exit.thread, %git_path_check_crlf.exit53
  %i.v = phi i32 [ %.0.i.ph, %git_path_check_crlf.exit.thread ], [ %.0.i52, %git_path_check_crlf.exit53 ] ; 5 uses
  %i.w = phi ptr [ %i.n, %git_path_check_crlf.exit.thread ], [ %i.o, %git_path_check_crlf.exit53 ] ; 3 uses
  %i.x = getelementptr i8, ptr %i.g, i64 24
  %.val46 = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.y = icmp eq ptr %.val46, @git_attr__true
  %i.z = zext i1 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !46
  %i.ab = getelementptr i8, ptr %i.g, i64 40
  %.val47 = load ptr, ptr %i.ab, align 8, !tbaa !97 ; 4 uses
  %i.ac = icmp eq ptr %.val47, @git_attr__true
  %i.ad = icmp eq ptr %.val47, @git_attr__false
  %or.cond.i = or i1 %i.ac, %i.ad
  %i.ae = icmp eq ptr %.val47, null
  %or.cond3.i = or i1 %i.ae, %or.cond.i
  %.01.i = load ptr, ptr @user_convert, align 8   ; 2 uses
  %.not2.i = icmp eq ptr %.01.i, null
  %or.cond6.i = select i1 %or.cond3.i, i1 true, i1 %.not2.i
  br i1 %or.cond6.i, label %git_path_check_convert.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %.03.i = phi ptr [ %.0.i54, %bb.o ], [ %.01.i, %bb.n ] ; 3 uses
  %i.af = load ptr, ptr %.03.i, align 8, !tbaa !48
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val47, ptr noundef nonnull dereferenceable(1) %i.af) #24
  %.not15.i = icmp eq i32 %i.ag, 0
  br i1 %.not15.i, label %git_path_check_convert.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.0.i54 = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %.not.i55 = icmp eq ptr %.0.i54, null
  br i1 %.not.i55, label %git_path_check_convert.exit, label %.lr.ph.i, !llvm.loop !89

git_path_check_convert.exit:                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.013.i = phi ptr [ null, %bb.n ], [ null, %bb.o ], [ %.03.i, %.lr.ph.i ]
  store ptr %.013.i, ptr %1, align 8, !tbaa !50
  %.not43 = icmp eq i32 %i.v, 1
  br i1 %.not43, label %.thread73, label %bb.p

bb.p:                                             ; preds = %git_path_check_convert.exit
  %i.ai = getelementptr i8, ptr %i.g, i64 56
  %.val48 = load ptr, ptr %i.ai, align 8, !tbaa !97 ; 5 uses
  %i.aj = icmp eq ptr %.val48, null
  br i1 %i.aj, label %.thread73, label %sub_0.i

sub_0.i:                                          ; preds = %bb.p
  %i.ak = load i8, ptr %.val48, align 1
  %.not1.i = icmp eq i8 %i.ak, 108
  br i1 %.not1.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.al = getelementptr inbounds nuw i8, ptr %.val48, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %.not2.i57 = icmp eq i8 %i.am, 102
  br i1 %.not2.i57, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val48, i64 2
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %git_path_check_eol.exit, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val48, ptr noundef nonnull dereferenceable(5) @.str.7) #24
  %.not5.i = icmp eq i32 %i.aq, 0
  br i1 %.not5.i, label %bb.q, label %.thread73

git_path_check_eol.exit:                          ; preds = %.tail.i
  %i.ar = icmp eq i32 %i.v, 5
  %. = select i1 %i.ar, i32 6, i32 3
  br label %.thread73.sink.split

bb.q:                                             ; preds = %.tail.thread.i
  %i.as = icmp eq i32 %i.v, 5
  %.98 = select i1 %i.as, i32 7, i32 4
  br label %.thread73.sink.split

.thread73.sink.split:                             ; preds = %bb.q, %git_path_check_eol.exit
  %.sink = phi i32 [ %., %git_path_check_eol.exit ], [ %.98, %bb.q ] ; 2 uses
  store i32 %.sink, ptr %i.w, align 4, !tbaa !45
  br label %.thread73

.thread73:                                        ; preds = %.thread73.sink.split, %bb.p, %.tail.thread.i, %git_path_check_convert.exit
  %i.at = phi i32 [ %i.v, %bb.p ], [ %i.v, %.tail.thread.i ], [ 1, %git_path_check_convert.exit ], [ %.sink, %.thread73.sink.split ] ; 2 uses
  %i.au = getelementptr i8, ptr %i.g, i64 88
  %.val49 = load ptr, ptr %i.au, align 8, !tbaa !97 ; 6 uses
  %i.av = icmp eq ptr %.val49, null
  br i1 %i.av, label %git_path_check_encoding.exit, label %bb.r

bb.r:                                             ; preds = %.thread73
  %char0.i = load i8, ptr %.val49, align 1
  %.not.i58 = icmp eq i8 %char0.i, 0
  br i1 %.not.i58, label %git_path_check_encoding.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = icmp eq ptr %.val49, @git_attr__true
  %i.ax = icmp eq ptr %.val49, @git_attr__false
  %or.cond.i59 = or i1 %i.aw, %i.ax
  br i1 %or.cond.i59, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call fastcc ptr @_(ptr noundef nonnull @.str.33)
  tail call void (ptr, ...) @die(ptr noundef %i.ay) #23
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.az = tail call i32 @same_encoding(ptr noundef nonnull %.val49, ptr noundef nonnull @.str.34) #22
  %.not10.i = icmp eq i32 %i.az, 0
  %..i = select i1 %.not10.i, ptr %.val49, ptr null
  %.pre88 = load i32, ptr %i.w, align 4, !tbaa !45
  br label %git_path_check_encoding.exit

git_path_check_encoding.exit:                     ; preds = %.thread73, %bb.r, %bb.u
  %i.ba = phi i32 [ %i.at, %.thread73 ], [ %.pre88, %bb.u ], [ %i.at, %bb.r ] ; 3 uses
  %.0.i60 = phi ptr [ null, %.thread73 ], [ %..i, %bb.u ], [ null, %bb.r ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.0.i60, ptr %i.bb, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !52
  %i.bd = icmp eq i32 %i.ba, 2
  %.pre89 = load i32, ptr @auto_crlf, align 4     ; 4 uses
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %git_path_check_encoding.exit
  switch i32 %.pre89, label %text_eol_is_crlf.exit [
    i32 1, label %.thread85.sink.split
    i32 -1, label %text_eol_is_crlf.exit.thread
  ]

text_eol_is_crlf.exit:                            ; preds = %bb.v
  %i.be = load i32, ptr @core_eol, align 4, !tbaa !24
  %.fr = freeze i32 %i.be
  %.not87 = icmp eq i32 %.fr, 1
  br i1 %.not87, label %.thread85.sink.split, label %text_eol_is_crlf.exit.thread

text_eol_is_crlf.exit.thread:                     ; preds = %bb.v, %text_eol_is_crlf.exit
  br label %.thread85.sink.split

bb.w:                                             ; preds = %git_path_check_encoding.exit
  %i.bf = icmp eq i32 %i.ba, 0                    ; 3 uses
  %i.bg = icmp eq i32 %.pre89, 0
  %or.cond5 = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond5, label %.thread85.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = icmp eq i32 %.pre89, 1
  %or.cond7 = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond7, label %.thread85.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = icmp eq i32 %.pre89, -1
  %or.cond9 = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond9, label %.thread85.sink.split, label %.thread85

.thread85.sink.split:                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %text_eol_is_crlf.exit, %text_eol_is_crlf.exit.thread
  %.sink97 = phi i32 [ 7, %bb.x ], [ 1, %bb.w ], [ 4, %bb.v ], [ 3, %text_eol_is_crlf.exit.thread ], [ 4, %text_eol_is_crlf.exit ], [ 6, %bb.y ]
  store i32 %.sink97, ptr %i.w, align 4, !tbaa !45
  br label %.thread85

.thread85:                                        ; preds = %.thread85.sink.split, %bb.y
  ret void
}

declare ptr @attr_check_initl(ptr noundef, ...) local_unnamed_addr #2

declare void @repo_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @read_convert_config(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.d = call i32 @parse_config_key(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #22
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.a
  %.034 = load ptr, ptr @user_convert, align 8, !tbaa !49 ; 2 uses
  %.not35 = icmp eq ptr %.034, null
  br i1 %.not35, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.036 = phi ptr [ %.0, %bb.b ], [ %.034, %.preheader ] ; 3 uses
  %i.h = load ptr, ptr %.036, align 8, !tbaa !48
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.j = load i64, ptr %i.c, align 8, !tbaa !16
  %i.k = call i32 @xstrncmpz(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.j) #22
  %.not28 = icmp eq i32 %i.k, 0
  br i1 %.not28, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.0 = load ptr, ptr %i.l, align 8, !tbaa !49    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !98

.critedge:                                        ; preds = %bb.b, %.preheader
  %i.m = call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #22 ; 4 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.o = load i64, ptr %i.c, align 8, !tbaa !16
  %i.p = call ptr @xmemdupz(ptr noundef %i.n, i64 noundef %i.o) #22
  store ptr %i.p, ptr %i.m, align 8, !tbaa !48
  %i.q = load ptr, ptr @user_convert_tail, align 8, !tbaa !40
  store ptr %i.m, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.r, ptr @user_convert_tail, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge
  %.1 = phi ptr [ %i.m, %.critedge ], [ %.036, %.lr.ph ] ; 4 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.27, ptr noundef nonnull dereferenceable(1) %i.s) #24
  %.not29 = icmp eq i32 %i.t, 0
  br i1 %.not29, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  call void @free(ptr noundef %i.v) #22
  store ptr null, ptr %i.u, align 8, !tbaa !54
  %i.w = call i32 @git_config_string(ptr noundef nonnull %i.u, ptr noundef %0, ptr noundef %1) #22
  br label %bb.j

bb.d:                                             ; preds = %.loopexit
  %i.x = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.28, ptr noundef nonnull dereferenceable(1) %i.s) #24
  %.not30 = icmp eq i32 %i.x, 0
  br i1 %.not30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  call void @free(ptr noundef %i.z) #22
  store ptr null, ptr %i.y, align 8, !tbaa !55
  %i.aa = call i32 @git_config_string(ptr noundef nonnull %i.y, ptr noundef %0, ptr noundef %1) #22
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.29, ptr noundef nonnull dereferenceable(1) %i.s) #24
  %.not31 = icmp eq i32 %i.ab, 0
  br i1 %.not31, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @free(ptr noundef %i.ad) #22
  store ptr null, ptr %i.ac, align 8, !tbaa !56
  %i.ae = call i32 @git_config_string(ptr noundef nonnull %i.ac, ptr noundef %0, ptr noundef %1) #22
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.af = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.30, ptr noundef nonnull dereferenceable(1) %i.s) #24
  %.not32 = icmp eq i32 %i.af, 0
  br i1 %.not32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = call i32 @git_config_bool(ptr noundef %0, ptr noundef %1) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %.1, i64 40
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ %i.ae, %bb.g ], [ %i.aa, %bb.e ], [ %i.w, %bb.c ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.027
}

declare void @git_check_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @reset_parsed_attributes() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @check, align 8, !tbaa !38
  tail call void @attr_check_free(ptr noundef %i.a) #22
  store ptr null, ptr @check, align 8, !tbaa !38
  tail call void @reset_merge_attributes() #22
  %i.b = load ptr, ptr @user_convert, align 8, !tbaa !49 ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = load ptr, ptr %.09, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.e) #22
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.g) #22
  %i.h = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  tail call void @free(ptr noundef %i.i) #22
  %i.j = getelementptr inbounds nuw i8, ptr %.09, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.k) #22
  tail call void @free(ptr noundef nonnull %.09) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr @user_convert, align 8, !tbaa !49
  store ptr null, ptr @user_convert_tail, align 8, !tbaa !40
  ret void
}

declare void @attr_check_free(ptr noundef) local_unnamed_addr #2

declare void @reset_merge_attributes() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @would_convert_to_git_filter_fd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.conv_attrs, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @convert_attrs(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %apply_filter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57
  %.not4 = icmp ne i32 %i.c, 0
  %spec.select = zext i1 %.not4 to i32
  br label %apply_filter.exit

apply_filter.exit:                                ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @apply_filter(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef range(i32 1, 3) %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %9 = alloca %struct.strbuf, align 8             ; 7 uses
  %10 = alloca %struct.strbuf, align 8            ; 8 uses
  %i.b = alloca [24 x i8], align 16               ; 4 uses
  %11 = alloca %struct.strbuf, align 8            ; 7 uses
  %12 = alloca %struct.async, align 8             ; 9 uses
  %13 = alloca %struct.filter_params, align 8     ; 8 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq ptr %4, null
  br i1 %.not35, label %.thread.thread, label %bb.c
end_hunk_0
begin_hunk_1_@crlf_to_git:bb.a
  %.sroa.097.0 = phi i32 [ %.sroa.097.1, %bb.q ], [ 0, %bb.d ] ; 7 uses
  %.sroa.6.0 = phi i32 [ %.sroa.6.1, %bb.q ], [ 0, %bb.d ] ; 6 uses
  %.sroa.9.0 = phi i32 [ %.sroa.9.1, %bb.q ], [ 0, %bb.d ] ; 6 uses
  %.sroa.12.0 = phi i32 [ %.sroa.12.1, %bb.q ], [ 0, %bb.d ] ; 6 uses
  %.sroa.16.0 = phi i32 [ %.sroa.16.1, %bb.q ], [ 0, %bb.d ] ; 5 uses
  %.sroa.20.0 = phi i32 [ %.sroa.20.1, %bb.q ], [ 0, %bb.d ] ; 5 uses
  %i.f = phi i32 [ %i.ac, %bb.q ], [ 0, %bb.d ]   ; 8 uses
  %i.g = phi i32 [ %i.ad, %bb.q ], [ 0, %bb.d ]   ; 7 uses
  %i.h = phi i32 [ %i.ae, %bb.q ], [ 0, %bb.d ]   ; 7 uses
  %i.i = phi i32 [ %i.af, %bb.q ], [ 0, %bb.d ]   ; 7 uses
  %i.j = phi i32 [ %i.ag, %bb.q ], [ 0, %bb.d ]   ; 7 uses
  %i.k = phi i32 [ %i.ah, %bb.q ], [ 0, %bb.d ]   ; 7 uses
  %.031.i = phi i64 [ %i.ai, %bb.q ], [ 0, %bb.d ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.031.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17    ; 3 uses
  switch i8 %i.m, label %bb.k [
    i8 13, label %bb.e
    i8 10, label %bb.i
    i8 127, label %bb.j
  ]

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = add nuw i64 %.031.i, 1                   ; 3 uses
  %i.o = icmp ult i64 %i.n, %3
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17
  %i.r = icmp eq i8 %i.q, 10
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = add i32 %i.h, 1                          ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.t = add i32 %i.i, 1                          ; 2 uses
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph.i
  %i.u = add i32 %i.j, 1                          ; 2 uses
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph.i
  %i.v = add i32 %i.k, 1                          ; 2 uses
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph.i
  %i.w = icmp ult i8 %i.m, 32
  br i1 %i.w, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  switch i8 %i.m, label %bb.o [
    i8 8, label %bb.m
    i8 9, label %bb.m
    i8 27, label %bb.m
    i8 12, label %bb.m
    i8 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.x = add i32 %i.g, 1                          ; 2 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.y = add i32 %i.f, 1                          ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.097.2 = phi i32 [ %.sroa.097.0, %bb.l ], [ %i.y, %bb.n ]
  %i.z = phi i32 [ %i.f, %bb.l ], [ %i.y, %bb.n ]
  %i.aa = add i32 %i.k, 1                         ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.ab = add i32 %i.g, 1                         ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.097.1 = phi i32 [ %.sroa.097.2, %bb.o ], [ %.sroa.097.0, %bb.m ], [ %.sroa.097.0, %bb.p ], [ %.sroa.097.0, %bb.g ], [ %.sroa.097.0, %bb.h ], [ %.sroa.097.0, %bb.i ], [ %.sroa.097.0, %bb.j ] ; 3 uses
  %.sroa.6.1 = phi i32 [ %.sroa.6.0, %bb.o ], [ %.sroa.6.0, %bb.m ], [ %.sroa.6.0, %bb.p ], [ %.sroa.6.0, %bb.g ], [ %i.t, %bb.h ], [ %.sroa.6.0, %bb.i ], [ %.sroa.6.0, %bb.j ] ; 3 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %bb.o ], [ %.sroa.9.0, %bb.m ], [ %.sroa.9.0, %bb.p ], [ %.sroa.9.0, %bb.g ], [ %.sroa.9.0, %bb.h ], [ %i.u, %bb.i ], [ %.sroa.9.0, %bb.j ] ; 3 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.0, %bb.o ], [ %.sroa.12.0, %bb.m ], [ %.sroa.12.0, %bb.p ], [ %i.s, %bb.g ], [ %.sroa.12.0, %bb.h ], [ %.sroa.12.0, %bb.i ], [ %.sroa.12.0, %bb.j ] ; 4 uses
  %.sroa.16.1 = phi i32 [ %.sroa.16.0, %bb.o ], [ %i.x, %bb.m ], [ %i.ab, %bb.p ], [ %.sroa.16.0, %bb.g ], [ %.sroa.16.0, %bb.h ], [ %.sroa.16.0, %bb.i ], [ %.sroa.16.0, %bb.j ] ; 4 uses
  %.sroa.20.1 = phi i32 [ %i.aa, %bb.o ], [ %.sroa.20.0, %bb.m ], [ %.sroa.20.0, %bb.p ], [ %.sroa.20.0, %bb.g ], [ %.sroa.20.0, %bb.h ], [ %.sroa.20.0, %bb.i ], [ %i.v, %bb.j ] ; 2 uses
  %i.ac = phi i32 [ %i.z, %bb.o ], [ %i.f, %bb.m ], [ %i.f, %bb.p ], [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %i.f, %bb.i ], [ %i.f, %bb.j ]
  %i.ad = phi i32 [ %i.g, %bb.o ], [ %i.x, %bb.m ], [ %i.ab, %bb.p ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %i.g, %bb.j ]
  %i.ae = phi i32 [ %i.h, %bb.o ], [ %i.h, %bb.m ], [ %i.h, %bb.p ], [ %i.s, %bb.g ], [ %i.h, %bb.h ], [ %i.h, %bb.i ], [ %i.h, %bb.j ]
  %i.af = phi i32 [ %i.i, %bb.o ], [ %i.i, %bb.m ], [ %i.i, %bb.p ], [ %i.i, %bb.g ], [ %i.t, %bb.h ], [ %i.i, %bb.i ], [ %i.i, %bb.j ]
  %i.ag = phi i32 [ %i.j, %bb.o ], [ %i.j, %bb.m ], [ %i.j, %bb.p ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.u, %bb.i ], [ %i.j, %bb.j ]
  %i.ah = phi i32 [ %i.aa, %bb.o ], [ %i.k, %bb.m ], [ %i.k, %bb.p ], [ %i.k, %bb.g ], [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %i.v, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.031.i, %bb.o ], [ %.031.i, %bb.m ], [ %.031.i, %bb.p ], [ %i.n, %bb.g ], [ %.031.i, %bb.h ], [ %.031.i, %bb.i ], [ %.031.i, %bb.j ]
  %i.ai = add nuw i64 %.2.i, 1                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %3
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.q
  %i.ak = add i32 %i.ah, -1
  %i.al = getelementptr i8, ptr %2, i64 %3
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17
  %i.ao = icmp eq i8 %i.an, 26
  %spec.select246 = select i1 %i.ao, i32 %i.ak, i32 %.sroa.20.1 ; 3 uses
  %i.ap = icmp ne i32 %.sroa.12.1, 0              ; 3 uses
  %i.aq = add i32 %5, -5
  %or.cond7 = icmp ult i32 %i.aq, 3
  br i1 %or.cond7, label %bb.r, label %bb.t

gather_stats.exit.thread:                         ; preds = %bb.d
  %i.ar = add i32 %5, -5
  %or.cond7111 = icmp ult i32 %i.ar, 3
  br i1 %or.cond7111, label %convert_is_binary.exit.thread173, label %.thread190

bb.r:                                             ; preds = %._crit_edge.i
  %.not.i = icmp ne i32 %.sroa.6.1, 0
  %.not4.i = icmp ne i32 %.sroa.097.1, 0
  %or.cond247.not252 = select i1 %.not.i, i1 true, i1 %.not4.i
  %i.as = lshr i32 %.sroa.16.1, 7
  %.not = icmp ult i32 %i.as, %spec.select246
  %or.cond249 = select i1 %or.cond247.not252, i1 true, i1 %.not
  br i1 %or.cond249, label %strbuf_setlen.exit, label %convert_is_binary.exit.thread173

convert_is_binary.exit.thread173:                 ; preds = %bb.r, %gather_stats.exit.thread
  %.sroa.9.2117143159187 = phi i32 [ %.sroa.9.1, %bb.r ], [ 0, %gather_stats.exit.thread ] ; 2 uses
  %.sroa.12.2119141160186 = phi i32 [ %.sroa.12.1, %bb.r ], [ 0, %gather_stats.exit.thread ] ; 2 uses
  %.sroa.16.2120138161185 = phi i32 [ %.sroa.16.1, %bb.r ], [ 0, %gather_stats.exit.thread ] ; 2 uses
  %.sroa.20.2122136162184 = phi i32 [ %spec.select246, %bb.r ], [ 0, %gather_stats.exit.thread ] ; 2 uses
  %i.at = phi i1 [ %i.ap, %bb.r ], [ false, %gather_stats.exit.thread ] ; 4 uses
  %i.au = and i32 %6, 4
  %.not73 = icmp eq i32 %i.au, 0
  br i1 %.not73, label %bb.s, label %bb.t

bb.s:                                             ; preds = %convert_is_binary.exit.thread173
  %i.av = tail call fastcc i32 @has_crlf_in_index(ptr noundef %0, ptr noundef %1)
  %.not74 = icmp eq i32 %i.av, 0
  %spec.select = select i1 %.not74, i1 %i.at, i1 false
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %convert_is_binary.exit.thread173, %._crit_edge.i
  %or.cond7124 = phi i1 [ true, %convert_is_binary.exit.thread173 ], [ false, %._crit_edge.i ], [ true, %bb.s ] ; 3 uses
  %i.aw = phi i1 [ %i.at, %convert_is_binary.exit.thread173 ], [ %i.ap, %._crit_edge.i ], [ %i.at, %bb.s ] ; 2 uses
  %.sroa.20.2123 = phi i32 [ %.sroa.20.2122136162184, %convert_is_binary.exit.thread173 ], [ %spec.select246, %._crit_edge.i ], [ %.sroa.20.2122136162184, %bb.s ] ; 2 uses
  %.sroa.16.2121 = phi i32 [ %.sroa.16.2120138161185, %convert_is_binary.exit.thread173 ], [ %.sroa.16.1, %._crit_edge.i ], [ %.sroa.16.2120138161185, %bb.s ] ; 2 uses
  %.sroa.12.2118 = phi i32 [ %.sroa.12.2119141160186, %convert_is_binary.exit.thread173 ], [ %.sroa.12.1, %._crit_edge.i ], [ %.sroa.12.2119141160186, %bb.s ] ; 2 uses
  %.sroa.9.2116 = phi i32 [ %.sroa.9.2117143159187, %convert_is_binary.exit.thread173 ], [ %.sroa.9.1, %._crit_edge.i ], [ %.sroa.9.2117143159187, %bb.s ] ; 4 uses
  %.sroa.6.2115 = phi i32 [ 0, %convert_is_binary.exit.thread173 ], [ %.sroa.6.1, %._crit_edge.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.097.3113 = phi i32 [ 0, %convert_is_binary.exit.thread173 ], [ %.sroa.097.1, %._crit_edge.i ], [ 0, %bb.s ] ; 2 uses
  %.0.shrunk = phi i1 [ %i.at, %convert_is_binary.exit.thread173 ], [ %i.ap, %._crit_edge.i ], [ %spec.select, %bb.s ] ; 2 uses
  %i.ax = and i32 %6, 2                           ; 3 uses
  %.not75 = icmp ne i32 %i.ax, 0
  %i.ay = trunc i32 %6 to i1
  %or.cond9 = and i1 %i.c, %i.ay
  %or.cond80 = or i1 %.not75, %or.cond9
  br i1 %or.cond80, label %bb.u, label %check_global_conv_flags_eol.exit

.thread190:                                       ; preds = %gather_stats.exit.thread
  %i.az = and i32 %6, 2                           ; 2 uses
  %.not75199.not = icmp eq i32 %i.az, 0
  br i1 %.not75199.not, label %strbuf_setlen.exit, label %.thread212

bb.u:                                             ; preds = %bb.t
  br i1 %.0.shrunk, label %bb.v, label %.thread212

bb.v:                                             ; preds = %bb.u
  %i.ba = add i32 %.sroa.9.2116, %.sroa.12.2118
  br label %.thread212

.thread212:                                       ; preds = %.thread190, %bb.v, %bb.u
  %or.cond7124203227 = phi i1 [ %or.cond7124, %bb.v ], [ %or.cond7124, %bb.u ], [ false, %.thread190 ] ; 5 uses
  %i.bb = phi i1 [ %i.aw, %bb.v ], [ %i.aw, %bb.u ], [ false, %.thread190 ]
  %.sroa.20.2123204226 = phi i32 [ %.sroa.20.2123, %bb.v ], [ %.sroa.20.2123, %bb.u ], [ 0, %.thread190 ]
  %.sroa.16.2121205225 = phi i32 [ %.sroa.16.2121, %bb.v ], [ %.sroa.16.2121, %bb.u ], [ 0, %.thread190 ]
  %.sroa.9.2116207224 = phi i32 [ %.sroa.9.2116, %bb.v ], [ %.sroa.9.2116, %bb.u ], [ 0, %.thread190 ]
  %.sroa.6.2115208223 = phi i32 [ %.sroa.6.2115, %bb.v ], [ %.sroa.6.2115, %bb.u ], [ 0, %.thread190 ]
  %.sroa.097.3113209222 = phi i32 [ %.sroa.097.3113, %bb.v ], [ %.sroa.097.3113, %bb.u ], [ 0, %.thread190 ]
  %.0.shrunk210221 = phi i1 [ true, %bb.v ], [ false, %bb.u ], [ false, %.thread190 ] ; 5 uses
  %i.bc = phi i32 [ %i.ax, %bb.v ], [ %i.ax, %bb.u ], [ %i.az, %.thread190 ] ; 2 uses
  %.sroa.11.0 = phi i32 [ 0, %bb.v ], [ %.sroa.12.2118, %bb.u ], [ 0, %.thread190 ] ; 10 uses
  %.sroa.5.0 = phi i32 [ %i.ba, %bb.v ], [ %.sroa.9.2116, %bb.u ], [ 0, %.thread190 ] ; 8 uses
  switch i32 %5, label %bb.x [
    i32 1, label %will_convert_lf_to_crlf.exit.thread
    i32 4, label %output_eol.exit.thread.i
    i32 3, label %will_convert_lf_to_crlf.exit.thread
    i32 0, label %output_eol.exit.thread.i
    i32 7, label %output_eol.exit.thread.i
    i32 6, label %will_convert_lf_to_crlf.exit.thread
    i32 2, label %bb.w
    i32 5, label %bb.w
  ]

bb.w:                                             ; preds = %.thread212, %.thread212
  %i.bd = load i32, ptr @auto_crlf, align 4, !tbaa !24
  switch i32 %i.bd, label %text_eol_is_crlf.exit.i.i [
    i32 1, label %output_eol.exit.thread.i
    i32 -1, label %will_convert_lf_to_crlf.exit.thread
  ]

text_eol_is_crlf.exit.i.i:                        ; preds = %bb.w
  %i.be = load i32, ptr @core_eol, align 4, !tbaa !24
  %.fr.i.i = freeze i32 %i.be
  %.not.i.i = icmp eq i32 %.fr.i.i, 1
  br i1 %.not.i.i, label %output_eol.exit.thread.i, label %will_convert_lf_to_crlf.exit.thread

bb.x:                                             ; preds = %.thread212
  %i.bf = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not4.i.i.i, label %output_eol.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #22
  br label %output_eol.exit.i

output_eol.exit.i:                                ; preds = %bb.y, %bb.x
  %.0.i3.i.i = phi ptr [ %i.bg, %bb.y ], [ @.str.85, %bb.x ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i3.i.i, i32 noundef %5) #22
  %i.bh = load i32, ptr @core_eol, align 4, !tbaa !24
  %.not.i86 = icmp eq i32 %i.bh, 1
  br i1 %.not.i86, label %output_eol.exit.thread.i, label %will_convert_lf_to_crlf.exit.thread

output_eol.exit.thread.i:                         ; preds = %output_eol.exit.i, %text_eol_is_crlf.exit.i.i, %bb.w, %.thread212, %.thread212, %.thread212
  %.not11.i = icmp eq i32 %.sroa.5.0, 0
  br i1 %.not11.i, label %will_convert_lf_to_crlf.exit.thread, label %bb.z

bb.z:                                             ; preds = %output_eol.exit.thread.i
  br i1 %or.cond7124203227, label %bb.aa, label %will_convert_lf_to_crlf.exit

bb.aa:                                            ; preds = %bb.z
  %.not12.i = icmp eq i32 %.sroa.6.2115208223, 0
  br i1 %.not12.i, label %bb.ab, label %will_convert_lf_to_crlf.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %.not13.i = icmp eq i32 %.sroa.11.0, 0
  br i1 %.not13.i, label %bb.ac, label %check_global_conv_flags_eol.exit

bb.ac:                                            ; preds = %bb.ab
  %.not4.i.i = icmp ne i32 %.sroa.097.3113209222, 0
  %i.bi = lshr i32 %.sroa.16.2121205225, 7
  %.not25.i = icmp ult i32 %i.bi, %.sroa.20.2123204226
  %or.cond248 = select i1 %.not4.i.i, i1 true, i1 %.not25.i
  br i1 %or.cond248, label %will_convert_lf_to_crlf.exit.thread, label %will_convert_lf_to_crlf.exit

will_convert_lf_to_crlf.exit:                     ; preds = %bb.ac, %bb.z
  %i.bj = add i32 %.sroa.5.0, %.sroa.11.0
  br label %will_convert_lf_to_crlf.exit.thread

will_convert_lf_to_crlf.exit.thread:              ; preds = %bb.ac, %bb.w, %text_eol_is_crlf.exit.i.i, %.thread212, %.thread212, %.thread212, %bb.aa, %output_eol.exit.thread.i, %output_eol.exit.i, %will_convert_lf_to_crlf.exit
  %.sroa.11.1 = phi i32 [ %i.bj, %will_convert_lf_to_crlf.exit ], [ %.sroa.11.0, %output_eol.exit.i ], [ %.sroa.11.0, %output_eol.exit.thread.i ], [ %.sroa.11.0, %bb.aa ], [ 0, %bb.ac ], [ %.sroa.11.0, %bb.w ], [ %.sroa.11.0, %.thread212 ], [ %.sroa.11.0, %.thread212 ], [ %.sroa.11.0, %.thread212 ], [ %.sroa.11.0, %text_eol_is_crlf.exit.i.i ]
  %.sroa.5.1 = phi i32 [ 0, %will_convert_lf_to_crlf.exit ], [ %.sroa.5.0, %output_eol.exit.i ], [ 0, %output_eol.exit.thread.i ], [ 1, %bb.aa ], [ 1, %bb.ac ], [ %.sroa.5.0, %bb.w ], [ %.sroa.5.0, %.thread212 ], [ %.sroa.5.0, %.thread212 ], [ %.sroa.5.0, %.thread212 ], [ %.sroa.5.0, %text_eol_is_crlf.exit.i.i ]
  %.not11.i88 = icmp eq i32 %.sroa.11.1, 0
  %or.cond.i = select i1 %i.bb, i1 %.not11.i88, i1 false
  br i1 %or.cond.i, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %will_convert_lf_to_crlf.exit.thread
  %i.bk = and i32 %6, 1
  %.not12.i89 = icmp eq i32 %i.bk, 0
  br i1 %.not12.i89, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = tail call fastcc ptr @_(ptr noundef nonnull @.str.69)
  tail call void (ptr, ...) @die(ptr noundef %i.bl, ptr noundef %1) #23
  unreachable

bb.af:                                            ; preds = %bb.ad
  %.not13.i90 = icmp eq i32 %i.bc, 0
  br i1 %.not13.i90, label %check_global_conv_flags_eol.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bm = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i91 = icmp eq i32 %i.bm, 0
  br i1 %.not4.i.i91, label %.sink.split.i, label %.sink.split.sink.split.i

bb.ah:                                            ; preds = %will_convert_lf_to_crlf.exit.thread
  %.not14.i = icmp ne i32 %.sroa.9.2116207224, 0
  %.not15.i = icmp eq i32 %.sroa.5.1, 0
  %or.cond5.i = select i1 %.not14.i, i1 %.not15.i, i1 false
  br i1 %or.cond5.i, label %bb.ai, label %check_global_conv_flags_eol.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bn = and i32 %6, 1
  %.not16.i = icmp eq i32 %i.bn, 0
  br i1 %.not16.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bo = tail call fastcc ptr @_(ptr noundef nonnull @.str.71)
  tail call void (ptr, ...) @die(ptr noundef %i.bo, ptr noundef %1) #23
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %.not17.i = icmp eq i32 %i.bc, 0
  br i1 %.not17.i, label %check_global_conv_flags_eol.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bp = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i18.i = icmp eq i32 %i.bp, 0
  br i1 %.not4.i18.i, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.al, %bb.ag
  %.str.72.sink.i = phi ptr [ @.str.70, %bb.ag ], [ @.str.72, %bb.al ]
  %i.bq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.72.sink.i, i32 noundef 5) #22
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.al, %bb.ag
  %.0.i19.sink.i = phi ptr [ @.str.70, %bb.ag ], [ @.str.72, %bb.al ], [ %i.bq, %.sink.split.sink.split.i ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i19.sink.i, ptr noundef %1) #22
  br label %check_global_conv_flags_eol.exit

check_global_conv_flags_eol.exit:                 ; preds = %bb.ab, %.sink.split.i, %bb.ak, %bb.ah, %bb.af, %bb.t
  %.0.shrunk211 = phi i1 [ %.0.shrunk210221, %.sink.split.i ], [ %.0.shrunk, %bb.t ], [ %.0.shrunk210221, %bb.af ], [ %.0.shrunk210221, %bb.ah ], [ %.0.shrunk210221, %bb.ak ], [ %.0.shrunk210221, %bb.ab ] ; 2 uses
  %or.cond7124202 = phi i1 [ %or.cond7124203227, %.sink.split.i ], [ %or.cond7124, %bb.t ], [ %or.cond7124203227, %bb.af ], [ %or.cond7124203227, %bb.ah ], [ %or.cond7124203227, %bb.ak ], [ true, %bb.ab ]
  %brmerge.not = and i1 %i.d, %.0.shrunk211
  %.mux = zext i1 %.0.shrunk211 to i32
  br i1 %brmerge.not, label %strbuf_avail.exit, label %strbuf_setlen.exit

strbuf_avail.exit:                                ; preds = %check_global_conv_flags_eol.exit
  %i.br = load i64, ptr %4, align 8, !tbaa !71    ; 2 uses
  %.not.i92 = icmp eq i64 %i.br, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23 ; 3 uses
  %i.bs = xor i64 %.pre, -1
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = select i1 %.not.i92, i64 0, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = add i64 %.pre, %i.bu
  %i.bx = icmp ult i64 %i.bw, %3
  br i1 %i.bx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %strbuf_avail.exit
  %i.by = sub i64 %3, %.pre
  tail call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef %i.by) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %strbuf_avail.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !22 ; 6 uses
  br i1 %or.cond7124202, label %.preheader.preheader, label %.preheader250.preheader

.preheader250.preheader:                          ; preds = %bb.an
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader250.prol.loopexit, label %.preheader250.prol

.preheader250.prol:                               ; preds = %.preheader250.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.cc = load i8, ptr %2, align 1, !tbaa !17     ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 13
  %i.ce = icmp ugt i64 %3, 1
  %or.cond15.prol = and i1 %i.ce, %i.cd
  br i1 %or.cond15.prol, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.preheader250.prol
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cg = icmp eq i8 %i.cf, 10
  br i1 %i.cg, label %.preheader250.prol.loopexit.unr-lcssa, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.preheader250.prol
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !17
  br label %.preheader250.prol.loopexit.unr-lcssa

.preheader250.prol.loopexit.unr-lcssa:            ; preds = %bb.ap, %bb.ao
  %.3.prol = phi ptr [ %i.ca, %bb.ao ], [ %i.ch, %bb.ap ] ; 2 uses
  %i.ci = add nsw i64 %3, -1
  br label %.preheader250.prol.loopexit

.preheader250.prol.loopexit:                      ; preds = %.preheader250.prol.loopexit.unr-lcssa, %.preheader250.preheader
  %.3.lcssa.unr = phi ptr [ poison, %.preheader250.preheader ], [ %.3.prol, %.preheader250.prol.loopexit.unr-lcssa ]
  %.167.unr = phi i64 [ %3, %.preheader250.preheader ], [ %i.ci, %.preheader250.prol.loopexit.unr-lcssa ]
  %.165.unr = phi ptr [ %2, %.preheader250.preheader ], [ %i.cb, %.preheader250.prol.loopexit.unr-lcssa ]
  %.2.unr = phi ptr [ %i.ca, %.preheader250.preheader ], [ %.3.prol, %.preheader250.prol.loopexit.unr-lcssa ]
  %i.cj = icmp eq i64 %3, 1
  br i1 %i.cj, label %.loopexit, label %.preheader250

.preheader.preheader:                             ; preds = %bb.an
  %i.ck = add i64 %3, -1
  %xtraiter270 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.ar
  %.066.prol = phi i64 [ %i.co, %bb.ar ], [ %3, %.preheader.preheader ]
  %.064.prol = phi ptr [ %i.cl, %bb.ar ], [ %2, %.preheader.preheader ] ; 2 uses
  %.062.prol = phi ptr [ %.1.prol, %bb.ar ], [ %i.ca, %.preheader.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.ar ], [ 0, %.preheader.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.064.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.064.prol, align 1, !tbaa !17 ; 2 uses
  %.not78.prol = icmp eq i8 %i.cm, 13
  br i1 %.not78.prol, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.preheader.prol
  %i.cn = getelementptr inbounds nuw i8, ptr %.062.prol, i64 1
  store i8 %i.cm, ptr %.062.prol, align 1, !tbaa !17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader.prol
  %.1.prol = phi ptr [ %i.cn, %bb.aq ], [ %.062.prol, %.preheader.prol ] ; 3 uses
  %i.co = add i64 %.066.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter270
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !108

.preheader.prol.loopexit:                         ; preds = %bb.ar, %.preheader.preheader
end_hunk_1
begin_hunk_2_@convert_to_working_tree_ca_internal:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.124.i.i, i64 1 ; 3 uses
  %i.r = load i8, ptr %.124.i.i, align 1, !tbaa !17 ; 2 uses
  %i.s = add i64 %.121.i.i, -1                    ; 4 uses
  %i.t = icmp eq i8 %i.r, 36
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i.i
  %i.u = add nsw i32 %spec.select.i.i, 1
  br label %.outer.backedge.i.i

bb.h:                                             ; preds = %.preheader.i.i
  %i.v = icmp ne i8 %i.r, 10
  %i.w = icmp ne i64 %i.s, 0
  %or.cond.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.outer.backedge.i.i, !llvm.loop !2

count_ident.exit.i:                               ; preds = %bb.f, %.outer.backedge.i.i, %bb.c, %.backedge.i.i
  %.0.ph.lcssa.i.i = phi i32 [ %.0.ph48.i.i, %bb.c ], [ %.0.ph48.i.i, %.backedge.i.i ], [ %spec.select.i.i, %bb.f ], [ %.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.not63.i = icmp eq i32 %.0.ph.lcssa.i.i, 0
  br i1 %.not63.i, label %ident_to_worktree.exit.thread, label %bb.i

bb.i:                                             ; preds = %count_ident.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = icmp eq ptr %2, %i.y
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call ptr @strbuf_detach(ptr noundef nonnull %4, ptr noundef null) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ %i.aa, %bb.j ], [ null, %bb.i ]
  %i.ab = load ptr, ptr @the_repository, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 448
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !131
  call void @hash_object_file(ptr noundef %i.ad, ptr noundef %2, i64 noundef %3, i32 noundef 3, ptr noundef nonnull %8) #22
  %i.ae = sext i32 %.0.ph.lcssa.i.i to i64
  %i.af = load ptr, ptr @the_repository, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 448
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !131
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !134
  %i.ak = add i64 %i.aj, 3
  %i.al = mul i64 %i.ak, %i.ae
  %i.am = add i64 %i.al, %3
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef %i.am) #22
  %i.an = call ptr @memchr(ptr noundef %2, i32 noundef 36, i64 noundef %3) #24 ; 2 uses
  %.not6481.i = icmp eq ptr %i.an, null
  br i1 %.not6481.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.backedge.i
  %i.ao = phi ptr [ %i.ay, %.backedge.i ], [ %i.an, %bb.k ] ; 5 uses
  %.05383.i = phi ptr [ %.053.be.i, %.backedge.i ], [ %2, %bb.k ] ; 2 uses
  %.05482.i = phi i64 [ %.054.be.i, %.backedge.i ], [ %3, %bb.k ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 8 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.ar = ptrtoint ptr %.05383.i to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef %.05383.i, i64 noundef %i.as) #22
  %i.at = sub i64 %.05482.i, %i.as                ; 10 uses
  %i.au = icmp ult i64 %i.at, 3
  br i1 %i.au, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.av = load i16, ptr %i.ap, align 1
  %i.aw = icmp ne i16 25673, %i.av
  %i.ax = zext i1 %i.aw to i32
  %.not65.i = icmp eq i32 %i.ax, 0
  br i1 %.not65.i, label %bb.m, label %.backedge.i

.backedge.i:                                      ; preds = %bb.s, %bb.q, %bb.p, %bb.m, %bb.l, %.lr.ph.i
  %.054.be.i = phi i64 [ %i.at, %bb.m ], [ %.155.i, %bb.s ], [ %i.at, %bb.p ], [ %i.at, %bb.q ], [ %i.at, %bb.l ], [ %i.at, %.lr.ph.i ] ; 3 uses
  %.053.be.i = phi ptr [ %i.ap, %bb.m ], [ %.1.i, %bb.s ], [ %i.ap, %bb.p ], [ %i.ap, %bb.q ], [ %i.ap, %bb.l ], [ %i.ap, %.lr.ph.i ] ; 3 uses
  %i.ay = call ptr @memchr(ptr noundef nonnull %.053.be.i, i32 noundef 36, i64 noundef %.054.be.i) #24 ; 2 uses
  %.not64.i = icmp eq ptr %i.ay, null
  br i1 %.not64.i, label %.loopexit, label %.lr.ph.i

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17
  switch i8 %i.ba, label %.backedge.i [
    i8 36, label %bb.n
    i8 58, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.bc = add i64 %i.at, -3
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.be = add i64 %i.at, -3
  %i.bf = call ptr @memchr(ptr noundef nonnull %i.bd, i32 noundef 36, i64 noundef %i.be) #24 ; 4 uses
  %.not66.i = icmp eq ptr %i.bf, null
  br i1 %.not66.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.aq                    ; 2 uses
  %i.bi = add nsw i64 %i.bh, -3
  %i.bj = call ptr @memchr(ptr noundef nonnull %i.bd, i32 noundef 10, i64 noundef %i.bi) #24
  %.not67.i = icmp eq ptr %i.bj, null
  br i1 %.not67.i, label %bb.q, label %.backedge.i

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.bl = add nsw i64 %i.bh, -4
  %i.bm = call ptr @memchr(ptr noundef nonnull %i.bk, i32 noundef 32, i64 noundef %i.bl) #24 ; 2 uses
  %.not68.i = icmp ne ptr %i.bm, null
  %i.bn = getelementptr inbounds i8, ptr %i.bf, i64 -1
  %i.bo = icmp ult ptr %i.bm, %i.bn
  %or.cond.i = select i1 %.not68.i, i1 %i.bo, i1 false
  br i1 %or.cond.i, label %.backedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %.neg.i = add i64 %i.at, %i.aq
  %i.br = sub i64 %.neg.i, %i.bq
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.155.i = phi i64 [ %i.bc, %bb.n ], [ %i.br, %bb.r ]
  %.1.i = phi ptr [ %i.bb, %bb.n ], [ %i.bp, %bb.r ]
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull @.str.80, i64 noundef 4) #22
  call void @strbuf_add_oid_hex(ptr noundef nonnull %4, ptr noundef nonnull %8) #22
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull @.str.81, i64 noundef 2) #22
  br label %.backedge.i

ident_to_worktree.exit.thread:                    ; preds = %bb.a, %count_ident.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.t

.loopexit:                                        ; preds = %bb.o, %.backedge.i, %bb.k
  %.256.i = phi i64 [ %3, %bb.k ], [ %.054.be.i, %.backedge.i ], [ %i.at, %bb.o ]
  %.2.i = phi ptr [ %2, %bb.k ], [ %.053.be.i, %.backedge.i ], [ %i.ap, %bb.o ]
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef %.2.i, i64 noundef %.256.i) #22
  call void @free(ptr noundef %.0.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bs = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %ident_to_worktree.exit.thread, %.loopexit
  %.not54 = phi i1 [ false, %.loopexit ], [ true, %ident_to_worktree.exit.thread ]
  %.052.i71 = phi i32 [ 1, %.loopexit ], [ 0, %ident_to_worktree.exit.thread ] ; 2 uses
  %.045 = phi i64 [ %i.bu, %.loopexit ], [ %3, %ident_to_worktree.exit.thread ] ; 11 uses
  %.044 = phi ptr [ %i.bs, %.loopexit ], [ %2, %ident_to_worktree.exit.thread ] ; 10 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !50    ; 3 uses
  %.not52 = icmp eq ptr %i.bv, null
  br i1 %.not52, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54
  %.not53 = icmp eq ptr %i.bx, null
  br i1 %.not53, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !56
  %i.ca = icmp eq ptr %i.bz, null
  %i.cb = icmp ne i32 %5, 0
  %or.cond = and i1 %i.cb, %i.ca
  br i1 %or.cond, label %bb.bb, label %bb.x

bb.w:                                             ; preds = %bb.t
  %.old1.not = icmp eq i32 %5, 0
  br i1 %.old1.not, label %bb.x, label %bb.bb

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !45 ; 5 uses
  %.not.i59 = icmp eq i64 %.045, 0
  br i1 %.not.i59, label %crlf_to_worktree.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  switch i32 %i.cd, label %bb.aa [
    i32 1, label %crlf_to_worktree.exit
    i32 4, label %.lr.ph.i.i60.preheader
    i32 3, label %crlf_to_worktree.exit
    i32 0, label %.lr.ph.i.i60.preheader
    i32 7, label %.lr.ph.i.i60.preheader
    i32 6, label %crlf_to_worktree.exit
    i32 2, label %bb.z
    i32 5, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.ce = load i32, ptr @auto_crlf, align 4, !tbaa !24
  switch i32 %i.ce, label %text_eol_is_crlf.exit.i.i [
    i32 1, label %.lr.ph.i.i60.preheader
    i32 -1, label %crlf_to_worktree.exit
  ]

text_eol_is_crlf.exit.i.i:                        ; preds = %bb.z
  %i.cf = load i32, ptr @core_eol, align 4, !tbaa !24
  %.fr.i.i = freeze i32 %i.cf
  %.not.i.i65 = icmp eq i32 %.fr.i.i, 1
  br i1 %.not.i.i65, label %.lr.ph.i.i60.preheader, label %crlf_to_worktree.exit

bb.aa:                                            ; preds = %bb.y
  %i.cg = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not4.i.i.i, label %output_eol.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #22
  br label %output_eol.exit.i

output_eol.exit.i:                                ; preds = %bb.ab, %bb.aa
  %.0.i3.i.i = phi ptr [ %i.ch, %bb.ab ], [ @.str.85, %bb.aa ]
  call void (ptr, ...) @warning(ptr noundef %.0.i3.i.i, i32 noundef %i.cd) #22
  %i.ci = load i32, ptr @core_eol, align 4, !tbaa !24
  %.not41.i = icmp eq i32 %i.ci, 1
  br i1 %.not41.i, label %.lr.ph.i.i60.preheader, label %crlf_to_worktree.exit

.lr.ph.i.i60.preheader:                           ; preds = %output_eol.exit.i, %text_eol_is_crlf.exit.i.i, %bb.z, %bb.y, %bb.y, %bb.y
  br label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %.lr.ph.i.i60.preheader, %bb.ao
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 7 uses
  %.sroa.5.0.i = phi i32 [ %.sroa.5.1.i, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 6 uses
  %.sroa.7.0.i = phi i32 [ %.sroa.7.1.i, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 6 uses
  %.sroa.10.0.i = phi i32 [ %.sroa.10.1.i, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 6 uses
  %.sroa.12.0.i = phi i32 [ %.sroa.12.1.i, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 5 uses
  %.sroa.15.0.i = phi i32 [ %.sroa.15.1.i, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 5 uses
  %i.cj = phi i32 [ %i.dg, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 8 uses
  %i.ck = phi i32 [ %i.dh, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 7 uses
  %i.cl = phi i32 [ %i.di, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 7 uses
  %i.cm = phi i32 [ %i.dj, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 7 uses
  %i.cn = phi i32 [ %i.dk, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 7 uses
  %i.co = phi i32 [ %i.dl, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 7 uses
  %.031.i.i = phi i64 [ %i.dm, %bb.ao ], [ 0, %.lr.ph.i.i60.preheader ] ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.044, i64 %.031.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.cq, label %bb.ai [
    i8 13, label %bb.ac
    i8 10, label %bb.ag
    i8 127, label %bb.ah
  ]

bb.ac:                                            ; preds = %.lr.ph.i.i60
  %i.cr = add nuw i64 %.031.i.i, 1                ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %.045
  br i1 %i.cs, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %.044, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = icmp eq i8 %i.cu, 10
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = add i32 %i.cl, 1                        ; 2 uses
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.cx = add i32 %i.cm, 1                        ; 2 uses
  br label %bb.ao

bb.ag:                                            ; preds = %.lr.ph.i.i60
  %i.cy = add i32 %i.cn, 1                        ; 2 uses
  br label %bb.ao

bb.ah:                                            ; preds = %.lr.ph.i.i60
  %i.cz = add i32 %i.co, 1                        ; 2 uses
  br label %bb.ao

bb.ai:                                            ; preds = %.lr.ph.i.i60
  %i.da = icmp ult i8 %i.cq, 32
  br i1 %i.da, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  switch i8 %i.cq, label %bb.am [
    i8 8, label %bb.ak
    i8 9, label %bb.ak
    i8 27, label %bb.ak
    i8 12, label %bb.ak
    i8 0, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %i.db = add i32 %i.ck, 1                        ; 2 uses
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.dc = add i32 %i.cj, 1                        ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.sroa.0.2.i = phi i32 [ %.sroa.0.0.i, %bb.aj ], [ %i.dc, %bb.al ]
  %i.dd = phi i32 [ %i.cj, %bb.aj ], [ %i.dc, %bb.al ]
  %i.de = add i32 %i.co, 1                        ; 2 uses
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.df = add i32 %i.ck, 1                        ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sroa.0.1.i = phi i32 [ %.sroa.0.2.i, %bb.am ], [ %.sroa.0.0.i, %bb.ak ], [ %.sroa.0.0.i, %bb.an ], [ %.sroa.0.0.i, %bb.ae ], [ %.sroa.0.0.i, %bb.af ], [ %.sroa.0.0.i, %bb.ag ], [ %.sroa.0.0.i, %bb.ah ] ; 2 uses
  %.sroa.5.1.i = phi i32 [ %.sroa.5.0.i, %bb.am ], [ %.sroa.5.0.i, %bb.ak ], [ %.sroa.5.0.i, %bb.an ], [ %.sroa.5.0.i, %bb.ae ], [ %i.cx, %bb.af ], [ %.sroa.5.0.i, %bb.ag ], [ %.sroa.5.0.i, %bb.ah ] ; 2 uses
  %.sroa.7.1.i = phi i32 [ %.sroa.7.0.i, %bb.am ], [ %.sroa.7.0.i, %bb.ak ], [ %.sroa.7.0.i, %bb.an ], [ %.sroa.7.0.i, %bb.ae ], [ %.sroa.7.0.i, %bb.af ], [ %i.cy, %bb.ag ], [ %.sroa.7.0.i, %bb.ah ] ; 5 uses
  %.sroa.10.1.i = phi i32 [ %.sroa.10.0.i, %bb.am ], [ %.sroa.10.0.i, %bb.ak ], [ %.sroa.10.0.i, %bb.an ], [ %i.cw, %bb.ae ], [ %.sroa.10.0.i, %bb.af ], [ %.sroa.10.0.i, %bb.ag ], [ %.sroa.10.0.i, %bb.ah ] ; 2 uses
  %.sroa.12.1.i = phi i32 [ %.sroa.12.0.i, %bb.am ], [ %i.db, %bb.ak ], [ %i.df, %bb.an ], [ %.sroa.12.0.i, %bb.ae ], [ %.sroa.12.0.i, %bb.af ], [ %.sroa.12.0.i, %bb.ag ], [ %.sroa.12.0.i, %bb.ah ] ; 2 uses
  %.sroa.15.1.i = phi i32 [ %i.de, %bb.am ], [ %.sroa.15.0.i, %bb.ak ], [ %.sroa.15.0.i, %bb.an ], [ %.sroa.15.0.i, %bb.ae ], [ %.sroa.15.0.i, %bb.af ], [ %.sroa.15.0.i, %bb.ag ], [ %i.cz, %bb.ah ] ; 2 uses
  %i.dg = phi i32 [ %i.dd, %bb.am ], [ %i.cj, %bb.ak ], [ %i.cj, %bb.an ], [ %i.cj, %bb.ae ], [ %i.cj, %bb.af ], [ %i.cj, %bb.ag ], [ %i.cj, %bb.ah ]
  %i.dh = phi i32 [ %i.ck, %bb.am ], [ %i.db, %bb.ak ], [ %i.df, %bb.an ], [ %i.ck, %bb.ae ], [ %i.ck, %bb.af ], [ %i.ck, %bb.ag ], [ %i.ck, %bb.ah ]
  %i.di = phi i32 [ %i.cl, %bb.am ], [ %i.cl, %bb.ak ], [ %i.cl, %bb.an ], [ %i.cw, %bb.ae ], [ %i.cl, %bb.af ], [ %i.cl, %bb.ag ], [ %i.cl, %bb.ah ]
  %i.dj = phi i32 [ %i.cm, %bb.am ], [ %i.cm, %bb.ak ], [ %i.cm, %bb.an ], [ %i.cm, %bb.ae ], [ %i.cx, %bb.af ], [ %i.cm, %bb.ag ], [ %i.cm, %bb.ah ]
  %i.dk = phi i32 [ %i.cn, %bb.am ], [ %i.cn, %bb.ak ], [ %i.cn, %bb.an ], [ %i.cn, %bb.ae ], [ %i.cn, %bb.af ], [ %i.cy, %bb.ag ], [ %i.cn, %bb.ah ]
  %i.dl = phi i32 [ %i.de, %bb.am ], [ %i.co, %bb.ak ], [ %i.co, %bb.an ], [ %i.co, %bb.ae ], [ %i.co, %bb.af ], [ %i.co, %bb.ag ], [ %i.cz, %bb.ah ] ; 2 uses
  %.2.i.i = phi i64 [ %.031.i.i, %bb.am ], [ %.031.i.i, %bb.ak ], [ %.031.i.i, %bb.an ], [ %i.cr, %bb.ae ], [ %.031.i.i, %bb.af ], [ %.031.i.i, %bb.ag ], [ %.031.i.i, %bb.ah ]
  %i.dm = add nuw i64 %.2.i.i, 1                  ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %.045
  br i1 %i.dn, label %.lr.ph.i.i60, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.ao
  %i.do = add i32 %i.dl, -1
  %i.dp = getelementptr i8, ptr %.044, i64 %.045
  %i.dq = getelementptr i8, ptr %i.dp, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !17
  %i.ds = icmp eq i8 %i.dr, 26
  %spec.select.i = select i1 %i.ds, i32 %i.do, i32 %.sroa.15.1.i
  switch i32 %i.cd, label %bb.aq [
    i32 1, label %crlf_to_worktree.exit
    i32 4, label %output_eol.exit.thread.i.i
    i32 3, label %crlf_to_worktree.exit
    i32 0, label %output_eol.exit.thread.i.i
    i32 7, label %output_eol.exit.thread.i.i
    i32 6, label %crlf_to_worktree.exit
    i32 2, label %bb.ap
    i32 5, label %bb.ap
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i, %._crit_edge.i.i
  %i.dt = load i32, ptr @auto_crlf, align 4, !tbaa !24
  switch i32 %i.dt, label %text_eol_is_crlf.exit.i.i.i [
    i32 1, label %output_eol.exit.thread.i.i
    i32 -1, label %crlf_to_worktree.exit
  ]

text_eol_is_crlf.exit.i.i.i:                      ; preds = %bb.ap
  %i.du = load i32, ptr @core_eol, align 4, !tbaa !24
  %.fr.i.i.i = freeze i32 %i.du
  %.not.i.i.i = icmp ne i32 %.fr.i.i.i, 1
  %.not11.i.old.i = icmp eq i32 %.sroa.7.1.i, 0
  %or.cond62.i = select i1 %.not.i.i.i, i1 true, i1 %.not11.i.old.i
  br i1 %or.cond62.i, label %crlf_to_worktree.exit, label %bb.as

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.dv = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not4.i.i.i.i, label %output_eol.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #22
  br label %output_eol.exit.i.i

output_eol.exit.i.i:                              ; preds = %bb.ar, %bb.aq
  %.0.i3.i.i.i = phi ptr [ %i.dw, %bb.ar ], [ @.str.85, %bb.aq ]
  call void (ptr, ...) @warning(ptr noundef %.0.i3.i.i.i, i32 noundef %i.cd) #22
  %i.dx = load i32, ptr @core_eol, align 4, !tbaa !24
  %.not.i46.i = icmp ne i32 %i.dx, 1
  %.not11.i.i = icmp eq i32 %.sroa.7.1.i, 0
  %or.cond.i64 = select i1 %.not.i46.i, i1 true, i1 %.not11.i.i
  br i1 %or.cond.i64, label %crlf_to_worktree.exit, label %bb.as

output_eol.exit.thread.i.i:                       ; preds = %bb.ap, %._crit_edge.i.i, %._crit_edge.i.i, %._crit_edge.i.i
  %.not11.i.old.old.i = icmp eq i32 %.sroa.7.1.i, 0
  br i1 %.not11.i.old.old.i, label %crlf_to_worktree.exit, label %bb.as

bb.as:                                            ; preds = %output_eol.exit.thread.i.i, %output_eol.exit.i.i, %text_eol_is_crlf.exit.i.i.i
  %i.dy = add i32 %i.cd, -5
  %or.cond3.i.i = icmp ult i32 %i.dy, 3
  br i1 %or.cond3.i.i, label %bb.at, label %will_convert_lf_to_crlf.exit.i

bb.at:                                            ; preds = %bb.as
  %.not12.i.i = icmp ne i32 %.sroa.5.1.i, 0
  %.not13.i.i = icmp ne i32 %.sroa.10.1.i, 0
  %or.cond63.not67.i = select i1 %.not12.i.i, i1 true, i1 %.not13.i.i
  %.not4.i.i45.i = icmp ne i32 %.sroa.0.1.i, 0
  %or.cond64.not66.i = select i1 %or.cond63.not67.i, i1 true, i1 %.not4.i.i45.i
  %i.dz = lshr i32 %.sroa.12.1.i, 7
  %.not25.i.i = icmp ult i32 %i.dz, %spec.select.i
  %or.cond65.i = select i1 %or.cond64.not66.i, i1 true, i1 %.not25.i.i
  br i1 %or.cond65.i, label %crlf_to_worktree.exit, label %will_convert_lf_to_crlf.exit.i

will_convert_lf_to_crlf.exit.i:                   ; preds = %bb.at, %bb.as
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !22
  %i.ec = icmp eq ptr %.044, %i.eb
  br i1 %i.ec, label %bb.au, label %bb.av

bb.au:                                            ; preds = %will_convert_lf_to_crlf.exit.i
  %i.ed = call ptr @strbuf_detach(ptr noundef nonnull %4, ptr noundef null) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %will_convert_lf_to_crlf.exit.i
  %.034.i = phi ptr [ %i.ed, %bb.au ], [ null, %will_convert_lf_to_crlf.exit.i ]
  %i.ee = zext i32 %.sroa.7.1.i to i64
  %i.ef = add i64 %.045, %i.ee
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef %i.ef) #22
  %i.eg = call ptr @memchr(ptr noundef nonnull %.044, i32 noundef 10, i64 noundef %.045) #24 ; 2 uses
  %.not4369.i = icmp eq ptr %i.eg, null
  br i1 %.not4369.i, label %crlf_to_worktree.exit.thread, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.av, %bb.az
  %i.eh = phi ptr [ %i.ew, %bb.az ], [ %i.eg, %bb.av ] ; 5 uses
  %.03671.i = phi ptr [ %i.et, %bb.az ], [ %.044, %bb.av ] ; 5 uses
  %.03770.i = phi i64 [ %i.ev, %bb.az ], [ %.045, %bb.av ]
  %i.ei = icmp ugt ptr %i.eh, %.03671.i
  br i1 %i.ei, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph.i61
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !17
  %i.el = icmp eq i8 %i.ek, 13
  br i1 %i.el, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %.03671.i to i64           ; 2 uses
  %i.ep = sub i64 %i.en, %i.eo
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %.03671.i, i64 noundef %i.ep) #22
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw, %.lr.ph.i61
  %i.eq = ptrtoint ptr %i.eh to i64
  %i.er = ptrtoint ptr %.03671.i to i64           ; 2 uses
  %i.es = sub i64 %i.eq, %i.er
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %.03671.i, i64 noundef %i.es) #22
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull @.str.82, i64 noundef 2) #22
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pre-phi.i = phi i64 [ %i.eo, %bb.ax ], [ %i.er, %bb.ay ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 4 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %.neg.i62 = sub i64 %.03770.i, %i.eu
  %i.ev = add i64 %.neg.i62, %.pre-phi.i          ; 3 uses
  %i.ew = call ptr @memchr(ptr noundef nonnull %i.et, i32 noundef 10, i64 noundef %i.ev) #24 ; 2 uses
  %.not43.i = icmp eq ptr %i.ew, null
  br i1 %.not43.i, label %crlf_to_worktree.exit.thread, label %.lr.ph.i61

crlf_to_worktree.exit.thread:                     ; preds = %bb.az, %bb.av
  %.037.lcssa.i = phi i64 [ %.045, %bb.av ], [ %i.ev, %bb.az ]
  %.036.lcssa.i = phi ptr [ %.044, %bb.av ], [ %i.et, %bb.az ]
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %.036.lcssa.i, i64 noundef %.037.lcssa.i) #22
  call void @free(ptr noundef %.034.i) #22
  br label %bb.ba

crlf_to_worktree.exit:                            ; preds = %bb.x, %bb.y, %bb.y, %bb.y, %bb.z, %text_eol_is_crlf.exit.i.i, %output_eol.exit.i, %._crit_edge.i.i, %._crit_edge.i.i, %._crit_edge.i.i, %bb.ap, %text_eol_is_crlf.exit.i.i.i, %output_eol.exit.i.i, %output_eol.exit.thread.i.i, %bb.at
  br i1 %.not54, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %crlf_to_worktree.exit.thread, %crlf_to_worktree.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !23
  br label %bb.bb

bb.bb:                                            ; preds = %crlf_to_worktree.exit, %bb.ba, %bb.v, %bb.w
  %.146 = phi i64 [ %i.fa, %bb.ba ], [ %.045, %crlf_to_worktree.exit ], [ %.045, %bb.v ], [ %.045, %bb.w ] ; 3 uses
  %.1 = phi ptr [ %i.ey, %bb.ba ], [ %.044, %crlf_to_worktree.exit ], [ %.044, %bb.v ], [ %.044, %bb.w ] ; 3 uses
  %.0 = phi i32 [ 1, %bb.ba ], [ 0, %crlf_to_worktree.exit ], [ %.052.i71, %bb.v ], [ %.052.i71, %bb.w ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !51 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.not.i66 = icmp eq ptr %i.fc, null
  br i1 %.not.i66, label %encode_to_worktree.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fd = icmp eq ptr %.1, null
  %i.fe = icmp ne i64 %.146, 0
  %or.cond.i67 = or i1 %i.fe, %i.fd
  br i1 %or.cond.i67, label %bb.bd, label %encode_to_worktree.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ff = call ptr @reencode_string_len(ptr noundef %.1, i64 noundef %.146, ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.a) #22 ; 2 uses
  %.not14.i = icmp eq ptr %i.ff, null
  br i1 %.not14.i, label %bb.be, label %encode_to_worktree.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.fg = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #22
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.bf, %bb.be
  %.0.i.i = phi ptr [ %i.fh, %bb.bf ], [ @.str.54, %bb.be ]
  %i.fi = call i32 (ptr, ...) @error(ptr noundef %.0.i.i, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.fc) #22 ; 0 uses
  br label %encode_to_worktree.exit

encode_to_worktree.exit.thread:                   ; preds = %bb.bd
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.fk = add i64 %i.fj, 1
  call void @strbuf_attach(ptr noundef %4, ptr noundef nonnull %i.ff, i64 noundef %i.fj, i64 noundef %i.fk) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bg

encode_to_worktree.exit:                          ; preds = %bb.bb, %bb.bc, %_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not55 = icmp eq i32 %.0, 0
  br i1 %.not55, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %encode_to_worktree.exit.thread, %encode_to_worktree.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !22
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !23
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %encode_to_worktree.exit
  %.0.i68118 = phi i32 [ 1, %bb.bg ], [ 0, %encode_to_worktree.exit ]
  %.247 = phi i64 [ %i.fo, %bb.bg ], [ %.146, %encode_to_worktree.exit ]
  %.2 = phi ptr [ %i.fm, %bb.bg ], [ %.1, %encode_to_worktree.exit ]
  %i.fp = load ptr, ptr %0, align 8, !tbaa !50
  %i.fq = call fastcc i32 @apply_filter(ptr noundef %1, ptr noundef %.2, i64 noundef %.247, i32 noundef -1, ptr noundef %4, ptr noundef %i.fp, i32 noundef 2, ptr noundef %6, ptr noundef %7) ; 2 uses
  %.not56 = icmp eq i32 %i.fq, 0
  br i1 %.not56, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.fr = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %.not57 = icmp eq ptr %i.fr, null
  br i1 %.not57, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !57
  %.not58 = icmp eq i32 %i.ft, 0
  br i1 %.not58, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fu = call fastcc ptr @_(ptr noundef nonnull @.str.79)
  %i.fv = load ptr, ptr %0, align 8, !tbaa !50
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !48
  call void (ptr, ...) @die(ptr noundef %i.fu, ptr noundef %1, ptr noundef %i.fw) #23
  unreachable

bb.bl:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.fx = or i32 %i.fq, %.0.i68118
  ret i32 %i.fx
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @convert_to_working_tree_ca(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @convert_to_working_tree_ca_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @renormalize_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.conv_attrs, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @convert_attrs(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1)
  %i.a = call fastcc i32 @convert_to_working_tree_ca_internal(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 1, ptr noundef null, ptr noundef null) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i64 [ %i.e, %bb.b ], [ %3, %bb.a ]
  %.0 = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ]
  %i.f = tail call i32 @convert_to_git(ptr noundef %0, ptr noundef %1, ptr noundef %.0, i64 noundef %.014, ptr noundef %4, i32 noundef 4)
  %i.g = or i32 %i.f, %i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @is_null_stream_filter(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, @null_filter_singleton
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_stream_filter_ca(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %bb.c, label %cascade_filter.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %bb.d, label %cascade_filter.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %.not11.i = icmp eq ptr %i.g, null
  br i1 %.not11.i, label %bb.e, label %cascade_filter.exit

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %bb.f, label %cascade_filter.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %i.l = add i32 %i.k, -5
  %switch.and.i = and i32 %i.l, -3
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %cascade_filter.exit, label %classify_conv_attrs.exit

classify_conv_attrs.exit:                         ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !46
  %.not9 = icmp eq i32 %i.n, 0
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %classify_conv_attrs.exit
  %i.o = tail call ptr @xmalloc(i64 noundef 112) #22 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = tail call ptr @oid_to_hex(ptr noundef %1) #22
  %i.r = tail call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.p, i64 noundef 69, ptr noundef nonnull @.str.83, ptr noundef %i.q) #22 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @strbuf_init(ptr noundef nonnull %i.s, i64 noundef 0) #22
  store ptr @ident_vtbl, ptr %i.o, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i32 0, ptr %i.t, align 8, !tbaa !75
  %.pre = load i32, ptr %i.j, align 4, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %classify_conv_attrs.exit
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.k, %classify_conv_attrs.exit ] ; 2 uses
  %.0 = phi ptr [ %i.o, %bb.g ], [ null, %classify_conv_attrs.exit ] ; 7 uses
  switch i32 %i.u, label %bb.j [
    i32 1, label %output_eol.exit.thread23
    i32 4, label %output_eol.exit.thread
    i32 3, label %output_eol.exit.thread23
    i32 0, label %output_eol.exit.thread
    i32 7, label %output_eol.exit.thread
    i32 6, label %output_eol.exit.thread23
    i32 2, label %bb.i
    i32 5, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.v = load i32, ptr @auto_crlf, align 4, !tbaa !24
  switch i32 %i.v, label %text_eol_is_crlf.exit.i [
    i32 1, label %output_eol.exit.thread
    i32 -1, label %output_eol.exit.thread23
  ]

text_eol_is_crlf.exit.i:                          ; preds = %bb.i
  %i.w = load i32, ptr @core_eol, align 4, !tbaa !24
  %.fr.i = freeze i32 %i.w
  %.not.i11.a = icmp eq i32 %.fr.i, 1
  br i1 %.not.i11.a, label %output_eol.exit.thread, label %output_eol.exit.thread23

bb.j:                                             ; preds = %bb.h
  %i.x = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i = icmp eq i32 %i.x, 0
  br i1 %.not4.i.i, label %output_eol.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #22
  br label %output_eol.exit

output_eol.exit:                                  ; preds = %bb.j, %bb.k
  %.0.i3.i = phi ptr [ %i.y, %bb.k ], [ @.str.85, %bb.j ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i3.i, i32 noundef %i.u) #22
  %i.z = load i32, ptr @core_eol, align 4, !tbaa !24
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %output_eol.exit.thread, label %output_eol.exit.thread23

output_eol.exit.thread:                           ; preds = %bb.h, %bb.h, %bb.h, %text_eol_is_crlf.exit.i, %bb.i, %output_eol.exit
  %i.ab = tail call noundef ptr @xcalloc(i64 noundef 1, i64 noundef 16) #22 ; 4 uses
  store ptr @lf_to_crlf_vtbl, ptr %i.ab, align 8, !tbaa !136
  %.not.i12 = icmp eq ptr %.0, null
  %.not20.i = icmp eq ptr %.0, @null_filter_singleton
  %or.cond.i = or i1 %.not.i12, %.not20.i
  br i1 %or.cond.i, label %cascade_filter.exit, label %bb.l

bb.l:                                             ; preds = %output_eol.exit.thread
  %.not21.i = icmp eq ptr %i.ab, @null_filter_singleton
  br i1 %.not21.i, label %cascade_filter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call ptr @xmalloc(i64 noundef 1056) #22 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.0, ptr %i.ad, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1052
  store i32 0, ptr %i.af, align 4, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1048
  store i32 0, ptr %i.ag, align 8, !tbaa !82
  store ptr @cascade_vtbl, ptr %i.ac, align 8, !tbaa !137
  br label %cascade_filter.exit

output_eol.exit.thread23:                         ; preds = %bb.h, %bb.h, %bb.i, %text_eol_is_crlf.exit.i, %bb.h, %output_eol.exit
  %.not.i14 = icmp eq ptr %.0, null
  %.not20.i15 = icmp eq ptr %.0, @null_filter_singleton
  %or.cond.i16 = or i1 %.not.i14, %.not20.i15
  %spec.select = select i1 %or.cond.i16, ptr @null_filter_singleton, ptr %.0
  br label %cascade_filter.exit

cascade_filter.exit:                              ; preds = %output_eol.exit.thread23, %bb.f, %bb.d, %bb.e, %bb.c, %bb.b, %bb.m, %bb.l, %output_eol.exit.thread
  %.08 = phi ptr [ %spec.select, %output_eol.exit.thread23 ], [ %.0, %bb.l ], [ %i.ac, %bb.m ], [ %i.ab, %output_eol.exit.thread ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ]
  ret ptr %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 4) i32 @classify_conv_attrs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = add i32 %i.k, -5
  %switch.and = and i32 %i.l, -3
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.m = select i1 %switch.selectcmp, i32 0, i32 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.m, %bb.f ], [ 2, %bb.b ], [ 1, %bb.c ], [ 0, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_stream_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.conv_attrs, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @convert_attrs(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  %i.a = call ptr @get_stream_filter_ca(ptr noundef nonnull %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @free_stream_filter(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  tail call void %i.c(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stream_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @init_checkout_metadata(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.c, ptr %i.d, align 8, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not13 = icmp eq ptr %3, null
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(32) %3, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.g, ptr %i.h, align 4, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @clone_checkout_metadata(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.c, ptr %i.d, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare void @subprocess_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @parse_config_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xstrncmpz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @xmemdupz(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @git_config_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @git_config_bool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @same_encoding(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @filter_buffer_or_fd(i32 %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
end_hunk_2
