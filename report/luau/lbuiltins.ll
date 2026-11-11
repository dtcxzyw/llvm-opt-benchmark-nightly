Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lbuiltins?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL10luauF_coshP9lua_StateP10lua_TValueS2_iS2_i:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = tail call double @llvm.cosh.f64(double %i.f)
  store double %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL9luauF_cosP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = tail call double @llvm.cos.f64(double %i.f)
  store double %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL9luauF_degP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = fdiv double %i.f, f0x3F91DF46A2529D39
  store double %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL9luauF_expP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = tail call double @llvm.exp.f64(double %i.f)
  store double %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL17luauF_floor_sse41P9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = tail call noundef double @llvm.floor.f64(double %i.f)
  store double %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL11luauF_floorP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  store double %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL10luauF_fmodP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %2, align 8, !tbaa !11
  %i.j = load double, ptr %4, align 8, !tbaa !11
  %i.k = frem double %i.i, %i.j
  store double %i.k, ptr %1, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.l, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 3) i32 @_ZL11luauF_frexpP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp sgt i32 %5, 0
  %i.c = icmp slt i32 %3, 3
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %2, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.h = call double @frexp(double noundef %i.g, ptr noundef nonnull %i.a) #18
  store double %i.h, ptr %1, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.i, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12
  %i.l = sitofp i32 %i.k to double
  store double %i.l, ptr %i.j, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 3, ptr %i.m, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 2, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL11luauF_ldexpP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %2, align 8, !tbaa !11
  %i.j = load double, ptr %4, align 8, !tbaa !11
  %i.k = fptosi double %i.j to i32
  %i.l = tail call double @llvm.ldexp.f64.i32(double %i.i, i32 %i.k)
  store double %i.l, ptr %1, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.m, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL11luauF_log10P9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = tail call double @llvm.log10.f64(double %i.f)
  store double %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL9luauF_logP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11  ; 4 uses
  %i.g = icmp eq i32 %5, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call double @llvm.log.f64(double %i.f)
  br label %.thread.sink.split

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %4, align 8, !tbaa !11  ; 3 uses
  %i.m = fcmp oeq double %i.l, 2.000000e+00
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call double @llvm.log2.f64(double %i.f)
  br label %.thread.sink.split

bb.h:                                             ; preds = %bb.f
  %i.o = fcmp oeq double %i.l, 1.000000e+01
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call double @llvm.log10.f64(double %i.f)
  br label %.thread.sink.split

bb.j:                                             ; preds = %bb.h
  %i.q = tail call double @llvm.log.f64(double %i.f)
  %i.r = tail call double @llvm.log.f64(double %i.l)
  %i.s = fdiv double %i.q, %i.r
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.d, %bb.g, %bb.j, %bb.i
  %.sink = phi double [ %i.p, %bb.i ], [ %i.s, %bb.j ], [ %i.n, %bb.g ], [ %i.h, %bb.d ]
  store double %.sink, ptr %1, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.t, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a, %bb.b, %bb.e
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.e ], [ -1, %bb.b ], [ 1, %.thread.sink.split ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL9luauF_maxP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #3 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  %i.j = load double, ptr %4, align 8, !tbaa !11  ; 2 uses
  %i.k = fcmp ogt double %i.j, %i.i
  %i.l = select i1 %i.k, double %i.j, double %i.i ; 2 uses
  %.not31 = icmp samesign ult i32 %5, 3
  br i1 %.not31, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.m = add nuw i32 %5, 1
  %wide.trip.count = zext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.02932 = phi double [ %i.l, %.lr.ph.preheader ], [ %i.u, %bb.e ] ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %i.n, i64 -32
  %i.s = load double, ptr %i.r, align 8, !tbaa !11 ; 2 uses
  %i.t = fcmp ogt double %i.s, %.02932
  %i.u = select i1 %i.t, double %i.s, double %.02932 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !61

.critedge:                                        ; preds = %bb.e, %bb.d
  %.029.lcssa = phi double [ %i.l, %bb.d ], [ %i.u, %bb.e ]
  store double %.029.lcssa, ptr %1, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.v, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b, %bb.c, %.critedge
  %.2 = phi i32 [ -1, %bb.a ], [ 1, %.critedge ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL9luauF_minP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #3 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  %i.j = load double, ptr %4, align 8, !tbaa !11  ; 2 uses
  %i.k = fcmp olt double %i.j, %i.i
  %i.l = select i1 %i.k, double %i.j, double %i.i ; 2 uses
  %.not31 = icmp samesign ult i32 %5, 3
  br i1 %.not31, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.m = add nuw i32 %5, 1
  %wide.trip.count = zext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.02932 = phi double [ %i.l, %.lr.ph.preheader ], [ %i.u, %bb.e ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL13luauF_rrotateP9lua_StateP10lua_TValueS2_iS2_i:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.p, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL12luauF_rshiftP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %4, align 8, !tbaa !11
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = icmp ult i32 %i.j, 32
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = load double, ptr %2, align 8, !tbaa !11
  %i.m = fptosi double %i.l to i64
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 %i.n, %i.j
  %i.p = uitofp i32 %i.o to double
  store double %i.p, ptr %1, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.q, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.e
  %.1 = phi i32 [ 1, %bb.e ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL10luauF_typeP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 920
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  store ptr %i.j, ptr %1, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.k, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, -2147483648) i32 @_ZL10luauF_byteP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #5 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = icmp eq i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.i = load double, ptr %4, align 8, !tbaa !11
  %i.j = fptosi double %i.i to i32                ; 6 uses
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !11
  %i.p = fptosi double %i.o to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.q = phi i32 [ 0, %bb.e ], [ %i.p, %bb.f ], [ %i.j, %bb.d ] ; 4 uses
  %i.r = icmp slt i32 %i.j, 1
  %.not40 = icmp slt i32 %i.q, %i.j
  %or.cond = select i1 %i.r, i1 true, i1 %.not40
  br i1 %or.cond, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %.not41 = icmp sgt i32 %i.q, %i.t
  br i1 %.not41, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub nuw nsw i32 %i.q, %i.j
  %i.v = add nuw nsw i32 %i.u, 1                  ; 5 uses
  %i.w = icmp slt i32 %3, 0
  %i.x = select i1 %i.w, i32 1, i32 %3
  %.not43 = icmp eq i32 %i.v, %i.x
  br i1 %.not43, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.y = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %i.y ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.z = icmp eq i32 %i.q, %i.j
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %gep, i64 23
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = uitofp i8 %i.ac to double
  store double %i.ad, ptr %i.aa, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 3, ptr %i.ae, align 4, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.ag = getelementptr i8, ptr %gep.1, i64 23
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = uitofp i8 %i.ah to double
  store double %i.ai, ptr %i.af, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 3, ptr %i.aj, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !67

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod52 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.al = getelementptr i8, ptr %gep.epil, i64 23
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = uitofp i8 %i.am to double
  store double %i.an, ptr %i.ak, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 3, ptr %i.ao, align 4, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.epil.preheader, %.critedge.loopexit.unr-lcssa, %bb.a, %bb.b, %bb.c, %bb.g, %bb.i, %bb.h
  %.3 = phi i32 [ -1, %bb.a ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.c ], [ -1, %bb.b ], [ %i.v, %.critedge.loopexit.unr-lcssa ], [ %i.v, %.lr.ph.epil.preheader ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL10luauF_charP9lua_StateP10lua_TValueS2_iS2_i(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #6 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp slt i32 %5, 8
  %i.c = icmp slt i32 %3, 2
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = load i64, ptr %i.h, align 16, !tbaa !43
  %.not = icmp ult i64 %i.g, %i.i
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %5, 0
  br i1 %i.j, label %bb.d, label %.critedge42

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = load double, ptr %2, align 8, !tbaa !11
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %.not37 = icmp ult i32 %i.o, 256
  br i1 %.not37, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = trunc nuw i32 %i.o to i8
  store i8 %i.p, ptr %i.a, align 1, !tbaa !11
  %.not3843 = icmp eq i32 %5, 1
  br i1 %.not3843, label %.critedge42, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.q = add nuw nsw i32 %5, 1
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.r = getelementptr [16 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %i.r, i64 -32
  %i.w = load double, ptr %i.v, align 8, !tbaa !11
  %i.x = fptosi double %i.w to i32                ; 2 uses
  %.not39 = icmp ult i32 %i.x, 256
  br i1 %.not39, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge42, label %.lr.ph, !llvm.loop !68

.critedge42:                                      ; preds = %bb.h, %bb.c, %bb.f
  %i.ab = sext i32 %5 to i64                      ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !11
  %i.ad = call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ab)
  store ptr %i.ad, ptr %1, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.ae, align 4, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.g, %bb.e, %bb.a, %bb.d, %bb.b, %.critedge42
  %.5 = phi i32 [ -1, %bb.a ], [ 1, %.critedge42 ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL9luauF_lenP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 6
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = sitofp i32 %i.h to double
  store double %i.i, ptr %1, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.j, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL12luauF_typeofP9lua_StateP10lua_TValueS2_iS2_i(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #6 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z19luaT_objtypenamestrP9lua_StatePK10lua_TValue(ptr noundef %0, ptr noundef %2)
  store ptr %i.c, ptr %1, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.d, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL9luauF_subP9lua_StateP10lua_TValueS2_iS2_i(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #6 {
bb.a:
  %i.a = icmp sgt i32 %5, 2
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 6
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.n = load double, ptr %4, align 8, !tbaa !11
  %i.o = fptosi double %i.n to i32                ; 4 uses
  %i.p = load double, ptr %i.l, align 8, !tbaa !11
  %i.q = fptosi double %i.p to i32                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.w = load i64, ptr %i.v, align 16, !tbaa !43
  %.not = icmp ult i64 %i.u, %i.w
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp slt i32 %i.o, 1
  %.not28 = icmp slt i32 %i.q, %i.o
  %or.cond29 = select i1 %i.x, i1 true, i1 %.not28
  br i1 %or.cond29, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %i.q, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = zext nneg i32 %i.o to i64
  %i.ad = getelementptr i8, ptr %i.m, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 23
  %reass.sub = sub i32 %i.q, %i.o
  %i.af = add i32 %reass.sub, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef nonnull %0, ptr noundef %i.ae, i64 noundef %i.ag)
  store ptr %i.ah, ptr %1, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.ai, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.h, %bb.e
  %.1 = phi i32 [ 1, %bb.h ], [ -1, %bb.e ], [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL11luauF_clampP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 2
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load double, ptr %4, align 8, !tbaa !11  ; 3 uses
  %i.n = load double, ptr %i.l, align 8, !tbaa !11 ; 3 uses
  %i.o = fcmp ugt double %i.m, %i.n
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  %i.q = fcmp olt double %i.p, %i.m
  %i.r = select i1 %i.q, double %i.m, double %i.p ; 2 uses
  %i.s = fcmp ogt double %i.r, %i.n
  %i.t = select i1 %i.s, double %i.n, double %i.r
  store double %i.t, ptr %1, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.u, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d, %bb.f
  %.1 = phi i32 [ 1, %bb.f ], [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL10luauF_signP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  %i.h = fcmp olt double %i.f, 0.000000e+00
  %i.i = select i1 %i.h, double -1.000000e+00, double 0.000000e+00
  %i.j = select i1 %i.g, double 1.000000e+00, double %i.i
  store double %i.j, ptr %1, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.k, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
end_hunk_1
begin_hunk_2_@_ZL12luauF_rawlenP9lua_StateP10lua_TValueS2_iS2_i:bb.a
.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi double [ %i.k, %bb.d ], [ %i.g, %bb.c ]
  store double %.sink, ptr %1, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.l, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL14luauF_extractkP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = load double, ptr %4, align 8, !tbaa !11
  %i.h = fptosi double %i.f to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = fptosi double %i.g to i32                ; 2 uses
  %i.k = and i32 %i.j, 31
  %i.l = ashr i32 %i.j, 5
  %i.m = shl i32 -2, %i.l
  %i.n = xor i32 %i.m, -1
  %i.o = lshr i32 %i.i, %i.k
  %i.p = and i32 %i.o, %i.n
  %i.q = uitofp i32 %i.p to double
  store double %i.q, ptr %1, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.r, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL18luauF_getmetatableP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #6 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 2 uses
  switch i32 %i.d, label %bb.e [
    i32 7, label %bb.c
    i32 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 808
  %i.l = sext i32 %i.d to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.023.in = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.m, %bb.e ]
  %.023 = load ptr, ptr %.023.in, align 8, !tbaa !82 ; 3 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @luaO_nilobject_, i64 12), align 4, !tbaa !10
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %bb.h

.thread:                                          ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = tail call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef nonnull %.023, ptr noundef %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !10
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.x = phi ptr [ %i.t, %.thread ], [ @luaO_nilobject_, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !55
  br label %bb.k

bb.i:                                             ; preds = %.thread
  store ptr %.023, ptr %1, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 7, ptr %i.y, align 4, !tbaa !10
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %.1 = phi i32 [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.i ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL18luauF_setmetatableP9lua_StateP10lua_TValueS2_iS2_i(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #6 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 7
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 7
  br i1 %i.h, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !11     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i8, ptr %i.j, align 4, !tbaa !54
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !11     ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = and i8 %i.p, 4
  %.not21 = icmp eq i8 %i.q, 0
  br i1 %.not21, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = and i8 %i.s, 3
  %.not22 = icmp eq i8 %i.t, 0
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.i, ptr %1, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 7, ptr %i.u, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.i, %bb.e, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ 1, %bb.i ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL14luauF_tonumberP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #6 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = icmp eq i32 %5, 1
  %i.c = icmp slt i32 %3, 2
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  switch i32 %i.e, label %bb.d [
    i32 3, label %.sink.split
    i32 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink16 = phi ptr [ %2, %bb.b ], [ %i.a, %bb.c ]
  %i.i = load double, ptr %.sink16, align 8, !tbaa !11
  store double %i.i, ptr %1, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 3, %.sink.split ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sink, ptr %i.j, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL14luauF_tostringP9lua_StateP10lua_TValueS2_iS2_i(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #6 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 5 uses
  %i.b = alloca [30 x i8], align 16               ; 5 uses
  %i.c = icmp sgt i32 %5, 0
  %i.d = icmp slt i32 %3, 2
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10
  switch i32 %i.f, label %bb.m [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 3, label %bb.h
    i32 6, label %bb.j
    i32 4, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 920
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  store ptr %i.j, ptr %1, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.k, align 4, !tbaa !10
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %2, align 8, !tbaa !11
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef 4)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef 5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  store ptr %i.o, ptr %1, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.p, align 4, !tbaa !10
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = load i64, ptr %i.u, align 16, !tbaa !43
  %.not36 = icmp ult i64 %i.t, %i.v
  br i1 %.not36, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.w = load double, ptr %2, align 8, !tbaa !11
  %i.x = call noundef ptr @_Z12luai_num2strPcd(ptr noundef nonnull %i.a, double noundef %i.w)
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.aa)
  store ptr %i.ab, ptr %1, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.ac, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %2, align 8, !tbaa !11
  store ptr %i.ad, ptr %1, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.ae, align 4, !tbaa !10
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !43
  %.not = icmp ult i64 %i.ai, %i.ak
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.al = load i64, ptr %2, align 8, !tbaa !11
  %i.am = call noundef ptr @_Z12luai_int2strPcl(ptr noundef nonnull %i.b, i64 noundef %i.al)
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.b to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.ap)
  store ptr %i.aq, ptr %1, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.ar, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %bb.k, %bb.h, %bb.l, %bb.j, %bb.i, %bb.g, %bb.c
  %.0 = phi i32 [ -1, %bb.k ], [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL14luauF_byteswapP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !11
  %i.g = fptosi double %i.f to i64
  %trunc = trunc i64 %i.g to i32
  %i.h = tail call i32 @llvm.bswap.i32(i32 %trunc)
  %i.i = uitofp i32 %i.h to double
  store double %i.i, ptr %1, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.j, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL17luauF_readintegerIaEiP9lua_StateP10lua_TValueS3_iS3_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %4, align 8, !tbaa !11
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %.not = icmp ugt i32 %i.m, %i.j
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = zext i32 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  %.0.copyload = load i8, ptr %i.p, align 1
  %i.q = sitofp i8 %.0.copyload to double
  store double %i.q, ptr %1, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.r, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ 1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL17luauF_readintegerIhEiP9lua_StateP10lua_TValueS3_iS3_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %4, align 8, !tbaa !11
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %.not = icmp ugt i32 %i.m, %i.j
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = zext i32 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  %.0.copyload = load i8, ptr %i.p, align 1
  %i.q = uitofp i8 %.0.copyload to double
  store double %i.q, ptr %1, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.r, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ 1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 1) i32 @_ZL18luauF_writeintegerIhEiP9lua_StateP10lua_TValueS3_iS3_i(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #8 {
bb.a:
  %i.a = icmp sgt i32 %5, 2
  %i.b = icmp slt i32 %3, 1
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load double, ptr %4, align 8, !tbaa !11
  %i.n = fptosi double %i.m to i32                ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60
  %.not = icmp ugt i32 %i.q, %i.n
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = zext i32 %i.n to i64
  %i.s = load double, ptr %i.i, align 8, !tbaa !11
  %i.t = fptosi double %i.s to i64
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  store i8 %i.u, ptr %i.w, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.e
  %.1 = phi i32 [ -1, %bb.e ], [ 0, %bb.f ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL17luauF_readintegerIsEiP9lua_StateP10lua_TValueS3_iS3_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %4, align 8, !tbaa !11
end_hunk_2
begin_hunk_3_@_ZL20luauF_integercountrzP9lua_StateP10lua_TValueS2_iS2_i:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL20luauF_integercountlzP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %2, align 8, !tbaa !11
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  store i64 %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 4, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL18luauF_integerbswapP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %2, align 8, !tbaa !11
  %i.g = tail call i64 @llvm.bswap.i64(i64 %i.f)
  store i64 %i.g, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 4, ptr %i.h, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL20luauF_bufferreadlongP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  %i.b = icmp slt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %4, align 8, !tbaa !11
  %i.j = fptosi double %i.i to i32
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 7
  %i.m = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60
  %i.p = zext i32 %i.o to i64
  %.not = icmp samesign ult i64 %i.l, %i.p
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  %.0.copyload = load i64, ptr %i.r, align 1
  store i64 %.0.copyload, ptr %1, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 4, ptr %i.s, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ 1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 1) i32 @_ZL21luauF_bufferwritelongP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #8 {
bb.a:
  %i.a = icmp sgt i32 %5, 2
  %i.b = icmp slt i32 %3, 1
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load double, ptr %4, align 8, !tbaa !11
  %i.n = fptosi double %i.m to i32
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 7
  %i.q = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60
  %i.t = zext i32 %i.s to i64
  %.not = icmp samesign ult i64 %i.p, %i.t
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.i, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.o
  store i64 %i.u, ptr %i.w, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.e
  %.1 = phi i32 [ -1, %bb.e ], [ 0, %bb.f ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5) #9 {
bb.a:
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.acos.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cosh.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sinh.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tanh.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #12

declare hidden noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare hidden noundef ptr @_Z19luaT_objtypenamestrP9lua_StatePK10lua_TValue(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

declare hidden noundef ptr @_Z8luaH_setP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

declare hidden void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

declare hidden noundef ptr @_Z8luaH_getP8LuaTablePK10lua_TValue(ptr noundef, ptr noundef) local_unnamed_addr #14

declare hidden noundef i32 @_Z16luaO_rawequalObjPK10lua_TValueS1_(ptr noundef, ptr noundef) local_unnamed_addr #14

declare hidden noundef i32 @_Z9luaH_getnP8LuaTable(ptr noundef) local_unnamed_addr #14

declare hidden noundef ptr @_Z11luaH_setnumP9lua_StateP8LuaTablei(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

declare hidden noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef, ptr noundef) local_unnamed_addr #14

declare hidden void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

declare hidden noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef, ptr noundef) local_unnamed_addr #14

declare hidden noundef ptr @_Z12luai_num2strPcd(ptr noundef, double noundef) local_unnamed_addr #14

declare hidden noundef ptr @_Z12luai_int2strPcl(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_lbuiltins.cpp() #15 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag20LuauMathRoundNegZeroE, align 8, !tbaa !47
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20LuauMathRoundNegZeroE, i64 1), align 1, !tbaa !92
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20LuauMathRoundNegZeroE, i64 8), align 8, !tbaa !93
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !94
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20LuauMathRoundNegZeroE, i64 16), align 8, !tbaa !95
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20LuauMathRoundNegZeroE, i64 24), align 8, !tbaa !96
  store ptr @_ZN5FFlag20LuauMathRoundNegZeroE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !94
  store ptr null, ptr @luauF_table, align 16, !tbaa !97
  store ptr @_ZL12luauF_assertP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 8), align 8, !tbaa !97
  store ptr @_ZL9luauF_absP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 16), align 16, !tbaa !97
  store ptr @_ZL10luauF_acosP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 24), align 8, !tbaa !97
  store ptr @_ZL10luauF_asinP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 32), align 16, !tbaa !97
  store ptr @_ZL11luauF_atan2P9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 40), align 8, !tbaa !97
  store ptr @_ZL10luauF_atanP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 48), align 16, !tbaa !97
  %i.b = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #19, !srcloc !98
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 2
  %i.d = and i32 %i.c, 524288
  %.not.i = icmp eq i32 %i.d, 0                   ; 3 uses
  %_ZL16luauF_ceil_sse41P9lua_StateP10lua_TValueS2_iS2_i._ZL10luauF_ceilP9lua_StateP10lua_TValueS2_iS2_i.i = select i1 %.not.i, ptr @_ZL10luauF_ceilP9lua_StateP10lua_TValueS2_iS2_i, ptr @_ZL16luauF_ceil_sse41P9lua_StateP10lua_TValueS2_iS2_i
  store ptr %_ZL16luauF_ceil_sse41P9lua_StateP10lua_TValueS2_iS2_i._ZL10luauF_ceilP9lua_StateP10lua_TValueS2_iS2_i.i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 56), align 8, !tbaa !97
  store ptr @_ZL10luauF_coshP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 64), align 16, !tbaa !97
  store ptr @_ZL9luauF_cosP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 72), align 8, !tbaa !97
  store ptr @_ZL9luauF_degP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 80), align 16, !tbaa !97
  store ptr @_ZL9luauF_expP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 88), align 8, !tbaa !97
  %i.e = select i1 %.not.i, ptr @_ZL11luauF_floorP9lua_StateP10lua_TValueS2_iS2_i, ptr @_ZL17luauF_floor_sse41P9lua_StateP10lua_TValueS2_iS2_i
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 96), align 16, !tbaa !97
  store ptr @_ZL10luauF_fmodP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 104), align 8, !tbaa !97
  store ptr @_ZL11luauF_frexpP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 112), align 16, !tbaa !97
  store ptr @_ZL11luauF_ldexpP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 120), align 8, !tbaa !97
  store ptr @_ZL11luauF_log10P9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 128), align 16, !tbaa !97
  store ptr @_ZL9luauF_logP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 136), align 8, !tbaa !97
  store ptr @_ZL9luauF_maxP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 144), align 16, !tbaa !97
  store ptr @_ZL9luauF_minP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 152), align 8, !tbaa !97
  store ptr @_ZL10luauF_modfP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 160), align 16, !tbaa !97
  store ptr @_ZL9luauF_powP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 168), align 8, !tbaa !97
  store ptr @_ZL9luauF_radP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 176), align 16, !tbaa !97
  store ptr @_ZL10luauF_sinhP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 184), align 8, !tbaa !97
  store ptr @_ZL9luauF_sinP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 192), align 16, !tbaa !97
  store ptr @_ZL10luauF_sqrtP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 200), align 8, !tbaa !97
  store ptr @_ZL10luauF_tanhP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 208), align 16, !tbaa !97
  store ptr @_ZL9luauF_tanP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 216), align 8, !tbaa !97
  store ptr @_ZL13luauF_arshiftP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 224), align 16, !tbaa !97
  store ptr @_ZL10luauF_bandP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 232), align 8, !tbaa !97
  store ptr @_ZL10luauF_bnotP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 240), align 16, !tbaa !97
  store ptr @_ZL9luauF_borP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 248), align 8, !tbaa !97
  store ptr @_ZL10luauF_bxorP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 256), align 16, !tbaa !97
  store ptr @_ZL11luauF_btestP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 264), align 8, !tbaa !97
  store ptr @_ZL13luauF_extractP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 272), align 16, !tbaa !97
  store ptr @_ZL13luauF_lrotateP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 280), align 8, !tbaa !97
  store ptr @_ZL12luauF_lshiftP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 288), align 16, !tbaa !97
  store ptr @_ZL13luauF_replaceP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 296), align 8, !tbaa !97
  store ptr @_ZL13luauF_rrotateP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 304), align 16, !tbaa !97
  store ptr @_ZL12luauF_rshiftP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 312), align 8, !tbaa !97
  store ptr @_ZL10luauF_typeP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 320), align 16, !tbaa !97
  store ptr @_ZL10luauF_byteP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 328), align 8, !tbaa !97
  store ptr @_ZL10luauF_charP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 336), align 16, !tbaa !97
  store ptr @_ZL9luauF_lenP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 344), align 8, !tbaa !97
  store ptr @_ZL12luauF_typeofP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 352), align 16, !tbaa !97
  store ptr @_ZL9luauF_subP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 360), align 8, !tbaa !97
  store ptr @_ZL11luauF_clampP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 368), align 16, !tbaa !97
  store ptr @_ZL10luauF_signP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 376), align 8, !tbaa !97
  %i.f = select i1 %.not.i, ptr @_ZL11luauF_roundP9lua_StateP10lua_TValueS2_iS2_i, ptr @_ZL17luauF_round_sse41P9lua_StateP10lua_TValueS2_iS2_i
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 384), align 16, !tbaa !97
  store ptr @_ZL12luauF_rawsetP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 392), align 8, !tbaa !97
  store ptr @_ZL12luauF_rawgetP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 400), align 16, !tbaa !97
  store ptr @_ZL14luauF_rawequalP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 408), align 8, !tbaa !97
  store ptr @_ZL13luauF_tinsertP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 416), align 16, !tbaa !97
  store ptr @_ZL13luauF_tunpackP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 424), align 8, !tbaa !97
  store ptr @_ZL12luauF_vectorP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 432), align 16, !tbaa !97
  store ptr @_ZL13luauF_countlzP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 440), align 8, !tbaa !97
  store ptr @_ZL13luauF_countrzP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 448), align 16, !tbaa !97
  store ptr @_ZL12luauF_selectP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 456), align 8, !tbaa !97
  store ptr @_ZL12luauF_rawlenP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 464), align 16, !tbaa !97
  store ptr @_ZL14luauF_extractkP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 472), align 8, !tbaa !97
  store ptr @_ZL18luauF_getmetatableP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 480), align 16, !tbaa !97
  store ptr @_ZL18luauF_setmetatableP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 488), align 8, !tbaa !97
  store ptr @_ZL14luauF_tonumberP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 496), align 16, !tbaa !97
  store ptr @_ZL14luauF_tostringP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 504), align 8, !tbaa !97
  store ptr @_ZL14luauF_byteswapP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 512), align 16, !tbaa !97
  store ptr @_ZL17luauF_readintegerIaEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 520), align 8, !tbaa !97
  store ptr @_ZL17luauF_readintegerIhEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 528), align 16, !tbaa !97
  store ptr @_ZL18luauF_writeintegerIhEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 536), align 8, !tbaa !97
  store ptr @_ZL17luauF_readintegerIsEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 544), align 16, !tbaa !97
  store ptr @_ZL17luauF_readintegerItEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 552), align 8, !tbaa !97
  store ptr @_ZL18luauF_writeintegerItEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 560), align 16, !tbaa !97
  store ptr @_ZL17luauF_readintegerIiEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 568), align 8, !tbaa !97
  store ptr @_ZL17luauF_readintegerIjEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 576), align 16, !tbaa !97
  store ptr @_ZL18luauF_writeintegerIjEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 584), align 8, !tbaa !97
  store ptr @_ZL12luauF_readfpIfEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 592), align 16, !tbaa !97
  store ptr @_ZL13luauF_writefpIfEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 600), align 8, !tbaa !97
  store ptr @_ZL12luauF_readfpIdEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 608), align 16, !tbaa !97
  store ptr @_ZL13luauF_writefpIdEiP9lua_StateP10lua_TValueS3_iS3_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 616), align 8, !tbaa !97
  store ptr @_ZL21luauF_vectormagnitudeP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 624), align 16, !tbaa !97
  store ptr @_ZL21luauF_vectornormalizeP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 632), align 8, !tbaa !97
  store ptr @_ZL17luauF_vectorcrossP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 640), align 16, !tbaa !97
  store ptr @_ZL15luauF_vectordotP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 648), align 8, !tbaa !97
  store ptr @_ZL17luauF_vectorfloorP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 656), align 16, !tbaa !97
  store ptr @_ZL16luauF_vectorceilP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 664), align 8, !tbaa !97
  store ptr @_ZL15luauF_vectorabsP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 672), align 16, !tbaa !97
  store ptr @_ZL16luauF_vectorsignP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 680), align 8, !tbaa !97
  store ptr @_ZL17luauF_vectorclampP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 688), align 16, !tbaa !97
  store ptr @_ZL15luauF_vectorminP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 696), align 8, !tbaa !97
  store ptr @_ZL15luauF_vectormaxP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 704), align 16, !tbaa !97
  store ptr @_ZL10luauF_lerpP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 712), align 8, !tbaa !97
  store ptr @_ZL16luauF_vectorlerpP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 720), align 16, !tbaa !97
  store ptr @_ZL11luauF_isnanP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 728), align 8, !tbaa !97
  store ptr @_ZL11luauF_isinfP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 736), align 16, !tbaa !97
  store ptr @_ZL14luauF_isfiniteP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 744), align 8, !tbaa !97
  store ptr @_ZL19luauF_integercreateP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 752), align 16, !tbaa !97
  store ptr @_ZL21luauF_integertonumberP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 760), align 8, !tbaa !97
  store ptr @_ZL16luauF_integernegP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 768), align 16, !tbaa !97
  store ptr @_ZL16luauF_integeraddP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 776), align 8, !tbaa !97
  store ptr @_ZL16luauF_integersubP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 784), align 16, !tbaa !97
  store ptr @_ZL16luauF_integermulP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 792), align 8, !tbaa !97
  store ptr @_ZL16luauF_integerdivP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 800), align 16, !tbaa !97
  store ptr @_ZL16luauF_integerminP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 808), align 8, !tbaa !97
  store ptr @_ZL16luauF_integermaxP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 816), align 16, !tbaa !97
  store ptr @_ZL16luauF_integerremP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 824), align 8, !tbaa !97
  store ptr @_ZL17luauF_integeridivP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 832), align 16, !tbaa !97
  store ptr @_ZL17luauF_integerudivP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 840), align 8, !tbaa !97
  store ptr @_ZL17luauF_integeruremP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 848), align 16, !tbaa !97
  store ptr @_ZL16luauF_integermodP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 856), align 8, !tbaa !97
  store ptr @_ZL18luauF_integerclampP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 864), align 16, !tbaa !97
  store ptr @_ZL17luauF_integerbandP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 872), align 8, !tbaa !97
  store ptr @_ZL16luauF_integerborP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 880), align 16, !tbaa !97
  store ptr @_ZL17luauF_integerbnotP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 888), align 8, !tbaa !97
  store ptr @_ZL17luauF_integerbxorP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 896), align 16, !tbaa !97
  store ptr @_ZL15luauF_integerltP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 904), align 8, !tbaa !97
  store ptr @_ZL15luauF_integerleP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 912), align 16, !tbaa !97
  store ptr @_ZL16luauF_integerultP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 920), align 8, !tbaa !97
  store ptr @_ZL16luauF_integeruleP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 928), align 16, !tbaa !97
  store ptr @_ZL15luauF_integergtP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 936), align 8, !tbaa !97
  store ptr @_ZL15luauF_integergeP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 944), align 16, !tbaa !97
  store ptr @_ZL16luauF_integerugtP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 952), align 8, !tbaa !97
  store ptr @_ZL16luauF_integerugeP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 960), align 16, !tbaa !97
  store ptr @_ZL19luauF_integerlshiftP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 968), align 8, !tbaa !97
  store ptr @_ZL19luauF_integerrshiftP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 976), align 16, !tbaa !97
  store ptr @_ZL20luauF_integerarshiftP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 984), align 8, !tbaa !97
  store ptr @_ZL20luauF_integerlrotateP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 992), align 16, !tbaa !97
  store ptr @_ZL20luauF_integerrrotateP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1000), align 8, !tbaa !97
  store ptr @_ZL20luauF_integerextractP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1008), align 16, !tbaa !97
  store ptr @_ZL18luauF_integerbtestP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1016), align 8, !tbaa !97
  store ptr @_ZL20luauF_integercountrzP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1024), align 16, !tbaa !97
  store ptr @_ZL20luauF_integercountlzP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1032), align 8, !tbaa !97
  store ptr @_ZL18luauF_integerbswapP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1040), align 16, !tbaa !97
  store ptr @_ZL20luauF_bufferreadlongP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1048), align 8, !tbaa !97
  store ptr @_ZL21luauF_bufferwritelongP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1056), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1064), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1072), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1080), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1088), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1096), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1104), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1112), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1120), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1128), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1136), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1144), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1152), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1160), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1168), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1176), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1184), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1192), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1200), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1208), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1216), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1224), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1232), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1240), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1248), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1256), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1264), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1272), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1280), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1288), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1296), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1304), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1312), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1320), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1328), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1336), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1344), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1352), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1360), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1368), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1376), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1384), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1392), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1400), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1408), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1416), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1424), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1432), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1440), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1448), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1456), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1464), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1472), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1480), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1488), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1496), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1504), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1512), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1520), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1528), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1536), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1544), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1552), align 16, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1560), align 8, !tbaa !97
  store ptr @_ZL13luauF_missingP9lua_StateP10lua_TValueS2_iS2_i, ptr getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1568), align 16, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) getelementptr inbounds nuw (i8, ptr @luauF_table, i64 1576), i8 0, i64 472, i1 false), !tbaa !97
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 2048, ptr nonnull @luauF_table) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ldexp.f64.i32(double, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind memory(none) }

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
!9 = !{!"_ZTS10lua_TValue", !5, i64 0, !5, i64 8, !6, i64 12}
!10 = !{!9, !6, i64 12}
!11 = !{!5, !5, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTS10lua_TValue", !15, i64 0}
!17 = !{!"p1 _ZTS12global_State", !15, i64 0}
!18 = !{!"p1 _ZTS8CallInfo", !15, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!"p1 _ZTS8LuaTable", !15, i64 0}
!21 = !{!"p1 _ZTS5UpVal", !15, i64 0}
!22 = !{!"p1 _ZTS8GCObject", !15, i64 0}
!23 = !{!"p1 _ZTS7TString", !15, i64 0}
!24 = !{!"_ZTS9lua_State", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !14, i64 5, !14, i64 6, !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 32, !16, i64 40, !16, i64 48, !18, i64 56, !18, i64 64, !6, i64 72, !6, i64 76, !19, i64 80, !19, i64 82, !6, i64 84, !20, i64 88, !21, i64 96, !22, i64 104, !23, i64 112, !15, i64 120}
!25 = !{!24, !17, i64 24}
!26 = !{!23, !23, i64 0}
!27 = !{!"_ZTS7TString", !5, i64 0, !5, i64 1, !5, i64 2, !19, i64 4, !23, i64 8, !6, i64 16, !6, i64 20, !5, i64 24}
!28 = !{!27, !6, i64 20}
!29 = !{!"any p2 pointer", !15, i64 0}
!30 = !{!"p2 _ZTS7TString", !29, i64 0}
!31 = !{!"_ZTS11stringtable", !30, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!"long", !5, i64 0}
!33 = !{!"p1 _ZTS8lua_Page", !15, i64 0}
!34 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!35 = !{!"_ZTS5UpVal", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !16, i64 8, !5, i64 16}
!36 = !{!"p1 _ZTS10lua_jmpbuf", !15, i64 0}
!37 = !{!"_ZTS13lua_Callbacks", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72}
!38 = !{!"_ZTS22lua_ExecutionCallbacks", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64}
!39 = !{!"double", !5, i64 0}
!40 = !{!"_ZTS7GCStats", !5, i64 0, !6, i64 128, !6, i64 132, !32, i64 136, !32, i64 144, !32, i64 152, !39, i64 160, !39, i64 168, !39, i64 176}
!41 = !{!"_ZTS12global_State", !31, i64 0, !15, i64 16, !15, i64 24, !5, i64 32, !5, i64 33, !22, i64 40, !22, i64 48, !22, i64 56, !32, i64 64, !32, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !5, i64 96, !5, i64 416, !33, i64 736, !33, i64 744, !33, i64 752, !34, i64 760, !35, i64 768, !5, i64 808, !5, i64 920, !5, i64 1032, !9, i64 1200, !9, i64 1216, !6, i64 1232, !36, i64 1240, !32, i64 1248, !5, i64 1256, !37, i64 1288, !38, i64 1368, !5, i64 1440, !5, i64 1952, !5, i64 11312, !5, i64 13360, !5, i64 14384, !5, i64 15408, !9, i64 16432, !6, i64 16448, !15, i64 16456, !5, i64 16464, !5, i64 17488, !40, i64 18528, !6, i64 18712}
!42 = !{!41, !32, i64 72}
!43 = !{!41, !32, i64 64}
!44 = !{!"p1 omnipotent char", !15, i64 0}
!45 = !{!"p1 _ZTSN4Luau6FValueIbEE", !15, i64 0}
!46 = !{!"_ZTSN4Luau6FValueIbEE", !14, i64 0, !14, i64 1, !44, i64 8, !45, i64 16, !6, i64 24}
!47 = !{!46, !14, i64 0}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!"float", !5, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 _ZTS7LuaNode", !15, i64 0}
!53 = !{!"_ZTS8LuaTable", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !6, i64 8, !5, i64 12, !20, i64 16, !16, i64 24, !52, i64 32, !22, i64 40}
!54 = !{!53, !5, i64 4}
!55 = !{i64 0, i64 8, !11, i64 8, i64 4, !11, i64 12, i64 4, !12}
!56 = !{!24, !18, i64 32}
!57 = !{!"p1 _ZTS5Proto", !15, i64 0}
!58 = !{!"_ZTS8CallInfo", !16, i64 0, !16, i64 8, !16, i64 16, !57, i64 24, !5, i64 32, !6, i64 40, !6, i64 44}
!59 = !{!"_ZTS10LuauBuffer", !5, i64 0, !5, i64 1, !5, i64 2, !6, i64 4, !5, i64 8}
!60 = !{!59, !6, i64 4}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = !{!53, !6, i64 8}
!71 = !{!24, !16, i64 40}
!72 = !{!53, !16, i64 24}
!73 = !{!58, !16, i64 16}
!74 = !{!24, !16, i64 16}
!75 = !{!58, !16, i64 8}
!76 = !{!"p1 int", !15, i64 0}
!77 = !{!"p2 _ZTS5Proto", !29, i64 0}
!78 = !{!"p1 _ZTS6LocVar", !15, i64 0}
!79 = !{!"p1 _ZTS18FeedbackVectorSlot", !15, i64 0}
!80 = !{!"_ZTS5Proto", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !16, i64 8, !76, i64 16, !77, i64 24, !76, i64 32, !15, i64 40, !32, i64 48, !44, i64 56, !76, i64 64, !78, i64 72, !30, i64 80, !23, i64 88, !23, i64 96, !44, i64 104, !44, i64 112, !15, i64 120, !22, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !79, i64 176, !6, i64 184, !6, i64 188, !57, i64 192, !57, i64 200, !32, i64 208}
!81 = !{!80, !5, i64 4}
!82 = !{!20, !20, i64 0}
!83 = !{!53, !20, i64 16}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = !{!46, !14, i64 1}
!93 = !{!46, !44, i64 8}
!94 = !{!45, !45, i64 0}
!95 = !{!46, !45, i64 16}
!96 = !{!46, !6, i64 24}
!97 = !{!15, !15, i64 0}
!98 = !{i64 2150767054, i64 2150767136, i64 2150767217}
end_hunk_3
