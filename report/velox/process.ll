begin_hunk_0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.k = load atomic i32, ptr %i.j seq_cst, align 4
  %i.l = and i32 %i.k, 127
  %i.m = icmp eq i32 %i.l, 127
  br i1 %i.m, label %bb.b, label %_ZN5boost7process5child7_exitedEv.exit.thread

bb.b:                                             ; preds = %_ZN5boost7process5child7_exitedEv.exit
  %i.n = call noundef zeroext i1 @_ZN5boost7process5child7runningERSt10error_code(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #31
end_hunk_0
begin_hunk_1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.j = load atomic i32, ptr %i.i seq_cst, align 4
  %i.k = and i32 %i.j, 127
  %2 = icmp ne i32 %i.k, 127
  %i.l = load i32, ptr %1, align 8
  %i.m = icmp ne i32 %i.l, 0
  %or.cond18 = select i1 %2, i1 true, i1 %i.m
  br i1 %or.cond18, label %_ZN5boost7process5child7_exitedEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7process5child7_exitedEv.exit
end_hunk_1
begin_hunk_2
  store i32 0, ptr %1, align 8, !tbaa !115
  store ptr %i.b, ptr %i.c, align 8, !tbaa !118
  %i.r = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.s = and i32 %i.r, 127
  %3 = icmp eq i32 %i.s, 127
  %spec.select = select i1 %3, i32 0, i32 %i.r
  br label %_ZN5boost7process6detail5posix10is_runningERKNS2_12child_handleERiRSt10error_code.exit

bb.h:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3
_ZN5boost7process5child7_exitedEv.exit11:         ; preds = %_ZN5boost7process6detail5posix10is_runningERKNS2_12child_handleERiRSt10error_code.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.aa = load atomic i32, ptr %i.z seq_cst, align 4
  %i.ab = and i32 %i.aa, 127
  %i.ac = icmp eq i32 %i.ab, 127
  br i1 %i.ac, label %bb.i, label %_ZN5boost7process5child7_exitedEv.exit.thread

bb.i:                                             ; preds = %_ZN5boost7process5child7_exitedEv.exit11
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !126
end_hunk_3
