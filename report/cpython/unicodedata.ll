Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodedata?download=true
inline.NumInlined: 234
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Segment_dealloc:bb.a

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit7, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Segment_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not9.not = icmp eq i32 %i.c, 0
  br i1 %.not9.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @Segment_str(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63
  %i.g = tail call ptr @PyUnicode_Substring(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #10
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @Segment_repr(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.561, i64 noundef %i.b, i64 noundef %i.d) #10
  ret ptr %i.e
}

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @GBI_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i6 = icmp sgt i32 %i.d, -1
  br i1 %.not.i6, label %bb.b, label %Py_DECREF.exit7

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %Py_DECREF.exit7

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #10
  br label %Py_DECREF.exit7

Py_DECREF.exit7:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr i8, ptr %.val, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  tail call void %i.h(ptr noundef nonnull %0) #10
  %i.i = load i32, ptr %.val, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %Py_DECREF.exit7
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %.val, align 8, !tbaa !23
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit7, %bb.d, %bb.e
  ret void
}

declare ptr @PyObject_SelfIter(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @GBI_iternext(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !123  ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  %.not.i = icmp slt i64 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %_Py_NextGraphemeBreak.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = lshr i32 %i.h, 2
  %i.j = and i32 %i.i, 7
  %i.k = and i32 %i.h, 32
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.h, 64
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.f, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.f, i64 56
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.c ], [ %.val4.i.i, %bb.d ] ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.promoted.i = load i64, ptr %i.n, align 8, !tbaa !45 ; 3 uses
  %i.o = icmp slt i64 %.promoted.i, %i.e
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i
  %i.p = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.promoted70.i = load i32, ptr %i.p, align 4, !tbaa !124
  %.promoted71.i = load i8, ptr %i.q, align 4, !tbaa !125
  %.promoted72.i = load i32, ptr %i.r, align 8, !tbaa !126
  %.promoted73.i = load i32, ptr %i.s, align 8, !tbaa !127
  %i.t = trunc nuw i8 %.promoted71.i to i1
  br label %bb.e

bb.e:                                             ; preds = %grapheme_break.exit.thread.i, %.lr.ph.i
  %i.u = phi i32 [ %.promoted73.i, %.lr.ph.i ], [ %i.aw, %grapheme_break.exit.thread.i ] ; 8 uses
  %i.v = phi i32 [ %.promoted72.i, %.lr.ph.i ], [ %.0.i48.i, %grapheme_break.exit.thread.i ] ; 3 uses
  %i.w = phi i1 [ %i.t, %.lr.ph.i ], [ %.0.i46.i, %grapheme_break.exit.thread.i ] ; 2 uses
  %i.x = phi i32 [ %.promoted70.i, %.lr.ph.i ], [ %.0.i45.i, %grapheme_break.exit.thread.i ] ; 2 uses
  %storemerge6869.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %storemerge.i, %grapheme_break.exit.thread.i ] ; 8 uses
  switch i32 %i.j, label %PyUnicode_READ.exit.i [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %.0.i.i, i64 %storemerge6869.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ.exit.thread.i

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr [2 x i8], ptr %.0.i.i, i64 %storemerge6869.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !36
  %i.ad = zext i16 %i.ac to i32
  br label %PyUnicode_READ.exit.thread.i

PyUnicode_READ.exit.i:                            ; preds = %bb.e
  %i.ae = getelementptr [4 x i8], ptr %.0.i.i, i64 %storemerge6869.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 1114111
  br i1 %i.ag, label %_getrecord_ex.exit.i, label %PyUnicode_READ.exit.thread.i

PyUnicode_READ.exit.thread.i:                     ; preds = %PyUnicode_READ.exit.i, %bb.g, %bb.f
  %.0.i4352.i = phi i32 [ %i.af, %PyUnicode_READ.exit.i ], [ %i.ad, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ah = lshr i32 %.0.i4352.i, 7
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr [2 x i8], ptr @index1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !36
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 7
  %i.an = and i32 %.0.i4352.i, 127
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr [2 x i8], ptr @index2, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !36
  %i.as = zext i16 %i.ar to i64
  br label %_getrecord_ex.exit.i

_getrecord_ex.exit.i:                             ; preds = %PyUnicode_READ.exit.thread.i, %PyUnicode_READ.exit.i
  %.0.i44.i = phi i64 [ %i.as, %PyUnicode_READ.exit.thread.i ], [ 0, %PyUnicode_READ.exit.i ]
  %i.at = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i44.i ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 6
  %i.av = load i8, ptr %i.au, align 1, !tbaa !40  ; 10 uses
  %i.aw = zext i8 %i.av to i32                    ; 4 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !42
  %.not61.i = icmp eq i8 %i.ay, 0
  br i1 %.not61.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_getrecord_ex.exit.i
  %i.az = icmp eq i32 %i.x, 2
  %i.ba = select i1 %i.az, i32 3, i32 1
  br label %update_ext_pict_state.exit.i

bb.i:                                             ; preds = %_getrecord_ex.exit.i
  %i.bb = and i32 %i.x, -3
  %or.cond.i.i = icmp eq i32 %i.bb, 1
  br i1 %or.cond.i.i, label %bb.j, label %update_ext_pict_state.exit.i

bb.j:                                             ; preds = %bb.i
  %switch.selectcmp.i.i = icmp eq i8 %i.av, 13
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 0
  %switch.selectcmp9.i.i = icmp eq i8 %i.av, 5
  %switch.select10.i.i = select i1 %switch.selectcmp9.i.i, i32 1, i32 %switch.select.i.i
  br label %update_ext_pict_state.exit.i

update_ext_pict_state.exit.i:                     ; preds = %bb.j, %bb.i, %bb.h
  %.0.i45.i = phi i32 [ %i.ba, %bb.h ], [ %switch.select10.i.i, %bb.j ], [ 0, %bb.i ] ; 3 uses
  store i32 %.0.i45.i, ptr %i.p, align 4, !tbaa !124
  %i.bc = icmp eq i8 %i.av, 6                     ; 2 uses
  %i.bd = xor i1 %i.w, true
  %.0.i46.i = and i1 %i.bc, %i.bd                 ; 2 uses
  %i.be = zext i1 %.0.i46.i to i8
  store i8 %i.be, ptr %i.q, align 4, !tbaa !125
  %i.bf = getelementptr i8, ptr %i.at, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !41  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 2
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %update_ext_pict_state.exit.i
  %i.bi = icmp eq i32 %i.v, 2
  %i.bj = select i1 %i.bi, i32 3, i32 1
  br label %update_incb_state.exit.i

bb.l:                                             ; preds = %update_ext_pict_state.exit.i
  %.not.i47.i = icmp eq i32 %i.v, 0
  br i1 %.not.i47.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.bg, label %bb.o [
    i8 3, label %bb.n
    i8 1, label %update_incb_state.exit.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i32 %i.v, 2
  %i.bl = select i1 %i.bk, i32 2, i32 1
  br label %update_incb_state.exit.i

bb.o:                                             ; preds = %bb.m, %bb.l
  br label %update_incb_state.exit.i

update_incb_state.exit.i:                         ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.0.i48.i = phi i32 [ %i.bj, %bb.k ], [ %i.bl, %bb.n ], [ 0, %bb.o ], [ 2, %bb.m ] ; 3 uses
  store i32 %.0.i48.i, ptr %i.r, align 8, !tbaa !126
  store i32 %i.aw, ptr %i.s, align 8, !tbaa !127
  %.not42.i = icmp eq i64 %storemerge6869.i, %i.c
  br i1 %.not42.i, label %grapheme_break.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %update_incb_state.exit.i
  %i.bm = icmp eq i32 %i.u, 2
  %i.bn = icmp eq i8 %i.av, 3
  %or.cond.i49.i = and i1 %i.bm, %i.bn
  br i1 %or.cond.i49.i, label %grapheme_break.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = add i32 %i.u, -2
  %or.cond5.i.i = icmp ult i32 %i.bo, 3
  br i1 %or.cond5.i.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = and i32 %i.aw, 254                      ; 2 uses
  %or.cond7.i.i = icmp eq i32 %i.bp, 2
  %i.bq = icmp eq i8 %i.av, 4
  %or.cond9.i.i = or i1 %i.bq, %or.cond7.i.i
  br i1 %or.cond9.i.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = icmp eq i32 %i.u, 8
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %or.cond11.i.i = icmp eq i32 %i.bp, 8
  %i.bs = add i8 %i.av, -11
  %i.bt = icmp ult i8 %i.bs, 2
  %or.cond15.i.i = or i1 %i.bt, %or.cond11.i.i
  br i1 %or.cond15.i.i, label %grapheme_break.exit.thread.i, label %.thread.i.i

bb.u:                                             ; preds = %bb.s
  %i.bu = and i32 %i.u, -3
  %or.cond17.i.i = icmp eq i32 %i.bu, 9
  %i.bv = add i8 %i.av, -9
  %or.cond19.i.i = icmp ult i8 %i.bv, 2
  %or.cond57.i.i = select i1 %or.cond17.i.i, i1 %or.cond19.i.i, i1 false
  br i1 %or.cond57.i.i, label %grapheme_break.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.u, %bb.t
  %i.bw = icmp eq i32 %i.u, 12
  %i.bx = icmp eq i32 %i.u, 10
  %or.cond21.i.i = or i1 %i.bw, %i.bx
  %i.by = icmp eq i8 %i.av, 10
  %or.cond23.i.i = and i1 %or.cond21.i.i, %i.by
  %i.bz = and i32 %i.aw, 247
  %or.cond25.i.i = icmp eq i32 %i.bz, 5
  %or.cond59.i.i = or i1 %or.cond23.i.i, %or.cond25.i.i
  %i.ca = icmp eq i8 %i.av, 7
  %or.cond60.i.i = or i1 %i.ca, %or.cond59.i.i
  %i.cb = icmp eq i32 %i.u, 1
  %or.cond61.i.i = or i1 %i.cb, %or.cond60.i.i
  %i.cc = icmp eq i32 %.0.i48.i, 3
  %or.cond62.i.i = or i1 %or.cond61.i.i, %i.cc
  %i.cd = icmp eq i32 %.0.i45.i, 3
  %or.cond63.i.i = or i1 %i.cd, %or.cond62.i.i
  br i1 %or.cond63.i.i, label %grapheme_break.exit.thread.i, label %grapheme_break.exit.i

grapheme_break.exit.i:                            ; preds = %.thread.i.i
  %i.ce = icmp eq i32 %i.u, 6
  %or.cond58.not.i.not64.i = and i1 %i.ce, %i.bc
  %spec.select.i.not.i = and i1 %i.w, %or.cond58.not.i.not64.i
  br i1 %spec.select.i.not.i, label %grapheme_break.exit.thread.i, label %.thread.i

.thread.i:                                        ; preds = %grapheme_break.exit.i, %bb.r, %bb.q
  store i64 %storemerge6869.i, ptr %i.b, align 8, !tbaa !46
  %storemerge60.i = add nsw i64 %storemerge6869.i, 1
  store i64 %storemerge60.i, ptr %i.n, align 8, !tbaa !45
  br label %_Py_NextGraphemeBreak.exit

grapheme_break.exit.thread.i:                     ; preds = %grapheme_break.exit.i, %.thread.i.i, %bb.u, %bb.t, %bb.p, %update_incb_state.exit.i
  %storemerge.i = add i64 %storemerge6869.i, 1    ; 3 uses
  store i64 %storemerge.i, ptr %i.n, align 8, !tbaa !45
  %exitcond.not.i = icmp eq i64 %storemerge.i, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !122

._crit_edge.i:                                    ; preds = %grapheme_break.exit.thread.i, %_PyUnicode_DATA.exit.i
  %.lcssa.i = phi i64 [ %.promoted.i, %_PyUnicode_DATA.exit.i ], [ %i.e, %grapheme_break.exit.thread.i ] ; 2 uses
  store i64 %.lcssa.i, ptr %i.b, align 8, !tbaa !46
  br label %_Py_NextGraphemeBreak.exit

_Py_NextGraphemeBreak.exit:                       ; preds = %.thread.i, %._crit_edge.i
  %.3.i = phi i64 [ %.lcssa.i, %._crit_edge.i ], [ %storemerge6869.i, %.thread.i ] ; 2 uses
  %i.cf = icmp slt i64 %.3.i, 0
  br i1 %i.cf, label %_Py_NextGraphemeBreak.exit.thread, label %bb.v

bb.v:                                             ; preds = %_Py_NextGraphemeBreak.exit
  %i.cg = getelementptr i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.cg, align 8, !tbaa !24
  %i.ch = tail call ptr @PyType_GetModule(ptr noundef %.val18) #10
  %i.ci = getelementptr i8, ptr %i.ch, i64 24
  %.val = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.cj = load ptr, ptr %.val, align 8, !tbaa !20
  %i.ck = tail call ptr @_PyObject_GC_New(ptr noundef %i.cj) #10 ; 6 uses
  %.not = icmp eq ptr %i.ck, null
  br i1 %.not, label %_Py_NextGraphemeBreak.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !65  ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !23 ; 2 uses
  %i.cn = icmp ugt i32 %i.cm, -1073741825
  br i1 %i.cn, label %_Py_NewRef.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = add nuw i32 %i.cm, 1
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !23
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.w, %bb.x
  %i.cp = getelementptr i8, ptr %i.ck, i64 16
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !60
  %i.cq = getelementptr i8, ptr %i.ck, i64 24
  store i64 %i.c, ptr %i.cq, align 8, !tbaa !62
  %i.cr = getelementptr i8, ptr %i.ck, i64 32
  store i64 %.3.i, ptr %i.cr, align 8, !tbaa !63
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.ck) #10
  br label %_Py_NextGraphemeBreak.exit.thread

_Py_NextGraphemeBreak.exit.thread:                ; preds = %bb.a, %_Py_NewRef.exit, %bb.v, %_Py_NextGraphemeBreak.exit
  %.1 = phi ptr [ null, %_Py_NextGraphemeBreak.exit ], [ %i.ck, %_Py_NewRef.exit ], [ null, %bb.v ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @GBI_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not9.not = icmp eq i32 %i.c, 0
  br i1 %.not9.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

declare ptr @PyType_GetModule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ucd_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  tail call void @PyObject_GC_Del(ptr noundef %0) #10
  %i.b = load i32, ptr %.val, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %.val, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare i32 @_PyObject_VisitType(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #1

declare void @PyObject_GC_Del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @capi_getucname(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_getucname(ptr noundef null, i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @capi_getcode(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_getcode(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_check_alias_and_seq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %3, 0
  %.pre.i = load i32, ptr %2, align 4, !tbaa !10  ; 3 uses
  %i.b = add i32 %.pre.i, -983552
  %or.cond.i = icmp ult i32 %i.b, 461
  %or.cond10.i = select i1 %.not.i, i1 %or.cond.i, i1 false
  br i1 %or.cond10.i, label %_check_alias_and_seq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %.pre.i, -983040
  %or.cond9.i = icmp ult i32 %i.c, 481
  br i1 %or.cond9.i, label %bb.d, label %_check_alias_and_seq.exit

bb.d:                                             ; preds = %bb.c
  %i.d = zext nneg i32 %.pre.i to i64
  %i.e = getelementptr [4 x i8], ptr @name_aliases, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -3932160
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  store i32 %i.g, ptr %2, align 4, !tbaa !10
  br label %_check_alias_and_seq.exit

_check_alias_and_seq.exit:                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @unicodedata_destroy_capi(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.576) #10
  tail call void @PyMem_Free(ptr noundef %i.a) #10
  ret void
}

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_0
