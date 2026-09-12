Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_sprintf?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@stbsp__real_to_str:bb.a
  br label %bb.r

._crit_edge165:                                   ; preds = %.lr.ph164.preheader, %.preheader
  %storemerge208 = phi i64 [ %storemerge207, %.preheader ], [ %storemerge209, %.lr.ph164.preheader ]
  %.398.lcssa = phi i32 [ %i.cf, %.preheader ], [ %i.ck, %.lr.ph164.preheader ]
  %.3.ptr = getelementptr inbounds i8, ptr %.083, i64 -8
  br label %bb.n

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge157.thread.thread
  %.499.ph = phi i32 [ 0, %._crit_edge157.thread.thread ], [ %.196.lcssa197, %bb.p ], [ %i.co, %bb.q ]
  %.4.ph = phi ptr [ %.184.ptr.le.le, %._crit_edge157.thread.thread ], [ %.184.ptr.le.le, %bb.p ], [ %i.cn, %bb.q ]
  store i32 %.494, ptr %3, align 4, !tbaa !10
  store ptr %.4.ph, ptr %0, align 8, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d, %bb.b
  %.499.ph.sink = phi i32 [ %.499.ph, %bb.r ], [ 1, %bb.d ], [ 3, %bb.b ]
  store i32 %.499.ph.sink, ptr %1, align 4, !tbaa !10
  %i.cp = lshr i64 %i.c, 63
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  ret i32 %i.cq
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_sprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbsp__clamp_callback(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %i.d = add nsw i32 %i.c, %2
  store i32 %i.d, ptr %i.b, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.f) ; 3 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !27     ; 8 uses
  %.not34 = icmp eq ptr %0, %i.g
  %.pre36 = sext i32 %spec.select to i64          ; 3 uses
  br i1 %.not34, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %.pre36
  %i.j = add i64 %i.a, %.pre36
  %i.k = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.k)
  %i.l = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  %i.m = sub i64 %i.a, %i.h
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.l, 24
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 %n.vec
  %i.p = getelementptr i8, ptr %i.g, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load42 = load <16 x i8>, ptr %i.q, align 1, !tbaa !9
  %i.r = getelementptr i8, ptr %next.gep41, i64 16
  store <16 x i8> %wide.load, ptr %next.gep41, align 1, !tbaa !9
  store <16 x i8> %wide.load42, ptr %i.r, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.l, -8                     ; 4 uses
  %i.t = getelementptr i8, ptr %0, i64 %n.vec44
  %i.u = getelementptr i8, ptr %i.g, i64 %n.vec44
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %0, i64 %index45
  %next.gep47 = getelementptr i8, ptr %i.g, i64 %index45
  %wide.load48 = load <8 x i8>, ptr %next.gep46, align 1, !tbaa !9
  store <8 x i8> %wide.load48, ptr %next.gep47, align 1, !tbaa !9
  %index.next49 = add nuw i64 %index45, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !80

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.l, %n.vec44
  br i1 %cmp.n50, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.ph = phi ptr [ %0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.g, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.026 = phi ptr [ %i.w, %vec.epilog.scalar.ph ], [ %.026.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.y, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %i.x = load i8, ptr %.026, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.x, ptr %.0, align 1, !tbaa !9
  %i.z = icmp ult ptr %i.w, %i.i
  br i1 %i.z, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !81

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %1, align 8, !tbaa !27
  %.pre35 = load i32, ptr %i.e, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit
  %i.aa = phi i32 [ %.pre35, %.loopexit.loopexit ], [ %i.f, %bb.b ]
  %i.ab = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.g, %bb.b ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.pre36
  store ptr %i.ac, ptr %1, align 8, !tbaa !27
  %i.ad = sub nsw i32 %i.aa, %spec.select         ; 2 uses
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  %i.ae = phi i32 [ %i.ad, %.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp samesign ugt i32 %i.ae, 511
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.028 = phi ptr [ %i.ag, %bb.d ], [ %i.ai, %bb.f ], [ %i.aj, %bb.g ]
  ret ptr %.028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define nonnull ptr @stbsp__count_clamp_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = add nsw i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.stbsp__context, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__count_clamp_callback, ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !25
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %.not34.i = icmp eq ptr %0, null
  %.pre36.i = sext i32 %1 to i64
  tail call void @llvm.assume(i1 %.not34.i)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i
  store ptr %i.h, ptr %4, align 8, !tbaa !27
  store i32 0, ptr %i.f, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %stbsp__clamp_callback.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 511
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %spec.select17 = select i1 %i.k, ptr %0, ptr %i.l
  br label %stbsp__clamp_callback.exit

stbsp__clamp_callback.exit:                       ; preds = %bb.f, %bb.e
  %.028.i = phi ptr [ %i.j, %bb.e ], [ %spec.select17, %bb.f ]
  %i.m = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__clamp_callback, ptr noundef nonnull %4, ptr noundef %.028.i, ptr noundef %2, ptr noundef %3) ; 0 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !27
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %1, -1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = sext i32 %spec.select to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %stbsp__clamp_callback.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_snprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.stbsp__context, align 8     ; 14 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__count_clamp_callback, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  br label %stbsp_vsnprintf.exit

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !25
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %.not34.i.i = icmp eq ptr %0, null
  %.pre36.i.i = sext i32 %1 to i64
  call void @llvm.assume(i1 %.not34.i.i)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !27
  store i32 0, ptr %i.f, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %stbsp__clamp_callback.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp samesign ugt i32 %1, 511
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select17.i = select i1 %i.j, ptr %0, ptr %i.k
  br label %stbsp__clamp_callback.exit.i

stbsp__clamp_callback.exit.i:                     ; preds = %bb.f, %bb.e
  %.028.i.i = phi ptr [ %i.i, %bb.e ], [ %spec.select17.i, %bb.f ]
  %i.l = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__clamp_callback, ptr noundef nonnull %3, ptr noundef %.028.i.i, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !27
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = add nsw i32 %1, -1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.r)
  %i.s = sext i32 %spec.select.i to i64
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !9
  br label %stbsp_vsnprintf.exit

stbsp_vsnprintf.exit:                             ; preds = %bb.b, %stbsp__clamp_callback.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_vsprintf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbsp__raise_to_power10(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %or.cond = icmp ult i32 %3, 23
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %3 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @stbsp__bot, i64 %i.a
  %i.c = load double, ptr %i.b, align 8           ; 3 uses
  %i.d = fmul double %2, %i.c                     ; 2 uses
  %i.e = bitcast double %2 to i64
  %i.f = and i64 %i.e, -134217728
  %i.g = bitcast i64 %i.f to double               ; 3 uses
  %i.h = bitcast double %i.c to i64
  %i.i = and i64 %i.h, -134217728
  %i.j = bitcast i64 %i.i to double               ; 3 uses
  %i.k = fsub double %2, %i.g                     ; 2 uses
  %i.l = fsub double %i.c, %i.j                   ; 2 uses
  %i.m = fneg double %i.d
  %i.n = tail call double @llvm.fmuladd.f64(double %i.g, double %i.j, double %i.m)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.g, double %i.l, double %i.n)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.j, double %i.o)
  %i.q = tail call double @llvm.fmuladd.f64(double %i.k, double %i.l, double %i.p)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %3, 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.s = mul nuw nsw i32 %spec.select, 713
  %i.t = lshr i32 %i.s, 14                        ; 3 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.t, i32 13) ; 3 uses
  %.neg = mul nsw i32 %spec.store.select, -23
  %i.u = add nsw i32 %.neg, %spec.select          ; 5 uses
  %.not235 = icmp eq i32 %i.u, 0                  ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %.not235, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.u, -1
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr @stbsp__negbot, i64 %i.w
  %i.y = load double, ptr %i.x, align 8           ; 3 uses
  %i.z = fmul double %2, %i.y                     ; 2 uses
  %i.aa = bitcast double %2 to i64
  %i.ab = and i64 %i.aa, -134217728
  %i.ac = bitcast i64 %i.ab to double             ; 3 uses
  %i.ad = bitcast double %i.y to i64
  %i.ae = and i64 %i.ad, -134217728
  %i.af = bitcast i64 %i.ae to double             ; 3 uses
  %i.ag = fsub double %2, %i.ac                   ; 2 uses
  %i.ah = fsub double %i.y, %i.af                 ; 2 uses
  %i.ai = fneg double %i.z
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.af, double %i.ai)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ah, double %i.aj)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ah, double %i.al)
  %i.an = getelementptr inbounds [8 x i8], ptr @stbsp__negboterr, i64 %i.w
  %i.ao = load double, ptr %i.an, align 8, !tbaa !16
  %i.ap = tail call double @llvm.fmuladd.f64(double %2, double %i.ao, double %i.am)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi double [ %i.ap, %bb.e ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %i.aq = phi double [ %i.z, %bb.e ], [ %2, %bb.d ] ; 3 uses
  %.not236 = icmp eq i32 %i.t, 0
  br i1 %.not236, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = fadd double %.0, %i.aq                  ; 5 uses
  %i.as = add nsw i32 %spec.store.select, -1
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @stbsp__negtop, i64 %i.at
  %i.av = load double, ptr %i.au, align 8         ; 4 uses
  %i.aw = bitcast double %i.ar to i64
  %i.ax = and i64 %i.aw, -134217728
  %i.ay = bitcast i64 %i.ax to double             ; 3 uses
  %i.az = bitcast double %i.av to i64
  %i.ba = and i64 %i.az, -134217728
  %i.bb = bitcast i64 %i.ba to double             ; 3 uses
  %i.bc = fsub double %i.ar, %i.aq
  %i.bd = fmul double %i.ar, %i.av                ; 2 uses
  %i.be = fsub double %i.av, %i.bb                ; 2 uses
  %i.bf = fneg double %i.bd
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @stbsp__negtoperr, i64 %i.at
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !16
  %i.bi = fsub double %.0, %i.bc
  %i.bj = fsub double %i.ar, %i.ay                ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.bb, double %i.bf)
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.be, double %i.bk)
  %i.bm = fmul double %i.bi, %i.av
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bb, double %i.bl)
  %i.bo = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.ar, i64 1
  %i.bq = insertelement <2 x double> poison, double %i.be, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bh, i64 1
  %i.bs = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bm, i64 1
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.br, <2 x double> %i.bt)
  %i.bv = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bu)
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  br i1 %.not235, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.store.select2 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 22) ; 2 uses
  %i.bw = sext i32 %spec.store.select2 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr @stbsp__bot, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8         ; 3 uses
  %i.bz = fmul double %2, %i.by                   ; 4 uses
  %i.ca = bitcast double %2 to i64
  %i.cb = and i64 %i.ca, -134217728
  %i.cc = bitcast i64 %i.cb to double             ; 3 uses
  %i.cd = bitcast double %i.by to i64
  %i.ce = and i64 %i.cd, -134217728
  %i.cf = bitcast i64 %i.ce to double             ; 3 uses
  %i.cg = fsub double %2, %i.cc                   ; 2 uses
  %i.ch = fsub double %i.by, %i.cf                ; 2 uses
  %i.ci = fneg double %i.bz
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cf, double %i.ci)
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ch, double %i.cj)
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cf, double %i.ck)
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ch, double %i.cl) ; 3 uses
  %.not233 = icmp slt i32 %i.u, 23
  br i1 %.not233, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = sub nsw i32 %i.u, %spec.store.select2
  %i.co = fadd double %i.bz, %i.cm                ; 4 uses
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @stbsp__bot, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8         ; 4 uses
  %i.cs = bitcast double %i.co to i64
  %i.ct = and i64 %i.cs, -134217728
  %i.cu = bitcast i64 %i.ct to double             ; 3 uses
  %i.cv = bitcast double %i.cr to i64
  %i.cw = and i64 %i.cv, -134217728
  %i.cx = bitcast i64 %i.cw to double             ; 3 uses
  %i.cy = fsub double %i.co, %i.bz
  %i.cz = fsub double %i.cm, %i.cy
  %i.da = fmul double %i.co, %i.cr                ; 2 uses
  %i.db = fsub double %i.co, %i.cu                ; 2 uses
  %i.dc = fsub double %i.cr, %i.cx                ; 2 uses
  %i.dd = fneg double %i.da
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cx, double %i.dd)
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.dc, double %i.de)
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.db, double %i.cx, double %i.df)
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dc, double %i.dg)
  %i.di = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cz, double %i.dh)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.1 = phi double [ %i.di, %bb.j ], [ %i.cm, %bb.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %i.dj = phi double [ %i.da, %bb.j ], [ %i.bz, %bb.i ], [ %2, %bb.h ] ; 3 uses
  %.not234 = icmp eq i32 %i.t, 0
end_hunk_0
