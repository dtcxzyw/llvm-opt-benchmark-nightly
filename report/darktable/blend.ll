Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blend?download=true
inline.NumInlined: 43
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dt_develop_blend_init_blend_parameters:bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !31
  %i.b = icmp eq i32 %1, 4
  br i1 %i.b, label %bb.b, label %_blend_init_blendif_boost_parameters.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> splat (float f0xC0D49A78), ptr %i.c, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> splat (float f0xC0D49A78), ptr %i.d, align 4, !tbaa !34
  br label %_blend_init_blendif_boost_parameters.exit

_blend_init_blendif_boost_parameters.exit:        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_develop_blend_init_blendif_parameters(ptr nofree noundef writeonly captures(none) initializes((4, 16), (28, 32), (68, 388)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 24, ptr %i.b, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.e, ptr noundef nonnull align 4 dereferenceable(256) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 68), i64 256, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 324), i64 64, i1 false)
  %i.g = icmp eq i32 %1, 4
  br i1 %i.g, label %bb.b, label %_blend_init_blendif_boost_parameters.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> splat (float f0xC0D49A78), ptr %i.h, align 4, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> splat (float f0xC0D49A78), ptr %i.i, align 4, !tbaa !34
  br label %_blend_init_blendif_boost_parameters.exit

_blend_init_blendif_boost_parameters.exit:        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @dt_develop_blend_colorspace(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %switch.tableidx = add i32 %i.d, -1             ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 4
  br i1 %i.e, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_develop_blend_process, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ %1, %bb.a ], [ %1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_develop_blendif_process_parameters(ptr noalias nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.g = icmp eq i32 %i.b, 2
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret void

bb.c:                                             ; preds = %bb.a, %bb.i
  %.08691 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.i ] ; 3 uses
  %.08790 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.i ] ; 5 uses
  %i.h = trunc nuw nsw i64 %.08790 to i32
  %i.i = shl nuw nsw i32 1, %i.h
  %i.j = and i32 %i.i, %i.d
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %.08790, 11
  %i.l = add nsw i64 %i.k, -1
  %or.cond5 = icmp ult i64 %i.l, 2
  %i.m = select i1 %i.g, i1 %or.cond5, i1 false
  %.0 = select nsz i1 %i.m, float 5.000000e-01, float 0.000000e+00
  %.idx = shl nuw nsw i64 %.08790, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.08790
  %i.p = load float, ptr %i.o, align 4, !tbaa !34
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.p)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08691 ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load <4 x float>, ptr %i.n, align 4, !tbaa !34 ; 5 uses
  %i.u = insertelement <4 x float> poison, float %.0, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = fsub reassoc nsz arcp contract afn <4 x float> %i.t, %i.v
  %i.x = insertelement <4 x float> poison, float %i.q, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul reassoc nsz arcp contract afn <4 x float> %i.y, %i.w ; 3 uses
  store <4 x float> %i.z, ptr %i.r, align 4, !tbaa !34
  %i.aa = getelementptr i8, ptr %i.r, i64 16
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ac = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ad = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ad, <2 x float> splat (float 1.000000e-03))
  %i.af = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ae
  store <2 x float> %i.af, ptr %i.aa, align 4, !tbaa !34
  %i.ag = extractelement <4 x float> %i.t, i64 0
  %i.ah = fcmp reassoc nsz arcp contract afn ugt float %i.ag, 0.000000e+00
  %i.ai = extractelement <4 x float> %i.t, i64 1
  %i.aj = fcmp reassoc nsz arcp contract afn ugt float %i.ai, 0.000000e+00
  %or.cond88 = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.r, align 4, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = extractelement <4 x float> %i.t, i64 2
  %i.al = fcmp reassoc nsz arcp contract afn ult float %i.ak, 1.000000e+00
  %i.am = extractelement <4 x float> %i.t, i64 3
  %i.an = fcmp reassoc nsz arcp contract afn ult float %i.am, 1.000000e+00
  %or.cond89 = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond89, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.s, align 4, !tbaa !34
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08691 ; 2 uses
  store <4 x float> <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, ptr %i.ao, align 4, !tbaa !34
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store <2 x float> zeroinitializer, ptr %i.ap, align 4, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.aq = add nuw nsw i64 %.08790, 1              ; 2 uses
  %i.ar = add nuw nsw i64 %.08691, 6
  %exitcond.not = icmp eq i64 %i.aq, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_develop_blendif_init_masking_profile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 4
  %i.b = load ptr, ptr %0, align 16, !tbaa !50    ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %i.b, ptr noundef %i.d) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2088
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = tail call ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef %i.b, ptr noundef %i.i) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.c ] ; 11 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.loopexit, label %.preheader33

.preheader33:                                     ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1088) %1, ptr noundef nonnull align 64 dereferenceable(1088) %i.k, i64 1088, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 576 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.o = load float, ptr %i.l, align 4, !tbaa !34
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, f0x3F74A0AB
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.k, i64 592 ; 3 uses
  %i.q = load float, ptr %gep.1, align 4, !tbaa !34
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, -2.303930e-02
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.p
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.k, i64 608 ; 3 uses
  %i.t = load float, ptr %gep.2, align 4, !tbaa !34
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, 6.316360e-02
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, %i.s ; 2 uses
  store float %i.v, ptr %i.m, align 4, !tbaa !34
  store float %i.v, ptr %i.n, align 4, !tbaa !34
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.k, i64 580 ; 3 uses
  %i.w = load float, ptr %invariant.gep.1, align 4, !tbaa !34
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, f0x3F74A0AB
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %i.k, i64 596 ; 3 uses
  %i.y = load float, ptr %gep.1.1, align 4, !tbaa !34
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, -2.303930e-02
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.x
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %i.k, i64 612 ; 3 uses
  %i.ab = load float, ptr %gep.2.1, align 4, !tbaa !34
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, 6.316360e-02
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.aa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 644
  store float %i.ad, ptr %i.ae, align 4, !tbaa !34
  %gep37.1 = getelementptr inbounds nuw i8, ptr %1, i64 976
  store float %i.ad, ptr %gep37.1, align 4, !tbaa !34
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.k, i64 584 ; 3 uses
  %i.af = load float, ptr %invariant.gep.2, align 4, !tbaa !34
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, f0x3F74A0AB
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %i.k, i64 600 ; 3 uses
  %i.ah = load float, ptr %gep.1.2, align 4, !tbaa !34
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, -2.303930e-02
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.ag
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %i.k, i64 616 ; 3 uses
  %i.ak = load float, ptr %gep.2.2, align 4, !tbaa !34
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, 6.316360e-02
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, %i.aj ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 648
  store float %i.am, ptr %i.an, align 4, !tbaa !34
  %gep37.2 = getelementptr inbounds nuw i8, ptr %1, i64 992
  store float %i.am, ptr %gep37.2, align 4, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 656
  %invariant.gep36.1 = getelementptr inbounds nuw i8, ptr %1, i64 964
  %i.ap = load float, ptr %i.l, align 4, !tbaa !34
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, -2.828950e-02
  %i.ar = load float, ptr %gep.1, align 4, !tbaa !34
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, f0x3F8145C4
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.aq
  %i.au = load float, ptr %gep.2, align 4, !tbaa !34
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, 2.100770e-02
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.at ; 2 uses
  store float %i.aw, ptr %i.ao, align 4, !tbaa !34
  store float %i.aw, ptr %invariant.gep36.1, align 4, !tbaa !34
  %i.ax = load float, ptr %invariant.gep.1, align 4, !tbaa !34
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, -2.828950e-02
  %i.az = load float, ptr %gep.1.1, align 4, !tbaa !34
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x3F8145C4
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.ay
  %i.bc = load float, ptr %gep.2.1, align 4, !tbaa !34
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 2.100770e-02
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.bb ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 660
  store float %i.be, ptr %i.bf, align 4, !tbaa !34
  %gep37.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 980
  store float %i.be, ptr %gep37.1.1, align 4, !tbaa !34
  %i.bg = load float, ptr %invariant.gep.2, align 4, !tbaa !34
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, -2.828950e-02
  %i.bi = load float, ptr %gep.1.2, align 4, !tbaa !34
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, f0x3F8145C4
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.bh
  %i.bl = load float, ptr %gep.2.2, align 4, !tbaa !34
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, 2.100770e-02
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, %i.bk ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 664
  store float %i.bn, ptr %i.bo, align 4, !tbaa !34
  %gep37.2.1 = getelementptr inbounds nuw i8, ptr %1, i64 996
  store float %i.bn, ptr %gep37.2.1, align 4, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 672
  %invariant.gep36.2 = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.bq = load float, ptr %i.l, align 4, !tbaa !34
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, 1.229820e-02
  %i.bs = load float, ptr %gep.1, align 4, !tbaa !34
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, -2.048300e-02
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, %i.br
  %i.bv = load float, ptr %gep.2, align 4, !tbaa !34
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, f0x3FAA3A7C
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bu ; 2 uses
  store float %i.bx, ptr %i.bp, align 4, !tbaa !34
  store float %i.bx, ptr %invariant.gep36.2, align 4, !tbaa !34
  %i.by = load float, ptr %invariant.gep.1, align 4, !tbaa !34
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, 1.229820e-02
  %i.ca = load float, ptr %gep.1.1, align 4, !tbaa !34
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, -2.048300e-02
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %i.bz
  %i.cd = load float, ptr %gep.2.1, align 4, !tbaa !34
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, f0x3FAA3A7C
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.cc ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 676
  store float %i.cf, ptr %i.cg, align 4, !tbaa !34
  %gep37.1.2 = getelementptr inbounds nuw i8, ptr %1, i64 984
  store float %i.cf, ptr %gep37.1.2, align 4, !tbaa !34
  %i.ch = load float, ptr %invariant.gep.2, align 4, !tbaa !34
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, 1.229820e-02
  %i.cj = load float, ptr %gep.1.2, align 4, !tbaa !34
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, -2.048300e-02
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.ci
  %i.cm = load float, ptr %gep.2.2, align 4, !tbaa !34
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, f0x3FAA3A7C
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.cl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 680
  store float %i.co, ptr %i.cp, align 4, !tbaa !34
  %gep37.2.2 = getelementptr inbounds nuw i8, ptr %1, i64 1000
  store float %i.co, ptr %gep37.2.2, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader33, %bb.d
  %.031 = phi i32 [ 0, %bb.d ], [ 1, %.preheader33 ]
  ret i32 %.031
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_develop_blend_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [1 x float], align 4              ; 4 uses
  %i.d = alloca [1 x float], align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 15 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78   ; 5 uses
  %i.h = and i32 %i.g, 8                          ; 2 uses
  %i.i = and i32 %i.g, 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !79   ; 4 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !80   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81   ; 7 uses
  %i.q = sext i32 %i.n to i64                     ; 7 uses
  %i.r = sext i32 %i.p to i64                     ; 7 uses
  %i.s = mul nsw i64 %i.r, %i.q                   ; 32 uses
  %i.t = load <2 x i32>, ptr %5, align 4, !tbaa !82
  %i.u = load <2 x i32>, ptr %4, align 4, !tbaa !82
  %i.v = sub <2 x i32> %i.u, %i.t                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !80   ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.n
  %.0.i318.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !81
  %i.ab = icmp eq i32 %i.aa, %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = phi i1 [ false, %bb.a ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ad = extractelement <2 x i32> %i.v, i64 0
  %i.ae = add i32 %i.ad, %i.x
  %.not = icmp slt i32 %i.ae, %i.n
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %i.ah = extractelement <2 x i32> %i.v, i64 1
  %i.ai = add i32 %i.ah, %i.ag
  %.not341 = icmp slt i32 %i.ai, %i.p
  br i1 %.not341, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str, ptr noundef %i.ak, ptr noundef %0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #14
  br label %bb.ce

bb.e:                                             ; preds = %bb.d
  %i.al = tail call i32 @dt_iop_has_focus(ptr noundef %0) #14
  %.not292 = icmp eq i32 %i.al, 0
  br i1 %.not292, label %.thread335, label %bb.f

.thread335:                                       ; preds = %bb.e
  %i.am = icmp ne i32 %i.h, 0
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2760
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !83
  %i.at = icmp eq ptr %i.ao, %i.as                ; 3 uses
  %i.au = and i32 %i.g, 6
  %or.cond.not = icmp ne i32 %i.au, 0
  %or.cond.not342 = select i1 %i.at, i1 %or.cond.not, i1 false
  br i1 %or.cond.not342, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !84
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ax = phi i32 [ %i.aw, %bb.g ], [ 0, %bb.f ]  ; 2 uses
  %i.ay = icmp ne i32 %i.h, 0                     ; 2 uses
  %or.cond3 = select i1 %i.at, i1 %i.ay, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !84
  br label %bb.j

bb.j:                                             ; preds = %.thread335, %bb.h, %bb.i
  %i.bb = phi i1 [ true, %bb.i ], [ %i.ay, %bb.h ], [ %i.am, %.thread335 ]
  %i.bc = phi i32 [ %i.ax, %bb.i ], [ %i.ax, %bb.h ], [ 0, %.thread335 ] ; 6 uses
  %i.bd = phi i1 [ true, %bb.i ], [ %i.at, %bb.h ], [ false, %.thread335 ]
  %i.be = phi i32 [ %i.ba, %bb.i ], [ 0, %bb.h ], [ 0, %.thread335 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !31 ; 4 uses
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !38  ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %dt_develop_blend_colorspace.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !31
  %switch.tableidx = add i32 %i.bj, -1            ; 2 uses
  %i.bk = icmp ult i32 %switch.tableidx, 4
  br i1 %i.bk, label %switch.lookup, label %dt_develop_blend_colorspace.exit

switch.lookup:                                    ; preds = %bb.k
  %i.bl = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_develop_blend_process, i64 %i.bl
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %dt_develop_blend_colorspace.exit

dt_develop_blend_colorspace.exit:                 ; preds = %bb.k, %switch.lookup, %bb.j
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.j ], [ -1, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !85
  %i.bo = icmp ne i32 %i.bn, 0
  %or.cond5 = and i1 %i.bd, %i.bo
  %i.bp = icmp ugt i32 %i.g, 1
  %spec.select = select i1 %or.cond5, i1 %i.bp, i1 false
  %i.bq = icmp eq i32 %i.g, 1
  %i.br = or i1 %i.bq, %spec.select
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !86
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 1.000000e-01
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %dt_develop_blend_colorspace.exit
  %i.bv = load i32, ptr %i.j, align 4, !tbaa !79
  %i.bw = icmp sgt i32 %i.bv, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %dt_develop_blend_colorspace.exit
  %i.bx = phi i1 [ false, %dt_develop_blend_colorspace.exit ], [ %i.bw, %bb.l ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !87
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 1.000000e-01 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !88
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cc)
  %i.ce = fcmp reassoc nsz arcp contract afn ult float %i.cd, f0x3C23D70A
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !89
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cg)
  %i.ci = fcmp reassoc nsz arcp contract afn oge float %i.ch, f0x3C23D70A
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cj = phi i1 [ true, %bb.m ], [ %i.ci, %bb.n ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !90 ; 3 uses
  %i.cm = icmp eq i32 %i.cl, 2
  %i.cn = icmp eq i32 %i.cl, 6
  %i.co = select i1 %i.cn, i32 3, i32 2           ; 2 uses
  %i.cp = select i1 %i.cm, i32 3, i32 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !91
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, f0x3C23D70A ; 5 uses
  %i.ct = fcmp reassoc nsz arcp contract afn ult float %i.cs, 0.000000e+00 ; 2 uses
  br i1 %i.ct, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = fcmp reassoc nsz arcp contract afn ugt float %i.cs, 1.000000e+00
  br i1 %i.cu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = fcmp reassoc nsz arcp contract afn ogt float %i.cs, f0x38D1B717
  %i.cw = and i1 %i.cj, %i.cv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %or.cond.i = phi i1 [ %i.cj, %bb.p ], [ %i.cw, %bb.q ], [ false, %bb.o ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br i1 %i.bx, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
end_hunk_0
