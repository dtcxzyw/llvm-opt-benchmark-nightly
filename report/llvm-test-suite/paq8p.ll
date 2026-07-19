inline.NumInlined: 1537
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z6equalsPKcS0_:bb.a

bb.b:                                             ; preds = %bb.c, %bb.a
  %.023 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ]  ; 2 uses
  %.022 = phi ptr [ %1, %bb.a ], [ %i.i, %bb.c ]  ; 2 uses
  %i.a = load i8, ptr %.023, align 1, !tbaa !11   ; 4 uses
  %.not = icmp eq i8 %i.a, 0
  %.pre = load i8, ptr %.022, align 1, !tbaa !11  ; 4 uses
  %.not30 = icmp eq i8 %.pre, 0
  %or.cond38 = select i1 %.not, i1 true, i1 %.not30
  br i1 %or.cond38, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = sext i8 %i.a to i32                      ; 2 uses
  %i.c = add i8 %i.a, -65
  %or.cond = icmp ult i8 %i.c, 26
  %i.d = or disjoint i32 %i.b, 32
  %spec.select = select i1 %or.cond, i32 %i.d, i32 %i.b
  %i.e = sext i8 %.pre to i32                     ; 2 uses
  %i.f = add i8 %.pre, -65
  %or.cond3 = icmp ult i8 %i.f, 26
  %i.g = or disjoint i32 %i.e, 32
  %.020 = select i1 %or.cond3, i32 %i.g, i32 %i.e
  %.not31.not = icmp eq i32 %spec.select, %.020
  %i.h = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %.022, i64 1
  br i1 %.not31.not, label %bb.b, label %.loopexit

.critedge:                                        ; preds = %bb.b
  %i.j = icmp eq i8 %i.a, %.pre
  %i.k = zext i1 %i.j to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.critedge
  %.2 = phi i32 [ %i.k, %.critedge ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6RandomD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !12
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = shl i32 %i.a, 2
  %i.d = sub i32 %i.b, %i.c                       ; 3 uses
  store i32 %i.d, ptr @programChecker, align 8, !tbaa !15
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.f = icmp sgt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5ArrayIjLi0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIjLi0EED2Ev.exit

_ZN5ArrayIjLi0EED2Ev.exit:                        ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.h) #38
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3BufC2Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !20
  store i32 %1, ptr %0, align 8, !tbaa !22
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN5ArrayIhLi0EEC2Ei.exit

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.f = add nsw i32 %i.e, %1                     ; 3 uses
  store i32 %i.f, ptr @programChecker, align 8, !tbaa !15
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZN14ProgramChecker5allocEi.exit.i.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i

_ZN14ProgramChecker5allocEi.exit.i.i:             ; preds = %bb.d, %bb.c
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 1) #40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

bb.f:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !24
  br label %_ZN5ArrayIhLi0EEC2Ei.exit

_ZN5ArrayIhLi0EEC2Ei.exit:                        ; preds = %bb.b, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3BufD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !22
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = sub i32 %i.b, %i.a                       ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5ArrayIhLi0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIhLi0EED2Ev.exit

_ZN5ArrayIhLi0EED2Ev.exit:                        ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.g) #38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4IlogD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !22
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = sub i32 %i.b, %i.a                       ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5ArrayIhLi0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIhLi0EED2Ev.exit

_ZN5ArrayIhLi0EED2Ev.exit:                        ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.g) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4IlogC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 65536, ptr %i.a, align 4, !tbaa !20
  store i32 65536, ptr %0, align 8, !tbaa !22
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = add nsw i32 %i.b, 65536                  ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i

_ZN14ProgramChecker5allocEi.exit.i.i:             ; preds = %bb.b, %bb.a
  %i.f = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 65536, i64 noundef 1) #40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %_ZN5ArrayIhLi0EEC2Ei.exit

bb.c:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIhLi0EEC2Ei.exit:                        ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  ret void

bb.e:                                             ; preds = %bb.e, %_ZN5ArrayIhLi0EEC2Ei.exit
  %indvars.iv = phi i64 [ 2, %_ZN5ArrayIhLi0EEC2Ei.exit ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %.067 = phi i32 [ 14155776, %_ZN5ArrayIhLi0EEC2Ei.exit ], [ %i.r, %bb.e ]
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.i = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.j = add nsw i32 %i.i, -1
  %.udiv = udiv i32 774541002, %i.j
  %i.k = add i32 %.udiv, %.067                    ; 2 uses
  %i.l = lshr i32 %i.k, 24
  %i.m = trunc nuw i32 %i.l to i8
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 %i.m, ptr %i.o, align 1, !tbaa !11
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.p = shl nuw nsw i32 %indvars.iv.tr.1, 1
  %i.q = add nsw i32 %i.p, -1
  %.udiv.1 = udiv i32 774541002, %i.q
  %i.r = add i32 %.udiv.1, %i.k                   ; 2 uses
  %i.s = lshr i32 %i.r, 24
  %i.t = trunc nuw i32 %i.s to i8
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next
  store i8 %i.t, ptr %i.v, align 1, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 65536
  br i1 %exitcond.not.1, label %bb.d, label %bb.e, !llvm.loop !25
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5ArrayIhLi0EEC2Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !20
  store i32 %1, ptr %0, align 8, !tbaa !22
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN5ArrayIhLi0EE6createEi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.f = add nsw i32 %i.e, %1                     ; 3 uses
  store i32 %i.f, ptr @programChecker, align 8, !tbaa !15
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZN14ProgramChecker5allocEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i

_ZN14ProgramChecker5allocEi.exit.i:               ; preds = %bb.d, %bb.c
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 1) #40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

bb.f:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !24
  br label %_ZN5ArrayIhLi0EE6createEi.exit

_ZN5ArrayIhLi0EE6createEi.exit:                   ; preds = %bb.b, %bb.f
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5ArrayIhLi0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !22
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = sub i32 %i.b, %i.a                       ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit

_ZN14ProgramChecker5allocEi.exit:                 ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.g) #38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -16777216, 16777216) i32 @_Z6squashi(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %0, 2047
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %0, -2047
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 127                          ; 2 uses
  %i.d = ashr i32 %0, 7
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = sub nuw nsw i32 128, %i.c
  %i.j = mul nsw i32 %i.h, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = mul nsw i32 %i.l, %i.c
  %i.n = add i32 %i.j, 64
  %i.o = add i32 %i.n, %i.m
  %i.p = ashr i32 %i.o, 7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ 4095, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7StretchD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !27
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = shl i32 %i.a, 1
  %i.d = sub i32 %i.b, %i.c                       ; 3 uses
  store i32 %i.d, ptr @programChecker, align 8, !tbaa !15
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.f = icmp sgt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5ArrayIsLi0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIsLi0EED2Ev.exit

_ZN5ArrayIsLi0EED2Ev.exit:                        ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.h) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7StretchC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4096, ptr %i.a, align 4, !tbaa !31
  store i32 4096, ptr %0, align 8, !tbaa !27
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = add nsw i32 %i.b, 8192                   ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i

_ZN14ProgramChecker5allocEi.exit.i.i:             ; preds = %bb.b, %bb.a
  %i.f = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 8192, i64 noundef 1) #40 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %_ZN5ArrayIsLi0EEC2Ei.exit

bb.c:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIsLi0EEC2Ei.exit:                        ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !32
  br label %_Z6squashi.exit

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8190
  store i16 2047, ptr %i.i, align 2, !tbaa !33
  ret void

_Z6squashi.exit:                                  ; preds = %_ZN5ArrayIsLi0EEC2Ei.exit, %._crit_edge
  %.01016 = phi i32 [ 0, %_ZN5ArrayIsLi0EEC2Ei.exit ], [ %.pre-phi, %._crit_edge ] ; 3 uses
  %.01115 = phi i32 [ -2047, %_ZN5ArrayIsLi0EEC2Ei.exit ], [ %i.ag, %._crit_edge ] ; 4 uses
  %i.j = and i32 %.01115, 127                     ; 2 uses
  %i.k = ashr i32 %.01115, 7
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 64
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = sub nuw nsw i32 128, %i.j
  %i.q = mul nsw i32 %i.o, %i.p
  %i.r = getelementptr i8, ptr %i.m, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = mul nsw i32 %i.s, %i.j
  %i.u = add i32 %i.q, 64
  %i.v = add i32 %i.u, %i.t
  %i.w = ashr i32 %i.v, 7                         ; 4 uses
  %.not13 = icmp sgt i32 %.01016, %i.w
  br i1 %.not13, label %_Z6squashi.exit.._crit_edge_crit_edge, label %iter.check

_Z6squashi.exit.._crit_edge_crit_edge:            ; preds = %_Z6squashi.exit
  %.pre = add nsw i32 %i.w, 1
  br label %._crit_edge
end_hunk_0
begin_hunk_1_@_Z8wavModelR5Mixer:bb.a
  %i.gt = load i32, ptr @bpos, align 4, !tbaa !4
  %.not301 = icmp eq i32 %i.gt, 0
  br i1 %.not301, label %bb.bo, label %bb.co

bb.bo:                                            ; preds = %bb.bn
  %i.gu = load i32, ptr @_ZZ8wavModelR5MixerE1s, align 4, !tbaa !4
  %i.gv = sub i32 %i.gq, %i.gr
  %i.gw = add i32 %i.gv, %i.gu                    ; 2 uses
  %i.gx = load i32, ptr @_ZZ8wavModelR5MixerE5bytes, align 4, !tbaa !4 ; 2 uses
  %i.gy = srem i32 %i.gw, %i.gx
  %i.gz = load i32, ptr @_ZZ8wavModelR5MixerE1w, align 4, !tbaa !4 ; 31 uses
  %i.ha = srem i32 %i.gw, %i.gz                   ; 13 uses
  %i.hb = sdiv i32 %i.ha, %i.gx                   ; 5 uses
  %.not302 = icmp eq i32 %i.gy, 0
  br i1 %.not302, label %.preheader508, label %_Z1ciiiii.exit395

.preheader508:                                    ; preds = %bb.bo
  %i.hc = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 3 uses
  %.b285526 = load i1, ptr @_ZL1D, align 4        ; 3 uses
  %i.hd = select i1 %.b285526, i32 12, i32 0
  %i.he = add nuw nsw i32 %i.hd, %i.hc
  %.not303527 = icmp slt i32 %i.he, 0
  br i1 %.not303527, label %._crit_edge529, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader508
  %i.hf = sext i32 %i.hb to i64                   ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.hf
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.hf
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.bs
  %.b285730 = phi i1 [ %.b285526, %.lr.ph ], [ %.b285, %bb.bs ]
  %i.hh = phi i32 [ %i.hc, %.lr.ph ], [ %i.hw, %bb.bs ] ; 2 uses
  %indvars.iv662 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next663, %bb.bs ] ; 6 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !4  ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv662, %i.hj
  br i1 %i.hk, label %._crit_edge757, label %bb.bq

._crit_edge757:                                   ; preds = %bb.bp
  %.pre761 = trunc nuw nsw i64 %indvars.iv662 to i32
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hl = xor i32 %i.hh, -1
  %i.hm = trunc nuw nsw i64 %indvars.iv662 to i32 ; 2 uses
  %i.hn = add i32 %i.hm, %i.hl                    ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  %i.hp = icmp slt i32 %i.hn, %i.hi
  %or.cond321 = and i1 %i.ho, %i.hp
  br i1 %or.cond321, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge757, %bb.bq
  %.pre-phi762 = phi i32 [ %.pre761, %._crit_edge757 ], [ %i.hm, %bb.bq ]
  %gep530 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv662 ; 2 uses
  %i.hq = load double, ptr %gep530, align 8, !tbaa !186
  %i.hr = tail call noundef i32 @_Z1Xii(i32 noundef 0, i32 noundef 1)
  %i.hs = tail call noundef i32 @_Z1Xii(i32 noundef %.pre-phi762, i32 noundef 1)
  %i.ht = mul nsw i32 %i.hs, %i.hr
  %i.hu = sitofp i32 %i.ht to double
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hq, double f0x3FEFDF3B645A1CAC, double %i.hu)
  store double %i.hv, ptr %gep530, align 8, !tbaa !186
  %.pre729 = load i32, ptr @_ZL1S, align 4, !tbaa !4
  %.b285.pre = load i1, ptr @_ZL1D, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.b285 = phi i1 [ %.b285730, %bb.bq ], [ %.b285.pre, %bb.br ] ; 3 uses
  %i.hw = phi i32 [ %i.hh, %bb.bq ], [ %.pre729, %bb.br ] ; 3 uses
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1
  %i.hx = select i1 %.b285, i32 12, i32 0
  %i.hy = add nuw nsw i32 %i.hx, %i.hw
  %i.hz = sext i32 %i.hy to i64
  %.not303.not = icmp slt i64 %indvars.iv662, %i.hz
  br i1 %.not303.not, label %bb.bp, label %._crit_edge529, !llvm.loop !196

._crit_edge529:                                   ; preds = %bb.bs, %.preheader508
  %.b284532 = phi i1 [ %.b285526, %.preheader508 ], [ %.b285, %bb.bs ]
  %i.ia = phi i32 [ %i.hc, %.preheader508 ], [ %i.hw, %bb.bs ] ; 4 uses
  %i.ib = load i32, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !4
  %i.ic = icmp eq i32 %i.ib, 2
  br i1 %i.ic, label %.preheader507, label %.loopexit506

.preheader507:                                    ; preds = %._crit_edge529
  br i1 %.b284532, label %.lr.ph536, label %.preheader505

.lr.ph536:                                        ; preds = %.preheader507
  %i.id = sext i32 %i.hb to i64                   ; 3 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.id
  %i.if = sext i32 %i.ia to i64
  br label %bb.bt

.preheader505:                                    ; preds = %bb.bv, %.preheader507
  %i.ig = phi i32 [ %i.ia, %.preheader507 ], [ %i.jf, %bb.bv ] ; 3 uses
  %.not305537 = icmp slt i32 %i.ig, 1
  br i1 %.not305537, label %.loopexit506, label %.lr.ph539

.lr.ph539:                                        ; preds = %.preheader505
  %i.ih = sext i32 %i.hb to i64                   ; 3 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.ih
  br label %bb.bw

bb.bt:                                            ; preds = %.lr.ph536, %bb.bv
  %.b284733 = phi i1 [ true, %.lr.ph536 ], [ %.b284, %bb.bv ]
  %i.ij = phi i32 [ %i.ia, %.lr.ph536 ], [ %i.jf, %bb.bv ] ; 3 uses
  %indvars.iv665 = phi i64 [ %i.if, %.lr.ph536 ], [ %indvars.iv.next666, %bb.bv ] ; 2 uses
  %indvars667 = trunc nsw i64 %indvars.iv665 to i32
  %indvars.iv.next666 = add nsw i64 %indvars.iv665, 1 ; 5 uses
  %i.ik = sub i32 %indvars667, %i.ij
  %i.il = load i32, ptr %i.ie, align 4, !tbaa !4
  %i.im = icmp slt i32 %i.ik, %i.il
  br i1 %i.im, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.in = add nuw nsw i32 %i.ij, 1                ; 2 uses
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [784 x i8], ptr %i.a, i64 %i.io
  %i.iq = getelementptr inbounds [16 x i8], ptr %i.ip, i64 %indvars.iv.next666
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.id
  %i.is = load double, ptr %i.ir, align 8, !tbaa !186
  %i.it = tail call noundef i32 @_Z1Xii(i32 noundef %i.in, i32 noundef 1)
  %i.iu = trunc nsw i64 %indvars.iv.next666 to i32
  %i.iv = tail call noundef i32 @_Z1Xii(i32 noundef %i.iu, i32 noundef 1)
  %i.iw = mul nsw i32 %i.iv, %i.it
  %i.ix = sitofp i32 %i.iw to double
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.is, double f0x3FEFDF3B645A1CAC, double %i.ix)
  %i.iz = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [784 x i8], ptr %i.a, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 784
  %i.jd = getelementptr inbounds [16 x i8], ptr %i.jc, i64 %indvars.iv.next666
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.id
  store double %i.iy, ptr %i.je, align 8, !tbaa !186
  %.b284.pre = load i1, ptr @_ZL1D, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.b284 = phi i1 [ %.b284733, %bb.bt ], [ %.b284.pre, %bb.bu ] ; 2 uses
  %i.jf = phi i32 [ %i.ij, %bb.bt ], [ %i.iz, %bb.bu ] ; 3 uses
  %i.jg = select i1 %.b284, i32 12, i32 0
  %i.jh = add nuw nsw i32 %i.jg, %i.jf
  %i.ji = sext i32 %i.jh to i64
  %.not304.not = icmp slt i64 %indvars.iv.next666, %i.ji
  br i1 %.not304.not, label %bb.bt, label %.preheader505, !llvm.loop !197

bb.bw:                                            ; preds = %.lr.ph539, %bb.by
  %i.jj = phi i32 [ %i.ig, %.lr.ph539 ], [ %i.kg, %bb.by ] ; 3 uses
  %indvars.iv668 = phi i64 [ 1, %.lr.ph539 ], [ %indvars.iv.next669, %bb.by ] ; 5 uses
  %i.jk = load i32, ptr %i.ii, align 4, !tbaa !4
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv668, %i.jl
  br i1 %i.jm, label %bb.bx, label %._crit_edge758

._crit_edge758:                                   ; preds = %bb.bw
  %.pre759 = sext i32 %i.jj to i64
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jn = getelementptr inbounds nuw [784 x i8], ptr %i.a, i64 %indvars.iv668 ; 2 uses
  %i.jo = sext i32 %i.jj to i64
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.ih
  %i.js = load double, ptr %i.jr, align 8, !tbaa !186
  %i.jt = trunc nuw nsw i64 %indvars.iv668 to i32
  %i.ju = tail call noundef i32 @_Z1Xii(i32 noundef %i.jt, i32 noundef 1)
  %i.jv = load i32, ptr @_ZL1S, align 4, !tbaa !4
  %i.jw = add nuw nsw i32 %i.jv, 1
  %i.jx = tail call noundef i32 @_Z1Xii(i32 noundef %i.jw, i32 noundef 1)
  %i.jy = mul nsw i32 %i.jx, %i.ju
  %i.jz = sitofp i32 %i.jy to double
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.js, double f0x3FEFDF3B645A1CAC, double %i.jz)
  %i.kb = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 2 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.ih
  store double %i.ka, ptr %i.kf, align 8, !tbaa !186
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge758, %bb.bx
  %.pre-phi760 = phi i64 [ %.pre759, %._crit_edge758 ], [ %i.kc, %bb.bx ]
  %i.kg = phi i32 [ %i.jj, %._crit_edge758 ], [ %i.kb, %bb.bx ] ; 2 uses
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1
  %.not305.not = icmp slt i64 %indvars.iv668, %.pre-phi760
  br i1 %.not305.not, label %bb.bw, label %.loopexit506, !llvm.loop !198

.loopexit506:                                     ; preds = %bb.by, %.preheader505, %._crit_edge529
  %i.kh = phi i32 [ %i.ia, %._crit_edge529 ], [ %i.ig, %.preheader505 ], [ %i.kg, %bb.by ] ; 6 uses
  %i.ki = sext i32 %i.hb to i64                   ; 12 uses
  %i.kj = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE1n, i64 %i.ki ; 3 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4
  %i.kl = add nsw i32 %i.kk, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !4
  %i.km = load i32, ptr @_ZZ8wavModelR5MixerE1K, align 4, !tbaa !4
  %i.kn = icmp eq i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.bz, label %.loopexit506._crit_edge

.loopexit506._crit_edge:                          ; preds = %.loopexit506
  %.b627.pre = load i1, ptr @_ZL1D, align 4
  br label %bb.cl

bb.bz:                                            ; preds = %.loopexit506
  %i.ko = load i32, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !4
  %i.kp = icmp eq i32 %i.ko, 1
  %invariant.gep566 = getelementptr [8 x i8], ptr %i.a, i64 %i.ki ; 4 uses
  %.b283570 = load i1, ptr @_ZL1D, align 4        ; 5 uses
  %i.kq = select i1 %.b283570, i32 12, i32 0
  %i.kr = add nuw nsw i32 %i.kq, %i.kh            ; 3 uses
  %.not310571 = icmp slt i32 %i.kr, 1             ; 2 uses
  br i1 %i.kp, label %.preheader499, label %.preheader503

.preheader503:                                    ; preds = %bb.bz
  br i1 %.not310571, label %.thread, label %.lr.ph556

.preheader499:                                    ; preds = %bb.bz
  br i1 %.not310571, label %.thread, label %.preheader498

.preheader498:                                    ; preds = %.preheader499, %._crit_edge561
  %.b283745 = phi i1 [ %.b282, %._crit_edge561 ], [ %.b283570, %.preheader499 ] ; 2 uses
  %i.ks = phi i32 [ %i.lh, %._crit_edge561 ], [ %i.kh, %.preheader499 ] ; 2 uses
  %indvars.iv677.a = phi i64 [ %indvars.iv.next678.a, %._crit_edge561 ], [ 1, %.preheader499 ] ; 6 uses
  %i.kt = select i1 %.b283745, i32 12, i32 0
  %i.ku = add nuw nsw i32 %i.kt, %i.ks            ; 2 uses
  %i.kv = sext i32 %i.ku to i64
  %.not316558 = icmp sgt i64 %indvars.iv677.a, %i.kv
  br i1 %.not316558, label %.loopexit500, label %.lr.ph560

.lr.ph560:                                        ; preds = %.preheader498
  %i.kw = add nsw i64 %indvars.iv677.a, -1        ; 2 uses
  %gep567 = getelementptr [784 x i8], ptr %invariant.gep566, i64 %i.kw
  %gep569 = getelementptr [784 x i8], ptr %invariant.gep566, i64 %indvars.iv677.a
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph560, %bb.ca
  %indvars.iv679 = phi i64 [ %indvars.iv677.a, %.lr.ph560 ], [ %indvars.iv.next680, %bb.ca ] ; 4 uses
  %i.ky = add nsw i64 %indvars.iv679, -1          ; 2 uses
  %gep563 = getelementptr [16 x i8], ptr %gep567, i64 %i.ky
  %i.kz = load double, ptr %gep563, align 8, !tbaa !186
  %i.la = tail call noundef i32 @_Z1Xii(i32 noundef %i.kx, i32 noundef 1)
  %i.lb = trunc nuw nsw i64 %i.ky to i32
  %i.lc = tail call noundef i32 @_Z1Xii(i32 noundef %i.lb, i32 noundef 1)
  %i.ld = mul nsw i32 %i.lc, %i.la
  %i.le = sitofp i32 %i.ld to double
  %i.lf = fsub double %i.kz, %i.le
  %i.lg = fdiv double %i.lf, f0x3FEFDF3B645A1CAC
  %gep565 = getelementptr [16 x i8], ptr %gep569, i64 %indvars.iv679
  store double %i.lg, ptr %gep565, align 8, !tbaa !186
  %indvars.iv.next680 = add nuw nsw i64 %indvars.iv679, 1
  %i.lh = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 3 uses
  %.b282 = load i1, ptr @_ZL1D, align 4           ; 3 uses
  %i.li = select i1 %.b282, i32 12, i32 0
  %i.lj = add nuw nsw i32 %i.li, %i.lh            ; 2 uses
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %.not316.not = icmp slt i64 %indvars.iv679, %i.lk
  br i1 %.not316.not, label %bb.ca, label %._crit_edge561, !llvm.loop !199

._crit_edge561:                                   ; preds = %bb.ca
  %i.ll = icmp slt i64 %indvars.iv677.a, %i.lk
  %indvars.iv.next678.a = add nuw nsw i64 %indvars.iv677.a, 1
  br i1 %i.ll, label %.preheader498, label %.loopexit500, !llvm.loop !200

.lr.ph556:                                        ; preds = %.preheader503, %.loopexit502
  %.b281742.a = phi i1 [ %.b281, %.loopexit502 ], [ %.b283570, %.preheader503 ] ; 5 uses
  %i.lm = phi i32 [ %i.mm, %.loopexit502 ], [ %i.kh, %.preheader503 ] ; 6 uses
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %.loopexit502 ], [ 1, %.preheader503 ] ; 7 uses
  %i.ln = add nuw nsw i32 %i.lm, 1
  %i.lo = zext i32 %i.ln to i64
  %.not307 = icmp eq i64 %indvars.iv671, %i.lo
  br i1 %.not307, label %.loopexit502, label %.preheader501

.preheader501:                                    ; preds = %.lr.ph556
  %i.lp = select i1 %.b281742.a, i32 12, i32 0
  %i.lq = add nuw nsw i32 %i.lp, %i.lm
  %i.lr = sext i32 %i.lq to i64
  %.not308541 = icmp sgt i64 %indvars.iv671, %i.lr
  br i1 %.not308541, label %.loopexit502, label %.lr.ph543

.lr.ph543:                                        ; preds = %.preheader501
  %i.ls = add nsw i64 %indvars.iv671, -1          ; 2 uses
  %gep549 = getelementptr [784 x i8], ptr %invariant.gep566, i64 %i.ls
  %gep551 = getelementptr [784 x i8], ptr %invariant.gep566, i64 %indvars.iv671
  %i.lt = trunc nuw nsw i64 %i.ls to i32
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph543, %bb.cd
  %.b281740 = phi i1 [ %.b281742.a, %.lr.ph543 ], [ %.b281739, %bb.cd ]
  %i.lu = phi i32 [ %i.lm, %.lr.ph543 ], [ %i.mh, %bb.cd ]
  %.b280737 = phi i1 [ %.b281742.a, %.lr.ph543 ], [ %.b280, %bb.cd ]
  %i.lv = phi i32 [ %i.lm, %.lr.ph543 ], [ %i.mi, %bb.cd ] ; 2 uses
  %indvars.iv673 = phi i64 [ %indvars.iv671, %.lr.ph543 ], [ %indvars.iv.next674, %bb.cd ] ; 5 uses
  %i.lw = add nuw nsw i32 %i.lv, 1
  %i.lx = zext i32 %i.lw to i64
  %.not309 = icmp eq i64 %indvars.iv673, %i.lx
  br i1 %.not309, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ly = add nsw i64 %indvars.iv673, -1          ; 2 uses
  %gep545 = getelementptr [16 x i8], ptr %gep549, i64 %i.ly
  %i.lz = load double, ptr %gep545, align 8, !tbaa !186
  %i.ma = tail call noundef i32 @_Z1Xii(i32 noundef %i.lt, i32 noundef 1)
  %i.mb = trunc nuw nsw i64 %i.ly to i32
  %i.mc = tail call noundef i32 @_Z1Xii(i32 noundef %i.mb, i32 noundef 1)
  %i.md = mul nsw i32 %i.mc, %i.ma
  %i.me = sitofp i32 %i.md to double
  %i.mf = fsub double %i.lz, %i.me
  %i.mg = fdiv double %i.mf, f0x3FEFDF3B645A1CAC
  %gep547 = getelementptr [16 x i8], ptr %gep551, i64 %indvars.iv673
  store double %i.mg, ptr %gep547, align 8, !tbaa !186
  %.pre736 = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 2 uses
  %.b280.pre = load i1, ptr @_ZL1D, align 4       ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.b281739 = phi i1 [ %.b281740, %bb.cb ], [ %.b280.pre, %bb.cc ] ; 2 uses
  %i.mh = phi i32 [ %i.lu, %bb.cb ], [ %.pre736, %bb.cc ] ; 2 uses
  %.b280 = phi i1 [ %.b280737, %bb.cb ], [ %.b280.pre, %bb.cc ] ; 2 uses
  %i.mi = phi i32 [ %i.lv, %bb.cb ], [ %.pre736, %bb.cc ] ; 2 uses
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1
  %i.mj = select i1 %.b280, i32 12, i32 0
  %i.mk = add nuw nsw i32 %i.mj, %i.mi
  %i.ml = sext i32 %i.mk to i64
  %.not308.not = icmp slt i64 %indvars.iv673, %i.ml
  br i1 %.not308.not, label %bb.cb, label %.loopexit502, !llvm.loop !201

.loopexit502:                                     ; preds = %bb.cd, %.preheader501, %.lr.ph556
  %.b281 = phi i1 [ %.b281742.a, %.lr.ph556 ], [ %.b281742.a, %.preheader501 ], [ %.b281739, %bb.cd ] ; 3 uses
  %i.mm = phi i32 [ %i.lm, %.lr.ph556 ], [ %i.lm, %.preheader501 ], [ %i.mh, %bb.cd ] ; 3 uses
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1
  %i.mn = select i1 %.b281, i32 12, i32 0
  %i.mo = add nuw nsw i32 %i.mn, %i.mm            ; 2 uses
  %i.mp = sext i32 %i.mo to i64
  %.not306.not = icmp slt i64 %indvars.iv671, %i.mp
  br i1 %.not306.not, label %.lr.ph556, label %.loopexit500, !llvm.loop !202

.loopexit500:                                     ; preds = %.loopexit502, %.preheader498, %._crit_edge561
  %.pre-phi749 = phi i32 [ %i.lj, %._crit_edge561 ], [ %i.ku, %.preheader498 ], [ %i.mo, %.loopexit502 ] ; 2 uses
  %.b279593 = phi i1 [ %.b282, %._crit_edge561 ], [ %.b283745, %.preheader498 ], [ %.b281, %.loopexit502 ] ; 2 uses
  %i.mq = phi i32 [ %i.lh, %._crit_edge561 ], [ %i.ks, %.preheader498 ], [ %i.mm, %.loopexit502 ] ; 2 uses
  %.not311593 = icmp slt i32 %.pre-phi749, 1
  br i1 %.not311593, label %.thread, label %.lr.ph596

.loopexit496:                                     ; preds = %.lr.ph592.split.prol.loopexit, %.lr.ph592.split, %._crit_edge583.us
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph596, !llvm.loop !203

.lr.ph596:                                        ; preds = %.loopexit500, %.loopexit496
  %indvar = phi i64 [ %indvar.next, %.loopexit496 ], [ 0, %.loopexit500 ] ; 9 uses
  %.b628753 = phi i1 [ %.b278, %.loopexit496 ], [ %.b279593, %.loopexit500 ]
  %1 = phi i32 [ %2, %.loopexit496 ], [ %i.mq, %.loopexit500 ]
  %indvars.iv704 = phi i64 [ %indvars.iv.next705, %.loopexit496 ], [ 1, %.loopexit500 ] ; 9 uses
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %.loopexit496 ], [ 2, %.loopexit500 ] ; 6 uses
  %i.mr = add i64 %indvar, -1
  %i.ms = trunc i64 %indvar to i32
  %i.mt = trunc i64 %indvar to i32
  %i.mu = getelementptr inbounds nuw [784 x i8], ptr %i.a, i64 %indvars.iv704 ; 2 uses
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mu, i64 %indvars.iv704
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.ki
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !186 ; 3 uses
  %i.my = icmp samesign ugt i64 %indvars.iv704, 1 ; 2 uses
  br i1 %i.my, label %.lr.ph576, label %._crit_edge577

.lr.ph576:                                        ; preds = %.lr.ph596
  %i.mz = add i64 %indvar, -1
  %i.na = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv704 ; 5 uses
  %xtraiter855 = and i64 %indvar, 3               ; 3 uses
  %i.nb = icmp ult i64 %i.mz, 3
  br i1 %i.nb, label %.epil.preheader, label %.lr.ph576.new

.lr.ph576.new:                                    ; preds = %.lr.ph576
  %unroll_iter = and i64 %indvar, -4
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.lr.ph576.new
  %indvars.iv683 = phi i64 [ 1, %.lr.ph576.new ], [ %indvars.iv.next684.3, %bb.ce ] ; 5 uses
  %.0255574 = phi double [ %i.mx, %.lr.ph576.new ], [ %i.nu, %bb.ce ]
  %niter = phi i64 [ 0, %.lr.ph576.new ], [ %niter.next.3, %bb.ce ]
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv683
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !186 ; 2 uses
  %i.ne = fneg double %i.nd
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.nd, double %.0255574)
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv683
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !186 ; 2 uses
  %i.nj = fneg double %i.ni
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.ni, double %i.nf)
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv683
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !186 ; 2 uses
  %i.no = fneg double %i.nn
  %i.np = tail call double @llvm.fmuladd.f64(double %i.no, double %i.nn, double %i.nk)
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv683
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !186 ; 2 uses
  %i.nt = fneg double %i.ns
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.nt, double %i.ns, double %i.np) ; 3 uses
  %indvars.iv.next684.3 = add nuw nsw i64 %indvars.iv683, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge577.loopexit.unr-lcssa, label %bb.ce, !llvm.loop !204

._crit_edge577.loopexit.unr-lcssa:                ; preds = %bb.ce
  %lcmp.mod856.not = icmp eq i64 %xtraiter855, 0
  br i1 %lcmp.mod856.not, label %._crit_edge577, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge577.loopexit.unr-lcssa, %.lr.ph576
  %indvars.iv683.epil.init = phi i64 [ 1, %.lr.ph576 ], [ %indvars.iv.next684.3, %._crit_edge577.loopexit.unr-lcssa ]
  %.0255574.epil.init = phi double [ %i.mx, %.lr.ph576 ], [ %i.nu, %._crit_edge577.loopexit.unr-lcssa ]
  %lcmp.mod858 = icmp ne i64 %xtraiter855, 0
  tail call void @llvm.assume(i1 %lcmp.mod858)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.epil.preheader
  %indvars.iv683.epil = phi i64 [ %indvars.iv683.epil.init, %.epil.preheader ], [ %indvars.iv.next684.epil, %bb.cf ] ; 2 uses
  %.0255574.epil = phi double [ %.0255574.epil.init, %.epil.preheader ], [ %i.ny, %bb.cf ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cf ]
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv683.epil
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !186 ; 2 uses
  %i.nx = fneg double %i.nw
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nx, double %i.nw, double %.0255574.epil) ; 2 uses
  %indvars.iv.next684.epil = add nuw nsw i64 %indvars.iv683.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter855
  br i1 %epil.iter.cmp.not, label %._crit_edge577, label %bb.cf, !llvm.loop !205

._crit_edge577:                                   ; preds = %._crit_edge577.loopexit.unr-lcssa, %bb.cf, %.lr.ph596
  %.0255.lcssa = phi double [ %i.mx, %.lr.ph596 ], [ %i.nu, %._crit_edge577.loopexit.unr-lcssa ], [ %i.ny, %bb.cf ] ; 2 uses
  %i.nz = fcmp ogt double %.0255.lcssa, 0.000000e+00
  br i1 %i.nz, label %bb.cg, label %.loopexit

bb.cg:                                            ; preds = %._crit_edge577
  %i.oa = tail call double @sqrt(double noundef %.0255.lcssa) #38, !tbaa !4
  %i.ob = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv704 ; 6 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv704 ; 5 uses
  store double %i.oa, ptr %i.oc, align 8, !tbaa !186
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1
  %2 = load i32, ptr @_ZL1S, align 4, !tbaa !4    ; 6 uses
  %.b278 = load i1, ptr @_ZL1D, align 4           ; 3 uses
  %3 = select i1 %.b278, i32 12, i32 0            ; 3 uses
  %4 = add nuw nsw i32 %3, %2                     ; 2 uses
  %invariant.gep585 = getelementptr [8 x i8], ptr %i.mu, i64 %i.ki ; 4 uses
  %invariant.gep587 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv704 ; 4 uses
  %5 = sext i32 %4 to i64
  %.not315589.not = icmp slt i64 %indvars.iv704, %5
  br i1 %.not315589.not, label %.lr.ph592, label %.thread

.lr.ph592:                                        ; preds = %bb.cg
  %6 = or disjoint i32 %3, 1
  %7 = add i32 %6, %2                             ; 2 uses
  br i1 %i.my, label %.lr.ph582.us.preheader, label %.lr.ph592.split.preheader

.lr.ph592.split.preheader:                        ; preds = %.lr.ph592
  %8 = add i32 %3, %2
  %reass.sub887 = sub i32 %8, %i.mt
  %i.od = sub i32 %i.ms, %2
  %i.oe = and i32 %i.od, 1
  %lcmp.mod860.not.not = icmp eq i32 %i.oe, 0
  br i1 %lcmp.mod860.not.not, label %.lr.ph592.split.prol, label %.lr.ph592.split.prol.loopexit

.lr.ph592.split.prol:                             ; preds = %.lr.ph592.split.preheader
  %gep586.prol = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv688
  %i.of = load double, ptr %gep586.prol, align 8, !tbaa !186
  %i.og = load double, ptr %i.oc, align 8, !tbaa !186
  %i.oh = fdiv double %i.of, %i.og
  %gep588.prol = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep587, i64 %indvars.iv688
  store double %i.oh, ptr %gep588.prol, align 8, !tbaa !186
  %indvars.iv.next691.prol = add nuw nsw i64 %indvars.iv688, 1
  br label %.lr.ph592.split.prol.loopexit

.lr.ph592.split.prol.loopexit:                    ; preds = %.lr.ph592.split.prol, %.lr.ph592.split.preheader
  %indvars.iv690.unr = phi i64 [ %indvars.iv688, %.lr.ph592.split.preheader ], [ %indvars.iv.next691.prol, %.lr.ph592.split.prol ]
  %i.oi = icmp eq i32 %reass.sub887, 2
  br i1 %i.oi, label %.loopexit496, label %.lr.ph592.split

.lr.ph582.us.preheader:                           ; preds = %.lr.ph592
  %xtraiter863 = and i64 %indvar, 3               ; 3 uses
  %i.oj = icmp ult i64 %i.mr, 3
  %unroll_iter868 = and i64 %indvar, -4
  %lcmp.mod865.not = icmp eq i64 %xtraiter863, 0
  %lcmp.mod867 = icmp ne i64 %xtraiter863, 0
  br label %.lr.ph582.us

.lr.ph582.us:                                     ; preds = %.lr.ph582.us.preheader, %._crit_edge583.us
  %indvars.iv699 = phi i64 [ %indvars.iv.next700, %._crit_edge583.us ], [ %indvars.iv688, %.lr.ph582.us.preheader ] ; 4 uses
  %gep586.us = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv699
  %i.ok = load double, ptr %gep586.us, align 8, !tbaa !186 ; 2 uses
  %i.ol = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv699 ; 5 uses
  br i1 %i.oj, label %.epil.preheader862, label %.lr.ph582.us.new

.lr.ph582.us.new:                                 ; preds = %.lr.ph582.us, %.lr.ph582.us.new
  %indvars.iv694.a = phi i64 [ %indvars.iv.next695.3, %.lr.ph582.us.new ], [ 1, %.lr.ph582.us ] ; 6 uses
  %.1256580.us = phi double [ %i.pj, %.lr.ph582.us.new ], [ %i.ok, %.lr.ph582.us ]
  %niter869 = phi i64 [ %niter869.next.3, %.lr.ph582.us.new ], [ 0, %.lr.ph582.us ]
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv694.a
  %i.on = load double, ptr %i.om, align 8, !tbaa !186
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv694.a
  %i.op = load double, ptr %i.oo, align 8, !tbaa !186
  %i.oq = fneg double %i.on
  %i.or = tail call double @llvm.fmuladd.f64(double %i.oq, double %i.op, double %.1256580.us)
  %indvars.iv.next695.a = add nuw nsw i64 %indvars.iv694.a, 1 ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next695.a
  %i.ot = load double, ptr %i.os, align 8, !tbaa !186
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv.next695.a
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !186
  %i.ow = fneg double %i.ot
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.ow, double %i.ov, double %i.or)
  %indvars.iv.next695.1.a = add nuw nsw i64 %indvars.iv694.a, 2 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next695.1.a
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !186
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv.next695.1.a
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !186
  %i.pc = fneg double %i.oz
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.pc, double %i.pb, double %i.ox)
  %indvars.iv.next695.2 = add nuw nsw i64 %indvars.iv694.a, 3 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next695.2
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !186
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv.next695.2
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !186
  %i.pi = fneg double %i.pf
  %i.pj = tail call double @llvm.fmuladd.f64(double %i.pi, double %i.ph, double %i.pd) ; 3 uses
  %indvars.iv.next695.3 = add nuw nsw i64 %indvars.iv694.a, 4 ; 2 uses
  %niter869.next.3 = add nuw i64 %niter869, 4     ; 2 uses
  %niter869.ncmp.3 = icmp eq i64 %niter869.next.3, %unroll_iter868
  br i1 %niter869.ncmp.3, label %._crit_edge583.us.unr-lcssa, label %.lr.ph582.us.new, !llvm.loop !206

._crit_edge583.us.unr-lcssa:                      ; preds = %.lr.ph582.us.new
  br i1 %lcmp.mod865.not, label %._crit_edge583.us, label %.epil.preheader862

.epil.preheader862:                               ; preds = %._crit_edge583.us.unr-lcssa, %.lr.ph582.us
  %indvars.iv694.epil.init = phi i64 [ 1, %.lr.ph582.us ], [ %indvars.iv.next695.3, %._crit_edge583.us.unr-lcssa ]
  %.1256580.us.epil.init = phi double [ %i.ok, %.lr.ph582.us ], [ %i.pj, %._crit_edge583.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod867)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.epil.preheader862
  %indvars.iv694.epil = phi i64 [ %indvars.iv694.epil.init, %.epil.preheader862 ], [ %indvars.iv.next695.epil, %bb.ch ] ; 3 uses
  %.1256580.us.epil = phi double [ %.1256580.us.epil.init, %.epil.preheader862 ], [ %i.pp, %bb.ch ]
  %epil.iter864 = phi i64 [ 0, %.epil.preheader862 ], [ %epil.iter864.next, %bb.ch ]
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv694.epil
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !186
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv694.epil
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !186
  %i.po = fneg double %i.pl
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.po, double %i.pn, double %.1256580.us.epil) ; 2 uses
  %indvars.iv.next695.epil = add nuw nsw i64 %indvars.iv694.epil, 1
  %epil.iter864.next = add i64 %epil.iter864, 1   ; 2 uses
  %epil.iter864.cmp.not = icmp eq i64 %epil.iter864.next, %xtraiter863
  br i1 %epil.iter864.cmp.not, label %._crit_edge583.us, label %bb.ch, !llvm.loop !207

._crit_edge583.us:                                ; preds = %bb.ch, %._crit_edge583.us.unr-lcssa
  %.lcssa840 = phi double [ %i.pj, %._crit_edge583.us.unr-lcssa ], [ %i.pp, %bb.ch ]
  %i.pq = load double, ptr %i.oc, align 8, !tbaa !186
  %i.pr = fdiv double %.lcssa840, %i.pq
  %gep588.us = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep587, i64 %indvars.iv699
  store double %i.pr, ptr %gep588.us, align 8, !tbaa !186
  %indvars.iv.next700 = add nuw nsw i64 %indvars.iv699, 1 ; 2 uses
  %lftr.wideiv702 = trunc i64 %indvars.iv.next700 to i32
  %exitcond703.not = icmp eq i32 %7, %lftr.wideiv702
  br i1 %exitcond703.not, label %.loopexit496, label %.lr.ph582.us, !llvm.loop !208

.lr.ph592.split:                                  ; preds = %.lr.ph592.split.prol.loopexit, %.lr.ph592.split
  %indvars.iv690 = phi i64 [ %indvars.iv.next691.1, %.lr.ph592.split ], [ %indvars.iv690.unr, %.lr.ph592.split.prol.loopexit ] ; 4 uses
  %gep586 = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv690
  %i.ps = load double, ptr %gep586, align 8, !tbaa !186
  %i.pt = load double, ptr %i.oc, align 8, !tbaa !186
  %i.pu = fdiv double %i.ps, %i.pt
  %gep588 = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep587, i64 %indvars.iv690
  store double %i.pu, ptr %gep588, align 8, !tbaa !186
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1 ; 2 uses
  %gep586.1 = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv.next691
  %i.pv = load double, ptr %gep586.1, align 8, !tbaa !186
  %i.pw = load double, ptr %i.oc, align 8, !tbaa !186
  %i.px = fdiv double %i.pv, %i.pw
  %gep588.1 = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep587, i64 %indvars.iv.next691
  store double %i.px, ptr %gep588.1, align 8, !tbaa !186
  %indvars.iv.next691.1 = add nuw nsw i64 %indvars.iv690, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next691.1 to i32
  %exitcond693.not.1 = icmp eq i32 %7, %lftr.wideiv.1
  br i1 %exitcond693.not.1, label %.loopexit496, label %.lr.ph592.split, !llvm.loop !208

.thread:                                          ; preds = %bb.cg, %.preheader503, %.preheader499, %.loopexit500
  %.not311593786 = phi i1 [ %.b279593, %.loopexit500 ], [ %.b283570, %.preheader503 ], [ %.b283570, %.preheader499 ], [ %.b278, %bb.cg ] ; 3 uses
  %.pre-phi785 = phi i32 [ %i.mq, %.loopexit500 ], [ %i.kh, %.preheader503 ], [ %i.kh, %.preheader499 ], [ %2, %bb.cg ] ; 4 uses
  %.pre-phi749783 = phi i32 [ %.pre-phi749, %.loopexit500 ], [ %i.kr, %.preheader503 ], [ %i.kr, %.preheader499 ], [ %4, %bb.cg ] ; 5 uses
  %i.py = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.ki
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !4
  %i.qa = add nuw nsw i32 %.pre-phi785, 1
  %i.qb = icmp sgt i32 %i.pz, %i.qa
  br i1 %i.qb, label %.preheader495, label %.loopexit

.preheader495:                                    ; preds = %.thread
  %invariant.gep605 = getelementptr [8 x i8], ptr %i.a, i64 %i.ki ; 9 uses
  %.not312610 = icmp slt i32 %.pre-phi749783, 1
  br i1 %.not312610, label %.loopexit, label %.lr.ph611

.lr.ph611:                                        ; preds = %.preheader495
  %i.qc = add nuw i32 %.pre-phi749783, 1
  %wide.trip.count717 = zext i32 %i.qc to i64
  br label %bb.ci

.preheader.lr.ph:                                 ; preds = %._crit_edge604
  %i.qd = zext nneg i32 %.pre-phi749783 to i64
  %i.qe = zext nneg i32 %.pre-phi749783 to i64
  br label %.preheader

bb.ci:                                            ; preds = %.lr.ph611, %._crit_edge604
  %indvar871 = phi i64 [ 0, %.lr.ph611 ], [ %indvar.next872, %._crit_edge604 ] ; 5 uses
  %indvars.iv714 = phi i64 [ 1, %.lr.ph611 ], [ %indvars.iv.next715, %._crit_edge604 ] ; 7 uses
  %gep606 = getelementptr [16 x i8], ptr %invariant.gep605, i64 %indvars.iv714
  %i.qf = load double, ptr %gep606, align 8, !tbaa !186 ; 4 uses
  %gep608 = getelementptr [784 x i8], ptr %invariant.gep605, i64 %indvars.iv714 ; 5 uses
  store double %i.qf, ptr %gep608, align 8, !tbaa !186
  %i.qg = icmp samesign ugt i64 %indvars.iv714, 1
  br i1 %i.qg, label %.lr.ph603, label %._crit_edge604

.lr.ph603:                                        ; preds = %bb.ci
  %i.qh = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv714 ; 3 uses
  %xtraiter873 = and i64 %indvar871, 1
  %i.qi = icmp eq i64 %indvar871, 1
  br i1 %i.qi, label %.epil.preheader870, label %.lr.ph603.new

.lr.ph603.new:                                    ; preds = %.lr.ph603
  %unroll_iter878 = and i64 %indvar871, -2
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph603.new
  %indvars.iv709 = phi i64 [ 1, %.lr.ph603.new ], [ %indvars.iv.next710.1, %bb.cj ] ; 4 uses
  %i.qj = phi double [ %i.qf, %.lr.ph603.new ], [ %i.qt, %bb.cj ]
  %niter879 = phi i64 [ 0, %.lr.ph603.new ], [ %niter879.next.1, %bb.cj ]
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv709
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !186
  %gep600 = getelementptr [784 x i8], ptr %invariant.gep605, i64 %indvars.iv709
  %i.qm = load double, ptr %gep600, align 8, !tbaa !186
  %i.qn = fneg double %i.ql
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.qm, double %i.qj) ; 2 uses
  store double %i.qo, ptr %gep608, align 8, !tbaa !186
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv.next710
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !186
  %gep600.1 = getelementptr [784 x i8], ptr %invariant.gep605, i64 %indvars.iv.next710
  %i.qr = load double, ptr %gep600.1, align 8, !tbaa !186
  %i.qs = fneg double %i.qq
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.qr, double %i.qo) ; 4 uses
  store double %i.qt, ptr %gep608, align 8, !tbaa !186
  %indvars.iv.next710.1 = add nuw nsw i64 %indvars.iv709, 2 ; 2 uses
  %niter879.next.1 = add nuw i64 %niter879, 2     ; 2 uses
  %niter879.ncmp.1 = icmp eq i64 %niter879.next.1, %unroll_iter878
  br i1 %niter879.ncmp.1, label %._crit_edge604.loopexit.unr-lcssa, label %bb.cj, !llvm.loop !209

._crit_edge604.loopexit.unr-lcssa:                ; preds = %bb.cj
  %lcmp.mod875.not = icmp eq i64 %xtraiter873, 0
  br i1 %lcmp.mod875.not, label %._crit_edge604, label %.epil.preheader870

.epil.preheader870:                               ; preds = %._crit_edge604.loopexit.unr-lcssa, %.lr.ph603
  %indvars.iv709.epil.init = phi i64 [ 1, %.lr.ph603 ], [ %indvars.iv.next710.1, %._crit_edge604.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.qf, %.lr.ph603 ], [ %i.qt, %._crit_edge604.loopexit.unr-lcssa ]
  %lcmp.mod877 = trunc i64 %indvar871 to i1
  tail call void @llvm.assume(i1 %lcmp.mod877)
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv709.epil.init
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !186
  %gep600.epil = getelementptr [784 x i8], ptr %invariant.gep605, i64 %indvars.iv709.epil.init
  %i.qw = load double, ptr %gep600.epil, align 8, !tbaa !186
  %i.qx = fneg double %i.qv
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.qx, double %i.qw, double %.epil.init) ; 2 uses
  store double %i.qy, ptr %gep608, align 8, !tbaa !186
  br label %._crit_edge604

._crit_edge604:                                   ; preds = %.epil.preheader870, %._crit_edge604.loopexit.unr-lcssa, %bb.ci
  %i.qz = phi double [ %i.qf, %bb.ci ], [ %i.qt, %._crit_edge604.loopexit.unr-lcssa ], [ %i.qy, %.epil.preheader870 ]
  %i.ra = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv714
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv714
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !186
  %i.rd = fdiv double %i.qz, %i.rc
  store double %i.rd, ptr %gep608, align 8, !tbaa !186
  %indvars.iv.next715 = add nuw nsw i64 %indvars.iv714, 1 ; 2 uses
  %exitcond718.not = icmp eq i64 %indvars.iv.next715, %wide.trip.count717
  %indvar.next872 = add i64 %indvar871, 1
  br i1 %exitcond718.not, label %.preheader.lr.ph, label %bb.ci, !llvm.loop !210

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge619
  %indvars.iv719 = phi i64 [ %i.qd, %.preheader.lr.ph ], [ %indvars.iv.next720, %._crit_edge619 ] ; 10 uses
  %.not314.not616 = icmp slt i64 %indvars.iv719, %i.qe
  br i1 %.not314.not616, label %.lr.ph618, label %.preheader.._crit_edge619_crit_edge

.preheader.._crit_edge619_crit_edge:              ; preds = %.preheader
  %gep623.phi.trans.insert = getelementptr [784 x i8], ptr %invariant.gep605, i64 %indvars.iv719
  %.pre747 = load double, ptr %gep623.phi.trans.insert, align 8, !tbaa !186
  br label %._crit_edge619

.lr.ph618:                                        ; preds = %.preheader
  %invariant.gep620 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv719
  %gep615 = getelementptr [784 x i8], ptr %invariant.gep605, i64 %indvars.iv719 ; 2 uses
  %gep615.promoted = load double, ptr %gep615, align 8, !tbaa !186
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph618, %bb.ck
  %indvars.iv721 = phi i64 [ %indvars.iv719, %.lr.ph618 ], [ %indvars.iv.next722.a, %bb.ck ]
  %i.re = phi double [ %gep615.promoted, %.lr.ph618 ], [ %i.ri, %bb.ck ]
  %indvars.iv.next722.a = add nuw nsw i64 %indvars.iv721, 1 ; 4 uses
  %gep621 = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep620, i64 %indvars.iv.next722.a
  %i.rf = load double, ptr %gep621, align 8, !tbaa !186
  %gep613 = getelementptr [784 x i8], ptr %invariant.gep605, i64 %indvars.iv.next722.a
  %i.rg = load double, ptr %gep613, align 8, !tbaa !186
  %i.rh = fneg double %i.rf
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.rg, double %i.re) ; 3 uses
  store double %i.ri, ptr %gep615, align 8, !tbaa !186
  %i.rj = trunc nuw i64 %indvars.iv.next722.a to i32
  %.not314.not = icmp sgt i32 %.pre-phi749783, %i.rj
  br i1 %.not314.not, label %bb.ck, label %._crit_edge619, !llvm.loop !211

._crit_edge619:                                   ; preds = %bb.ck, %.preheader.._crit_edge619_crit_edge
  %i.rk = phi double [ %.pre747, %.preheader.._crit_edge619_crit_edge ], [ %i.ri, %bb.ck ]
  %i.rl = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv719
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv719
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !186
  %gep623 = getelementptr [784 x i8], ptr %invariant.gep605, i64 %indvars.iv719
  %i.ro = fdiv double %i.rk, %i.rn
  store double %i.ro, ptr %gep623, align 8, !tbaa !186
  %indvars.iv.next720 = add nsw i64 %indvars.iv719, -1
  %i.rp = icmp sgt i64 %indvars.iv719, 1
  br i1 %i.rp, label %.preheader, label %.loopexit, !llvm.loop !212

.loopexit:                                        ; preds = %._crit_edge577, %._crit_edge619, %.preheader495, %.thread
  %.b628751 = phi i1 [ %.not311593786, %.preheader495 ], [ %.not311593786, %.thread ], [ %.not311593786, %._crit_edge619 ], [ %.b628753, %._crit_edge577 ]
  %.pre-phi749784 = phi i32 [ %.pre-phi785, %.preheader495 ], [ %.pre-phi785, %.thread ], [ %.pre-phi785, %._crit_edge619 ], [ %1, %._crit_edge577 ]
  store i32 0, ptr %i.kj, align 4, !tbaa !4
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit506._crit_edge, %.loopexit
  %.b628 = phi i1 [ %.b628751, %.loopexit ], [ %.b627.pre, %.loopexit506._crit_edge ]
  %.pre-phi753 = phi i32 [ %.pre-phi749784, %.loopexit ], [ %i.kh, %.loopexit506._crit_edge ]
  %invariant.gep625 = getelementptr [8 x i8], ptr %i.a, i64 %i.ki
  %9 = select i1 %.b628, i32 12, i32 0
  %10 = add nuw nsw i32 %9, %.pre-phi753
  %.not313628 = icmp slt i32 %10, 1
  br i1 %.not313628, label %._crit_edge633, label %.lr.ph632

.lr.ph632:                                        ; preds = %bb.cl, %.lr.ph632
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %.lr.ph632 ], [ 1, %bb.cl ] ; 4 uses
  %.2257630 = phi double [ %i.ru, %.lr.ph632 ], [ 0.000000e+00, %bb.cl ]
  %gep626 = getelementptr [784 x i8], ptr %invariant.gep625, i64 %indvars.iv725
  %i.rq = load double, ptr %gep626, align 8, !tbaa !186
  %i.rr = trunc nuw nsw i64 %indvars.iv725 to i32
  %i.rs = tail call noundef i32 @_Z1Xii(i32 noundef %i.rr, i32 noundef 0)
  %i.rt = sitofp i32 %i.rs to double
  %i.ru = tail call double @llvm.fmuladd.f64(double %i.rq, double %i.rt, double %.2257630) ; 2 uses
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1
  %i.rv = load i32, ptr @_ZL1S, align 4, !tbaa !4
  %.b = load i1, ptr @_ZL1D, align 4
  %i.rw = select i1 %.b, i32 12, i32 0
  %i.rx = add nuw nsw i32 %i.rw, %i.rv
  %i.ry = sext i32 %i.rx to i64
  %.not313.not = icmp slt i64 %indvars.iv725, %i.ry
  br i1 %.not313.not, label %.lr.ph632, label %._crit_edge633.loopexit, !llvm.loop !213

._crit_edge633.loopexit:                          ; preds = %.lr.ph632
  %i.rz = tail call double @llvm.floor.f64(double %i.ru)
  %i.sa = fptosi double %i.rz to i32
  br label %._crit_edge633

._crit_edge633:                                   ; preds = %._crit_edge633.loopexit, %bb.cl
  %.2257.lcssa = phi i32 [ 0, %bb.cl ], [ %i.sa, %._crit_edge633.loopexit ] ; 4 uses
  %i.sb = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2pr, i64 16), i64 %i.ki ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !4
  %i.sd = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2pr, i64 24), i64 %i.ki
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !4
  %i.se = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2pr, i64 8), i64 %i.ki ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !4  ; 3 uses
  store i32 %i.sf, ptr %i.sb, align 4, !tbaa !4
  %i.sg = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE2pr, i64 %i.ki ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !4  ; 4 uses
  store i32 %i.sh, ptr %i.se, align 4, !tbaa !4
  store i32 %.2257.lcssa, ptr %i.sg, align 4, !tbaa !4
  %i.si = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.ki ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !4
  %i.sk = add nsw i32 %i.sj, 1
  store i32 %i.sk, ptr %i.si, align 4, !tbaa !4
  %i.sl = load i32, ptr @pos, align 4, !tbaa !4
  %i.sm = add nsw i32 %i.sl, -1
  %i.sn = load i32, ptr @buf, align 8, !tbaa !22
  %i.so = add nsw i32 %i.sn, -1
  %i.sp = and i32 %i.so, %i.sm
  %i.sq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 22 uses
  %i.sr = sext i32 %i.sp to i64
  %i.ss = getelementptr inbounds i8, ptr %i.sq, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !11
  %i.su = zext i8 %i.st to i32                    ; 2 uses
  %i.sv = mul i32 %i.su, 30005491
  %i.sw = mul i32 %i.ha, 50004239                 ; 5 uses
  %i.sx = add i32 %i.sw, 19995673
  %i.sy = add i32 %i.sx, %i.sv                    ; 2 uses
  %i.sz = lshr i32 %i.sy, 9
  %i.ta = lshr i32 %i.su, 3
  %i.tb = lshr i32 %i.ha, 4                       ; 5 uses
  %i.tc = xor i32 %i.ta, %i.sz
  %i.td = xor i32 %i.tc, %i.tb
  %i.te = xor i32 %i.td, %i.sy
  %i.tf = xor i32 %i.te, 67108864
  %i.tg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.th = add nsw i32 %i.tg, 1
  store i32 %i.th, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110
  %i.ti = mul i32 %i.tf, 987654323
  %i.tj = add i32 %i.ti, %i.tg                    ; 2 uses
  %i.tk = tail call i32 @llvm.fshl.i32(i32 %i.tj, i32 %i.tj, i32 16)
  %i.tl = mul i32 %i.tk, 123456791
  %i.tm = add i32 %i.tl, %i.tg
  %i.tn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 96), align 8, !tbaa !88 ; 8 uses
  %i.to = sext i32 %i.tg to i64
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.to
  store i32 %i.tm, ptr %i.tp, align 4, !tbaa !4
  %i.tq = load i32, ptr @pos, align 4, !tbaa !4   ; 2 uses
  %i.tr = add nsw i32 %i.tq, -1
  %i.ts = load i32, ptr @buf, align 8, !tbaa !22
  %i.tt = add nsw i32 %i.ts, -1                   ; 2 uses
  %i.tu = and i32 %i.tt, %i.tr
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds i8, ptr %i.sq, i64 %i.tv
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !11
  %i.ty = zext i8 %i.tx to i32                    ; 2 uses
  %i.tz = add nsw i32 %i.tq, -2
  %i.ua = and i32 %i.tt, %i.tz
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds i8, ptr %i.sq, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !11
  %i.ue = zext i8 %i.ud to i32                    ; 2 uses
  %i.uf = mul i32 %i.ty, 30005491
  %i.ug = mul i32 %i.ue, 50004239
  %i.uh = mul i32 %i.ha, 70004807                 ; 2 uses
  %i.ui = add i32 %i.uh, 290003459
  %i.uj = add i32 %i.ui, %i.uf
  %i.uk = add i32 %i.uj, %i.ug                    ; 2 uses
  %i.ul = lshr i32 %i.uk, 9
  %i.um = lshr i32 %i.ty, 3
  %i.un = lshr i32 %i.ue, 4
  %i.uo = lshr i32 %i.ha, 5                       ; 2 uses
  %i.up = xor i32 %i.um, %i.un
  %i.uq = xor i32 %i.up, %i.ul
  %i.ur = xor i32 %i.uq, %i.uo
  %i.us = xor i32 %i.ur, %i.uk
  %i.ut = xor i32 %i.us, 67108863
  %i.uu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.uv = add nsw i32 %i.uu, 1
  store i32 %i.uv, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110
  %i.uw = mul i32 %i.ut, 987654323
  %i.ux = add i32 %i.uw, %i.uu                    ; 2 uses
  %i.uy = tail call i32 @llvm.fshl.i32(i32 %i.ux, i32 %i.ux, i32 16)
  %i.uz = mul i32 %i.uy, 123456791
  %i.va = add i32 %i.uz, %i.uu
  %i.vb = sext i32 %i.uu to i64
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.vb
  store i32 %i.va, ptr %i.vc, align 4, !tbaa !4
  %i.vd = load i32, ptr @pos, align 4, !tbaa !4   ; 3 uses
  %i.ve = add nsw i32 %i.vd, -1
  %i.vf = load i32, ptr @buf, align 8, !tbaa !22
  %i.vg = add nsw i32 %i.vf, -1                   ; 3 uses
  %i.vh = and i32 %i.vg, %i.ve
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds i8, ptr %i.sq, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !11
  %i.vl = zext i8 %i.vk to i32                    ; 2 uses
  %i.vm = add nsw i32 %i.vd, -2
  %i.vn = and i32 %i.vg, %i.vm
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds i8, ptr %i.sq, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !11
  %i.vr = lshr i8 %i.vq, 3
  %i.vs = zext nneg i8 %i.vr to i32               ; 2 uses
  %i.vt = add nsw i32 %i.vd, -3
  %i.vu = and i32 %i.vg, %i.vt
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds i8, ptr %i.sq, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !11
  %i.vy = zext i8 %i.vx to i32                    ; 2 uses
  %i.vz = mul i32 %i.vl, 30005491
  %i.wa = mul nuw nsw i32 %i.vs, 50004239
  %i.wb = mul i32 %i.vy, 70004807
  %i.wc = mul i32 %i.ha, 110002499
  %i.wd = add i32 %i.wc, 600008937
  %i.we = add i32 %i.wd, %i.vz
  %i.wf = add i32 %i.we, %i.wa
  %i.wg = add i32 %i.wf, %i.wb                    ; 2 uses
  %i.wh = lshr i32 %i.wg, 9
  %i.wi = lshr i32 %i.vl, 3
  %i.wj = lshr i32 %i.vs, 4
  %i.wk = lshr i32 %i.vy, 5
  %i.wl = lshr i32 %i.ha, 6
  %i.wm = xor i32 %i.wi, %i.wl
  %i.wn = xor i32 %i.wm, %i.wj
  %i.wo = xor i32 %i.wn, %i.wk
  %i.wp = xor i32 %i.wo, %i.wh
  %i.wq = xor i32 %i.wp, %i.wg
  %i.wr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.ws = add nsw i32 %i.wr, 1
  store i32 %i.ws, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110
  %i.wt = mul i32 %i.wq, 987654323
  %i.wu = add i32 %i.wt, %i.wr                    ; 2 uses
  %i.wv = tail call i32 @llvm.fshl.i32(i32 %i.wu, i32 %i.wu, i32 16)
  %i.ww = mul i32 %i.wv, 123456791
  %i.wx = add i32 %i.ww, %i.wr
  %i.wy = sext i32 %i.wr to i64
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.wy
  store i32 %i.wx, ptr %i.wz, align 4, !tbaa !4
  %i.xa = load i32, ptr @pos, align 4, !tbaa !4   ; 3 uses
  %i.xb = add i32 %i.xa, -4
  %i.xc = load i32, ptr @buf, align 8, !tbaa !22
  %i.xd = add nsw i32 %i.xc, -1                   ; 3 uses
  %i.xe = and i32 %i.xd, %i.xb
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds i8, ptr %i.sq, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !11
  %i.xi = add i32 %i.xa, -2
  %i.xj = and i32 %i.xd, %i.xi
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds i8, ptr %i.sq, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !11
  %.tr = add i8 %i.xm, %i.xh
  %i.xn = add i32 %i.xa, -6
  %i.xo = and i32 %i.xd, %i.xn
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr inbounds i8, ptr %i.sq, i64 %i.xp
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !11
  %.narrow = sub i8 %.tr, %i.xr
  %i.xs = zext i8 %.narrow to i32                 ; 2 uses
  %i.xt = mul i32 %i.xs, 30005491
  %i.xu = add i32 %i.sw, 620004610
  %i.xv = add i32 %i.xu, %i.xt                    ; 2 uses
  %i.xw = lshr i32 %i.xv, 9
  %i.xx = lshr i32 %i.xs, 3
  %i.xy = xor i32 %i.xx, %i.xw
  %i.xz = xor i32 %i.xy, %i.tb
  %i.ya = xor i32 %i.xz, %i.xv
  %i.yb = xor i32 %i.ya, 67108865
  %i.yc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.yd = add nsw i32 %i.yc, 1
  store i32 %i.yd, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110
end_hunk_1
begin_hunk_2_@_ZN7Encoder4codeEi:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i32 [ %.pre11, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %i.ay = phi i32 [ %.pre10, %bb.h ], [ %i.an, %bb.g ] ; 2 uses
  %i.az = xor i32 %i.ax, %i.ay
  %i.ba = icmp ult i32 %i.az, 16777216
  br i1 %i.ba, label %bb.e, label %._crit_edge, !llvm.loop !265

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %i.bb = load i32, ptr @y, align 4, !tbaa !4
  ret i32 %i.bb
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5ArrayIhLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %.not = icmp sgt i32 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !22
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !22
  store i32 %1, ptr %i.a, align 4, !tbaa !20
  store i32 %1, ptr %0, align 8, !tbaa !22
  %i.h = icmp slt i32 %1, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN5ArrayIhLi0EE6createEi.exit

bb.e:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %1 to i64
  %i.j = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.k = add nsw i32 %i.j, %1                     ; 3 uses
  store i32 %i.k, ptr @programChecker, align 8, !tbaa !15
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %_ZN14ProgramChecker5allocEi.exit.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i

_ZN14ProgramChecker5allocEi.exit.i:               ; preds = %bb.f, %bb.e
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 1) #40 ; 4 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

bb.h:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i
  store ptr %i.n, ptr %i.e, align 8, !tbaa !24
  br label %_ZN5ArrayIhLi0EE6createEi.exit

_ZN5ArrayIhLi0EE6createEi.exit:                   ; preds = %bb.d, %bb.h
  %i.o = phi ptr [ null, %bb.d ], [ %i.n, %bb.h ]
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5ArrayIhLi0EE6createEi.exit
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %_ZN14ProgramChecker5allocEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef i32 @llvm.smin.i32(i32 %1, i32 %i.g)
  %i.q = sext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.f, i64 %i.q, i1 false)
  %i.r = load i32, ptr %0, align 8, !tbaa !22
  %i.s = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.t = sub i32 %i.s, %i.r                       ; 3 uses
  store i32 %i.t, ptr @programChecker, align 8, !tbaa !15
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.v = icmp sgt i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %_ZN14ProgramChecker5allocEi.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit

_ZN14ProgramChecker5allocEi.exit:                 ; preds = %bb.k, %bb.j, %bb.i
  tail call void @free(ptr noundef nonnull %i.d) #38
  br label %bb.l

bb.l:                                             ; preds = %_ZN5ArrayIhLi0EE6createEi.exit, %_ZN14ProgramChecker5allocEi.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #35

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_paq8p.cpp() #36 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr @programChecker, align 8, !tbaa !15
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.a = tail call i64 @clock() #38
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 8), align 8, !tbaa !300
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 4), align 4, !tbaa !87
  store i32 64, ptr @rnd, align 8, !tbaa !12
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = add nsw i32 %i.b, 256                    ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i

_ZN14ProgramChecker5allocEi.exit.i.i.i.i:         ; preds = %bb.b, %bb.a
  %i.f = tail call noalias dereferenceable_or_null(256) ptr @calloc(i64 noundef 256, i64 noundef 1) #40 ; 7 uses
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 8), align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN5ArrayIjLi0EEC2Ei.exit.i.i

bb.c:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIjLi0EEC2Ei.exit.i.i:                    ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 16), align 8, !tbaa !88
  store i32 123456789, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr nuw i8, ptr %i.f, i64 4
  store i32 987654321, ptr %i.g, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5ArrayIjLi0EEC2Ei.exit.i.i
  %store_forwarded = phi i32 [ 987654321, %_ZN5ArrayIjLi0EEC2Ei.exit.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.h = phi i32 [ 123456789, %_ZN5ArrayIjLi0EEC2Ei.exit.i.i ], [ %i.m, %bb.d ]
  %indvars.iv.i.i = phi i64 [ 0, %_ZN5ArrayIjLi0EEC2Ei.exit.i.i ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 3 uses
  %i.i = mul i32 %store_forwarded, 11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.k = mul i32 %i.h, 23
  %i.l = lshr i32 %i.k, 4
  %i.m = add i32 %i.i, %i.l                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.m, ptr %i.n, align 4, !tbaa !4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.o = mul i32 %i.m, 11
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.q = mul i32 %store_forwarded, 23
  %i.r = lshr i32 %i.q, 4
  %i.s = add i32 %i.o, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 62
  br i1 %exitcond.not.i.i.1, label %__cxx_global_var_init.1.exit, label %bb.d, !llvm.loop !301

__cxx_global_var_init.1.exit:                     ; preds = %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 24), align 8, !tbaa !114
  %i.u = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6RandomD2Ev, ptr nonnull @rnd, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @buf, i8 0, i64 24, i1 false)
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3BufD2Ev, ptr nonnull @buf, ptr nonnull @__dso_handle) #38 ; 0 uses
  store i32 65536, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 4), align 4, !tbaa !20
  store i32 65536, ptr @ilog, align 8, !tbaa !22
  %i.w = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.x = add nsw i32 %i.w, 65536                  ; 3 uses
  store i32 %i.x, ptr @programChecker, align 8, !tbaa !15
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.z = icmp sgt i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1

bb.e:                                             ; preds = %__cxx_global_var_init.1.exit
  store i32 %i.x, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1

_ZN14ProgramChecker5allocEi.exit.i.i.i.i1:        ; preds = %bb.e, %__cxx_global_var_init.1.exit
  %i.aa = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 65536, i64 noundef 1) #40 ; 3 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 8), align 8, !tbaa !23
  %.not.i.i.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i2, label %bb.f, label %_ZN5ArrayIhLi0EEC2Ei.exit.i.i

bb.f:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIhLi0EEC2Ei.exit.i.i:                    ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i
  %indvars.iv.i.i3 = phi i64 [ 2, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i ], [ %indvars.iv.next.i.i4.1, %bb.g ] ; 4 uses
  %.067.i.i = phi i32 [ 14155776, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i ], [ %i.ak, %bb.g ]
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i3 to i32
  %i.ab = shl nuw nsw i32 %indvars.iv.tr.i.i, 1
  %i.ac = add nsw i32 %i.ab, -1
  %.udiv.i.i = udiv i32 774541002, %i.ac
  %i.ad = add i32 %.udiv.i.i, %.067.i.i           ; 2 uses
  %i.ae = lshr i32 %i.ad, 24
  %i.af = trunc nuw i32 %i.ae to i8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.i.i3
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !11
  %indvars.iv.next.i.i4 = or disjoint i64 %indvars.iv.i.i3, 1 ; 2 uses
  %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i4 to i32
  %i.ai = shl nuw nsw i32 %indvars.iv.tr.i.i.1, 1
  %i.aj = add nsw i32 %i.ai, -1
  %.udiv.i.i.1 = udiv i32 774541002, %i.aj
  %i.ak = add i32 %.udiv.i.i.1, %i.ad             ; 2 uses
  %i.al = lshr i32 %i.ak, 24
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i.i4
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !11
  %indvars.iv.next.i.i4.1 = add nuw nsw i64 %indvars.iv.i.i3, 2 ; 2 uses
  %exitcond.not.i.i5.1 = icmp eq i64 %indvars.iv.next.i.i4.1, 65536
  br i1 %exitcond.not.i.i5.1, label %__cxx_global_var_init.3.exit, label %bb.g, !llvm.loop !25

__cxx_global_var_init.3.exit:                     ; preds = %bb.g
  %i.ap = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4IlogD2Ev, ptr nonnull @ilog, ptr nonnull @__dso_handle) #38 ; 0 uses
  store i32 4096, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 4), align 4, !tbaa !31
  store i32 4096, ptr @stretch, align 8, !tbaa !27
  %i.aq = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ar = add nsw i32 %i.aq, 8192                 ; 3 uses
  store i32 %i.ar, ptr @programChecker, align 8, !tbaa !15
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.at = icmp sgt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6

bb.h:                                             ; preds = %__cxx_global_var_init.3.exit
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6

_ZN14ProgramChecker5allocEi.exit.i.i.i.i6:        ; preds = %bb.h, %__cxx_global_var_init.3.exit
  %i.au = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 8192, i64 noundef 1) #40 ; 7 uses
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 8), align 8, !tbaa !30
  %.not.i.i.i.i7 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i7, label %bb.i, label %_ZN5ArrayIsLi0EEC2Ei.exit.i.i

bb.i:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIsLi0EEC2Ei.exit.i.i:                    ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32
  br label %_Z6squashi.exit.i.i

_Z6squashi.exit.i.i:                              ; preds = %._crit_edge.i.i, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i
  %.01016.i.i = phi i32 [ 0, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i ], [ %.pre-phi.i.i, %._crit_edge.i.i ] ; 3 uses
  %.01115.i.i = phi i32 [ -2047, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 4 uses
  %i.av = and i32 %.01115.i.i, 127                ; 2 uses
  %i.aw = ashr i32 %.01115.i.i, 7
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 64
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sub nuw nsw i32 128, %i.av
  %i.bc = mul nsw i32 %i.bb, %i.ba
  %i.bd = getelementptr i8, ptr %i.ay, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = mul nsw i32 %i.be, %i.av
  %i.bg = add i32 %i.bc, 64
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = ashr i32 %i.bh, 7                       ; 4 uses
  %.not13.i.i = icmp sgt i32 %.01016.i.i, %i.bi
  br i1 %.not13.i.i, label %_Z6squashi.exit.._crit_edge_crit_edge.i.i, label %iter.check

_Z6squashi.exit.._crit_edge_crit_edge.i.i:        ; preds = %_Z6squashi.exit.i.i
  %.pre.i.i = add nsw i32 %i.bi, 1
  br label %._crit_edge.i.i

iter.check:                                       ; preds = %_Z6squashi.exit.i.i
  %i.bj = trunc i32 %.01115.i.i to i16            ; 3 uses
  %i.bk = sext i32 %.01016.i.i to i64             ; 5 uses
  %i.bl = add nsw i32 %i.bi, 1                    ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.bl to i64
  %narrow = add nsw i32 %i.bi, 1
  %narrow27 = sub nsw i32 %narrow, %.01016.i.i    ; 3 uses
  %i.bm = zext nneg i32 %narrow27 to i64          ; 5 uses
  %min.iters.check = icmp ult i32 %narrow27, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i32 %narrow27, 16
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bm, 12
  %n.vec = and i64 %i.bm, 2147483632              ; 4 uses
  %i.bn = add nsw i64 %n.vec, %i.bk
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.au, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %i.bo, align 2, !tbaa !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bm
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.bm, 2147483644            ; 3 uses
  %i.bq = add nsw i64 %n.vec20, %i.bk
  %broadcast.splatinsert21 = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %broadcast.splat22 = shufflevector <4 x i16> %broadcast.splatinsert21, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep28 = getelementptr [2 x i8], ptr %i.au, i64 %i.bk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %gep29 = getelementptr [2 x i8], ptr %invariant.gep28, i64 %index23
  store <4 x i16> %broadcast.splat22, ptr %gep29, align 2, !tbaa !33
  %index.next24 = add nuw i64 %index23, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next24, %n.vec20
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !303

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec20, %i.bm
  br i1 %cmp.n25, label %._crit_edge.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i8.ph = phi i64 [ %i.bk, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_Z6squashi.exit.._crit_edge_crit_edge.i.i
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_Z6squashi.exit.._crit_edge_crit_edge.i.i ], [ %i.bl, %middle.block ], [ %i.bl, %vec.epilog.middle.block ], [ %i.bl, %vec.epilog.scalar.ph ]
  %i.bs = add nsw i32 %.01115.i.i, 1              ; 2 uses
  %exitcond18.not.i.i = icmp eq i32 %i.bs, 2048
  br i1 %exitcond18.not.i.i, label %__cxx_global_var_init.4.exit, label %_Z6squashi.exit.i.i, !llvm.loop !40

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i8 = phi i64 [ %indvars.iv.next.i.i9, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i8.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.au, i64 %indvars.iv.i.i8
  store i16 %i.bj, ptr %i.bt, align 2, !tbaa !33
  %indvars.iv.next.i.i9 = add nsw i64 %indvars.iv.i.i8, 1 ; 2 uses
  %exitcond.not.i.i10 = icmp eq i64 %indvars.iv.next.i.i9, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i10, label %._crit_edge.i.i, label %vec.epilog.scalar.ph, !llvm.loop !304

__cxx_global_var_init.4.exit:                     ; preds = %._crit_edge.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 8190
  store i16 2047, ptr %i.bu, align 2, !tbaa !33
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7StretchD2Ev, ptr nonnull @stretch, ptr nonnull @__dso_handle) #38 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

attributes #0 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn }
end_hunk_2
