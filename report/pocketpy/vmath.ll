Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/vmath?download=true
inline.NumInlined: 309
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0_@color32_ansi_bg:bb.a
  %.sroa.6.0.extract.trunc = trunc i32 %.sroa.6.0.extract.shift to i8 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  %i.c = icmp eq i32 %.sroa.12.0.extract.shift, 255
  br i1 %i.c, label %c11_color32_premult.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0.extract.trunc = trunc nuw i32 %.sroa.12.0.extract.shift to i8
  %i.d = uitofp i8 %.sroa.12.0.extract.trunc to float
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
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !13 ; 4 uses
  %.sroa.513.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.513.0.extract.shift.a = lshr i32 %.sroa.0.0.copyload.i, 24
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i25 = load i32, ptr %2, align 8, !tbaa !13 ; 4 uses
  %.sroa.48.0.extract.shift.a = lshr i32 %.sroa.0.0.copyload.i25, 16
  %.sroa.412.0.extract.shift.a = lshr i32 %.sroa.0.0.copyload.i25, 24
  %3 = uitofp nneg i32 %.sroa.513.0.extract.shift.a to float ; 2 uses
  %4 = fdiv float %3, 2.550000e+02                ; 3 uses
  %5 = fsub float 1.000000e+00, %4                ; 3 uses
  %.sroa.412.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.48.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i25, 8
  %i.h = insertelement <4 x i32> poison, i32 %.sroa.0.0.copyload.i, i64 0
  %i.i = insertelement <4 x i32> %i.h, i32 %.sroa.0.0.copyload.i25, i64 1
  %i.j = insertelement <4 x i32> %i.i, i32 %.sroa.412.0.extract.shift, i64 2
  %i.k = insertelement <4 x i32> %i.j, i32 %.sroa.48.0.extract.shift, i64 3
  %i.l = and <4 x i32> %i.k, splat (i32 255)
  %i.m = uitofp nneg <4 x i32> %i.l to <4 x float>
  %i.n = insertelement <4 x float> poison, float %4, i64 0
  %i.o = insertelement <4 x float> %i.n, float %5, i64 1
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.q = fmul <4 x float> %i.p, %i.m              ; 2 uses
  %i.r = and i32 %.sroa.513.0.extract.shift, 255
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = and i32 %.sroa.48.0.extract.shift.a, 255
  %i.u = uitofp nneg i32 %i.t to float
  %i.v = uitofp nneg i32 %.sroa.412.0.extract.shift.a to float
  %i.w = tail call ptr (...) @py_retval() #16     ; 3 uses
  %i.x = fmul float %4, %i.s
  %i.y = fmul float %5, %i.u
  %i.z = fmul float %5, %i.v
  %i.aa = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 0>
  %i.ab = insertelement <4 x float> %i.aa, float %i.z, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 1
  %i.ad = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.ae = insertelement <4 x float> %i.ad, float %3, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.y, i64 1
  %i.ag = fadd <4 x float> %i.ac, %i.af
  %i.ah = fptoui <4 x float> %i.ag to <4 x i8>    ; 4 uses
  %i.ai = extractelement <4 x i8> %i.ah, i64 0
  %i.aj = zext i8 %i.ai to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %i.aj, 24
  %i.ak = extractelement <4 x i8> %i.ah, i64 1
  %i.al = zext i8 %i.ak to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %i.al, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.5.0.insert.shift
  %i.am = extractelement <4 x i8> %i.ah, i64 2
  %i.an = zext i8 %i.am to i32
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %i.an, 8
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %i.ao = extractelement <4 x i8> %i.ah, i64 3
  %i.ap = zext i8 %i.ao to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %i.ap
  store i16 78, ptr %i.w, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 0, ptr %i.aq, align 2, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.ar, align 8, !tbaa !13
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

end_hunk_0
