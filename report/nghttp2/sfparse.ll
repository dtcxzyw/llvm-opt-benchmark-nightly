Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/sfparse?download=true
begin_hunk_0_@sfparse_parser_list:bb.a
  %.not = icmp eq ptr %.val, %.val3.i
  br i1 %.not, label %parser_skip_inner_list.exit, label %parser_discard_sp.exit._crit_edge

parser_discard_sp.exit._crit_edge:                ; preds = %parser_discard_sp.exit
  %.pre = load i8, ptr %.val, align 1, !tbaa !15
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__.sfparse_parser_list) #6
  unreachable

bb.i:                                             ; preds = %parser_discard_sp.exit._crit_edge, %parser_next_key_or_item.exit
  %i.p = phi i8 [ %.pre, %parser_discard_sp.exit._crit_edge ], [ %i.j, %parser_next_key_or_item.exit ]
  %i.q = phi ptr [ %.val, %parser_discard_sp.exit._crit_edge ], [ %.val57.i15.i, %parser_next_key_or_item.exit ]
  %i.r = icmp eq i8 %i.p, 40
  br i1 %i.r, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not32 = icmp eq ptr %1, null
  br i1 %.not32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 6, ptr %1, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %0, align 8, !tbaa !13
  br label %parser_skip_inner_list.exit.sink.split

bb.m:                                             ; preds = %bb.i
  %i.u = tail call fastcc i32 @parser_bare_item(ptr noundef nonnull %0, ptr noundef %1)
  %.not31 = icmp eq i32 %i.u, 0
  br i1 %.not31, label %parser_skip_inner_list.exit.sink.split, label %parser_skip_inner_list.exit

parser_skip_inner_list.exit.sink.split:           ; preds = %bb.m, %bb.l
  %.sink = phi i32 [ 20, %bb.l ], [ 17, %bb.m ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !8
  br label %parser_skip_inner_list.exit

parser_skip_inner_list.exit:                      ; preds = %.preheader, %parser_skip_inner_list.exit.thread, %bb.e, %parser_skip_inner_list.exit.sink.split, %bb.d, %parser_discard_ows.exit.i, %bb.c, %bb.m, %parser_discard_sp.exit, %parser_next_key_or_item.exit
  %.0 = phi i32 [ -1, %parser_next_key_or_item.exit ], [ -1, %bb.m ], [ 0, %parser_skip_inner_list.exit.sink.split ], [ -2, %parser_discard_ows.exit.i ], [ -2, %parser_discard_sp.exit ], [ -1, %bb.e ], [ %i.d, %parser_skip_inner_list.exit.thread ], [ -1, %bb.c ], [ -1, %bb.d ], [ %i.c, %.preheader ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @sfparse_parser_item(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 28, label %.preheader
    i32 25, label %parser_skip_inner_list.exit.thread.preheader
    i32 27, label %parser_skip_params.exit.thread
  ]

parser_skip_inner_list.exit.thread.preheader:     ; preds = %.preheader, %bb.a
  br label %parser_skip_inner_list.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !tbaa !14 ; 3 uses
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !13 ; 3 uses
  %.not5.i = icmp eq ptr %.promoted.i, %.val3.i
  br i1 %.not5.i, label %parser_discard_sp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.val46.i = phi ptr [ %i.f, %bb.c ], [ %.promoted.i, %bb.b ] ; 3 uses
  %i.d = load i8, ptr %.val46.i, align 1, !tbaa !15
  %i.e = icmp eq i8 %i.d, 32
  br i1 %i.e, label %bb.c, label %parser_discard_sp.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.val46.i, i64 1 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.f, %.val3.i
  br i1 %.not.i, label %parser_discard_sp.exit, label %.lr.ph.i, !llvm.loop !16

parser_discard_sp.exit:                           ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.val32 = phi ptr [ %.promoted.i, %bb.b ], [ %.val46.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 3 uses
  %.not48 = icmp eq ptr %.val32, %.val3.i
  br i1 %.not48, label %parser_skip_inner_list.exit, label %bb.f

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.g = tail call i32 @sfparse_parser_inner_list(ptr noundef nonnull %0, ptr noundef null), !inline_history !12 ; 2 uses
  switch i32 %i.g, label %default.unreachable [
    i32 0, label %.preheader
    i32 -2, label %parser_skip_inner_list.exit.thread.preheader
    i32 -1, label %parser_skip_inner_list.exit
  ]

default.unreachable:                              ; preds = %.preheader, %parser_skip_inner_list.exit.thread
  unreachable

parser_skip_inner_list.exit.thread:               ; preds = %parser_skip_inner_list.exit.thread.preheader, %parser_skip_inner_list.exit.thread
  %i.h = tail call i32 @sfparse_parser_param(ptr noundef nonnull %0, ptr noundef null, ptr noundef null), !inline_history !33 ; 2 uses
  switch i32 %i.h, label %default.unreachable [
    i32 0, label %parser_skip_inner_list.exit.thread
    i32 -2, label %parser_skip_params.exit.thread
    i32 -1, label %parser_skip_inner_list.exit
  ]

parser_skip_params.exit.thread:                   ; preds = %parser_skip_inner_list.exit.thread, %bb.a
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val3.i37 = load ptr, ptr %i.i, align 8, !tbaa !14 ; 4 uses
  %.promoted.i38 = load ptr, ptr %0, align 8, !tbaa !13 ; 2 uses
  %.not5.i39 = icmp eq ptr %.promoted.i38, %.val3.i37
  br i1 %.not5.i39, label %parser_skip_inner_list.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %parser_skip_params.exit.thread, %bb.d
  %.val46.i41 = phi ptr [ %i.l, %bb.d ], [ %.promoted.i38, %parser_skip_params.exit.thread ] ; 3 uses
  %i.j = load i8, ptr %.val46.i41, align 1, !tbaa !15
  %i.k = icmp eq i8 %i.j, 32
  br i1 %i.k, label %bb.d, label %parser_discard_sp.exit43.loopexit

bb.d:                                             ; preds = %.lr.ph.i40
  %i.l = getelementptr inbounds nuw i8, ptr %.val46.i41, i64 1 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !13
  %.not.i42 = icmp eq ptr %i.l, %.val3.i37
  br i1 %.not.i42, label %parser_discard_sp.exit43.loopexit, label %.lr.ph.i40, !llvm.loop !16

parser_discard_sp.exit43.loopexit:                ; preds = %bb.d, %.lr.ph.i40
  %.val51 = phi ptr [ %.val3.i37, %bb.d ], [ %.val46.i41, %.lr.ph.i40 ]
  %i.m = icmp eq ptr %.val51, %.val3.i37
  %i.n = select i1 %i.m, i32 -2, i32 -1
  br label %parser_skip_inner_list.exit

bb.e:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1309, ptr noundef nonnull @__PRETTY_FUNCTION__.sfparse_parser_item) #6
  unreachable

bb.f:                                             ; preds = %parser_discard_sp.exit
  %i.o = load i8, ptr %.val32, align 1, !tbaa !15
  %i.p = icmp eq i8 %i.o, 40
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not30 = icmp eq ptr %1, null
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 6, ptr %1, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val32, i64 1
  store ptr %i.r, ptr %0, align 8, !tbaa !13
  store i32 28, ptr %i.a, align 8, !tbaa !8
  br label %parser_skip_inner_list.exit

bb.j:                                             ; preds = %bb.f
  %i.s = tail call fastcc i32 @parser_bare_item(ptr noundef nonnull %0, ptr noundef %1)
  %.not29 = icmp eq i32 %i.s, 0
  br i1 %.not29, label %bb.k, label %parser_skip_inner_list.exit

bb.k:                                             ; preds = %bb.j
  store i32 25, ptr %i.a, align 8, !tbaa !8
  br label %parser_skip_inner_list.exit

parser_skip_inner_list.exit:                      ; preds = %.preheader, %parser_skip_inner_list.exit.thread, %parser_skip_params.exit.thread, %parser_discard_sp.exit43.loopexit, %bb.j, %parser_discard_sp.exit, %bb.k, %bb.i
  %.0 = phi i32 [ %i.h, %parser_skip_inner_list.exit.thread ], [ 0, %bb.i ], [ -2, %parser_skip_params.exit.thread ], [ 0, %bb.k ], [ -1, %parser_discard_sp.exit ], [ -1, %bb.j ], [ %i.n, %parser_discard_sp.exit43.loopexit ], [ %i.g, %.preheader ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @sfparse_parser_init(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %spec.select = select i1 %i.a, ptr null, ptr %i.b
  %spec.select9 = select i1 %i.a, ptr null, ptr %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select, ptr %i.c, align 8, !tbaa !14
  store ptr %spec.select9, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @sfparse_unescape(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.f = tail call ptr @memchr(ptr noundef %i.e, i32 noundef 92, i64 noundef %i.b) #8 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.028.lcssa = phi ptr [ %i.d, %bb.b ], [ %i.u, %.lr.ph ] ; 2 uses
  %.027.lcssa = phi i64 [ %i.b, %bb.b ], [ %i.v, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.e, %bb.b ], [ %i.s, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.028.lcssa, ptr align 1 %.0.lcssa, i64 %.027.lcssa, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 %.027.lcssa
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.m = phi ptr [ %i.w, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  %.034 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.02733 = phi i64 [ %i.v, %.lr.ph ], [ %i.b, %bb.b ]
  %.02832 = phi ptr [ %i.u, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %.034 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02832, ptr align 1 %.034, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.02832, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 3 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store i8 %i.t, ptr %i.q, align 1, !tbaa !15
  %.neg31 = add i64 %.02733, -2
  %i.v = sub i64 %.neg31, %i.p                    ; 3 uses
  %i.w = tail call ptr @memchr(ptr noundef nonnull %i.s, i32 noundef 92, i64 noundef %i.v) #8 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.sink = phi i64 [ %i.l, %._crit_edge ], [ 0, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.y, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @sfparse_base64decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !19     ; 4 uses
  %i.f = and i64 %i.b, 3                          ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 %i.b
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = icmp eq i8 %i.j, 61
  %spec.select = select i1 %i.k, i64 4, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.050 = phi i64 [ %i.f, %bb.b ], [ %spec.select, %bb.c ] ; 3 uses
  %i.l = sub nsw i64 %i.b, %.050
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 %i.l ; 2 uses
  %.not74 = icmp eq i64 %i.b, %.050
  br i1 %.not74, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.i
  %.076 = phi ptr [ %i.at, %bb.i ], [ %i.d, %bb.d ] ; 4 uses
  %.05475 = phi ptr [ %scevgep, %bb.i ], [ %i.e, %bb.d ] ; 5 uses
  %scevgep = getelementptr i8, ptr %.05475, i64 4 ; 2 uses
  %i.n = load i8, ptr %.05475, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28   ; 2 uses
  %.not60 = icmp eq i32 %i.q, -1
  br i1 %.not60, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.f, %.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1426, ptr noundef nonnull @__PRETTY_FUNCTION__.sfparse_base64decode) #6
  unreachable

bb.f:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.05475, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28   ; 2 uses
  %.not60.1 = icmp eq i32 %i.v, -1
  br i1 %.not60.1, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.05475, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28  ; 2 uses
  %.not60.2 = icmp eq i32 %i.aa, -1
  br i1 %.not60.2, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.05475, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %.not60.3 = icmp eq i32 %i.af, -1
  br i1 %.not60.3, label %bb.e, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = shl i32 %i.aa, 6
  %i.ah = shl i32 %i.v, 12
  %i.ai = shl i32 %i.q, 18
  %i.aj = add i32 %i.ah, %i.ai
  %i.ak = add i32 %i.ag, %i.aj
  %i.al = add i32 %i.af, %i.ak                    ; 3 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.076, i64 1
  store i8 %i.an, ptr %.076, align 1, !tbaa !15
  %i.ap = lshr i32 %i.al, 8
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.076, i64 2
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !15
  %i.as = trunc i32 %i.al to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.076, i64 3 ; 2 uses
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !15
  %.not = icmp eq ptr %scevgep, %i.m
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.054.lcssa = phi ptr [ %i.e, %bb.d ], [ %i.m, %bb.i ] ; 5 uses
  %.0.lcssa = phi ptr [ %i.d, %bb.d ], [ %i.at, %bb.i ] ; 7 uses
  switch i64 %.050, label %bb.o [
    i64 2, label %.thread
    i64 1, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1440, ptr noundef nonnull @__PRETTY_FUNCTION__.sfparse_base64decode) #6
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %1, align 8, !tbaa !19
  %i.av = load i64, ptr %i.a, align 8, !tbaa !22
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = icmp eq i8 %i.ay, 61
  br i1 %i.az, label %.thread, label %.thread65

bb.l:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr %1, align 8, !tbaa !19
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = icmp eq i8 %i.be, 61
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1449, ptr noundef nonnull @__PRETTY_FUNCTION__.sfparse_base64decode) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bg = getelementptr i8, ptr %i.bc, i64 -2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15
  %i.bi = icmp eq i8 %i.bh, 61
  br i1 %i.bi, label %.thread, label %.thread65

.thread:                                          ; preds = %._crit_edge, %bb.k, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 1
  %i.bk = load i8, ptr %.054.lcssa, align 1, !tbaa !15
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !28
  %.tr = trunc i32 %i.bn to i8
  %i.bo = shl i8 %.tr, 2                          ; 2 uses
  store i8 %i.bo, ptr %.0.lcssa, align 1, !tbaa !15
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !28
  %i.bt = lshr i32 %i.bs, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.bv = trunc i32 %i.bt to i8
  %i.bw = or i8 %i.bo, %i.bv
  store i8 %i.bw, ptr %.0.lcssa, align 1, !tbaa !15
  br label %bb.o

.thread65:                                        ; preds = %bb.k, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 1
  %i.by = load i8, ptr %.054.lcssa, align 1, !tbaa !15
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !28
  %i.cc = shl i32 %i.cb, 10
  %i.cd = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 2
  %i.ce = load i8, ptr %i.bx, align 1, !tbaa !15
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !28
  %i.ci = shl i32 %i.ch, 4
  %i.cj = add i32 %i.ci, %i.cc
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !15
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @sfparse_base64decode.index_tbl, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !28
  %i.co = ashr i32 %i.cn, 2
  %i.cp = add i32 %i.cj, %i.co                    ; 2 uses
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 %i.cr, ptr %.0.lcssa, align 1, !tbaa !15
  %i.ct = trunc i32 %i.cp to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %.thread, %.thread65
  %.1 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %.thread ], [ %i.cu, %.thread65 ]
  %i.cv = load ptr, ptr %0, align 8, !tbaa !19
  %i.cw = ptrtoint ptr %.1 to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.sink = phi i64 [ %i.cy, %bb.o ], [ 0, %bb.a ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.cz, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @sfparse_pctdecode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.f = tail call ptr @memchr(ptr noundef %i.e, i32 noundef 37, i64 noundef %i.b) #8 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %pctdecode.exit, %bb.b
  %.026.lcssa = phi ptr [ %i.e, %bb.b ], [ %.1, %pctdecode.exit ]
  %.022.lcssa = phi i64 [ %i.b, %bb.b ], [ %i.ak, %pctdecode.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.d, %bb.b ], [ %i.s, %pctdecode.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.lcssa, ptr align 1 %.026.lcssa, i64 %.022.lcssa, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.022.lcssa
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  br label %bb.j

.lr.ph:                                           ; preds = %bb.b, %pctdecode.exit
  %i.m = phi ptr [ %i.al, %pctdecode.exit ], [ %i.f, %bb.b ] ; 4 uses
  %.033 = phi ptr [ %i.s, %pctdecode.exit ], [ %i.d, %bb.b ] ; 2 uses
  %.02232 = phi i64 [ %i.ak, %pctdecode.exit ], [ %i.b, %bb.b ]
  %.02631 = phi ptr [ %.1, %pctdecode.exit ], [ %i.e, %bb.b ] ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %.02631 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.033, ptr align 1 %.02631, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.033, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !15    ; 3 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @pct_tbl, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  switch i8 %i.w, label %bb.e [
    i8 0, label %pctdecode.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.x = shl i8 %i.t, 4
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.y = shl i8 %i.t, 4
  %i.z = add i8 %i.y, -112
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 744, ptr noundef nonnull @__PRETTY_FUNCTION__.pctdecode) #6
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i8 [ %i.x, %bb.c ], [ %i.z, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15  ; 3 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @pct_tbl, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  switch i8 %i.ae, label %bb.i [
    i8 0, label %pctdecode.exit
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = add i8 %i.ab, -48
  %i.ag = or i8 %i.af, %.0.i
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = add i8 %i.ab, -87
  %i.ai = or i8 %i.ah, %.0.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1.i = phi i8 [ %.0.i, %bb.f ], [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  store i8 %.1.i, ptr %i.q, align 1, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  br label %pctdecode.exit

pctdecode.exit:                                   ; preds = %.lr.ph, %bb.f, %bb.i
  %.1 = phi ptr [ %i.r, %.lr.ph ], [ %i.aj, %bb.i ], [ %i.aa, %bb.f ] ; 3 uses
  %.neg27 = add i64 %.02232, -3
  %i.ak = sub i64 %.neg27, %i.p                   ; 3 uses
  %i.al = tail call ptr @memchr(ptr noundef nonnull %.1, i32 noundef 37, i64 noundef %i.ak) #8 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.a, %._crit_edge
  %.sink = phi i64 [ %i.l, %._crit_edge ], [ 0, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.an, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parser_number(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15
  %i.c = icmp eq i8 %i.b, 45
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 8
  %.val71.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val73 = load ptr, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.d, %.val73
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.val71 = phi ptr [ %.val71.pre, %._crit_edge ], [ %.val73, %bb.b ] ; 19 uses
  %.promoted = phi ptr [ %i.a, %._crit_edge ], [ %i.d, %bb.b ] ; 17 uses
  %.049 = phi i64 [ 1, %._crit_edge ], [ -1, %bb.b ] ; 2 uses
  %.val71112 = ptrtoaddr ptr %.val71 to i64
  %.not74 = icmp eq ptr %.promoted, %.val71
  br i1 %.not74, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.f = load i8, ptr %.promoted, align 1, !tbaa !15 ; 2 uses
  %i.g = add i8 %i.f, -58
  %.not58 = icmp ult i8 %i.g, -10
  br i1 %.not58, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_number) #6
  unreachable

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.h = and i8 %i.f, 15
  %i.i = zext nneg i8 %i.h to i64                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !13
  %.not75 = icmp eq ptr %i.j, %.val71
  br i1 %.not75, label %.thread, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15    ; 3 uses
  %i.l = add i8 %i.k, -58
  %.not58.1 = icmp ult i8 %i.l, -10
  br i1 %.not58.1, label %bb.t, label %bb.f

bb.f:                                             ; preds = %.lr.ph.1
  %i.m = mul nuw nsw i64 %i.i, 10
  %i.n = and i8 %i.k, 15
  %i.o = zext nneg i8 %i.n to i64
  %i.p = add nuw nsw i64 %i.m, %i.o               ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.promoted, i64 2 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !13
  %.not75.1 = icmp eq ptr %i.q, %.val71
  br i1 %.not75.1, label %.thread, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.f
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15    ; 3 uses
  %i.s = add i8 %i.r, -58
  %.not58.2 = icmp ult i8 %i.s, -10
  br i1 %.not58.2, label %bb.t, label %bb.g

bb.g:                                             ; preds = %.lr.ph.2
  %i.t = mul nuw nsw i64 %i.p, 10
  %i.u = and i8 %i.r, 15
  %i.v = zext nneg i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.t, %i.v               ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.promoted, i64 3 ; 4 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !13
  %.not75.2 = icmp eq ptr %i.x, %.val71
  br i1 %.not75.2, label %.thread, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.g
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15    ; 3 uses
  %i.z = add i8 %i.y, -58
  %.not58.3 = icmp ult i8 %i.z, -10
  br i1 %.not58.3, label %bb.t, label %bb.h

bb.h:                                             ; preds = %.lr.ph.3
  %i.aa = mul nuw nsw i64 %i.w, 10
  %i.ab = and i8 %i.y, 15
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.aa, %i.ac            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted, i64 4 ; 4 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !13
  %.not75.3 = icmp eq ptr %i.ae, %.val71
  br i1 %.not75.3, label %.thread, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.h
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15  ; 3 uses
  %i.ag = add i8 %i.af, -58
  %.not58.4 = icmp ult i8 %i.ag, -10
  br i1 %.not58.4, label %bb.t, label %bb.i

bb.i:                                             ; preds = %.lr.ph.4
  %i.ah = mul nuw nsw i64 %i.ad, 10
  %i.ai = and i8 %i.af, 15
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.ah, %i.aj            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.promoted, i64 5 ; 4 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !13
  %.not75.4 = icmp eq ptr %i.al, %.val71
  br i1 %.not75.4, label %.thread, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15  ; 3 uses
  %i.an = add i8 %i.am, -58
  %.not58.5 = icmp ult i8 %i.an, -10
  br i1 %.not58.5, label %bb.t, label %bb.j

bb.j:                                             ; preds = %.lr.ph.5
  %i.ao = mul nuw nsw i64 %i.ak, 10
  %i.ap = and i8 %i.am, 15
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.ao, %i.aq            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.promoted, i64 6 ; 4 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !13
  %.not75.5 = icmp eq ptr %i.as, %.val71
  br i1 %.not75.5, label %.thread, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.j
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15  ; 3 uses
  %i.au = add i8 %i.at, -58
  %.not58.6 = icmp ult i8 %i.au, -10
  br i1 %.not58.6, label %bb.t, label %bb.k

bb.k:                                             ; preds = %.lr.ph.6
  %i.av = mul nuw nsw i64 %i.ar, 10
  %i.aw = and i8 %i.at, 15
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.av, %i.ax            ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.promoted, i64 7 ; 4 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !13
  %.not75.6 = icmp eq ptr %i.az, %.val71
  br i1 %.not75.6, label %.thread, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %bb.k
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15  ; 3 uses
  %i.bb = add i8 %i.ba, -58
  %.not58.7 = icmp ult i8 %i.bb, -10
  br i1 %.not58.7, label %bb.t, label %bb.l

bb.l:                                             ; preds = %.lr.ph.7
  %i.bc = mul nuw nsw i64 %i.ay, 10
  %i.bd = and i8 %i.ba, 15
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.bc, %i.be            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 4 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !13
  %.not75.7 = icmp eq ptr %i.bg, %.val71
  br i1 %.not75.7, label %.thread, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %bb.l
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15  ; 3 uses
  %i.bi = add i8 %i.bh, -58
  %.not58.8 = icmp ult i8 %i.bi, -10
  br i1 %.not58.8, label %bb.t, label %bb.m

bb.m:                                             ; preds = %.lr.ph.8
  %i.bj = mul nuw nsw i64 %i.bf, 10
  %i.bk = and i8 %i.bh, 15
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = add nuw nsw i64 %i.bj, %i.bl            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.promoted, i64 9 ; 4 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !13
  %.not75.8 = icmp eq ptr %i.bn, %.val71
  br i1 %.not75.8, label %.thread, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %bb.m
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15  ; 3 uses
  %i.bp = add i8 %i.bo, -58
  %.not58.9 = icmp ult i8 %i.bp, -10
  br i1 %.not58.9, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.lr.ph.9
  %i.bq = mul nuw nsw i64 %i.bm, 10
  %i.br = and i8 %i.bo, 15
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bq, %i.bs            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.promoted, i64 10 ; 4 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !13
  %.not75.9 = icmp eq ptr %i.bu, %.val71
  br i1 %.not75.9, label %.thread, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %bb.n
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15  ; 3 uses
  %i.bw = add i8 %i.bv, -58
  %.not58.10 = icmp ult i8 %i.bw, -10
  br i1 %.not58.10, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.lr.ph.10
  %i.bx = mul nuw nsw i64 %i.bt, 10
  %i.by = and i8 %i.bv, 15
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bx, %i.bz            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.promoted, i64 11 ; 4 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !13
  %.not75.10 = icmp eq ptr %i.cb, %.val71
  br i1 %.not75.10, label %.thread, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %bb.o
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !15  ; 3 uses
  %i.cd = add i8 %i.cc, -58
  %.not58.11 = icmp ult i8 %i.cd, -10
  br i1 %.not58.11, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.lr.ph.11
  %i.ce = mul nuw nsw i64 %i.ca, 10
  %i.cf = and i8 %i.cc, 15
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.ce, %i.cg            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.promoted, i64 12 ; 4 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !13
  %.not75.11 = icmp eq ptr %i.ci, %.val71
  br i1 %.not75.11, label %.thread, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %bb.p
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !15  ; 3 uses
  %i.ck = add i8 %i.cj, -58
  %.not58.12 = icmp ult i8 %i.ck, -10
  br i1 %.not58.12, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.12
  %i.cl = mul nuw nsw i64 %i.ch, 10
  %i.cm = and i8 %i.cj, 15
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cl, %i.cn            ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.promoted, i64 13 ; 4 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !13
  %.not75.12 = icmp eq ptr %i.cp, %.val71
  br i1 %.not75.12, label %.thread, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %bb.q
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !15  ; 3 uses
  %i.cr = add i8 %i.cq, -58
  %.not58.13 = icmp ult i8 %i.cr, -10
  br i1 %.not58.13, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph.13
  %i.cs = mul nuw nsw i64 %i.co, 10
  %i.ct = and i8 %i.cq, 15
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cs, %i.cu            ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.promoted, i64 14 ; 4 uses
  store ptr %i.cw, ptr %0, align 8, !tbaa !13
  %.not75.13 = icmp eq ptr %i.cw, %.val71
  br i1 %.not75.13, label %.thread, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %bb.r
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15  ; 3 uses
  %i.cy = add i8 %i.cx, -58
  %.not58.14 = icmp ult i8 %i.cy, -10
  br i1 %.not58.14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.14
  %i.cz = mul nuw nsw i64 %i.cv, 10
  %i.da = and i8 %i.cx, 15
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = add nuw nsw i64 %i.cz, %i.db            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.promoted, i64 15 ; 4 uses
  store ptr %i.dd, ptr %0, align 8, !tbaa !13
  %.not75.14 = icmp eq ptr %i.dd, %.val71
  br i1 %.not75.14, label %.thread, label %.lr.ph.15

.lr.ph.15:                                        ; preds = %bb.s
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !15  ; 2 uses
  %i.df = add i8 %i.de, -58
  %.not58.15 = icmp ult i8 %i.df, -10
  br i1 %.not58.15, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.lr.ph.15, %.lr.ph.14, %.lr.ph.13, %.lr.ph.12, %.lr.ph.11, %.lr.ph.10, %.lr.ph.9, %.lr.ph.8, %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1
  %.ph = phi i8 [ %i.de, %.lr.ph.15 ], [ %i.cx, %.lr.ph.14 ], [ %i.cq, %.lr.ph.13 ], [ %i.cj, %.lr.ph.12 ], [ %i.cc, %.lr.ph.11 ], [ %i.bv, %.lr.ph.10 ], [ %i.bo, %.lr.ph.9 ], [ %i.bh, %.lr.ph.8 ], [ %i.ba, %.lr.ph.7 ], [ %i.at, %.lr.ph.6 ], [ %i.am, %.lr.ph.5 ], [ %i.af, %.lr.ph.4 ], [ %i.y, %.lr.ph.3 ], [ %i.r, %.lr.ph.2 ], [ %i.k, %.lr.ph.1 ]
  %.ph133 = phi i1 [ true, %.lr.ph.15 ], [ true, %.lr.ph.14 ], [ true, %.lr.ph.13 ], [ false, %.lr.ph.12 ], [ false, %.lr.ph.11 ], [ false, %.lr.ph.10 ], [ false, %.lr.ph.9 ], [ false, %.lr.ph.8 ], [ false, %.lr.ph.7 ], [ false, %.lr.ph.6 ], [ false, %.lr.ph.5 ], [ false, %.lr.ph.4 ], [ false, %.lr.ph.3 ], [ false, %.lr.ph.2 ], [ false, %.lr.ph.1 ]
  %.092.lcssa.ph = phi i64 [ 15, %.lr.ph.15 ], [ 14, %.lr.ph.14 ], [ 13, %.lr.ph.13 ], [ 12, %.lr.ph.12 ], [ 11, %.lr.ph.11 ], [ 10, %.lr.ph.10 ], [ 9, %.lr.ph.9 ], [ 8, %.lr.ph.8 ], [ 7, %.lr.ph.7 ], [ 6, %.lr.ph.6 ], [ 5, %.lr.ph.5 ], [ 4, %.lr.ph.4 ], [ 3, %.lr.ph.3 ], [ 2, %.lr.ph.2 ], [ 1, %.lr.ph.1 ] ; 5 uses
  %.04791.lcssa.ph = phi i64 [ %i.dc, %.lr.ph.15 ], [ %i.cv, %.lr.ph.14 ], [ %i.co, %.lr.ph.13 ], [ %i.ch, %.lr.ph.12 ], [ %i.ca, %.lr.ph.11 ], [ %i.bt, %.lr.ph.10 ], [ %i.bm, %.lr.ph.9 ], [ %i.bf, %.lr.ph.8 ], [ %i.ay, %.lr.ph.7 ], [ %i.ar, %.lr.ph.6 ], [ %i.ak, %.lr.ph.5 ], [ %i.ad, %.lr.ph.4 ], [ %i.w, %.lr.ph.3 ], [ %i.p, %.lr.ph.2 ], [ %i.i, %.lr.ph.1 ] ; 3 uses
  %.val688890.lcssa.ph = phi ptr [ %i.dd, %.lr.ph.15 ], [ %i.cw, %.lr.ph.14 ], [ %i.cp, %.lr.ph.13 ], [ %i.ci, %.lr.ph.12 ], [ %i.cb, %.lr.ph.11 ], [ %i.bu, %.lr.ph.10 ], [ %i.bn, %.lr.ph.9 ], [ %i.bg, %.lr.ph.8 ], [ %i.az, %.lr.ph.7 ], [ %i.as, %.lr.ph.6 ], [ %i.al, %.lr.ph.5 ], [ %i.ae, %.lr.ph.4 ], [ %i.x, %.lr.ph.3 ], [ %i.q, %.lr.ph.2 ], [ %i.j, %.lr.ph.1 ] ; 2 uses
  %.val688890.lcssa113138 = ptrtoaddr ptr %.val688890.lcssa.ph to i64
  %.not60 = icmp eq i8 %.ph, 46
  br i1 %.not60, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.t
  %.04787 = phi i64 [ %.04791.lcssa.ph, %bb.t ], [ %i.i, %bb.e ], [ %i.p, %bb.f ], [ %i.w, %bb.g ], [ %i.ad, %bb.h ], [ %i.ak, %bb.i ], [ %i.ar, %bb.j ], [ %i.ay, %bb.k ], [ %i.bf, %bb.l ], [ %i.bm, %bb.m ], [ %i.bt, %bb.n ], [ %i.ca, %bb.o ], [ %i.ch, %bb.p ], [ %i.co, %bb.q ], [ %i.cv, %bb.r ], [ %i.dc, %bb.s ]
  %.not64 = icmp eq ptr %1, null
  br i1 %.not64, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.thread
  store i32 1, ptr %1, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.dg, align 4, !tbaa !25
  %i.dh = mul nsw i64 %.04787, %.049
  br label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.t
  br i1 %.ph133, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.v
  %storemerge94 = getelementptr inbounds nuw i8, ptr %.val688890.lcssa.ph, i64 1 ; 3 uses
  store ptr %storemerge94, ptr %0, align 8, !tbaa !13
  %.not7695 = icmp eq ptr %storemerge94, %.val71
  br i1 %.not7695, label %.critedge2, label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %.preheader
  %i.di = add i64 %.092.lcssa.ph, %.val71112
  %i.dj = xor i64 %.val688890.lcssa113138, -1
  %i.dk = add i64 %i.di, %i.dj
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %bb.x
  %storemerge98 = phi ptr [ %storemerge, %bb.x ], [ %storemerge94, %.lr.ph99.preheader ] ; 2 uses
  %.197 = phi i64 [ %i.dn, %bb.x ], [ %.092.lcssa.ph, %.lr.ph99.preheader ] ; 3 uses
  %.14896 = phi i64 [ %i.dr, %bb.x ], [ %.04791.lcssa.ph, %.lr.ph99.preheader ] ; 2 uses
  %i.dl = load i8, ptr %storemerge98, align 1, !tbaa !15 ; 2 uses
  %i.dm = add i8 %i.dl, -58
  %.not62 = icmp ult i8 %i.dm, -10
  br i1 %.not62, label %.critedge2, label %bb.w

bb.w:                                             ; preds = %.lr.ph99
  %exitcond = icmp eq i64 %.197, 15
  br i1 %exitcond, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = add nuw nsw i64 %.197, 1
  %i.do = mul nsw i64 %.14896, 10
  %i.dp = and i8 %i.dl, 15
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = add nsw i64 %i.do, %i.dq                ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge98, i64 1 ; 3 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !13
  %.not76 = icmp eq ptr %storemerge, %.val71
  br i1 %.not76, label %.critedge2, label %.lr.ph99, !llvm.loop !36

.critedge2:                                       ; preds = %.lr.ph99, %bb.x, %.preheader
  %.148.lcssa = phi i64 [ %.04791.lcssa.ph, %.preheader ], [ %i.dr, %bb.x ], [ %.14896, %.lr.ph99 ]
  %.1.lcssa = phi i64 [ %.092.lcssa.ph, %.preheader ], [ %i.dk, %bb.x ], [ %.197, %.lr.ph99 ] ; 2 uses
  %i.ds = icmp eq i64 %.092.lcssa.ph, %.1.lcssa
  br i1 %i.ds, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.critedge2
  %i.dt = sub nsw i64 %.1.lcssa, %.092.lcssa.ph   ; 2 uses
  %i.du = icmp ugt i64 %i.dt, 3
  br i1 %i.du, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not63 = icmp eq ptr %1, null
  br i1 %.not63, label %.loopexit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.z
  store i32 2, ptr %1, align 8, !tbaa !23
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.dv, align 4, !tbaa !25
  %i.dw = mul nsw i64 %.148.lcssa, %.049
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !15
  %i.dy = getelementptr [2 x i8], ptr @switch.table.parser_number, i64 %i.dt
  %switch.gep = getelementptr i8, ptr %i.dy, i64 -2
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %switch.lookup, %bb.u
  %.sink144 = phi i64 [ 8, %bb.u ], [ 16, %switch.lookup ]
  %.sink = phi i64 [ %i.dh, %bb.u ], [ %switch.ext, %switch.lookup ]
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %.sink144
  store i64 %.sink, ptr %i.dz, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.loopexit.sink.split, %.lr.ph.preheader, %.lr.ph.15, %bb.z, %.critedge2, %bb.y, %bb.v, %.thread, %bb.b
  %.050 = phi i32 [ -1, %bb.b ], [ 0, %bb.z ], [ -1, %.lr.ph.preheader ], [ 0, %.thread ], [ -1, %.lr.ph.15 ], [ -1, %.critedge2 ], [ -1, %bb.v ], [ 0, %.loopexit.sink.split ], [ -1, %bb.y ], [ -1, %bb.w ]
  ret i32 %.050
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 16}
!9 = !{!"sfparse_parser", !10, i64 0, !10, i64 8, !5, i64 16}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{null}
!13 = !{!9, !10, i64 0}
!14 = !{!9, !10, i64 8}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !10, i64 0}
!20 = !{!"sfparse_vec", !10, i64 0, !21, i64 8}
!21 = !{!"long", !6, i64 0}
!22 = !{!20, !21, i64 8}
!23 = !{!24, !5, i64 0}
!24 = !{!"sfparse_value", !5, i64 0, !5, i64 4, !6, i64 8}
!25 = !{!24, !5, i64 4}
!26 = distinct !{!26, !17}
!27 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 16, !15}
!28 = !{!5, !5, i64 0}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = !{!10, !10, i64 0}
!32 = distinct !{!32, !17}
!33 = distinct !{null}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
end_hunk_0
