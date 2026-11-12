Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_ir?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@exp

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) #1

declare hidden i64 @lj_carith_divi64(i64 noundef, i64 noundef) #0

declare hidden i64 @lj_carith_divu64(i64 noundef, i64 noundef) #0

declare hidden i64 @lj_carith_modi64(i64 noundef, i64 noundef) #0

declare hidden i64 @lj_carith_modu64(i64 noundef, i64 noundef) #0

declare hidden i64 @lj_carith_powi64(i64 noundef, i64 noundef) #0

declare hidden i64 @lj_carith_powu64(i64 noundef, i64 noundef) #0

declare hidden ptr @lj_cdata_newv(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare hidden void @lj_cdata_setfin(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @memcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @memset(ptr noundef writeonly, i32 noundef, i64 noundef) #4

declare hidden i32 @lj_vm_errno() #0

; Function Attrs: nounwind uwtable
define hidden void @lj_ir_growtop(ptr nofree noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq i32 %i.e, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i32 %i.e, %i.c                       ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = zext i32 %i.f to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = shl i32 %i.f, 1                          ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call ptr @lj_mem_realloc(ptr noundef %i.k, ptr noundef %i.i, i64 noundef %i.m, i64 noundef %i.p) #13
  %i.r = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %i.s = add i32 %i.r, %i.n
  %i.t = zext i32 %i.r to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = tail call ptr @lj_mem_realloc(ptr noundef %i.v, ptr noundef null, i64 noundef 0, i64 noundef 256) #13
  store i32 32760, ptr %i.b, align 4, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i64 [ 32760, %bb.c ], [ %i.t, %bb.b ]
  %storemerge = phi i32 [ 32792, %bb.c ], [ %i.s, %bb.b ]
  %.0 = phi ptr [ %i.w, %bb.c ], [ %i.q, %bb.b ]
  store i32 %storemerge, ptr %i.d, align 8, !tbaa !31
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare hidden ptr @lj_mem_realloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_emit(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %lj_ir_nextins.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @lj_ir_growtop(ptr noundef nonnull %0)
  br label %lj_ir_nextins.exit

lj_ir_nextins.exit:                               ; preds = %bb.a, %bb.b
  %i.e = add i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 189
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 402
  %i.n = zext i8 %i.l to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  store i16 %i.p, ptr %i.q, align 2, !tbaa !37
  %i.r = trunc i32 %i.b to i16
  store i16 %i.r, ptr %i.o, align 2, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.l, ptr %i.s, align 1, !tbaa !37
  %i.t = load i16, ptr %i.j, align 8, !tbaa !37
  store i16 %i.t, ptr %i.i, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.v = load i16, ptr %i.u, align 2, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i16 %i.v, ptr %i.w, align 2, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.y = load i8, ptr %i.x, align 4, !tbaa !37    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !42
  %i.ab = or i8 %i.aa, %i.y
  store i8 %i.ab, ptr %i.z, align 2, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.y, ptr %i.ac, align 4, !tbaa !37
  %i.ad = zext i8 %i.y to i32
  %i.ae = shl nuw i32 %i.ad, 24
  %i.af = add i32 %i.ae, %i.b
  ret i32 %i.af
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_call(ptr noundef initializes((184, 190)) %0, i32 noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 12 uses
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @lj_ir_callinfo, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 4 uses
  %i.e = and i32 %i.d, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.f = shl i32 %i.d, 23
  %sext = ashr i32 %i.f, 31
  %spec.select = add nsw i32 %sext, %i.e          ; 3 uses
  %.not19 = icmp eq i32 %spec.select, 0
  br i1 %.not19, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 16               ; 3 uses
  %i.h = icmp ult i32 %i.g, 41
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  %i.m = add nuw nsw i32 %i.g, 8
  store i32 %i.m, ptr %2, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.l, %bb.c ], [ %i.o, %bb.d ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46   ; 2 uses
  %.not = icmp eq i32 %spec.select, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 186
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %.in = phi i32 [ %spec.select, %.lr.ph ], [ %i.x, %bb.i ]
  %.120 = phi i32 [ %i.r, %.lr.ph ], [ %i.ak, %bb.i ]
  %i.x = add i32 %.in, -1                         ; 2 uses
  %i.y = trunc i32 %.120 to i16
  %i.z = load i32, ptr %2, align 16               ; 3 uses
  %i.aa = icmp ult i32 %i.z, 41
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.t, align 16
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.ac
  %i.ae = add nuw nsw i32 %i.z, 8
  store i32 %i.ae, ptr %2, align 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.s, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi ptr [ %i.ad, %bb.g ], [ %i.af, %bb.h ]
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46
  %i.aj = trunc i32 %i.ai to i16
  store i16 25600, ptr %i.v, align 4, !tbaa !37
  store i16 %i.y, ptr %i.u, align 8, !tbaa !37
  store i16 %i.aj, ptr %i.w, align 2, !tbaa !37
  %i.ak = call i32 @lj_opt_fold(ptr noundef %0) #13 ; 2 uses
  %i.al = icmp ugt i32 %i.x, 1
  br i1 %i.al, label %bb.f, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.i, %bb.a, %bb.e
  %.1.lcssa = phi i32 [ %i.r, %bb.e ], [ 32767, %bb.a ], [ %i.ak, %bb.i ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  %.mask = and i32 %i.d, -16777216
  %i.am = icmp eq i32 %.mask, 1644167168
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.an, align 1, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ao = lshr i32 %i.d, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = trunc i32 %.1.lcssa to i16
  %i.ar = trunc i32 %1 to i16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.ap, ptr %i.at, align 4, !tbaa !37
  store i16 %i.aq, ptr %i.as, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.ar, ptr %i.au, align 2, !tbaa !37
  %i.av = call i32 @lj_opt_fold(ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.av
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

declare hidden i32 @lj_opt_fold(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_ggfload(ptr noundef initializes((184, 190)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %2, 2
  %i.b = trunc i32 %1 to i16
  %i.c = or i16 %i.b, 17664
  %i.d = trunc i64 %i.a to i16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.c, ptr %i.f, align 4, !tbaa !37
  store i16 32767, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.d, ptr %i.g, align 2, !tbaa !37
  %i.h = tail call i32 @lj_opt_fold(ptr noundef %0) #13
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_kint(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %.0.in19 = load i16, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  %.not20 = icmp eq i16 %.0.in19, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.0.in = load i16, ptr %i.d, align 2, !tbaa !37 ; 2 uses
  %.not = icmp eq i16 %.0.in, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.in21 = phi i16 [ %.0.in, %bb.b ], [ %.0.in19, %bb.a ] ; 2 uses
  %i.e = zext i16 %.0.in21 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30
  %.not.i = icmp ugt i32 %i.j, %i.l
  br i1 %.not.i, label %ir_nextk.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %._crit_edge
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %ir_nextk.exit

ir_nextk.exit:                                    ; preds = %._crit_edge, %bb.c
  %i.m = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ]
  %i.n = add i32 %i.j, -1                         ; 4 uses
  store i32 %i.n, ptr %i.i, align 8, !tbaa !40
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o ; 4 uses
  store i32 %1, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i8 19, ptr %i.q, align 4, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  store i8 23, ptr %i.r, align 1, !tbaa !37
  %i.s = load i16, ptr %i.c, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  store i16 %i.s, ptr %i.t, align 2, !tbaa !37
  %i.u = trunc i32 %i.n to i16
  store i16 %i.u, ptr %i.c, align 8, !tbaa !38
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph
  %.0.le = zext i16 %.0.in21 to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %ir_nextk.exit
  %.1 = phi i32 [ %i.n, %ir_nextk.exit ], [ %.0.le, %.loopexit ]
  %i.v = add i32 %.1, 318767104
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_k64(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = icmp eq i32 %1, 28
  %i.d = select i1 %i.c, i32 14, i32 21           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 402
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %.0.in27 = load i16, ptr %i.g, align 2, !tbaa !37 ; 2 uses
  %.not28 = icmp eq i16 %.0.in27, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %.0.in = load i16, ptr %i.h, align 2, !tbaa !37 ; 2 uses
  %.not = icmp eq i16 %.0.in, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.in29 = phi i16 [ %.0.in, %bb.b ], [ %.0.in27, %bb.a ] ; 2 uses
  %i.i = zext i16 %.0.in29 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %i.m = icmp eq i64 %i.l, %2
  br i1 %i.m, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !40
  %i.p = add i32 %i.o, -2                         ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %ir_nextk64.exit, !prof !41

bb.c:                                             ; preds = %._crit_edge
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %ir_nextk64.exit

ir_nextk64.exit:                                  ; preds = %._crit_edge, %bb.c
  %i.t = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ]
  store i32 %i.p, ptr %i.n, align 8, !tbaa !40
  %i.u = zext i32 %i.p to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %2, ptr %i.w, align 8, !tbaa !37
  %i.x = trunc nuw nsw i32 %i.d to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.x, ptr %i.y, align 4, !tbaa !37
  %i.z = trunc i32 %1 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !37
  store i32 0, ptr %i.v, align 8, !tbaa !37
  %i.ab = load i16, ptr %i.g, align 2, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !37
  %i.ad = trunc i32 %i.p to i16
  store i16 %i.ad, ptr %i.g, align 2, !tbaa !38
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph
  %.0.le = zext i16 %.0.in29 to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %ir_nextk64.exit
  %.1 = phi i32 [ %i.p, %ir_nextk64.exit ], [ %.0.le, %.loopexit ]
  %i.ae = shl nuw nsw i32 %i.d, 24
  %i.af = add i32 %.1, %i.ae
  ret i32 %i.af
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_knum_u64(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 458 ; 3 uses
  %.0.in27.i = load i16, ptr %i.c, align 2, !tbaa !37 ; 2 uses
  %.not28.i = icmp eq i16 %.0.in27.i, 0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.0.in.i = load i16, ptr %i.d, align 2, !tbaa !37 ; 2 uses
  %.not.i = icmp eq i16 %.0.in.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@lj_ir_kint64:bb.a
  %i.l = add i32 %i.k, -2                         ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = icmp ult i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %ir_nextk64.exit.i, !prof !41

bb.c:                                             ; preds = %._crit_edge.i
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %ir_nextk64.exit.i

ir_nextk64.exit.i:                                ; preds = %bb.c, %._crit_edge.i
  %i.p = phi ptr [ %i.b, %._crit_edge.i ], [ %.pre.i, %bb.c ]
  store i32 %i.l, ptr %i.j, align 8, !tbaa !40
  %i.q = zext i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %1, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i8 21, ptr %i.t, align 4, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store i8 29, ptr %i.u, align 1, !tbaa !37
  store i32 0, ptr %i.r, align 8, !tbaa !37
  %i.v = load i16, ptr %i.c, align 4, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i16 %i.v, ptr %i.w, align 2, !tbaa !37
  %i.x = trunc i32 %i.l to i16
  store i16 %i.x, ptr %i.c, align 4, !tbaa !38
  br label %lj_ir_k64.exit

.loopexit.i:                                      ; preds = %.lr.ph.i
  %.0.le.i = zext i16 %.0.in29.i to i32
  br label %lj_ir_k64.exit

lj_ir_k64.exit:                                   ; preds = %ir_nextk64.exit.i, %.loopexit.i
  %.1.i = phi i32 [ %i.l, %ir_nextk64.exit.i ], [ %.0.le.i, %.loopexit.i ]
  %i.y = add i32 %.1.i, 352321536
  ret i32 %i.y
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_knumint(ptr nofree noundef captures(none) %0, double noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @lj_vm_num2int_check(double noundef %1) #14 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = trunc i64 %i.a to i32                    ; 2 uses
  %i.d = tail call i1 @llvm.is.fpclass.f64(double %1, /* (nzero) */ i32 32)
  %or.cond = or i1 %i.d, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %.0.in19.i = load i16, ptr %i.g, align 8, !tbaa !37 ; 2 uses
  %.not20.i = icmp eq i16 %.0.in19.i, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %.0.in.i = load i16, ptr %i.h, align 2, !tbaa !37 ; 2 uses
  %.not.i = icmp eq i16 %.0.in.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0.in21.i = phi i16 [ %.0.in.i, %bb.c ], [ %.0.in19.i, %bb.b ] ; 2 uses
  %i.i = zext i16 %.0.in21.i to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = icmp eq i32 %i.k, %i.c
  br i1 %i.l, label %.loopexit.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %.not.i.i = icmp ugt i32 %i.n, %i.p
  br i1 %.not.i.i, label %ir_nextk.exit.i, label %bb.d, !prof !36

bb.d:                                             ; preds = %._crit_edge.i
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !34
  br label %ir_nextk.exit.i

ir_nextk.exit.i:                                  ; preds = %bb.d, %._crit_edge.i
  %i.q = phi ptr [ %i.f, %._crit_edge.i ], [ %.pre.i, %bb.d ]
  %i.r = add i32 %i.n, -1                         ; 4 uses
  store i32 %i.r, ptr %i.m, align 8, !tbaa !40
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s ; 4 uses
  store i32 %i.c, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i8 19, ptr %i.u, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store i8 23, ptr %i.v, align 1, !tbaa !37
  %i.w = load i16, ptr %i.g, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  store i16 %i.w, ptr %i.x, align 2, !tbaa !37
  %i.y = trunc i32 %i.r to i16
  store i16 %i.y, ptr %i.g, align 8, !tbaa !38
  br label %lj_ir_kint.exit

.loopexit.i:                                      ; preds = %.lr.ph.i
  %.0.le.i = zext i16 %.0.in21.i to i32
  br label %lj_ir_kint.exit

lj_ir_kint.exit:                                  ; preds = %ir_nextk.exit.i, %.loopexit.i
  %.1.i = phi i32 [ %i.r, %ir_nextk.exit.i ], [ %.0.le.i, %.loopexit.i ]
  %i.z = add i32 %.1.i, 318767104
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.aa = bitcast double %1 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 458 ; 3 uses
  %.0.in27.i.i = load i16, ptr %i.ad, align 2, !tbaa !37 ; 2 uses
  %.not28.i.i = icmp eq i16 %.0.in27.i.i, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %.0.in.i.i = load i16, ptr %i.ae, align 2, !tbaa !37 ; 2 uses
  %.not.i.i11 = icmp eq i16 %.0.in.i.i, 0
  br i1 %.not.i.i11, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.0.in29.i.i = phi i16 [ %.0.in.i.i, %bb.f ], [ %.0.in27.i.i, %bb.e ] ; 2 uses
  %i.af = zext i16 %.0.in29.i.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = icmp eq i64 %i.ai, %i.aa
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !40
  %i.am = add i32 %i.al, -2                       ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30
  %i.ap = icmp ult i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %ir_nextk64.exit.i.i, !prof !41

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %ir_nextk64.exit.i.i

ir_nextk64.exit.i.i:                              ; preds = %bb.g, %._crit_edge.i.i
  %i.aq = phi ptr [ %i.ac, %._crit_edge.i.i ], [ %.pre.i.i, %bb.g ]
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !40
  %i.ar = zext i32 %i.am to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store double %1, ptr %i.at, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 14, ptr %i.au, align 4, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  store i8 28, ptr %i.av, align 1, !tbaa !37
  store i32 0, ptr %i.as, align 8, !tbaa !37
  %i.aw = load i16, ptr %i.ad, align 2, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !37
  %i.ay = trunc i32 %i.am to i16
  store i16 %i.ay, ptr %i.ad, align 2, !tbaa !38
  br label %lj_ir_knum_u64.exit

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %.0.le.i.i = zext i16 %.0.in29.i.i to i32
  br label %lj_ir_knum_u64.exit

lj_ir_knum_u64.exit:                              ; preds = %ir_nextk64.exit.i.i, %.loopexit.i.i
  %.1.i.i = phi i32 [ %i.am, %ir_nextk64.exit.i.i ], [ %.0.le.i.i, %.loopexit.i.i ]
  %i.az = add i32 %.1.i.i, 234881024
  br label %bb.h

bb.h:                                             ; preds = %lj_ir_knum_u64.exit, %lj_ir_kint.exit
  %.09 = phi i32 [ %i.az, %lj_ir_knum_u64.exit ], [ %i.z, %lj_ir_kint.exit ]
  ret i32 %.09
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i64 @lj_vm_num2int_check(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_kgc(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 450 ; 3 uses
  %.0.in22 = load i16, ptr %i.c, align 2, !tbaa !37 ; 2 uses
  %.not23 = icmp eq i16 %.0.in22, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.0.in = load i16, ptr %i.d, align 2, !tbaa !37 ; 2 uses
  %.not = icmp eq i16 %.0.in, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.in24 = phi i16 [ %.0.in, %bb.b ], [ %.0.in22, %bb.a ] ; 2 uses
  %i.e = zext i16 %.0.in24 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = add i32 %i.l, -2                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  %i.p = icmp ult i32 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %ir_nextk64.exit, !prof !41

bb.c:                                             ; preds = %._crit_edge
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %ir_nextk64.exit

ir_nextk64.exit:                                  ; preds = %._crit_edge, %bb.c
  %i.q = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ]
  store i32 %i.m, ptr %i.k, align 8, !tbaa !40
  %i.r = zext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.t = ptrtoint ptr %1 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !37
  %i.v = trunc i32 %2 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.v, ptr %i.w, align 4, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 24, ptr %i.x, align 1, !tbaa !37
  %i.y = load i16, ptr %i.c, align 2, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i16 %i.y, ptr %i.z, align 2, !tbaa !37
  %i.aa = trunc i32 %i.m to i16
  store i16 %i.aa, ptr %i.c, align 2, !tbaa !38
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph
  %.0.le = zext i16 %.0.in24 to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %ir_nextk64.exit
  %.1 = phi i32 [ %i.m, %ir_nextk64.exit ], [ %.0.le, %.loopexit ]
  %i.ab = shl i32 %2, 24
  %i.ac = add i32 %.1, %i.ab
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_ktrace(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = add i32 %i.b, -2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %ir_nextk64.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  br label %ir_nextk64.exit

ir_nextk64.exit:                                  ; preds = %bb.a, %bb.b
  store i32 %i.c, ptr %i.a, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = zext i32 %i.c to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i8 9, ptr %i.k, align 4, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 28, ptr %i.l, align 1, !tbaa !37
  store i32 0, ptr %i.j, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store i16 0, ptr %i.m, align 2, !tbaa !37
  %i.n = add i32 %i.b, 150994942
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_kptr_(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 402
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %.0.in24 = load i16, ptr %i.e, align 2, !tbaa !37 ; 2 uses
  %.not25 = icmp eq i16 %.0.in24, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %.0.in = load i16, ptr %i.f, align 2, !tbaa !37 ; 2 uses
  %.not = icmp eq i16 %.0.in, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.in26 = phi i16 [ %.0.in, %bb.b ], [ %.0.in24, %bb.a ] ; 2 uses
  %i.g = zext i16 %.0.in26 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp eq ptr %2, %i.k
  br i1 %i.l, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = add i32 %i.n, -2                         ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.q = load i32, ptr %i.p, align 4, !tbaa !30
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %ir_nextk64.exit, !prof !41

bb.c:                                             ; preds = %._crit_edge
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %ir_nextk64.exit

ir_nextk64.exit:                                  ; preds = %._crit_edge, %bb.c
  %i.s = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ]
  store i32 %i.o, ptr %i.m, align 8, !tbaa !40
  %i.t = zext i32 %i.o to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 5 uses
  store i32 0, ptr %i.u, align 8, !tbaa !37
  %i.v = ptrtoint ptr %2 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 9, ptr %i.x, align 4, !tbaa !37
  %i.y = trunc i32 %1 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %i.y, ptr %i.z, align 1, !tbaa !37
  %i.aa = load i16, ptr %i.e, align 2, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !37
  %i.ac = trunc i32 %i.o to i16
  store i16 %i.ac, ptr %i.e, align 2, !tbaa !38
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph
  %.0.le = zext i16 %.0.in26 to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %ir_nextk64.exit
  %.1 = phi i32 [ %i.o, %ir_nextk64.exit ], [ %.0.le, %.loopexit ]
  %i.ad = add i32 %.1, 150994944
  ret i32 %i.ad
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_knull(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %.0.in20 = load i16, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  %.not21 = icmp eq i16 %.0.in20, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.0.in = load i16, ptr %i.d, align 2, !tbaa !37 ; 2 uses
  %.not = icmp eq i16 %.0.in, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.in22 = phi i16 [ %.0.in, %bb.b ], [ %.0.in20, %bb.a ] ; 2 uses
  %i.e = zext i16 %.0.in22 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i8, ptr %i.g, align 4, !tbaa !37
  %i.i = zext i8 %i.h to i32
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %.not.i = icmp ugt i32 %i.l, %i.n
  br i1 %.not.i, label %ir_nextk.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %._crit_edge
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %ir_nextk.exit

ir_nextk.exit:                                    ; preds = %._crit_edge, %bb.c
  %i.o = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ]
  %i.p = add i32 %i.l, -1                         ; 4 uses
  store i32 %i.p, ptr %i.k, align 8, !tbaa !40
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q ; 4 uses
  store i32 0, ptr %i.r, align 8, !tbaa !37
  %i.s = trunc i32 %1 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i8 %i.s, ptr %i.t, align 4, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store i8 27, ptr %i.u, align 1, !tbaa !37
  %i.v = load i16, ptr %i.c, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i16 %i.v, ptr %i.w, align 2, !tbaa !37
  %i.x = trunc i32 %i.p to i16
  store i16 %i.x, ptr %i.c, align 8, !tbaa !38
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph
  %.0.le = zext i16 %.0.in22 to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %ir_nextk.exit
  %.1 = phi i32 [ %i.p, %ir_nextk.exit ], [ %.0.le, %.loopexit ]
  %i.y = shl i32 %1, 24
  %i.z = add i32 %.1, %i.y
  ret i32 %i.z
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_kslot(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = and i32 %1, 65535
  %i.d = shl i32 %2, 16
  %i.e = or disjoint i32 %i.d, %i.c               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 462 ; 3 uses
  %.0.in21 = load i16, ptr %i.f, align 2, !tbaa !37 ; 2 uses
  %.not22 = icmp eq i16 %.0.in21, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %.0.in = load i16, ptr %i.g, align 2, !tbaa !37 ; 2 uses
  %.not = icmp eq i16 %.0.in, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.in23 = phi i16 [ %.0.in, %bb.b ], [ %.0.in21, %bb.a ] ; 2 uses
  %i.h = zext i16 %.0.in23 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp eq i32 %i.j, %i.e
  br i1 %i.k, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  %.not.i = icmp ugt i32 %i.m, %i.o
  br i1 %.not.i, label %ir_nextk.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %._crit_edge
  tail call fastcc void @lj_ir_growbot(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %ir_nextk.exit

ir_nextk.exit:                                    ; preds = %._crit_edge, %bb.c
  %i.p = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ]
  %i.q = add i32 %i.m, -1                         ; 4 uses
  store i32 %i.q, ptr %i.l, align 8, !tbaa !40
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r ; 4 uses
  store i32 %i.e, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 5, ptr %i.t, align 4, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 30, ptr %i.u, align 1, !tbaa !37
  %i.v = load i16, ptr %i.f, align 2, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i16 %i.v, ptr %i.w, align 2, !tbaa !37
  %i.x = trunc i32 %i.q to i16
  store i16 %i.x, ptr %i.f, align 2, !tbaa !38
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph
  %.0.le = zext i16 %.0.in23 to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %ir_nextk.exit
  %.1 = phi i32 [ %i.q, %ir_nextk.exit ], [ %.0.le, %.loopexit ]
  %i.y = add i32 %.1, 83886080
  ret i32 %i.y
}

; Function Attrs: nounwind uwtable
define hidden void @lj_ir_kvalue(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !37
  switch i8 %i.b, label %bb.i [
    i8 22, label %bb.b
    i8 23, label %bb.c
    i8 24, label %bb.d
    i8 25, label %bb.e
    i8 26, label %bb.e
    i8 27, label %bb.f
    i8 28, label %bb.g
    i8 29, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !37
  %i.e = and i8 %i.d, 31
  %i.f = zext nneg i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 47
  %i.h = xor i64 %i.g, -1
  store i64 %i.h, ptr %1, align 8, !tbaa !37
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %2, align 8, !tbaa !37
  %i.j = sitofp i32 %i.i to double
  store double %i.j, ptr %1, align 8, !tbaa !37
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i8, ptr %i.m, align 4, !tbaa !37
  %i.o = and i8 %i.n, 31
  %i.p = xor i8 %i.o, -1
  %i.q = sext i8 %i.p to i64
  %i.r = shl nsw i64 %i.q, 47
  %i.s = or i64 %i.r, %i.l
  store i64 %i.s, ptr %1, align 8, !tbaa !37
  br label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %i.v = uitofp i64 %i.u to double
  store double %i.v, ptr %1, align 8, !tbaa !37
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %1, align 8, !tbaa !37
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !37
  store double %i.x, ptr %1, align 8, !tbaa !37
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.y = tail call ptr @lj_mem_newgco(ptr noundef %0, i64 noundef 24) #13 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  store i8 10, ptr %i.z, align 1, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  store i16 11, ptr %i.aa, align 2, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !55
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = or i64 %i.ae, -1548112371908608
  store i64 %i.af, ptr %1, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_tonumber(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %1, 24
  %i.b = and i32 %i.a, 30
  %i.c = add nsw i32 %i.b, -14
  %i.d = icmp ult i32 %i.c, 6
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %1, 520093696
  %i.f = icmp eq i32 %i.e, 67108864
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i32 %1 to i16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 24206, ptr %i.i, align 4, !tbaa !37
  store i16 %i.g, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.j, align 2, !tbaa !37
  %i.k = tail call i32 @lj_opt_fold(ptr noundef %0) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @lj_trace_err(ptr noundef %0, i32 noundef 11) #15
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %i.k, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare hidden void @lj_trace_err(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_tonum(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %1, 520093696                    ; 2 uses
  %i.b = icmp eq i32 %i.a, 234881024
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 24
  %i.d = and i32 %i.c, 31
  %i.e = add nsw i32 %i.d, -15
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.a, 67108864
  br i1 %i.g, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lj_trace_err(ptr noundef %0, i32 noundef 11) #15
  unreachable

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.h = phi <2 x i16> [ <i16 467, i16 23310>, %bb.b ], [ <i16 0, i16 24206>, %bb.c ]
  %i.i = trunc i32 %1 to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.i, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 186
  store <2 x i16> %i.h, ptr %i.k, align 2, !tbaa !37
  %i.l = tail call i32 @lj_opt_fold(ptr noundef %0) #13
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %i.l, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ir_tostr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %1, 520093696                    ; 2 uses
  %i.b = icmp eq i32 %i.a, 67108864
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 24
  %i.d = and i32 %i.c, 30
  %i.e = add nsw i32 %i.d, -14
  %i.f = icmp ult i32 %i.e, 6
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @lj_trace_err(ptr noundef %0, i32 noundef 11) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = trunc i32 %1 to i16
  %i.h = icmp eq i32 %i.a, 234881024
  %i.i = zext i1 %i.h to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23812, ptr %i.k, align 4, !tbaa !37
  store i16 %i.g, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.i, ptr %i.l, align 2, !tbaa !37
  %i.m = tail call i32 @lj_opt_fold(ptr noundef %0) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %i.m, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @lj_ir_numcmp(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  switch i32 %2, label %bb.l [
    i32 8, label %bb.b
    i32 9, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp oeq double %0, %1
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp une double %0, %1
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.c = fcmp olt double %0, %1
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.d = fcmp oge double %0, %1
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.e = fcmp ole double %0, %1
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.f = fcmp ogt double %0, %1
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.g = fcmp ult double %0, %1
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.h = fcmp uge double %0, %1
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.i = fcmp ule double %0, %1
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.j = fcmp ugt double %0, %1
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %i.j, %bb.k ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ %i.f, %bb.g ], [ %i.g, %bb.h ], [ %i.h, %bb.i ], [ %i.i, %bb.j ], [ false, %bb.a ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @lj_ir_strcmp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @lj_str_cmp(ptr noundef %0, ptr noundef %1) #13 ; 4 uses
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.lobit = lshr i32 %i.a, 31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = zext i1 %i.b to i32
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.a, 1
  %i.e = zext i1 %i.d to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.a, 0
  %i.g = zext i1 %i.f to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.e ], [ %.lobit, %bb.b ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @lj_ir_rollback(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %i.c = icmp ugt i32 %i.b, %1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 402 ; 5 uses
  %i.g = zext i32 %i.b to i64                     ; 4 uses
  %i.h = zext i32 %1 to i64                       ; 3 uses
  %i.i = sub nsw i64 %i.g, %i.h
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.j, %.prol.preheader ], [ %i.g, %.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.j = add nsw i64 %indvars.iv.prol, -1         ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.m = load i16, ptr %i.l, align 2, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.p
  store i16 %i.m, ptr %i.q, align 2, !tbaa !38
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !56

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph ], [ %i.j, %.prol.preheader ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph ], [ %i.j, %.prol.preheader ]
  %i.r = sub nsw i64 %i.h, %i.g
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %._crit_edge.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.t = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !37
  %i.w = getelementptr i8, ptr %i.t, i64 -3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.y
  store i16 %i.v, ptr %i.z, align 2, !tbaa !38
  %i.aa = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !37
  %i.ad = getelementptr i8, ptr %i.aa, i64 -11
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !37
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  store i16 %i.ac, ptr %i.ag, align 2, !tbaa !38
  %i.ah = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -18
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !37
  %i.ak = getelementptr i8, ptr %i.ah, i64 -19
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.am
  store i16 %i.aj, ptr %i.an, align 2, !tbaa !38
  %i.ao = add nsw i64 %indvars.iv, -4             ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.au
  store i16 %i.ar, ptr %i.av, align 2, !tbaa !38
  %.wide.3 = icmp ugt i64 %i.ao, %i.h
  br i1 %.wide.3, label %.lr.ph.new, label %._crit_edge.loopexit, !llvm.loop !57

._crit_edge.loopexit:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ao, %.lr.ph.new ]
  %i.aw = trunc nuw i64 %.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.aw, %._crit_edge.loopexit ]
  store i32 %.0.lcssa, ptr %i.a, align 4, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lj_ir_growbot(ptr nofree noundef captures(none) initializes((32, 40)) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30   ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = sub i32 %i.h, %i.d                       ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35   ; 2 uses
  %i.l = lshr i32 %i.i, 1                         ; 2 uses
  %i.m = add i32 %i.l, %i.k
  %i.n = icmp ult i32 %i.m, %i.h
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i32 %i.i, 2                         ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p
  %i.r = sub i32 %i.k, %i.d
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.q, ptr align 8 %i.f, i64 %i.t, i1 false)
  %i.u = load i32, ptr %i.c, align 4, !tbaa !30
  %i.v = sub i32 %i.u, %i.o
  %i.w = load i32, ptr %i.g, align 8, !tbaa !31
  %i.x = sub i32 %i.w, %i.o
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.aa = shl i32 %i.i, 1                         ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call ptr @lj_mem_realloc(ptr noundef %i.z, ptr noundef null, i64 noundef 0, i64 noundef %i.ac) #13 ; 2 uses
  %i.ae = icmp ugt i32 %i.i, 255
  %i.af = select i1 %i.ae, i32 128, i32 %i.l      ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !35
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !30
  %i.ak = sub i32 %i.ai, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ah, ptr align 8 %i.f, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !62
  %i.aq = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.ar = zext i32 %i.i to i64
  %i.as = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !71
  %i.av = sub i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !71
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73
  %i.az = tail call ptr %i.aw(ptr noundef %i.ay, ptr noundef %i.f, i64 noundef range(i64 0, 34359738361) %i.as, i64 noundef 0) #13, !inline_history !59 ; 0 uses
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !30
  %i.bb = sub i32 %i.ba, %i.af                    ; 2 uses
  %i.bc = add i32 %i.bb, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink46 = phi i32 [ %i.bb, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.sink = phi ptr [ %i.ad, %bb.c ], [ %i.f, %bb.b ]
  %.sink42 = phi i32 [ %i.bc, %bb.c ], [ %i.x, %bb.b ]
  %i.bd = zext i32 %.sink46 to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.be ; 2 uses
  store i32 %.sink46, ptr %i.c, align 4, !tbaa !30
  store i32 %.sink42, ptr %i.g, align 8, !tbaa !31
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #12

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"GCRef", !11, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTS5IRIns", !14, i64 0}
!16 = !{!"p1 _ZTS8SnapShot", !14, i64 0}
!17 = !{!"p1 int", !14, i64 0}
!18 = !{!"MRef", !11, i64 0}
!19 = !{!"p1 omnipotent char", !14, i64 0}
!20 = !{!"GCtrace", !12, i64 0, !7, i64 8, !7, i64 9, !13, i64 10, !8, i64 12, !8, i64 16, !12, i64 24, !15, i64 32, !8, i64 40, !8, i64 44, !16, i64 48, !17, i64 56, !12, i64 64, !18, i64 72, !8, i64 80, !8, i64 84, !19, i64 88, !8, i64 96, !13, i64 100, !13, i64 102, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !13, i64 112, !7, i64 114, !7, i64 115, !7, i64 116, !7, i64 117}
!21 = !{!"p1 _ZTS7GCtrace", !14, i64 0}
!22 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!23 = !{!"p1 _ZTS6GCfunc", !14, i64 0}
!24 = !{!"p1 _ZTS7GCproto", !14, i64 0}
!25 = !{!"IRType1", !7, i64 0}
!26 = !{!"FoldState", !7, i64 0, !7, i64 8, !7, i64 24}
!27 = !{!"p1 _ZTS5GCRef", !14, i64 0}
!28 = !{!"ScEvEntry", !18, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !25, i64 16, !7, i64 17}
!29 = !{!"jit_State", !20, i64 0, !21, i64 120, !22, i64 128, !17, i64 136, !23, i64 144, !24, i64 152, !17, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !7, i64 180, !7, i64 181, !25, i64 182, !7, i64 183, !26, i64 184, !17, i64 224, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !7, i64 260, !7, i64 264, !7, i64 304, !15, i64 328, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !16, i64 352, !17, i64 360, !8, i64 368, !8, i64 372, !7, i64 376, !27, i64 384, !8, i64 392, !8, i64 396, !13, i64 400, !7, i64 402, !7, i64 604, !7, i64 1636, !7, i64 1696, !7, i64 1824, !8, i64 2848, !7, i64 2852, !8, i64 2980, !28, i64 2984, !17, i64 3008, !8, i64 3016, !8, i64 3020, !8, i64 3024, !17, i64 3032, !8, i64 3040, !8, i64 3044, !19, i64 3048, !19, i64 3056, !19, i64 3064, !11, i64 3072, !11, i64 3080, !11, i64 3088, !11, i64 3096, !7, i64 3104, !24, i64 3112, !8, i64 3120, !8, i64 3124}
!30 = !{!29, !8, i64 340}
!31 = !{!29, !8, i64 336}
!32 = !{!29, !15, i64 328}
!33 = !{!29, !22, i64 128}
!34 = !{!29, !15, i64 32}
!35 = !{!29, !8, i64 12}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!7, !7, i64 0}
!38 = !{!13, !13, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!29, !8, i64 40}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!29, !7, i64 182}
!43 = distinct !{!43, !39}
!44 = !{!"CCallInfo", !14, i64 0, !8, i64 8}
!45 = !{!44, !8, i64 8}
!46 = !{!8, !8, i64 0}
!47 = !{!29, !7, i64 181}
!48 = distinct !{!48, !39}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = !{!"GCcdata", !12, i64 0, !7, i64 8, !7, i64 9, !13, i64 10}
!53 = !{!52, !7, i64 9}
!54 = !{!52, !13, i64 10}
!55 = !{!11, !11, i64 0}
!56 = distinct !{!56, !58}
!57 = distinct !{!57, !39}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{null}
!60 = !{!"p1 _ZTS6TValue", !14, i64 0}
!61 = !{!"lua_State", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !18, i64 16, !12, i64 24, !60, i64 32, !60, i64 40, !18, i64 48, !18, i64 56, !12, i64 64, !12, i64 72, !14, i64 80, !8, i64 88}
!62 = !{!61, !11, i64 16}
!63 = !{!"GCState", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !8, i64 20, !12, i64 24, !18, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !8, i64 92, !18, i64 96}
!64 = !{!"GCstr", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !8, i64 12, !8, i64 16, !8, i64 20}
!65 = !{!"StrInternState", !27, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !11, i64 24}
!66 = !{!"SBuf", !19, i64 0, !19, i64 8, !19, i64 16, !18, i64 24}
!67 = !{!"Node", !7, i64 0, !7, i64 8, !18, i64 16}
!68 = !{!"GCupval", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 16, !18, i64 32, !8, i64 40}
!69 = !{!"PRNGState", !7, i64 0}
!70 = !{!"global_State", !14, i64 0, !14, i64 8, !63, i64 16, !64, i64 120, !7, i64 144, !7, i64 145, !7, i64 146, !7, i64 147, !65, i64 152, !8, i64 184, !12, i64 192, !66, i64 200, !7, i64 232, !7, i64 240, !67, i64 248, !7, i64 272, !12, i64 280, !68, i64 288, !8, i64 336, !8, i64 340, !14, i64 344, !14, i64 352, !14, i64 360, !8, i64 368, !8, i64 372, !12, i64 376, !18, i64 384, !18, i64 392, !69, i64 400, !7, i64 432}
!71 = !{!70, !11, i64 16}
!72 = !{!70, !14, i64 0}
!73 = !{!70, !14, i64 8}
end_hunk_1
