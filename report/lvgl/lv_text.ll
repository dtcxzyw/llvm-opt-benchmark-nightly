Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_text?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lv_text_get_next_line:bb.a

.critedge4.loopexit.loopexit.split.loop.exit277:  ; preds = %.lr.ph194
  %i.eb = trunc nuw i64 %indvars.iv232 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.ac, %.critedge4.loopexit.loopexit.split.loop.exit277, %.critedge92
  %i.ec = phi i32 [ %.pre, %.critedge92 ], [ %i.eb, %.critedge4.loopexit.loopexit.split.loop.exit277 ], [ %1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge4, %bb.g, %.critedge89, %bb.d, %bb.c
  %.170 = phi i32 [ %.165, %.critedge89 ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ec, %.critedge4 ], [ %.165, %bb.g ]
  ret i32 %.170
}

; Function Attrs: nounwind uwtable
define i32 @lv_text_get_width(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !9
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.k, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %lv_text_is_cmd.exit.thread
  %.038 = phi i32 [ 0, %.lr.ph ], [ %.2, %lv_text_is_cmd.exit.thread ] ; 5 uses
  %.02737 = phi i32 [ 0, %.lr.ph ], [ %.228, %lv_text_is_cmd.exit.thread ] ; 5 uses
  %i.g = call i32 @lv_text_utf8_next(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.a) ; 4 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lv_text_encoded_letter_next_2.exit.thread, label %lv_text_encoded_letter_next_2.exit

lv_text_encoded_letter_next_2.exit:               ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 4, !tbaa !10
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = call i32 @lv_text_utf8_next(ptr noundef nonnull readonly %i.j, ptr noundef null) ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !15
  %i.m = and i32 %i.l, 8
  %.not22 = icmp eq i32 %i.m, 0
  br i1 %.not22, label %lv_text_is_cmd.exit, label %bb.e

lv_text_encoded_letter_next_2.exit.thread:        ; preds = %bb.d
  %i.n = load i32, ptr %i.f, align 4, !tbaa !15
  %i.o = and i32 %i.n, 8
  %.not2230 = icmp ne i32 %i.o, 0
  %i.p = icmp eq i32 %.02737, 1
  %or.cond35 = select i1 %.not2230, i1 %i.p, i1 false
  br i1 %or.cond35, label %lv_text_is_cmd.exit.thread, label %lv_text_is_cmd.exit, !llvm.loop !29

bb.e:                                             ; preds = %lv_text_encoded_letter_next_2.exit
  %i.q = icmp eq i32 %i.g, 35
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ne i32 %.02737, 2
  %spec.select36 = zext i1 %i.r to i32
  br label %lv_text_is_cmd.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i32 %.02737, 1
  br i1 %i.s, label %bb.h, label %lv_text_is_cmd.exit, !llvm.loop !29

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq i32 %i.g, 32
  %spec.select = select i1 %i.t, i32 2, i32 1
  br label %lv_text_is_cmd.exit.thread

lv_text_is_cmd.exit:                              ; preds = %bb.g, %lv_text_encoded_letter_next_2.exit.thread, %lv_text_encoded_letter_next_2.exit
  %i.u = phi i32 [ %i.k, %lv_text_encoded_letter_next_2.exit ], [ 0, %lv_text_encoded_letter_next_2.exit.thread ], [ %i.k, %bb.g ]
  %i.v = call zeroext i16 @lv_font_get_glyph_width(ptr noundef nonnull %2, i32 noundef %i.g, i32 noundef %i.u) #11 ; 2 uses
  %.not23 = icmp eq i16 %i.v, 0
  br i1 %.not23, label %lv_text_is_cmd.exit.thread, label %bb.i

bb.i:                                             ; preds = %lv_text_is_cmd.exit
  %i.w = zext i16 %i.v to i32
  %i.x = add nsw i32 %.038, %i.w
  %i.y = load i32, ptr %3, align 4, !tbaa !16
  %i.z = add nsw i32 %i.x, %i.y
  br label %lv_text_is_cmd.exit.thread

lv_text_is_cmd.exit.thread:                       ; preds = %bb.f, %bb.h, %lv_text_encoded_letter_next_2.exit.thread, %lv_text_is_cmd.exit, %bb.i
  %.228 = phi i32 [ %.02737, %lv_text_is_cmd.exit ], [ %.02737, %bb.i ], [ 1, %lv_text_encoded_letter_next_2.exit.thread ], [ %spec.select, %bb.h ], [ %spec.select36, %bb.f ]
  %.2 = phi i32 [ %.038, %lv_text_is_cmd.exit ], [ %i.z, %bb.i ], [ %.038, %lv_text_encoded_letter_next_2.exit.thread ], [ %.038, %bb.h ], [ %.038, %bb.f ] ; 4 uses
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ae = icmp ne i8 %i.ad, 0
  %i.af = icmp ult i32 %i.aa, %1
  %i.ag = and i1 %i.af, %i.ae
  br i1 %i.ag, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %lv_text_is_cmd.exit.thread
  %i.ah = icmp sgt i32 %.2, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ai = load i32, ptr %3, align 4, !tbaa !16
  %i.aj = sub nsw i32 %.2, %i.ai
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.c
  %.3 = phi i32 [ %i.aj, %bb.j ], [ %.2, %._crit_edge ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  %.018 = phi i32 [ %.3, %bb.k ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @lv_text_is_cmd(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 35
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.f [
    i32 0, label %.thread14
    i32 2, label %.thread12
    i32 1, label %.thread17
  ]

.thread14:                                        ; preds = %bb.b
  store i32 1, ptr %0, align 4, !tbaa !10
  br label %bb.f

.thread12:                                        ; preds = %bb.b
  store i32 0, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.f

.thread17:                                        ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 32
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.thread17, %.thread14, %.thread12, %bb.d, %bb.e, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %bb.e ], [ true, %bb.d ], [ true, %.thread12 ], [ true, %.thread14 ], [ false, %bb.b ], [ true, %.thread17 ]
  ret i1 %.1
}

declare zeroext i16 @lv_font_get_glyph_width(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_text_encoded_letter_next_2(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @lv_text_utf8_next(ptr noundef %0, ptr noundef %3) ; 2 uses
  store i32 %i.a, ptr %1, align 4, !tbaa !10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !10
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = tail call i32 @lv_text_utf8_next(ptr noundef %i.d, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  store i32 %i.f, ptr %2, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_text_ins(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @lv_strlen(ptr noundef nonnull %0) #11 ; 2 uses
  %i.d = tail call i64 @lv_strlen(ptr noundef nonnull %2) #11 ; 10 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.d, %i.c                       ; 6 uses
  %.not16.i = icmp eq i32 %1, 0
  br i1 %.not16.i, label %lv_text_utf8_get_byte_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %lv_text_utf8_size.exit.i
  %.013.i = phi i32 [ %i.t, %lv_text_utf8_size.exit.i ], [ 0, %bb.c ]
  %.01012.i = phi i32 [ %i.s, %lv_text_utf8_size.exit.i ], [ 0, %bb.c ] ; 3 uses
  %i.g = zext i32 %.01012.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9     ; 3 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %lv_text_utf8_get_byte_id.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = icmp sgt i8 %i.i, -1
  br i1 %i.k, label %lv_text_utf8_size.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %i.j, 224
  %i.m = icmp eq i32 %i.l, 192
  br i1 %i.m, label %lv_text_utf8_size.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = and i32 %i.j, 240
  %i.o = icmp eq i32 %i.n, 224
  br i1 %i.o, label %lv_text_utf8_size.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %i.j, 248
  %i.q = icmp eq i32 %i.p, 240
  %i.r = select i1 %i.q, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i

lv_text_utf8_size.exit.i:                         ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ 3, %bb.f ], [ 1, %bb.d ], [ 2, %bb.e ], [ %i.r, %bb.g ]
  %i.s = add i32 %.0.i.i, %.01012.i               ; 2 uses
  %i.t = add nuw i32 %.013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.t, %1
  br i1 %exitcond.not.i, label %lv_text_utf8_get_byte_id.exit.loopexit, label %.lr.ph.i, !llvm.loop !0

lv_text_utf8_get_byte_id.exit.loopexit:           ; preds = %lv_text_utf8_size.exit.i, %.lr.ph.i
  %.010.lcssa.i.ph = phi i32 [ %i.s, %lv_text_utf8_size.exit.i ], [ %.01012.i, %.lr.ph.i ]
  %i.u = zext i32 %.010.lcssa.i.ph to i64
  br label %lv_text_utf8_get_byte_id.exit

lv_text_utf8_get_byte_id.exit:                    ; preds = %lv_text_utf8_get_byte_id.exit.loopexit, %bb.c
  %.010.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.u, %lv_text_utf8_get_byte_id.exit.loopexit ] ; 3 uses
  %i.v = add i64 %i.d, %.010.lcssa.i              ; 2 uses
  %.not26 = icmp ult i64 %i.f, %i.v
  br i1 %.not26, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %lv_text_utf8_get_byte_id.exit
  %3 = add i64 %i.d, %i.c                         ; 2 uses
  %4 = add i64 %3, -1
  %i.w = add i64 %i.d, %.010.lcssa.i
  %i.x = add i64 %i.w, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.x)
  %i.y = sub i64 %3, %umin                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond44 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond44, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  %i.aa = sub i64 %i.f, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = sub i64 %i.f, %index                    ; 2 uses
  %i.ac = sub i64 %i.ab, %i.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -15
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !9
  %wide.load37 = load <16 x i8>, ptr %i.af, align 1, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -15
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -31
  store <16 x i8> %wide.load, ptr %i.ah, align 1, !tbaa !9
  store <16 x i8> %wide.load37, ptr %i.ai, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.y, -8                     ; 3 uses
  %i.ak = sub i64 %i.f, %n.vec38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %i.al = sub i64 %i.f, %index39                  ; 2 uses
  %i.am = sub i64 %i.al, %i.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -7
  %wide.load40 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -7
  store <8 x i8> %wide.load40, ptr %i.aq, align 1, !tbaa !9
  %index.next41 = add nuw i64 %index39, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.y, %n.vec38
  br i1 %cmp.n42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.027.ph = phi i64 [ %i.f, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.027 = phi i64 [ %i.aw, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader ] ; 3 uses
  %i.as = sub i64 %.027, %i.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.au, ptr %i.av, align 1, !tbaa !9
  %i.aw = add i64 %.027, -1                       ; 2 uses
  %.not = icmp ult i64 %i.aw, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lv_text_utf8_get_byte_id.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.010.lcssa.i
  %i.ay = tail call ptr @lv_memcpy(ptr noundef nonnull %i.ax, ptr noundef nonnull %2, i64 noundef %i.d) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

declare i64 @lv_strlen(ptr noundef) local_unnamed_addr #7

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @lv_text_cut(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @lv_strlen(ptr noundef nonnull %0) #11 ; 3 uses
  %.not16.i = icmp eq i32 %1, 0
  br i1 %.not16.i, label %lv_text_utf8_get_byte_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %lv_text_utf8_size.exit.i
  %.013.i = phi i32 [ %i.p, %lv_text_utf8_size.exit.i ], [ 0, %bb.b ]
  %.01012.i = phi i32 [ %i.o, %lv_text_utf8_size.exit.i ], [ 0, %bb.b ] ; 3 uses
  %i.c = zext i32 %.01012.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9     ; 3 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %lv_text_utf8_get_byte_id.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %lv_text_utf8_size.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.f, 224
  %i.i = icmp eq i32 %i.h, 192
  br i1 %i.i, label %lv_text_utf8_size.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.f, 240
  %i.k = icmp eq i32 %i.j, 224
  br i1 %i.k, label %lv_text_utf8_size.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.f, 248
  %i.m = icmp eq i32 %i.l, 240
  %i.n = select i1 %i.m, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i

lv_text_utf8_size.exit.i:                         ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 3, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ], [ %i.n, %bb.f ]
  %i.o = add i32 %.0.i.i, %.01012.i               ; 2 uses
  %i.p = add nuw i32 %.013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, %1
  br i1 %exitcond.not.i, label %lv_text_utf8_get_byte_id.exit, label %.lr.ph.i, !llvm.loop !0

lv_text_utf8_get_byte_id.exit:                    ; preds = %.lr.ph.i, %lv_text_utf8_size.exit.i, %bb.b
  %.010.lcssa.i = phi i32 [ 0, %bb.b ], [ %.01012.i, %.lr.ph.i ], [ %i.o, %lv_text_utf8_size.exit.i ] ; 14 uses
  %i.q = zext i32 %.010.lcssa.i to i64            ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %.not16.i18 = icmp eq i32 %2, 0
  br i1 %.not16.i18, label %lv_text_utf8_get_byte_id.exit27, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %lv_text_utf8_get_byte_id.exit, %lv_text_utf8_size.exit.i23
  %.013.i20 = phi i32 [ %i.af, %lv_text_utf8_size.exit.i23 ], [ 0, %lv_text_utf8_get_byte_id.exit ]
  %.01012.i21 = phi i32 [ %i.ae, %lv_text_utf8_size.exit.i23 ], [ 0, %lv_text_utf8_get_byte_id.exit ] ; 3 uses
  %i.s = zext i32 %.01012.i21 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9     ; 3 uses
  %.not.i22 = icmp eq i8 %i.u, 0
  br i1 %.not.i22, label %lv_text_utf8_get_byte_id.exit27, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i19
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = icmp sgt i8 %i.u, -1
  br i1 %i.w, label %lv_text_utf8_size.exit.i23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = and i32 %i.v, 224
  %i.y = icmp eq i32 %i.x, 192
  br i1 %i.y, label %lv_text_utf8_size.exit.i23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i32 %i.v, 240
  %i.aa = icmp eq i32 %i.z, 224
  br i1 %i.aa, label %lv_text_utf8_size.exit.i23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = and i32 %i.v, 248
  %i.ac = icmp eq i32 %i.ab, 240
  %i.ad = select i1 %i.ac, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i23

lv_text_utf8_size.exit.i23:                       ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i24 = phi i32 [ 3, %bb.i ], [ 1, %bb.g ], [ 2, %bb.h ], [ %i.ad, %bb.j ]
  %i.ae = add i32 %.0.i.i24, %.01012.i21          ; 2 uses
  %i.af = add nuw i32 %.013.i20, 1                ; 2 uses
  %exitcond.not.i25 = icmp eq i32 %i.af, %2
  br i1 %exitcond.not.i25, label %lv_text_utf8_get_byte_id.exit27, label %.lr.ph.i19, !llvm.loop !0

lv_text_utf8_get_byte_id.exit27:                  ; preds = %.lr.ph.i19, %lv_text_utf8_size.exit.i23, %lv_text_utf8_get_byte_id.exit
  %.010.lcssa.i26 = phi i32 [ 0, %lv_text_utf8_get_byte_id.exit ], [ %.01012.i21, %.lr.ph.i19 ], [ %i.ae, %lv_text_utf8_size.exit.i23 ] ; 6 uses
  %i.ag = zext i32 %.010.lcssa.i26 to i64         ; 3 uses
  %i.ah = sub i64 %i.b, %i.ag                     ; 2 uses
  %.not28 = icmp ult i64 %i.ah, %i.q
  br i1 %.not28, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %lv_text_utf8_get_byte_id.exit27
  %i.ai = add i64 %i.b, 1
  %3 = sub i64 %i.ai, %i.ag
  %i.aj = add i32 %.010.lcssa.i, 1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %umax38 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ak)
  %i.al = add i64 %umax38, 1
  %i.am = sub i64 %i.al, %i.ak                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.an = add i64 %i.b, 1
  %4 = sub i64 %i.an, %i.ag
  %i.ao = add i32 %.010.lcssa.i, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.ap) ; 2 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  %i.as = sub i32 -2, %.010.lcssa.i
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = xor i32 %.010.lcssa.i, -1
  %i.av = icmp ult i32 %i.au, %i.ar
  %i.aw = icmp ugt i64 %i.aq, 4294967295
  %i.ax = or i1 %i.av, %i.aw
  %i.ay = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %i.az = xor i32 %i.ay, -1
  %i.ba = icmp ult i32 %i.az, %i.ar
  %i.bb = or i1 %i.at, %i.ax
  %i.bc = or i1 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bd = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %i.be = zext i32 %i.bd to i64
  %i.bf = sub nsw i64 %i.be, %i.q
  %diff.check = icmp ugt i64 %i.bf, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check39 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %i.am, 24
  %n.vec = and i64 %i.am, -32                     ; 5 uses
  %i.bh = add i64 %n.vec, %i.q
  %i.bi = trunc i64 %n.vec to i32
  %i.bj = add i32 %.010.lcssa.i, %i.bi
  %invariant.op = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = trunc i64 %index to i32
  %.reass = add i32 %i.bk, %invariant.op
  %i.bl = zext i32 %.reass to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <16 x i8>, ptr %i.bm, align 1, !tbaa !9
  %wide.load40 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !9
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !9
  store <16 x i8> %wide.load40, ptr %i.bo, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.am, -8                    ; 4 uses
  %i.bq = add i64 %n.vec42, %i.q
  %i.br = trunc i64 %n.vec42 to i32
  %i.bs = add i32 %.010.lcssa.i, %i.br
  %invariant.op49 = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %invariant.gep51 = getelementptr i8, ptr %0, i64 %i.q
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = trunc i64 %index43 to i32
  %.reass50 = add i32 %i.bt, %invariant.op49
  %i.bu = zext i32 %.reass50 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %wide.load44 = load <8 x i8>, ptr %i.bv, align 1, !tbaa !9
  %gep52 = getelementptr i8, ptr %invariant.gep51, i64 %index43
  store <8 x i8> %wide.load44, ptr %gep52, align 1, !tbaa !9
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.am, %n.vec42
  br i1 %cmp.n46, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.q, %iter.check ], [ %i.q, %vector.scevcheck ], [ %i.q, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.029.ph = phi i32 [ %.010.lcssa.i, %iter.check ], [ %.010.lcssa.i, %vector.scevcheck ], [ %.010.lcssa.i, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bx = phi i64 [ %i.ce, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.029 = phi i32 [ %i.cd, %.lr.ph ], [ %.029.ph, %.lr.ph.preheader ] ; 2 uses
  %i.by = add i32 %.029, %.010.lcssa.i26
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9
  %i.cd = add i32 %.029, 1                        ; 2 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %.not = icmp ult i64 %i.ah, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lv_text_utf8_get_byte_id.exit27, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define nonnull ptr @lv_text_set_text_vfmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr %1)
  %i.a = call i32 @lv_vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = add i32 %i.a, 1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = call ptr @lv_malloc(i64 noundef %i.c) #11 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @lv_vsnprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef %0, ptr noundef %1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #9

declare i32 @lv_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #7

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!13 = !{!12, !6, i64 4}
!14 = !{!12, !6, i64 8}
!15 = !{!12, !6, i64 12}
!16 = !{!12, !6, i64 0}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"branch_weights", i32 8, i32 24}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!"", !6, i64 0, !6, i64 4}
!24 = !{!23, !6, i64 0}
!25 = !{!23, !6, i64 4}
end_hunk_0
