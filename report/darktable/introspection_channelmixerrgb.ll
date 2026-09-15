Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@illuminant_to_xy:bb.a

bb.g:                                             ; preds = %bb.f
  %i.j = zext nneg i32 %7 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @led, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.o = fcmp reassoc nsz arcp contract afn oge float %5, 4.000000e+03
  %i.p = fcmp reassoc nsz arcp contract afn ole float %5, 7.000000e+03
  %or.cond.i = and i1 %i.o, %i.p
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = fdiv reassoc nsz arcp contract afn float 4.607000e+09, %5
  %i.r = fsub reassoc nsz arcp contract afn float 2.967800e+06, %i.q
  %i.s = fdiv reassoc nsz arcp contract afn float %i.r, %5
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, 9.911000e+01
  %i.u = fdiv reassoc nsz arcp contract afn float %i.t, %5
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, 2.440630e-01
  br label %CCT_to_xy_daylight.exit

bb.j:                                             ; preds = %bb.h
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %5, 7.000000e+03
  %i.x = fcmp reassoc nsz arcp contract afn ole float %5, 2.500000e+04
  %or.cond3.i = and i1 %i.w, %i.x
  br i1 %or.cond3.i, label %bb.k, label %CCT_to_xy_daylight.exit

bb.k:                                             ; preds = %bb.j
  %i.y = fdiv reassoc nsz arcp contract afn float 2.006400e+09, %5
  %i.z = fsub reassoc nsz arcp contract afn float 1.901800e+06, %i.y
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %5
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, 2.474800e+02
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %5
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, 2.370400e-01
  br label %CCT_to_xy_daylight.exit

CCT_to_xy_daylight.exit:                          ; preds = %bb.i, %bb.j, %bb.k
  %.0.i = phi nsz float [ %i.v, %bb.i ], [ %i.ad, %bb.k ], [ 0.000000e+00, %bb.j ] ; 4 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %.0.i, 3.000000e+00
  %i.af = fsub reassoc nsz arcp contract afn float 2.870000e+00, %i.ae
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %.0.i
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, -2.750000e-01 ; 2 uses
  %i.ai = fcmp reassoc nsz arcp contract afn une float %i.ah, 0.000000e+00
  %i.aj = fcmp reassoc nsz arcp contract afn une float %.0.i, 0.000000e+00
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %bb.x, label %bb.l

bb.l:                                             ; preds = %CCT_to_xy_daylight.exit, %bb.a
  %i.ak = fcmp reassoc nsz arcp contract afn oge float %5, 1.667000e+03 ; 2 uses
  %i.al = fcmp reassoc nsz arcp contract afn ole float %5, 4.000000e+03 ; 2 uses
  %or.cond.i24 = and i1 %i.ak, %i.al
  br i1 %or.cond.i24, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = fdiv reassoc nsz arcp contract afn float f0x4D7DCBA8, %5
  %i.an = fsub reassoc nsz arcp contract afn float f0xC864DDBA, %i.am
  %i.ao = fdiv reassoc nsz arcp contract afn float %i.an, %5
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0x445B6C85
  %i.aq = fdiv reassoc nsz arcp contract afn float %i.ap, %5
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, 1.799100e-01
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %5, 4.000000e+03
  %i.at = fcmp reassoc nsz arcp contract afn ole float %5, 2.500000e+04
  %or.cond3.i25 = and i1 %i.as, %i.at
  br i1 %or.cond3.i25, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = fdiv reassoc nsz arcp contract afn float f0x4F345AC2, %5
  %i.av = fsub reassoc nsz arcp contract afn float f0x4A009A78, %i.au
  %i.aw = fdiv reassoc nsz arcp contract afn float %i.av, %5
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, f0x435EA27C
  %i.ay = fdiv reassoc nsz arcp contract afn float %i.ax, %5
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, 2.403900e-01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.038.i = phi nsz float [ %i.ar, %bb.m ], [ %i.az, %bb.o ], [ 0.000000e+00, %bb.n ] ; 9 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ole float %5, 2.222000e+03
  %or.cond5.i = and i1 %i.ak, %i.ba
  br i1 %or.cond5.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = fmul reassoc nsz arcp contract afn float %.038.i, f0x3F8D9DE8
  %i.bc = fsub reassoc nsz arcp contract afn float f0xBFAC8EE0, %i.bb
  br label %CCT_to_xy_blackbody.exit

bb.r:                                             ; preds = %bb.p
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %5, 2.222000e+03
  %or.cond7.i = and i1 %i.bd, %i.al
  br i1 %or.cond7.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = fmul reassoc nsz arcp contract afn float %.038.i, f0x3F747772
  %i.bf = fsub reassoc nsz arcp contract afn float f0xBFAFE553, %i.be
  br label %CCT_to_xy_blackbody.exit

bb.t:                                             ; preds = %bb.r
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %5, 4.000000e+03
  %i.bh = fcmp reassoc nsz arcp contract afn ole float %5, 2.500000e+04
  %or.cond9.i = and i1 %i.bg, %i.bh
  br i1 %or.cond9.i, label %bb.u, label %CCT_to_xy_blackbody.exit.thread

CCT_to_xy_blackbody.exit.thread:                  ; preds = %bb.t
  store float %.038.i, ptr %i.a, align 4, !tbaa !12
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !12
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = fmul reassoc nsz arcp contract afn float %.038.i, f0x40453B86
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, f0xC0BBF2C9
  br label %CCT_to_xy_blackbody.exit

CCT_to_xy_blackbody.exit:                         ; preds = %bb.q, %bb.s, %bb.u
  %.sink41 = phi float [ %i.bc, %bb.q ], [ %i.bf, %bb.s ], [ %i.bj, %bb.u ]
  %.sink40 = phi float [ f0x400BE030, %bb.q ], [ 2.091370e+00, %bb.s ], [ f0x40701283, %bb.u ]
  %.sink38 = phi float [ f0xBE4F0CB0, %bb.q ], [ f0xBE2B8226, %bb.s ], [ f0xBEBD7295, %bb.u ]
  %i.bk = fmul reassoc nsz arcp contract afn float %.sink41, %.038.i
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %.sink40
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %.038.i
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, %.sink38 ; 3 uses
  store float %.038.i, ptr %i.a, align 4, !tbaa !12
  store float %i.bn, ptr %i.b, align 4, !tbaa !12
  %i.bo = fcmp reassoc nsz arcp contract afn une float %i.bn, 0.000000e+00
  %i.bp = fcmp reassoc nsz arcp contract afn une float %.038.i, 0.000000e+00
  %or.cond3 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond3, label %bb.x, label %bb.v

bb.v:                                             ; preds = %CCT_to_xy_blackbody.exit.thread, %CCT_to_xy_blackbody.exit, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = call fastcc i32 @find_temperature_from_raw_coeffs(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not23 = icmp eq i32 %i.bq, 0
  br i1 %.not23, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %.pre = load float, ptr %i.a, align 4, !tbaa !12
  %.pre29 = load float, ptr %i.b, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %._crit_edge, %CCT_to_xy_blackbody.exit, %CCT_to_xy_daylight.exit, %bb.g, %bb.e, %bb.c, %bb.b
  %i.br = phi float [ %.pre29, %._crit_edge ], [ %i.bn, %CCT_to_xy_blackbody.exit ], [ %i.ah, %CCT_to_xy_daylight.exit ], [ f0x3EAAAAAB, %bb.b ], [ 4.074500e-01, %bb.c ], [ %i.n, %bb.g ], [ %i.h, %bb.e ], [ 3.585000e-01, %bb.a ] ; 2 uses
  %i.bs = phi float [ %.pre, %._crit_edge ], [ %.038.i, %CCT_to_xy_blackbody.exit ], [ %.0.i, %CCT_to_xy_daylight.exit ], [ f0x3EAAAAAB, %bb.b ], [ 4.475700e-01, %bb.c ], [ %i.l, %bb.g ], [ %i.f, %bb.e ], [ 3.456700e-01, %bb.a ] ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn une float %i.bs, 0.000000e+00
  %i.bu = fcmp reassoc nsz arcp contract afn une float %i.br, 0.000000e+00
  %or.cond5 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond5, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  store float %i.bs, ptr %3, align 4, !tbaa !12
  store float %i.br, ptr %4, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.f, %bb.x, %bb.w, %bb.v, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %.sroa.10327.i = alloca float, align 8          ; 6 uses
  %.sroa.14328.i = alloca float, align 4          ; 4 uses
  %.sroa.10323.i = alloca float, align 8          ; 6 uses
  %.sroa.14324.i = alloca float, align 4          ; 4 uses
  %.sroa.10319.i = alloca float, align 8          ; 5 uses
  %.sroa.14320.i = alloca float, align 4          ; 3 uses
  %.sroa.25.i = alloca float, align 8             ; 6 uses
  %.sroa.33.i = alloca float, align 4             ; 4 uses
  %.sroa.042.i = alloca <4 x float>, align 16     ; 15 uses
  %i.e = alloca [4 x float], align 16             ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %i.h = alloca [4 x float], align 16             ; 6 uses
  %.sroa.10.i = alloca float, align 8             ; 5 uses
  %.sroa.14278.i = alloca float, align 4          ; 3 uses
  %.sroa.14.i = alloca float, align 8             ; 5 uses
  %.sroa.20.i = alloca float, align 4             ; 3 uses
  %i.i = alloca float, align 4                    ; 5 uses
  %i.j = alloca float, align 4                    ; 5 uses
  %i.k = alloca float, align 4                    ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca [4 x [4 x float]], align 64       ; 6 uses
  %i.n = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.o = alloca [4 x [4 x float]], align 64       ; 5 uses
  %i.p = alloca float, align 4                    ; 4 uses
  %i.q = alloca float, align 4                    ; 4 uses
  %i.r = alloca [4 x float], align 16             ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !45  ; 21 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %i.v) #31 ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.y = tail call ptr @dt_ioppr_get_pipe_input_profile_info(ptr noundef %i.x) #31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !57 ; 27 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !334
  %i.ad = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.ac, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #31
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.af = getelementptr i8, ptr %i.ae, i64 644
  %.val128 = load i32, ptr %i.af, align 4, !tbaa !72
  %i.ag = and i32 %.val128, 4
  %.not120 = icmp eq i32 %i.ag, 0
  br i1 %.not120, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_declare_cat_on_pipe(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #31
  %.not121 = icmp eq ptr %i.w, null
  br i1 %.not121, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.m, ptr noundef nonnull align 64 dereferenceable(64) %i.ah, i64 64, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.n, ptr noundef nonnull align 64 dereferenceable(64) %i.ai, i64 64, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.o, ptr noundef nonnull align 64 dereferenceable(64) %i.aj, i64 64, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.am = load i32, ptr %i.al, align 16, !tbaa !90
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = icmp ne ptr %i.aa, null                 ; 2 uses
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %bb.ay

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 528 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 16, !tbaa !97
  %.not122 = icmp eq i32 %i.aq, 0
  br i1 %.not122, label %bb.ay, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.as = getelementptr i8, ptr %i.ar, i64 644
  %.val127 = load i32, ptr %i.as, align 4, !tbaa !72
  %i.at = and i32 %.val127, 4
  %.not123 = icmp eq i32 %i.at, 0
  br i1 %.not123, label %bb.ay, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.av = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.au) #31 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.ax = load i32, ptr %i.aw, align 16, !tbaa !99 ; 38 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 440 ; 7 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !101, !noalias !337
  %i.bc = shl i64 %i.bb, 4
  %i.bd = tail call ptr @dt_alloc_aligned(i64 noundef %i.bc) #31, !noalias !337 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bd, i64 64) ]
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !338, !noalias !337 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !339, !noalias !337 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, %i.bg                ; 2 uses
  %.mask.i = and i64 %i.bk, 4611686018427387903
  %.not.i.i = icmp eq i64 %.mask.i, 0
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  %.sroa.042.i.12.i.12.i.12.i.12.i.12.i.12.gep40.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 12 ; 2 uses
  br i1 %.not.i.i, label %dt_simd_memcpy.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.bl = shl i64 %i.bk, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr readonly align 4 %2, i64 %i.bl, i1 false), !tbaa !12, !alias.scope !340
  br label %dt_simd_memcpy.exit.i

dt_simd_memcpy.exit.i:                            ; preds = %.lr.ph.preheader.i.i, %bb.i
  %i.bm = call fastcc <2 x float> @_extract_patches(ptr noundef %3, i32 %i.bf, i32 %i.bi, ptr noundef nonnull %i.aa, ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %i.o, ptr noundef %i.bd, i32 noundef 1), !noalias !335 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31, !noalias !337
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !12, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !337
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !12, !noalias !337
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 704 ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 64, !tbaa !102, !noalias !337
  call fastcc void @_compute_patches_delta_E(ptr noundef %i.bd, ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.c, ptr noundef %i.d), !noalias !337
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !101, !noalias !337 ; 2 uses
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 116
  %i.bw = load float, ptr %i.bu, align 4, !tbaa !12, !noalias !337
  %.idx279.i = shl i64 %i.bs, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx279.i ; 3 uses
  %.sroa.0329.0.copyload.i = load float, ptr %i.bx, align 16, !tbaa !12, !noalias !337
  %.sroa.6330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.sroa.6330.0.copyload.i = load float, ptr %.sroa.6330.0..sroa_idx.i, align 4, !tbaa !12, !noalias !337 ; 3 uses
  %.sroa.8331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.8331.0.copyload.i = load float, ptr %.sroa.8331.0..sroa_idx.i, align 8, !tbaa !12, !noalias !337
  %i.by = fmul reassoc nsz arcp contract afn float %i.bw, 8.620690e-03
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, f0x3E0D3DCB ; 6 uses
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, f0x3E53DCB1
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bz, %i.bz
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bz
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bz, f0x3E038026
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, f0xBC911AA6
  %i.cf = select reassoc nsz arcp contract afn i1 %i.ca, float %i.cc, float %i.ce ; 3 uses
  %i.cg = load <2 x float>, ptr %i.bv, align 4, !tbaa !12, !noalias !337
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fadd reassoc nsz arcp contract afn <2 x float> %i.cj, %i.ch
  %i.cl = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.ch
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.cn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cm, splat (float f0x3E53DCB1)
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.cm
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.cm
  %i.cq = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float f0x3E038026)
  %i.cr = fadd reassoc nsz arcp contract afn <2 x float> %i.cq, splat (float f0xBC911AA6)
  %i.cs = select <2 x i1> %i.cn, <2 x float> %i.cp, <2 x float> %i.cr ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, 9.642000e-01
  %i.cv = extractelement <2 x float> %i.cs, i64 1
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, f0x3F532CA5
  %i.cx = fcmp reassoc nsz arcp contract afn olt float %.sroa.6330.0.copyload.i, f0x37800000
  %i.cy = select reassoc nsz arcp contract afn i1 %i.cx, float f0x37800000, float %.sroa.6330.0.copyload.i ; 3 uses
  %i.cz = fcmp reassoc nsz arcp contract afn olt float %i.cf, f0x37800000
  %i.da = select reassoc nsz arcp contract afn i1 %i.cz, float f0x37800000, float %i.cf ; 2 uses
  %i.db = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.cu, i64 1
  %i.dd = insertelement <2 x float> poison, float %i.da, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fdiv reassoc nsz arcp contract afn <2 x float> %i.dc, %i.de ; 7 uses
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.cw, %i.da ; 7 uses
  %i.dh = fdiv reassoc nsz arcp contract afn float %.sroa.0329.0.copyload.i, %i.cy ; 9 uses
  %i.di = fdiv reassoc nsz arcp contract afn float %.sroa.6330.0.copyload.i, %i.cy ; 9 uses
  %i.dj = fdiv reassoc nsz arcp contract afn float %.sroa.8331.0.copyload.i, %i.cy ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10327.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14328.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10323.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14324.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10319.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14320.i)
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  switch i32 %i.ax, label %convert_any_XYZ_to_LMS.exit.i [
    i32 2, label %bb.j
    i32 0, label %bb.j
    i32 1, label %convert_any_XYZ_to_LMS.exit.thread.i
  ]

bb.j:                                             ; preds = %dt_simd_memcpy.exit.i, %dt_simd_memcpy.exit.i
  %i.dl = fmul reassoc nsz arcp contract afn <2 x float> %i.dk, <float f0x3F652546, float 1.713500e+00>
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.df, <float 2.664000e-01, float f0xBF400D1B>
  %i.dn = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul reassoc nsz arcp contract afn <2 x float> %i.do, <float -1.614000e-01, float 3.670000e-02>
  %i.dq = fadd reassoc nsz arcp contract afn <2 x float> %i.dm, %i.dl
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dp
  %i.ds = extractelement <2 x float> %i.df, i64 1 ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, 3.890000e-02
  %i.du = extractelement <2 x float> %i.df, i64 0 ; 2 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, -6.850000e-02
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.dt
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dg, 1.029600e+00
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dw, %i.dx
  store float %i.dy, ptr %.sroa.10327.i, align 8, !tbaa !12, !noalias !337
  %i.dz = fadd reassoc nsz arcp contract afn float %i.du, %i.ds
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dg
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit.i

convert_any_XYZ_to_LMS.exit.thread.i:             ; preds = %dt_simd_memcpy.exit.i
  %i.ec = fmul reassoc nsz arcp contract afn <2 x float> %i.dk, <float 4.012880e-01, float f0x3F9A2A3D>
  %i.ed = fmul reassoc nsz arcp contract afn <2 x float> %i.df, <float 6.501730e-01, float -2.502680e-01>
  %i.ee = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul reassoc nsz arcp contract afn <2 x float> %i.ef, <float -5.146100e-02, float 4.585400e-02>
  %i.eh = fadd reassoc nsz arcp contract afn <2 x float> %i.ed, %i.ec
  %i.ei = fadd reassoc nsz arcp contract afn <2 x float> %i.eh, %i.eg
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.eq = fadd reassoc nsz arcp contract afn float %i.el, %i.ej
  %i.er = fadd reassoc nsz arcp contract afn float %i.eq, %i.dg
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, 0.000000e+00
  store float %i.es, ptr %.sroa.14328.i, align 4, !tbaa !12, !noalias !337
  br label %convert_any_XYZ_to_LMS.exit286.thread.i

convert_any_XYZ_to_LMS.exit.i:                    ; preds = %bb.j, %dt_simd_memcpy.exit.i
  %.sink11.i.sroa.phi.i = phi ptr [ %.sroa.14328.i, %bb.j ], [ %.sroa.10327.i, %dt_simd_memcpy.exit.i ]
  %.sink.i.i = phi float [ %i.eb, %bb.j ], [ %i.dg, %dt_simd_memcpy.exit.i ]
  %i.et = phi <2 x float> [ %i.dr, %bb.j ], [ %i.dk, %dt_simd_memcpy.exit.i ] ; 5 uses
  store float %.sink.i.i, ptr %.sink11.i.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  switch i32 %i.ax, label %convert_any_XYZ_to_LMS.exit286.i [
    i32 2, label %bb.k
    i32 0, label %bb.k
    i32 1, label %convert_any_XYZ_to_LMS.exit286.thread.i
  ]

bb.k:                                             ; preds = %convert_any_XYZ_to_LMS.exit.i, %convert_any_XYZ_to_LMS.exit.i
  %i.eu = fmul reassoc nsz arcp contract afn float %i.dh, f0x3F652546
  %i.ev = fmul reassoc nsz arcp contract afn float %i.di, 2.664000e-01
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.eu
  %i.ex = fmul reassoc nsz arcp contract afn float %i.dj, -1.614000e-01
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ew, %i.ex
  %i.ez = fmul reassoc nsz arcp contract afn float %i.dh, f0xBF400D1B
  %i.fa = fmul reassoc nsz arcp contract afn float %i.di, 1.713500e+00
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ez
  %i.fc = fmul reassoc nsz arcp contract afn float %i.dj, 3.670000e-02
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fb, %i.fc
  %i.fe = fmul reassoc nsz arcp contract afn float %i.dh, 3.890000e-02
  %i.ff = fmul reassoc nsz arcp contract afn float %i.di, -6.850000e-02
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.fe
  %i.fh = fmul reassoc nsz arcp contract afn float %i.dj, 1.029600e+00
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fg, %i.fh
  store float %i.fi, ptr %.sroa.10323.i, align 8, !tbaa !12, !noalias !337
  %i.fj = fadd reassoc nsz arcp contract afn float %i.di, %i.dh
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.dj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit286.i

convert_any_XYZ_to_LMS.exit286.thread.i:          ; preds = %convert_any_XYZ_to_LMS.exit.i, %convert_any_XYZ_to_LMS.exit.thread.i
  %i.fm = phi <2 x float> [ %i.et, %convert_any_XYZ_to_LMS.exit.i ], [ %i.ei, %convert_any_XYZ_to_LMS.exit.thread.i ]
  %i.fn = fmul reassoc nsz arcp contract afn float %i.dh, 4.012880e-01
  %i.fo = fmul reassoc nsz arcp contract afn float %i.di, 6.501730e-01
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fn
  %i.fq = fmul reassoc nsz arcp contract afn float %i.dj, -5.146100e-02
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fp, %i.fq
  %i.fs = fmul reassoc nsz arcp contract afn float %i.dh, -2.502680e-01
  %i.ft = fmul reassoc nsz arcp contract afn float %i.di, f0x3F9A2A3D
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, %i.fs
  %i.fv = fmul reassoc nsz arcp contract afn float %i.dj, 4.585400e-02
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fu, %i.fv
  %i.fx = fmul reassoc nsz arcp contract afn float %i.dh, -2.079000e-03
  %i.fy = fmul reassoc nsz arcp contract afn float %i.di, 4.895200e-02
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, %i.fx
  %i.ga = fmul reassoc nsz arcp contract afn float %i.dj, 9.531270e-01
  %i.gb = fadd reassoc nsz arcp contract afn float %i.fz, %i.ga
  store float %i.gb, ptr %.sroa.10323.i, align 8, !tbaa !12, !noalias !337
  %i.gc = fadd reassoc nsz arcp contract afn float %i.di, %i.dh
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.dj
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, 0.000000e+00
  store float %i.ge, ptr %.sroa.14324.i, align 4, !tbaa !12, !noalias !337
  br label %bb.l

convert_any_XYZ_to_LMS.exit286.i:                 ; preds = %bb.k, %convert_any_XYZ_to_LMS.exit.i
  %.sroa.6322.0.i = phi nsz float [ %i.fd, %bb.k ], [ %i.di, %convert_any_XYZ_to_LMS.exit.i ] ; 4 uses
  %.sroa.0321.0.i = phi nsz float [ %i.ey, %bb.k ], [ %i.dh, %convert_any_XYZ_to_LMS.exit.i ] ; 4 uses
  %.sink11.i284.sroa.phi.i = phi ptr [ %.sroa.14324.i, %bb.k ], [ %.sroa.10323.i, %convert_any_XYZ_to_LMS.exit.i ]
  %.sink.i285.i = phi float [ %i.fl, %bb.k ], [ %i.dj, %convert_any_XYZ_to_LMS.exit.i ]
  store float %.sink.i285.i, ptr %.sink11.i284.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  switch i32 %i.ax, label %convert_any_XYZ_to_LMS.exit289.i [
    i32 2, label %convert_any_XYZ_to_LMS.exit289.sink.split.i
    i32 0, label %convert_any_XYZ_to_LMS.exit289.sink.split.i
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %convert_any_XYZ_to_LMS.exit286.i, %convert_any_XYZ_to_LMS.exit286.thread.i
  %.sroa.6322.1.i = phi nsz float [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fw, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  %.sroa.0321.1.i = phi nsz float [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fr, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  %i.gf = phi <2 x float> [ %i.et, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fm, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  br label %convert_any_XYZ_to_LMS.exit289.sink.split.i

convert_any_XYZ_to_LMS.exit289.sink.split.i:      ; preds = %bb.l, %convert_any_XYZ_to_LMS.exit286.i, %convert_any_XYZ_to_LMS.exit286.i
  %.sink.i = phi float [ f0x3F555D6B, %bb.l ], [ f0x3F519131, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F519131, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.6322.2.ph.i = phi float [ %.sroa.6322.1.i, %bb.l ], [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.0321.2.ph.i = phi float [ %.sroa.0321.1.i, %bb.l ], [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.6318.0.ph.i = phi float [ f0x3F801ED4, %bb.l ], [ f0x3F829D89, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F829D89, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.0317.0.ph.i = phi float [ f0x3F7EA061, %bb.l ], [ f0x3F7F0C42, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F7F0C42, %convert_any_XYZ_to_LMS.exit286.i ]
  %i.gg = phi <2 x float> [ %i.gf, %bb.l ], [ %i.et, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.et, %convert_any_XYZ_to_LMS.exit286.i ]
  store float %.sink.i, ptr %.sroa.10319.i, align 8, !tbaa !12, !noalias !337
  %i.gh = fmul reassoc nsz arcp contract afn float %.sroa.6318.0.ph.i, %.sroa.6322.2.ph.i
  br label %convert_any_XYZ_to_LMS.exit289.i

convert_any_XYZ_to_LMS.exit289.i:                 ; preds = %convert_any_XYZ_to_LMS.exit289.sink.split.i, %convert_any_XYZ_to_LMS.exit286.i
  %.sroa.6322.2.i = phi float [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.gh, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sroa.0321.2.i = phi nsz float [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0321.2.ph.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sroa.0317.0.i = phi nsz float [ 9.642120e-01, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0317.0.ph.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sink11.i287.sroa.phi.i = phi ptr [ %.sroa.10319.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.14320.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sink.i288.i = phi float [ f0x3F533F8A, %convert_any_XYZ_to_LMS.exit286.i ], [ 0.000000e+00, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %i.gi = phi <2 x float> [ %i.et, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.gg, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  store float %.sink.i288.i, ptr %.sink11.i287.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i)
  store float 0.000000e+00, ptr %.sroa.33.i, align 4, !noalias !337
  %i.gj = fmul reassoc nsz arcp contract afn float %.sroa.0317.0.i, %.sroa.0321.2.i
  %i.gk = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %.sroa.6322.2.i, i64 1
  %i.gm = fdiv reassoc nsz arcp contract afn <2 x float> %i.gl, %i.gi ; 10 uses
  %.sroa.10319.i.0..sroa.10319.i.0..sroa.10319.i.0..sroa.10319.0..sroa.10319.8..i = load float, ptr %.sroa.10319.i, align 8, !tbaa !12, !noalias !337
  %.sroa.10323.i.0..sroa.10323.i.0..sroa.10323.i.0..sroa.10323.0..sroa.10323.8..i = load float, ptr %.sroa.10323.i, align 8, !tbaa !12, !noalias !337
  %i.gn = fmul reassoc nsz arcp contract afn float %.sroa.10323.i.0..sroa.10323.i.0..sroa.10323.i.0..sroa.10323.0..sroa.10323.8..i, %.sroa.10319.i.0..sroa.10319.i.0..sroa.10319.i.0..sroa.10319.0..sroa.10319.8..i
  %.sroa.10327.i.0..sroa.10327.i.0..sroa.10327.i.0..sroa.10327.0..sroa.10327.8..i = load float, ptr %.sroa.10327.i, align 8, !tbaa !12, !noalias !337
  %i.go = fdiv reassoc nsz arcp contract afn float %i.gn, %.sroa.10327.i.0..sroa.10327.i.0..sroa.10327.i.0..sroa.10327.0..sroa.10327.8..i ; 8 uses
  store float %i.go, ptr %.sroa.25.i, align 8, !tbaa !12, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.042.i)
  switch i32 %i.ax, label %bb.o [
    i32 2, label %bb.m
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %convert_any_XYZ_to_LMS.exit289.i, %convert_any_XYZ_to_LMS.exit289.i
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, <float f0x3F7CAC08, float 5.184000e-01>
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, <float 4.323000e-01, float -1.471000e-01>
  %i.gs = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul reassoc nsz arcp contract afn <2 x float> %i.gt, <float 4.930000e-02, float 1.600000e-01>
  %i.gv = fadd reassoc nsz arcp contract afn <2 x float> %i.gr, %i.gq
  %i.gw = fadd reassoc nsz arcp contract afn <2 x float> %i.gv, %i.gu
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.gx, ptr %.sroa.042.i, align 16, !tbaa !12, !noalias !337
  %i.gy = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, -8.500000e-03
  %i.ha = extractelement <2 x float> %i.gm, i64 1 ; 2 uses
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, 4.000000e-02
  %i.hc = fadd reassoc nsz arcp contract afn float %i.gz, %i.hb
  %i.hd = fmul reassoc nsz arcp contract afn float %i.go, 9.685000e-01
  %i.he = fadd reassoc nsz arcp contract afn float %i.hc, %i.hd
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1636 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  store float %i.he, ptr %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1636, align 8, !tbaa !12, !noalias !337
  %i.hf = fadd reassoc nsz arcp contract afn float %i.gy, %i.ha
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, %i.go
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit.i

bb.n:                                             ; preds = %convert_any_XYZ_to_LMS.exit289.i
  %i.hi = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  %i.hj = extractelement <2 x float> %i.gm, i64 1 ; 2 uses
  %i.hk = insertelement <2 x float> poison, float %i.go, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul reassoc nsz arcp contract afn <2 x float> %i.hl, <float 1.491870e-01, float -8.974000e-03>
  %i.hn = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, <float 3.875200e-01, float f0xBF8170CE>
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hp = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, <float f0x3FEE583F, float 6.214470e-01>
  %i.hq = fadd reassoc nsz arcp contract afn <2 x float> %i.ho, %i.hp
  %i.hr = fadd reassoc nsz arcp contract afn <2 x float> %i.hq, %i.hm
  store <2 x float> %i.hr, ptr %.sroa.042.i, align 16, !tbaa !12, !noalias !337
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hi, -1.584100e-02
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hj, -3.412300e-02
  %i.hu = fadd reassoc nsz arcp contract afn float %i.hs, %i.ht
  %i.hv = fmul reassoc nsz arcp contract afn float %i.go, f0x3F866538
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hu, %i.hv
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1635 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  store float %i.hw, ptr %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1635, align 8, !tbaa !12, !noalias !337
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hi, %i.hj
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %i.go
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit.i

bb.o:                                             ; preds = %convert_any_XYZ_to_LMS.exit289.i
  %i.ia = extractelement <2 x float> %i.gm, i64 0
  store float %i.ia, ptr %.sroa.042.i, align 16, !tbaa !12, !noalias !337
  %i.ib = extractelement <2 x float> %i.gm, i64 1
  %.sroa.042.i.4.i.4.i.4..sroa_idx1634 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 4
  store float %i.ib, ptr %.sroa.042.i.4.i.4.i.4..sroa_idx1634, align 4, !tbaa !12, !noalias !337
  br label %convert_any_LMS_to_XYZ.exit.i

convert_any_LMS_to_XYZ.exit.i:                    ; preds = %bb.o, %bb.n, %bb.m
  %.sink11.i290.sroa.phi.i = phi ptr [ %.sroa.042.i.8.i.8.i.8.gep.sroa_idx, %bb.o ], [ %.sroa.042.i.12.i.12.i.12.i.12.i.12.i.12.gep40.sroa_idx, %bb.n ], [ %.sroa.042.i.12.i.12.i.12.i.12.i.12.i.12.gep40.sroa_idx, %bb.m ]
  %.sink.i291.i = phi float [ %i.go, %bb.o ], [ %i.hz, %bb.n ], [ %i.hh, %bb.m ]
  store float %.sink.i291.i, ptr %.sink11.i290.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  %.sroa.042.i.0..sroa.042.i.0..sroa.042.i.0..sroa.042.0..sroa.042.0..sroa.042.0..val.i.i = load <4 x float>, ptr %.sroa.042.i, align 16, !tbaa !103, !noalias !337
  %i.ic = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.042.i.0..sroa.042.i.0..sroa.042.i.0..sroa.042.0..sroa.042.0..sroa.042.0..val.i.i, <4 x float> zeroinitializer) ; 2 uses
  %i.id = extractelement <4 x float> %i.ic, i64 1 ; 2 uses
  %i.ie = fcmp reassoc nsz arcp contract afn olt float %i.id, f0x37800000
  %i.if = select reassoc nsz arcp contract afn i1 %i.ie, float f0x37800000, float %i.id
  %i.ig = insertelement <4 x float> poison, float %i.if, i64 0
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fdiv reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ih ; 2 uses
  store <4 x float> %i.ii, ptr %.sroa.042.i, align 16, !tbaa !12, !noalias !337
  %i.ij = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ii, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x float> %i.ij, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i = extractelement <4 x float> %i.ij, i64 1 ; 2 uses
  %i.ik = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract4.i.i
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x float> %i.ij, i64 2
  %i.il = fadd reassoc nsz arcp contract afn float %i.ik, %.sroa.0.8.vec.extract.i.i ; 3 uses
  %i.im = fcmp reassoc nsz arcp contract afn ogt float %i.il, 0.000000e+00 ; 2 uses
  %i.in = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %i.il
  %i.io = select i1 %i.im, float %i.in, float 3.456700e-01 ; 4 uses
  %i.ip = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, %i.il
  %i.iq = select i1 %i.im, float %i.ip, float 3.585000e-01 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aa, i64 304
  store float %i.io, ptr %i.ir, align 16, !tbaa !12, !noalias !337
  %i.is = getelementptr inbounds nuw i8, ptr %i.aa, i64 308
  store float %i.iq, ptr %i.is, align 4, !tbaa !12, !noalias !337
  %.sroa.042.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 4
  store float 1.000000e+00, ptr %.sroa.042.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !12, !noalias !337
  %i.it = fadd reassoc nsz arcp contract afn float %i.io, %i.iq
  %i.iu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %6 = insertelement <2 x float> poison, float %i.iu, i64 0
  %7 = insertelement <2 x float> %6, float %i.io, i64 1
  %8 = insertelement <2 x float> poison, float %i.iq, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fdiv reassoc nsz arcp contract afn <2 x float> %7, %9 ; 5 uses
  %11 = extractelement <2 x float> %10, i64 1     ; 3 uses
  store float %11, ptr %.sroa.042.i, align 16, !tbaa !12, !noalias !337
  %12 = extractelement <2 x float> %10, i64 0     ; 4 uses
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1637 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  store float %12, ptr %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1637, align 8, !tbaa !12, !noalias !337
  %i.iv = icmp ult i32 %i.ax, 3
  %13 = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %10, <2 x i32> <i32 3, i32 1>
  br i1 %i.iv, label %switch.lookup, label %convert_any_XYZ_to_LMS.exit294.i

switch.lookup:                                    ; preds = %convert_any_LMS_to_XYZ.exit.i
  %i.iw = zext nneg i32 %i.ax to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.52, i64 %i.iw
  %switch.load = load float, ptr %switch.gep, align 4
  %i.ix = zext nneg i32 %i.ax to i64
  %switch.gep1465 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.53, i64 %i.ix
  %switch.load1466 = load float, ptr %switch.gep1465, align 4
  %i.iy = zext nneg i32 %i.ax to i64
  %switch.gep1467 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.54, i64 %i.iy
  %switch.load1468 = load float, ptr %switch.gep1467, align 4
  %i.iz = zext nneg i32 %i.ax to i64
  %switch.gep1469 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.55, i64 %i.iz
  %switch.load1470 = load float, ptr %switch.gep1469, align 4
  %i.ja = zext nneg i32 %i.ax to i64
  %switch.gep1471 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.56, i64 %i.ja
  %switch.load1472 = load float, ptr %switch.gep1471, align 4
  %i.jb = zext nneg i32 %i.ax to i64
  %switch.gep1473 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.57, i64 %i.jb
  %switch.load1474 = load float, ptr %switch.gep1473, align 4
  %i.jc = zext nneg i32 %i.ax to i64
  %switch.gep1475 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.58, i64 %i.jc
  %switch.load1476 = load float, ptr %switch.gep1475, align 4
  %i.jd = zext nneg i32 %i.ax to i64
  %switch.gep1477 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.59, i64 %i.jd
  %switch.load1478 = load float, ptr %switch.gep1477, align 4
  %i.je = zext nneg i32 %i.ax to i64
  %switch.gep1479 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.60, i64 %i.je
  %switch.load1480 = load float, ptr %switch.gep1479, align 4
  %i.jf = insertelement <2 x float> poison, float %switch.load, i64 0
  %i.jg = insertelement <2 x float> %i.jf, float %switch.load1470, i64 1
  %14 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jh = fmul reassoc nsz arcp contract afn <2 x float> %i.jg, %14
  %i.ji = insertelement <2 x float> poison, float %switch.load1466, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %switch.load1472, i64 1
  %i.jk = fadd reassoc nsz arcp contract afn <2 x float> %i.jh, %i.jj
  %i.jl = insertelement <2 x float> poison, float %switch.load1468, i64 0
  %i.jm = insertelement <2 x float> %i.jl, float %switch.load1474, i64 1
  %i.jn = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fmul reassoc nsz arcp contract afn <2 x float> %i.jm, %i.jn
  %i.jp = fadd reassoc nsz arcp contract afn <2 x float> %i.jo, %i.jk
  %i.jq = fmul reassoc nsz arcp contract afn float %switch.load1476, %11
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jq, %switch.load1478
  %i.js = fmul reassoc nsz arcp contract afn float %switch.load1480, %12
  %i.jt = fadd reassoc nsz arcp contract afn float %i.js, %i.jr
  store float %i.jt, ptr %.sroa.25.i, align 8, !tbaa !12, !noalias !337
  %i.ju = fadd reassoc nsz arcp contract afn float %11, 1.000000e+00
  %i.jv = fadd reassoc nsz arcp contract afn float %i.ju, %12
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit294.i

convert_any_XYZ_to_LMS.exit294.i:                 ; preds = %convert_any_LMS_to_XYZ.exit.i, %switch.lookup
  %.sink11.i292.sroa.phi.i = phi ptr [ %.sroa.25.i, %convert_any_LMS_to_XYZ.exit.i ], [ %.sroa.33.i, %switch.lookup ]
  %.sink.i293.i = phi float [ %12, %convert_any_LMS_to_XYZ.exit.i ], [ %i.jw, %switch.lookup ]
  %i.jx = phi <2 x float> [ %13, %convert_any_LMS_to_XYZ.exit.i ], [ %i.jp, %switch.lookup ] ; 3 uses
  store float %.sink.i293.i, ptr %.sink11.i292.sroa.phi.i, align 4, !tbaa !12, !noalias !337
  %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i = load float, ptr %.sroa.25.i, align 8, !tbaa !12, !noalias !337 ; 5 uses
  %i.jy = fdiv reassoc nsz arcp contract afn float f0x3F51729B, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.jz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jy, float 8.340000e-02)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.kb = load i64, ptr %i.ka, align 16, !tbaa !101, !noalias !337 ; 2 uses
  %.not.i = icmp eq i64 %i.kb, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %convert_any_XYZ_to_LMS.exit294.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.ke = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jx
  %i.kf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.kg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.kh = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jx
  %i.ki = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.kj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.kk = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jx
  br label %bb.p

._crit_edge.i:                                    ; preds = %convert_any_LMS_to_XYZ.exit297.i, %convert_any_XYZ_to_LMS.exit294.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31, !noalias !337
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !12, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31, !noalias !337
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !12, !noalias !337
  %i.kl = load ptr, ptr %i.bo, align 64, !tbaa !102, !noalias !337
  call fastcc void @_compute_patches_delta_E(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bq, ptr noundef %i.kl, ptr noundef %i.f, ptr noundef %i.g), !noalias !337
  %i.km = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.ko = load i64, ptr %i.kn, align 16, !tbaa !101, !noalias !337
  %i.kp = mul i64 %i.ko, 24
  %i.kq = tail call ptr @dt_alloc_aligned(i64 noundef %i.kp) #31, !noalias !337 ; 37 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kq, i64 64) ]
  %i.kr = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 48
  %i.kt = load i64, ptr %i.ks, align 16, !tbaa !101, !noalias !337
  %i.ku = mul i64 %i.kt, 216
  %i.kv = tail call ptr @dt_alloc_aligned(i64 noundef %i.ku) #31, !noalias !337 ; 71 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kv, i64 64) ]
  %i.kw = load ptr, ptr %i.ay, align 8, !tbaa !100, !noalias !337 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.ky = load i64, ptr %i.kx, align 16, !tbaa !101, !noalias !337 ; 4 uses
  %.not248.i = icmp eq i64 %i.ky, 0
  br i1 %.not248.i, label %._crit_edge241.thread.i, label %.lr.ph240.i

.lr.ph240.i:                                      ; preds = %._crit_edge.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.aa, i64 448
  %i.la = load i32, ptr %i.kz, align 64, !tbaa !104, !noalias !337
  %i.lb = uitofp reassoc nsz arcp contract afn i64 %i.ky to float
  %i.lc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.lb
  %i.ld = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.lc)
  %i.le = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.lg = icmp ult i32 %i.ax, 3
  %i.lh = zext nneg i32 %i.ax to i64
  %switch.gep1482 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.26, i64 %i.lh
  %i.li = zext nneg i32 %i.ax to i64
  %switch.gep1484 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.53, i64 %i.li
  %i.lj = zext nneg i32 %i.ax to i64
  %switch.gep1486 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.28, i64 %i.lj
  %i.lk = zext nneg i32 %i.ax to i64
  %switch.gep1488 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.29, i64 %i.lk
  %i.ll = zext nneg i32 %i.ax to i64
  %switch.gep1490 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.56, i64 %i.ll
  %i.lm = zext nneg i32 %i.ax to i64
  %switch.gep1492 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.31, i64 %i.lm
  %i.ln = zext nneg i32 %i.ax to i64
  %switch.gep1494 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.32, i64 %i.ln
  %i.lo = zext nneg i32 %i.ax to i64
  %switch.gep1496 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.59, i64 %i.lo
  %i.lp = zext nneg i32 %i.ax to i64
  %switch.gep1498 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.34, i64 %i.lp
  br label %bb.u

bb.p:                                             ; preds = %convert_any_LMS_to_XYZ.exit297.i, %.lr.ph.i
  %.0264232.i = phi i64 [ 0, %.lr.ph.i ], [ %i.po, %convert_any_LMS_to_XYZ.exit297.i ] ; 2 uses
  %.idx278.i = shl i64 %.0264232.i, 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx278.i ; 13 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !12, !noalias !337 ; 5 uses
  %i.lt = fcmp reassoc nsz arcp contract afn ogt float %i.ls, f0x37800000 ; 2 uses
  br i1 %i.lt, label %.split.us.preheader.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.p
  %i.lu = load float, ptr %i.lq, align 16, !tbaa !12, !noalias !337
  %i.lv = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.lw = insertelement <2 x float> %i.lv, float %i.ls, i64 1
  %i.lx = fmul reassoc nsz arcp contract afn <2 x float> %i.lw, splat (float 6.553600e+04)
  store <2 x float> %i.lx, ptr %i.lq, align 16, !tbaa !12, !noalias !337
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.lz = load float, ptr %i.ly, align 8, !tbaa !12, !noalias !337
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lz, 6.553600e+04
  store float %i.ma, ptr %i.ly, align 8, !tbaa !12, !noalias !337
  br label %downscale_vector.exit.i

.split.us.preheader.i.i:                          ; preds = %bb.p
  %i.mb = fadd reassoc nsz arcp contract afn float %i.ls, f0x37800000 ; 2 uses
  %i.mc = load float, ptr %i.lq, align 16, !tbaa !12, !noalias !337
  %i.md = insertelement <2 x float> poison, float %i.mc, i64 0
  %i.me = insertelement <2 x float> %i.md, float %i.ls, i64 1
  %i.mf = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = fdiv reassoc nsz arcp contract afn <2 x float> %i.me, %i.mg
  store <2 x float> %i.mh, ptr %i.lq, align 16, !tbaa !12, !noalias !337
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !12, !noalias !337
  %i.mk = fdiv reassoc nsz arcp contract afn float %i.mj, %i.mb
  store float %i.mk, ptr %i.mi, align 8, !tbaa !12, !noalias !337
  br label %downscale_vector.exit.i

downscale_vector.exit.i:                          ; preds = %.split.us.preheader.i.i, %.split.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31, !noalias !337
  call fastcc void @convert_any_XYZ_to_LMS(ptr noundef nonnull %i.lq, ptr noundef nonnull %i.e, i32 noundef %i.ax), !noalias !337
  %.sroa.0279.0.copyload.i = load float, ptr %i.e, align 16, !tbaa !12, !noalias !337 ; 4 uses
  switch i32 %i.ax, label %.preheader.preheader.i [
    i32 2, label %bb.q
    i32 0, label %bb.r
    i32 1, label %.thread205.i
    i32 3, label %.thread204.i
  ]

.preheader.preheader.i:                           ; preds = %downscale_vector.exit.i
  %.sroa.10282.0.copyload.i = load float, ptr %i.kc, align 4, !tbaa !12, !noalias !337
  %.sroa.17.0.copyload.i = load float, ptr %i.kd, align 8, !tbaa !12, !noalias !337
  %i.ml = insertelement <2 x float> poison, float %.sroa.0279.0.copyload.i, i64 0
  %i.mm = insertelement <2 x float> %i.ml, float %.sroa.10282.0.copyload.i, i64 1
  br label %convert_any_LMS_to_XYZ.exit297.i

bb.q:                                             ; preds = %downscale_vector.exit.i
  %i.mn = load float, ptr %i.kc, align 4, !tbaa !12, !noalias !337
  %i.mo = load float, ptr %i.kd, align 8, !tbaa !12, !noalias !337
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.kj ; 3 uses
  %i.mq = fcmp reassoc nsz arcp contract afn ogt float %i.mp, 0.000000e+00
  %i.mr = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mp, float %i.jz)
  %i.ms = select reassoc nsz arcp contract afn i1 %i.mq, float %i.mr, float %i.mp
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, f0x3F51729B
  br label %.thread.i

bb.r:                                             ; preds = %downscale_vector.exit.i
  %i.mu = load float, ptr %i.kc, align 4, !tbaa !12, !noalias !337
  %i.mv = load float, ptr %i.kd, align 8, !tbaa !12, !noalias !337
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, f0x3F51729B
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, %i.ki
  br label %.thread.i

.thread205.i:                                     ; preds = %downscale_vector.exit.i
  %i.my = load float, ptr %i.kc, align 4, !tbaa !12, !noalias !337
  %i.mz = load float, ptr %i.kd, align 8, !tbaa !12, !noalias !337
  %i.na = fmul reassoc nsz arcp contract afn float %i.mz, 8.330360e-01
  %i.nb = fmul reassoc nsz arcp contract afn float %i.na, %i.kg ; 3 uses
  %i.nc = insertelement <2 x float> poison, float %.sroa.0279.0.copyload.i, i64 0
  %i.nd = insertelement <2 x float> %i.nc, float %i.my, i64 1
  %i.ne = fmul reassoc nsz arcp contract afn <2 x float> %i.nd, <float 9.945350e-01, float f0x3F8020AB>
  %i.nf = fmul reassoc nsz arcp contract afn <2 x float> %i.ne, %i.kh ; 4 uses
  %i.ng = fmul reassoc nsz arcp contract afn <2 x float> %i.nf, <float 3.875200e-01, float f0xBF8170CE>
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ni = fmul reassoc nsz arcp contract afn <2 x float> %i.nf, <float f0x3FEE583F, float 6.214470e-01>
  %i.nj = fadd reassoc nsz arcp contract afn <2 x float> %i.ni, %i.nh
  %i.nk = insertelement <2 x float> poison, float %i.nb, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nm = fmul reassoc nsz arcp contract afn <2 x float> %i.nl, <float 1.491870e-01, float -8.974000e-03>
  %i.nn = fadd reassoc nsz arcp contract afn <2 x float> %i.nj, %i.nm
  %i.no = extractelement <2 x float> %i.nf, i64 0 ; 2 uses
  %i.np = fmul reassoc nsz arcp contract afn float %i.no, -1.584100e-02
  %i.nq = extractelement <2 x float> %i.nf, i64 1 ; 2 uses
  %i.nr = fmul reassoc nsz arcp contract afn float %i.nq, -3.412300e-02
  %i.ns = fadd reassoc nsz arcp contract afn float %i.nr, %i.np
  %i.nt = fmul reassoc nsz arcp contract afn float %i.nb, f0x3F866538
  %i.nu = fadd reassoc nsz arcp contract afn float %i.ns, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store float %i.nu, ptr %i.nv, align 8, !tbaa !12, !noalias !337
  %i.nw = fadd reassoc nsz arcp contract afn float %i.nq, %i.no
  %i.nx = fadd reassoc nsz arcp contract afn float %i.nw, %i.nb
  %i.ny = fmul reassoc nsz arcp contract afn float %i.nx, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit297.i

.thread204.i:                                     ; preds = %downscale_vector.exit.i
  %i.nz = fmul reassoc nsz arcp contract afn float %.sroa.0279.0.copyload.i, 9.642120e-01
  %i.oa = load float, ptr %i.kc, align 4, !tbaa !12, !noalias !337
  %i.ob = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.oc = insertelement <2 x float> %i.ob, float %i.oa, i64 1
  %i.od = fmul reassoc nsz arcp contract afn <2 x float> %i.oc, %i.ke
  %i.oe = load float, ptr %i.kd, align 8, !tbaa !12, !noalias !337
  %i.of = fmul reassoc nsz arcp contract afn float %i.oe, f0x3F533F8A
  %i.og = fmul reassoc nsz arcp contract afn float %i.of, %i.kf
  br label %convert_any_LMS_to_XYZ.exit297.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.sroa.17.0.i = phi nsz float [ %i.mx, %bb.r ], [ %i.mt, %bb.q ] ; 3 uses
  %.pn.in.i = phi float [ %i.mu, %bb.r ], [ %i.mn, %bb.q ]
  %i.oh = insertelement <2 x float> poison, float %.sroa.0279.0.copyload.i, i64 0
  %i.oi = insertelement <2 x float> %i.oh, float %.pn.in.i, i64 1
  %i.oj = fmul reassoc nsz arcp contract afn <2 x float> %i.oi, <float 9.960780e-01, float f0x3F82A487>
  %i.ok = insertelement <2 x float> poison, float %.sroa.17.0.i, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> zeroinitializer
  %i.om = fmul reassoc nsz arcp contract afn <2 x float> %i.ol, <float 1.600000e-01, float 4.930000e-02>
  %i.on = fmul reassoc nsz arcp contract afn <2 x float> %i.oj, %i.kk ; 4 uses
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> zeroinitializer
  %i.op = fmul reassoc nsz arcp contract afn <2 x float> %i.oo, <float f0x3F7CAC08, float 4.323000e-01>
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.bss = fmul reassoc nsz arcp contract afn float %i.bsr, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit306.i

bb.av:                                            ; preds = %convert_any_XYZ_to_LMS.exit303.i
  store float %i.bqs, ptr %i.bps, align 16, !tbaa !12, !noalias !337
  store float %i.bra, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12, !noalias !337
  br label %convert_any_LMS_to_XYZ.exit306.i

convert_any_LMS_to_XYZ.exit306.i:                 ; preds = %bb.av, %bb.au, %bb.at
  %.sink11.i304.i = phi i64 [ 8, %bb.av ], [ 12, %bb.au ], [ 12, %bb.at ]
  %.sink.i305.i = phi float [ %i.bri, %bb.av ], [ %i.bss, %bb.au ], [ %i.bsa, %bb.at ]
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bps, i64 %.sink11.i304.i
  store float %.sink.i305.i, ptr %i.bst, align 4, !tbaa !12, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  %i.bsu = add nuw i64 %.0256244.i, 1             ; 2 uses
  %exitcond270.not.i = icmp eq i64 %i.bsu, %i.bjr
  br i1 %exitcond270.not.i, label %._crit_edge246.i, label %.lr.ph245.i

bb.aw:                                            ; preds = %._crit_edge246.i
  %i.bsv = fcmp reassoc nsz arcp contract afn ugt float %i.bpq, 2.300000e+00
  br i1 %i.bsv, label %bb.ax, label %_extract_color_checker.exit

bb.ax:                                            ; preds = %bb.aw
  %i.bsw = fcmp reassoc nsz arcp contract afn ugt float %i.bpq, 3.400000e+00
  %.str.312..str.311.i = select i1 %i.bsw, ptr @.str.312, ptr @.str.311
  br label %_extract_color_checker.exit

_extract_color_checker.exit:                      ; preds = %._crit_edge246.i, %bb.aw, %bb.ax
  %.str.310.sink.i = phi ptr [ @.str.309, %._crit_edge246.i ], [ @.str.310, %bb.aw ], [ %.str.312..str.311.i, %bb.ax ]
  %i.bsx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.310.sink.i, i32 noundef 5) #31, !noalias !337
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.aa, i64 536
  store i32 1, ptr %i.bsy, align 8, !tbaa !108, !noalias !337
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.aa, i64 712 ; 2 uses
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !109, !noalias !337
  call void @g_free(ptr noundef %i.bta) #31, !noalias !337
  %i.btb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.313, i32 noundef 5) #31, !noalias !337
  %i.btc = load float, ptr %i.c, align 4, !tbaa !12, !noalias !337
  %i.btd = fpext reassoc nsz arcp contract afn float %i.btc to double
  %i.bte = load float, ptr %i.d, align 4, !tbaa !12, !noalias !337
  %i.btf = fpext reassoc nsz arcp contract afn float %i.bte to double
  %i.btg = load float, ptr %i.f, align 4, !tbaa !12, !noalias !337
  %i.bth = fpext reassoc nsz arcp contract afn float %i.btg to double
  %i.bti = load float, ptr %i.g, align 4, !tbaa !12, !noalias !337
  %i.btj = fpext reassoc nsz arcp contract afn float %i.bti to double
  %i.btk = fpext reassoc nsz arcp contract afn float %i.bpq to double
  %i.btl = load float, ptr %i.j, align 4, !tbaa !12, !noalias !337
  %i.btm = fpext reassoc nsz arcp contract afn float %i.btl to double
  %i.btn = load float, ptr %i.k, align 4, !tbaa !12, !noalias !337
  %i.bto = fpext reassoc nsz arcp contract afn float %i.btn to double
  %i.btp = load float, ptr %i.bim, align 64, !tbaa !12, !noalias !337
  %i.btq = fpext reassoc nsz arcp contract afn float %i.btp to double
  %i.btr = load float, ptr %i.bin, align 4, !tbaa !12, !noalias !337
  %i.bts = fpext reassoc nsz arcp contract afn float %i.btr to double
  %i.btt = load float, ptr %i.bit, align 8, !tbaa !12, !noalias !337
  %i.btu = fpext reassoc nsz arcp contract afn float %i.btt to double
  %i.btv = load float, ptr %i.biw, align 16, !tbaa !12, !noalias !337
  %i.btw = fpext reassoc nsz arcp contract afn float %i.btv to double
  %i.btx = load float, ptr %i.bix, align 4, !tbaa !12, !noalias !337
  %i.bty = fpext reassoc nsz arcp contract afn float %i.btx to double
  %i.btz = load float, ptr %i.bjd, align 8, !tbaa !12, !noalias !337
  %i.bua = fpext reassoc nsz arcp contract afn float %i.btz to double
  %i.bub = load float, ptr %i.bjg, align 32, !tbaa !12, !noalias !337
  %i.buc = fpext reassoc nsz arcp contract afn float %i.bub to double
  %i.bud = load float, ptr %i.bjh, align 4, !tbaa !12, !noalias !337
  %i.bue = fpext reassoc nsz arcp contract afn float %i.bud to double
  %i.buf = load float, ptr %i.bjn, align 8, !tbaa !12, !noalias !337
  %i.bug = fpext reassoc nsz arcp contract afn float %i.buf to double
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.bm, i64 1
  %i.buh = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %.sroa.0.4.vec.extract.i)
  %i.bui = fpext reassoc nsz arcp contract afn float %i.buh to double
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bm, i64 0
  %i.buj = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i to double
  %i.buk = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.btb, ptr noundef %i.bsx, double noundef %i.btd, double noundef %i.btf, double noundef %i.bth, double noundef %i.btj, double noundef %i.btk, double noundef %i.btm, double noundef %i.bto, ptr noundef %i.bpp, double noundef %i.btq, double noundef %i.bts, double noundef %i.btu, double noundef %i.btw, double noundef %i.bty, double noundef %i.bua, double noundef %i.buc, double noundef %i.bue, double noundef %i.bug, double noundef %i.bui, double noundef %i.buj) #31, !noalias !337
  store ptr %i.buk, ptr %i.bsz, align 8, !tbaa !109, !noalias !337
  call void @free(ptr noundef nonnull %i.bd) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.042.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10319.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14320.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10323.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14324.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10327.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14328.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31, !noalias !337
  store i32 0, ptr %i.ap, align 16, !tbaa !97
  %i.bul = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.au) #31 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.g, %bb.h, %_extract_color_checker.exit, %bb.f
  %i.bum = getelementptr inbounds nuw i8, ptr %i.t, i64 148
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !110
  %i.buo = icmp eq i32 %i.bun, 10
  br i1 %i.buo, label %bb.az, label %bb.bn

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #31
  %i.bup = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.r, align 16, !tbaa !12
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 112
  %i.bur = call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.buq) #31
  %.not.i129 = icmp eq i32 %i.bur, 0
  br i1 %.not.i129, label %_get_white_balance_coeff.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bus = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 3 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 2480
  %i.buu = load i32, ptr %i.but, align 16, !tbaa !111
  %.not.i.i130 = icmp eq i32 %i.buu, 0
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bus, i64 2400
  %..i.i = select i1 %.not.i.i130, i64 2416, i64 2448
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bus, i64 %..i.i
  %i.bux = call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.buv, ptr noundef nonnull %i.buw) #31
  %.not26.i = icmp eq i32 %i.bux, 0
  br i1 %.not26.i, label %bb.bb, label %_get_white_balance_coeff.exit

bb.bb:                                            ; preds = %bb.ba
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bup, i64 2416
  %i.buz = load double, ptr %i.buy, align 16, !tbaa !105 ; 2 uses
  %i.bva = fcmp reassoc nsz arcp contract afn ogt double %i.buz, 0.000000e+00
  br i1 %i.bva, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bup, i64 2424
  %i.bvc = load double, ptr %i.bvb, align 8, !tbaa !105
  %i.bvd = fcmp reassoc nsz arcp contract afn ogt double %i.bvc, 0.000000e+00
  br i1 %i.bvd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bup, i64 2432
  %i.bvf = load double, ptr %i.bve, align 16, !tbaa !105
  %i.bvg = fcmp reassoc nsz arcp contract afn ogt double %i.bvf, 0.000000e+00
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.bvh = phi i1 [ false, %bb.bc ], [ false, %bb.bb ], [ %i.bvg, %bb.bd ]
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bup, i64 2400
  %i.bvj = load float, ptr %i.bvi, align 16, !tbaa !12 ; 2 uses
  %i.bvk = fcmp reassoc nsz arcp contract afn ogt float %i.bvj, 1.000000e+00
  br i1 %i.bvk, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bup, i64 2404
  %i.bvm = load float, ptr %i.bvl, align 4, !tbaa !12
  %i.bvn = fcmp reassoc nsz arcp contract afn ogt float %i.bvm, 1.000000e+00
  br i1 %i.bvn, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bup, i64 2408
  %i.bvp = load float, ptr %i.bvo, align 8, !tbaa !12
  %i.bvq = fcmp reassoc nsz arcp contract afn ogt float %i.bvp, 1.000000e+00
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.bvr = phi i1 [ true, %bb.bf ], [ true, %bb.be ], [ %i.bvq, %bb.bg ]
  %or.cond.i131 = select i1 %i.bvh, i1 %i.bvr, i1 false
  br i1 %or.cond.i131, label %.preheader.preheader.i132, label %_get_white_balance_coeff.exit

.preheader.preheader.i132:                        ; preds = %bb.bh
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bup, i64 2424
  %i.bvt = load double, ptr %i.bvs, align 8, !tbaa !105
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bup, i64 2404
  %i.bvv = load float, ptr %i.bvu, align 4, !tbaa !12
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bup, i64 2432
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bup, i64 2408
  %i.bvy = load <2 x double>, ptr %i.bvw, align 16, !tbaa !105
  %i.bvz = insertelement <4 x double> poison, double %i.buz, i64 0
  %i.bwa = insertelement <4 x double> %i.bvz, double %i.bvt, i64 1
  %i.bwb = shufflevector <2 x double> %i.bvy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bwc = shufflevector <4 x double> %i.bwa, <4 x double> %i.bwb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bwd = fptrunc <4 x double> %i.bwc to <4 x float>
  %i.bwe = load <2 x float>, ptr %i.bvx, align 8, !tbaa !12
  %i.bwf = insertelement <4 x float> poison, float %i.bvj, i64 0
  %i.bwg = insertelement <4 x float> %i.bwf, float %i.bvv, i64 1
  %i.bwh = shufflevector <2 x float> %i.bwe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bwi = shufflevector <4 x float> %i.bwg, <4 x float> %i.bwh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bwj = fdiv reassoc nsz arcp contract afn <4 x float> %i.bwd, %i.bwi
  store <4 x float> %i.bwj, ptr %i.r, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.az, %bb.ba, %bb.bh, %.preheader.preheader.i132
  %i.bwk = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 112
  %i.bwm = call fastcc i32 @find_temperature_from_raw_coeffs(ptr noundef nonnull %i.bwl, ptr noundef nonnull %i.r, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q)
  %.not124 = icmp eq i32 %i.bwm, 0
  br i1 %.not124, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %_get_white_balance_coeff.exit
  %i.bwn = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %i.bwo = load float, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.bwp = fdiv reassoc nsz arcp contract afn float %i.bwn, %i.bwo ; 9 uses
  %i.bwq = fadd reassoc nsz arcp contract afn float %i.bwn, %i.bwo
  %i.bwr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bwq
  %i.bws = fdiv reassoc nsz arcp contract afn float %i.bwr, %i.bwo ; 9 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 4 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.bwv = load i32, ptr %i.bwu, align 16, !tbaa !99
  switch i32 %i.bwv, label %bb.bl [
    i32 2, label %bb.bj
    i32 0, label %bb.bj
    i32 1, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %15 = fmul reassoc nsz arcp contract afn float %i.bwp, f0x3F652546
  %16 = fadd reassoc nsz arcp contract afn float %15, 2.664000e-01
  %17 = fmul reassoc nsz arcp contract afn float %i.bws, -1.614000e-01
  %18 = fadd reassoc nsz arcp contract afn float %16, %17
  store float %18, ptr %i.bwt, align 16, !tbaa !12
  %19 = fmul reassoc nsz arcp contract afn float %i.bwp, f0xBF400D1B
  %20 = fadd reassoc nsz arcp contract afn float %19, 1.713500e+00
  %21 = fmul reassoc nsz arcp contract afn float %i.bws, 3.670000e-02
  %22 = fadd reassoc nsz arcp contract afn float %20, %21
  %23 = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  store float %22, ptr %23, align 4, !tbaa !12
  %i.bww = fmul reassoc nsz arcp contract afn float %i.bwp, 3.890000e-02
  %i.bwx = fadd reassoc nsz arcp contract afn float %i.bww, -6.850000e-02
  %i.bwy = fmul reassoc nsz arcp contract afn float %i.bws, 1.029600e+00
  %i.bwz = fadd reassoc nsz arcp contract afn float %i.bwx, %i.bwy
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store float %i.bwz, ptr %i.bxa, align 8, !tbaa !12
  %i.bxb = fadd reassoc nsz arcp contract afn float %i.bwp, 1.000000e+00
  %i.bxc = fadd reassoc nsz arcp contract afn float %i.bxb, %i.bws
  %i.bxd = fmul reassoc nsz arcp contract afn float %i.bxc, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.bk:                                            ; preds = %bb.bi
  %24 = fmul reassoc nsz arcp contract afn float %i.bwp, 4.012880e-01
  %25 = fadd reassoc nsz arcp contract afn float %24, 6.501730e-01
  %26 = fmul reassoc nsz arcp contract afn float %i.bws, -5.146100e-02
  %27 = fadd reassoc nsz arcp contract afn float %25, %26
  store float %27, ptr %i.bwt, align 16, !tbaa !12
  %28 = fmul reassoc nsz arcp contract afn float %i.bwp, -2.502680e-01
  %29 = fadd reassoc nsz arcp contract afn float %28, f0x3F9A2A3D
  %30 = fmul reassoc nsz arcp contract afn float %i.bws, 4.585400e-02
  %31 = fadd reassoc nsz arcp contract afn float %29, %30
  %32 = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  store float %31, ptr %32, align 4, !tbaa !12
  %i.bxe = fmul reassoc nsz arcp contract afn float %i.bwp, -2.079000e-03
  %i.bxf = fadd reassoc nsz arcp contract afn float %i.bxe, 4.895200e-02
  %i.bxg = fmul reassoc nsz arcp contract afn float %i.bws, 9.531270e-01
  %i.bxh = fadd reassoc nsz arcp contract afn float %i.bxf, %i.bxg
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store float %i.bxh, ptr %i.bxi, align 8, !tbaa !12
  %i.bxj = fadd reassoc nsz arcp contract afn float %i.bwp, 1.000000e+00
  %i.bxk = fadd reassoc nsz arcp contract afn float %i.bxj, %i.bws
  %i.bxl = fmul reassoc nsz arcp contract afn float %i.bxk, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.bl:                                            ; preds = %bb.bi
  store float %i.bwp, ptr %i.bwt, align 16, !tbaa !12
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  store float 1.000000e+00, ptr %i.bxm, align 4, !tbaa !12
  br label %convert_any_XYZ_to_LMS.exit

convert_any_XYZ_to_LMS.exit:                      ; preds = %bb.bj, %bb.bk, %bb.bl
  %.sink11.i = phi i64 [ 8, %bb.bl ], [ 12, %bb.bk ], [ 12, %bb.bj ]
  %.sink.i133 = phi float [ %i.bws, %bb.bl ], [ %i.bxl, %bb.bk ], [ %i.bxd, %bb.bj ]
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bwt, i64 %.sink11.i
  store float %.sink.i133, ptr %i.bxn, align 4, !tbaa !12
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.t, i64 124
  store float 0.000000e+00, ptr %i.bxo, align 4, !tbaa !12
  br label %bb.bm

bb.bm:                                            ; preds = %_get_white_balance_coeff.exit, %convert_any_XYZ_to_LMS.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #31
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ay
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.bxq = load i32, ptr %i.bxp, align 16, !tbaa !99 ; 2 uses
  %i.bxr = icmp ult i32 %i.bxq, 5
  br i1 %i.bxr, label %.sink.split, label %bb.bo

.sink.split:                                      ; preds = %bb.bn
  %i.bxs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bxt = load i32, ptr %i.bxs, align 4, !tbaa !338
  %i.bxu = sext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bxw = load i32, ptr %i.bxv, align 4, !tbaa !339
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.bya = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.byb = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.byc = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.byd = load float, ptr %i.byc, align 64, !tbaa !112
  %i.bye = getelementptr inbounds nuw i8, ptr %i.t, i64 132
  %i.byf = load float, ptr %i.bye, align 4, !tbaa !113
  %i.byg = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.byh = load i32, ptr %i.byg, align 4, !tbaa !114
  %i.byi = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.byj = load i32, ptr %i.byi, align 8, !tbaa !115
  %i.byk = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.byl = load i32, ptr %i.byk, align 8, !tbaa !116
  call fastcc void @_loop_switch(ptr noundef %2, ptr noundef %3, i64 noundef %i.bxu, i64 noundef %i.bxx, ptr noundef %i.n, ptr noundef %i.m, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bxy, ptr noundef nonnull %i.bxz, ptr noundef nonnull %i.bya, ptr noundef nonnull %i.byb, float noundef %i.byd, float noundef %i.byf, i32 noundef %i.byh, i32 noundef %i.byj, i32 noundef %i.bxq, i32 noundef %i.byl)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.sink.split
  %i.bym = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.byn = load i32, ptr %i.bym, align 16, !tbaa !90
  %i.byo = icmp ne i32 %i.byn, 0
  %or.cond3 = select i1 %i.byo, i1 %i.ao, i1 false
  br i1 %or.cond3, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.byp = getelementptr inbounds nuw i8, ptr %i.aa, i64 532 ; 2 uses
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !117
  %.not125 = icmp eq i32 %i.byq, 0
  br i1 %.not125, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.byr = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.bys = getelementptr i8, ptr %i.byr, i64 644
  %.val = load i32, ptr %i.bys, align 4, !tbaa !72
  %i.byt = and i32 %.val, 4
  %.not126 = icmp eq i32 %i.byt, 0
  br i1 %.not126, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.byu = getelementptr inbounds nuw i8, ptr %i.aa, i64 440 ; 2 uses
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !100, !noalias !367
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byv, i64 48
  %i.byx = load i64, ptr %i.byw, align 16, !tbaa !101, !noalias !367
  %i.byy = shl i64 %i.byx, 4
  %i.byz = call ptr @dt_alloc_aligned(i64 noundef %i.byy) #31, !noalias !367 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.byz, i64 64) ]
  %i.bza = getelementptr i8, ptr %5, i64 8
  %.val.i = load i32, ptr %i.bza, align 4, !tbaa !338, !noalias !367
  %i.bzb = getelementptr i8, ptr %5, i64 12
  %.val15.i = load i32, ptr %i.bzb, align 4, !tbaa !339, !noalias !367
  %i.bzc = call fastcc <2 x float> @_extract_patches(ptr noundef readonly %3, i32 %.val.i, i32 %.val15.i, ptr noundef nonnull %i.aa, ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %i.o, ptr noundef %i.byz, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !367
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !12, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !367
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !12, !noalias !367
  %i.bzd = load ptr, ptr %i.byu, align 8, !tbaa !100, !noalias !367
  %i.bze = getelementptr inbounds nuw i8, ptr %i.aa, i64 704
  %i.bzf = load ptr, ptr %i.bze, align 64, !tbaa !102, !noalias !367
  call fastcc void @_compute_patches_delta_E(ptr noundef %i.byz, ptr noundef %i.bzd, ptr noundef %i.bzf, ptr noundef %i.a, ptr noundef %i.b), !noalias !367
  %i.bzg = load float, ptr %i.a, align 4, !tbaa !12, !noalias !367 ; 4 uses
  %i.bzh = fcmp reassoc nsz arcp contract afn ugt float %i.bzg, 1.200000e+00
  br i1 %i.bzh, label %bb.bs, label %_validate_color_checker.exit

bb.bs:                                            ; preds = %bb.br
  %i.bzi = fcmp reassoc nsz arcp contract afn ugt float %i.bzg, 2.300000e+00
  br i1 %i.bzi, label %bb.bt, label %_validate_color_checker.exit

bb.bt:                                            ; preds = %bb.bs
  %i.bzj = fcmp reassoc nsz arcp contract afn ugt float %i.bzg, 3.400000e+00
  %.str.312..str.311.i137 = select i1 %i.bzj, ptr @.str.312, ptr @.str.311
  br label %_validate_color_checker.exit

_validate_color_checker.exit:                     ; preds = %bb.br, %bb.bs, %bb.bt
  %.str.310.sink.i134 = phi ptr [ @.str.309, %bb.br ], [ @.str.310, %bb.bs ], [ %.str.312..str.311.i137, %bb.bt ]
  %i.bzk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.310.sink.i134, i32 noundef 5) #31, !noalias !367
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.aa, i64 712 ; 2 uses
  %i.bzm = load ptr, ptr %i.bzl, align 8, !tbaa !109, !noalias !367
  call void @g_free(ptr noundef %i.bzm) #31, !noalias !367
  %i.bzn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.315, i32 noundef 5) #31, !noalias !367
  %i.bzo = fpext reassoc nsz arcp contract afn float %i.bzg to double
  %i.bzp = load float, ptr %i.b, align 4, !tbaa !12, !noalias !367
  %i.bzq = fpext reassoc nsz arcp contract afn float %i.bzp to double
  %.sroa.0.4.vec.extract.i135 = extractelement <2 x float> %i.bzc, i64 1
  %i.bzr = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %.sroa.0.4.vec.extract.i135)
  %i.bzs = fpext reassoc nsz arcp contract afn float %i.bzr to double
  %.sroa.0.0.vec.extract.i136 = extractelement <2 x float> %i.bzc, i64 0
  %i.bzt = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i136 to double
  %i.bzu = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.bzn, ptr noundef %i.bzk, double noundef %i.bzo, double noundef %i.bzq, double noundef %i.bzs, double noundef %i.bzt) #31, !noalias !367
  store ptr %i.bzu, ptr %i.bzl, align 8, !tbaa !109, !noalias !367
  call void @free(ptr noundef %i.byz) #31, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !367
  store i32 0, ptr %i.byp, align 4, !tbaa !117
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bp, %bb.bq, %_validate_color_checker.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  br label %bb.bv

bb.bv:                                            ; preds = %bb.a, %bb.bu
  ret void
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_ioppr_get_pipe_input_profile_info(ptr noundef) local_unnamed_addr #5

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_declare_cat_on_pipe(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !57  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2392 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119  ; 4 uses
  %.not27 = icmp eq i32 %1, 0
  br i1 %.not27, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load i32, ptr %i.i, align 16, !tbaa !120
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.l = load i32, ptr %i.k, align 32, !tbaa !121
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.q = load i32, ptr %i.p, align 4, !tbaa !122
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.s = icmp eq ptr %i.h, null
end_hunk_2
begin_hunk_3_@gui_post_expose:bb.a
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.ej, i64 0
  %i.eo = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract to double ; 3 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.ej, i64 1
  %i.ep = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract to double ; 3 uses
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.eo, double noundef %i.ep) #31
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.ek, i64 0
  %i.eq = fpext reassoc nsz arcp contract afn float %.sroa.5.8.vec.extract to double ; 2 uses
  %.sroa.5.12.vec.extract = extractelement <2 x float> %i.ek, i64 1
  %i.er = fpext reassoc nsz arcp contract afn float %.sroa.5.12.vec.extract to double ; 2 uses
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.eq, double noundef %i.er) #31
  %.sroa.8.16.vec.extract = extractelement <2 x float> %i.el, i64 0
  %i.es = fpext reassoc nsz arcp contract afn float %.sroa.8.16.vec.extract to double ; 2 uses
  %.sroa.8.20.vec.extract = extractelement <2 x float> %i.el, i64 1
  %i.et = fpext reassoc nsz arcp contract afn float %.sroa.8.20.vec.extract to double ; 2 uses
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.es, double noundef %i.et) #31
  %.sroa.11.24.vec.extract = extractelement <2 x float> %i.em, i64 0
  %i.eu = fpext reassoc nsz arcp contract afn float %.sroa.11.24.vec.extract to double ; 2 uses
  %.sroa.11.28.vec.extract = extractelement <2 x float> %i.em, i64 1
  %i.ev = fpext reassoc nsz arcp contract afn float %.sroa.11.28.vec.extract to double ; 2 uses
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.eu, double noundef %i.ev) #31
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.eo, double noundef %i.ep) #31
  %i.ew = load ptr, ptr %i.be, align 64, !tbaa !102 ; 2 uses
  %.not187 = icmp eq ptr %i.ew, null
  br i1 %.not187, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.0183191
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12 ; 2 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ogt float %i.ey, 2.300000e+00
  br i1 %i.ez, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.eo, double noundef %i.ep) #31
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.es, double noundef %i.et) #31
  %.pre = load ptr, ptr %i.be, align 64, !tbaa !102
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.0183191
  %.pre202 = load float, ptr %.phi.trans.insert, align 4, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fa = phi float [ %.pre202, %bb.l ], [ %i.ey, %bb.k ]
  %i.fb = fcmp reassoc nsz arcp contract afn ogt float %i.fa, 4.600000e+00
  br i1 %i.fb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.eq, double noundef %i.er) #31
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.eu, double noundef %i.ev) #31
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.bf) #31
  tail call void @cairo_stroke_preserve(ptr noundef %1) #31
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.s) #31
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #31
  tail call void @cairo_stroke(ptr noundef %1) #31
  tail call void @cairo_set_line_cap(ptr noundef %1, i32 noundef 0) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.fc = load ptr, ptr %i.aq, align 8, !tbaa !100
  %i.fd = getelementptr inbounds nuw [48 x i8], ptr %i.fc, i64 %.0183191 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 112
  %i.ff = load i32, ptr %i.bh, align 4, !tbaa !181
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 116
  %i.fh = load float, ptr %i.fe, align 4, !tbaa !12
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, 8.620690e-03
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, f0x3E0D3DCB ; 6 uses
  %i.fk = fcmp reassoc nsz arcp contract afn ogt float %i.fj, f0x3E53DCB1
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fj, %i.fj
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, %i.fj
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fj, f0x3E038026
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, f0xBC911AA6
  %i.fp = select reassoc nsz arcp contract afn i1 %i.fk, float %i.fm, float %i.fo ; 3 uses
  %i.fq = load <2 x float>, ptr %i.fg, align 4, !tbaa !12
  %i.fr = fmul reassoc nsz arcp contract afn <2 x float> %i.fq, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.fs = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fu = fadd reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fr
  %i.fv = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fr
  %i.fw = shufflevector <2 x float> %i.fu, <2 x float> %i.fv, <2 x i32> <i32 3, i32 0> ; 5 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fw, splat (float f0x3E53DCB1)
  %i.fy = fmul reassoc nsz arcp contract afn <2 x float> %i.fw, %i.fw
  %i.fz = fmul reassoc nsz arcp contract afn <2 x float> %i.fy, %i.fw
  %i.ga = fmul reassoc nsz arcp contract afn <2 x float> %i.fw, splat (float f0x3E038026)
  %i.gb = fadd reassoc nsz arcp contract afn <2 x float> %i.ga, splat (float f0xBC911AA6)
  %i.gc = select <2 x i1> %i.fx, <2 x float> %i.fz, <2 x float> %i.gb
  %i.gd = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, <float f0x3F532CA5, float 9.642000e-01> ; 6 uses
  %.not.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ge = load i32, ptr %i.bi, align 64, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.gf = load <4 x float>, ptr %i.bg, align 64, !tbaa !12
  %i.gg = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gh = fmul reassoc nsz arcp contract afn <4 x float> %i.gf, %i.gg
  %i.gi = load <4 x float>, ptr %i.bl, align 16, !tbaa !12
  %i.gj = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, %i.gk
  %i.gm = fadd reassoc nsz arcp contract afn <4 x float> %i.gl, %i.gh
  %i.gn = load <4 x float>, ptr %i.bm, align 32, !tbaa !12
  %i.go = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gp = fmul reassoc nsz arcp contract afn <4 x float> %i.gn, %i.go
  %i.gq = fadd reassoc nsz arcp contract afn <4 x float> %i.gm, %i.gp
  store <4 x float> %i.gq, ptr %i.a, align 16, !tbaa !12
  call fastcc void @dt_ioppr_apply_trc(ptr noundef %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.bk, ptr noundef nonnull readonly %i.bj, i32 noundef %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.gr = load <2 x float>, ptr %i.b, align 16, !tbaa !12
  %.pre205 = load float, ptr %i.bq, align 8, !tbaa !12
  br label %dt_ioppr_lab_to_rgb_matrix.exit

bb.q:                                             ; preds = %bb.o
  %i.gs = load <2 x float>, ptr %i.bg, align 4, !tbaa !12
  %i.gt = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gu = fmul reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gt
  %i.gv = load <2 x float>, ptr %i.bl, align 4, !tbaa !12
  %i.gw = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul reassoc nsz arcp contract afn <2 x float> %i.gv, %i.gx
  %i.gz = fadd reassoc nsz arcp contract afn <2 x float> %i.gy, %i.gu
  %i.ha = load <2 x float>, ptr %i.bm, align 4, !tbaa !12
  %i.hb = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul reassoc nsz arcp contract afn <2 x float> %i.ha, %i.hb
  %i.hd = fadd reassoc nsz arcp contract afn <2 x float> %i.gz, %i.hc
  %i.he = load float, ptr %i.bn, align 4, !tbaa !12
  %i.hf = extractelement <2 x float> %i.gd, i64 1
  %i.hg = fmul reassoc nsz arcp contract afn float %i.he, %i.hf
  %i.hh = load float, ptr %i.bo, align 4, !tbaa !12
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, %i.fp
  %i.hj = fadd reassoc nsz arcp contract afn float %i.hi, %i.hg
  %i.hk = load float, ptr %i.bp, align 4, !tbaa !12
  %i.hl = extractelement <2 x float> %i.gd, i64 0
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hk, %i.hl
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hj, %i.hm
  br label %dt_ioppr_lab_to_rgb_matrix.exit

dt_ioppr_lab_to_rgb_matrix.exit:                  ; preds = %bb.p, %bb.q
  %i.ho = phi float [ %.pre205, %bb.p ], [ %i.hn, %bb.q ]
  %i.hp = phi <2 x float> [ %i.gr, %bb.p ], [ %i.hd, %bb.q ] ; 2 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0
  %i.hr = fpext reassoc nsz arcp contract afn float %i.hq to double
  %i.hs = extractelement <2 x float> %i.hp, i64 1
  %i.ht = fpext reassoc nsz arcp contract afn float %i.hs to double
  %i.hu = fpext reassoc nsz arcp contract afn float %i.ho to double
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.hr, double noundef %i.ht, double noundef %i.hu, double noundef 1.000000e+00) #31
  %.sroa.04.0.vec.extract = extractelement <2 x float> %i.eh, i64 0
  %i.hv = fpext reassoc nsz arcp contract afn float %.sroa.04.0.vec.extract to double
  %.sroa.04.4.vec.extract = extractelement <2 x float> %i.eh, i64 1
  %i.hw = fpext reassoc nsz arcp contract afn float %.sroa.04.4.vec.extract to double
  %i.hx = fpext reassoc nsz arcp contract afn float %i.en to double
  %i.hy = fmul reassoc nsz arcp contract afn double %i.bt, %i.hx
  tail call void @cairo_arc(ptr noundef %1, double noundef %i.hv, double noundef %i.hw, double noundef %i.hy, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #31
  tail call void @cairo_fill(ptr noundef %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.hz = add nuw i64 %.0183191, 1                ; 2 uses
  %i.ia = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ic = load i64, ptr %i.ib, align 16, !tbaa !101
  %i.id = icmp ult i64 %i.hz, %i.ic
  br i1 %i.id, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %dt_ioppr_lab_to_rgb_matrix.exit, %bb.d, %bb.b, %bb.a
  ret void
}

declare ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef) local_unnamed_addr #5

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #5

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #5

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_fill(ptr noundef) local_unnamed_addr #5

declare <2 x float> @apply_homography(<2 x float>, ptr noundef) local_unnamed_addr #5

declare float @apply_homography_scaling(<2 x float>, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !45  ; 38 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !57  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store i32 %i.i, ptr %i.j, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load float, ptr %1, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = fadd reassoc nsz arcp contract afn float %i.p, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0142 = phi nsz float [ %i.s, %bb.b ], [ 1.000000e+00, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  %.not147 = icmp eq i32 %i.u, 0
  br i1 %.not147, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = fadd reassoc nsz arcp contract afn float %i.z, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0141 = phi nsz float [ %i.ac, %bb.d ], [ 1.000000e+00, %bb.c ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %.not148 = icmp eq i32 %i.ae, 0
  br i1 %.not148, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load float, ptr %i.af, align 4, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fadd reassoc nsz arcp contract afn float %i.aj, %i.al
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0140 = phi nsz float [ %i.am, %bb.f ], [ 1.000000e+00, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !183
  %.not149 = icmp eq i32 %i.ao, 0
  br i1 %.not149, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = fadd reassoc nsz arcp contract afn float %i.at, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, f0x3EAAAAAB
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0139 = phi nsz float [ %i.ax, %bb.h ], [ 0.000000e+00, %bb.g ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !184
  %.not150 = icmp eq i32 %i.az, 0
  br i1 %.not150, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !12
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !12
  %i.bh = fadd reassoc nsz arcp contract afn float %i.be, %i.bg
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, f0x3EAAAAAB
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0138 = phi nsz float [ %i.bi, %bb.j ], [ 0.000000e+00, %bb.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12 ; 2 uses
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 2 uses
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bn, %i.bp ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn une float %i.bk, 0.000000e+00
  %i.bs = fcmp reassoc nsz arcp contract afn une float %i.bm, 0.000000e+00
  %or.cond154 = select i1 %i.br, i1 true, i1 %i.bs
  %i.bt = fcmp reassoc nsz arcp contract afn une float %i.bp, 0.000000e+00
  %narrow = select i1 %or.cond154, i1 true, i1 %i.bt
  %i.bu = zext i1 %narrow to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !115
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !28
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = fcmp reassoc nsz arcp contract afn oeq float %i.bq, 0.000000e+00
  %or.cond = select i1 %i.by, i1 true, i1 %i.bz
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ci = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bq
  %i.cj = select i1 %or.cond, float 1.000000e+00, float %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.cl = load float, ptr %1, align 4, !tbaa !12
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cl, %.0142
  store float %i.cm, ptr %i.e, align 8, !tbaa !12
  %i.cn = load float, ptr %i.ca, align 4, !tbaa !12
  %i.co = fdiv reassoc nsz arcp contract afn float %i.cn, %.0141
  store float %i.co, ptr %i.cb, align 8, !tbaa !12
  %i.cp = load float, ptr %i.cc, align 4, !tbaa !12
  %i.cq = fdiv reassoc nsz arcp contract afn float %i.cp, %.0140
  store float %i.cq, ptr %i.cd, align 8, !tbaa !12
  %i.cr = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cs = fsub reassoc nsz arcp contract afn float %.0139, %i.cr
  store float %i.cs, ptr %i.cf, align 8, !tbaa !12
  %i.ct = load float, ptr %i.cg, align 4, !tbaa !12
  %i.cu = fsub reassoc nsz arcp contract afn float %i.ct, %.0138
  store float %i.cu, ptr %i.ch, align 8, !tbaa !12
  %i.cv = load float, ptr %i.bj, align 4, !tbaa !12
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cj
  store float %i.cw, ptr %i.ck, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12
  %i.cz = fdiv reassoc nsz arcp contract afn float %i.cy, %.0142
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %i.cz, ptr %i.da, align 4, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dc = load float, ptr %i.db, align 4, !tbaa !12
  %i.dd = fdiv reassoc nsz arcp contract afn float %i.dc, %.0141
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store float %i.dd, ptr %i.de, align 4, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12
  %i.dh = fdiv reassoc nsz arcp contract afn float %i.dg, %.0140
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store float %i.dh, ptr %i.di, align 4, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !12
  %i.dl = fsub reassoc nsz arcp contract afn float %.0139, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store float %i.dl, ptr %i.dm, align 4, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fsub reassoc nsz arcp contract afn float %i.do, %.0138
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store float %i.dp, ptr %i.dq, align 4, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !12
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.cj
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store float %i.dt, ptr %i.du, align 4, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !12
  %i.dx = fdiv reassoc nsz arcp contract afn float %i.dw, %.0142
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store float %i.dx, ptr %i.dy, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fdiv reassoc nsz arcp contract afn float %i.ea, %.0141
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store float %i.eb, ptr %i.ec, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !12
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ee, %.0140
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store float %i.ef, ptr %i.eg, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fsub reassoc nsz arcp contract afn float %.0139, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store float %i.ej, ptr %i.ek, align 8, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.em = load float, ptr %i.el, align 4, !tbaa !12
  %i.en = fsub reassoc nsz arcp contract afn float %i.em, %.0138
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store float %i.en, ptr %i.eo, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !12
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.cj
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store float %i.er, ptr %i.es, align 8, !tbaa !12
  %i.et = icmp eq i32 %i.i, 0
  br i1 %i.et, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  %i.ew = fsub reassoc nsz arcp contract afn float %.0139, %i.ev
  store float %i.ew, ptr %i.cf, align 64, !tbaa !12
  %i.ex = load float, ptr %i.ce, align 4, !tbaa !12
  %i.ey = fsub reassoc nsz arcp contract afn float %.0139, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store float %i.ey, ptr %i.ez, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  store float 0.000000e+00, ptr %i.fb, align 4, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !12
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store i32 %i.fe, ptr %i.ff, align 16, !tbaa !99
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !114
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !379 ; 3 uses
  %i.fl = fcmp reassoc nsz arcp contract afn oeq float %i.fk, 0.000000e+00
  %i.fm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fk
  %i.fn = select reassoc nsz arcp contract afn i1 %i.fl, float %i.fk, float %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store float %i.fn, ptr %i.fo, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !185
  store float %i.fq, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !186
  store float %i.fs, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !73 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 16, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 112
  %i.fw = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.fv) #31
  %.not.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i, label %_get_white_balance_coeff.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !73 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2480
  %i.fz = load i32, ptr %i.fy, align 16, !tbaa !111
  %.not.i.i = icmp eq i32 %i.fz, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 2400
  %..i.i = select i1 %.not.i.i, i64 2416, i64 2448
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 %..i.i
  %i.gc = tail call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gb) #31
  %.not26.i = icmp eq i32 %i.gc, 0
  br i1 %.not26.i, label %bb.o, label %_get_white_balance_coeff.exit

bb.o:                                             ; preds = %bb.n
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 2416
  %i.ge = load double, ptr %i.gd, align 16, !tbaa !105 ; 2 uses
  %i.gf = fcmp reassoc nsz arcp contract afn ogt double %i.ge, 0.000000e+00
  br i1 %i.gf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fu, i64 2424
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !105
  %i.gi = fcmp reassoc nsz arcp contract afn ogt double %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fu, i64 2432
  %i.gk = load double, ptr %i.gj, align 16, !tbaa !105
  %i.gl = fcmp reassoc nsz arcp contract afn ogt double %i.gk, 0.000000e+00
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.gm = phi i1 [ false, %bb.p ], [ false, %bb.o ], [ %i.gl, %bb.q ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fu, i64 2400
  %i.go = load float, ptr %i.gn, align 16, !tbaa !12 ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ogt float %i.go, 1.000000e+00
  br i1 %i.gp, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fu, i64 2404
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !12
  %i.gs = fcmp reassoc nsz arcp contract afn ogt float %i.gr, 1.000000e+00
  br i1 %i.gs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fu, i64 2408
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !12
  %i.gv = fcmp reassoc nsz arcp contract afn ogt float %i.gu, 1.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.gw = phi i1 [ true, %bb.s ], [ true, %bb.r ], [ %i.gv, %bb.t ]
  %or.cond.i = select i1 %i.gm, i1 %i.gw, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_get_white_balance_coeff.exit

.preheader.preheader.i:                           ; preds = %bb.u
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fu, i64 2424
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !105
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fu, i64 2404
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fu, i64 2432
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fu, i64 2408
  %i.hd = load <2 x double>, ptr %i.hb, align 16, !tbaa !105
  %i.he = insertelement <4 x double> poison, double %i.ge, i64 0
  %i.hf = insertelement <4 x double> %i.he, double %i.gy, i64 1
  %i.hg = shufflevector <2 x double> %i.hd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hh = shufflevector <4 x double> %i.hf, <4 x double> %i.hg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hi = fptrunc <4 x double> %i.hh to <4 x float>
  %i.hj = load <2 x float>, ptr %i.hc, align 8, !tbaa !12
  %i.hk = insertelement <4 x float> poison, float %i.go, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.ha, i64 1
  %i.hm = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hn = shufflevector <4 x float> %i.hl, <4 x float> %i.hm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ho = fdiv reassoc nsz arcp contract afn <4 x float> %i.hi, %i.hn
  store <4 x float> %i.ho, ptr %i.c, align 16, !tbaa !12
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.m, %bb.n, %bb.u, %.preheader.preheader.i
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !122
  %i.hr = load ptr, ptr %i.ft, align 8, !tbaa !73
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 112
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !187
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !188
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !189
  call fastcc void @illuminant_to_xy(i32 noundef %i.hq, ptr noundef nonnull %i.hs, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.hu, i32 noundef %i.hw, i32 noundef %i.hy)
  %i.hz = load i32, ptr %i.hp, align 4, !tbaa !122 ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 10
  %.pre190 = load float, ptr %i.a, align 4, !tbaa !12 ; 4 uses
  %.pre191 = load float, ptr %i.b, align 4, !tbaa !12 ; 5 uses
  br i1 %i.ia, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_get_white_balance_coeff.exit
  call fastcc void @_check_if_close_to_daylight(float noundef %.pre190, float noundef %.pre191, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.ff)
  %.pre = load i32, ptr %i.hp, align 4, !tbaa !122
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_get_white_balance_coeff.exit
  %i.ib = phi i32 [ %.pre, %bb.v ], [ %i.hz, %_get_white_balance_coeff.exit ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 2 uses
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !110
  %i.id = fdiv reassoc nsz arcp contract afn float %.pre190, %.pre191 ; 10 uses
  %i.ie = fadd reassoc nsz arcp contract afn float %.pre190, %.pre191
  %i.if = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ie
  %i.ig = fdiv reassoc nsz arcp contract afn float %i.if, %.pre191 ; 10 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 5 uses
  %i.ii = load i32, ptr %i.ff, align 16, !tbaa !99
  switch i32 %i.ii, label %bb.z [
    i32 2, label %bb.x
    i32 0, label %bb.x
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %4 = fmul reassoc nsz arcp contract afn float %i.id, f0x3F652546
  %5 = fadd reassoc nsz arcp contract afn float %4, 2.664000e-01
  %6 = fmul reassoc nsz arcp contract afn float %i.ig, -1.614000e-01
  %7 = fadd reassoc nsz arcp contract afn float %5, %6
  store float %7, ptr %i.ih, align 16, !tbaa !12
  %8 = fmul reassoc nsz arcp contract afn float %i.id, f0xBF400D1B
  %9 = fadd reassoc nsz arcp contract afn float %8, 1.713500e+00
  %10 = fmul reassoc nsz arcp contract afn float %i.ig, 3.670000e-02
  %11 = fadd reassoc nsz arcp contract afn float %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store float %11, ptr %12, align 4, !tbaa !12
  %i.ij = fmul reassoc nsz arcp contract afn float %i.id, 3.890000e-02
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ij, -6.850000e-02
  %i.il = fmul reassoc nsz arcp contract afn float %i.ig, 1.029600e+00
  %i.im = fadd reassoc nsz arcp contract afn float %i.ik, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store float %i.im, ptr %i.in, align 8, !tbaa !12
  %i.io = fadd reassoc nsz arcp contract afn float %i.id, 1.000000e+00
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, %i.ig
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.y:                                             ; preds = %bb.w
  %13 = fmul reassoc nsz arcp contract afn float %i.id, 4.012880e-01
  %14 = fadd reassoc nsz arcp contract afn float %13, 6.501730e-01
  %15 = fmul reassoc nsz arcp contract afn float %i.ig, -5.146100e-02
  %16 = fadd reassoc nsz arcp contract afn float %14, %15
  store float %16, ptr %i.ih, align 16, !tbaa !12
  %17 = fmul reassoc nsz arcp contract afn float %i.id, -2.502680e-01
  %18 = fadd reassoc nsz arcp contract afn float %17, f0x3F9A2A3D
  %19 = fmul reassoc nsz arcp contract afn float %i.ig, 4.585400e-02
  %20 = fadd reassoc nsz arcp contract afn float %18, %19
  %21 = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store float %20, ptr %21, align 4, !tbaa !12
  %i.ir = fmul reassoc nsz arcp contract afn float %i.id, -2.079000e-03
  %i.is = fadd reassoc nsz arcp contract afn float %i.ir, 4.895200e-02
  %i.it = fmul reassoc nsz arcp contract afn float %i.ig, 9.531270e-01
  %i.iu = fadd reassoc nsz arcp contract afn float %i.is, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store float %i.iu, ptr %i.iv, align 8, !tbaa !12
  %i.iw = fadd reassoc nsz arcp contract afn float %i.id, 1.000000e+00
  %i.ix = fadd reassoc nsz arcp contract afn float %i.iw, %i.ig
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.z:                                             ; preds = %bb.w
  store float %i.id, ptr %i.ih, align 16, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store float 1.000000e+00, ptr %i.iz, align 4, !tbaa !12
  br label %convert_any_XYZ_to_LMS.exit

convert_any_XYZ_to_LMS.exit:                      ; preds = %bb.x, %bb.y, %bb.z
  %.sink11.i = phi i64 [ 8, %bb.z ], [ 12, %bb.y ], [ 12, %bb.x ]
  %.sink.i = phi float [ %i.ig, %bb.z ], [ %i.iy, %bb.y ], [ %i.iq, %bb.x ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sink11.i
  store float %.sink.i, ptr %i.ja, align 4, !tbaa !12
  %i.jb = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  store float 0.000000e+00, ptr %i.jb, align 4, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !46
  %i.je = getelementptr i8, ptr %i.jd, i64 644
  %.val = load i32, ptr %i.je, align 4, !tbaa !72
  %i.jf = and i32 %.val, 4
  %i.jg = icmp ne i32 %i.jf, 0
  %i.jh = icmp ne ptr %i.g, null                  ; 3 uses
  %or.cond3 = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %or.cond3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %convert_any_XYZ_to_LMS.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.jj = load i32, ptr %i.ji, align 16, !tbaa !97
  %i.jk = icmp ne i32 %i.jj, 0
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 532
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !117
  %i.jn = icmp ne i32 %i.jm, 0
  br label %bb.ab

bb.ab:                                            ; preds = %convert_any_XYZ_to_LMS.exit, %bb.aa
  %i.jo = phi i1 [ %i.jk, %bb.aa ], [ false, %convert_any_XYZ_to_LMS.exit ] ; 2 uses
  %i.jp = phi i1 [ %i.jn, %bb.aa ], [ false, %convert_any_XYZ_to_LMS.exit ] ; 2 uses
  %i.jq = call ptr @get_f(ptr noundef nonnull @.str.84) ; 3 uses
  %i.jr = load i32, ptr %i.ic, align 4, !tbaa !110 ; 2 uses
  %.not.i156 = icmp eq ptr %i.jq, null
  br i1 %.not.i156, label %dt_introspection_get_enum_name.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.js = load i32, ptr %i.jq, align 8, !tbaa !103
  %i.jt = icmp eq i32 %i.js, 16
  br i1 %i.jt, label %bb.ad, label %dt_introspection_get_enum_name.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 72
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !103 ; 3 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !381 ; 2 uses
  %.not1214.i = icmp eq ptr %i.jw, null
  br i1 %.not1214.i, label %dt_introspection_get_enum_name.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ad
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !382
  %i.jz = icmp eq i32 %i.jy, %i.jr
  br i1 %i.jz, label %dt_introspection_get_enum_name.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0915.i187 = phi ptr [ %i.ka, %.lr.ph.i ], [ %i.jv, %.lr.ph.i.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0915.i187, i64 24 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !381 ; 2 uses
  %.not12.i = icmp eq ptr %i.kb, null
  br i1 %.not12.i, label %dt_introspection_get_enum_name.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.kc = getelementptr inbounds nuw i8, ptr %.0915.i187, i64 32
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !382
  %i.ke = icmp eq i32 %i.kd, %i.jr
  br i1 %i.ke, label %dt_introspection_get_enum_name.exit, label %.lr.ph

dt_introspection_get_enum_name.exit:              ; preds = %.lr.ph.i, %.lr.ph, %.lr.ph.i.preheader, %bb.ab, %bb.ac, %bb.ad
  %.1.i = phi ptr [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ %i.jw, %.lr.ph.i.preheader ], [ %i.kb, %.lr.ph.i ], [ null, %.lr.ph ] ; 2 uses
  %i.kf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !160
  %i.kg = and i32 %i.kf, 2097152
  %.not151 = icmp eq i32 %i.kg, 0
  br i1 %.not151, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %dt_introspection_get_enum_name.exit
  %i.kh = select i1 %i.jo, ptr @.str.86, ptr @.str.87
  %i.ki = select i1 %i.jp, ptr @.str.88, ptr @.str.87
  %i.kj = load float, ptr %i.ht, align 4, !tbaa !187
  %i.kk = fptosi float %i.kj to i32
  %i.kl = fpext reassoc nsz arcp contract afn float %.pre190 to double
  %i.km = fpext reassoc nsz arcp contract afn float %.pre191 to double
  %i.kn = fpext reassoc nsz arcp contract afn float %i.id to double
  %i.ko = fpext reassoc nsz arcp contract afn float %i.ig to double
  %i.kp = load <2 x float>, ptr %i.ih, align 16, !tbaa !12
  %i.kq = fpext <2 x float> %i.kp to <2 x double> ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ks = load float, ptr %i.kr, align 8, !tbaa !12
  %i.kt = fpext reassoc nsz arcp contract afn float %i.ks to double
  %.not152 = icmp eq ptr %.1.i, null
  %i.ku = select i1 %.not152, ptr @.str.89, ptr %.1.i
  %i.kv = extractelement <2 x double> %i.kq, i64 0
  %i.kw = extractelement <2 x double> %i.kq, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.85, ptr noundef nonnull %i.kh, ptr noundef nonnull %i.ki, i32 noundef %i.kk, double noundef %i.kl, double noundef %i.km, double noundef %i.kn, double noundef 1.000000e+00, double noundef %i.ko, double noundef %i.kv, double noundef %i.kw, double noundef %i.kt, ptr noundef nonnull %i.ku) #31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %dt_introspection_get_enum_name.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ky = load float, ptr %i.kx, align 8, !tbaa !12
  %i.kz = fdiv reassoc nsz arcp contract afn float f0x3F51729B, %i.ky
  %i.la = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.kz, float 8.340000e-02)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store float %i.la, ptr %i.lb, align 64, !tbaa !112
  %i.lc = load ptr, ptr %i.ft, align 8, !tbaa !73
  %i.ld = load i32, ptr %i.lc, align 16, !tbaa !90
  %i.le = icmp ne i32 %i.ld, 0
  %or.cond7 = select i1 %i.le, i1 %i.jh, i1 false
  %or.cond9 = select i1 %i.jo, i1 true, i1 %i.jp
  %or.cond155 = select i1 %or.cond7, i1 %or.cond9, i1 false
  br i1 %or.cond155, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i32 0, ptr %i.lf, align 8, !tbaa !383
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !384 ; 2 uses
  %.not153 = icmp eq ptr %i.lh, null
  br i1 %.not153, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !386
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.lj = phi i32 [ %i.li, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  br i1 %i.jh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lk = icmp ugt i32 %i.lj, 1
  %i.ll = trunc i32 %i.lj to i1
  %i.lm = and i1 %i.lk, %i.ll
  %i.ln = zext i1 %i.lm to i32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store i32 %i.ln, ptr %i.lo, align 32, !tbaa !121
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_check_if_close_to_daylight(float noundef %0, float noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = fcmp reassoc nsz arcp contract afn olt float %0, f0x7F7FFFFF
  br i1 %i.b, label %xy_to_CCT.exit, label %xy_to_CCT.exit.thread

xy_to_CCT.exit:                                   ; preds = %bb.a
  %i.c = fadd reassoc nsz arcp contract afn float %1, -1.735000e-01
  %i.d = fsub reassoc nsz arcp contract afn float 3.366000e-01, %0
  %i.e = fdiv reassoc nsz arcp contract afn float %i.d, %i.c ; 3 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, f0x3F8AE3F1
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.f)
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, f0x45C36E6D
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, f0xC46D773E
  %i.j = fmul reassoc nsz arcp contract afn float %i.e, f0x409FB049
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.j)
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0x41E5A5DE
  %i.m = fadd reassoc nsz arcp contract afn float %i.i, %i.l
  %i.n = fmul reassoc nsz arcp contract afn float %i.e, f0x41608FB8
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.n)
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, 4.000000e-05
  %i.q = fadd reassoc nsz arcp contract afn float %i.m, %i.p ; 3 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.q, 3.000000e+03
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.q, 1.667000e+03
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.b, label %xy_to_CCT.exit.thread

bb.b:                                             ; preds = %xy_to_CCT.exit
  %i.t = tail call reassoc nsz arcp contract afn fastcc float @CCT_reverse_lookup(float noundef %0, float noundef %1)
  br label %xy_to_CCT.exit.thread

xy_to_CCT.exit.thread:                            ; preds = %bb.a, %bb.b, %xy_to_CCT.exit
  %.0 = phi nsz float [ %i.t, %bb.b ], [ %i.q, %xy_to_CCT.exit ], [ 0.000000e+00, %bb.a ] ; 16 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %xy_to_CCT.exit.thread
  store float %.0, ptr %2, align 4, !tbaa !12
  br label %bb.d
end_hunk_3
