Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Location?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
begin_hunk_0_@_ZNK4Luau8Location8enclosesERKS0_:bb.a
  %i.x = icmp ugt i32 %i.s, %i.t
  %.0.i.i3 = select i1 %i.u, i1 %i.w, i1 %i.x
  br label %_ZNK4Luau8PositiongeERKS0_.exit

_ZNK4Luau8PositiongeERKS0_.exit:                  ; preds = %bb.b, %_ZNK4Luau8PositionleERKS0_.exit.thread, %_ZNK4Luau8PositionleERKS0_.exit
  %i.y = phi i1 [ false, %_ZNK4Luau8PositionleERKS0_.exit ], [ true, %_ZNK4Luau8PositionleERKS0_.exit.thread ], [ %.0.i.i3, %bb.b ]
  ret i1 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Location8overlapsERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 5 uses
  %i.e = icmp eq i32 %i.b, %i.d
  %i.f = load i32, ptr %0, align 4                ; 5 uses
  %i.g = load i32, ptr %1, align 4                ; 5 uses
  %i.h = icmp eq i32 %i.f, %i.g                   ; 3 uses
  %i.i = select i1 %i.e, i1 %i.h, i1 false        ; 2 uses
  br i1 %i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %_ZNK4Luau8PositionleERKS0_.exit

_ZNK4Luau8PositionleERKS0_.exit:                  ; preds = %bb.a
  %i.j = icmp ult i32 %i.b, %i.d
  %i.k = icmp ult i32 %i.f, %i.g
  %.0.i.i = select i1 %i.h, i1 %i.j, i1 %i.k
  br i1 %.0.i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %bb.b

_ZNK4Luau8PositionleERKS0_.exit.thread:           ; preds = %bb.a, %_ZNK4Luau8PositionleERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10   ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.d
  %i.p = load i32, ptr %i.l, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.g                   ; 2 uses
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %_ZNK4Luau8PositionleERKS0_.exit15, label %_ZNK4Luau8PositiongeERKS0_.exit

_ZNK4Luau8PositiongeERKS0_.exit:                  ; preds = %_ZNK4Luau8PositionleERKS0_.exit.thread
  %i.s = icmp ugt i32 %i.n, %i.d
  %i.t = icmp ugt i32 %i.p, %i.g
  %.0.i.i7 = select i1 %i.q, i1 %i.s, i1 %i.t
  br i1 %.0.i.i7, label %_ZNK4Luau8PositionleERKS0_.exit15, label %bb.b

bb.b:                                             ; preds = %_ZNK4Luau8PositiongeERKS0_.exit, %_ZNK4Luau8PositionleERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !10   ; 6 uses
  %i.x = icmp eq i32 %i.b, %i.w
  %i.y = load i32, ptr %i.u, align 4              ; 6 uses
  %i.z = icmp eq i32 %i.f, %i.y                   ; 2 uses
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZNK4Luau8PositionleERKS0_.exit9.thread, label %_ZNK4Luau8PositionleERKS0_.exit9

_ZNK4Luau8PositionleERKS0_.exit9:                 ; preds = %bb.b
  %i.ab = icmp ult i32 %i.b, %i.w
  %i.ac = icmp ult i32 %i.f, %i.y
  %.0.i.i8 = select i1 %i.z, i1 %i.ab, i1 %i.ac
  br i1 %.0.i.i8, label %_ZNK4Luau8PositionleERKS0_.exit9.thread, label %bb.c

_ZNK4Luau8PositionleERKS0_.exit9.thread:          ; preds = %bb.b, %_ZNK4Luau8PositionleERKS0_.exit9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.w
  %i.ah = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %i.y                 ; 2 uses
  %i.aj = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK4Luau8PositionleERKS0_.exit15, label %_ZNK4Luau8PositiongeERKS0_.exit11

_ZNK4Luau8PositiongeERKS0_.exit11:                ; preds = %_ZNK4Luau8PositionleERKS0_.exit9.thread
  %i.ak = icmp ugt i32 %i.af, %i.w
  %i.al = icmp ugt i32 %i.ah, %i.y
  %.0.i.i10 = select i1 %i.ai, i1 %i.ak, i1 %i.al
  br i1 %.0.i.i10, label %_ZNK4Luau8PositionleERKS0_.exit15, label %bb.c

bb.c:                                             ; preds = %_ZNK4Luau8PositiongeERKS0_.exit11, %_ZNK4Luau8PositionleERKS0_.exit9
  br i1 %i.i, label %_ZNK4Luau8PositiongeERKS0_.exit13.thread, label %_ZNK4Luau8PositiongeERKS0_.exit13

_ZNK4Luau8PositiongeERKS0_.exit13:                ; preds = %bb.c
  %i.am = icmp ugt i32 %i.b, %i.d
  %i.an = icmp ugt i32 %i.f, %i.g
  %.0.i.i12 = select i1 %i.h, i1 %i.am, i1 %i.an
  br i1 %.0.i.i12, label %_ZNK4Luau8PositiongeERKS0_.exit13.thread, label %_ZNK4Luau8PositionleERKS0_.exit15

_ZNK4Luau8PositiongeERKS0_.exit13.thread:         ; preds = %bb.c, %_ZNK4Luau8PositiongeERKS0_.exit13
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, %i.w
  %i.as = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.at = icmp eq i32 %i.as, %i.y                 ; 2 uses
  %i.au = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %i.au, label %_ZNK4Luau8PositionleERKS0_.exit15, label %bb.d

bb.d:                                             ; preds = %_ZNK4Luau8PositiongeERKS0_.exit13.thread
  %i.av = icmp ult i32 %i.aq, %i.w
  %i.aw = icmp ult i32 %i.as, %i.y
  %.0.i.i14 = select i1 %i.at, i1 %i.av, i1 %i.aw
  br label %_ZNK4Luau8PositionleERKS0_.exit15

_ZNK4Luau8PositionleERKS0_.exit15:                ; preds = %_ZNK4Luau8PositionleERKS0_.exit9.thread, %_ZNK4Luau8PositionleERKS0_.exit.thread, %bb.d, %_ZNK4Luau8PositiongeERKS0_.exit13.thread, %_ZNK4Luau8PositiongeERKS0_.exit13, %_ZNK4Luau8PositiongeERKS0_.exit11, %_ZNK4Luau8PositiongeERKS0_.exit
  %i.ax = phi i1 [ true, %_ZNK4Luau8PositiongeERKS0_.exit11 ], [ true, %_ZNK4Luau8PositiongeERKS0_.exit ], [ false, %_ZNK4Luau8PositiongeERKS0_.exit13 ], [ true, %_ZNK4Luau8PositionleERKS0_.exit.thread ], [ %.0.i.i14, %bb.d ], [ true, %_ZNK4Luau8PositiongeERKS0_.exit13.thread ], [ true, %_ZNK4Luau8PositionleERKS0_.exit9.thread ]
  ret i1 %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Location8containsERKNS_8PositionE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  %i.e = icmp eq i32 %i.b, %i.d
  %i.f = load i32, ptr %0, align 4                ; 2 uses
  %i.g = load i32, ptr %1, align 4                ; 4 uses
  %i.h = icmp eq i32 %i.f, %i.g                   ; 2 uses
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %_ZNK4Luau8PositionleERKS0_.exit

_ZNK4Luau8PositionleERKS0_.exit:                  ; preds = %bb.a
  %i.j = icmp ult i32 %i.b, %i.d
  %i.k = icmp ult i32 %i.f, %i.g
  %.0.i.i = select i1 %i.h, i1 %i.j, i1 %i.k
  br i1 %.0.i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %bb.b

_ZNK4Luau8PositionleERKS0_.exit.thread:           ; preds = %bb.a, %_ZNK4Luau8PositionleERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 2 uses
  %i.n = icmp eq i32 %i.g, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp ult i32 %i.d, %i.p
  %i.r = icmp ult i32 %i.g, %i.m
  %.0.i = select i1 %i.n, i1 %i.q, i1 %i.r
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4Luau8PositionleERKS0_.exit.thread, %_ZNK4Luau8PositionleERKS0_.exit
  %i.s = phi i1 [ false, %_ZNK4Luau8PositionleERKS0_.exit ], [ %.0.i, %_ZNK4Luau8PositionleERKS0_.exit.thread ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau8Location14containsClosedERKNS_8PositionE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 4 uses
  %i.e = icmp eq i32 %i.b, %i.d
  %i.f = load i32, ptr %0, align 4                ; 2 uses
  %i.g = load i32, ptr %1, align 4                ; 4 uses
  %i.h = icmp eq i32 %i.f, %i.g                   ; 2 uses
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %_ZNK4Luau8PositionleERKS0_.exit

_ZNK4Luau8PositionleERKS0_.exit:                  ; preds = %bb.a
  %i.j = icmp ult i32 %i.b, %i.d
  %i.k = icmp ult i32 %i.f, %i.g
  %.0.i.i = select i1 %i.h, i1 %i.j, i1 %i.k
  br i1 %.0.i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %_ZNK4Luau8PositionleERKS0_.exit4

_ZNK4Luau8PositionleERKS0_.exit.thread:           ; preds = %bb.a, %_ZNK4Luau8PositionleERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10   ; 2 uses
  %i.o = icmp eq i32 %i.d, %i.n
  %i.p = load i32, ptr %i.l, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.g, %i.p                   ; 2 uses
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %_ZNK4Luau8PositionleERKS0_.exit4, label %bb.b

bb.b:                                             ; preds = %_ZNK4Luau8PositionleERKS0_.exit.thread
  %i.s = icmp ult i32 %i.d, %i.n
  %i.t = icmp ult i32 %i.g, %i.p
  %.0.i.i3 = select i1 %i.q, i1 %i.s, i1 %i.t
  br label %_ZNK4Luau8PositionleERKS0_.exit4

_ZNK4Luau8PositionleERKS0_.exit4:                 ; preds = %bb.b, %_ZNK4Luau8PositionleERKS0_.exit.thread, %_ZNK4Luau8PositionleERKS0_.exit
  %i.u = phi i1 [ false, %_ZNK4Luau8PositionleERKS0_.exit ], [ true, %_ZNK4Luau8PositionleERKS0_.exit.thread ], [ %.0.i.i3, %bb.b ]
  ret i1 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Luau8Location6extendERKS0_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !11     ; 2 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %i.c = icmp eq i32 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = icmp ult i32 %i.a, %i.b
  %.0.i = select i1 %i.c, i1 %i.h, i1 %i.i
  br i1 %.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %1, align 4
  store i64 %i.j, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !11   ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !11   ; 2 uses
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp ugt i32 %i.q, %i.s
  %i.u = icmp ugt i32 %i.m, %i.n
  %.0.i5 = select i1 %i.o, i1 %i.t, i1 %i.u
  br i1 %.0.i5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.k, align 4
  store i64 %i.v, ptr %i.l, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Luau8Location5shiftERKNS_8PositionES3_S3_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 4 uses
  %i.e = icmp eq i32 %i.b, %i.d
  %i.f = load i32, ptr %0, align 4                ; 4 uses
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = icmp eq i32 %i.f, %i.g                   ; 2 uses
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %_ZNK4Luau8PositiongeERKS0_.exit.thread.i, label %_ZNK4Luau8PositiongeERKS0_.exit.i

_ZNK4Luau8PositiongeERKS0_.exit.i:                ; preds = %bb.a
  %i.j = icmp ugt i32 %i.b, %i.d
  %i.k = icmp ugt i32 %i.f, %i.g
  %.0.i.i.i = select i1 %i.h, i1 %i.j, i1 %i.k
  br i1 %.0.i.i.i, label %_ZNK4Luau8PositiongeERKS0_.exit.thread.i, label %_ZN4Luau8Position5shiftERKS0_S2_S2_.exit

_ZNK4Luau8PositiongeERKS0_.exit.thread.i:         ; preds = %_ZNK4Luau8PositiongeERKS0_.exit.i, %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !11     ; 2 uses
  %i.m = icmp ugt i32 %i.f, %i.l
  %i.n = load i32, ptr %3, align 4, !tbaa !11     ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4Luau8PositiongeERKS0_.exit.thread.i
  %i.o = sub nuw i32 %i.f, %i.l
  %i.p = add i32 %i.o, %i.n
  store i32 %i.p, ptr %0, align 4, !tbaa !11
  br label %_ZN4Luau8Position5shiftERKS0_S2_S2_.exit

bb.c:                                             ; preds = %_ZNK4Luau8PositiongeERKS0_.exit.thread.i
  store i32 %i.n, ptr %0, align 4, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = add i32 %i.r, %i.b
  %i.v = sub i32 %i.u, %i.t
  store i32 %i.v, ptr %i.a, align 4, !tbaa !10
  %.pre = load i32, ptr %i.c, align 4, !tbaa !10
  br label %_ZN4Luau8Position5shiftERKS0_S2_S2_.exit

_ZN4Luau8Position5shiftERKS0_S2_S2_.exit:         ; preds = %_ZNK4Luau8PositiongeERKS0_.exit.i, %bb.b, %bb.c
  %i.w = phi i32 [ %i.d, %_ZNK4Luau8PositiongeERKS0_.exit.i ], [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10   ; 3 uses
  %i.aa = icmp eq i32 %i.z, %i.w
  %i.ab = load i32, ptr %i.x, align 4             ; 4 uses
  %i.ac = load i32, ptr %1, align 4               ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac                ; 2 uses
  %i.ae = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %i.ae, label %_ZNK4Luau8PositiongeERKS0_.exit.thread.i9, label %_ZNK4Luau8PositiongeERKS0_.exit.i7

_ZNK4Luau8PositiongeERKS0_.exit.i7:               ; preds = %_ZN4Luau8Position5shiftERKS0_S2_S2_.exit
  %i.af = icmp ugt i32 %i.z, %i.w
  %i.ag = icmp ugt i32 %i.ab, %i.ac
  %.0.i.i.i8 = select i1 %i.ad, i1 %i.af, i1 %i.ag
  br i1 %.0.i.i.i8, label %_ZNK4Luau8PositiongeERKS0_.exit.thread.i9, label %_ZN4Luau8Position5shiftERKS0_S2_S2_.exit10

_ZNK4Luau8PositiongeERKS0_.exit.thread.i9:        ; preds = %_ZNK4Luau8PositiongeERKS0_.exit.i7, %_ZN4Luau8Position5shiftERKS0_S2_S2_.exit
  %i.ah = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.ai = icmp ugt i32 %i.ab, %i.ah
  %i.aj = load i32, ptr %3, align 4, !tbaa !11    ; 2 uses
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4Luau8PositiongeERKS0_.exit.thread.i9
  %i.ak = sub nuw i32 %i.ab, %i.ah
  %i.al = add i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.x, align 4, !tbaa !11
  br label %_ZN4Luau8Position5shiftERKS0_S2_S2_.exit10

bb.e:                                             ; preds = %_ZNK4Luau8PositiongeERKS0_.exit.thread.i9
  store i32 %i.aj, ptr %i.x, align 4, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !10
  %i.aq = add i32 %i.an, %i.z
  %i.ar = sub i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.y, align 4, !tbaa !10
  br label %_ZN4Luau8Position5shiftERKS0_S2_S2_.exit10

_ZN4Luau8Position5shiftERKS0_S2_S2_.exit10:       ; preds = %_ZNK4Luau8PositiongeERKS0_.exit.i7, %bb.d, %bb.e
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN4Luau8PositionE", !6, i64 0, !6, i64 4}
!10 = !{!9, !6, i64 4}
!11 = !{!9, !6, i64 0}
end_hunk_0
