Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/charsets?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@get_ascii_string:bb.a
  tail call void @wmem_strbuf_append_len(ptr noundef %i.b, ptr noundef %.119, i64 noundef %.2)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.g, %._crit_edge
  %i.h = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new_sized(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_unichar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_utf_8_string(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ws_utf8_make_valid(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @ws_utf8_make_valid(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_iso_646_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 2 uses
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.014 = phi ptr [ %i.i, %bb.c ], [ %1, %bb.a ]  ; 2 uses
  %.01113 = phi i64 [ %i.j, %bb.c ], [ %2, %bb.a ]
  %i.c = load i8, ptr %.014, align 1              ; 2 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext nneg i8 %i.c to i64
  %i.f = getelementptr [2 x i8], ptr %3, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sink = phi i32 [ %i.h, %bb.b ], [ 65533, %.lr.ph ]
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef %.sink)
  %i.i = getelementptr i8, ptr %.014, i64 1
  %i.j = add i64 %.01113, -1                      ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.k = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.k
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_8859_1_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 3 uses
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.015 = phi i64 [ %i.g, %bb.d ], [ %2, %bb.a ]
  %.01114 = phi ptr [ %i.f, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.01114, align 1            ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @wmem_strbuf_append_c(ptr noundef %i.b, i8 noundef signext %i.c)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.e = zext i8 %i.c to i32
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr i8, ptr %.01114, i64 1
  %i.g = add i64 %.015, -1                        ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.h = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.h
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_c(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_unichar2_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 3 uses
  %.not14 = icmp eq i64 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.j, %bb.d ], [ %1, %bb.a ]  ; 2 uses
  %.01215 = phi i64 [ %i.k, %bb.d ], [ %2, %bb.a ]
  %i.c = load i8, ptr %.016, align 1              ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @wmem_strbuf_append_c(ptr noundef %i.b, i8 noundef signext %i.c)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.e = zext i8 %i.c to i64
  %i.f = getelementptr [2 x i8], ptr %3, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -256
  %i.h = load i16, ptr %i.g, align 2
  %i.i = zext i16 %i.h to i32
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %.016, i64 1
  %i.k = add i64 %.01215, -1                      ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.l = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.l
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_ucs_2_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 4 uses
  %i.c = and i32 %3, 536870912
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ugt i64 %2, 1
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val28 = load i16, ptr %1, align 1             ; 2 uses
  %i.f = icmp eq i16 %.val28, -257
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i16 %.val28, -2                  ; 2 uses
  %spec.select = select i1 %i.g, i32 0, i32 %3
  %spec.select26 = select i1 %i.g, i64 2, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.024 = phi i32 [ %3, %bb.a ], [ %spec.select, %bb.c ]
  %.0 = phi i64 [ 0, %bb.a ], [ %spec.select26, %bb.c ] ; 4 uses
  %i.h = or disjoint i64 %.0, 1
  %i.i = icmp ult i64 %i.h, %2
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.thread:                                          ; preds = %bb.b
  %i.j = icmp ugt i64 %2, 3
  br i1 %i.j, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.k = icmp sgt i32 %.024, -1
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  %.134.ph = phi i64 [ 2, %.thread ], [ %.0, %.lr.ph ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.134.us = phi i64 [ %i.r, %.lr.ph.split.us ], [ %.0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %.134.us   ; 2 uses
  %.val30.us = load i8, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %.val31.us = load i8, ptr %i.m, align 1
  %i.n = zext i8 %.val30.us to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = zext i8 %.val31.us to i32
  %i.q = or disjoint i32 %i.o, %i.p
  tail call void @wmem_strbuf_append_unichar_validated(ptr noundef %i.b, i32 noundef %i.q)
  %i.r = add nuw i64 %.134.us, 2                  ; 3 uses
  %i.s = or disjoint i64 %i.r, 1
  %i.t = icmp ult i64 %i.s, %2
  br i1 %i.t, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.134 = phi i64 [ %i.w, %.lr.ph.split ], [ %.134.ph, %.lr.ph.split.preheader ] ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %.134
  %.val = load i16, ptr %i.u, align 1
  %i.v = zext i16 %.val to i32
  tail call void @wmem_strbuf_append_unichar_validated(ptr noundef %i.b, i32 noundef %i.v)
  %i.w = add nuw i64 %.134, 2                     ; 3 uses
  %i.x = or disjoint i64 %i.w, 1
  %i.y = icmp ult i64 %i.x, %2
  br i1 %i.y, label %.lr.ph.split, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph.split.us, %.lr.ph.split, %.thread, %bb.d
  %.1.lcssa = phi i64 [ %.0, %bb.d ], [ 2, %.thread ], [ %i.w, %.lr.ph.split ], [ %i.r, %.lr.ph.split.us ]
  %i.z = icmp ult i64 %.1.lcssa, %2
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef 65533)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.aa = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.aa
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_unichar_validated(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_utf_16_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 5 uses
  %i.c = and i32 %3, 536870912
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ugt i64 %2, 1
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val64 = load i16, ptr %1, align 1             ; 2 uses
  %i.f = icmp eq i16 %.val64, -257
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i16 %.val64, -2                  ; 2 uses
  %spec.select = select i1 %i.g, i32 0, i32 %3
  %spec.select60 = select i1 %i.g, i64 2, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.056 = phi i32 [ %3, %bb.a ], [ %spec.select, %bb.c ]
  %.0 = phi i64 [ 0, %bb.a ], [ %spec.select60, %bb.c ] ; 4 uses
  %i.h = or disjoint i64 %.0, 1
  %i.i = icmp ult i64 %i.h, %2
  br i1 %i.i, label %.lr.ph, label %.loopexit

.thread:                                          ; preds = %bb.b
  %i.j = icmp ugt i64 %2, 3
  br i1 %i.j, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.k = icmp sgt i32 %.056, -1
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  %.173.ph = phi i64 [ 2, %.thread ], [ %.0, %.lr.ph ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %.173.us = phi i64 [ %i.ag, %bb.i ], [ %.0, %.lr.ph ] ; 5 uses
  %i.l = getelementptr i8, ptr %1, i64 %.173.us   ; 2 uses
  %.val68.us = load i8, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %.val69.us = load i8, ptr %i.m, align 1
  %i.n = zext i8 %.val68.us to i16
  %i.o = shl nuw i16 %i.n, 8                      ; 2 uses
  %i.p = zext i8 %.val69.us to i16
  %i.q = or disjoint i16 %i.o, %i.p
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = and i16 %i.o, -1024
  switch i16 %i.s, label %bb.h [
    i16 -10240, label %bb.e
    i16 -9216, label %bb.i
  ]

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.t = add i64 %.173.us, 2                      ; 4 uses
  %i.u = add i64 %.173.us, 3
  %.not.us = icmp ult i64 %i.u, %2
  br i1 %.not.us, label %bb.f, label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 %i.t       ; 2 uses
  %.val66.us = load i8, ptr %i.v, align 1
  %i.w = zext i8 %.val66.us to i16                ; 2 uses
  %i.x = and i16 %i.w, 252
  %or.cond7.us = icmp eq i16 %i.x, 220
  br i1 %or.cond7.us, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = shl nuw i16 %i.w, 8
  %i.z = getelementptr i8, ptr %i.v, i64 1
  %.val67.us = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.val67.us to i16
  %i.ab = or disjoint i16 %i.y, %i.aa
  %i.ac = zext i16 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.r, 10
  %i.ae = add nsw i32 %i.ad, -56613888
  %i.af = add nsw i32 %i.ae, %i.ac
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.lr.ph.split.us, %bb.h, %bb.g
  %.sink = phi i32 [ %i.r, %bb.h ], [ %i.af, %bb.g ], [ 65533, %.lr.ph.split.us ], [ 65533, %bb.f ]
  %.2.us = phi i64 [ %.173.us, %bb.h ], [ %i.t, %bb.g ], [ %.173.us, %.lr.ph.split.us ], [ %i.t, %bb.f ] ; 2 uses
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef %.sink)
  %i.ag = add i64 %.2.us, 2                       ; 2 uses
  %i.ah = add i64 %.2.us, 3
  %i.ai = icmp ult i64 %i.ah, %2
  br i1 %i.ai, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !12

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.n
  %.173 = phi i64 [ %i.au, %bb.n ], [ %.173.ph, %.lr.ph.split.preheader ] ; 5 uses
  %i.aj = getelementptr i8, ptr %1, i64 %.173
  %.val62 = load i16, ptr %i.aj, align 1          ; 2 uses
  %i.ak = zext i16 %.val62 to i32                 ; 2 uses
  %i.al = and i16 %.val62, -1024
  switch i16 %i.al, label %bb.m [
    i16 -10240, label %bb.j
    i16 -9216, label %bb.n
  ]

bb.j:                                             ; preds = %.lr.ph.split
  %i.am = add i64 %.173, 2                        ; 4 uses
  %i.an = add i64 %.173, 3
  %.not = icmp ult i64 %i.an, %2
  br i1 %.not, label %bb.k, label %.split.us

.split.us:                                        ; preds = %bb.e, %bb.j
  %.us-phi = phi i64 [ %i.am, %bb.j ], [ %i.t, %bb.e ]
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef 65533)
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %1, i64 %i.am
  %.val = load i16, ptr %i.ao, align 1            ; 2 uses
  %i.ap = and i16 %.val, -1024
  %or.cond7 = icmp eq i16 %i.ap, -9216
  br i1 %or.cond7, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aq = zext i16 %.val to i32
  %i.ar = shl nuw nsw i32 %i.ak, 10
  %i.as = add nsw i32 %i.ar, -56613888
  %i.at = add nsw i32 %i.as, %i.aq
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.split
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.split, %bb.k, %bb.l, %bb.m
  %.sink93 = phi i32 [ 65533, %bb.k ], [ %i.at, %bb.l ], [ %i.ak, %bb.m ], [ 65533, %.lr.ph.split ]
  %.2 = phi i64 [ %i.am, %bb.k ], [ %i.am, %bb.l ], [ %.173, %bb.m ], [ %.173, %.lr.ph.split ] ; 2 uses
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef %.sink93)
  %i.au = add i64 %.2, 2                          ; 2 uses
  %i.av = add i64 %.2, 3
  %i.aw = icmp ult i64 %i.av, %2
  br i1 %i.aw, label %.lr.ph.split, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %bb.i, %bb.n, %.thread, %bb.d, %.split.us
  %.3 = phi i64 [ %.us-phi, %.split.us ], [ %.0, %bb.d ], [ 2, %.thread ], [ %i.au, %bb.n ], [ %i.ag, %bb.i ]
  %i.ax = icmp ult i64 %.3, %2
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef 65533)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %i.ay = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.ay
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_ucs_4_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 4 uses
  %i.c = and i32 %3, 536870912
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ugt i64 %2, 3
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 1                ; 2 uses
  %i.g = icmp eq i32 %i.f, 65279
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.f, -131072                ; 2 uses
  %spec.select = select i1 %i.h, i32 0, i32 %3
  %spec.select26 = select i1 %i.h, i64 4, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.024 = phi i32 [ %3, %bb.a ], [ %spec.select, %bb.c ]
  %.0 = phi i64 [ 0, %bb.a ], [ %spec.select26, %bb.c ] ; 4 uses
  %i.i = or disjoint i64 %.0, 3
  %i.j = icmp ult i64 %i.i, %2
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.thread:                                          ; preds = %bb.b
  %i.k = icmp ugt i64 %2, 7
  br i1 %i.k, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.l = icmp sgt i32 %.024, -1
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  %.127.ph = phi i64 [ 4, %.thread ], [ %.0, %.lr.ph ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.127.us = phi i64 [ %i.p, %.lr.ph.split.us ], [ %.0, %.lr.ph ] ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 %.127.us
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  tail call void @wmem_strbuf_append_unichar_validated(ptr noundef %i.b, i32 noundef %i.o)
  %i.p = add nuw i64 %.127.us, 4                  ; 3 uses
  %i.q = or disjoint i64 %i.p, 3
  %i.r = icmp ult i64 %i.q, %2
  br i1 %i.r, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !13

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.127 = phi i64 [ %i.u, %.lr.ph.split ], [ %.127.ph, %.lr.ph.split.preheader ] ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %.127
  %i.t = load i32, ptr %i.s, align 1
  tail call void @wmem_strbuf_append_unichar_validated(ptr noundef %i.b, i32 noundef %i.t)
  %i.u = add nuw i64 %.127, 4                     ; 3 uses
  %i.v = or disjoint i64 %i.u, 3
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %.lr.ph.split, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.split.us, %.lr.ph.split, %.thread, %bb.d
  %.1.lcssa = phi i64 [ %.0, %bb.d ], [ 4, %.thread ], [ %i.u, %.lr.ph.split ], [ %i.p, %.lr.ph.split.us ]
  %i.x = icmp ult i64 %.1.lcssa, %2
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef 65533)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.y = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.y
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_ts_23_038_7bits_string_packed(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %3, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 4 uses
  %.not48 = icmp eq i64 %3, 0
  br i1 %.not48, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = trunc i64 %2 to i32
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %spec.store.select = select i1 %.not, i32 7, i32 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.047 = phi i32 [ %.1, %bb.f ], [ %spec.store.select, %.lr.ph.preheader ] ; 5 uses
  %.03346 = phi i8 [ %.2, %bb.f ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03545 = phi i32 [ %.136, %bb.f ], [ 0, %.lr.ph.preheader ]
  %.03744 = phi i64 [ %.239, %bb.f ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04043 = phi ptr [ %i.aa, %bb.f ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.04043, align 1
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = lshr i32 %i.f, %.047                     ; 2 uses
  %i.h = trunc nuw i32 %i.g to i8
  %i.i = icmp ne ptr %1, %.04043
  %i.j = icmp eq i32 %.047, 7
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = sub i32 7, %.047
  %i.l = shl i32 %i.f, %i.k
  %i.m = and i32 %i.l, 127
  %i.n = or i32 %i.m, %.03545
  %i.o = trunc nuw i32 %i.n to i8
  %i.p = trunc nuw i8 %.03346 to i1
  %i.q = tail call fastcc zeroext i1 @handle_ts_23_038_char(ptr noundef %i.b, i8 noundef zeroext %i.o, i1 noundef zeroext %i.p)
  %i.r = zext i1 %i.q to i8
  %i.s = add nuw i64 %.03744, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.138 = phi i64 [ %i.s, %bb.b ], [ %.03744, %.lr.ph ] ; 3 uses
  %.134 = phi i8 [ %i.r, %bb.b ], [ %.03346, %.lr.ph ] ; 2 uses
  %i.t = icmp eq i32 %.047, 1
  %i.u = icmp ult i64 %.138, %3
  %or.cond42 = and i1 %i.t, %i.u
  br i1 %or.cond42, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = trunc nuw i8 %.134 to i1
  %i.w = tail call fastcc zeroext i1 @handle_ts_23_038_char(ptr noundef %i.b, i8 noundef zeroext %i.h, i1 noundef zeroext %i.v)
  %i.x = zext i1 %i.w to i8
  %i.y = add nuw i64 %.138, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = add i32 %.047, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.239 = phi i64 [ %i.y, %bb.d ], [ %.138, %bb.e ] ; 2 uses
  %.136 = phi i32 [ 0, %bb.d ], [ %i.g, %bb.e ]
  %.2 = phi i8 [ %i.x, %bb.d ], [ %.134, %bb.e ]  ; 2 uses
  %.1 = phi i32 [ 7, %bb.d ], [ %i.z, %bb.e ]
  %i.aa = getelementptr i8, ptr %.04043, i64 1
  %i.ab = icmp ult i64 %.239, %3
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.f
  %i.ac = trunc nuw i8 %.2 to i1
  br i1 %i.ac, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %._crit_edge
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef 65533)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.g, %._crit_edge
  %i.ad = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.ad
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @handle_ts_23_038_char(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 27
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp sgt i8 %1, -1
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %bb.d, label %GSM_to_UNICHAR.exit

bb.d:                                             ; preds = %bb.c
  switch i8 %1, label %bb.n [
    i8 10, label %.sink.split
    i8 20, label %bb.e
    i8 40, label %bb.f
    i8 41, label %bb.g
    i8 47, label %bb.h
    i8 60, label %bb.i
    i8 61, label %bb.j
    i8 62, label %bb.k
    i8 64, label %bb.l
    i8 101, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  br label %.sink.split

bb.i:                                             ; preds = %bb.d
  br label %.sink.split

bb.j:                                             ; preds = %bb.d
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  br label %.sink.split

bb.l:                                             ; preds = %bb.d
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  br label %.sink.split

bb.n:                                             ; preds = %bb.d
  br label %.sink.split

GSM_to_UNICHAR.exit:                              ; preds = %bb.c
  %i.b = zext nneg i8 %1 to i64
  %i.c = getelementptr [2 x i8], ptr @gsm_default_alphabet, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %GSM_to_UNICHAR.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.sink = phi i32 [ 12, %bb.d ], [ %i.e, %GSM_to_UNICHAR.exit ], [ 65533, %bb.n ], [ 8364, %bb.m ], [ 94, %bb.e ], [ 123, %bb.f ], [ 125, %bb.g ], [ 92, %bb.h ], [ 91, %bb.i ], [ 126, %bb.j ], [ 93, %bb.k ], [ 124, %bb.l ], [ 65533, %bb.b ]
  %.1.ph = phi i1 [ false, %bb.d ], [ false, %GSM_to_UNICHAR.exit ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ %2, %bb.b ]
  tail call void @wmem_strbuf_append_unichar(ptr noundef %0, i32 noundef %.0.sink)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_ts_23_038_7bits_string_unpacked(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i1 [ %i.e, %.lr.ph ], [ false, %bb.a ]
  %.0811 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.0910 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.0910, i64 1
  %i.d = load i8, ptr %.0910, align 1
  %i.e = tail call fastcc zeroext i1 @handle_ts_23_038_char(ptr noundef %i.b, i8 noundef zeroext %i.d, i1 noundef zeroext %.012)
  %i.f = add nuw i64 %.0811, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.g
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_etsi_ts_102_221_annex_a_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @wmem_strbuf_new(ptr noundef %0, ptr noundef nonnull @.str)
  br label %get_ucs_2_string.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %i.e = add i64 %2, -1                           ; 4 uses
  %i.f = icmp eq i8 %i.c, -128
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %2) ; 4 uses
  %i.h = icmp ugt i64 %i.e, 1
  br i1 %i.h, label %.lr.ph.split.us.i, label %._crit_edge.i

.lr.ph.split.us.i:                                ; preds = %bb.d, %.lr.ph.split.us.i
  %.134.us.i = phi i64 [ %i.o, %.lr.ph.split.us.i ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.134.us.i ; 2 uses
  %.val30.us.i = load i8, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.i, i64 1
  %.val31.us.i = load i8, ptr %i.j, align 1
  %i.k = zext i8 %.val30.us.i to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = zext i8 %.val31.us.i to i32
  %i.n = or disjoint i32 %i.l, %i.m
  tail call void @wmem_strbuf_append_unichar_validated(ptr noundef %i.g, i32 noundef %i.n)
  %i.o = add nuw i64 %.134.us.i, 2                ; 3 uses
  %i.p = or disjoint i64 %i.o, 1
  %i.q = icmp ult i64 %i.p, %i.e
  br i1 %i.q, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i, %bb.d
  %.1.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.o, %.lr.ph.split.us.i ]
  %i.r = icmp ult i64 %.1.lcssa.i, %i.e
  br i1 %i.r, label %bb.e, label %get_ucs_2_string.exit

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.g, i32 noundef 65533)
  br label %get_ucs_2_string.exit

bb.f:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.e, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @wmem_strbuf_new(ptr noundef %0, ptr noundef nonnull @.str)
  br label %get_ucs_2_string.exit

bb.h:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.d, align 1               ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 2          ; 2 uses
  %i.w = zext i8 %i.u to i64                      ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.y) ; 7 uses
  switch i8 %i.c, label %get_ucs_2_string.exit [
    i8 -127, label %bb.i
    i8 -126, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %2, 2
  br i1 %i.aa, label %get_ucs_2_string.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.v, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 7
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ae = and i64 %2, -2
  %or.cond = icmp eq i64 %i.ae, 2
  br i1 %or.cond, label %get_ucs_2_string.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %1, i64 3
  %i.ag = load i8, ptr %i.v, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = load i8, ptr %i.af, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sink78 = phi i64 [ 4, %bb.l ], [ 3, %bb.j ]   ; 2 uses
  %.058 = phi i32 [ %i.al, %bb.l ], [ %i.ad, %bb.j ]
  %i.am = getelementptr i8, ptr %1, i64 %.sink78
  %.not73 = icmp eq i8 %i.u, 0
  %.not = icmp eq i64 %2, %.sink78
  %or.cond80 = or i1 %.not73, %.not
  br i1 %or.cond80, label %get_ucs_2_string.exit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.m, %bb.p
  %.05472 = phi i1 [ %.256.ph, %bb.p ], [ false, %bb.m ] ; 2 uses
  %.05771 = phi i64 [ %i.au, %bb.p ], [ 0, %bb.m ]
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.split
  %i.ap = tail call fastcc zeroext i1 @handle_ts_23_038_char(ptr noundef %i.z, i8 noundef zeroext %i.an, i1 noundef zeroext %.05472)
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.split
  %i.aq = and i8 %i.an, 127
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = add nuw nsw i32 %.058, %i.ar
  %i.at = and i32 %i.as, 65535
  tail call void @wmem_strbuf_append_unichar_validated(ptr noundef %i.z, i32 noundef %i.at)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.256.ph = phi i1 [ %.05472, %bb.o ], [ %i.ap, %bb.n ]
  %i.au = add nuw nsw i64 %.05771, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.w
  br i1 %exitcond.not, label %get_ucs_2_string.exit, label %.lr.ph.split, !llvm.loop !16

get_ucs_2_string.exit:                            ; preds = %bb.p, %bb.m, %bb.h, %bb.k, %bb.i, %bb.e, %._crit_edge.i, %bb.g, %bb.b
  %.sink79 = phi ptr [ %i.z, %bb.h ], [ %i.g, %._crit_edge.i ], [ %i.z, %bb.m ], [ %i.z, %bb.k ], [ %i.z, %bb.i ], [ %i.g, %bb.e ], [ %i.t, %bb.g ], [ %i.b, %bb.b ], [ %i.z, %bb.p ]
  %i.av = tail call ptr @wmem_strbuf_finalize(ptr noundef %.sink79)
  ret ptr %i.av
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_ascii_7bits_string(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %3, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 3 uses
  %.not39 = icmp eq i64 %3, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = trunc i64 %2 to i32
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %spec.store.select = select i1 %.not, i32 7, i32 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.038 = phi i32 [ %.1, %bb.e ], [ %spec.store.select, %.lr.ph.preheader ] ; 4 uses
  %.02837 = phi i32 [ %.129, %bb.e ], [ 0, %.lr.ph.preheader ]
  %.03036 = phi i64 [ %.2, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03235 = phi ptr [ %i.u, %bb.e ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.03235, align 1
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = add i32 %.038, -1                        ; 2 uses
  %i.h = shl i32 %i.f, %i.g
  %i.i = and i32 %i.h, 127                        ; 2 uses
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = icmp ne ptr %1, %.03235
  %i.l = icmp eq i32 %.038, 7
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = sub i32 8, %.038
  %i.n = lshr i32 %i.f, %i.m
  %i.o = or i32 %i.n, %.02837
  %i.p = trunc nuw i32 %i.o to i8
  tail call void @wmem_strbuf_append_c(ptr noundef %i.b, i8 noundef signext %i.p)
  %i.q = add nuw i64 %.03036, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.131 = phi i64 [ %i.q, %bb.b ], [ %.03036, %.lr.ph ] ; 3 uses
  %i.r = icmp eq i32 %.038, 1
  %i.s = icmp ult i64 %.131, %3
  %or.cond34 = and i1 %i.r, %i.s
  br i1 %or.cond34, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @wmem_strbuf_append_c(ptr noundef %i.b, i8 noundef signext %i.j)
  %i.t = add nuw i64 %.131, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.2 = phi i64 [ %i.t, %bb.d ], [ %.131, %bb.c ] ; 2 uses
  %.129 = phi i32 [ 0, %bb.d ], [ %i.i, %bb.c ]
  %.1 = phi i32 [ 7, %bb.d ], [ %i.g, %bb.c ]
  %i.u = getelementptr i8, ptr %.03235, i64 1
  %i.v = icmp ult i64 %.2, %3
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.w = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.w
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_nonascii_unichar2_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.a) ; 2 uses
  %.not10 = icmp eq i64 %2, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0911 = phi i64 [ %i.i, %.lr.ph ], [ %2, %bb.a ]
  %i.c = load i8, ptr %.012, align 1
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr [2 x i8], ptr %3, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = zext i16 %i.f to i32
  tail call void @wmem_strbuf_append_unichar(ptr noundef %i.b, i32 noundef %i.g)
  %i.h = getelementptr i8, ptr %.012, i64 1
  %i.i = add i64 %.0911, -1                       ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.j = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.b)
  ret ptr %i.j
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_gb18030_string(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_iconv_open(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %.split6, label %.split

end_hunk_0
