Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.07?download=true
inline.NumInlined: 1778
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1r_tEB6_:bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef float @_RNSNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample10box_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, float %1) unnamed_addr #1 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef float @_RNSNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15gaussian_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, float noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = fneg float %1
  %i.b = fmul float %1, %i.a
  %i.c = fmul float %i.b, 2.000000e+00
  %i.d = tail call float @llvm.exp.f32(float %i.c)
  %i.e = fmul float %i.d, f0x3F4C422A
  ret float %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef float @_RNSNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15lanczos3_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, float noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = fcmp olt float %i.a, 3.000000e+00
  br i1 %i.b, label %bb.b, label %_RNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15lanczos3_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_onceB8_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq float %1, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fmul nnan float %1, f0x40490FDB          ; 2 uses
  %i.e = tail call float @llvm.sin.f32(float %i.d)
  %i.f = fdiv float %i.e, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi float [ %i.f, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.g = fdiv float %1, 3.000000e+00              ; 2 uses
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %_RNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15lanczos3_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_onceB8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = fmul nnan float %i.g, f0x40490FDB        ; 2 uses
  %i.j = tail call float @llvm.sin.f32(float %i.i)
  %i.k = fdiv float %i.j, %i.i
  %i.l = fmul float %i.k, %.sroa.01.0.i.i
  br label %_RNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15lanczos3_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_onceB8_.exit

_RNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15lanczos3_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_onceB8_.exit: ; preds = %bb.a, %bb.d, %bb.e
  %.sroa.0.0.i.i = phi float [ 0.000000e+00, %bb.a ], [ %i.l, %bb.e ], [ %.sroa.01.0.i.i, %bb.d ]
  ret float %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef float @_RNSNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15triangle_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, float noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1) ; 2 uses
  %i.b = fcmp olt float %i.a, 1.000000e+00
  %i.c = fsub float 1.000000e+00, %i.a
  %.sroa.0.0.i.i = select i1 %i.b, float %i.c, float 0.000000e+00
  ret float %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef float @_RNSNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample17catmullrom_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, float noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1) ; 5 uses
  %i.b = fcmp olt float %i.a, 1.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt float %i.a, 2.000000e+00
  br i1 %i.c, label %bb.d, label %_RNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample17catmullrom_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_onceB8_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call float @llvm.powi.f32.i32(float %i.a, i32 3)
  %i.e = fmul nnan float %i.d, 9.000000e+00
  %i.f = fmul float %1, %1
  %i.g = fmul nnan float %i.f, 1.500000e+01
  %i.h = fsub float %i.e, %i.g
  %i.i = fadd float %i.h, 6.000000e+00
  br label %_RNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample17catmullrom_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_onceB8_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call float @llvm.powi.f32.i32(float %i.a, i32 3)
  %i.k = fmul nnan float %i.j, 3.000000e+00
  %i.l = fmul float %1, %1
  %i.m = fmul nnan float %i.l, 1.500000e+01
  %i.n = fsub float %i.m, %i.k
  %i.o = fmul nnan float %i.a, 2.400000e+01
  %i.p = fsub float %i.n, %i.o
  %i.q = fadd float %i.p, 1.200000e+01
  br label %_RNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample17catmullrom_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_onceB8_.exit

_RNvYNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample17catmullrom_kernelINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTfEE9call_onceB8_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i.i = phi float [ %i.i, %bb.c ], [ %i.q, %bb.d ], [ 0.000000e+00, %bb.b ]
  %i.r = fdiv float %.sroa.0.0.i.i.i, 6.000000e+00
  ret float %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsa5QsYiPB8Gl_5image8imageops6sampleNtB5_22GaussianBlurParameters14new_from_sigma(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, float noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = bitcast float %1 to i32
  %i.b = and i32 %i.a, 2139095040
  %.off = add nsw i32 %i.b, -1
  %switch = icmp ult i32 %.off, 2139095039
  br i1 %switch, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @35, ptr noundef nonnull inttoptr (i64 101 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp ogt float %1, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = fadd nnan float %1, -8.000000e-01
  %i.e = fdiv nnan float %i.d, 3.000000e-01
  %i.f = fadd nnan float %i.e, 1.000000e+00
  %i.g = fmul nnan float %i.f, 2.000000e+00
  %i.h = fadd float %i.g, 1.000000e+00
  %i.i = tail call nsz float @llvm.maximumnum.f32(float %i.h, float 3.000000e+00)
  %i.j = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.i)
  %.sroa.0.0 = or i32 %i.j, 1                     ; 2 uses
  store i32 %.sroa.0.0, ptr %0, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %1, ptr %i.m, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsa5QsYiPB8Gl_5image8imageops6sampleNtB5_22GaussianBlurParameters15new_from_radius(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, float noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp ult float %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp une float %1, 0.000000e+00
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.c = fmul nnan float %1, 2.000000e+00
  %i.d = fadd float %i.c, 1.000000e+00
  tail call void @_RNvMs0_NtNtCsa5QsYiPB8Gl_5image8imageops6sampleNtB5_22GaussianBlurParameters20new_from_kernel_size(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, float noundef %i.d)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = bitcast float %1 to i32
  %i.f = and i32 %i.e, 2139095040
  %.off = add nsw i32 %i.f, -1
  %switch = icmp ult i32 %.off, 2139095039
  br i1 %switch, label %bb.d, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull inttoptr (i64 101 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsa5QsYiPB8Gl_5image8imageops6sampleNtB5_22GaussianBlurParameters20new_from_kernel_size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, float noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = fcmp ogt float %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = bitcast float %1 to i32
  %i.d = and i32 %i.c, 2139095040
  %.off = add nsw i32 %i.d, -1
  %switch = icmp ult i32 %.off, 2139095039
  br i1 %switch, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = tail call float @llvm.round.f32(float %1)
  %i.f = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.e) ; 4 uses
  %2 = trunc i32 %i.f to i1
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.07.0 = phi i32 [ %i.f, %bb.e ], [ %., %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = and i32 %.sroa.07.0, 1                   ; 2 uses
  store i32 %i.g, ptr %i.a, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.i, !prof !20

bb.g:                                             ; preds = %bb.e
  %i.i = add i32 %i.f, -1                         ; 2 uses
  %i.j = or disjoint i32 %i.f, 1                  ; 2 uses
  %i.k = uitofp i32 %i.i to float
  %i.l = fsub float %1, %i.k
  %i.m = tail call float @llvm.fabs.f32(float %i.l)
  %i.n = uitofp i32 %i.j to float
  %i.o = fsub float %1, %i.n
  %i.p = tail call float @llvm.fabs.f32(float %i.o)
  %i.q = fcmp ugt float %i.m, %i.p
  %. = select i1 %i.q, i32 %i.j, i32 %i.i
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedmmECsaKJjC64KgbL_3std(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @46, ptr noundef nonnull @47, ptr nonnull inttoptr (i64 47 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = fcmp ole float %1, 1.000000e+00
  %i.s = fadd nnan float %1, -1.000000e+00
  %i.t = fmul nnan float %i.s, 5.000000e-01
  %i.u = fadd nnan float %i.t, -1.000000e+00
  %i.v = fmul nnan float %i.u, 3.000000e-01
  %i.w = fadd float %i.v, 8.000000e-01
  %i.x = select i1 %i.r, float 4.700000e-01, float %i.w ; 2 uses
  store i32 %.sroa.07.0, ptr %0, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.07.0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.x, ptr %i.aa, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsa5QsYiPB8Gl_5image8imageops6sampleNtB5_22GaussianBlurParameters27new_anisotropic_kernel_size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, float noundef %1, float noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = fcmp ogt float %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = bitcast float %2 to i32                  ; 2 uses
  %i.e = and i32 %i.d, 8388607
  %i.f = and i32 %i.d, 2139095040
  %i.g = icmp eq i32 %i.e, 0
  %.off = add nsw i32 %i.f, -1
  %switch = icmp ult i32 %.off, 2139095039        ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %switch, label %bb.g, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.c
  br i1 %switch, label %bb.j, label %bb.f, !prof !1663

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #19
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.h = fcmp ogt float %2, 0.000000e+00
  br i1 %i.h, label %bb.i, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.j, %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #19
  unreachable

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.i = tail call float @llvm.round.f32(float %1)
  %i.j = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.i) ; 4 uses
  %3 = trunc i32 %i.j to i1
  br i1 %3, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.k = fcmp ogt float %2, 0.000000e+00
  br i1 %i.k, label %bb.i, label %bb.h, !prof !16

bb.k:                                             ; preds = %bb.l, %bb.i
  %.sroa.017.0 = phi i32 [ %i.j, %bb.i ], [ %., %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = and i32 %.sroa.017.0, 1                  ; 2 uses
  store i32 %i.l, ptr %i.b, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.n, !prof !20

bb.l:                                             ; preds = %bb.i
  %i.n = add i32 %i.j, -1                         ; 2 uses
  %i.o = or disjoint i32 %i.j, 1                  ; 2 uses
  %i.p = uitofp i32 %i.n to float
  %i.q = fsub float %1, %i.p
  %i.r = tail call float @llvm.fabs.f32(float %i.q)
  %i.s = uitofp i32 %i.o to float
  %i.t = fsub float %1, %i.s
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fcmp ugt float %i.r, %i.u
  %. = select i1 %i.v, i32 %i.o, i32 %i.n
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedmmECsaKJjC64KgbL_3std(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @46, ptr noundef nonnull @47, ptr nonnull inttoptr (i64 47 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = tail call float @llvm.round.f32(float %2)
  %i.x = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.w) ; 4 uses
  %4 = trunc i32 %i.x to i1
  br i1 %4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n
  %.sroa.022.0 = phi i32 [ %i.x, %bb.n ], [ %.33, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = and i32 %.sroa.022.0, 1                  ; 2 uses
  store i32 %i.y, ptr %i.a, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.q, label %bb.r, !prof !20

bb.p:                                             ; preds = %bb.n
  %i.aa = add i32 %i.x, -1                        ; 2 uses
  %i.ab = or disjoint i32 %i.x, 1                 ; 2 uses
  %i.ac = uitofp i32 %i.aa to float
  %i.ad = fsub float %2, %i.ac
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad)
  %i.af = uitofp i32 %i.ab to float
  %i.ag = fsub float %2, %i.af
  %i.ah = tail call float @llvm.fabs.f32(float %i.ag)
  %i.ai = fcmp ugt float %i.ae, %i.ah
  %.33 = select i1 %i.ai, i32 %i.ab, i32 %i.aa
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedmmECsaKJjC64KgbL_3std(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @46, ptr noundef nonnull @47, ptr nonnull inttoptr (i64 47 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #19
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = insertelement <2 x float> poison, float %1, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %2, i64 1 ; 2 uses
  %i.al = fcmp ole <2 x float> %i.ak, splat (float 1.000000e+00)
  %i.am = fadd <2 x float> %i.ak, splat (float -1.000000e+00)
  %i.an = fmul <2 x float> %i.am, splat (float 5.000000e-01)
  %i.ao = fadd <2 x float> %i.an, splat (float -1.000000e+00)
  %i.ap = fmul <2 x float> %i.ao, splat (float 3.000000e-01)
  %i.aq = fadd <2 x float> %i.ap, splat (float 8.000000e-01)
  %i.ar = select <2 x i1> %i.al, <2 x float> splat (float 4.700000e-01), <2 x float> %i.aq ; 2 uses
  store i32 %.sroa.017.0, ptr %0, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = extractelement <2 x float> %i.ar, i64 0
  store float %i.at, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.022.0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = extractelement <2 x float> %i.ar, i64 1
  store float %i.aw, ptr %i.av, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef float @_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample17catmullrom_kernel(float noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0) ; 5 uses
  %i.b = fcmp olt float %i.a, 1.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt float %i.a, 2.000000e+00
  br i1 %i.c, label %bb.d, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15bc_cubic_spline.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call float @llvm.powi.f32.i32(float %i.a, i32 3)
  %i.e = fmul nnan float %i.d, 9.000000e+00
  %i.f = fmul float %0, %0
  %i.g = fmul nnan float %i.f, 1.500000e+01
  %i.h = fsub float %i.e, %i.g
  %i.i = fadd float %i.h, 6.000000e+00
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15bc_cubic_spline.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call float @llvm.powi.f32.i32(float %i.a, i32 3)
  %i.k = fmul nnan float %i.j, 3.000000e+00
  %i.l = fmul float %0, %0
  %i.m = fmul nnan float %i.l, 1.500000e+01
  %i.n = fsub float %i.m, %i.k
  %i.o = fmul nnan float %i.a, 2.400000e+01
  %i.p = fsub float %i.n, %i.o
  %i.q = fadd float %i.p, 1.200000e+01
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15bc_cubic_spline.exit

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample15bc_cubic_spline.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi float [ %i.i, %bb.c ], [ %i.q, %bb.d ], [ 0.000000e+00, %bb.b ]
  %i.r = fdiv float %.sroa.0.0.i, 6.000000e+00
  ret float %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample22get_gaussian_kernel_1d(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, float noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1668
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1668
  %i.b = load i64, ptr %i.a, align 8, !range !18, !noalias !1668, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noalias !1668, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !1668
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #21, !noalias !1668
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !1668, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1668
  %i.i = fmul float %2, f0x40206C99
  %i.j = fdiv float 1.000000e+00, %i.i            ; 3 uses
  %i.k = lshr i64 %1, 1
  %i.l = uitofp nneg i64 %i.k to float            ; 3 uses
  %.idx = shl i64 %1, 2                           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  %i.o = add i64 %.idx, -4                        ; 2 uses
  %i.p = lshr exact i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 3 uses
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.q, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.020 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %.sroa.0.01219 = phi ptr [ %i.h, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ] ; 3 uses
  %.sroa.7.018 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.01219, i64 4
  %i.t = or disjoint i64 %.sroa.7.018, 1
  %i.u = uitofp nneg i64 %.sroa.7.018 to float
  %i.v = fsub float %i.u, %i.l
  %i.w = fdiv float %i.v, %2                      ; 2 uses
  %square = fmul float %i.w, %i.w
  %i.x = fmul float %square, -5.000000e-01
  %i.y = tail call float @llvm.exp.f32(float %i.x)
  %i.z = fmul float %i.j, %i.y                    ; 2 uses
  store float %i.z, ptr %.sroa.0.01219, align 4
  %i.aa = fadd float %.sroa.0.020, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.01219, i64 8 ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.7.018, 2         ; 2 uses
  %i.ad = uitofp nneg i64 %i.t to float
  %i.ae = fsub float %i.ad, %i.l
  %i.af = fdiv float %i.ae, %2                    ; 2 uses
  %square.1 = fmul float %i.af, %i.af
  %i.ag = fmul float %square.1, -5.000000e-01
  %i.ah = tail call float @llvm.exp.f32(float %i.ag)
  %i.ai = fmul float %i.j, %i.ah                  ; 2 uses
  store float %i.ai, ptr %i.s, align 4
  %i.aj = fadd float %i.aa, %i.ai                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %3 = trunc i64 %i.q to i1
  br i1 %3, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.020.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %.sroa.0.01219.epil.init = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.unr-lcssa ]
  %.sroa.7.018.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.ak = uitofp nneg i64 %.sroa.7.018.epil.init to float
  %i.al = fsub float %i.ak, %i.l
  %i.am = fdiv float %i.al, %2                    ; 2 uses
  %square.epil = fmul float %i.am, %i.am
  %i.an = fmul float %square.epil, -5.000000e-01
  %i.ao = tail call float @llvm.exp.f32(float %i.an)
  %i.ap = fmul float %i.j, %i.ao                  ; 2 uses
  store float %i.ap, ptr %.sroa.0.01219.epil.init, align 4
  %i.aq = fadd float %.sroa.0.020.epil.init, %i.ap
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi float [ %i.aj, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ar = fcmp une float %.lcssa, 0.000000e+00
  br i1 %i.ar, label %.lr.ph23.preheader, label %.loopexit

.lr.ph23.preheader:                               ; preds = %._crit_edge
  %i.as = fdiv float 1.000000e+00, %.lcssa        ; 2 uses
  %i.at = add i64 %.idx, -4                       ; 2 uses
  %i.au = lshr exact i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph23.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.h, i64 %i.aw
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.as, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ay ; 3 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4
  %wide.load26 = load <4 x float>, ptr %i.az, align 4
  %i.ba = fmul <4 x float> %broadcast.splat, %wide.load
  %i.bb = fmul <4 x float> %broadcast.splat, %wide.load26
  store <4 x float> %i.ba, ptr %next.gep, align 4
  store <4 x float> %i.bb, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1666

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph23.preheader27

.lr.ph23.preheader27:                             ; preds = %.lr.ph23.preheader, %middle.block
  %.sroa.07.021.ph = phi ptr [ %i.h, %.lr.ph23.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph23

.loopexit:                                        ; preds = %.lr.ph23, %middle.block, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, %._crit_edge
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

.lr.ph23:                                         ; preds = %.lr.ph23.preheader27, %.lr.ph23
  %.sroa.07.021 = phi ptr [ %i.bd, %.lr.ph23 ], [ %.sroa.07.021.ph, %.lr.ph23.preheader27 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 4 ; 2 uses
  %i.be = load float, ptr %.sroa.07.021, align 4, !noundef !4
  %i.bf = fmul float %i.as, %i.be
  store float %i.bf, ptr %.sroa.07.021, align 4
  %i.bg = icmp eq ptr %i.bd, %i.m
  br i1 %i.bg, label %.loopexit, label %.lr.ph23, !llvm.loop !1667
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample23gaussian_blur_dyn_image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 4 uses
  %i.v = alloca [64 x i8], align 8                ; 4 uses
  %i.w = alloca [64 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 5 uses
  %i.ad = alloca [64 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [40 x i8], align 8               ; 5 uses
  %i.ah = alloca [64 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [40 x i8], align 8               ; 5 uses
  %i.al = alloca [64 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 5 uses
  %i.ap = alloca [64 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [40 x i8], align 8               ; 5 uses
  %i.at = alloca [64 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [40 x i8], align 8               ; 5 uses
  %i.ax = alloca [64 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [40 x i8], align 8               ; 5 uses
  %i.bb = alloca [64 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [40 x i8], align 8               ; 5 uses
  %i.bf = alloca [64 x i8], align 8               ; 5 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [40 x i8], align 8               ; 5 uses
  %i.bj = alloca [64 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 7 uses
  %i.bl = alloca [48 x i8], align 8               ; 25 uses
  %i.bm = alloca [24 x i8], align 8               ; 9 uses
  %i.bn = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.bo = load i32, ptr %2, align 4, !noundef !4  ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.br = load float, ptr %i.bq, align 4, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1734
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.bp, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1734
  %i.bs = load i64, ptr %i.l, align 8, !range !18, !noalias !1734, !noundef !4
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !19, !noalias !1734, !noundef !4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.bt, label %bb.b, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !1734
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bv, i64 %i.bx) #21, !noalias !1734
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  %i.by = load ptr, ptr %i.bw, align 8, !noalias !1734, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1734
  %i.bz = fmul float %i.br, f0x40206C99
  %i.ca = fdiv float 1.000000e+00, %i.bz          ; 3 uses
  %i.cb = lshr i64 %i.bp, 1
  %i.cc = uitofp nneg i64 %i.cb to float          ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.bp, 2              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i
  %i.ce = icmp eq i32 %i.bo, 0
  br i1 %i.ce, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample22get_gaussian_kernel_1d.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i
  %i.cf = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.cg = lshr exact i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 3 uses
  %i.ci = icmp eq i64 %i.cf, 0
  br i1 %i.ci, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ch, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.020.i = phi float [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.da, %.lr.ph.i ]
  %.sroa.0.01219.i = phi ptr [ %i.by, %.lr.ph.i.preheader.new ], [ %i.cs, %.lr.ph.i ] ; 3 uses
  %.sroa.7.018.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ct, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.01219.i, i64 4
  %i.ck = or disjoint i64 %.sroa.7.018.i, 1
  %i.cl = uitofp nneg i64 %.sroa.7.018.i to float
  %i.cm = fsub float %i.cl, %i.cc
  %i.cn = fdiv float %i.cm, %i.br                 ; 2 uses
  %square.i = fmul float %i.cn, %i.cn
  %i.co = fmul float %square.i, -5.000000e-01
  %i.cp = tail call float @llvm.exp.f32(float %i.co)
  %i.cq = fmul float %i.ca, %i.cp                 ; 2 uses
  store float %i.cq, ptr %.sroa.0.01219.i, align 4, !noalias !1733
  %i.cr = fadd float %.sroa.0.020.i, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.01219.i, i64 8 ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.7.018.i, 2       ; 2 uses
  %i.cu = uitofp nneg i64 %i.ck to float
  %i.cv = fsub float %i.cu, %i.cc
  %i.cw = fdiv float %i.cv, %i.br                 ; 2 uses
  %square.i.1 = fmul float %i.cw, %i.cw
  %i.cx = fmul float %square.i.1, -5.000000e-01
  %i.cy = tail call float @llvm.exp.f32(float %i.cx)
  %i.cz = fmul float %i.ca, %i.cy                 ; 2 uses
  store float %i.cz, ptr %i.cj, align 4, !noalias !1733
  %i.da = fadd float %i.cr, %i.cz                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %3 = trunc i64 %i.ch to i1
  br i1 %3, label %.lr.ph.i.epil.preheader, label %._crit_edge.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.020.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.da, %._crit_edge.i.unr-lcssa ]
  %.sroa.0.01219.i.epil.init = phi ptr [ %i.by, %.lr.ph.i.preheader ], [ %i.cs, %._crit_edge.i.unr-lcssa ]
  %.sroa.7.018.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ct, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod238 = trunc i64 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.db = uitofp nneg i64 %.sroa.7.018.i.epil.init to float
  %i.dc = fsub float %i.db, %i.cc
  %i.dd = fdiv float %i.dc, %i.br                 ; 2 uses
  %square.i.epil = fmul float %i.dd, %i.dd
  %i.de = fmul float %square.i.epil, -5.000000e-01
  %i.df = tail call float @llvm.exp.f32(float %i.de)
  %i.dg = fmul float %i.ca, %i.df                 ; 2 uses
  store float %i.dg, ptr %.sroa.0.01219.i.epil.init, align 4, !noalias !1733
  %i.dh = fadd float %.sroa.0.020.i.epil.init, %i.dg
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa236 = phi float [ %i.da, %._crit_edge.i.unr-lcssa ], [ %i.dh, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.di = fcmp une float %.lcssa236, 0.000000e+00
  br i1 %i.di, label %.lr.ph23.preheader.i, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample22get_gaussian_kernel_1d.exit

.lr.ph23.preheader.i:                             ; preds = %._crit_edge.i
  %i.dj = fdiv float 1.000000e+00, %.lcssa236     ; 2 uses
  %i.dk = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.dl = lshr exact i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 28
  br i1 %min.iters.check, label %.lr.ph23.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.preheader.i
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.dn = shl i64 %n.vec, 2
  %i.do = getelementptr i8, ptr %i.by, i64 %i.dn
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.dp ; 3 uses
  %i.dq = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !noalias !1733
  %wide.load220 = load <4 x float>, ptr %i.dq, align 4, !noalias !1733
  %i.dr = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ds = fmul <4 x float> %broadcast.splat, %wide.load220
  store <4 x float> %i.dr, ptr %next.gep, align 4, !noalias !1733
  store <4 x float> %i.ds, ptr %i.dq, align 4, !noalias !1733
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !1673

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample22get_gaussian_kernel_1d.exit, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %.lr.ph23.preheader.i, %middle.block
  %.sroa.07.021.i.ph = phi ptr [ %i.by, %.lr.ph23.preheader.i ], [ %i.do, %middle.block ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader, %.lr.ph23.i
  %.sroa.07.021.i = phi ptr [ %i.du, %.lr.ph23.i ], [ %.sroa.07.021.i.ph, %.lr.ph23.i.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i, i64 4 ; 2 uses
  %i.dv = load float, ptr %.sroa.07.021.i, align 4, !noalias !1733, !noundef !4
  %i.dw = fmul float %i.dj, %i.dv
  store float %i.dw, ptr %.sroa.07.021.i, align 4, !noalias !1733
  %i.dx = icmp eq ptr %i.du, %i.cd
  br i1 %i.dx, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample22get_gaussian_kernel_1d.exit, label %.lr.ph23.i, !llvm.loop !1674

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample22get_gaussian_kernel_1d.exit: ; preds = %.lr.ph23.i, %middle.block, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i, %._crit_edge.i
  store i64 %i.bv, ptr %i.bn, align 8, !alias.scope !1733
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 11 uses
  store ptr %i.by, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1733
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 11 uses
  store i64 %i.bp, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !noundef !4 ; 2 uses
  %i.ea = zext i32 %i.dz to i64                   ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ec = load float, ptr %i.eb, align 4, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1736
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.ea, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample22get_gaussian_kernel_1d.exit
  %i.ed = load i64, ptr %i.k, align 8, !range !18, !noalias !1736, !noundef !4
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !19, !noalias !1736, !noundef !4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.ee, label %bb.c, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i86, !prof !20

bb.c:                                             ; preds = %.noexc
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !1736
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.eg, i64 %i.ei) #21
          to label %.noexc99 unwind label %bb.d

.noexc99:                                         ; preds = %bb.c
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i86: ; preds = %.noexc
  %i.ej = load ptr, ptr %i.eh, align 8, !noalias !1736, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1736
  %i.ek = fmul float %i.ec, f0x40206C99
  %i.el = fdiv float 1.000000e+00, %i.ek          ; 3 uses
  %i.em = lshr i64 %i.ea, 1
  %i.en = uitofp nneg i64 %i.em to float          ; 3 uses
  %.idx.i87 = shl nuw nsw i64 %i.ea, 2            ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx.i87
  %i.ep = icmp eq i32 %i.dz, 0
  br i1 %i.ep, label %.loopexit, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i86
  %i.eq = add nsw i64 %.idx.i87, -4               ; 2 uses
  %i.er = lshr exact i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 3 uses
  %i.et = icmp eq i64 %i.eq, 0
  br i1 %i.et, label %.lr.ph.i88.epil.preheader, label %.lr.ph.i88.preheader.new

.lr.ph.i88.preheader.new:                         ; preds = %.lr.ph.i88.preheader
  %unroll_iter243 = and i64 %i.es, 9223372036854775806
  br label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.lr.ph.i88, %.lr.ph.i88.preheader.new
  %.sroa.0.020.i89 = phi float [ 0.000000e+00, %.lr.ph.i88.preheader.new ], [ %i.fl, %.lr.ph.i88 ]
  %.sroa.0.01219.i90 = phi ptr [ %i.ej, %.lr.ph.i88.preheader.new ], [ %i.fd, %.lr.ph.i88 ] ; 3 uses
  %.sroa.7.018.i91 = phi i64 [ 0, %.lr.ph.i88.preheader.new ], [ %i.fe, %.lr.ph.i88 ] ; 3 uses
  %niter244 = phi i64 [ 0, %.lr.ph.i88.preheader.new ], [ %niter244.next.1, %.lr.ph.i88 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.01219.i90, i64 4
  %i.ev = or disjoint i64 %.sroa.7.018.i91, 1
  %i.ew = uitofp nneg i64 %.sroa.7.018.i91 to float
  %i.ex = fsub float %i.ew, %i.en
  %i.ey = fdiv float %i.ex, %i.ec                 ; 2 uses
  %square.i92 = fmul float %i.ey, %i.ey
  %i.ez = fmul float %square.i92, -5.000000e-01
  %i.fa = tail call float @llvm.exp.f32(float %i.ez)
  %i.fb = fmul float %i.el, %i.fa                 ; 2 uses
  store float %i.fb, ptr %.sroa.0.01219.i90, align 4, !noalias !1735
  %i.fc = fadd float %.sroa.0.020.i89, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.01219.i90, i64 8 ; 2 uses
  %i.fe = add nuw nsw i64 %.sroa.7.018.i91, 2     ; 2 uses
  %i.ff = uitofp nneg i64 %i.ev to float
  %i.fg = fsub float %i.ff, %i.en
  %i.fh = fdiv float %i.fg, %i.ec                 ; 2 uses
  %square.i92.1 = fmul float %i.fh, %i.fh
  %i.fi = fmul float %square.i92.1, -5.000000e-01
  %i.fj = tail call float @llvm.exp.f32(float %i.fi)
  %i.fk = fmul float %i.el, %i.fj                 ; 2 uses
  store float %i.fk, ptr %i.eu, align 4, !noalias !1735
  %i.fl = fadd float %i.fc, %i.fk                 ; 3 uses
  %niter244.next.1 = add i64 %niter244, 2         ; 2 uses
  %niter244.ncmp.1 = icmp eq i64 %niter244.next.1, %unroll_iter243
  br i1 %niter244.ncmp.1, label %._crit_edge.i93.unr-lcssa, label %.lr.ph.i88

._crit_edge.i93.unr-lcssa:                        ; preds = %.lr.ph.i88
  %4 = trunc i64 %i.es to i1
  br i1 %4, label %.lr.ph.i88.epil.preheader, label %._crit_edge.i93

.lr.ph.i88.epil.preheader:                        ; preds = %._crit_edge.i93.unr-lcssa, %.lr.ph.i88.preheader
  %.sroa.0.020.i89.epil.init = phi float [ 0.000000e+00, %.lr.ph.i88.preheader ], [ %i.fl, %._crit_edge.i93.unr-lcssa ]
  %.sroa.0.01219.i90.epil.init = phi ptr [ %i.ej, %.lr.ph.i88.preheader ], [ %i.fd, %._crit_edge.i93.unr-lcssa ]
  %.sroa.7.018.i91.epil.init = phi i64 [ 0, %.lr.ph.i88.preheader ], [ %i.fe, %._crit_edge.i93.unr-lcssa ]
  %lcmp.mod242 = trunc i64 %i.es to i1
  tail call void @llvm.assume(i1 %lcmp.mod242)
  %i.fm = uitofp nneg i64 %.sroa.7.018.i91.epil.init to float
  %i.fn = fsub float %i.fm, %i.en
  %i.fo = fdiv float %i.fn, %i.ec                 ; 2 uses
  %square.i92.epil = fmul float %i.fo, %i.fo
  %i.fp = fmul float %square.i92.epil, -5.000000e-01
  %i.fq = tail call float @llvm.exp.f32(float %i.fp)
  %i.fr = fmul float %i.el, %i.fq                 ; 2 uses
  store float %i.fr, ptr %.sroa.0.01219.i90.epil.init, align 4, !noalias !1735
  %i.fs = fadd float %.sroa.0.020.i89.epil.init, %i.fr
  br label %._crit_edge.i93

._crit_edge.i93:                                  ; preds = %._crit_edge.i93.unr-lcssa, %.lr.ph.i88.epil.preheader
  %.lcssa = phi float [ %i.fl, %._crit_edge.i93.unr-lcssa ], [ %i.fs, %.lr.ph.i88.epil.preheader ] ; 2 uses
  %i.ft = fcmp une float %.lcssa, 0.000000e+00
  br i1 %i.ft, label %.lr.ph23.preheader.i96, label %.loopexit

.lr.ph23.preheader.i96:                           ; preds = %._crit_edge.i93
  %i.fu = fdiv float 1.000000e+00, %.lcssa        ; 2 uses
  %i.fv = add nsw i64 %.idx.i87, -4               ; 2 uses
  %i.fw = lshr exact i64 %i.fv, 2
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check222 = icmp ult i64 %i.fv, 28
  br i1 %min.iters.check222, label %.lr.ph23.i97.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %.lr.ph23.preheader.i96
  %n.vec224 = and i64 %i.fx, 9223372036854775800  ; 3 uses
  %i.fy = shl i64 %n.vec224, 2
  %i.fz = getelementptr i8, ptr %i.ej, i64 %i.fy
  %broadcast.splatinsert225 = insertelement <4 x float> poison, float %i.fu, i64 0
  %broadcast.splat226 = shufflevector <4 x float> %broadcast.splatinsert225, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph223
  %index228 = phi i64 [ 0, %vector.ph223 ], [ %index.next232, %vector.body227 ] ; 2 uses
  %i.ga = shl i64 %index228, 2
  %next.gep229 = getelementptr i8, ptr %i.ej, i64 %i.ga ; 3 uses
  %i.gb = getelementptr i8, ptr %next.gep229, i64 16 ; 2 uses
  %wide.load230 = load <4 x float>, ptr %next.gep229, align 4, !noalias !1735
  %wide.load231 = load <4 x float>, ptr %i.gb, align 4, !noalias !1735
  %i.gc = fmul <4 x float> %broadcast.splat226, %wide.load230
  %i.gd = fmul <4 x float> %broadcast.splat226, %wide.load231
  store <4 x float> %i.gc, ptr %next.gep229, align 4, !noalias !1735
  store <4 x float> %i.gd, ptr %i.gb, align 4, !noalias !1735
  %index.next232 = add nuw i64 %index228, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next232, %n.vec224
  br i1 %i.ge, label %middle.block233, label %vector.body227, !llvm.loop !1679

middle.block233:                                  ; preds = %vector.body227
  %cmp.n234 = icmp eq i64 %i.fx, %n.vec224
  br i1 %cmp.n234, label %.loopexit, label %.lr.ph23.i97.preheader

.lr.ph23.i97.preheader:                           ; preds = %.lr.ph23.preheader.i96, %middle.block233
  %.sroa.07.021.i98.ph = phi ptr [ %i.ej, %.lr.ph23.preheader.i96 ], [ %i.fz, %middle.block233 ]
  br label %.lr.ph23.i97

.lr.ph23.i97:                                     ; preds = %.lr.ph23.i97.preheader, %.lr.ph23.i97
  %.sroa.07.021.i98 = phi ptr [ %i.gf, %.lr.ph23.i97 ], [ %.sroa.07.021.i98.ph, %.lr.ph23.i97.preheader ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i98, i64 4 ; 2 uses
  %i.gg = load float, ptr %.sroa.07.021.i98, align 4, !noalias !1735, !noundef !4
  %i.gh = fmul float %i.fu, %i.gg
  store float %i.gh, ptr %.sroa.07.021.i98, align 4, !noalias !1735
  %i.gi = icmp eq ptr %i.gf, %i.eo
  br i1 %i.gi, label %.loopexit, label %.lr.ph23.i97, !llvm.loop !1680

.body130:                                         ; preds = %bb.em, %bb.d, %bb.e
  %.pn25 = phi { ptr, i32 } [ %.pn, %bb.e ], [ %i.gj, %bb.d ], [ %i.qf, %bb.em ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn) #18
          to label %common.resume unwind label %bb.ad

bb.d:                                             ; preds = %bb.en, %bb.c, %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops6sample22get_gaussian_kernel_1d.exit
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body130

bb.e:                                             ; preds = %.body.thread209, %.body28.thread201, %.body32.thread193, %.body36.thread185, %.body40.thread177, %.body44.thread169, %.body48.thread161, %.body52.thread153, %.body56.thread145, %.body60.thread137, %.body.thread, %bb.ei, %.body28.thread, %.body32.thread, %.body36.thread, %.body40.thread, %.body44.thread, %.body48.thread, %.body52.thread, %.body56.thread, %.body60.thread, %bb.f
  %.pn = phi { ptr, i32 } [ %i.qa, %bb.ei ], [ %eh.lpad-body61136, %.body60.thread ], [ %lpad.thr_comm, %.body60.thread137 ], [ %i.gk, %bb.f ], [ %eh.lpad-body57142, %.body56.thread ], [ %lpad.thr_comm143, %.body56.thread145 ], [ %eh.lpad-body53150, %.body52.thread ], [ %lpad.thr_comm151, %.body52.thread153 ], [ %eh.lpad-body49158, %.body48.thread ], [ %lpad.thr_comm159, %.body48.thread161 ], [ %eh.lpad-body45166, %.body44.thread ], [ %lpad.thr_comm167, %.body44.thread169 ], [ %eh.lpad-body41174, %.body40.thread ], [ %lpad.thr_comm175, %.body40.thread177 ], [ %eh.lpad-body37182, %.body36.thread ], [ %lpad.thr_comm183, %.body36.thread185 ], [ %eh.lpad-body33190, %.body32.thread ], [ %lpad.thr_comm191, %.body32.thread193 ], [ %eh.lpad-body29198, %.body28.thread ], [ %lpad.thr_comm199, %.body28.thread201 ], [ %eh.lpad-body206, %.body.thread ], [ %lpad.thr_comm207, %.body.thread209 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bm) #18
          to label %.body130 unwind label %bb.ad

bb.f:                                             ; preds = %.invoke, %bb.dw, %bb.dk, %bb.cy, %bb.cm, %bb.ca, %bb.bo, %bb.bc, %bb.aq, %bb.ae, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit:                                        ; preds = %.lr.ph23.i97, %middle.block233, %._crit_edge.i93, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i86
  store i64 %i.eg, ptr %i.bm, align 8, !alias.scope !1735
  %.sroa.4.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 11 uses
  store ptr %i.ej, ptr %.sroa.4.0..sroa_idx.i94, align 8, !alias.scope !1735
  %.sroa.6.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 11 uses
  store i64 %i.ea, ptr %.sroa.6.0..sroa_idx.i95, align 8, !alias.scope !1735
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i32, ptr %i.gl, align 8, !noundef !4 ; 11 uses
  %i.gm = zext i32 %.val to i64                   ; 10 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val63 = load i32, ptr %i.gn, align 4, !noundef !4 ; 11 uses
  %i.go = zext i32 %.val63 to i64                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.gp = load i64, ptr %1, align 8, !range !9, !noundef !4
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  switch i64 %i.gp, label %default.unreachable217 [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
    i64 5, label %bb.l
    i64 6, label %bb.m
    i64 7, label %bb.n
    i64 8, label %bb.o
    i64 9, label %bb.p
  ]

default.unreachable217:                           ; preds = %.loopexit
  unreachable

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.gr = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.q unwind label %bb.f

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.gs = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.ae unwind label %bb.f

bb.i:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.gt = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.aq unwind label %bb.f

bb.j:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.gu = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.bc unwind label %bb.f

bb.k:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.gv = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.bo unwind label %bb.f

bb.l:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.gw = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.ca unwind label %bb.f

bb.m:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.gx = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.cm unwind label %bb.f

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.gy = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.cy unwind label %bb.f

bb.o:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.gz = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.dk unwind label %bb.f

bb.p:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ha = invoke { ptr, i64 } @_RNvXsE_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gq)
          to label %bb.dw unwind label %bb.f

bb.q:                                             ; preds = %bb.g
  %i.hb = extractvalue { ptr, i64 } %i.gr, 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1737
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.hb, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc101 unwind label %bb.f

.noexc101:                                        ; preds = %bb.q
  %i.hc = load i64, ptr %i.j, align 8, !range !18, !noalias !1737, !noundef !4
  %i.hd = trunc nuw i64 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !range !19, !noalias !1737, !noundef !4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.hd, label %bb.r, label %bb.s, !prof !20

bb.r:                                             ; preds = %.noexc101
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !1737
  br label %.invoke

.body60.thread137:                                ; preds = %bb.ab, %bb.y
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.body60:                                          ; preds = %bb.s
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body60.thread
end_hunk_0
