Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_string?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@SDL_wcscasecmp_REAL:bb.a
bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %.018, 0
  br i1 %i.u, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.2 = phi i32 [ 0, %bb.h ], [ -1, %bb.f ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 2) i32 @SDL_wcsncasecmp_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.049 = phi ptr [ %0, %bb.a ], [ %.150, %bb.n ] ; 6 uses
  %.046 = phi ptr [ %1, %bb.a ], [ %.147, %bb.n ] ; 6 uses
  %.035 = phi i64 [ %2, %bb.a ], [ %.136, %bb.n ] ; 3 uses
  %.033 = phi i32 [ 0, %bb.a ], [ %.134, %bb.n ]  ; 2 uses
  %.031 = phi i32 [ 0, %bb.a ], [ %.132, %bb.n ]  ; 3 uses
  %.029 = phi i32 [ 0, %bb.a ], [ %.130, %bb.n ]  ; 2 uses
  %.027 = phi i32 [ 0, %bb.a ], [ %.128, %bb.n ]  ; 3 uses
  %.023 = phi i64 [ %2, %bb.a ], [ %.124, %bb.n ] ; 3 uses
  %.not = icmp eq i32 %.033, %.031
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.031, 1
  %i.d = sext i32 %.031 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.d
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %.023, 0
  br i1 %.not.i, label %StepUTF32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %.049, align 4             ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %StepUTF32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.i = icmp ugt i32 %i.f, 1114111
  %i.j = select i1 %i.i, i32 65533, i32 %i.f
  br label %StepUTF32.exit

StepUTF32.exit:                                   ; preds = %bb.d, %bb.e, %bb.f
  %.251 = phi ptr [ %.049, %bb.d ], [ %.049, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.j, %bb.f ]
  %i.k = call i32 @SDL_CaseFoldUnicode(i32 noundef %.1.i, ptr noundef nonnull %i.a)
  %i.l = ptrtoint ptr %.251 to i64
  %i.m = ptrtoint ptr %.049 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = sub i64 %.023, %i.o
  br label %bb.g

bb.g:                                             ; preds = %StepUTF32.exit, %bb.c
  %.150 = phi ptr [ %.251, %StepUTF32.exit ], [ %.049, %bb.c ]
  %.134 = phi i32 [ %i.k, %StepUTF32.exit ], [ %.033, %bb.c ]
  %.132 = phi i32 [ 1, %StepUTF32.exit ], [ %i.c, %bb.c ]
  %.026.in = phi ptr [ %i.a, %StepUTF32.exit ], [ %i.e, %bb.c ]
  %.124 = phi i64 [ %i.p, %StepUTF32.exit ], [ %.023, %bb.c ]
  %.026 = load i32, ptr %.026.in, align 4         ; 3 uses
  %.not37 = icmp eq i32 %.029, %.027
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %.027, 1
  %i.r = sext i32 %.027 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.r
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not.i38 = icmp eq i64 %.035, 0
  br i1 %.not.i38, label %StepUTF32.exit40, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %.046, align 4             ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %StepUTF32.exit40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.046, i64 4
  %i.w = icmp ugt i32 %i.t, 1114111
  %i.x = select i1 %i.w, i32 65533, i32 %i.t
  br label %StepUTF32.exit40

StepUTF32.exit40:                                 ; preds = %bb.i, %bb.j, %bb.k
  %.248 = phi ptr [ %.046, %bb.i ], [ %.046, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.1.i39 = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.x, %bb.k ]
  %i.y = call i32 @SDL_CaseFoldUnicode(i32 noundef %.1.i39, ptr noundef nonnull %i.b)
  %i.z = ptrtoint ptr %.248 to i64
  %i.aa = ptrtoint ptr %.046 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = sub i64 %.035, %i.ac
  br label %bb.l

bb.l:                                             ; preds = %StepUTF32.exit40, %bb.h
  %.147 = phi ptr [ %.248, %StepUTF32.exit40 ], [ %.046, %bb.h ]
  %.136 = phi i64 [ %i.ad, %StepUTF32.exit40 ], [ %.035, %bb.h ]
  %.130 = phi i32 [ %i.y, %StepUTF32.exit40 ], [ %.029, %bb.h ]
  %.128 = phi i32 [ 1, %StepUTF32.exit40 ], [ %i.q, %bb.h ]
  %.025.in = phi ptr [ %i.b, %StepUTF32.exit40 ], [ %i.s, %bb.h ]
  %.025 = load i32, ptr %.025.in, align 4         ; 2 uses
  %i.ae = icmp ult i32 %.026, %.025
  br i1 %i.ae, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = icmp ugt i32 %.026, %.025
  br i1 %i.af, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp eq i32 %.026, 0
  br i1 %i.ag, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.l, %bb.m, %bb.n
  %.2 = phi i32 [ 0, %bb.n ], [ -1, %bb.l ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_wcstol_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @__isoc23_wcstol(ptr noundef %0, ptr noundef %1, i32 noundef %2) #22
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_wcstol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define hidden i64 @SDL_strlcpy_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlcpy(ptr noundef %0, ptr noundef nonnull dereferenceable(1) %1, i64 noundef %2) #22
  ret i64 %i.a
}

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i64 0, -1) i64 @SDL_utf8strlcpy_REAL(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #23
  %i.b = add i64 %2, -1
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.b) ; 6 uses
  %.not40 = icmp eq i64 %i.c, 0
  br i1 %.not40, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i64 %i.c, -1                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = add i8 %i.f, 64
  %or.cond = icmp ult i8 %i.g, 53
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond5 = icmp sgt i8 %i.f, -65
  %.not4148 = icmp eq i64 %i.d, 0
  %or.cond50 = or i1 %or.cond5, %.not4148
  br i1 %or.cond50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %UTF8_GetTrailingBytes.exit
  %.049 = phi i64 [ %i.n, %UTF8_GetTrailingBytes.exit ], [ %i.d, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.049
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %i.j = and i8 %i.i, -32
  %or.cond.i = icmp eq i8 %i.j, -64
  br i1 %or.cond.i, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = and i8 %i.i, -16
  %or.cond5.i = icmp eq i8 %i.k, -32
  br i1 %or.cond5.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i8 %i.i, 16
  %or.cond8.i = icmp ult i8 %i.l, 5
  br i1 %or.cond8.i, label %select.unfold, label %UTF8_GetTrailingBytes.exit

select.unfold:                                    ; preds = %bb.f, %bb.e, %.lr.ph
  %.0.i.ph = phi i64 [ 3, %bb.e ], [ 2, %.lr.ph ], [ 4, %bb.f ]
  %i.m = sub i64 %i.c, %.049
  %.not43 = icmp eq i64 %i.m, %.0.i.ph
  br i1 %.not43, label %.loopexit, label %3

3:                                                ; preds = %select.unfold
  br label %.loopexit

UTF8_GetTrailingBytes.exit:                       ; preds = %bb.f
  %i.n = add i64 %.049, -1                        ; 2 uses
  %.not41 = icmp eq i64 %i.n, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph, !llvm.loop !10

.loopexit:                                        ; preds = %UTF8_GetTrailingBytes.exit, %bb.c, %bb.d, %select.unfold, %3
  %.035 = phi i64 [ %i.c, %bb.d ], [ %.049, %3 ], [ %i.c, %select.unfold ], [ %i.d, %bb.c ], [ %i.c, %UTF8_GetTrailingBytes.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %1, i64 %.035, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  %.1 = phi i64 [ %.035, %.loopexit ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.1
  store i8 0, ptr %i.o, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.2 = phi i64 [ %.1, %bb.g ], [ 0, %bb.a ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @SDL_utf8strlen_REAL(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]     ; 2 uses
  %i.b = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef 4)
  %.not = icmp eq i32 %i.b, 0
  %i.c = add i64 %.0, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @SDL_utf8strnlen_REAL(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef %1)
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ]
  %.06 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %.035 = phi i64 [ %i.g, %.lr.ph ], [ %1, %bb.a ]
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %.neg.i = add i64 %.035, %i.d
  %i.g = sub i64 %.neg.i, %i.f                    ; 2 uses
  %i.h = add i64 %.06, 1                          ; 2 uses
  %i.i = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef %i.g)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define hidden i64 @SDL_strlcat_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlcat(ptr noundef %0, ptr noundef %1, i64 noundef %2) #22
  ret i64 %i.a
}

; Function Attrs: nofree nounwind
declare i64 @strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_strdup_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #23
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.b) #22 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_strndup_REAL(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strnlen(ptr noundef readonly %0, i64 noundef %1) #23 ; 3 uses
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.b) #22 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %0, i64 %i.a, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a
  store i8 0, ptr %i.d, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @SDL_strrev_REAL(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #23 ; 3 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %.not13 = icmp eq i64 %i.b, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %i.a       ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.016.prol = phi i64 [ %i.d, %.lr.ph.prol ], [ %i.b, %.lr.ph.preheader ]
  %.pn15.prol = phi ptr [ %.011.prol, %.lr.ph.prol ], [ %i.c, %.lr.ph.preheader ]
  %.01214.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.011.prol = getelementptr i8, ptr %.pn15.prol, i64 -1 ; 4 uses
  %i.d = add nsw i64 %.016.prol, -1               ; 2 uses
  %i.e = load i8, ptr %.01214.prol, align 1
  %i.f = load i8, ptr %.011.prol, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.01214.prol, i64 1 ; 2 uses
  store i8 %i.f, ptr %.01214.prol, align 1
  store i8 %i.e, ptr %.011.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !13

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.016.unr = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.pn15.unr = phi ptr [ %i.c, %.lr.ph.preheader ], [ %.011.prol, %.lr.ph.prol ]
  %.01214.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %i.h = icmp ult i64 %i.a, 8
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.016 = phi i64 [ %i.r, %.lr.ph ], [ %.016.unr, %.lr.ph.prol.loopexit ]
  %.pn15 = phi ptr [ %.011.3, %.lr.ph ], [ %.pn15.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.01214 = phi ptr [ %i.u, %.lr.ph ], [ %.01214.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.011 = getelementptr i8, ptr %.pn15, i64 -1    ; 2 uses
  %i.i = load i8, ptr %.01214, align 1
  %i.j = load i8, ptr %.011, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.01214, i64 1 ; 2 uses
  store i8 %i.j, ptr %.01214, align 1
  store i8 %i.i, ptr %.011, align 1
  %.011.1 = getelementptr i8, ptr %.pn15, i64 -2  ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load i8, ptr %.011.1, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.01214, i64 2 ; 2 uses
  store i8 %i.m, ptr %i.k, align 1
  store i8 %i.l, ptr %.011.1, align 1
  %.011.2 = getelementptr i8, ptr %.pn15, i64 -3  ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = load i8, ptr %.011.2, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.01214, i64 3 ; 2 uses
  store i8 %i.p, ptr %i.n, align 1
  store i8 %i.o, ptr %.011.2, align 1
  %.011.3 = getelementptr i8, ptr %.pn15, i64 -4  ; 3 uses
  %i.r = add nsw i64 %.016, -4                    ; 2 uses
  %i.s = load i8, ptr %i.q, align 1
  %i.t = load i8, ptr %.011.3, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.01214, i64 4
  store i8 %i.t, ptr %i.q, align 1
  store i8 %i.s, ptr %.011.3, align 1
  %.not.3 = icmp eq i64 %i.r, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_strupr_REAL(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not7 = icmp eq i8 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i8 [ %i.g, %.lr.ph ], [ %i.a, %bb.a ]
  %.08 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = tail call i32 @SDL_toupper_REAL(i32 noundef %i.c) #22
  %i.e = trunc i32 %i.d to i8
  store i8 %i.e, ptr %.08, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.08, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
end_hunk_0
