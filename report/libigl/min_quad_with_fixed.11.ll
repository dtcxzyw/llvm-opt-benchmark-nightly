Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.11?download=true
inline.NumInlined: 14995
inline.NumDeleted: 7635
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_:bb.a
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #24, !noalias !348 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !71, !noalias !348
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26, !noalias !348
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !62, !noalias !348
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.m, i64 %i.i, i1 false), !noalias !348
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !72
  store ptr %1, ptr %0, align 8, !tbaa !76
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.i) #25 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !71
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.t, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr nonnull align 4 %i.j, i64 %i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread
  %.sroa.06.01217 = phi ptr [ null, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.j, %bb.f ]
  %i.u = phi i64 [ %i.e, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.o, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !109
  tail call void @free(ptr noundef %.sroa.06.01217) #24
  ret void

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.j) #24
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl19min_quad_with_fixedIfLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.1051", align 16 ; 10 uses
  %6 = alloca %"class.Eigen::Matrix.1061", align 8 ; 10 uses
  %7 = alloca %"class.Eigen::Matrix.1061", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.1061", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store <2 x float> <float 2.000000e+00, float 1.000000e+00>, ptr %6, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = load i8, ptr %3, align 1, !tbaa !24, !range !25, !noundef !26
  %i.b = trunc nuw i8 %i.a to i1                  ; 6 uses
  %.148.1.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.148.1.sroa.gep95 = getelementptr inbounds nuw i8, ptr %5, i64 16
  br i1 %i.b, label %.thread, label %bb.c

bb.b:                                             ; preds = %bb.x
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.cc, i64 3
  %i.c = extractelement <4 x float> %i.cc, i64 1
  %i.d = tail call noundef float @sqrtf(float noundef %i.cd) #24 ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <4 x float> %i.cc, float %i.d, i64 0
  %i.e = fdiv float %i.c, %i.d                    ; 3 uses
  %.sroa.0.4.vec.insert = insertelement <4 x float> %.sroa.0.0.vec.insert, float %i.e, i64 1 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = fsub float %.sroa.0.12.vec.extract, %i.f ; 2 uses
  %i.h = fcmp ugt float %i.g, 0.000000e+00
  br i1 %i.h, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKf.exit.1.i.i.i.i.i, label %bb.y

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKf.exit.1.i.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noundef float @sqrtf(float noundef %i.g) #24
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.0.4.vec.insert, float %i.i, i64 3
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.j = load float, ptr %2, align 4, !tbaa !29
  store float %i.j, ptr %7, align 8, !tbaa !29
  %i.k = load float, ptr %1, align 4, !tbaa !29
  store float %i.k, ptr %5, align 16, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24, !range !25, !noundef !26 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !29 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.p, ptr %i.q, align 8, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store float %i.p, ptr %6, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.148.1.sroa.phi = phi ptr [ %.148.1.sroa.gep, %bb.e ], [ %.148.1.sroa.gep95, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24, !range !25, !noundef !26
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !29 ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.v, ptr %.148.1.sroa.phi, align 8, !tbaa !29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store float %i.v, ptr %6, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.w = trunc nuw i8 %i.m to i1
  br i1 %i.w, label %bb.n, label %bb.j

.thread:                                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !24, !range !25
  %i.x = trunc nuw i8 %.pre to i1
  br i1 %i.x, label %bb.n, label %.thread90

.thread90:                                        ; preds = %.thread
  %i.y = load float, ptr %4, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !29
  store float %i.aa, ptr %7, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !29
  store float %i.ac, ptr %6, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.ae, ptr %i.af, align 4, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aj = load float, ptr %i.ag, align 4, !tbaa !29
  store float %i.aj, ptr %i.ah, align 4, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %.thread90, %bb.j
  %i.ak = phi ptr [ %6, %.thread90 ], [ %i.ai, %bb.j ]
  %i.al = phi ptr [ %5, %.thread90 ], [ %i.ah, %bb.j ] ; 2 uses
  %i.am = phi float [ %i.y, %.thread90 ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %.1438892 = phi i64 [ 1, %.thread90 ], [ 2, %bb.j ] ; 2 uses
  %.148.173 = phi i64 [ 0, %.thread90 ], [ 8, %bb.j ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load float, ptr %i.an, align 4, !tbaa !29
  %i.ap = getelementptr i8, ptr %i.al, i64 %.148.173
  store float %i.ao, ptr %i.ap, align 4, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24, !range !25, !noundef !26 ; 3 uses
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.au = load float, ptr %i.at, align 4, !tbaa !29 ; 2 uses
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %i.al, i64 %.148.173
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store float %i.au, ptr %i.aw, align 4, !tbaa !29
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  store float %i.au, ptr %i.ak, align 4, !tbaa !29
  br label %bb.o

bb.n:                                             ; preds = %.thread, %bb.i
  %.14389 = phi i64 [ 0, %.thread ], [ 1, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !29
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.pre85 = load i8, ptr %.phi.trans.insert84, align 1, !tbaa !24, !range !25
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.az = phi i1 [ true, %bb.n ], [ false, %bb.m ], [ false, %bb.l ] ; 2 uses
  %i.ba = phi i8 [ %.pre85, %bb.n ], [ %i.ar, %bb.m ], [ %i.ar, %bb.l ]
  %i.bb = phi float [ %i.ay, %bb.n ], [ %i.am, %bb.m ], [ %i.am, %bb.l ]
  %.143.1 = phi i64 [ %.14389, %bb.n ], [ %.1438892, %bb.m ], [ %.1438892, %bb.l ] ; 3 uses
  %i.bc = trunc nuw i8 %i.ba to i1                ; 2 uses
  br i1 %i.bc, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !29
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.143.1
  store float %i.be, ptr %i.bf, align 4, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = getelementptr [4 x i8], ptr %5, i64 %.143.1 ; 3 uses
  %i.bi = getelementptr [4 x i8], ptr %6, i64 %.143.1 ; 2 uses
  %i.bj = load float, ptr %i.bg, align 4, !tbaa !29 ; 2 uses
  br i1 %i.b, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store float %i.bj, ptr %i.bh, align 4, !tbaa !29
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store float %i.bj, ptr %i.bi, align 4, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.148.2 = phi i32 [ 0, %bb.r ], [ 1, %bb.q ]    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !29 ; 2 uses
  br i1 %i.az, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = shl nuw nsw i32 %.148.2, 3
  %.idx.i.i.i56.1.2 = zext nneg i32 %i.bm to i64
  %i.bn = getelementptr i8, ptr %i.bh, i64 %.idx.i.i.i56.1.2
  store float %i.bl, ptr %i.bn, align 4, !tbaa !29
  %i.bo = add nuw nsw i32 %.148.2, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store float %i.bl, ptr %i.bi, align 4, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.148.1.2 = phi i32 [ %.148.2, %bb.u ], [ %i.bo, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !29
  %i.br = zext nneg i32 %.148.1.2 to i64
  %.idx.i.i.i56.2.2 = shl nuw nsw i64 %i.br, 3
  %i.bs = getelementptr i8, ptr %i.bh, i64 %.idx.i.i.i56.2.2
  store float %i.bq, ptr %i.bs, align 4, !tbaa !29
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bv = phi float [ %i.bu, %bb.w ], [ %i.bb, %bb.v ] ; 4 uses
  %i.bw = load <2 x float>, ptr %6, align 8, !tbaa !29
  %i.bx = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bw, %i.by
  %i.ca = load <2 x float>, ptr %7, align 8, !tbaa !29
  %i.cb = fadd <2 x float> %i.bz, %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.cc = load <4 x float>, ptr %5, align 16, !tbaa !27 ; 5 uses
  %i.cd = extractelement <4 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = fcmp ugt float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.b, label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKf.exit.1.i.i.i.i.i, %bb.b
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.12.vec.insert, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKf.exit.1.i.i.i.i.i ], [ %.sroa.0.4.vec.insert, %bb.b ], [ %i.cc, %bb.x ] ; 3 uses
  %i.cf = fneg <2 x float> %i.cb                  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.sroa.0.0, i64 0 ; 2 uses
  %i.ch = extractelement <2 x float> %i.cf, i64 0
  %i.ci = fdiv float %i.ch, %.sroa.0.0.vec.extract ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.cj = fmul float %i.ci, %.sroa.0.4.vec.extract
  %i.ck = extractelement <2 x float> %i.cf, i64 1
  %i.cl = fsub float %i.ck, %i.cj
  %.sroa.0.12.vec.extract79 = extractelement <4 x float> %.sroa.0.0, i64 3 ; 2 uses
  %i.cm = fdiv float %i.cl, %.sroa.0.12.vec.extract79
  %i.cn = fdiv float %i.cm, %.sroa.0.12.vec.extract79 ; 2 uses
  store float %i.cn, ptr %i.cg, align 4, !tbaa !29
  %i.co = fmul float %.sroa.0.4.vec.extract, %i.cn
  %i.cp = fsub float %i.ci, %i.co
  %i.cq = fdiv float %i.cp, %.sroa.0.0.vec.extract ; 2 uses
  store float %i.cq, ptr %8, align 4, !tbaa !29
  %.sink = select i1 %i.b, float %i.bv, float %i.cq
  %not. = xor i1 %i.b, true
  %.141 = zext i1 %not. to i64
  store float %.sink, ptr %0, align 4, !tbaa !29
  br i1 %i.az, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.sel.idx = select i1 %i.b, i64 0, i64 4
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %8, i64 %.sroa.sel.idx
  %i.cr = load float, ptr %.sroa.sel, align 4, !tbaa !29
  %i.cs = select i1 %i.b, i64 1, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sink82 = phi float [ %i.cr, %bb.z ], [ %i.bv, %bb.y ]
  %.141.1 = phi i64 [ %i.cs, %bb.z ], [ %.141, %bb.y ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.sink82, ptr %i.ct, align 4, !tbaa !29
  br i1 %i.bc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.141.1
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sink83 = phi float [ %i.cv, %bb.ab ], [ %i.bv, %bb.aa ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sink83, ptr %i.cw, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Eigen8internal11llt_inplaceIfLi1EE9unblockedINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEElRT_(ptr noundef nonnull align 4 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::evaluator.475", align 8 ; 19 uses
  %2 = alloca %"struct.Eigen::internal::evaluator.490", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.498", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Block.408", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKf.exit
  %.03253 = phi i64 [ 0, %bb.a ], [ %i.n, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKf.exit ] ; 13 uses
  %i.m = sub nuw nsw i64 2, %.03253               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.n = add nuw nsw i64 %.03253, 1               ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %.03253, 12       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i ; 3 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !113
  store i64 %i.m, ptr %i.a, align 8, !tbaa !87
  store ptr %0, ptr %i.b, align 8, !tbaa !354
  store i64 %i.n, ptr %i.c, align 8, !tbaa !87
  store i64 %.03253, ptr %i.d, align 8, !tbaa !87
  store i64 3, ptr %i.e, align 8, !tbaa !357
  %i.q = getelementptr [4 x i8], ptr %0, i64 %.03253 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !29 ; 2 uses
  %.not54 = icmp eq i64 %.03253, 0
  br i1 %.not54, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load float, ptr %i.q, align 4, !tbaa !29 ; 2 uses
  %i.u = fmul float %i.t, %i.t                    ; 2 uses
  %i.v = icmp eq i64 %.03253, 2
  br i1 %i.v, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit: ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.q, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !29 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = fadd float %i.u, %i.y
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit, %bb.c
  %.0.i.i = phi float [ %i.u, %bb.c ], [ %i.z, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit ]
  %i.aa = fsub float %i.s, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit, %bb.b
  %.0 = phi float [ %i.aa, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit ], [ %i.s, %bb.b ] ; 2 uses
  %i.ab = fcmp ugt float %.0, 0.000000e+00
  br i1 %i.ab, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ac = call noundef float @sqrtf(float noundef %.0) #24 ; 6 uses
  store float %i.ac, ptr %i.r, align 4, !tbaa !29
  switch i64 %.03253, label %.thread [
    i64 2, label %.loopexit.sink.split
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_:bb.a
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = xor i64 %i.az, -1
  %i.bd = add nsw i64 %.sroa.speculated140, %i.bc
  %i.be = shl i64 %i.ba, 3
  %i.bf = add i64 %i.be, 8
  %i.bg = sdiv i64 %i.bd, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = sub nsw i64 %.sroa.speculated140, %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.r ], [ %.sroa.speculated140, %bb.q ] ; 2 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !109
  %.pre = load i64, ptr %1, align 8, !tbaa !109
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.s ], [ %i.at, %bb.p ] ; 5 uses
  %i.bl = phi i64 [ %.pre, %bb.s ], [ %i.aq, %bb.p ] ; 6 uses
  %i.bm = shl i64 %i.bl, 3
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = sub nsw i64 %i.av, %i.bn                ; 2 uses
  %i.bp = shl nsw i64 %i.bk, 5
  %.not = icmp slt i64 %i.bo, %i.bp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = shl i64 %i.bk, 3
  %i.br = udiv i64 %i.bo, %i.bq
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bs = shl i64 %.sroa.speculated140, 5
  %i.bt = udiv i64 4718592, %i.bs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ %i.bt, %bb.v ], [ %i.br, %bb.u ]
  %i.bu = shl i64 %i.bk, 4
  %i.bv = udiv i64 1572864, %i.bu
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %storemerge, i64 %i.bv)
  %i.bw = and i64 %.sroa.speculated135, -4        ; 6 uses
  %i.bx = load i64, ptr %2, align 8, !tbaa !109   ; 4 uses
  %i.by = icmp sgt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = srem i64 %i.bx, %i.bw                   ; 2 uses
  %i.ca = sdiv i64 %i.bx, %i.bw
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = sub nsw i64 %i.bw, %i.bz
  %i.cd = shl i64 %i.ca, 2
  %i.ce = add i64 %i.cd, 4
  %i.cf = sdiv i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = sub nsw i64 %i.bw, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.y ], [ %i.bw, %bb.x ]
  store i64 %i.ci, ptr %2, align 8, !tbaa !109
  br label %.critedge116

bb.aa:                                            ; preds = %bb.w
  %i.cj = icmp eq i64 %i.at, %i.bk
  br i1 %i.cj, label %bb.ab, label %.critedge116

bb.ab:                                            ; preds = %bb.aa
  %i.ck = shl i64 %i.at, 3
  %i.cl = mul i64 %i.ck, %i.bx                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 1025
  br i1 %i.cm, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp ne i64 %i.g, 0
  %i.co = icmp samesign ult i64 %i.cl, 32769
  %or.cond4 = and i1 %i.cn, %i.co
  br i1 %or.cond4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.speculated128 = tail call i64 @llvm.smin.i64(i64 %i.bl, i64 576)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0182 = phi i64 [ %i.bl, %bb.ac ], [ %.sroa.speculated128, %bb.ad ], [ %i.bl, %bb.ab ]
  %.093 = phi i64 [ 1572864, %bb.ac ], [ %i.f, %bb.ad ], [ %i.e, %bb.ab ]
  %i.cp = mul i64 %i.at, 24
  %i.cq = udiv i64 %.093, %i.cp
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %.0182, i64 %i.cq) ; 4 uses
  %i.cr = icmp sgt i64 %.sroa.speculated, 4
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = and i64 %.sroa.speculated, 9223372036854775804
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ct = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.ct, label %.critedge116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.cs, %bb.af ], [ %.sroa.speculated, %bb.ag ] ; 5 uses
  %i.cu = srem i64 %i.bl, %.0                     ; 2 uses
  %i.cv = sdiv i64 %i.bl, %.0
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = sub nsw i64 %.0, %i.cu
  %i.cy = shl i64 %i.cv, 2
  %i.cz = add i64 %i.cy, 4
  %i.da = sdiv i64 %i.cx, %i.cz
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = sub nsw i64 %.0, %i.db
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai
  %i.dd = phi i64 [ %i.dc, %bb.ai ], [ %.0, %bb.ah ]
  store i64 %i.dd, ptr %1, align 8, !tbaa !109
  br label %.critedge116

.critedge116:                                     ; preds = %.critedge, %bb.aa, %bb.z, %bb.ag, %bb.m, %bb.n, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !184
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !186    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !187  ; 12 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = add i64 %3, %6
  %i.k = sub i64 %5, %i.j
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph78.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph78
  %i.m = add nsw i64 %3, -1                       ; 2 uses
  %i.n = shl i64 %6, 5                            ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %scevgep100 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  %scevgep102 = getelementptr i8, ptr %i.q, i64 24
  %i.r = shl i64 %6, 5
  %scevgep104 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = add i64 %6, %3
  %i.t = shl i64 %i.s, 5
  %scevgep106 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = mul i64 %i.h, 24
  %scevgep108 = getelementptr i8, ptr %i.f, i64 %i.u
  %smax109 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.v = add nsw i64 %smax109, -4                 ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = shl i64 %i.v, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 24
  %i.z = mul i64 %i.h, %i.y
  %i.aa = shl i64 %3, 3                           ; 4 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep110 = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ac = shl i64 %i.h, 4
  %scevgep111 = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ad = or disjoint i64 %i.x, 16
  %i.ae = mul i64 %i.h, %i.ad
  %i.af = getelementptr i8, ptr %i.f, i64 %i.ae
  %scevgep112 = getelementptr i8, ptr %i.af, i64 %i.aa
  %i.ag = shl i64 %i.h, 3
  %scevgep113 = getelementptr i8, ptr %i.f, i64 %i.ag
  %i.ah = or disjoint i64 %i.x, 8
  %i.ai = mul i64 %i.h, %i.ah
  %i.aj = getelementptr i8, ptr %i.f, i64 %i.ai
  %scevgep114 = getelementptr i8, ptr %i.aj, i64 %i.aa
  %i.ak = mul i64 %i.h, %i.w
  %i.al = shl i64 %i.ak, 5
  %i.am = getelementptr i8, ptr %i.f, i64 %i.al
  %scevgep115 = getelementptr i8, ptr %i.am, i64 %i.aa
  %i.an = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep110, i64 1
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %scevgep114, i64 2
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep115, i64 3
  %i.ar = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %scevgep108, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %scevgep113, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.f, i64 3
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check119 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.ee, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.ed, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aw = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ax = mul nsw i64 %i.h, %.05076.us
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  %i.az = or disjoint i64 %.05076.us, 1
  %i.ba = mul nsw i64 %i.h, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  %i.bc = or disjoint i64 %.05076.us, 2
  %i.bd = mul nsw i64 %i.h, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.f, i64 %i.bd ; 4 uses
  %i.bf = or disjoint i64 %.05076.us, 3
  %i.bg = mul nsw i64 %i.h, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.bi = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bk = icmp ult ptr %i.bj, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bi ; 2 uses
  %i.bl = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.bm = icmp ult ptr %i.bl, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bi ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bo = icmp ult ptr %i.bn, %scevgep103
  %i.bp = or i1 %i.bo, %mul.overflow
  %i.bq = or i1 %i.bm, %i.bk
  %i.br = or i1 %i.bq, %i.bp
  br i1 %i.br, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bs = shl i64 %.05175.us, 3                   ; 2 uses
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.bs
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.bs
  %i.bt = insertelement <4 x ptr> poison, ptr %scevgep105, i64 0
  %i.bu = shufflevector <4 x ptr> %i.bt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bv = icmp ult <4 x ptr> %i.bu, %i.aq
  %i.bw = insertelement <4 x ptr> poison, ptr %scevgep107, i64 0
  %i.bx = shufflevector <4 x ptr> %i.bw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.by = icmp ult <4 x ptr> %i.au, %i.bx
  %i.bz = and <4 x i1> %i.bv, %i.by
  %i.ca = bitcast <4 x i1> %i.bz to i4
  %i.cb = icmp ne i4 %i.ca, 0
  %op.rdx = or i1 %i.cb, %stride.check119
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cc = add i64 %i.aw, %i.av                    ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %1, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !65, !alias.scope !597
  %.idx = shl i64 %index, 5
  %i.cf = getelementptr i8, ptr %i.cd, i64 %.idx
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load130 = load <2 x double>, ptr %i.cg, align 8, !tbaa !65, !alias.scope !598
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load131 = load <2 x double>, ptr %i.ch, align 8, !tbaa !65, !alias.scope !599
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index
  %wide.load132 = load <2 x double>, ptr %i.ci, align 8, !tbaa !65, !alias.scope !600
  %i.cj = shufflevector <2 x double> %wide.load, <2 x double> %wide.load130, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ck = shufflevector <2 x double> %wide.load131, <2 x double> %wide.load132, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cj, <4 x double> %i.ck, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.cf, align 8, !tbaa !65, !alias.scope !601, !noalias !602
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph.us ], [ %i.cc, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !65
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !65
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !65
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !65
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us.ph
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !65
  %i.cu = getelementptr i8, ptr %i.co, i64 16
  store double %i.ct, ptr %i.cu, align 8, !tbaa !65
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us.ph
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !65
  %i.cx = getelementptr i8, ptr %i.co, i64 24
  store double %i.cw, ptr %i.cx, align 8, !tbaa !65
  %i.cy = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.cz = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa149.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cy, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.cz, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.cy, %scalar.ph.prol ]
  %i.da = icmp eq i64 %3, %.neg
  br i1 %i.da, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.ec, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.eb, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.dc = load double, ptr %i.db, align 8, !tbaa !65
  %i.dd = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.dc, ptr %i.dd, align 8, !tbaa !65
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.df = load double, ptr %i.de, align 8, !tbaa !65
  %i.dg = getelementptr i8, ptr %i.dd, i64 8
  store double %i.df, ptr %i.dg, align 8, !tbaa !65
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us
  %i.di = load double, ptr %i.dh, align 8, !tbaa !65
  %i.dj = getelementptr i8, ptr %i.dd, i64 16
  store double %i.di, ptr %i.dj, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !65
  %i.dm = getelementptr i8, ptr %i.dd, i64 24
  store double %i.dl, ptr %i.dm, align 8, !tbaa !65
  %i.dn = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !65
  %i.dq = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 32
  store double %i.dp, ptr %i.dr, align 8, !tbaa !65
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dn
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !65
  %i.du = getelementptr i8, ptr %i.dq, i64 40
  store double %i.dt, ptr %i.du, align 8, !tbaa !65
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dn
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !65
  %i.dx = getelementptr i8, ptr %i.dq, i64 48
  store double %i.dw, ptr %i.dx, align 8, !tbaa !65
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dn
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !65
  %i.ea = getelementptr i8, ptr %i.dq, i64 56
  store double %i.dz, ptr %i.ea, align 8, !tbaa !65
  %i.eb = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.ec = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ec, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !591

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.cc, %middle.block ], [ %.lcssa149.unr, %scalar.ph.prol.loopexit ], [ %i.eb, %scalar.ph ]
  %i.ed = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.ee = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.ef = icmp slt i64 %i.ee, %i.c
  br i1 %i.ef, label %.lr.ph.us, label %.preheader, !llvm.loop !592

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.eg = add nsw i64 %smax, -4
  %i.eh = lshr exact i64 %i.eg, 2
  %i.ei = mul i64 %i.eh, %invariant.op
  %i.ej = shl i64 %5, 2
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = shl i64 %3, 2
  %i.em = sub i64 %i.ek, %i.el
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.em, %.lr.ph78.split ], [ %i.ed, %._crit_edge.us ]
  %i.en = icmp slt i64 %i.c, %4
  br i1 %i.en, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.eo = load ptr, ptr %2, align 8, !tbaa !186   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !187 ; 3 uses
  %i.er = icmp sgt i64 %3, 0
  %i.es = add i64 %3, %6
  %i.et = sub i64 %5, %i.es
  br i1 %i.er, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.eu = ptrtoaddr ptr %i.eo to i64
  %i.ev = mul i64 %i.eq, %i.b
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bq = mul nsw i64 %.0176.us.us.us.us.us, %9
  %i.br = getelementptr [8 x i8], ptr %i.av, i64 %i.bq
  store ptr %i.br, ptr %18, align 8
  store i64 %9, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.bi, i64 noundef %i.bn, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.p unwind label %.split178.us.split.us.split.us.split.us.split.us

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.bs = icmp slt i64 %i.bm, %1
  br i1 %i.bs, label %bb.n, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !834

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.p
  %i.bt = icmp slt i64 %i.bh, %2
  br i1 %i.bt, label %.lr.ph181.split.us.split.us.us.us, label %..loopexit175_crit_edge.split.us.us.us, !llvm.loop !835

.split.us186.split.split.us.split.us:             ; preds = %.lr.ph181.split.us.split.us202.us
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.split.us186

.split178.split.us.split.us.split.us:             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.split.us186.split.us.split.us.split.us:          ; preds = %.lr.ph181.split.us.split.us.us.us
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.split.us186

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.w

.split178.us.split.us.split.us.split.us.split.us: ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph181.us:                                     ; preds = %.lr.ph.split.us, %..loopexit175_crit_edge.split.us196
  %.078193.us = phi i64 [ %i.bz, %..loopexit175_crit_edge.split.us196 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bz = add nsw i64 %.078193.us, %.sroa.speculated143 ; 3 uses
  %.sroa.speculated126.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bz)
  %i.ca = sub nsw i64 %.sroa.speculated126.us, %.078193.us
  %i.cb = getelementptr [8 x i8], ptr %3, i64 %.078193.us
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph181.us, %.loopexit.us
  %.077180.us194 = phi i64 [ 0, %.lr.ph181.us ], [ %i.cc, %.loopexit.us ] ; 3 uses
  %i.cc = add nsw i64 %.077180.us194, %i.b        ; 3 uses
  %.sroa.speculated122.us195 = call i64 @llvm.smin.i64(i64 %2, i64 %i.cc)
  %i.cd = sub nsw i64 %.sroa.speculated122.us195, %.077180.us194
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ce = mul nsw i64 %.077180.us194, %4
  %i.cf = getelementptr [8 x i8], ptr %i.cb, i64 %i.ce
  store ptr %i.cf, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.cd, i64 noundef %i.ca, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us

.loopexit.us:                                     ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.cg = icmp slt i64 %i.cc, %2
  br i1 %i.cg, label %bb.q, label %..loopexit175_crit_edge.split.us196, !llvm.loop !835

..loopexit175_crit_edge.split.us196:              ; preds = %.loopexit.us
  %i.ch = icmp slt i64 %i.bz, %0
  br i1 %i.ch, label %.lr.ph181.us, label %._crit_edge, !llvm.loop !836

.split.split.us:                                  ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.split.us186

._crit_edge:                                      ; preds = %..loopexit175_crit_edge.split.us196, %..loopexit175_crit_edge.split.us.us.us, %.lr.ph, %_ZN5Eigen8internal14aligned_mallocEm.exit113
  br i1 %i.ai, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.r:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ag) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.r
  br i1 %i.u, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit114

bb.s:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit114

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit114: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void

bb.t:                                             ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit118

bb.u:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit118

.split.us186:                                     ; preds = %.split.us186.split.split.us.split.us, %.split.us186.split.us.split.us.split.us, %.split.split.us
  %.us-phi = phi { ptr, i32 } [ %i.ci, %.split.split.us ], [ %i.bu, %.split.us186.split.split.us.split.us ], [ %i.bw, %.split.us186.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.w

bb.v:                                             ; preds = %.split178.us.split.us.split.us.split.us.split.us, %.split178.split.us.split.us.split.us
  %.us-phi179 = phi { ptr, i32 } [ %i.bv, %.split178.split.us.split.us.split.us ], [ %i.by, %.split178.us.split.us.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.w

bb.w:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %bb.v, %.split.us186
  %.pn.pn = phi { ptr, i32 } [ %.us-phi, %.split.us186 ], [ %.us-phi179, %bb.v ], [ %i.bx, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ai, label %bb.x, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit118

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef %i.ag) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit118

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit118: ; preds = %bb.x, %bb.w, %bb.u, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.t ], [ %i.ck, %bb.u ], [ %.pn.pn, %bb.w ], [ %.pn.pn, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit119

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit118
  call void @free(ptr noundef %i.s) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit119

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit119: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit118, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !184
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !189    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !190  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep91, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep89, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep93, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep94, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep90, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep88, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep92, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.ds, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.e, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.04460.us, 3
  %i.av = mul nsw i64 %i.g, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.e, i64 %i.av ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ax = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ax ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.bb = icmp ult ptr %i.ba, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ax ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %scevgep84
  %i.be = or i1 %i.bd, %mul.overflow
  %i.bf = or i1 %i.bb, %i.az
  %i.bg = or i1 %i.bf, %i.be
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.bh
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.bh
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep85, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bj, %i.ag
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.bm = shufflevector <4 x ptr> %i.bl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bn = icmp ult <4 x ptr> %i.ak, %i.bm
  %i.bo = and <4 x i1> %i.bk, %i.bn
  %i.bp = bitcast <4 x i1> %i.bo to i4
  %i.bq = icmp ne i4 %i.bp, 0
  %op.rdx = or i1 %i.bq, %stride.check98
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = add i64 %.04559.us, %i.al               ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !65, !alias.scope !850
  %.idx = shl i64 %index, 5
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.bv, align 8, !tbaa !65, !alias.scope !851
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bw, align 8, !tbaa !65, !alias.scope !852
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bx, align 8, !tbaa !65, !alias.scope !853
  %i.by = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.by, <4 x double> %i.bz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bu, align 8, !tbaa !65, !alias.scope !854, !noalias !855
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !843

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.br, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.cc, ptr %i.cd, align 8, !tbaa !65
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !65
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !65
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !65
  %i.cj = getelementptr i8, ptr %i.cd, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !65
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store double %i.cl, ptr %i.cm, align 8, !tbaa !65
  %i.cn = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.co = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.cp = icmp eq i64 %3, %.neg
  br i1 %i.cp, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dr, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dq, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !65
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cr, ptr %i.cs, align 8, !tbaa !65
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !65
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !65
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !65
  %i.cy = getelementptr i8, ptr %i.cs, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !65
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !65
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !65
  %i.dc = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !65
  %i.df = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store double %i.de, ptr %i.dg, align 8, !tbaa !65
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !65
  %i.dj = getelementptr i8, ptr %i.df, i64 40
  store double %i.di, ptr %i.dj, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !65
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !65
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !65
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !65
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !844

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !845

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !190 ; 3 uses
  %i.dy = icmp sgt i64 %3, 0
  br i1 %i.dy, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = mul i64 %i.dx, %i.b
  %i.eb = shl i64 %i.ea, 5
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = mul i64 %i.dx, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
end_hunk_2
