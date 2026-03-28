begin_hunk_0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.k = load atomic i32, ptr %i.j seq_cst, align 4
  %i.l = and i32 %i.k, 127                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %2 = shl nuw nsw i32 %i.l, 24
  %sext.i.i = add nuw i32 %2, 16777216
  %3 = icmp sgt i32 %sext.i.i, 33554431
  %.not2.i = select i1 %i.m, i1 true, i1 %3
  br i1 %.not2.i, label %_ZN5boost7process5child7_exitedEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5boost7process5child7_exitedEv.exit
  %i.n = call noundef zeroext i1 @_ZN5boost7process5child7runningERSt10error_code(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #31
end_hunk_0
begin_hunk_1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.j = load atomic i32, ptr %i.i seq_cst, align 4
  %i.k = and i32 %i.j, 127                        ; 2 uses
  %2 = icmp eq i32 %i.k, 0
  %3 = shl nuw nsw i32 %i.k, 24
  %sext.i.i = add nuw i32 %3, 16777216
  %4 = icmp sgt i32 %sext.i.i, 33554431
  %.not2.i = select i1 %2, i1 true, i1 %4
  %i.l = load i32, ptr %1, align 8
  %i.m = icmp ne i32 %i.l, 0
  %or.cond18 = select i1 %.not2.i, i1 true, i1 %i.m
  br i1 %or.cond18, label %_ZN5boost7process5child7_exitedEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7process5child7_exitedEv.exit
end_hunk_1
begin_hunk_2
  store i32 0, ptr %1, align 8, !tbaa !115
  store ptr %i.b, ptr %i.c, align 8, !tbaa !118
  %i.r = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.s = and i32 %i.r, 127                        ; 2 uses
  %5 = icmp ne i32 %i.s, 0
  %6 = shl nuw nsw i32 %i.s, 24
  %sext.i.i8 = add nuw i32 %6, 16777216
  %7 = icmp slt i32 %sext.i.i8, 33554432
  %8 = select i1 %5, i1 %7, i1 false
  %spec.select = select i1 %8, i32 0, i32 %i.r
  br label %_ZN5boost7process6detail5posix10is_runningERKNS2_12child_handleERiRSt10error_code.exit

bb.h:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3
_ZN5boost7process5child7_exitedEv.exit11:         ; preds = %_ZN5boost7process6detail5posix10is_runningERKNS2_12child_handleERiRSt10error_code.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.aa = load atomic i32, ptr %i.z seq_cst, align 4
  %i.ab = and i32 %i.aa, 127                      ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %9 = shl nuw nsw i32 %i.ab, 24
  %sext.i.i9 = add nuw i32 %9, 16777216
  %10 = icmp sgt i32 %sext.i.i9, 33554431
  %.not2.i10 = select i1 %i.ac, i1 true, i1 %10
  br i1 %.not2.i10, label %_ZN5boost7process5child7_exitedEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7process5child7_exitedEv.exit11
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !126
end_hunk_3
