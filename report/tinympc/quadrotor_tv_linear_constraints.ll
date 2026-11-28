Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/quadrotor_tv_linear_constraints?download=true
inline.NumInlined: 1821
inline.NumDeleted: 926
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 43
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.q = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i
  %i.s = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i185 unwind label %bb.g

.noexc.i.i185:                                    ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body186

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i
  store ptr %i.q, ptr %7, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.u, align 8, !tbaa !26
  %i.v = load <2 x double>, ptr @Q_data, align 16, !tbaa !27
  store <2 x double> %i.v, ptr %i.q, align 16, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 16), align 16, !tbaa !27
  store <2 x double> %i.x, ptr %i.w, align 16, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.z = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 32), align 16, !tbaa !27
  store <2 x double> %i.z, ptr %i.y, align 16, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ab = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 48), align 16, !tbaa !27
  store <2 x double> %i.ab, ptr %i.aa, align 16, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ad = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 64), align 16, !tbaa !27
  store <2 x double> %i.ad, ptr %i.ac, align 16, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.af = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 80), align 16, !tbaa !27
  store <2 x double> %i.af, ptr %i.ae, align 16, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ag = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.invoke945, label %bb.i

.invoke945:                                       ; preds = %bb.h, %bb.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i382
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont946 unwind label %bb.s

.cont946:                                         ; preds = %.invoke945
  unreachable

bb.i:                                             ; preds = %bb.h
  store ptr %i.ag, ptr %8, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.aj, align 8, !tbaa !26
  %i.ak = load <2 x double>, ptr @R_data, align 16, !tbaa !27
  store <2 x double> %i.ak, ptr %i.ag, align 16, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @R_data, i64 16), align 16, !tbaa !27
  store <2 x double> %i.am, ptr %i.al, align 16, !tbaa !27
  %i.an = load i64, ptr %i.g, align 8, !tbaa !19  ; 3 uses
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.ap = mul nsw i64 %i.ao, %i.an                ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread, label %bb.j

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread: ; preds = %bb.i
  store ptr null, ptr %9, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.at = icmp ugt i64 %i.ap, 2305843009213693951
  br i1 %i.at, label %.invoke945, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.j
  %i.au = shl nuw i64 %i.ap, 3                    ; 2 uses
  %i.av = call noalias ptr @malloc(i64 noundef %i.au) #16 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.invoke945, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.av, ptr %9, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.an, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ao, ptr %i.ay, align 8, !tbaa !20
  %i.az = load ptr, ptr %3, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.az, i64 %i.au, i1 false)
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit: ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread, %bb.k
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !19  ; 3 uses
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !20  ; 3 uses
  %i.bc = mul nsw i64 %i.bb, %i.ba                ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i363.thread, label %bb.l

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i363.thread: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  store ptr null, ptr %10, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ba, ptr %i.be, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit191

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.bg = icmp ugt i64 %i.bc, 2305843009213693951
  br i1 %i.bg, label %.invoke941, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i362

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i362: ; preds = %bb.l
  %i.bh = shl nuw i64 %i.bc, 3                    ; 2 uses
  %i.bi = call noalias ptr @malloc(i64 noundef %i.bh) #16 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.invoke941, label %bb.m

.invoke941:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i362, %bb.l
  %i.bk = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bk, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont942 unwind label %bb.t

.cont942:                                         ; preds = %.invoke941
  unreachable

bb.m:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i362
  store ptr %i.bi, ptr %10, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ba, ptr %i.bl, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.bb, ptr %i.bm, align 8, !tbaa !20
  %i.bn = load ptr, ptr %5, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bn, i64 %i.bh, i1 false)
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit191

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit191: ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i363.thread, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %calloc939 = call dereferenceable_or_null(96) ptr @calloc(i64 1, i64 96) ; 2 uses
  %i.bo = icmp eq ptr %calloc939, null
  br i1 %i.bo, label %bb.n, label %.sink.split.i373

bb.n:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit191
  %i.bp = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bp, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc377 unwind label %bb.o

.noexc377:                                        ; preds = %bb.n
  unreachable

.sink.split.i373:                                 ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit191
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %calloc939, ptr %11, align 8, !tbaa !18
  store i64 12, ptr %i.br, align 8, !tbaa !19
  store i64 1, ptr %i.bq, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr %7, ptr %13, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.p unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body193

bb.p:                                             ; preds = %.sink.split.i373
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr %8, ptr %15, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit195 unwind label %bb.v

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit195: ; preds = %bb.p
  %i.bt = load double, ptr @rho_value, align 8, !tbaa !29
  %i.bu = invoke i32 @tiny_setup(ptr noundef nonnull %i.a, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %12, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %14, double noundef %i.bt, i32 noundef 12, i32 noundef 4, i32 noundef 10, i32 noundef 1)
          to label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i382 unwind label %bb.w ; 0 uses

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i382: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit195
  %i.bv = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.bv) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.bw = load ptr, ptr %12, align 8, !tbaa !18
  call void @free(ptr noundef %i.bw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.bx = load ptr, ptr %11, align 8, !tbaa !18
  call void @free(ptr noundef %i.bx) #15
  %i.by = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.by) #15
  %i.bz = load ptr, ptr %9, align 8, !tbaa !18
  call void @free(ptr noundef %i.bz) #15
  %i.ca = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #16 ; 31 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.invoke945, label %vector.body

vector.body:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i382
  store <2 x double> <double 1.100000e+00, double f0x3FF2612612612613>, ptr %i.ca, align 8, !tbaa !29
  %i.cc = getelementptr i8, ptr %i.ca, i64 16
  store <2 x double> <double f0x3FF328B28B28B28C, double f0x3FF3F03F03F03F04>, ptr %i.cc, align 8, !tbaa !29
  %i.cd = getelementptr i8, ptr %i.ca, i64 32
  store <2 x double> <double f0x3FF4B7CB7CB7CB7D, double f0x3FF57F57F57F57F6>, ptr %i.cd, align 8, !tbaa !29
  %i.ce = getelementptr i8, ptr %i.ca, i64 48
  store <2 x double> <double f0x3FF646E46E46E46E, double f0x3FF70E70E70E70E7>, ptr %i.ce, align 8, !tbaa !29
  %i.cf = getelementptr i8, ptr %i.ca, i64 64
  store <2 x double> <double f0x3FF7D5FD5FD5FD60, double f0x3FF89D89D89D89D9>, ptr %i.cf, align 8, !tbaa !29
  %i.cg = getelementptr i8, ptr %i.ca, i64 80
  store <2 x double> <double f0x3FF9651651651652, double f0x3FFA2CA2CA2CA2CA>, ptr %i.cg, align 8, !tbaa !29
  %i.ch = getelementptr i8, ptr %i.ca, i64 96
  store <2 x double> <double f0x3FFAF42F42F42F43, double f0x3FFBBBBBBBBBBBBC>, ptr %i.ch, align 8, !tbaa !29
  %i.ci = getelementptr i8, ptr %i.ca, i64 112
  store <2 x double> <double f0x3FFC834834834834, double f0x3FFD4AD4AD4AD4AE>, ptr %i.ci, align 8, !tbaa !29
  %i.cj = getelementptr i8, ptr %i.ca, i64 128
  store <2 x double> <double f0x3FFE126126126126, double f0x3FFED9ED9ED9ED9F>, ptr %i.cj, align 8, !tbaa !29
  %i.ck = getelementptr i8, ptr %i.ca, i64 144
  store <2 x double> <double f0x3FFFA17A17A17A18, double f0x4000348348348348>, ptr %i.ck, align 8, !tbaa !29
  %i.cl = getelementptr i8, ptr %i.ca, i64 160
  store <2 x double> <double f0x4000984984984985, double f0x4000FC0FC0FC0FC1>, ptr %i.cl, align 8, !tbaa !29
  %i.cm = getelementptr i8, ptr %i.ca, i64 176
  store <2 x double> <double f0x40015FD5FD5FD5FE, double f0x4001C39C39C39C3A>, ptr %i.cm, align 8, !tbaa !29
  %i.cn = getelementptr i8, ptr %i.ca, i64 192
  store <2 x double> <double f0x4002276276276276, double f0x40028B28B28B28B2>, ptr %i.cn, align 8, !tbaa !29
  %i.co = getelementptr i8, ptr %i.ca, i64 208
  store <2 x double> <double f0x4002EEEEEEEEEEEF, double f0x400352B52B52B52C>, ptr %i.co, align 8, !tbaa !29
  %i.cp = getelementptr i8, ptr %i.ca, i64 224
  store <2 x double> <double f0x4003B67B67B67B68, double f0x40041A41A41A41A4>, ptr %i.cp, align 8, !tbaa !29
  %i.cq = getelementptr i8, ptr %i.ca, i64 240
  store <2 x double> <double f0x40047E07E07E07E0, double f0x4004E1CE1CE1CE1D>, ptr %i.cq, align 8, !tbaa !29
  %i.cr = getelementptr i8, ptr %i.ca, i64 256
  store <2 x double> <double f0x400545945945945A, double f0x4005A95A95A95A96>, ptr %i.cr, align 8, !tbaa !29
  %i.cs = getelementptr i8, ptr %i.ca, i64 272
  store <2 x double> <double f0x40060D20D20D20D2, double f0x400670E70E70E70E>, ptr %i.cs, align 8, !tbaa !29
  %i.ct = getelementptr i8, ptr %i.ca, i64 288
  store <2 x double> <double f0x4006D4AD4AD4AD4A, double f0x4007387387387388>, ptr %i.ct, align 8, !tbaa !29
  %i.cu = getelementptr i8, ptr %i.ca, i64 304
  store <2 x double> <double f0x40079C39C39C39C4, double 3.000000e+00>, ptr %i.cu, align 8, !tbaa !29
  %i.cv = getelementptr i8, ptr %i.ca, i64 320
  store <2 x double> <double f0x400863C63C63C63C, double f0x4008C78C78C78C78>, ptr %i.cv, align 8, !tbaa !29
  %i.cw = getelementptr i8, ptr %i.ca, i64 336
  store <2 x double> <double f0x40092B52B52B52B5, double f0x40098F18F18F18F2>, ptr %i.cw, align 8, !tbaa !29
  %i.cx = getelementptr i8, ptr %i.ca, i64 352
  store <2 x double> <double f0x4009F2DF2DF2DF2E, double f0x400A56A56A56A56B>, ptr %i.cx, align 8, !tbaa !29
  %i.cy = getelementptr i8, ptr %i.ca, i64 368
  store <2 x double> <double f0x400ABA6BA6BA6BA6, double f0x400B1E31E31E31E3>, ptr %i.cy, align 8, !tbaa !29
  %i.cz = getelementptr i8, ptr %i.ca, i64 384
  store <2 x double> <double f0x400B81F81F81F81F, double f0x400BE5BE5BE5BE5C>, ptr %i.cz, align 8, !tbaa !29
  %i.da = call noalias dereferenceable_or_null(960) ptr @malloc(i64 noundef 960) #16 ; 11 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.q, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i396

bb.q:                                             ; preds = %vector.body
  %i.dc = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dc, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc391 unwind label %bb.r

.noexc391:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body200

bb.s:                                             ; preds = %.invoke945
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body189

bb.t:                                             ; preds = %.invoke941
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %.sink.split.i373
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.p
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit195
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.dj) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.di, %bb.w ], [ %i.dh, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.dk = load ptr, ptr %12, align 8, !tbaa !18
  call void @free(ptr noundef %i.dk) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.dg, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %.body193

.body193:                                         ; preds = %bb.o, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.y ], [ %i.bs, %bb.o ]
  %i.dl = load ptr, ptr %11, align 8, !tbaa !18
  call void @free(ptr noundef %i.dl) #15
  %i.dm = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.dm) #15
  br label %bb.z

bb.z:                                             ; preds = %.body193, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body193 ], [ %i.df, %bb.t ]
  %i.dn = load ptr, ptr %9, align 8, !tbaa !18
  br label %.body200

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i396: ; preds = %vector.body
  %calloc938 = call dereferenceable_or_null(80) ptr @calloc(i64 1, i64 80) ; 10 uses
  %i.do = icmp eq ptr %calloc938, null
  br i1 %i.do, label %bb.aa, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit210

bb.aa:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i396
  %i.dp = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dp, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc398 unwind label %bb.ab

.noexc398:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body205

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit210: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i396
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %i.da, i8 0, i64 960, i1 false), !tbaa !29
  %i.dr = getelementptr i8, ptr %i.da, i64 160
  store <2 x double> splat (double 1.000000e+00), ptr %i.dr, align 8, !tbaa !29
  store <2 x double> splat (double 3.000000e+00), ptr %calloc938, align 8, !tbaa !29
  %i.ds = getelementptr i8, ptr %i.da, i64 176
  %i.dt = getelementptr i8, ptr %calloc938, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ds, align 8, !tbaa !29
  store <2 x double> splat (double 3.000000e+00), ptr %i.dt, align 8, !tbaa !29
  %i.du = getelementptr i8, ptr %i.da, i64 192
  %i.dv = getelementptr i8, ptr %calloc938, i64 32
  store <2 x double> splat (double 1.000000e+00), ptr %i.du, align 8, !tbaa !29
  store <2 x double> splat (double 3.000000e+00), ptr %i.dv, align 8, !tbaa !29
  %i.dw = getelementptr i8, ptr %i.da, i64 208
  %i.dx = getelementptr i8, ptr %calloc938, i64 48
  store <2 x double> splat (double 1.000000e+00), ptr %i.dw, align 8, !tbaa !29
  store <2 x double> splat (double 3.000000e+00), ptr %i.dx, align 8, !tbaa !29
  %i.dy = getelementptr i8, ptr %i.da, i64 224
  %i.dz = getelementptr i8, ptr %calloc938, i64 64
  store <2 x double> splat (double 1.000000e+00), ptr %i.dy, align 8, !tbaa !29
  store <2 x double> splat (double 3.000000e+00), ptr %i.dz, align 8, !tbaa !29
  %i.ea = call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #16 ; 23 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.ac, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i410

bb.ac:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit210
  %i.ec = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ec, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ec, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc405 unwind label %bb.ad

.noexc405:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body213

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i410: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit210
  %calloc = call dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 10 uses
  %i.ee = icmp eq ptr %calloc, null
  br i1 %i.ee, label %bb.ae, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226

bb.ae:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i410
  %i.ef = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc412 unwind label %bb.af

.noexc412:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body218

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i410
  %i.eh = getelementptr i8, ptr %i.ea, i64 144
  store <2 x double> splat (double 1.000000e+00), ptr %i.ea, align 8, !tbaa !29
  %i.ei = getelementptr i8, ptr %i.ea, i64 80
  store <2 x double> splat (double 1.000000e+00), ptr %i.eh, align 8, !tbaa !29
  %i.ej = getelementptr i8, ptr %i.ea, i64 224
  store <2 x double> splat (double 6.000000e+00), ptr %calloc, align 8, !tbaa !29
  %i.ek = getelementptr i8, ptr %i.ea, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ei, align 8, !tbaa !29
  %i.el = getelementptr i8, ptr %i.ea, i64 160
  store <2 x double> splat (double 1.000000e+00), ptr %i.ej, align 8, !tbaa !29
  %i.em = getelementptr i8, ptr %calloc, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ek, align 8, !tbaa !29
  %i.en = getelementptr i8, ptr %i.ea, i64 96
  store <2 x double> splat (double 1.000000e+00), ptr %i.el, align 8, !tbaa !29
  %i.eo = getelementptr i8, ptr %i.ea, i64 240
  store <2 x double> splat (double 6.000000e+00), ptr %i.em, align 8, !tbaa !29
  %i.ep = getelementptr i8, ptr %i.ea, i64 32
  store <2 x double> splat (double 1.000000e+00), ptr %i.en, align 8, !tbaa !29
  %i.eq = getelementptr i8, ptr %i.ea, i64 176
  store <2 x double> splat (double 1.000000e+00), ptr %i.eo, align 8, !tbaa !29
  %i.er = getelementptr i8, ptr %calloc, i64 32
  store <2 x double> splat (double 1.000000e+00), ptr %i.ep, align 8, !tbaa !29
  %i.es = getelementptr i8, ptr %i.ea, i64 112
  store <2 x double> splat (double 1.000000e+00), ptr %i.eq, align 8, !tbaa !29
  %i.et = getelementptr i8, ptr %i.ea, i64 256
  store <2 x double> splat (double 6.000000e+00), ptr %i.er, align 8, !tbaa !29
  %i.eu = getelementptr i8, ptr %i.ea, i64 48
  store <2 x double> splat (double 1.000000e+00), ptr %i.es, align 8, !tbaa !29
  %i.ev = getelementptr i8, ptr %i.ea, i64 192
  store <2 x double> splat (double 1.000000e+00), ptr %i.et, align 8, !tbaa !29
  %i.ew = getelementptr i8, ptr %calloc, i64 48
  store <2 x double> splat (double 1.000000e+00), ptr %i.eu, align 8, !tbaa !29
  %i.ex = getelementptr i8, ptr %i.ea, i64 128
  store <2 x double> splat (double 1.000000e+00), ptr %i.ev, align 8, !tbaa !29
  %i.ey = getelementptr i8, ptr %i.ea, i64 272
  store <2 x double> splat (double 6.000000e+00), ptr %i.ew, align 8, !tbaa !29
  %i.ez = getelementptr i8, ptr %i.ea, i64 64
  store <2 x double> splat (double 1.000000e+00), ptr %i.ez, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.ex, align 8, !tbaa !29
  %i.fa = getelementptr i8, ptr %i.ea, i64 208
  store <2 x double> splat (double 1.000000e+00), ptr %i.fa, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.ey, align 8, !tbaa !29
  %i.fb = getelementptr i8, ptr %calloc, i64 64
  store double 6.000000e+00, ptr %i.fb, align 8, !tbaa !29
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.fd = call noalias dereferenceable_or_null(960) ptr @malloc(i64 noundef 960) #16 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.ag, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421

bb.ag:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc419 unwind label %bb.ah

.noexc419:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226
  store ptr %i.fd, ptr %16, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.fh, align 8, !tbaa !19
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 12, ptr %i.fi, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %i.fd, ptr noundef nonnull align 8 dereferenceable(960) %i.da, i64 960, i1 false)
  %i.fj = call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #16 ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.ai, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i428

bb.ai:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421
  %i.fl = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fl, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc426 unwind label %bb.ao

.noexc426:                                        ; preds = %bb.ai
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i428: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421
  store ptr %i.fj, ptr %17, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.fm, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 10, ptr %i.fn, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fj, ptr noundef nonnull align 8 dereferenceable(80) %calloc938, i64 80, i1 false)
  %i.fo = call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #16 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.aj, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i435

bb.aj:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i428
  %i.fq = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fq, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc433 unwind label %bb.ap

.noexc433:                                        ; preds = %bb.aj
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i435: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i428
  store ptr %i.fo, ptr %18, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 9, ptr %i.fr, align 8, !tbaa !19
  %i.fs = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 4, ptr %i.fs, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.fo, ptr noundef nonnull align 8 dereferenceable(288) %i.ea, i64 288, i1 false)
  %i.ft = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #16 ; 3 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i435
  %i.fv = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fv, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc440 unwind label %bb.aq

.noexc440:                                        ; preds = %bb.ak
end_hunk_0
begin_hunk_1_@main:bb.a
_ZNSolsEd.exit355.3:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.2
  %i.uc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ub, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.3: ; preds = %_ZNSolsEd.exit355.3
  %i.ud = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.ue = getelementptr i8, ptr %i.ud, i64 -24
  %i.uf = load i64, ptr %i.ue, align 8
  %i.ug = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 240
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i476 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i476, label %.invoke943, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i477

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc484, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i479, %.noexc482, %bb.bx, %.noexc474, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc472, %bb.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit353.2, %_ZNSolsEPFRSoS_E.exit, %bb.bl, %_ZNSolsEd.exit347, %bb.bk, %bb.bj, %bb.bh, %.lr.ph85.i.i.i.i.i, %bb.bg, %_ZNSolsEd.exit355.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.2, %_ZNSolsEd.exit355.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.1, %_ZNSolsEd.exit355.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351.preheader.preheader, %_ZNSolsEd.exit355, %_ZNSolsEd.exit352.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit353.1, %_ZNSolsEd.exit352.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit353, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350.preheader.preheader, %_ZNSolsEd.exit352, %.invoke943, %bb.bb
  %lpad.loopexit.split-lp982 = landingpad { ptr, i32 }
          cleanup
  br label %.body337

_ZNSolsEPFRSoS_E.exit354:                         ; preds = %.noexc484
  %i.uj = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !106
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !110
  %.not = icmp eq i32 %i.um, 0
  br i1 %.not, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %_ZNSolsEPFRSoS_E.exit354
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.un = load ptr, ptr %i.hl, align 8, !tbaa !18, !noalias !111
  %i.uo = load i64, ptr %i.hn, align 8, !tbaa !19, !noalias !111 ; 2 uses
  store ptr %i.hm, ptr %i.hq, align 8
  store ptr %20, ptr %.sroa.5512.0..sroa_idx, align 8
  store ptr %i.ho, ptr %.sroa.6513.0..sroa_idx, align 8
  store ptr %i.un, ptr %.sroa.7514.0..sroa_idx, align 8
  store i64 %i.uo, ptr %.sroa.8515.0..sroa_idx, align 8
  store ptr %i.hl, ptr %.sroa.10517.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11518.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.uo, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr %i.hp, ptr %i.hr, align 8, !tbaa !112, !alias.scope !113
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi12ELi1ELi0ELi12ELi1EEELi0EEELi7ENS_10DenseShapeES7_ddEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(81) %i.hq)
          to label %.noexc unwind label %bb.ca

.noexc:                                           ; preds = %bb.by
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi0EEELi7ENS_10DenseShapeES8_ddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6513.0..sroa_idx)
          to label %bb.bz unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc
  %i.up = landingpad { ptr, i32 }
          cleanup
  %i.uq = load ptr, ptr %i.hw, align 8, !tbaa !25
  call void @free(ptr noundef %i.uq) #15
  br label %.body358

bb.bz:                                            ; preds = %.noexc
  %i.ur = load ptr, ptr %i.hr, align 8, !tbaa !117, !nonnull !43, !align !44
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !25 ; 7 uses
  store ptr %i.us, ptr %i.hu, align 8, !tbaa !46
  %i.ut = load ptr, ptr %i.hs, align 8, !tbaa !119 ; 6 uses
  %i.uu = load <2 x double>, ptr %i.ut, align 16, !tbaa !27
  %i.uv = load ptr, ptr %i.ht, align 8, !tbaa !119 ; 6 uses
  %i.uw = load <2 x double>, ptr %i.uv, align 16, !tbaa !27
  %i.ux = fadd <2 x double> %i.uu, %i.uw
  %i.uy = load <2 x double>, ptr %i.us, align 16, !tbaa !27
  %i.uz = fadd <2 x double> %i.ux, %i.uy
  store <2 x double> %i.uz, ptr %20, align 16, !tbaa !27
  %i.va = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.vb = load <2 x double>, ptr %i.va, align 16, !tbaa !27
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.vd = load <2 x double>, ptr %i.vc, align 16, !tbaa !27
  %i.ve = fadd <2 x double> %i.vb, %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.vg = load <2 x double>, ptr %i.vf, align 16, !tbaa !27
  %i.vh = fadd <2 x double> %i.ve, %i.vg
  store <2 x double> %i.vh, ptr %i.go, align 16, !tbaa !27
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.vj = load <2 x double>, ptr %i.vi, align 16, !tbaa !27
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uv, i64 32
  %i.vl = load <2 x double>, ptr %i.vk, align 16, !tbaa !27
  %i.vm = fadd <2 x double> %i.vj, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.us, i64 32
  %i.vo = load <2 x double>, ptr %i.vn, align 16, !tbaa !27
  %i.vp = fadd <2 x double> %i.vm, %i.vo
  store <2 x double> %i.vp, ptr %i.gq, align 16, !tbaa !27
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ut, i64 48
  %i.vr = load <2 x double>, ptr %i.vq, align 16, !tbaa !27
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uv, i64 48
  %i.vt = load <2 x double>, ptr %i.vs, align 16, !tbaa !27
  %i.vu = fadd <2 x double> %i.vr, %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.us, i64 48
  %i.vw = load <2 x double>, ptr %i.vv, align 16, !tbaa !27
  %i.vx = fadd <2 x double> %i.vu, %i.vw
  store <2 x double> %i.vx, ptr %i.gr, align 16, !tbaa !27
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ut, i64 64
  %i.vz = load <2 x double>, ptr %i.vy, align 16, !tbaa !27
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uv, i64 64
  %i.wb = load <2 x double>, ptr %i.wa, align 16, !tbaa !27
  %i.wc = fadd <2 x double> %i.vz, %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.us, i64 64
  %i.we = load <2 x double>, ptr %i.wd, align 16, !tbaa !27
  %i.wf = fadd <2 x double> %i.wc, %i.we
  store <2 x double> %i.wf, ptr %i.gs, align 16, !tbaa !27
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ut, i64 80
  %i.wh = load <2 x double>, ptr %i.wg, align 16, !tbaa !27
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uv, i64 80
  %i.wj = load <2 x double>, ptr %i.wi, align 16, !tbaa !27
  %i.wk = fadd <2 x double> %i.wh, %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %i.us, i64 80
  %i.wm = load <2 x double>, ptr %i.wl, align 16, !tbaa !27
  %i.wn = fadd <2 x double> %i.wk, %i.wm
  store <2 x double> %i.wn, ptr %i.gt, align 16, !tbaa !27
  %i.wo = load ptr, ptr %i.hv, align 8, !tbaa !25
  call void @free(ptr noundef %i.wo) #15
  %i.wp = load ptr, ptr %i.hw, align 8, !tbaa !25
  call void @free(ptr noundef %i.wp) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %.body358

.body358:                                         ; preds = %bb.ca, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn152 = phi { ptr, i32 } [ %i.up, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wq, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  br label %.body337

bb.cb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit354
  %i.wr = load <2 x double>, ptr %20, align 16, !tbaa !27
  %i.ws = fmul <2 x double> %i.wr, splat (double f0x3FEF5C28F5C28F5C)
  %i.wt = fadd <2 x double> %i.ws, splat (double 4.000000e-02)
  store <2 x double> %i.wt, ptr %20, align 16, !tbaa !27
  %i.wu = load <2 x double>, ptr %i.go, align 16, !tbaa !27
  %i.wv = fmul <2 x double> %i.wu, splat (double f0x3FEF5C28F5C28F5C)
  %i.ww = load <2 x double>, ptr %i.gu, align 16  ; 2 uses
  %i.wx = fmul <2 x double> %i.ww, splat (double 2.000000e-02)
  %i.wy = fadd <2 x double> %i.wv, %i.wx
  store <2 x double> %i.wy, ptr %i.go, align 16, !tbaa !27
  %i.wz = load <2 x double>, ptr %i.gq, align 16, !tbaa !27
  %i.xa = fmul <2 x double> %i.wz, splat (double f0x3FEF5C28F5C28F5C)
  %i.xb = load <2 x double>, ptr %i.gw, align 16, !tbaa !27
  %i.xc = fmul <2 x double> %i.xb, splat (double 2.000000e-02)
  %i.xd = fadd <2 x double> %i.xa, %i.xc
  store <2 x double> %i.xd, ptr %i.gq, align 16, !tbaa !27
  %i.xe = load <2 x double>, ptr %i.gr, align 16, !tbaa !27
  %i.xf = fmul <2 x double> %i.xe, splat (double f0x3FEF5C28F5C28F5C)
  %i.xg = load <2 x double>, ptr %i.gx, align 16, !tbaa !27
  %i.xh = fmul <2 x double> %i.xg, splat (double 2.000000e-02)
  %i.xi = fadd <2 x double> %i.xf, %i.xh
  store <2 x double> %i.xi, ptr %i.gr, align 16, !tbaa !27
  %i.xj = load <2 x double>, ptr %i.gs, align 16, !tbaa !27
  %i.xk = fmul <2 x double> %i.xj, splat (double f0x3FEF5C28F5C28F5C)
  %i.xl = load <2 x double>, ptr %i.gy, align 16, !tbaa !27
  %i.xm = fmul <2 x double> %i.xl, splat (double 2.000000e-02)
  %i.xn = fadd <2 x double> %i.xk, %i.xm
  store <2 x double> %i.xn, ptr %i.gs, align 16, !tbaa !27
  %i.xo = load <2 x double>, ptr %i.gt, align 16, !tbaa !27
  %i.xp = fmul <2 x double> %i.xo, splat (double f0x3FEF5C28F5C28F5C)
  %i.xq = load <2 x double>, ptr %i.gz, align 16, !tbaa !27
  %i.xr = fmul <2 x double> %i.xq, splat (double 2.000000e-02)
  %i.xs = fadd <2 x double> %i.xp, %i.xr
  store <2 x double> %i.xs, ptr %i.gt, align 16, !tbaa !27
  %i.xt = extractelement <2 x double> %i.ww, i64 0
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %i.xu = phi double [ %i.xt, %bb.cb ], [ %i.hx, %bb.bz ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond908.not = icmp eq i64 %indvar.next, 40
  br i1 %exitcond908.not, label %bb.an, label %.preheader, !llvm.loop !69

.body337:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ax, %bb.bm, %bb.bt, %.body358
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn152, %.body358 ], [ %i.ip, %bb.ax ], [ %.pn144.pn.pn, %bb.bt ], [ %i.qg, %bb.bm ], [ %lpad.loopexit.split-lp982, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.cd

bb.cd:                                            ; preds = %.body337, %bb.au, %bb.ah
  %.pn165 = phi { ptr, i32 } [ %i.fg, %bb.ah ], [ %.pn160.pn.pn, %.body337 ], [ %.pn116.pn.pn, %bb.au ]
  call void @free(ptr noundef %calloc) #15
  br label %.body218

.body218:                                         ; preds = %bb.af, %bb.cd
  %.pn165.pn = phi { ptr, i32 } [ %.pn165, %bb.cd ], [ %i.eg, %bb.af ]
  call void @free(ptr noundef %i.ea) #15
  br label %.body213

.body213:                                         ; preds = %.body218, %bb.ad
  %.pn169 = phi { ptr, i32 } [ %i.ed, %bb.ad ], [ %.pn165.pn, %.body218 ]
  call void @free(ptr noundef %calloc938) #15
  br label %.body205

.body205:                                         ; preds = %bb.ab, %.body213
  %.pn169.pn = phi { ptr, i32 } [ %.pn169, %.body213 ], [ %i.dq, %bb.ab ]
  call void @free(ptr noundef %i.da) #15
  br label %.body200

.body200:                                         ; preds = %bb.r, %.body205, %bb.z
  %.sink = phi ptr [ %i.dn, %bb.z ], [ %i.ca, %.body205 ], [ %i.ca, %bb.r ]
  %.pn173.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.z ], [ %.pn169.pn, %.body205 ], [ %i.dd, %bb.r ]
  call void @free(ptr noundef %.sink) #15
  br label %.body189

.body189:                                         ; preds = %bb.s, %.body200
  %.pn173.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.ph, %.body200 ], [ %i.de, %bb.s ]
  %i.xv = load ptr, ptr %8, align 8, !tbaa !25
  call void @free(ptr noundef %i.xv) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.body186

.body186:                                         ; preds = %bb.g, %.body189
  %.pn173.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.pn, %.body189 ], [ %i.t, %bb.g ]
  %i.xw = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.xw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.xx = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.xx) #15
  br label %bb.ce

bb.ce:                                            ; preds = %.body186, %.body
  %.pn173.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn, %.body186 ], [ %i.o, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.xy = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.xy) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare i32 @tiny_setup(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), double noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tiny_set_tv_linear_constraints(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @tiny_set_x0(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(16)) local_unnamed_addr #2

declare i32 @tiny_solve(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.f) #15
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  store i64 %3, ptr %i.c, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi12ELi12ELi1ELi12ELi12EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 290 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i64 %i.c, 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not8.i = icmp eq i64 %i.e, 12
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %.preheader.lr.ph.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul nsw i64 %i.e, %i.c
  %.not.i.i = icmp eq i64 %i.f, 144
  br i1 %.not.i.i, label %.preheader.lr.ph.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.g) #15
  %i.h = tail call noalias dereferenceable_or_null(1152) ptr @malloc(i64 noundef 1152) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %.sink.split.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i.i:                                  ; preds = %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !18
  br label %.preheader.lr.ph.i.thread

.preheader.lr.ph.i.thread:                        ; preds = %bb.b, %.sink.split.i.i
  store i64 12, ptr %i.b, align 8, !tbaa !19
  store i64 12, ptr %i.d, align 8, !tbaa !20
  br label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %bb.a, %.preheader.lr.ph.i.thread
  %i.k = load ptr, ptr %0, align 8, !tbaa !18     ; 218 uses
  %i.l = getelementptr i8, ptr %i.k, i64 96
  %i.m = getelementptr i8, ptr %i.a, i64 1064
  %bound0 = icmp ult ptr %i.k, %i.m
  %bound1 = icmp ult ptr %i.a, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader.lr.ph.split.i
  %i.n = getelementptr i8, ptr %i.a, i64 96
  %i.o = load double, ptr %i.a, align 8, !tbaa !29, !alias.scope !156
  %i.p = load double, ptr %i.n, align 8, !tbaa !29, !alias.scope !156
  %i.q = insertelement <2 x double> poison, double %i.o, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.p, i64 1
  store <2 x double> %i.r, ptr %i.k, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = getelementptr i8, ptr %i.a, i64 192
  %i.u = getelementptr i8, ptr %i.a, i64 288
  %i.v = load double, ptr %i.t, align 8, !tbaa !29, !alias.scope !156
  %i.w = load double, ptr %i.u, align 8, !tbaa !29, !alias.scope !156
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  store <2 x double> %i.y, ptr %i.s, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.z = getelementptr i8, ptr %i.k, i64 32
  %i.aa = getelementptr i8, ptr %i.a, i64 384
  %i.ab = getelementptr i8, ptr %i.a, i64 480
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !29, !alias.scope !156
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !29, !alias.scope !156
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.ag = getelementptr i8, ptr %i.k, i64 48
  %i.ah = getelementptr i8, ptr %i.a, i64 576
  %i.ai = getelementptr i8, ptr %i.a, i64 672
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !29, !alias.scope !156
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !29, !alias.scope !156
  %i.al = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  store <2 x double> %i.am, ptr %i.ag, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.an = getelementptr i8, ptr %i.k, i64 64
  %i.ao = getelementptr i8, ptr %i.a, i64 768
  %i.ap = getelementptr i8, ptr %i.a, i64 864
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !29, !alias.scope !156
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !29, !alias.scope !156
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  store <2 x double> %i.at, ptr %i.an, align 8, !tbaa !29, !alias.scope !157, !noalias !156
  %i.au = getelementptr i8, ptr %i.k, i64 80
  %i.av = getelementptr i8, ptr %i.a, i64 960
  %i.aw = getelementptr i8, ptr %i.a, i64 1056
  %i.ax = load double, ptr %i.av, align 8, !tbaa !29, !alias.scope !156
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !29, !alias.scope !156
  %i.az = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1
  store <2 x double> %i.ba, ptr %i.au, align 8, !tbaa !29, !alias.scope !157, !noalias !156
end_hunk_1
