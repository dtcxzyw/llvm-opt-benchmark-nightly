Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uchar?download=true
inline.NumInlined: 17
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@u_isprintPOSIX_78:bb.a
  %i.cd = lshr i32 -323586, %i.cc
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = and i8 %i.ce, 1
  br label %bb.h

bb.h:                                             ; preds = %.thread15, %.thread, %u_isgraphPOSIX_78.exit, %bb.e
  %i.cg = phi i8 [ 1, %bb.e ], [ %i.cf, %u_isgraphPOSIX_78.exit ], [ 1, %.thread ], [ 1, %.thread15 ]
  ret i8 %i.cg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @u_isgraphPOSIX_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink16 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.z = phi i64 [ 4756, %bb.e ], [ %i.y, %.sink.split ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9
  %i.ac = and i16 %i.ab, 31
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = lshr i32 -323586, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = and i8 %i.af, 1
  ret i8 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @u_isgraph_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink16 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.z = phi i64 [ 4756, %bb.e ], [ %i.y, %.sink.split ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9
  %i.ac = and i16 %i.ab, 31
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = lshr i32 -389122, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = and i8 %i.af, 1
  ret i8 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @u_ispunct_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink16 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.z = phi i64 [ 4756, %bb.e ], [ %i.y, %.sink.split ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9
  %i.ac = and i16 %i.ab, 31
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = lshr i32 821559296, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = and i8 %i.af, 1
  ret i8 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @u_isIDIgnorable_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 160
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %1 = icmp ugt i32 %0, 159
  %i.b = add i32 %0, -32                          ; 2 uses
  %i.c = icmp ult i32 %i.b, 95
  %narrow.i.not = or i1 %1, %i.c
  br i1 %narrow.i.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond = icmp ult i32 %i.b, -23
  %i.d = add nsw i32 %0, -14
  %i.e = icmp ult i32 %i.d, 14
  %narrow = select i1 %or.cond, i1 true, i1 %i.e
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %0, 55296
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i32 %0, 5
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i32 %0, 65536
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = icmp samesign ult i32 %0, 56320
  %i.j = select i1 %i.i, i32 320, i32 0
  %i.k = lshr i32 %0, 5
  %i.l = add nuw nsw i32 %i.j, %i.k
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.m = icmp samesign ugt i32 %0, 1114111
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = lshr i32 %0, 11
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4160
  %i.r = load i16, ptr %i.q, align 2, !tbaa !9
  %i.s = zext i16 %i.r to i32
  %i.t = lshr i32 %0, 5
  %i.u = and i32 %i.t, 63
  %i.v = add nuw nsw i32 %i.u, %i.s
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.i, %bb.g
  %.sink29 = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.i ], [ %i.g, %bb.e ]
  %i.w = zext nneg i32 %.sink29 to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !9
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 2
  %i.ab = and i32 %0, 31
  %i.ac = add nuw nsw i32 %i.aa, %i.ab
  %i.ad = zext nneg i32 %i.ac to i64
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %i.ae = phi i64 [ 4756, %bb.h ], [ %i.ad, %.sink.split ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !9
  %i.ah = and i16 %i.ag, 31
  %i.ai = icmp eq i16 %i.ah, 16
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.j
  %.0.shrunk = phi i1 [ %i.ai, %bb.j ], [ false, %bb.b ], [ %narrow, %bb.c ]
  %.0 = zext i1 %.0.shrunk to i8
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @u_isJavaIDStart_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink16 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.z = phi i64 [ 4756, %bb.e ], [ %i.y, %.sink.split ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9
  %i.ac = and i16 %i.ab, 31
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = lshr i32 37748798, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = and i8 %i.af, 1
  ret i8 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @u_isJavaIDPart_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296                   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.d
  %.sink18 = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink18 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.z = phi i64 [ 4756, %bb.e ], [ %i.y, %.sink.split ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9
  %i.ac = and i16 %i.ab, 31
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = and i32 %i.ae, 37750654
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp slt i32 %0, 160
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %1 = icmp ugt i32 %0, 159
  %i.ah = add i32 %0, -32                         ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 95
  %narrow.i.not.i = or i1 %1, %i.ai
  br i1 %narrow.i.not.i, label %u_isIDIgnorable_78.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond.i = icmp ult i32 %i.ah, -23
  %i.aj = add nsw i32 %0, -14
  %i.ak = icmp ult i32 %i.aj, 14
  %narrow.i = select i1 %or.cond.i, i1 true, i1 %i.ak
  br label %u_isIDIgnorable_78.exit

bb.k:                                             ; preds = %bb.h
  br i1 %i.a, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = lshr i32 %0, 5
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.am = icmp samesign ult i32 %0, 65536
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = icmp samesign ult i32 %0, 56320
  %i.ao = select i1 %i.an, i32 320, i32 0
  %i.ap = lshr i32 %0, 5
  %i.aq = add nuw nsw i32 %i.ao, %i.ap
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp samesign ugt i32 %0, 1114111
  br i1 %i.ar, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = lshr i32 %0, 11
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4160
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !9
  %i.ax = zext i16 %i.aw to i32
  %i.ay = lshr i32 %0, 5
  %i.az = and i32 %i.ay, 63
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.n, %bb.l
  %.sink29.i = phi i32 [ %i.aq, %bb.n ], [ %i.ba, %bb.p ], [ %i.al, %bb.l ]
  %i.bb = zext nneg i32 %.sink29.i to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !9
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 2
  %i.bg = and i32 %0, 31
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i, %bb.o
  %i.bj = phi i64 [ 4756, %bb.o ], [ %i.bi, %.sink.split.i ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !9
  %i.bm = and i16 %i.bl, 31
  %i.bn = icmp eq i16 %i.bm, 16
  br label %u_isIDIgnorable_78.exit

u_isIDIgnorable_78.exit:                          ; preds = %bb.i, %bb.j, %bb.q
  %.0.shrunk.i = phi i1 [ %i.bn, %bb.q ], [ false, %bb.i ], [ %narrow.i, %bb.j ]
  %.0.i = zext i1 %.0.shrunk.i to i8
  br label %bb.r

bb.r:                                             ; preds = %u_isIDIgnorable_78.exit, %bb.g
  %i.bo = phi i8 [ 1, %bb.g ], [ %.0.i, %u_isIDIgnorable_78.exit ]
  ret i8 %i.bo
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 10) i32 @u_charDigitValue_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.d
  %.sink22 = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink22 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.z = phi i64 [ 4756, %bb.e ], [ %i.y, %.sink.split ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9  ; 2 uses
  %i.ac = icmp ult i16 %i.ab, 704
  %i.ad = lshr i16 %i.ab, 6
  %i.ae = zext nneg i16 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -1
  %.0 = select i1 %i.ac, i32 %i.af, i32 -1
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @u_getNumericValue_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.d
  %.sink75 = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink75 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.z = phi i64 [ 4756, %bb.e ], [ %i.y, %.sink.split ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9  ; 9 uses
  %i.ac = lshr i16 %i.ab, 6                       ; 2 uses
  %i.ad = zext nneg i16 %i.ac to i32              ; 13 uses
  %i.ae = icmp eq i16 %i.ac, 0
  br i1 %i.ae, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ult i16 %i.ab, 704
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.ad, -1
  %i.ah = uitofp nneg i32 %i.ag to double
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp ult i16 %i.ab, 1344
  br i1 %i.ai, label %bb.k, label %bb.l
end_hunk_0
begin_hunk_1_@u_forDigit_78
define range(i32 -2147483600, -2147483648) i32 @u_forDigit_78(i32 noundef %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %1, -2
  %i.b = icmp ult i8 %i.a, 35
  %i.c = sext i8 %1 to i32
  %.not = icmp ult i32 %0, %i.c
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %0, 10
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %0, 48
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = add nuw nsw i32 %0, 87
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @u_getUnicodeVersion_78(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 17, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 65536) i32 @u_getMainProperties_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink16 to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.z = phi i64 [ 4756, %bb.e ], [ %i.y, %.sink.split ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL15propsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9
  %i.ac = zext i16 %i.ab to i32
  ret i32 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 50813490) i32 @uprv_getMaxValues_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.uprv_getMaxValues_78, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @u_charAge_78(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = lshr i32 %0, 5
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %u_getUnicodeProperties_78.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.e, %bb.c
  %.sink23.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.g ], [ %i.b, %bb.c ]
  %i.r = zext nneg i32 %.sink23.i to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %u_getUnicodeProperties_78.exit

u_getUnicodeProperties_78.exit:                   ; preds = %bb.f, %.sink.split.i
  %i.z = phi i64 [ 6052, %bb.f ], [ %i.y, %.sink.split.i ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL12propsVectors, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14 ; 2 uses
  %i.af = lshr i32 %i.ae, 24
  %i.ag = lshr i32 %i.ae, 26
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  store i8 %i.ah, ptr %1, align 1, !tbaa !22
  %i.ai = trunc nuw i32 %i.af to i8
  %i.aj = and i8 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.al, align 1, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 0, ptr %i.am, align 1, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %u_getUnicodeProperties_78.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -1, 65536) i32 @uscript_getScript_78(i32 noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !16
  %2 = icmp slt i32 %i.b, 1
  br i1 %2, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i32 %0, 1114111
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4, !tbaa !16
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 55296
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = lshr i32 %0, 5
  br label %u_getUnicodeProperties_78.exit

bb.g:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i32 %0, 65536
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.g = icmp samesign ult i32 %0, 56320
  %i.h = select i1 %i.g, i32 320, i32 0
  %i.i = lshr i32 %0, 5
  %i.j = add nuw nsw i32 %i.h, %i.i
  br label %u_getUnicodeProperties_78.exit

bb.i:                                             ; preds = %bb.g
  %i.k = lshr i32 %0, 11
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4160
  %i.o = load i16, ptr %i.n, align 2, !tbaa !9
  %i.p = zext i16 %i.o to i32
  %i.q = lshr i32 %0, 5
  %i.r = and i32 %i.q, 63
  %i.s = add nuw nsw i32 %i.r, %i.p
  br label %u_getUnicodeProperties_78.exit

u_getUnicodeProperties_78.exit:                   ; preds = %bb.f, %bb.h, %bb.i
  %.sink23.i = phi i32 [ %i.j, %bb.h ], [ %i.s, %bb.i ], [ %i.e, %bb.f ]
  %i.t = zext nneg i32 %.sink23.i to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !9
  %i.w = zext i16 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = and i32 %0, 31
  %i.z = add nuw nsw i32 %i.x, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !9
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_ZL12propsVectors, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !14 ; 2 uses
  %i.ag = and i32 %i.af, 4095                     ; 3 uses
  %i.ah = and i32 %i.af, 1023                     ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ag, 1024
  br i1 %i.ai, label %bb.m, label %bb.j

bb.j:                                             ; preds = %u_getUnicodeProperties_78.exit
  %i.aj = icmp samesign ult i32 %i.ag, 2048
  br i1 %i.aj, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp samesign ult i32 %i.ag, 3072
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZL16scriptExtensions, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !9
  %i.ao = zext i16 %i.an to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %u_getUnicodeProperties_78.exit, %bb.j, %bb.k, %bb.a, %bb.b, %bb.d
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.b ], [ %i.ao, %bb.l ], [ %i.ah, %u_getUnicodeProperties_78.exit ], [ 0, %bb.j ], [ 1, %bb.k ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @uscript_hasScript_78(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %u_getUnicodeProperties_78.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i32
  %i.o = lshr i32 %0, 5
  %i.p = and i32 %i.o, 63
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.d, %bb.b
  %.sink23.i = phi i32 [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.b, %bb.b ]
  %i.r = zext nneg i32 %.sink23.i to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = and i32 %0, 31
  %i.x = add nuw nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %u_getUnicodeProperties_78.exit

u_getUnicodeProperties_78.exit:                   ; preds = %bb.e, %.sink.split.i
  %i.z = phi i64 [ 6052, %bb.e ], [ %i.y, %.sink.split.i ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL12propsVectors, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14 ; 2 uses
  %i.af = and i32 %i.ae, 4095                     ; 2 uses
  %i.ag = and i32 %i.ae, 1023                     ; 2 uses
  %i.ah = icmp samesign ult i32 %i.af, 1024
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %u_getUnicodeProperties_78.exit
  %i.ai = icmp eq i32 %1, %i.ag
  br label %bb.l

bb.h:                                             ; preds = %u_getUnicodeProperties_78.exit
  %i.aj = zext nneg i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZL16scriptExtensions, i64 %i.aj ; 2 uses
  %i.al = icmp samesign ugt i32 %i.af, 3071
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !9
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZL16scriptExtensions, i64 %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.ap, %bb.i ], [ %i.ak, %bb.h ]
  %i.aq = icmp ugt i32 %1, 32767
  br i1 %i.aq, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.j, %.preheader
  %.1 = phi ptr [ %i.au, %.preheader ], [ %.0, %bb.j ] ; 2 uses
  %i.ar = load i16, ptr %.1, align 2, !tbaa !9
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = icmp samesign ugt i32 %1, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br i1 %i.at, label %.preheader, label %bb.k, !llvm.loop !23

bb.k:                                             ; preds = %.preheader
  %i.av = and i32 %i.as, 32767
  %i.aw = icmp eq i32 %1, %i.av
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g
  %.116.shrunk = phi i1 [ %i.ai, %bb.g ], [ %i.aw, %bb.k ], [ false, %bb.j ]
  %.116 = zext i1 %.116.shrunk to i8
  ret i8 %.116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483647, -2147483648) i32 @uscript_getScriptExtensions_78(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !16
  %4 = icmp slt i32 %i.b, 1
  br i1 %4, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
  %i.e = icmp eq ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %3, align 4, !tbaa !16
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.f = icmp ult i32 %0, 55296
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = lshr i32 %0, 5
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.h = icmp ult i32 %0, 65536
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 56320
  %i.j = select i1 %i.i, i32 320, i32 0
  %i.k = lshr i32 %0, 5
  %i.l = add nuw nsw i32 %i.j, %i.k
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.m = icmp ugt i32 %0, 1114111
  br i1 %i.m, label %u_getUnicodeProperties_78.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = lshr i32 %0, 11
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4160
  %i.r = load i16, ptr %i.q, align 2, !tbaa !9
  %i.s = zext i16 %i.r to i32
  %i.t = lshr i32 %0, 5
  %i.u = and i32 %i.t, 63
  %i.v = add nuw nsw i32 %i.u, %i.s
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.i, %bb.g
  %.sink23.i = phi i32 [ %i.l, %bb.i ], [ %i.v, %bb.k ], [ %i.g, %bb.g ]
  %i.w = zext nneg i32 %.sink23.i to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !9
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 2
  %i.ab = and i32 %0, 31
  %i.ac = add nuw nsw i32 %i.aa, %i.ab
  %i.ad = zext nneg i32 %i.ac to i64
  br label %u_getUnicodeProperties_78.exit

u_getUnicodeProperties_78.exit:                   ; preds = %bb.j, %.sink.split.i
  %i.ae = phi i64 [ 6052, %bb.j ], [ %i.ad, %.sink.split.i ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @_ZL22propsVectorsTrie_index, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !9
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZL12propsVectors, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14 ; 2 uses
  %i.ak = and i32 %i.aj, 4095                     ; 2 uses
  %i.al = and i32 %i.aj, 1023                     ; 2 uses
  %i.am = icmp samesign ult i32 %i.ak, 1024
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %u_getUnicodeProperties_78.exit
  br i1 %i.d, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 15, ptr %3, align 4, !tbaa !16
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  store i32 %i.al, ptr %1, align 4, !tbaa !26
  br label %.loopexit

bb.o:                                             ; preds = %u_getUnicodeProperties_78.exit
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZL16scriptExtensions, i64 %i.an ; 2 uses
  %i.ap = icmp samesign ugt i32 %i.ak, 3071
  br i1 %i.ap, label %bb.p, label %.backedge.preheader

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !9
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZL16scriptExtensions, i64 %i.as
  br label %.backedge.preheader

.backedge.preheader:                              ; preds = %bb.p, %bb.o
  %.1.ph = phi ptr [ %i.at, %bb.p ], [ %i.ao, %bb.o ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.preheader
  %.1 = phi ptr [ %.1.ph, %.backedge.preheader ], [ %i.au, %.backedge.backedge ] ; 2 uses
  %.0 = phi i32 [ 0, %.backedge.preheader ], [ %.0.be, %.backedge.backedge ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.av = load i16, ptr %.1, align 2, !tbaa !9    ; 3 uses
  %i.aw = icmp slt i32 %.0, %2
  br i1 %i.aw, label %bb.q, label %.thread

bb.q:                                             ; preds = %.backedge
  %i.ax = and i16 %i.av, 32767
  %i.ay = zext nneg i16 %i.ax to i32
  %i.az = zext nneg i32 %.0 to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !26
  %i.bb = add nuw nsw i32 %.0, 1                  ; 2 uses
  %i.bc = icmp sgt i16 %i.av, -1
  br i1 %i.bc, label %.backedge.backedge, label %.loopexit

.backedge.backedge:                               ; preds = %bb.q, %.thread
  %.0.be = phi i32 [ %i.bb, %bb.q ], [ %i.bd, %.thread ]
  br label %.backedge, !llvm.loop !24

.thread:                                          ; preds = %.backedge
  %i.bd = add nuw nsw i32 %.0, 1                  ; 2 uses
  %i.be = icmp sgt i16 %i.av, -1
  br i1 %i.be, label %.backedge.backedge, label %.thread36

.thread36:                                        ; preds = %.thread
  store i32 15, ptr %3, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.n, %bb.m, %.thread36, %bb.a, %bb.b, %bb.e
  %.131 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %bb.n ], [ %i.bd, %.thread36 ], [ %i.bb, %bb.q ]
  ret i32 %.131
}

; Function Attrs: mustprogress uwtable
define void @uprv_addScriptExtensionsCodePoints_78(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !16
  %2 = icmp slt i32 %i.a, 1
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @utrie2_enum_78(ptr noundef nonnull @_ZL16propsVectorsTrie, ptr noundef null, ptr noundef nonnull @_ZN12_GLOBAL__N_19_scxRangeEPKviij, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef signext i8 @_ZN12_GLOBAL__N_19_scxRangeEPKviij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZL12propsVectors, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = and i32 %i.c, 3072
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.f(ptr noundef %i.g, i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i8 1
}

; Function Attrs: mustprogress uwtable
define i32 @ublock_getCode_78(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 1114112
  %i.b = lshr i32 %0, 4
  %spec.select = select i1 %i.a, i32 %i.b, i32 %0
  %i.c = tail call i32 @ucptrie_get_78(ptr noundef nonnull @_ZL10block_trie, i32 noundef %spec.select)
  ret i32 %i.c
}

declare i32 @ucptrie_get_78(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @uchar_addPropertyStarts_78(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !16
  %2 = icmp slt i32 %i.a, 1
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @utrie2_enum_78(ptr noundef nonnull @_ZL9propsTrie, ptr noundef null, ptr noundef nonnull @_ZL24_enumPropertyStartsRangePKviij, ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 39 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.c(ptr noundef %i.d, i32 noundef 9)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.e(ptr noundef %i.f, i32 noundef 10)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.h = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.g(ptr noundef %i.h, i32 noundef 14)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.i(ptr noundef %i.j, i32 noundef 28)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.k(ptr noundef %i.l, i32 noundef 32)
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.n = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.m(ptr noundef %i.n, i32 noundef 133)
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.p = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.o(ptr noundef %i.p, i32 noundef 134)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.r = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.q(ptr noundef %i.r, i32 noundef 127)
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.t = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.s(ptr noundef %i.t, i32 noundef 8202)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.v = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.u(ptr noundef %i.v, i32 noundef 8208)
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.x = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.w(ptr noundef %i.x, i32 noundef 8298)
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.z = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.y(ptr noundef %i.z, i32 noundef 8304)
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ab = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.aa(ptr noundef %i.ab, i32 noundef 65279)
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ac(ptr noundef %i.ad, i32 noundef 65280)
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.af = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ae(ptr noundef %i.af, i32 noundef 160)
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ah = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ag(ptr noundef %i.ah, i32 noundef 161)
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.aj = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ai(ptr noundef %i.aj, i32 noundef 8199)
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.al = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ak(ptr noundef %i.al, i32 noundef 8200)
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.an = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.am(ptr noundef %i.an, i32 noundef 8239)
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ap = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ao(ptr noundef %i.ap, i32 noundef 8240)
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ar = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.aq(ptr noundef %i.ar, i32 noundef 97)
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.at = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.as(ptr noundef %i.at, i32 noundef 123)
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.av = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.au(ptr noundef %i.av, i32 noundef 65)
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ax = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.aw(ptr noundef %i.ax, i32 noundef 91)
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.az = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ay(ptr noundef %i.az, i32 noundef 65345)
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bb = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ba(ptr noundef %i.bb, i32 noundef 65371)
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bd = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bc(ptr noundef %i.bd, i32 noundef 65313)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bf = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.be(ptr noundef %i.bf, i32 noundef 65339)
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bh = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bg(ptr noundef %i.bh, i32 noundef 103)
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bj = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bi(ptr noundef %i.bj, i32 noundef 71)
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bl = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bk(ptr noundef %i.bl, i32 noundef 65351)
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bn = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bm(ptr noundef %i.bn, i32 noundef 65319)
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bp = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bo(ptr noundef %i.bp, i32 noundef 8288)
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.br = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bq(ptr noundef %i.br, i32 noundef 65520)
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bt = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bs(ptr noundef %i.bt, i32 noundef 65532)
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bv = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bu(ptr noundef %i.bv, i32 noundef 917504)
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bx = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.bw(ptr noundef %i.bx, i32 noundef 921600)
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bz = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.by(ptr noundef %i.bz, i32 noundef 847)
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.cb = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.ca(ptr noundef %i.cb, i32 noundef 848)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef signext i8 @_ZL24_enumPropertyStartsRangePKviij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  tail call void %i.b(ptr noundef %i.c, i32 noundef %1)
  ret i8 1
}

; Function Attrs: mustprogress uwtable
define void @upropsvec_addPropertyStarts_78(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !16
  %2 = icmp slt i32 %i.a, 1
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @utrie2_enum_78(ptr noundef nonnull @_ZL16propsVectorsTrie, ptr noundef null, ptr noundef nonnull @_ZL24_enumPropertyStartsRangePKviij, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ublock_addPropertyStarts_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.06 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.c ]    ; 2 uses
  %i.c = call i32 @ucptrie_getRange_78(ptr noundef nonnull @_ZL10block_trie, i32 noundef %.06, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  %i.g = shl nuw nsw i32 %.06, 4
  call void %i.e(ptr noundef %i.f, i32 noundef %i.g)
  %i.h = add nuw nsw i32 %i.c, 1
  %i.i = icmp samesign ult i32 %i.c, 69631
  br i1 %i.i, label %bb.b, label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare i32 @ucptrie_getRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"_ZTS17_EnumTypeCallback", !10, i64 0, !10, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 8}
!14 = !{!5, !5, i64 0}
!15 = !{!"_ZTS10UErrorCode", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"p1 _ZTS4USet", !10, i64 0}
!19 = !{!"_ZTS9USetAdder", !18, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!20 = !{!19, !18, i64 0}
!21 = !{!19, !10, i64 8}
!22 = !{!4, !4, i64 0}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = !{!"_ZTS11UScriptCode", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!19, !10, i64 16}
!28 = distinct !{!28, !17}
end_hunk_1
