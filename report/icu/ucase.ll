Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucase?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ucase_getTypeOrIgnorable_78:bb.a
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
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink16 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = and i16 %i.ac, 7
  %i.ae = zext nneg i16 %i.ad to i32
  ret i32 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @ucase_isSoftDotted_78(i32 noundef %0) local_unnamed_addr #3 {
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
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.d, %bb.b
  %.sink21.i = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink21.i to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split.i ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = and i32 %i.ad, 8
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = and i32 %i.ad, 96
  br label %_ZL10getDotTypei.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = lshr i32 %i.ad, 4
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !15
  %i.ak = lshr i16 %i.aj, 7
  %i.al = and i16 %i.ak, 96
  %i.am = zext nneg i16 %i.al to i32
  br label %_ZL10getDotTypei.exit

_ZL10getDotTypei.exit:                            ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.am, %bb.j ], [ %i.af, %bb.i ]
  %i.an = icmp eq i32 %.0.i, 32
  %i.ao = zext i1 %i.an to i8
  ret i8 %i.ao
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @ucase_isCaseSensitive_78(i32 noundef %0) local_unnamed_addr #3 {
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
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g, %bb.d
  %.sink21 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink21 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15 ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = and i32 %i.ad, 8
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %1 = trunc i16 %i.ac to i8
  %2 = lshr i8 %1, 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.af = lshr i32 %i.ad, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !15
  %i.aj = lshr i16 %i.ai, 11
  %3 = trunc nuw nsw i16 %i.aj to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.in = phi i8 [ %3, %bb.j ], [ %2, %bb.i ]
  %.0 = and i8 %.0.in, 1
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 1, 7) i32 @ucase_getCaseLocale_78(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 12 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !16      ; 4 uses
  switch i8 %i.b, label %bb.f [
    i8 101, label %bb.b
    i8 122, label %bb.bb
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !16
  %i.d = and i8 %i.c, -33
  %or.cond = icmp eq i8 %i.d, 76
  br i1 %or.cond, label %bb.c, label %bb.ba

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16    ; 2 uses
  %i.g = and i8 %i.f, -33
  %or.cond5 = icmp eq i8 %i.g, 76
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i8 [ %i.i, %bb.d ], [ %i.f, %bb.c ]
  switch i8 %.0, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.f:                                             ; preds = %bb.a
  %i.j = icmp sgt i8 %i.b, 96
  br i1 %i.j, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  switch i8 %i.b, label %bb.ba [
    i8 116, label %bb.h
    i8 97, label %bb.l
    i8 108, label %bb.p
    i8 110, label %bb.t
    i8 104, label %bb.x
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.a, align 1, !tbaa !16    ; 2 uses
  %i.m = and i8 %i.l, -33
  %or.cond14 = icmp eq i8 %i.m, 85
  br i1 %or.cond14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.k, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0278 = phi ptr [ %i.n, %bb.i ], [ %i.k, %bb.h ]
  %.1 = phi i8 [ %i.o, %bb.i ], [ %i.l, %bb.h ]
  %i.p = and i8 %.1, -33
  %or.cond17 = icmp eq i8 %i.p, 82
  br i1 %or.cond17, label %bb.k, label %bb.ba

bb.k:                                             ; preds = %bb.j
  %i.q = load i8, ptr %.0278, align 1, !tbaa !16
  switch i8 %i.q, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.l:                                             ; preds = %bb.g
  %i.r = load i8, ptr %i.a, align 1, !tbaa !16
  %i.s = and i8 %i.r, -33
  %or.cond26 = icmp eq i8 %i.s, 90
  br i1 %or.cond26, label %bb.m, label %bb.ba

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %i.v = and i8 %i.u, -33
  %or.cond29 = icmp eq i8 %i.v, 69
  br i1 %or.cond29, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.2 = phi i8 [ %i.x, %bb.n ], [ %i.u, %bb.m ]
  switch i8 %.2, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.p:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.z = load i8, ptr %i.a, align 1, !tbaa !16    ; 2 uses
  %i.aa = and i8 %i.z, -33
  %or.cond38 = icmp eq i8 %i.aa, 73
  br i1 %or.cond38, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1279 = phi ptr [ %i.ab, %bb.q ], [ %i.y, %bb.p ]
  %.3 = phi i8 [ %i.ac, %bb.q ], [ %i.z, %bb.p ]
  %i.ad = and i8 %.3, -33
  %or.cond41 = icmp eq i8 %i.ad, 84
  br i1 %or.cond41, label %bb.s, label %bb.ba

bb.s:                                             ; preds = %bb.r
  %i.ae = load i8, ptr %.1279, align 1, !tbaa !16
  switch i8 %i.ae, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.t:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.a, align 1, !tbaa !16
  %i.ag = and i8 %i.af, -33
  %or.cond50 = icmp eq i8 %i.ag, 76
  br i1 %or.cond50, label %bb.u, label %bb.ba

bb.u:                                             ; preds = %bb.t
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16  ; 2 uses
  %i.aj = and i8 %i.ai, -33
  %or.cond53 = icmp eq i8 %i.aj, 68
  br i1 %or.cond53, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.4 = phi i8 [ %i.al, %bb.v ], [ %i.ai, %bb.u ]
  switch i8 %.4, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.x:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.a, align 1, !tbaa !16
  %i.an = and i8 %i.am, -33
  %or.cond62 = icmp eq i8 %i.an, 89
  br i1 %or.cond62, label %bb.y, label %bb.ba

bb.y:                                             ; preds = %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16  ; 2 uses
  %i.aq = and i8 %i.ap, -33
  %or.cond65 = icmp eq i8 %i.aq, 69
  br i1 %or.cond65, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.5 = phi i8 [ %i.as, %bb.z ], [ %i.ap, %bb.y ]
  switch i8 %.5, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.ab:                                            ; preds = %bb.f
  switch i8 %i.b, label %bb.ba [
    i8 84, label %bb.ac
    i8 65, label %bb.ag
    i8 76, label %bb.ak
    i8 69, label %bb.ao
    i8 78, label %bb.as
    i8 72, label %bb.aw
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.a, align 1, !tbaa !16   ; 2 uses
  %i.av = and i8 %i.au, -33
  %or.cond74 = icmp eq i8 %i.av, 85
end_hunk_0
begin_hunk_1_@ucase_hasBinaryProperty_78:bb.a
  %i.ah = icmp ult i32 %0, 55296
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr i32 %0, 5
  br label %.sink.split.i14

bb.k:                                             ; preds = %bb.i
  %i.aj = icmp ult i32 %0, 65536
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp samesign ult i32 %0, 56320
  %i.al = select i1 %i.ak, i32 320, i32 0
  %i.am = lshr i32 %0, 5
  %i.an = add nuw nsw i32 %i.al, %i.am
  br label %.sink.split.i14

bb.m:                                             ; preds = %bb.k
  %i.ao = icmp ugt i32 %0, 1114111
  br i1 %i.ao, label %ucase_getType_78.exit16, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp samesign ugt i32 %0, 919551
  br i1 %i.ap, label %ucase_getType_78.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = lshr i32 %0, 11
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4160
  %i.au = load i16, ptr %i.at, align 2, !tbaa !15
  %i.av = zext i16 %i.au to i32
  %i.aw = lshr i32 %0, 5
  %i.ax = and i32 %i.aw, 63
  %i.ay = add nuw nsw i32 %i.ax, %i.av
  br label %.sink.split.i14

.sink.split.i14:                                  ; preds = %bb.o, %bb.l, %bb.j
  %.sink16.i15 = phi i32 [ %i.an, %bb.l ], [ %i.ay, %bb.o ], [ %i.ai, %bb.j ]
  %i.az = zext nneg i32 %.sink16.i15 to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !15
  %i.bc = zext i16 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 2
  %i.be = and i32 %0, 31
  %i.bf = add nuw nsw i32 %i.bd, %i.be
  %i.bg = zext nneg i32 %i.bf to i64
  br label %ucase_getType_78.exit16

ucase_getType_78.exit16:                          ; preds = %bb.m, %bb.n, %.sink.split.i14
  %i.bh = phi i64 [ 3596, %bb.m ], [ 13540, %bb.n ], [ %i.bg, %.sink.split.i14 ]
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !15
  %i.bk = and i16 %i.bj, 3
  %i.bl = icmp eq i16 %i.bk, 2
  %i.bm = zext i1 %i.bl to i32
  br label %bb.bd

bb.p:                                             ; preds = %bb.a
  %i.bn = icmp ult i32 %0, 55296
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = lshr i32 %0, 5
  br label %.sink.split.i.i

bb.r:                                             ; preds = %bb.p
  %i.bp = icmp ult i32 %0, 65536
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp samesign ult i32 %0, 56320
  %i.br = select i1 %i.bq, i32 320, i32 0
  %i.bs = lshr i32 %0, 5
  %i.bt = add nuw nsw i32 %i.br, %i.bs
  br label %.sink.split.i.i

bb.t:                                             ; preds = %bb.r
  %i.bu = icmp ugt i32 %0, 1114111
  br i1 %i.bu, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = icmp samesign ugt i32 %0, 919551
  br i1 %i.bv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = lshr i32 %0, 11
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4160
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !15
  %i.cb = zext i16 %i.ca to i32
  %i.cc = lshr i32 %0, 5
  %i.cd = and i32 %i.cc, 63
  %i.ce = add nuw nsw i32 %i.cd, %i.cb
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.v, %bb.s, %bb.q
  %.sink21.i.i = phi i32 [ %i.bt, %bb.s ], [ %i.ce, %bb.v ], [ %i.bo, %bb.q ]
  %i.cf = zext nneg i32 %.sink21.i.i to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !15
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 2
  %i.ck = and i32 %0, 31
  %i.cl = add nuw nsw i32 %i.cj, %i.ck
  %i.cm = zext nneg i32 %i.cl to i64
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.i, %bb.u, %bb.t
  %i.cn = phi i64 [ 3596, %bb.t ], [ 13540, %bb.u ], [ %i.cm, %.sink.split.i.i ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !15
  %i.cq = zext i16 %i.cp to i32                   ; 3 uses
  %i.cr = and i32 %i.cq, 8
  %.not.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cs = and i32 %i.cq, 96
  br label %ucase_isSoftDotted_78.exit

bb.y:                                             ; preds = %bb.w
  %i.ct = lshr i32 %i.cq, 4
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !15
  %i.cx = lshr i16 %i.cw, 7
  %i.cy = and i16 %i.cx, 96
  %i.cz = zext nneg i16 %i.cy to i32
  br label %ucase_isSoftDotted_78.exit

ucase_isSoftDotted_78.exit:                       ; preds = %bb.x, %bb.y
  %.0.i.i = phi i32 [ %i.cz, %bb.y ], [ %i.cs, %bb.x ]
  %i.da = icmp eq i32 %.0.i.i, 32
  %i.db = zext i1 %i.da to i32
  br label %bb.bd

bb.z:                                             ; preds = %bb.a
  %i.dc = icmp ult i32 %0, 55296
  br i1 %i.dc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dd = lshr i32 %0, 5
  br label %.sink.split.i17

bb.ab:                                            ; preds = %bb.z
  %i.de = icmp ult i32 %0, 65536
  br i1 %i.de, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.df = icmp samesign ult i32 %0, 56320
  %i.dg = select i1 %i.df, i32 320, i32 0
  %i.dh = lshr i32 %0, 5
  %i.di = add nuw nsw i32 %i.dg, %i.dh
  br label %.sink.split.i17

bb.ad:                                            ; preds = %bb.ab
  %i.dj = icmp ugt i32 %0, 1114111
  br i1 %i.dj, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = icmp samesign ugt i32 %0, 919551
  br i1 %i.dk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = lshr i32 %0, 11
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4160
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !15
  %i.dq = zext i16 %i.dp to i32
  %i.dr = lshr i32 %0, 5
  %i.ds = and i32 %i.dr, 63
  %i.dt = add nuw nsw i32 %i.ds, %i.dq
  br label %.sink.split.i17

.sink.split.i17:                                  ; preds = %bb.af, %bb.ac, %bb.aa
  %.sink21.i = phi i32 [ %i.di, %bb.ac ], [ %i.dt, %bb.af ], [ %i.dd, %bb.aa ]
  %i.du = zext nneg i32 %.sink21.i to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !15
  %i.dx = zext i16 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 2
  %i.dz = and i32 %0, 31
  %i.ea = add nuw nsw i32 %i.dy, %i.dz
  %i.eb = zext nneg i32 %i.ea to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i17, %bb.ae, %bb.ad
  %i.ec = phi i64 [ 3596, %bb.ad ], [ 13540, %bb.ae ], [ %i.eb, %.sink.split.i17 ]
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !15 ; 2 uses
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %i.eg = and i32 %i.ef, 8
  %.not.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %2 = trunc i16 %i.ee to i8
  %3 = lshr i8 %2, 4
  br label %ucase_isCaseSensitive_78.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eh = lshr i32 %i.ef, 4
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !15
  %i.el = lshr i16 %i.ek, 11
  %4 = trunc nuw nsw i16 %i.el to i8
  br label %ucase_isCaseSensitive_78.exit

ucase_isCaseSensitive_78.exit:                    ; preds = %bb.ah, %bb.ai
  %.0.in.i = phi i8 [ %4, %bb.ai ], [ %3, %bb.ah ]
  %.0.i = and i8 %.0.in.i, 1
  %i.em = zext nneg i8 %.0.i to i32
  br label %bb.bd

bb.aj:                                            ; preds = %bb.a
  %i.en = icmp ult i32 %0, 55296
  br i1 %i.en, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eo = lshr i32 %0, 5
  br label %.sink.split.i18

bb.al:                                            ; preds = %bb.aj
  %i.ep = icmp ult i32 %0, 65536
  br i1 %i.ep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eq = icmp samesign ult i32 %0, 56320
  %i.er = select i1 %i.eq, i32 320, i32 0
  %i.es = lshr i32 %0, 5
  %i.et = add nuw nsw i32 %i.er, %i.es
  br label %.sink.split.i18

bb.an:                                            ; preds = %bb.al
  %i.eu = icmp ugt i32 %0, 1114111
  br i1 %i.eu, label %ucase_getType_78.exit20, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ev = icmp samesign ugt i32 %0, 919551
  br i1 %i.ev, label %ucase_getType_78.exit20, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = lshr i32 %0, 11
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4160
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !15
  %i.fb = zext i16 %i.fa to i32
  %i.fc = lshr i32 %0, 5
  %i.fd = and i32 %i.fc, 63
  %i.fe = add nuw nsw i32 %i.fd, %i.fb
  br label %.sink.split.i18

.sink.split.i18:                                  ; preds = %bb.ap, %bb.am, %bb.ak
  %.sink16.i19 = phi i32 [ %i.et, %bb.am ], [ %i.fe, %bb.ap ], [ %i.eo, %bb.ak ]
  %i.ff = zext nneg i32 %.sink16.i19 to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !15
  %i.fi = zext i16 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 2
  %i.fk = and i32 %0, 31
  %i.fl = add nuw nsw i32 %i.fj, %i.fk
  %i.fm = zext nneg i32 %i.fl to i64
  br label %ucase_getType_78.exit20

ucase_getType_78.exit20:                          ; preds = %bb.an, %bb.ao, %.sink.split.i18
  %i.fn = phi i64 [ 3596, %bb.an ], [ 13540, %bb.ao ], [ %i.fm, %.sink.split.i18 ]
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !15
  %i.fq = and i16 %i.fp, 3
  %i.fr = icmp ne i16 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  br label %bb.bd

bb.aq:                                            ; preds = %bb.a
  %i.ft = icmp ult i32 %0, 55296
  br i1 %i.ft, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fu = lshr i32 %0, 5
  br label %.sink.split.i21

bb.as:                                            ; preds = %bb.aq
  %i.fv = icmp ult i32 %0, 65536
  br i1 %i.fv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fw = icmp samesign ult i32 %0, 56320
  %i.fx = select i1 %i.fw, i32 320, i32 0
  %i.fy = lshr i32 %0, 5
  %i.fz = add nuw nsw i32 %i.fx, %i.fy
  br label %.sink.split.i21

bb.au:                                            ; preds = %bb.as
  %i.ga = icmp ugt i32 %0, 1114111
  br i1 %i.ga, label %ucase_getTypeOrIgnorable_78.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gb = icmp samesign ugt i32 %0, 919551
  br i1 %i.gb, label %ucase_getTypeOrIgnorable_78.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = lshr i32 %0, 11
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4160
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !15
  %i.gh = zext i16 %i.gg to i32
  %i.gi = lshr i32 %0, 5
  %i.gj = and i32 %i.gi, 63
  %i.gk = add nuw nsw i32 %i.gj, %i.gh
  br label %.sink.split.i21

.sink.split.i21:                                  ; preds = %bb.aw, %bb.at, %bb.ar
  %.sink16.i22 = phi i32 [ %i.fz, %bb.at ], [ %i.gk, %bb.aw ], [ %i.fu, %bb.ar ]
  %i.gl = zext nneg i32 %.sink16.i22 to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !15
  %i.go = zext i16 %i.gn to i32
  %i.gp = shl nuw nsw i32 %i.go, 2
  %i.gq = and i32 %0, 31
  %i.gr = add nuw nsw i32 %i.gp, %i.gq
  %i.gs = zext nneg i32 %i.gr to i64
  br label %ucase_getTypeOrIgnorable_78.exit

ucase_getTypeOrIgnorable_78.exit:                 ; preds = %bb.au, %bb.av, %.sink.split.i21
  %i.gt = phi i64 [ 3596, %bb.au ], [ 13540, %bb.av ], [ %i.gs, %.sink.split.i21 ]
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !15
  %i.gw = lshr i16 %i.gv, 2
  %i.gx = and i16 %i.gw, 1
  %i.gy = zext nneg i16 %i.gx to i32
  br label %bb.bd

bb.ax:                                            ; preds = %bb.a
  %i.gz = call i32 @ucase_toFullLower_78(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.ha = icmp sgt i32 %i.gz, -1
  %i.hb = zext i1 %i.ha to i32
  br label %bb.bd

bb.ay:                                            ; preds = %bb.a
  %i.hc = call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i8 noundef signext 1)
  %i.hd = icmp sgt i32 %i.hc, -1
  %i.he = zext i1 %i.hd to i32
  br label %bb.bd

bb.az:                                            ; preds = %bb.a
  %i.hf = call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i8 noundef signext 0)
  %i.hg = icmp sgt i32 %i.hf, -1
  %i.hh = zext i1 %i.hg to i32
  br label %bb.bd

bb.ba:                                            ; preds = %bb.a
  %i.hi = call i32 @ucase_toFullLower_78(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.hj = icmp sgt i32 %i.hi, -1
  br i1 %i.hj, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hk = call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i8 noundef signext 1)
  %i.hl = icmp sgt i32 %i.hk, -1
  br i1 %i.hl, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hm = call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i8 noundef signext 0)
  %i.hn = icmp sgt i32 %i.hm, -1
  %i.ho = zext i1 %i.hn to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.ba, %bb.bb, %bb.bc, %bb.az, %bb.ay, %bb.ax, %ucase_getTypeOrIgnorable_78.exit, %ucase_getType_78.exit20, %ucase_isCaseSensitive_78.exit, %ucase_isSoftDotted_78.exit, %ucase_getType_78.exit16, %ucase_getType_78.exit
  %.0 = phi i32 [ %i.ho, %bb.bc ], [ %i.ag, %ucase_getType_78.exit ], [ %i.bm, %ucase_getType_78.exit16 ], [ %i.db, %ucase_isSoftDotted_78.exit ], [ %i.em, %ucase_isCaseSensitive_78.exit ], [ %i.fs, %ucase_getType_78.exit20 ], [ %i.gy, %ucase_getTypeOrIgnorable_78.exit ], [ %i.hb, %bb.ax ], [ %i.he, %bb.ay ], [ %i.hh, %bb.az ], [ 1, %bb.bb ], [ 1, %bb.ba ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS4USet", !8, i64 0}
!10 = !{!"_ZTS9USetAdder", !9, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!11 = !{!10, !8, i64 8}
!12 = !{!10, !9, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!4, !4, i64 0}
!17 = !{!"char16_t", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.peeled.count", i32 1}
!21 = !{!"p1 char16_t", !8, i64 0}
!22 = !{!"_ZTSN6icu_7823FullCaseFoldingIteratorE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!23 = !{!22, !5, i64 24}
!24 = !{!22, !21, i64 0}
!25 = !{!21, !21, i64 0}
end_hunk_1
