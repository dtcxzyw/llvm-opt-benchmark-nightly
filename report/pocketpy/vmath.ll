Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/vmath?download=true
inline.NumInlined: 309
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0_@mat3x3__new__:bb.a
  ret i1 %.4
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3__repr__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @py_touserdata(ptr noundef %1) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = load <4 x float>, ptr %i.c, align 4, !tbaa !13
  %i.e = fpext <4 x float> %i.d to <4 x double>   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load <4 x float>, ptr %i.f, align 4, !tbaa !13
  %i.h = fpext <4 x float> %i.g to <4 x double>   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !13
  %i.k = fpext float %i.j to double
  %i.l = extractelement <4 x double> %i.e, i64 0
  %i.m = extractelement <4 x double> %i.e, i64 1
  %i.n = extractelement <4 x double> %i.e, i64 2
  %i.o = extractelement <4 x double> %i.e, i64 3
  %i.p = extractelement <4 x double> %i.h, i64 0
  %i.q = extractelement <4 x double> %i.h, i64 1
  %i.r = extractelement <4 x double> %i.h, i64 2
  %i.s = extractelement <4 x double> %i.h, i64 3
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.79, double noundef %i.l, double noundef %i.m, double noundef %i.n, double noundef %i.o, double noundef %i.p, double noundef %i.q, double noundef %i.r, double noundef %i.s, double noundef %i.k) #16
  %i.u = tail call ptr (...) @py_retval() #16
  call void @py_newstrv(ptr noundef %i.u, ptr nonnull %i.a, i32 %i.t) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3__getitem__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 9) #16
  br i1 %i.c, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @py_touserdata(ptr noundef nonnull %1) #16
  %i.e = tail call i32 @py_tuple_len(ptr noundef nonnull %i.b) #16
  %.not19 = icmp eq i32 %i.e, 2
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.80) #16
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.g = tail call ptr @py_tuple_getitem(ptr noundef nonnull %i.b, i32 noundef 0) #16 ; 2 uses
  %i.h = tail call ptr @py_tuple_getitem(ptr noundef nonnull %i.b, i32 noundef 1) #16 ; 2 uses
  %i.i = tail call zeroext i1 @py_checktype(ptr noundef %i.g, i16 noundef signext 3) #16
  br i1 %i.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.j = tail call zeroext i1 @py_checktype(ptr noundef %i.h, i16 noundef signext 3) #16
  br i1 %i.j, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %or.cond = icmp ugt i64 %i.l, 2
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %or.cond20 = icmp ugt i64 %i.n, 2
  br i1 %or.cond20, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.81) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.p = tail call ptr (...) @py_retval() #16
  %i.q = load i64, ptr %i.k, align 8, !tbaa !13
  %i.r = getelementptr inbounds [12 x i8], ptr %i.d, i64 %i.q
  %i.s = load i64, ptr %i.m, align 8, !tbaa !13
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  %i.v = fpext float %i.u to double
  tail call void @py_newfloat(ptr noundef %i.p, double noundef %i.v) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.k, %bb.j, %bb.c, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ %i.o, %bb.j ], [ true, %bb.k ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3__setitem__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 3, i32 noundef %0) #16
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 9) #16
  br i1 %i.d, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @py_touserdata(ptr noundef nonnull %1) #16
  %i.f = tail call i32 @py_tuple_len(ptr noundef nonnull %i.c) #16
  %.not20 = icmp eq i32 %i.f, 2
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.80) #16
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.h = tail call ptr @py_tuple_getitem(ptr noundef nonnull %i.c, i32 noundef 0) #16 ; 2 uses
  %i.i = tail call ptr @py_tuple_getitem(ptr noundef nonnull %i.c, i32 noundef 1) #16 ; 2 uses
  %i.j = tail call zeroext i1 @py_checktype(ptr noundef %i.h, i16 noundef signext 3) #16
  br i1 %i.j, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.k = tail call zeroext i1 @py_checktype(ptr noundef %i.i, i16 noundef signext 3) #16
  br i1 %i.k, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = call zeroext i1 @py_castfloat(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a) #16
  br i1 %i.m, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %or.cond = icmp ugt i64 %i.o, 2
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %or.cond21 = icmp ugt i64 %i.q, 2
  br i1 %or.cond21, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.81) #16
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.s = load double, ptr %i.a, align 8, !tbaa !19
  %i.t = fptrunc double %i.s to float
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.o
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.q
  store float %i.t, ptr %i.v, align 4, !tbaa !13
  %i.w = call ptr (...) @py_retval() #16
  call void @py_newnone(ptr noundef %i.w) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.k
  %.0 = phi i1 [ %i.r, %bb.k ], [ true, %bb.l ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.m, %bb.c, %bb.b
  %.3 = phi i1 [ %i.b, %bb.b ], [ false, %bb.c ], [ %i.g, %bb.e ], [ %.0, %bb.m ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3__matmul__(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #16 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11
  switch i16 %i.d, label %bb.f [
    i16 77, label %bb.d
    i16 73, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @py_touserdata(ptr noundef nonnull %i.c) #16 ; 7 uses
  %i.f = tail call ptr (...) @py_retval() #16
  %i.g = tail call ptr @py_newobject(ptr noundef %i.f, i16 noundef signext 77, i32 noundef 0, i32 noundef 36) #16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = load <2 x float>, ptr %i.b, align 4, !tbaa !13, !noalias !30 ; 2 uses
  %i.q = load <4 x float>, ptr %i.e, align 4, !tbaa !13, !noalias !30 ; 3 uses
  %i.r = load <2 x float>, ptr %i.k, align 4, !tbaa !13, !noalias !30
  %i.s = load float, ptr %i.n, align 4, !tbaa !13, !noalias !30 ; 2 uses
  %i.t = load <3 x float>, ptr %i.i, align 4, !tbaa !13, !noalias !30 ; 3 uses
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.v = load float, ptr %i.l, align 4, !tbaa !13, !noalias !30
  %i.w = load <4 x float>, ptr %i.h, align 4, !tbaa !13, !noalias !30 ; 3 uses
  %i.x = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.y = shufflevector <4 x float> %i.q, <4 x float> %i.x, <4 x i32> <i32 3, i32 1, i32 5, i32 0>
  %i.z = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.aa = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 0, i32 6>
  %i.ac = fmul <4 x float> %i.y, %i.ab
  %i.ad = shufflevector <4 x float> %i.q, <4 x float> %i.x, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ae = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 0, i32 6>
  %i.ag = fmul <4 x float> %i.ad, %i.af
  %i.ah = fadd <4 x float> %i.ac, %i.ag
  %i.ai = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aj = fmul <4 x float> %i.u, %i.ai
  %i.ak = fadd <4 x float> %i.ah, %i.aj
  store <4 x float> %i.ak, ptr %i.g, align 4, !tbaa !13, !alias.scope !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.am = extractelement <3 x float> %i.t, i64 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aq = load <3 x float>, ptr %i.j, align 4, !tbaa !13, !noalias !30
  %i.ar = shufflevector <3 x float> %i.aq, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.as = load float, ptr %i.m, align 4, !tbaa !13, !noalias !30
  %i.at = load <4 x float>, ptr %i.o, align 4, !tbaa !13, !noalias !30 ; 3 uses
  %i.au = load float, ptr %i.an, align 4, !tbaa !13, !noalias !30
  %i.av = load <2 x float>, ptr %i.ao, align 4, !tbaa !13, !noalias !30 ; 2 uses
  %i.aw = load float, ptr %i.ap, align 4, !tbaa !13, !noalias !30
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.ay = shufflevector <4 x float> %i.at, <4 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.az = fmul <4 x float> %i.ar, %i.ay
  %i.ba = shufflevector <4 x float> %i.x, <4 x float> %i.q, <4 x i32> <i32 0, i32 poison, i32 4, i32 0>
  %i.bb = insertelement <4 x float> %i.ba, float %i.s, i64 1
  %i.bc = shufflevector <4 x float> %i.at, <4 x float> %i.ax, <4 x i32> <i32 1, i32 1, i32 3, i32 4>
  %i.bd = fmul <4 x float> %i.bb, %i.bc
  %i.be = fadd <4 x float> %i.az, %i.bd
  %i.bf = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.bg = insertelement <4 x float> poison, float %i.v, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> %i.bf, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bj = shufflevector <4 x float> %i.at, <4 x float> %i.ax, <4 x i32> <i32 2, i32 2, i32 5, i32 5>
  %i.bk = fmul <4 x float> %i.bi, %i.bj
  %i.bl = fadd <4 x float> %i.be, %i.bk
  store <4 x float> %i.bl, ptr %i.al, align 4, !tbaa !13, !alias.scope !30
  %i.bm = fmul float %i.as, %i.au
  %i.bn = extractelement <2 x float> %i.av, i64 0
  %i.bo = fmul float %i.s, %i.bn
  %i.bp = fadd float %i.bm, %i.bo
  %i.bq = fmul float %i.am, %i.aw
  %i.br = fadd float %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store float %i.br, ptr %i.bs, align 4, !tbaa !13, !alias.scope !30
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.bt, align 8 ; 4 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13 ; 2 uses
  %.sroa.05.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0
  %.sroa.05.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bv = load <4 x float>, ptr %i.b, align 4, !tbaa !13 ; 3 uses
  %i.bw = shufflevector <2 x float> %.sroa.01.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bx = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.by = fmul <2 x float> %i.bw, %i.bx
  %i.bz = load <2 x float>, ptr %i.bu, align 4, !tbaa !13 ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.cc = fmul <2 x float> %.sroa.01.0.copyload.i, %i.cb
  %i.cd = fadd <2 x float> %i.by, %i.cc
  %i.ce = insertelement <2 x float> poison, float %.sroa.22.0.copyload.i, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.ci = fmul <2 x float> %i.cf, %i.ch
  %i.cj = fadd <2 x float> %i.cd, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %2 = load float, ptr %i.ck, align 4, !tbaa !13
  %3 = fmul float %.sroa.05.0.vec.extract, %2
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %5 = load float, ptr %4, align 4, !tbaa !13
  %6 = fmul float %.sroa.05.4.vec.extract, %5
  %7 = fadd float %3, %6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !13
  %i.cn = fmul float %.sroa.22.0.copyload.i, %i.cm
  %i.co = fadd float %7, %i.cn
  %i.cp = tail call ptr (...) @py_retval() #16    ; 4 uses
  store i16 73, ptr %i.cp, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i8 0, ptr %i.cq, align 2, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store <2 x float> %i.cj, ptr %i.cr, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store float %i.co, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.cs = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.cs) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3__invert__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #16
  %i.c = tail call ptr (...) @py_retval() #16
  %i.d = tail call ptr @py_newobject(ptr noundef %i.c, i16 noundef signext 77, i32 noundef 0, i32 noundef 36) #16
  %i.e = tail call fastcc zeroext i1 @inverse(ptr noundef %i.b, ptr noundef %i.d)
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 50, ptr noundef nonnull @.str.82) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %i.f, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3__eq__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not15 = icmp eq i16 %i.c, 77
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.e = tail call ptr @py_touserdata(ptr noundef nonnull %1) #16 ; 9 uses
  %i.f = tail call ptr @py_touserdata(ptr noundef nonnull %i.b) #16 ; 9 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !13
  %i.h = load float, ptr %i.f, align 4, !tbaa !13
  %i.i = fsub float %i.g, %i.h
  %i.j = fpext float %i.i to double
  %i.k = tail call double @dmath_fabs(double noundef %i.j) #16
  %i.l = fcmp olt double %i.k, 1.000000e-04
  br i1 %i.l, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !13
  %i.q = fsub float %i.n, %i.p
  %i.r = fpext float %i.q to double
  %i.s = tail call double @dmath_fabs(double noundef %i.r) #16
  %i.t = fcmp olt double %i.s, 1.000000e-04
  br i1 %i.t, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !13
  %i.y = fsub float %i.v, %i.x
  %i.z = fpext float %i.y to double
  %i.aa = tail call double @dmath_fabs(double noundef %i.z) #16
  %i.ab = fcmp olt double %i.aa, 1.000000e-04
  br i1 %i.ab, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !13
  %i.ag = fsub float %i.ad, %i.af
  %i.ah = fpext float %i.ag to double
  %i.ai = tail call double @dmath_fabs(double noundef %i.ah) #16
  %i.aj = fcmp olt double %i.ai, 1.000000e-04
  br i1 %i.aj, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.an = load float, ptr %i.am, align 4, !tbaa !13
  %i.ao = fsub float %i.al, %i.an
  %i.ap = fpext float %i.ao to double
  %i.aq = tail call double @dmath_fabs(double noundef %i.ap) #16
  %i.ar = fcmp olt double %i.aq, 1.000000e-04
  br i1 %i.ar, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.av = load float, ptr %i.au, align 4, !tbaa !13
  %i.aw = fsub float %i.at, %i.av
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call double @dmath_fabs(double noundef %i.ax) #16
  %i.az = fcmp olt double %i.ay, 1.000000e-04
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !13
  %i.be = fsub float %i.bb, %i.bd
  %i.bf = fpext float %i.be to double
  %i.bg = tail call double @dmath_fabs(double noundef %i.bf) #16
  %i.bh = fcmp olt double %i.bg, 1.000000e-04
  br i1 %i.bh, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !13
  %i.bm = fsub float %i.bj, %i.bl
  %i.bn = fpext float %i.bm to double
  %i.bo = tail call double @dmath_fabs(double noundef %i.bn) #16
  %i.bp = fcmp olt double %i.bo, 1.000000e-04
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.br = load float, ptr %i.bq, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !13
  %i.bu = fsub float %i.br, %i.bt
  %i.bv = fpext float %i.bu to double
  %i.bw = tail call double @dmath_fabs(double noundef %i.bv) #16
  %i.bx = fcmp olt double %i.bw, 1.000000e-04
  br i1 %i.bx, label %.critedge, label %bb.n

.critedge:                                        ; preds = %bb.m
  %i.by = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.by, i1 noundef zeroext true) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bz = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.bz, i1 noundef zeroext false) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge, %bb.d, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ true, %bb.n ], [ true, %.critedge ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @mat3x3__ne__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = tail call zeroext i1 @mat3x3__eq__(i32 noundef %0, ptr noundef %1) ; 0 uses
  %i.b = tail call ptr (...) @py_retval() #16     ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %i.d = icmp eq i16 %i.c, 34
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !13, !range !16, !noundef !17
  %i.g = xor i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 true
}
end_hunk_0
begin_hunk_1_@color32_with_g:bb.a
bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16 ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 255
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.87) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0.insert.ext = trunc nuw nsw i64 %i.e to i32
  %i.g = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 8
  %i.h = and i32 %.sroa.0.0.copyload.i, -65281
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %i.h
  store i16 78, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.j, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_with_b(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #16
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16 ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 255
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.87) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0.insert.ext = trunc nuw nsw i64 %i.e to i32
  %i.g = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 16
  %i.h = and i32 %.sroa.0.0.copyload.i, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %i.h
  store i16 78, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.j, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_with_a(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #16
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16 ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 255
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.87) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0.insert.ext = trunc nuw nsw i64 %i.e to i32
  %i.g = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 24
  %.sroa.0.0.insert.ext = and i32 %.sroa.0.0.copyload.i, 16777215
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i16 78, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 0, ptr %i.h, align 2, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.i, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_from_hex_STATIC(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %2 = alloca %union.c11_color32, align 4         ; 9 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 6) #16
  br i1 %i.b, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = tail call { ptr, i32 } @py_tosv(ptr noundef %1) #16 ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i32 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.f = icmp eq i32 %i.e, 7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.d, ptr noundef nonnull @.str.89, ptr noundef nonnull %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #16
  %.not9 = icmp eq i32 %i.i, 3
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.90) #16
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 -1, ptr %i.k, align 1, !tbaa !13
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.m = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.d, ptr noundef nonnull @.str.91, ptr noundef nonnull %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.l) #16
  %.not8 = icmp eq i32 %i.m, 4
  br i1 %.not8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.90) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.o = call ptr (...) @py_retval() #16          ; 3 uses
  %i.p = load i32, ptr %2, align 4
  store i16 78, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.q, align 2, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.p, ptr %i.r, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f
  %.0 = phi i1 [ %i.j, %bb.f ], [ true, %bb.j ], [ %i.n, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %.0, %bb.k ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_from_vec3_STATIC(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 73) #16
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.c, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.d = fmul float %.sroa.22.0.copyload.i, 2.550000e+02
  %i.e = fptoui float %i.d to i8
  %2 = tail call ptr (...) @py_retval() #16       ; 3 uses
  %.sroa.5.0.insert.ext = zext i8 %i.e to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %3 = fmul <2 x float> %.sroa.01.0.copyload.i, splat (float 2.550000e+02)
  %4 = fptoui <2 x float> %3 to <2 x i8>          ; 2 uses
  %5 = extractelement <2 x i8> %4, i64 1
  %i.f = zext i8 %5 to i32
  %.sroa.4.0.insert.shift.a = shl nuw nsw i32 %i.f, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift.a
  %6 = extractelement <2 x i8> %4, i64 0
  %i.g = zext i8 %6 to i32
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.g
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, -16777216
  store i16 78, ptr %2, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.h, align 2, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_from_vec3i_STATIC(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 75) #16
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.d = trunc i64 %.sroa.01.0.copyload.i to i32
  %i.e = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.5.0.insert.ext = shl i32 %.sroa.22.0.copyload.i, 16
  %sh.diff = lshr i64 %.sroa.01.0.copyload.i, 24
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %.sroa.4.0.insert.shift = and i32 %tr.sh.diff, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.5.0.insert.ext
  %.sroa.0.0.insert.ext = and i32 %i.d, 255
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or i32 %.sroa.4.0.insert.insert, -16777216
  store i16 78, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 0, ptr %i.f, align 2, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.g, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_to_hex(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.7.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = icmp eq i32 %.sroa.9.0.extract.shift, 255
  %i.e = and i32 %.sroa.0.0.copyload.i, 255       ; 2 uses
  %i.f = and i32 %.sroa.5.0.extract.shift, 255    ; 2 uses
  %i.g = and i32 %.sroa.7.0.extract.shift, 255    ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.92, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.93, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %.sroa.9.0.extract.shift) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.09 = phi i32 [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  %i.j = tail call ptr (...) @py_retval() #16
  call void @py_newstrv(ptr noundef %i.j, ptr nonnull %i.a, i32 %.09) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_to_vec3(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  %i.c = icmp eq i32 %.sroa.12.0.extract.shift, 255
  %i.d = bitcast i32 %.sroa.0.0.copyload.i to <4 x i8>
  %i.e = shufflevector <4 x i8> %i.d, <4 x i8> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br i1 %i.c, label %c11_color32_premult.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0.extract.trunc = trunc nuw i32 %.sroa.12.0.extract.shift to i8
  %i.f = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.g = fdiv float %i.f, 2.550000e+02            ; 2 uses
  %i.h = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.i = fmul float %i.g, %i.h
  %i.j = fptoui float %i.i to i8
  %i.k = uitofp <2 x i8> %i.e to <2 x float>
  %i.l = insertelement <2 x float> poison, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %i.k
  %i.o = fptoui <2 x float> %i.n to <2 x i8>
  br label %c11_color32_premult.exit

c11_color32_premult.exit:                         ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.extract.trunc, %bb.c ], [ %i.j, %bb.d ]
  %i.p = phi <2 x i8> [ %i.e, %bb.c ], [ %i.o, %bb.d ]
  %i.q = uitofp i8 %.sroa.0.0 to float
  %i.r = fdiv float %i.q, 2.550000e+02
  %.sroa.01.0.vec.insert = insertelement <2 x float> poison, float %i.r, i64 0
  %i.s = uitofp <2 x i8> %i.p to <2 x float>
  %i.t = fdiv <2 x float> %i.s, splat (float 2.550000e+02) ; 2 uses
  %i.u = shufflevector <2 x float> %.sroa.01.0.vec.insert, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.v = tail call ptr (...) @py_retval() #16     ; 4 uses
  store i16 73, ptr %i.v, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 0, ptr %i.w, align 2, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store <2 x float> %i.u, ptr %i.x, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = extractelement <2 x float> %i.t, i64 1
  store float %i.y, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %c11_color32_premult.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %c11_color32_premult.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_to_vec3i(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13 ; 4 uses
  %i.c = bitcast i32 %.sroa.0.0.copyload.i to <4 x i8>
  %i.d = shufflevector <4 x i8> %i.c, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  %i.e = icmp eq i32 %.sroa.12.0.extract.shift, 255
  br i1 %i.e, label %c11_color32_premult.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0.extract.trunc = trunc nuw i32 %.sroa.12.0.extract.shift to i8
  %i.f = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.g = fdiv float %i.f, 2.550000e+02            ; 2 uses
  %i.h = bitcast i32 %.sroa.0.0.copyload.i to <4 x i8>
  %i.i = shufflevector <4 x i8> %i.h, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.j = uitofp <2 x i8> %i.i to <2 x float>
  %i.k = insertelement <2 x float> poison, float %i.g, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.l, %i.j
  %i.n = fptoui <2 x float> %i.m to <2 x i8>
  %i.o = uitofp i8 %.sroa.9.0.extract.trunc to float
  %i.p = fmul float %i.g, %i.o
  %i.q = fptoui float %i.p to i8
  br label %c11_color32_premult.exit

c11_color32_premult.exit:                         ; preds = %bb.c, %bb.d
  %.sroa.9.0 = phi i8 [ %.sroa.9.0.extract.trunc, %bb.c ], [ %i.q, %bb.d ]
  %i.r = phi <2 x i8> [ %i.d, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.s = extractelement <2 x i8> %i.r, i64 1
  %i.t = zext i8 %i.s to i64
  %.sroa.01.4.insert.shift = shl nuw nsw i64 %i.t, 32
  %i.u = extractelement <2 x i8> %i.r, i64 0
  %i.v = zext i8 %i.u to i64
  %.sroa.01.4.insert.insert = or disjoint i64 %.sroa.01.4.insert.shift, %i.v
  %i.w = zext i8 %.sroa.9.0 to i32
  %i.x = tail call ptr (...) @py_retval() #16     ; 4 uses
end_hunk_1
begin_hunk_2_@color32_ansi_bg:bb.a
  %i.e = fdiv float %i.d, 2.550000e+02            ; 3 uses
  %i.f = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.g = fmul float %i.e, %i.f
  %i.h = fptoui float %i.g to i8
  %i.i = uitofp i8 %.sroa.6.0.extract.trunc to float
  %i.j = fmul float %i.e, %i.i
  %i.k = fptoui float %i.j to i8
  %i.l = uitofp i8 %.sroa.9.0.extract.trunc to float
  %i.m = fmul float %i.e, %i.l
  %i.n = fptoui float %i.m to i8
  br label %c11_color32_premult.exit

c11_color32_premult.exit:                         ; preds = %bb.c, %bb.d
  %.sroa.9.0 = phi i8 [ %.sroa.9.0.extract.trunc, %bb.c ], [ %i.n, %bb.d ]
  %.sroa.6.0 = phi i8 [ %.sroa.6.0.extract.trunc, %bb.c ], [ %i.k, %bb.d ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.extract.trunc, %bb.c ], [ %i.h, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.o, i16 noundef signext 6) #16
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %c11_color32_premult.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.q = tail call { ptr, i32 } @py_tosv(ptr noundef nonnull %i.o) #16 ; 2 uses
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  store ptr %i.r, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = extractvalue { ptr, i32 } %i.q, 1
  store i32 %i.t, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @c11_sbuf__ctor(ptr noundef nonnull %3) #16
  %i.u = zext i8 %.sroa.0.0 to i32
  %i.v = zext i8 %.sroa.6.0 to i32
  %i.w = zext i8 %.sroa.9.0 to i32
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.95, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull byval(%struct.c11_sv) align 8 %2) #16
  %i.x = call ptr (...) @py_retval() #16
  call void @c11_sbuf__py_submit(ptr noundef nonnull %3, ptr noundef %i.x) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %c11_color32_premult.exit, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ false, %c11_color32_premult.exit ], [ true, %bb.e ]
  ret i1 %.1
}

declare void @py_bindfunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vmath_rgb(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 3, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 3) #16
  br i1 %i.b, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #16
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.e, i16 noundef signext 3) #16
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i64 @py_toint(ptr noundef nonnull %1) #16
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call i64 @py_toint(ptr noundef nonnull %i.e) #16
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.5.0.insert.ext = shl i32 %i.l, 16
  %.sroa.4.0.insert.ext = shl i32 %i.j, 8
  %.sroa.4.0.insert.shift = and i32 %.sroa.4.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = and i32 %i.h, 255
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or i32 %.sroa.4.0.insert.insert, -16777216
  store i16 78, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 0, ptr %i.n, align 2, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.o, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vmath_rgba(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 4, i32 noundef %0) #16
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 3) #16
  br i1 %i.b, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #16
  br i1 %i.d, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.e, i16 noundef signext 3) #16
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.g, i16 noundef signext 4) #16
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i64 @py_toint(ptr noundef nonnull %1) #16
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call i64 @py_toint(ptr noundef nonnull %i.e) #16
  %i.n = trunc i64 %i.m to i32
  %i.o = tail call double @py_tofloat(ptr noundef nonnull %i.g) #16
  %i.p = fmul double %i.o, 2.550000e+02
  %i.q = fptoui double %i.p to i8
  %i.r = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.6.0.insert.ext = zext i8 %i.q to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.5.0.insert.ext = shl i32 %i.n, 16
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 16711680
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.4.0.insert.ext = shl i32 %i.l, 8
  %.sroa.4.0.insert.shift = and i32 %.sroa.4.0.insert.ext, 65280
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = and i32 %i.j, 255
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  store i16 78, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 0, ptr %i.s, align 2, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.t, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.g, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_alpha_blend_STATIC(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 78) #16
  br i1 %i.b, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 33) #16
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr (...) @py_retval() #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !43
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 78) #16
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !13 ; 4 uses
  %.sroa.412.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.513.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.614.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.h, align 8, !tbaa !13 ; 4 uses
  %.sroa.48.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i25, 8
  %.sroa.59.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i25, 16
  %.sroa.610.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i25, 24
  %i.i = uitofp nneg i32 %.sroa.614.0.extract.shift to float ; 2 uses
  %i.j = fdiv float %i.i, 2.550000e+02            ; 3 uses
  %2 = fsub float 1.000000e+00, %i.j              ; 3 uses
  %3 = insertelement <4 x i32> poison, i32 %.sroa.0.0.copyload.i, i64 0
  %4 = insertelement <4 x i32> %3, i32 %.sroa.0.0.copyload.i25, i64 1
  %5 = insertelement <4 x i32> %4, i32 %.sroa.412.0.extract.shift, i64 2
  %6 = insertelement <4 x i32> %5, i32 %.sroa.48.0.extract.shift, i64 3
  %7 = and <4 x i32> %6, splat (i32 255)
  %8 = uitofp nneg <4 x i32> %7 to <4 x float>
  %9 = insertelement <4 x float> poison, float %i.j, i64 0
  %10 = insertelement <4 x float> %9, float %2, i64 1
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %12 = fmul <4 x float> %11, %8                  ; 2 uses
  %13 = and i32 %.sroa.513.0.extract.shift, 255
  %14 = uitofp nneg i32 %13 to float
  %i.k = and i32 %.sroa.59.0.extract.shift, 255
  %i.l = uitofp nneg i32 %i.k to float
  %15 = uitofp nneg i32 %.sroa.610.0.extract.shift to float
  %16 = tail call ptr (...) @py_retval() #16      ; 3 uses
  %17 = fmul float %i.j, %14
  %18 = fmul float %2, %i.l
  %19 = fmul float %2, %15
  %20 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 0>
  %i.m = insertelement <4 x float> %20, float %19, i64 0
  %i.n = insertelement <4 x float> %i.m, float %17, i64 1
  %21 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.o = insertelement <4 x float> %21, float %i.i, i64 0
  %i.p = insertelement <4 x float> %i.o, float %18, i64 1
  %i.q = fadd <4 x float> %i.n, %i.p
  %22 = fptoui <4 x float> %i.q to <4 x i8>       ; 4 uses
  %23 = extractelement <4 x i8> %22, i64 0
  %24 = zext i8 %23 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %24, 24
  %25 = extractelement <4 x i8> %22, i64 1
  %26 = zext i8 %25 to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %26, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.5.0.insert.shift
  %27 = extractelement <4 x i8> %22, i64 2
  %28 = zext i8 %27 to i32
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %28, 8
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %29 = extractelement <4 x i8> %22, i64 3
  %30 = zext i8 %29 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %30
  store i16 78, ptr %16, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i8 0, ptr %i.r, align 2, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.s, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.g, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.g ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.0
}

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #6

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #6

declare zeroext i1 @py_castfloat32(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @py_retval(...) local_unnamed_addr #6

declare void @py_newnotimplemented(ptr noundef) local_unnamed_addr #6

declare void @py_clearexc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare void @py_newstrv(ptr noundef, ptr, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @py_newbool(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare double @dmath_fabs(double noundef) local_unnamed_addr #6

declare void @py_newfloat(ptr noundef, double noundef) local_unnamed_addr #6

declare double @dmath_sqrt(double noundef) local_unnamed_addr #6

declare zeroext i1 @py_castfloat(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dmath_sincos(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @py_emplacedict(ptr noundef, ptr noundef) local_unnamed_addr #6

declare double @dmath_atan2(double noundef, double noundef) local_unnamed_addr #6

declare ptr @py_newtuple(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @py_tuple_len(ptr noundef) local_unnamed_addr #6

declare ptr @py_tuple_getitem(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @py_newnone(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @inverse(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load float, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.f = fmul float %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !13 ; 2 uses
  %i.k = fmul float %i.h, %i.j
  %i.l = fsub float %i.f, %i.k
  %i.m = fmul float %i.a, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !13 ; 2 uses
  %i.r = fmul float %i.e, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load float, ptr %i.s, align 4, !tbaa !13 ; 2 uses
  %i.u = fmul float %i.h, %i.t
  %i.v = fsub float %i.r, %i.u
  %i.w = fmul float %i.o, %i.v
  %i.x = fsub float %i.m, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !13
  %i.aa = fmul float %i.j, %i.q
  %i.ab = fmul float %i.c, %i.t
  %i.ac = fsub float %i.aa, %i.ab
  %i.ad = fmul float %i.z, %i.ac
  %i.ae = fadd float %i.ad, %i.x                  ; 2 uses
  %i.af = fpext float %i.ae to double
  %i.ag = tail call double @dmath_fabs(double noundef %i.af) #16
  %i.ah = fcmp uge double %i.ag, 1.000000e-04     ; 2 uses
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.aj = load <4 x float>, ptr %i.g, align 4, !tbaa !13 ; 7 uses
  %i.ak = load <4 x float>, ptr %i.n, align 4, !tbaa !13 ; 5 uses
  %i.al = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.aj, <4 x i32> <i32 0, i32 4, i32 1, i32 3>
  %i.an = fmul <4 x float> %i.am, %i.aj
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1>
  %i.ap = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 7, i32 3>
  %i.aq = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 2, i32 3, i32 5, i32 6>
  %i.ar = fmul <4 x float> %i.ap, %i.aq
  %i.as = fsub <4 x float> %i.ao, %i.ar
  %i.at = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = fmul <4 x float> %i.au, %i.as
  store <4 x float> %i.av, ptr %1, align 4, !tbaa !13
  %i.aw = load float, ptr %0, align 4, !tbaa !13  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = extractelement <4 x float> %i.ak, i64 0
  %i.az = load <2 x float>, ptr %i.y, align 4, !tbaa !13 ; 2 uses
  %i.ba = load float, ptr %i.p, align 4, !tbaa !13
  %i.bb = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.bc = insertelement <4 x float> %i.bb, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bf = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bg = shufflevector <4 x float> %i.aj, <4 x float> %i.bf, <4 x i32> <i32 3, i32 5, i32 6, i32 1>
  %i.bh = fmul <4 x float> %i.be, %i.bg
  %i.bi = insertelement <4 x float> %i.bd, float %i.aw, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.al, i64 2
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bl = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.bm = fmul <4 x float> %i.bk, %i.bl
  %i.bn = fsub <4 x float> %i.bh, %i.bm
  %i.bo = fmul <4 x float> %i.au, %i.bn
  store <4 x float> %i.bo, ptr %i.ax, align 4, !tbaa !13
  %i.bp = fmul float %i.al, %i.aw
  %i.bq = fmul float %i.ay, %i.ba
  %i.br = fsub float %i.bp, %i.bq
  %i.bs = fmul float %i.ai, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.bs, ptr %i.bt, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.ah
}

declare i64 @py_toint(ptr noundef) local_unnamed_addr #6

declare i64 @cpy312__int_floordiv(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @cpy312__int_mod(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @py_newint(ptr noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @py_castint(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

declare { ptr, i32 } @py_tosv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare void @c11_sbuf__ctor(ptr noundef) local_unnamed_addr #6

declare void @pk_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @c11_sbuf__py_submit(ptr noundef, ptr noundef) local_unnamed_addr #6

declare double @py_tofloat(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_2
