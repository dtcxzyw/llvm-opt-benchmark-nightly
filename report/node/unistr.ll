begin_hunk_0
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = and i16 %i.d, 1
  %.not.i = icmp eq i16 %i.e, 0
  br i1 %.not.i, label %_ZN6icu_7813UnicodeString7unBogusEv.exit, label %bb.b
end_hunk_0
begin_hunk_1
  store i16 2, ptr %i.c, align 8
  br label %_ZN6icu_7813UnicodeString7unBogusEv.exit

_ZN6icu_7813UnicodeString7unBogusEv.exit:         ; preds = %bb.a, %bb.b
  %3 = phi i16 [ %i.d, %bb.a ], [ 2, %bb.b ]
  %i.f = add nuw nsw i32 %2, 1
  %.inv = icmp sgt i32 %2, 27
  %.0 = select i1 %.inv, i32 %i.f, i32 27         ; 2 uses
  %4 = icmp sgt i32 %.0, -2
  br i1 %4, label %5, label %_ZN6icu_7813UnicodeString9getBufferEi.exit

5:                                                ; preds = %_ZN6icu_7813UnicodeString7unBogusEv.exit
  %6 = tail call noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.0, i32 noundef -1, i8 noundef signext 1, ptr noundef null, i8 noundef signext 0)
  %.not.i6 = icmp eq i8 %6, 0
  %.pre = load i16, ptr %i.c, align 8             ; 3 uses
  br i1 %.not.i6, label %_ZN6icu_7813UnicodeString9getBufferEi.exit, label %bb.c

bb.c:                                             ; preds = %5
  %i.g = and i16 %.pre, 15
  %i.h = or disjoint i16 %i.g, 16                 ; 2 uses
  store i16 %i.h, ptr %i.c, align 8
end_hunk_1
begin_hunk_2
  %i.m = select i1 %.not.i.i, ptr %i.l, ptr %i.j
  br label %_ZN6icu_7813UnicodeString9getBufferEi.exit

_ZN6icu_7813UnicodeString9getBufferEi.exit:       ; preds = %_ZN6icu_7813UnicodeString7unBogusEv.exit, %5, %bb.c
  %7 = phi i16 [ %i.h, %bb.c ], [ %.pre, %5 ], [ %3, %_ZN6icu_7813UnicodeString7unBogusEv.exit ]
  %.0.i = phi ptr [ %i.m, %bb.c ], [ null, %5 ], [ null, %_ZN6icu_7813UnicodeString7unBogusEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4
  %i.n = and i16 %7, 2
  %.not.i7 = icmp eq i16 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
end_hunk_2
